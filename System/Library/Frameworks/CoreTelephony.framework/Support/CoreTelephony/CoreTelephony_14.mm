void sub_2373AC45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfileSwitch::~CommCenterCellularPlanProfileSwitch(awd::metrics::CommCenterCellularPlanProfileSwitch *this)
{
  *this = &unk_284A5E800;
  if (qword_2810D8788 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterCellularPlanProfileSwitch::~CommCenterCellularPlanProfileSwitch(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::Clear(awd::metrics::CommCenterCellularPlanProfileSwitch *this)
{
  LOBYTE(v2) = *(this + 88);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3)
      {
        awd::metrics::CommCenterCellularProfile::Clear(v3);
        v2 = *(this + 22);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(this + 3);
      if (v4)
      {
        awd::metrics::CommCenterCellularProfile::Clear(v4);
      }
    }

    *(this + 80) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 32);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::configs::ConfigurationParameter>::TypeHandler>(this + 56);
  *(this + 22) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfileSwitch *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v7 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v6 != 4)
          {
            if (v6 == 5)
            {
              if (v7 == 2)
              {
                goto LABEL_80;
              }
            }

            else if (v6 == 6 && (TagFallback & 7) == 0)
            {
              v9 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_98;
            }

            goto LABEL_26;
          }

          if (v7 != 2)
          {
            goto LABEL_26;
          }

LABEL_62:
          v31 = *(this + 11);
          v32 = *(this + 10);
          if (v32 >= v31)
          {
            if (v31 == *(this + 12))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
              v31 = *(this + 11);
            }

            *(this + 11) = v31 + 1;
            operator new();
          }

          v33 = *(this + 4);
          *(this + 10) = v32 + 1;
          v34 = *(v33 + 8 * v32);
          v53 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
            {
              return 0;
            }
          }

          else
          {
            v53 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v36 = *(a2 + 14);
          v37 = *(a2 + 15);
          *(a2 + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v34, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v38 = *(a2 + 14);
          v21 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v21)
          {
            *(a2 + 14) = v39;
          }

          v30 = *(a2 + 1);
          if (v30 < *(a2 + 2))
          {
            v40 = *v30;
            if (v40 == 34)
            {
              goto LABEL_61;
            }

            if (v40 == 42)
            {
              while (1)
              {
                *(a2 + 1) = v30 + 1;
LABEL_80:
                v41 = *(this + 17);
                v42 = *(this + 16);
                if (v42 >= v41)
                {
                  if (v41 == *(this + 18))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
                    v41 = *(this + 17);
                  }

                  *(this + 17) = v41 + 1;
                  operator new();
                }

                v43 = *(this + 7);
                *(this + 16) = v42 + 1;
                v44 = *(v43 + 8 * v42);
                v53 = 0;
                v45 = *(a2 + 1);
                if (v45 >= *(a2 + 2) || *v45 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
                  {
                    return 0;
                  }
                }

                else
                {
                  v53 = *v45;
                  *(a2 + 1) = v45 + 1;
                }

                v46 = *(a2 + 14);
                v47 = *(a2 + 15);
                *(a2 + 14) = v46 + 1;
                if (v46 >= v47)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v48 = *(a2 + 14);
                v21 = __OFSUB__(v48, 1);
                v49 = v48 - 1;
                if (v49 < 0 == v21)
                {
                  *(a2 + 14) = v49;
                }

                v30 = *(a2 + 1);
                v8 = *(a2 + 2);
                if (v30 >= v8)
                {
                  break;
                }

                v50 = *v30;
                if (v50 != 42)
                {
                  if (v50 == 48)
                  {
                    v9 = v30 + 1;
                    *(a2 + 1) = v9;
LABEL_98:
                    v53 = 0;
                    if (v9 >= v8 || (v51 = *v9, (v51 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                      if (!result)
                      {
                        return result;
                      }

                      v51 = v53;
                      v52 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      v52 = v9 + 1;
                      *(a2 + 1) = v52;
                    }

                    *(this + 80) = v51 != 0;
                    *(this + 22) |= 0x20u;
                    if (v52 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }

                  goto LABEL_1;
                }
              }
            }
          }
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v14 = *(this + 22) | 1;
        *(this + 22) = v14;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_34;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_26;
      }

      v14 = *(this + 22);
LABEL_34:
      *(this + 22) = v14 | 2;
      v16 = *(this + 2);
      if (!v16)
      {
        operator new();
      }

      v53 = 0;
      v17 = *(a2 + 1);
      if (v17 >= *(a2 + 2) || *v17 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
        {
          return 0;
        }
      }

      else
      {
        v53 = *v17;
        *(a2 + 1) = v17 + 1;
      }

      v18 = *(a2 + 14);
      v19 = *(a2 + 15);
      *(a2 + 14) = v18 + 1;
      if (v18 >= v19)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v20 = *(a2 + 14);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v22 < 0 == v21)
      {
        *(a2 + 14) = v22;
      }

      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 26)
      {
        *(a2 + 1) = v23 + 1;
LABEL_48:
        *(this + 22) |= 4u;
        v24 = *(this + 3);
        if (!v24)
        {
          operator new();
        }

        v53 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
          {
            return 0;
          }
        }

        else
        {
          v53 = *v25;
          *(a2 + 1) = v25 + 1;
        }

        v26 = *(a2 + 14);
        v27 = *(a2 + 15);
        *(a2 + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v28 = *(a2 + 14);
        v21 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v21)
        {
          *(a2 + 14) = v29;
        }

        v30 = *(a2 + 1);
        if (v30 < *(a2 + 2) && *v30 == 34)
        {
LABEL_61:
          *(a2 + 1) = v30 + 1;
          goto LABEL_62;
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_2810D8788 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 88) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_2810D8788 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

LABEL_12:
  if (*(v5 + 40) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 32) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 56) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 64));
  }

  if ((*(v5 + 88) & 0x20) != 0)
  {
    v11 = *(v5 + 80);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v11, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileSwitch::ByteSize(awd::metrics::CommCenterCellularPlanProfileSwitch *this)
{
  v2 = *(this + 22);
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
      goto LABEL_13;
    }

LABEL_7:
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_2810D8788 + 16);
    }

    v6 = awd::metrics::CommCenterCellularProfile::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 += v7 + v8 + 1;
    v2 = *(this + 22);
    goto LABEL_13;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 22);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      v9 = *(qword_2810D8788 + 24);
    }

    v10 = awd::metrics::CommCenterCellularProfile::ByteSize(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v3 += v11 + v12 + 1;
    v2 = *(this + 22);
  }

  v4 = ((v2 >> 4) & 2) + v3;
LABEL_21:
  v13 = *(this + 10);
  v14 = v13 + v4;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = awd::metrics::CommCenterCellularProfile::ByteSize(*(*(this + 4) + 8 * v15));
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v14 += v17 + v18;
      ++v15;
    }

    while (v15 < *(this + 10));
  }

  v19 = *(this + 16);
  v20 = (v19 + v14);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = awd::metrics::CommCenterCellularProfile::ByteSize(*(*(this + 7) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 16));
  }

  *(this + 21) = v20;
  return v20;
}

void awd::metrics::CommCenterCellularPlanProfileSwitch::CheckTypeAndMergeFrom(const awd::metrics::CommCenterCellularProfile **this, const awd::metrics::CommCenterCellularProfile **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterCellularProfile>::MergeFrom((this + 4), (lpsrc + 4));
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterCellularProfile>::MergeFrom((this + 7), (lpsrc + 7));
  LOBYTE(v5) = *(lpsrc + 88);
  if (!v5)
  {
    return;
  }

  if ((lpsrc[11] & 1) == 0)
  {
    if ((lpsrc[11] & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    *(this + 22) |= 2u;
    v8 = this[2];
    if (!v8)
    {
      operator new();
    }

    v9 = lpsrc[2];
    if (!v9)
    {
      v9 = *(qword_2810D8788 + 16);
    }

    awd::metrics::CommCenterCellularProfile::MergeFrom(v8, v9);
    v5 = *(lpsrc + 22);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v7 = lpsrc[1];
  *(this + 22) |= 1u;
  this[1] = v7;
  v5 = *(lpsrc + 22);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(this + 22) |= 4u;
  v10 = this[3];
  if (!v10)
  {
    operator new();
  }

  v11 = lpsrc[3];
  if (!v11)
  {
    v11 = *(qword_2810D8788 + 24);
  }

  awd::metrics::CommCenterCellularProfile::MergeFrom(v10, v11);
  if ((lpsrc[11] & 0x20) != 0)
  {
LABEL_9:
    v6 = *(lpsrc + 80);
    *(this + 22) |= 0x20u;
    *(this + 80) = v6;
  }
}

void sub_2373AD270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterCellularProfile>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      awd::metrics::CommCenterCellularProfile::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_2373AD408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanPlanExpired::~CommCenterCellularPlanPlanExpired(awd::metrics::CommCenterCellularPlanPlanExpired *this)
{
  *this = &unk_284A5E878;
  if (qword_2810D8790 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterCellularPlanPlanExpired::~CommCenterCellularPlanPlanExpired(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::metrics::CommCenterCellularProfile::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanPlanExpired *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    do
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(this + 7);
          goto LABEL_22;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
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

      v11 = *(this + 7) | 1;
      *(this + 7) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(a2 + 1) = v10 + 1;
LABEL_22:
    *(this + 7) = v11 | 2;
    v13 = *(this + 2);
    if (!v13)
    {
      operator new();
    }

    v20 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::CommCenterCellularProfile::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v17 = *(a2 + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(a2 + 14) = v19;
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

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_2810D8790 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanPlanExpired::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((*(this + 7) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v2 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v3 = this[2];
    if (!v3)
    {
      v3 = *(qword_2810D8790 + 16);
    }

    v4 = awd::metrics::CommCenterCellularProfile::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = (v2 + v5 + v6 + 1);
  }

  else
  {
    v2 = 0;
  }

LABEL_13:
  *(this + 6) = v2;
  return v2;
}

void awd::metrics::CommCenterCellularPlanPlanExpired::CheckTypeAndMergeFrom(const awd::metrics::CommCenterCellularProfile **this, const awd::metrics::CommCenterCellularProfile **lpsrc)
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
      v6 = lpsrc[1];
      *(this + 7) |= 1u;
      this[1] = v6;
      v5 = *(lpsrc + 7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v7 = this[2];
      if (!v7)
      {
        operator new();
      }

      v8 = lpsrc[2];
      if (!v8)
      {
        v8 = *(qword_2810D8790 + 16);
      }

      awd::metrics::CommCenterCellularProfile::MergeFrom(v7, v8);
    }
  }
}

void sub_2373ADA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanBootstrapDataUsage::~CommCenterCellularPlanBootstrapDataUsage(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this)
{
  *this = &unk_284A5E8F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E8F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        *(this + 13) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 13) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 13) |= 4u;
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
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 13) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
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

        *(this + 13) |= 0x10u;
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

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapDataUsage::ByteSize(awd::metrics::CommCenterCellularPlanBootstrapDataUsage *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 52) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 13);
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 13);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_12:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::CommCenterCellularPlanBootstrapDataUsage::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 52);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 52))
  {
    v7 = lpsrc[1];
    *(this + 13) |= 1u;
    this[1] = v7;
    v5 = *(lpsrc + 13);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = lpsrc[3];
      *(this + 13) |= 4u;
      this[3] = v9;
      v5 = *(lpsrc + 13);
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

  else if ((*(lpsrc + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = lpsrc[2];
  *(this + 13) |= 2u;
  this[2] = v8;
  v5 = *(lpsrc + 13);
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
  v10 = lpsrc[4];
  *(this + 13) |= 8u;
  this[4] = v10;
  if ((*(lpsrc + 13) & 0x10) != 0)
  {
LABEL_10:
    v6 = lpsrc[5];
    *(this + 13) |= 0x10u;
    this[5] = v6;
  }
}

void sub_2373AE178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanFailure::~CommCenterCellularPlanFailure(awd::metrics::CommCenterCellularPlanFailure *this)
{
  *this = &unk_284A5E968;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E968;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 15) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_53;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_61;
            }
          }

          else if (v6 == 17 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_70;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 8) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_35;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_35:
      v28 = 0;
      if (v15 >= v10 || (v17 = *v15, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v17 = v28;
      }

      else
      {
        *(a2 + 1) = v15 + 1;
      }

      if (v17 <= 9)
      {
        *(this + 8) |= 2u;
        *(this + 4) = v17;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v18 < v7 && *v18 == 48)
      {
        v8 = v18 + 1;
        *(a2 + 1) = v8;
LABEL_45:
        v28 = 0;
        if (v8 >= v7 || (v19 = *v8, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v20 = v8 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 20) = v19 != 0;
        *(this + 8) |= 4u;
        if (v20 < v7 && *v20 == 56)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_53:
          v28 = 0;
          if (v14 >= v7 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
            if (!result)
            {
              return result;
            }

            v21 = v28;
            v22 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 21) = v21 != 0;
          *(this + 8) |= 8u;
          if (v22 < v7 && *v22 == 64)
          {
            v16 = v22 + 1;
            *(a2 + 1) = v16;
LABEL_61:
            v28 = 0;
            if (v16 >= v7 || (v23 = *v16, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
              if (!result)
              {
                return result;
              }

              v23 = v28;
              v24 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v24 = (v16 + 1);
              *(a2 + 1) = v24;
            }

            *(this + 22) = v23 != 0;
            *(this + 8) |= 0x10u;
            if (v7 - v24 >= 2 && *v24 == 136 && v24[1] == 1)
            {
              v9 = (v24 + 2);
              *(a2 + 1) = v9;
LABEL_70:
              if (v9 >= v7 || (v25 = *v9, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v25;
                v26 = v9 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 8) |= 0x20u;
              if (v26 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 6 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_45;
    }

LABEL_26:
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

uint64_t awd::metrics::CommCenterCellularPlanFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 20), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 22), a2, a4);
    if ((*(v5 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 21), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanFailure::ByteSize(awd::metrics::CommCenterCellularPlanFailure *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_13:
  v4 = ((v2 >> 1) & 2) + v3 + ((v2 >> 2) & 2) + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    v7 = *(this + 6);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 2;
    }

    else
    {
      v8 = 3;
    }

    v4 = (v8 + v4);
  }

LABEL_18:
  *(this + 7) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanFailure::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(lpsrc + 32);
  if (!v5)
  {
    return;
  }

  if (*(lpsrc + 32))
  {
    v6 = *(lpsrc + 1);
    *(this + 8) |= 1u;
    *(this + 1) = v6;
    v5 = *(lpsrc + 8);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(lpsrc + 4);
    if (v7 >= 0xA)
    {
      __assert_rtn("set_failure", "CCMetricsCP.pb.h", 6119, "::awd::metrics::CommCenterCellularPlanFailureType_IsValid(value)");
    }

    *(this + 8) |= 2u;
    *(this + 4) = v7;
    v5 = *(lpsrc + 8);
  }

  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v10 = *(lpsrc + 21);
    *(this + 8) |= 8u;
    *(this + 21) = v10;
    v5 = *(lpsrc + 8);
    if ((v5 & 0x10) == 0)
    {
LABEL_13:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v9 = *(lpsrc + 20);
  *(this + 8) |= 4u;
  *(this + 20) = v9;
  v5 = *(lpsrc + 8);
  if ((v5 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_18:
  v11 = *(lpsrc + 22);
  *(this + 8) |= 0x10u;
  *(this + 22) = v11;
  if ((*(lpsrc + 8) & 0x20) != 0)
  {
LABEL_14:
    v8 = *(lpsrc + 6);
    *(this + 8) |= 0x20u;
    *(this + 6) = v8;
  }
}

void sub_2373AE99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanBootstrapProvisioning::~CommCenterCellularPlanBootstrapProvisioning(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this)
{
  *this = &unk_284A5E9E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5E9E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 11)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 10)
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
      if (v10 < v7 && *v10 == 80)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        v18 = 0;
        if (v11 >= v7 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
          if (!result)
          {
            return result;
          }

          v13 = v18;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 16) = v13 != 0;
        *(this + 7) |= 2u;
        if (v14 < v7 && *v14 == 88)
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

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 16), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanBootstrapProvisioning::ByteSize(awd::metrics::CommCenterCellularPlanBootstrapProvisioning *this)
{
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 7);
    }

    else
    {
      v3 = 0;
    }

    v4 = (v2 & 2u) + v3;
    if ((v2 & 4) != 0)
    {
      v5 = *(this + 5);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
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

void awd::metrics::CommCenterCellularPlanBootstrapProvisioning::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

    v8 = *(lpsrc + 16);
    *(this + 7) |= 2u;
    *(this + 16) = v8;
    if ((*(lpsrc + 7) & 4) != 0)
    {
LABEL_8:
      v6 = *(lpsrc + 5);
      *(this + 7) |= 4u;
      *(this + 5) = v6;
    }
  }
}

void sub_2373AEEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::~CommCenterRemoteCellularPlanSignUpFlow(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this)
{
  *this = &unk_284A5EA58;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EA58;
  awd::configs::AggregationSpec::SharedDtor(*(this + 3));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
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
    *(this + 21) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
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
        if (TagFallback >> 3 > 0x15)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
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
            v15 = (v13 + 1);
            *(a2 + 1) = v15;
          }

          *(this + 10) |= 1u;
          if (v9 - v15 >= 2 && *v15 == 144 && v15[1] == 1)
          {
            v17 = (v15 + 2);
            *(a2 + 1) = v17;
            goto LABEL_26;
          }
        }

        else if (v7 == 18)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_26:
          if (v17 >= v9 || (v18 = *v17, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v18;
            v19 = (v17 + 1);
            *(a2 + 1) = v19;
          }

          *(this + 10) |= 2u;
          if (v9 - v19 >= 2 && *v19 == 168 && v19[1] == 1)
          {
            v10 = (v19 + 2);
            *(a2 + 1) = v10;
LABEL_40:
            v31 = 0;
            if (v10 >= v9 || (v22 = *v10, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v22 = v31;
              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v23 = (v10 + 1);
              *(a2 + 1) = v23;
            }

            *(this + 20) = v22 != 0;
            v16 = *(this + 10) | 4;
            *(this + 10) = v16;
            if (v9 - v23 >= 2 && *v23 == 178 && v23[1] == 1)
            {
              *(a2 + 1) = v23 + 2;
              goto LABEL_49;
            }
          }
        }

        else
        {
          if (v7 == 21 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_40;
          }

LABEL_30:
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

      if (v7 != 22)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

      v16 = *(this + 10);
LABEL_49:
      *(this + 10) = v16 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v24 = *(a2 + 1);
      v20 = *(a2 + 2);
      if (v20 - v24 >= 2 && *v24 == 184 && v24[1] == 1)
      {
        v21 = (v24 + 2);
        *(a2 + 1) = v21;
LABEL_56:
        v32 = 0;
        if (v21 >= v20 || (v25 = *v21, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
          if (!result)
          {
            return result;
          }

          v25 = v32;
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v25 <= 3)
        {
          *(this + 10) |= 0x10u;
          *(this + 8) = v25;
        }

        v26 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v11 - v26 >= 2 && *v26 == 192 && v26[1] == 1)
        {
          v12 = (v26 + 2);
          *(a2 + 1) = v12;
          goto LABEL_67;
        }
      }
    }

    if (v7 == 23)
    {
      if ((TagFallback & 7) == 0)
      {
        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_56;
      }

      goto LABEL_30;
    }

    if (v7 != 24 || (TagFallback & 7) != 0)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 1);
    v11 = *(a2 + 2);
LABEL_67:
    v30 = 0;
    if (v12 >= v11 || (v27 = *v12, (v27 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
      if (!result)
      {
        return result;
      }

      v27 = v30;
      v28 = *(a2 + 1);
      v11 = *(a2 + 2);
    }

    else
    {
      v28 = v12 + 1;
      *(a2 + 1) = v28;
    }

    *(this + 21) = v27 != 0;
    *(this + 10) |= 0x20u;
  }

  while (v28 != v11 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 16), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v8 = *(v5 + 21);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x18, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::ByteSize(awd::metrics::CommCenterRemoteCellularPlanSignUpFlow *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    result = 0;
    goto LABEL_33;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 4);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 2;
      v2 = *(this + 10);
    }

    else
    {
      v6 = 3;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 += 3;
  }

  if ((v2 & 8) != 0)
  {
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

    v3 += v12 + v8 + 2;
  }

  if ((v2 & 0x10) != 0)
  {
    v13 = *(this + 8);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 12;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 2;
      v2 = *(this + 10);
    }

    else
    {
      v14 = 3;
    }

    v3 += v14;
  }

  if ((v2 & 0x20) != 0)
  {
    result = v3 + 3;
  }

  else
  {
    result = v3;
  }

LABEL_33:
  *(this + 9) = result;
  return result;
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpFlow::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  v8 = *(lpsrc + 4);
  *(this + 10) |= 2u;
  *(this + 4) = v8;
  v5 = *(lpsrc + 10);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v10 = lpsrc[3];
    *(this + 10) |= 8u;
    v11 = this[3];
    if (v11 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v11, v10);
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

    goto LABEL_19;
  }

LABEL_15:
  v9 = *(lpsrc + 20);
  *(this + 10) |= 4u;
  *(this + 20) = v9;
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

LABEL_19:
  v12 = *(lpsrc + 8);
  if (v12 >= 4)
  {
    __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 6440, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
  }

  *(this + 10) |= 0x10u;
  *(this + 8) = v12;
  if ((lpsrc[5] & 0x20) != 0)
  {
LABEL_11:
    v6 = *(lpsrc + 21);
    *(this + 10) |= 0x20u;
    *(this + 21) = v6;
  }
}

void sub_2373AF8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergeFrom(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, const awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 2);
      if (v5 >= 4)
      {
        __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 6489, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
      }

      *(this + 8) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_subscription_status", "CCMetricsCP.pb.h", 6512, "::awd::metrics::RemotePlanSubscriptionStatus_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 8) |= 4u;
      v8 = *(this + 2);
      if (v8 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 24);
      *(this + 8) |= 8u;
      *(this + 24) = v9;
    }
  }
}

void sub_2373AFA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::~CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this)
{
  *this = &unk_284A5EAD0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EAD0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
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

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_47;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_41:
        *(this + 8) |= 4u;
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
        v11 = *(a2 + 2);
        if (v18 < v11 && *v18 == 32)
        {
          v12 = v18 + 1;
          *(a2 + 1) = v12;
LABEL_47:
          v22 = 0;
          if (v12 >= v11 || (v19 = *v12, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v19 = v22;
            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v20 = v12 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 24) = v19 != 0;
          *(this + 8) |= 8u;
          if (v20 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_21;
      }

      v24 = 0;
      v13 = *(a2 + 1);
      if (v13 >= *(a2 + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v14 = v24;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v14 <= 3)
      {
        *(this + 8) |= 1u;
        *(this + 2) = v14;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v15 < v9 && *v15 == 16)
      {
        v10 = v15 + 1;
        *(a2 + 1) = v10;
LABEL_31:
        v23 = 0;
        if (v10 >= v9 || (v16 = *v10, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
          if (!result)
          {
            return result;
          }

          v16 = v23;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v16 <= 4)
        {
          *(this + 8) |= 2u;
          *(this + 3) = v16;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_41;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_21:
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

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v5 + 16);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::ByteSize(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    result = 0;
    goto LABEL_30;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v6 = *(this + 3);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    goto LABEL_19;
  }

  v5 = *(this + 2);
  if ((v5 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v5 < 0x80)
  {
    v3 = 2;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
  v2 = *(this + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 2);
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
      v2 = *(this + 8);
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

    v3 += v13 + v9 + 1;
  }

  result = ((v2 >> 2) & 2) + v3;
LABEL_30:
  *(this + 7) = result;
  return result;
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::~CommCenterRemoteCellularPlanProfilesStatus(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus *this)
{
  *this = &unk_284A5EB48;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 9);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 3) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(this + 9);
      }
    }
  }

  v7 = *(this + 3);
  if (v7)
  {
    MEMORY[0x2383CAF80](v7, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::~CommCenterRemoteCellularPlanProfilesStatus(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
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
  }

  if (*(this + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_17;
        }

        v13 = *(this + 13);
LABEL_25:
        *(this + 13) = v13 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 26)
        {
          do
          {
            *(a2 + 1) = v15 + 1;
LABEL_31:
            v16 = *(this + 9);
            v17 = *(this + 8);
            if (v17 >= v16)
            {
              if (v16 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v16 = *(this + 9);
              }

              *(this + 9) = v16 + 1;
              operator new();
            }

            v18 = *(this + 3);
            *(this + 8) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v27 = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
              {
                return 0;
              }
            }

            else
            {
              v27 = *v20;
              *(a2 + 1) = v20 + 1;
            }

            v21 = *(a2 + 14);
            v22 = *(a2 + 15);
            *(a2 + 14) = v21 + 1;
            if (v21 >= v22)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v23 = *(a2 + 14);
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v25 < 0 == v24)
            {
              *(a2 + 14) = v25;
            }

            v15 = *(a2 + 1);
            v26 = *(a2 + 2);
          }

          while (v15 < v26 && *v15 == 26);
          if (v15 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 13) | 1;
        *(this + 13) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_25;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_31;
    }

LABEL_17:
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

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::ByteSize(awd::metrics::CommCenterRemoteCellularPlanProfilesStatus *this)
{
  if (!*(this + 52))
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (*(this + 52))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 13) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v3 = *(this + 2);
  v4 = *(v3 + 23);
  v5 = v4;
  v6 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    v4 = *(v3 + 23);
    v6 = *(v3 + 8);
    v5 = *(v3 + 23);
  }

  else
  {
    v8 = 1;
  }

  if (v5 < 0)
  {
    v4 = v6;
  }

  v2 += v8 + v4 + 1;
LABEL_16:
  v9 = *(this + 8);
  v10 = (v9 + v2);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::ByteSize(*(*(this + 3) + 8 * v11));
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(this + 8));
  }

  *(this + 12) = v10;
  return v10;
}

void awd::metrics::CommCenterRemoteCellularPlanProfilesStatus::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v5 = *(this + 8);
  v6 = *(lpsrc + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 3));
  LODWORD(v7) = *(lpsrc + 8);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
      }

      v9 = *(&lpsrc[3]->__r_.__value_.__l.__data_ + v8);
      v10 = *(this + 9);
      v11 = *(this + 8);
      if (v11 >= v10)
      {
        if (v10 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 3));
          v10 = *(this + 9);
        }

        *(this + 9) = v10 + 1;
        operator new();
      }

      v12 = this[3];
      *(this + 8) = v11 + 1;
      awd::metrics::CommCenterRemoteCellularPlanProfilesStatus_RemotePlanProfileInfo::MergeFrom(*(&v12->__r_.__value_.__l.__data_ + v11), v9);
      ++v8;
      v7 = *(lpsrc + 8);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(lpsrc + 52);
  if (v13)
  {
    if (*(lpsrc + 52))
    {
      v14 = lpsrc[1];
      *(this + 13) |= 1u;
      this[1] = v14;
      v13 = *(lpsrc + 13);
    }

    if ((v13 & 2) != 0)
    {
      v15 = lpsrc[2];
      *(this + 13) |= 2u;
      v16 = this[2];
      if (v16 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v16, v15);
    }
  }
}

void sub_2373B0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterManageAccount::~CommCenterManageAccount(awd::metrics::CommCenterManageAccount *this)
{
  *this = &unk_284A5EBC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EBC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterManageAccount::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterManageAccount::MergePartialFromCodedStream(awd::metrics::CommCenterManageAccount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

      if (TagFallback >> 3 == 17)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
LABEL_13:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
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
          v9 = (v7 + 1);
          *(a2 + 1) = v9;
        }

        *(this + 6) |= 1u;
        if (v6 - v9 >= 2 && *v9 == 136 && v9[1] == 1)
        {
          v10 = (v9 + 2);
          *(a2 + 1) = v10;
          goto LABEL_17;
        }
      }
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_13;
    }

    v10 = *(a2 + 1);
    v6 = *(a2 + 2);
LABEL_17:
    if (v10 >= v6 || (v11 = *v10, v11 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
      if (!result)
      {
        return result;
      }

      v12 = *(a2 + 1);
      v6 = *(a2 + 2);
    }

    else
    {
      *(this + 4) = v11;
      v12 = v10 + 1;
      *(a2 + 1) = v12;
    }

    *(this + 6) |= 2u;
  }

  while (v12 != v6 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterManageAccount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterManageAccount::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = *(this + 4);
    if (v3 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 2;
    }

    else
    {
      v4 = 3;
    }

    v2 = (v4 + v2);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  *(this + 5) = v2;
  return v2;
}

void awd::metrics::CommCenterManageAccount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(lpsrc + 24);
  if (v5)
  {
    if (lpsrc[3])
    {
      v6 = lpsrc[1];
      *(this + 6) |= 1u;
      this[1] = v6;
      v5 = *(lpsrc + 6);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(lpsrc + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_2373B0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::~CommCenterRemoteCellularPlanSignUpCallBackReceived(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this)
{
  *this = &unk_284A5EC38;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EC38;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::Clear(uint64_t this)
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

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::MergePartialFromCodedStream(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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

      if (v7 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v9 = *(this + 9) | 1;
        *(this + 9) = v9;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v7 != 2 || v8 != 2)
        {
          goto LABEL_21;
        }

        v9 = *(this + 9);
LABEL_30:
        *(this + 9) = v9 | 2;
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
        v16 = *(a2 + 2);
        if (v18 < v16 && *v18 == 24)
        {
          v17 = v18 + 1;
          *(a2 + 1) = v17;
LABEL_36:
          v24 = 0;
          if (v17 >= v16 || (v19 = *v17, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v19 = v24;
          }

          else
          {
            *(a2 + 1) = v17 + 1;
          }

          if (v19 <= 3)
          {
            *(this + 9) |= 4u;
            *(this + 6) = v19;
          }

          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v20 < v10 && *v20 == 32)
          {
            v11 = v20 + 1;
            *(a2 + 1) = v11;
LABEL_46:
            v23 = 0;
            if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v21 = v23;
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (v21 <= 3)
            {
              *(this + 9) |= 8u;
              *(this + 7) = v21;
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
      }
    }

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_36;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_46;
    }

LABEL_21:
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

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
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
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::ByteSize(awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_31;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(this + 2);
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
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 9);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v10 = *(this + 6);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_25:
    v12 = *(this + 7);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 = (v13 + v3);
  }

LABEL_31:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::CommCenterRemoteCellularPlanSignUpCallBackReceived::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  if ((*(lpsrc + 36) & 1) == 0)
  {
    if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v7 = lpsrc[2];
    *(this + 9) |= 2u;
    v8 = this[2];
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v5 = *(lpsrc + 9);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v6 = lpsrc[1];
  *(this + 9) |= 1u;
  this[1] = v6;
  v5 = *(lpsrc + 9);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v9 = *(lpsrc + 6);
  if (v9 >= 4)
  {
    __assert_rtn("set_flow_type", "CCMetricsCP.pb.h", 6892, "::awd::metrics::RemotePlanSignupFlow_IsValid(value)");
  }

  *(this + 9) |= 4u;
  *(this + 6) = v9;
  if ((*(lpsrc + 9) & 8) != 0)
  {
LABEL_16:
    v10 = *(lpsrc + 7);
    if (v10 >= 4)
    {
      __assert_rtn("set_plan_type", "CCMetricsCP.pb.h", 6915, "::awd::metrics::CommCenterCellularPlanType_IsValid(value)");
    }

    *(this + 9) |= 8u;
    *(this + 7) = v10;
  }
}

void sub_2373B1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfilesStatus::~CommCenterCellularPlanProfilesStatus(awd::metrics::CommCenterCellularPlanProfilesStatus *this)
{
  *this = &unk_284A5ECB0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5ECB0;
  awd::configs::AggregationSpec::SharedDtor(*(this + 2));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::Clear(uint64_t this)
{
  v1 = *(this + 40);
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
    *(this + 28) = 0;
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfilesStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
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
        if (TagFallback >> 3 > 0x15)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v18 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v18 >= v19 || (v20 = *v18, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v19 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v20;
            v21 = (v18 + 1);
            *(a2 + 1) = v21;
          }

          v11 = *(this + 10) | 1;
          *(this + 10) = v11;
          if (v19 - v21 >= 2 && *v21 == 154 && v21[1] == 1)
          {
            *(a2 + 1) = v21 + 2;
            goto LABEL_17;
          }
        }

        else if (v7 == 19 && v8 == 2)
        {
          v11 = *(this + 10);
LABEL_17:
          *(this + 10) = v11 | 2;
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
          v9 = *(a2 + 2);
          if (v9 - v13 >= 2 && *v13 == 176 && v13[1] == 1)
          {
            v14 = (v13 + 2);
            *(a2 + 1) = v14;
LABEL_26:
            if (v14 >= v9 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v15;
              v16 = (v14 + 1);
              *(a2 + 1) = v16;
            }

            *(this + 10) |= 4u;
            if (v9 - v16 >= 2 && *v16 == 184 && v16[1] == 1)
            {
              v17 = (v16 + 2);
              *(a2 + 1) = v17;
              goto LABEL_44;
            }
          }
        }

        else
        {
LABEL_32:
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

      if (v7 == 22)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_26;
      }

      if (v7 != 23)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_44:
      v26 = 0;
      if (v17 >= v9 || (v22 = *v17, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v22 = v26;
        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v23 = (v17 + 1);
        *(a2 + 1) = v23;
      }

      *(this + 28) = v22 != 0;
      *(this + 10) |= 8u;
      if (v9 - v23 >= 2 && *v23 == 192 && v23[1] == 1)
      {
        v10 = (v23 + 2);
        *(a2 + 1) = v10;
        goto LABEL_53;
      }
    }

    if (v7 != 24 || (TagFallback & 7) != 0)
    {
      goto LABEL_32;
    }

    v10 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_53:
    if (v10 >= v9 || (v24 = *v10, v24 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
      if (!result)
      {
        return result;
      }

      v25 = *(a2 + 1);
      v9 = *(a2 + 2);
    }

    else
    {
      *(this + 8) = v24;
      v25 = v10 + 1;
      *(a2 + 1) = v25;
    }

    *(this + 10) |= 0x10u;
  }

  while (v25 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 24), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, v8, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanProfilesStatus::ByteSize(awd::metrics::CommCenterCellularPlanProfilesStatus *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if ((*(this + 40) & 1) == 0)
  {
    LODWORD(v3) = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v4 = *(this + 2);
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
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v2 = *(this + 10);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    LODWORD(v3) = v3 + v9 + v5 + 2;
    goto LABEL_16;
  }

  LODWORD(v3) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 2;
      v2 = *(this + 10);
    }

    else
    {
      v11 = 3;
    }

    LODWORD(v3) = v11 + v3;
  }

  if ((v2 & 8) != 0)
  {
    v3 = (v3 + 3);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v12 = *(this + 8);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 2;
    }

    else
    {
      v13 = 3;
    }

    v3 = (v13 + v3);
  }

LABEL_29:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::CommCenterCellularPlanProfilesStatus::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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

LABEL_16:
      v10 = *(lpsrc + 6);
      *(this + 10) |= 4u;
      *(this + 6) = v10;
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

      goto LABEL_17;
    }
  }

  else if ((lpsrc[5] & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = lpsrc[2];
  *(this + 10) |= 2u;
  v9 = this[2];
  if (v9 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v5 = *(lpsrc + 10);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v5 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(lpsrc + 28);
  *(this + 10) |= 8u;
  *(this + 28) = v11;
  if ((lpsrc[5] & 0x10) != 0)
  {
LABEL_10:
    v6 = *(lpsrc + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v6;
  }
}

void sub_2373B2020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[3];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[6];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[7];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[8];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[9];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    JUMPOUT(0x2383CAFA0);
  }

  return this;
}

void awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::~CommCenterCellularPlanProvisioningOperationDetails(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this)
{
  *this = &unk_284A5ED28;
  awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5ED28;
  awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::Clear(uint64_t this)
{
  v1 = *(this + 100);
  if (v1)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 0x10) != 0)
    {
      v3 = *(this + 24);
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
    if ((*(this + 100) & 0x40) != 0)
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

    if ((*(this + 100) & 0x80) != 0)
    {
      v5 = *(this + 48);
      if (v5 != v2)
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
  }

  v6 = *(this + 100);
  if ((v6 & 0xFF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v7 = *(this + 56);
      if (v7 != MEMORY[0x277D82C30])
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(this + 101) & 2) != 0)
    {
      v8 = *(this + 64);
      if (v8 != MEMORY[0x277D82C30])
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    *(this + 80) = 0;
    if ((*(this + 101) & 8) != 0)
    {
      v9 = *(this + 72);
      if (v9 != MEMORY[0x277D82C30])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 92) = 0;
    *(this + 84) = 0;
  }

  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_41;
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
LABEL_46:
            *(this + 25) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v21 = v11 + 1;
              *(a2 + 1) = v21;
              goto LABEL_49;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_46;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_49:
        if (v21 >= v8 || (v28 = *v21, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v28;
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 25) |= 2u;
        if (v29 >= v8 || *v29 != 24)
        {
          continue;
        }

        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_57:
        if (v17 >= v8 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v30;
          v31 = v17 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 25) |= 4u;
        if (v31 >= v8 || *v31 != 32)
        {
          continue;
        }

        v20 = v31 + 1;
        *(a2 + 1) = v20;
LABEL_65:
        if (v20 >= v8 || (v32 = *v20, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v32;
          v33 = v20 + 1;
          *(a2 + 1) = v33;
        }

        v15 = *(this + 25) | 8;
        *(this + 25) = v15;
        if (v33 >= v8 || *v33 != 42)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_73:
        *(this + 25) = v15 | 0x10;
        if (*(this + 3) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v34 >= v22 || *v34 != 48)
        {
          continue;
        }

        v23 = v34 + 1;
        *(a2 + 1) = v23;
LABEL_79:
        if (v23 >= v22 || (v35 = *v23, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v35;
          v36 = v23 + 1;
          *(a2 + 1) = v36;
        }

        v25 = *(this + 25) | 0x20;
        *(this + 25) = v25;
        if (v36 >= v22 || *v36 != 58)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_87:
        *(this + 25) = v25 | 0x40;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 66)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_93:
        *(this + 25) |= 0x80u;
        if (*(this + 6) == v4)
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
        *(this + 25) |= 0x100u;
        if (*(this + 7) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 82)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_105:
        *(this + 25) |= 0x200u;
        if (*(this + 8) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v40 >= v26 || *v40 != 88)
        {
          continue;
        }

        v27 = v40 + 1;
        *(a2 + 1) = v27;
LABEL_111:
        if (v27 >= v26 || (v41 = *v27, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v26 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v41;
          v42 = v27 + 1;
          *(a2 + 1) = v42;
        }

        v14 = *(this + 25) | 0x400;
        *(this + 25) = v14;
        if (v42 >= v26 || *v42 != 98)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_119:
        *(this + 25) = v14 | 0x800;
        if (*(this + 9) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v43 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v43 >= v12 || *v43 != 104)
        {
          continue;
        }

        v16 = v43 + 1;
        *(a2 + 1) = v16;
LABEL_125:
        if (v16 >= v12 || (v44 = *v16, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v44;
          v45 = v16 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 25) |= 0x1000u;
        if (v45 >= v12 || *v45 != 112)
        {
          continue;
        }

        v24 = v45 + 1;
        *(a2 + 1) = v24;
LABEL_133:
        v54 = 0;
        if (v24 >= v12 || (v46 = *v24, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v46 = v54;
          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v47 = v24 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 92) = v46 != 0;
        *(this + 25) |= 0x2000u;
        if (v47 >= v12 || *v47 != 120)
        {
          continue;
        }

        v13 = v47 + 1;
        *(a2 + 1) = v13;
LABEL_141:
        v55 = 0;
        if (v13 >= v12 || (v48 = *v13, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55);
          if (!result)
          {
            return result;
          }

          v48 = v55;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v48 <= 3)
        {
          *(this + 25) |= 0x4000u;
          *(this + 22) = v48;
        }

        v49 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v18 - v49 < 2 || *v49 != 128 || v49[1] != 1)
        {
          continue;
        }

        v19 = (v49 + 2);
        *(a2 + 1) = v19;
LABEL_152:
        v53 = 0;
        if (v19 >= v18 || (v50 = *v19, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v50 = v53;
          v51 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v51 = v19 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 93) = v50 != 0;
        *(this + 25) |= 0x8000u;
        if (v51 != v18 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_57;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_65;
      case 5u:
        if (v7 != 2)
        {
          goto LABEL_41;
        }

        v15 = *(this + 25);
        goto LABEL_73;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_79;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_41;
        }

        v25 = *(this + 25);
        goto LABEL_87;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_93;
        }

        goto LABEL_41;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_41;
        }

        goto LABEL_99;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_105;
        }

        goto LABEL_41;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_111;
      case 0xCu:
        if (v7 != 2)
        {
          goto LABEL_41;
        }

        v14 = *(this + 25);
        goto LABEL_119;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_125;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_133;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_141;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_152;
      default:
LABEL_41:
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

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 100);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
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
  v7 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
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
  v8 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v9 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v10 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v11 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 80), a2, a4);
  v6 = *(v5 + 100);
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
  v12 = *(v5 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 84), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 88), a2, a4);
    if ((*(v5 + 100) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 92), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    return this;
  }

LABEL_33:
  v13 = *(v5 + 93);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, v13, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::ByteSize(awd::metrics::CommCenterCellularPlanProvisioningOperationDetails *this)
{
  v2 = *(this + 25);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_57;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 25);
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

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 25);
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
      v2 = *(this + 25);
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
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 8);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_26:
  v10 = *(this + 3);
  v11 = *(v10 + 23);
  v12 = v11;
  v13 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    v11 = *(v10 + 23);
    v13 = *(v10 + 8);
    v2 = *(this + 25);
    v12 = *(v10 + 23);
  }

  else
  {
    v15 = 1;
  }

  if (v12 < 0)
  {
    v11 = v13;
  }

  v3 = (v3 + v15 + v11 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_35:
  v16 = *(this + 9);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_48;
  }

LABEL_39:
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
    v2 = *(this + 25);
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
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
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
      v2 = *(this + 25);
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
  }

LABEL_57:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_109;
  }

  if ((v2 & 0x100) != 0)
  {
    v30 = *(this + 7);
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
      v2 = *(this + 25);
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

    LODWORD(v3) = v3 + v35 + v31 + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_60:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_82;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v36 = *(this + 8);
  v37 = *(v36 + 23);
  v38 = v37;
  v39 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v40 = *(v36 + 23);
  }

  else
  {
    v40 = v39;
  }

  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
    v37 = *(v36 + 23);
    v39 = *(v36 + 8);
    v2 = *(this + 25);
    v38 = *(v36 + 23);
  }

  else
  {
    v41 = 1;
  }

  if (v38 < 0)
  {
    v37 = v39;
  }

  LODWORD(v3) = v3 + v41 + v37 + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_61:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_62;
    }

LABEL_86:
    v44 = *(this + 9);
    v45 = *(v44 + 23);
    v46 = v45;
    v47 = *(v44 + 8);
    if ((v45 & 0x80u) == 0)
    {
      v48 = *(v44 + 23);
    }

    else
    {
      v48 = v47;
    }

    if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
      v45 = *(v44 + 23);
      v47 = *(v44 + 8);
      v2 = *(this + 25);
      v46 = *(v44 + 23);
    }

    else
    {
      v49 = 1;
    }

    if (v46 < 0)
    {
      v45 = v47;
    }

    LODWORD(v3) = v3 + v49 + v45 + 1;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_95;
  }

LABEL_82:
  v42 = *(this + 20);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v43 = 2;
  }

  LODWORD(v3) = v43 + v3;
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_86;
  }

LABEL_62:
  if ((v2 & 0x1000) != 0)
  {
LABEL_95:
    v50 = *(this + 21);
    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 1;
      v2 = *(this + 25);
    }

    else
    {
      v51 = 2;
    }

    LODWORD(v3) = v51 + v3;
  }

LABEL_99:
  LODWORD(v3) = ((v2 >> 12) & 2) + v3;
  if ((v2 & 0x4000) != 0)
  {
    v52 = *(this + 22);
    if ((v52 & 0x80000000) != 0)
    {
      v53 = 11;
    }

    else if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 1;
      v2 = *(this + 25);
    }

    else
    {
      v53 = 2;
    }

    LODWORD(v3) = v53 + v3;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = (v3 + 3);
  }

  else
  {
    v3 = v3;
  }

LABEL_109:
  *(this + 24) = v3;
  return v3;
}

void awd::metrics::CommCenterCellularPlanProvisioningOperationDetails::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v5 = *(lpsrc + 25);
  if (!v5)
  {
    goto LABEL_29;
  }

  if (v5)
  {
    v8 = lpsrc[1];
    *(this + 25) |= 1u;
    this[1] = v8;
    v5 = *(lpsrc + 25);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(lpsrc + 4);
  *(this + 25) |= 2u;
  *(this + 4) = v9;
  v5 = *(lpsrc + 25);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v10 = *(lpsrc + 5);
  *(this + 25) |= 4u;
  *(this + 5) = v10;
  v5 = *(lpsrc + 25);
  if ((v5 & 8) != 0)
  {
LABEL_9:
    v6 = *(lpsrc + 8);
    *(this + 25) |= 8u;
    *(this + 8) = v6;
    v5 = *(lpsrc + 25);
  }

LABEL_10:
  v7 = MEMORY[0x277D82C30];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v13 = *(lpsrc + 9);
    *(this + 25) |= 0x20u;
    *(this + 9) = v13;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v11 = lpsrc[3];
  *(this + 25) |= 0x10u;
  v12 = this[3];
  if (v12 == v7)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v14 = lpsrc[5];
  *(this + 25) |= 0x40u;
  v15 = this[5];
  if (v15 == v7)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x80) != 0)
  {
LABEL_26:
    v16 = lpsrc[6];
    *(this + 25) |= 0x80u;
    v17 = this[6];
    if (v17 == v7)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v5 = *(lpsrc + 25);
  }

LABEL_29:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v19 = lpsrc[7];
    *(this + 25) |= 0x100u;
    v20 = this[7];
    if (v20 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v5 = *(lpsrc + 25);
    if ((v5 & 0x200) == 0)
    {
LABEL_32:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_46;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v21 = lpsrc[8];
  *(this + 25) |= 0x200u;
  v22 = this[8];
  if (v22 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v22, v21);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x400) == 0)
  {
LABEL_33:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = *(lpsrc + 20);
  *(this + 25) |= 0x400u;
  *(this + 20) = v23;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x800) == 0)
  {
LABEL_34:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

LABEL_47:
  v24 = lpsrc[9];
  *(this + 25) |= 0x800u;
  v25 = this[9];
  if (v25 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x1000) == 0)
  {
LABEL_35:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

LABEL_50:
  v26 = *(lpsrc + 21);
  *(this + 25) |= 0x1000u;
  *(this + 21) = v26;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x2000) == 0)
  {
LABEL_36:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_51:
  v27 = *(lpsrc + 92);
  *(this + 25) |= 0x2000u;
  *(this + 92) = v27;
  v5 = *(lpsrc + 25);
  if ((v5 & 0x4000) == 0)
  {
LABEL_37:
    if ((v5 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_52:
  v28 = *(lpsrc + 22);
  if (v28 >= 4)
  {
    __assert_rtn("set_transport_type", "CCMetricsCP.pb.h", 7700, "::awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(value)");
  }

  *(this + 25) |= 0x4000u;
  *(this + 22) = v28;
  if ((*(lpsrc + 25) & 0x8000) != 0)
  {
LABEL_38:
    v18 = *(lpsrc + 93);
    *(this + 25) |= 0x8000u;
    *(this + 93) = v18;
  }
}

void sub_2373B367C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergeFrom(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this, const awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    *(this + 4) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_2373B3738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::~CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this)
{
  *this = &unk_284A5EDA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EDA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v11 = 0;
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 8) = v8 != 0;
      *(this + 4) |= 1u;
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

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::ByteSize(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergeFrom(this, lpsrc);
}

double awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedCtor(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this)
{
  *(this + 46) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  *(this + 8) = v1;
  *(this + 9) = 0;
  *(this + 59) = 0;
  *(this + 64) = 0;
  *(this + 10) = v1;
  *(this + 11) = 0;
  *(this + 12) = v1;
  *(this + 13) = 0;
  *(this + 14) = v1;
  *(this + 15) = 0;
  *(this + 33) = 0;
  *(this + 130) = 0;
  *(this + 17) = v1;
  *(this + 18) = v1;
  *(this + 19) = v1;
  *(this + 20) = v1;
  *(this + 21) = v1;
  *(this + 22) = v1;
  *(this + 188) = 0;
  return result;
}

void *awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2383CAFA0](v2, 0x1012C40EC159624);
  }

  v5 = v1[8];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x2383CAFA0](v5, 0x1012C40EC159624);
  }

  v7 = v1[10];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x2383CAFA0](v7, 0x1012C40EC159624);
  }

  v9 = v1[12];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x2383CAFA0](v9, 0x1012C40EC159624);
  }

  v11 = v1[14];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x2383CAFA0](v11, 0x1012C40EC159624);
  }

  v12 = v1[17];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x2383CAFA0](v12, 0x1012C40EC159624);
  }

  v13 = v1[18];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x2383CAFA0](v13, 0x1012C40EC159624);
  }

  v14 = v1[19];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x2383CAFA0](v14, 0x1012C40EC159624);
  }

  v15 = v1[20];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x2383CAFA0](v15, 0x1012C40EC159624);
  }

  v16 = v1[21];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x2383CAFA0](v16, 0x1012C40EC159624);
  }

  v17 = v1[22];
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x2383CAFA0](v17, 0x1012C40EC159624);
  }

  if (qword_2810D87E8 != v1)
  {
    this = v1[5];
    if (this)
    {
      v18 = *(*this + 8);

      return v18();
    }
  }

  return this;
}

void awd::metrics::CommCenterCellularPlanProfileTransferDetails::~CommCenterCellularPlanProfileTransferDetails(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this)
{
  *this = &unk_284A5EE18;
  awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5EE18;
  awd::metrics::CommCenterCellularPlanProfileTransferDetails::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::Clear(uint64_t this)
{
  v1 = *(this + 188);
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

    *(this + 32) = 0;
    *(this + 24) = 0;
    v1 = *(this + 188);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 36) = 0;
    if ((v1 & 0x400) != 0)
    {
      v3 = *(this + 40);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 16) = 0;
        v1 = *(this + 188);
      }
    }

    *(this + 57) = 0;
    *(this + 48) = 0;
    *(this + 60) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
    if ((v1 & 0x20000) != 0)
    {
      v4 = *(this + 64);
      if (v4 != MEMORY[0x277D82C30])
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

    *(this + 76) = 0;
    *(this + 59) = 0;
    *(this + 128) = 0;
    *(this + 88) = 0;
    if ((*(this + 190) & 0x40) != 0)
    {
      v5 = *(this + 80);
      if (v5 != MEMORY[0x277D82C30])
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

    v1 = *(this + 188);
    if ((v1 & 0x800000) != 0)
    {
      v6 = *(this + 96);
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

      v1 = *(this + 188);
    }
  }

  if (HIBYTE(v1))
  {
    *(this + 92) = 0;
    *(this + 104) = 0;
    if ((v1 & 0x4000000) != 0)
    {
      v7 = *(this + 112);
      if (v7 != MEMORY[0x277D82C30])
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    *(this + 120) = 0;
    *(this + 129) = 0;
    if ((*(this + 191) & 0x20) != 0)
    {
      v8 = *(this + 136);
      if (v8 != MEMORY[0x277D82C30])
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    *(this + 132) = 0;
    *(this + 130) = 0;
  }

  if (*(this + 192))
  {
    if (*(this + 192))
    {
      v9 = *(this + 144);
      if (v9 != MEMORY[0x277D82C30])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 2) != 0)
    {
      v10 = *(this + 152);
      if (v10 != MEMORY[0x277D82C30])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 4) != 0)
    {
      v11 = *(this + 160);
      if (v11 != MEMORY[0x277D82C30])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 8) != 0)
    {
      v12 = *(this + 168);
      if (v12 != MEMORY[0x277D82C30])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 192) & 0x10) != 0)
    {
      v13 = *(this + 176);
      if (v13 != MEMORY[0x277D82C30])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }
  }

  *(this + 188) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::MergePartialFromCodedStream(awd::metrics::CommCenterCellularPlanProfileTransferDetails *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
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

        v28 = *(this + 47) | 1;
        *(this + 47) = v28;
        if (v10 < v7 && *v10 == 18)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_91;
        }

        continue;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_82;
        }

        v28 = *(this + 47);
LABEL_91:
        *(this + 47) = v28 | 2;
        if (*(this + 2) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v48 >= v17 || *v48 != 24)
        {
          continue;
        }

        v24 = v48 + 1;
        *(a2 + 1) = v24;
LABEL_97:
        if (v24 >= v17 || (v49 = *v24, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v49;
          v50 = v24 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 47) |= 4u;
        if (v50 >= v17 || *v50 != 32)
        {
          continue;
        }

        v26 = v50 + 1;
        *(a2 + 1) = v26;
LABEL_105:
        if (v26 >= v17 || (v51 = *v26, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v51;
          v52 = v26 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 47) |= 8u;
        if (v52 >= v17 || *v52 != 40)
        {
          continue;
        }

        v18 = v52 + 1;
        *(a2 + 1) = v18;
LABEL_113:
        v114[0] = 0;
        if (v18 >= v17 || (v53 = *v18, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v53 = v114[0];
          v54 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v54 = v18 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 32) = v53 != 0;
        *(this + 47) |= 0x10u;
        if (v54 >= v17 || *v54 != 48)
        {
          continue;
        }

        v33 = v54 + 1;
        *(a2 + 1) = v33;
LABEL_121:
        v114[0] = 0;
        if (v33 >= v17 || (v55 = *v33, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v55 = v114[0];
          v56 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v56 = v33 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 33) = v55 != 0;
        *(this + 47) |= 0x20u;
        if (v56 >= v17 || *v56 != 56)
        {
          continue;
        }

        v36 = v56 + 1;
        *(a2 + 1) = v36;
LABEL_129:
        v114[0] = 0;
        if (v36 >= v17 || (v57 = *v36, (v57 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v57 = v114[0];
          v58 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v58 = v36 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 34) = v57 != 0;
        *(this + 47) |= 0x40u;
        if (v58 >= v17 || *v58 != 64)
        {
          continue;
        }

        v27 = v58 + 1;
        *(a2 + 1) = v27;
LABEL_137:
        v114[0] = 0;
        if (v27 >= v17 || (v59 = *v27, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v59 = v114[0];
          v60 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v60 = v27 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 35) = v59 != 0;
        *(this + 47) |= 0x80u;
        if (v60 >= v17 || *v60 != 72)
        {
          continue;
        }

        v39 = v60 + 1;
        *(a2 + 1) = v39;
LABEL_145:
        v114[0] = 0;
        if (v39 >= v17 || (v61 = *v39, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v61 = v114[0];
          v62 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v62 = v39 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 56) = v61 != 0;
        *(this + 47) |= 0x100u;
        if (v62 >= v17 || *v62 != 80)
        {
          continue;
        }

        v20 = v62 + 1;
        *(a2 + 1) = v20;
LABEL_153:
        v114[0] = 0;
        if (v20 >= v17 || (v63 = *v20, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v63 = v114[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v63 <= 3)
        {
          *(this + 47) |= 0x200u;
          *(this + 9) = v63;
        }

        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 != 90)
        {
          continue;
        }

        *(a2 + 1) = v64 + 1;
LABEL_163:
        *(this + 47) |= 0x400u;
        v65 = *(this + 5);
        if (!v65)
        {
          operator new();
        }

        v114[0] = 0;
        v66 = *(a2 + 1);
        if (v66 >= *(a2 + 2) || *v66 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v66;
          *(a2 + 1) = v66 + 1;
        }

        v67 = *(a2 + 14);
        v68 = *(a2 + 15);
        *(a2 + 14) = v67 + 1;
        if (v67 < v68)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::CommCenterCellularPlanProfileTransferDetails_RemotePlanTransferInfo::MergePartialFromCodedStream(v65, a2))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v69 = *(a2 + 14);
              v70 = __OFSUB__(v69, 1);
              v71 = v69 - 1;
              if (v71 < 0 == v70)
              {
                *(a2 + 14) = v71;
              }

              v72 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v72 < v13 && *v72 == 96)
              {
                v16 = v72 + 1;
                *(a2 + 1) = v16;
LABEL_177:
                v114[0] = 0;
                if (v16 >= v13 || (v73 = *v16, (v73 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                  if (!result)
                  {
                    return result;
                  }

                  v73 = v114[0];
                  v74 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                else
                {
                  v74 = v16 + 1;
                  *(a2 + 1) = v74;
                }

                *(this + 57) = v73 != 0;
                *(this + 47) |= 0x800u;
                if (v74 < v13 && *v74 == 104)
                {
                  v19 = v74 + 1;
                  *(a2 + 1) = v19;
LABEL_185:
                  if (v19 >= v13 || (v75 = *v19, v75 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                    if (!result)
                    {
                      return result;
                    }

                    v76 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 12) = v75;
                    v76 = v19 + 1;
                    *(a2 + 1) = v76;
                  }

                  *(this + 47) |= 0x1000u;
                  if (v76 < v13 && *v76 == 112)
                  {
                    v35 = v76 + 1;
                    *(a2 + 1) = v35;
LABEL_193:
                    if (v35 >= v13 || (v77 = *v35, v77 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                      if (!result)
                      {
                        return result;
                      }

                      v78 = *(a2 + 1);
                      v13 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 13) = v77;
                      v78 = v35 + 1;
                      *(a2 + 1) = v78;
                    }

                    *(this + 47) |= 0x2000u;
                    if (v78 < v13 && *v78 == 120)
                    {
                      v15 = v78 + 1;
                      *(a2 + 1) = v15;
LABEL_201:
                      v114[0] = 0;
                      if (v15 >= v13 || (v79 = *v15, (v79 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                        if (!result)
                        {
                          return result;
                        }

                        v79 = v114[0];
                        v80 = *(a2 + 1);
                        v13 = *(a2 + 2);
                      }

                      else
                      {
                        v80 = (v15 + 1);
                        *(a2 + 1) = v80;
                      }

                      *(this + 58) = v79 != 0;
                      *(this + 47) |= 0x4000u;
                      if (v13 - v80 >= 2 && *v80 == 128 && v80[1] == 1)
                      {
                        v25 = (v80 + 2);
                        *(a2 + 1) = v25;
LABEL_210:
                        if (v25 >= v13 || (v81 = *v25, v81 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                          if (!result)
                          {
                            return result;
                          }

                          v82 = *(a2 + 1);
                          v13 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 15) = v81;
                          v82 = (v25 + 1);
                          *(a2 + 1) = v82;
                        }

                        *(this + 47) |= 0x8000u;
                        if (v13 - v82 >= 2 && *v82 == 136 && v82[1] == 1)
                        {
                          v14 = (v82 + 2);
                          *(a2 + 1) = v14;
LABEL_219:
                          v114[0] = 0;
                          if (v14 >= v13 || (v83 = *v14, (v83 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                            if (!result)
                            {
                              return result;
                            }

                            v83 = v114[0];
                          }

                          else
                          {
                            *(a2 + 1) = v14 + 1;
                          }

                          if (v83 <= 5)
                          {
                            *(this + 47) |= 0x10000u;
                            *(this + 18) = v83;
                          }

                          v84 = *(a2 + 1);
                          if (*(a2 + 4) - v84 >= 2 && *v84 == 146 && v84[1] == 1)
                          {
                            *(a2 + 1) = v84 + 2;
LABEL_230:
                            *(this + 47) |= 0x20000u;
                            if (*(this + 8) == MEMORY[0x277D82C30])
                            {
                              operator new();
                            }

                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                            if (!result)
                            {
                              return result;
                            }

                            v85 = *(a2 + 1);
                            v37 = *(a2 + 2);
                            if (v37 - v85 >= 2 && *v85 == 152 && v85[1] == 1)
                            {
                              v38 = (v85 + 2);
                              *(a2 + 1) = v38;
LABEL_237:
                              v114[0] = 0;
                              if (v38 >= v37 || (v86 = *v38, (v86 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                if (!result)
                                {
                                  return result;
                                }

                                v86 = v114[0];
                              }

                              else
                              {
                                *(a2 + 1) = v38 + 1;
                              }

                              if (v86 <= 3)
                              {
                                *(this + 47) |= 0x40000u;
                                *(this + 19) = v86;
                              }

                              v87 = *(a2 + 1);
                              v31 = *(a2 + 2);
                              if (v31 - v87 >= 2 && *v87 == 160 && v87[1] == 1)
                              {
                                v43 = (v87 + 2);
                                *(a2 + 1) = v43;
LABEL_248:
                                v114[0] = 0;
                                if (v43 >= v31 || (v88 = *v43, (v88 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v88 = v114[0];
                                  v89 = *(a2 + 1);
                                  v31 = *(a2 + 2);
                                }

                                else
                                {
                                  v89 = (v43 + 1);
                                  *(a2 + 1) = v89;
                                }

                                *(this + 59) = v88 != 0;
                                *(this + 47) |= 0x80000u;
                                if (v31 - v89 >= 2 && *v89 == 168 && v89[1] == 1)
                                {
                                  v32 = (v89 + 2);
                                  *(a2 + 1) = v32;
LABEL_257:
                                  v114[0] = 0;
                                  if (v32 >= v31 || (v90 = *v32, (v90 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v90 = v114[0];
                                    v91 = *(a2 + 1);
                                    v31 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v91 = (v32 + 1);
                                    *(a2 + 1) = v91;
                                  }

                                  *(this + 128) = v90 != 0;
                                  *(this + 47) |= 0x100000u;
                                  if (v31 - v91 >= 2 && *v91 == 176 && v91[1] == 1)
                                  {
                                    v34 = (v91 + 2);
                                    *(a2 + 1) = v34;
LABEL_266:
                                    if (v34 >= v31 || (v92 = *v34, v92 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v93 = *(a2 + 1);
                                      v31 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 22) = v92;
                                      v93 = (v34 + 1);
                                      *(a2 + 1) = v93;
                                    }

                                    v42 = *(this + 47) | 0x200000;
                                    *(this + 47) = v42;
                                    if (v31 - v93 >= 2 && *v93 == 186 && v93[1] == 1)
                                    {
                                      *(a2 + 1) = v93 + 2;
LABEL_275:
                                      *(this + 47) = v42 | 0x400000;
                                      if (*(this + 10) == MEMORY[0x277D82C30])
                                      {
                                        operator new();
                                      }

                                      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v94 = *(a2 + 1);
                                      if (*(a2 + 4) - v94 >= 2 && *v94 == 194 && v94[1] == 1)
                                      {
                                        *(a2 + 1) = v94 + 2;
LABEL_282:
                                        *(this + 47) |= 0x800000u;
                                        if (*(this + 12) == MEMORY[0x277D82C30])
                                        {
                                          operator new();
                                        }

                                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v95 = *(a2 + 1);
                                        v21 = *(a2 + 2);
                                        if (v21 - v95 >= 2 && *v95 == 200 && v95[1] == 1)
                                        {
                                          v23 = (v95 + 2);
                                          *(a2 + 1) = v23;
LABEL_289:
                                          v114[0] = 0;
                                          if (v23 >= v21 || (v96 = *v23, (v96 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v96 = v114[0];
                                            v97 = *(a2 + 1);
                                            v21 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v97 = (v23 + 1);
                                            *(a2 + 1) = v97;
                                          }

                                          *(this + 23) = v96;
                                          *(this + 47) |= 0x1000000u;
                                          if (v21 - v97 >= 2 && *v97 == 208 && v97[1] == 1)
                                          {
                                            v22 = (v97 + 2);
                                            *(a2 + 1) = v22;
LABEL_298:
                                            *v114 = 0;
                                            if (v22 >= v21 || (v98 = *v22, v98 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v114);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v98 = *v114;
                                              v99 = *(a2 + 1);
                                              v21 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v99 = (v22 + 1);
                                              *(a2 + 1) = v99;
                                            }

                                            *(this + 13) = v98;
                                            v46 = *(this + 47) | 0x2000000;
                                            *(this + 47) = v46;
                                            if (v21 - v99 >= 2 && *v99 == 218 && v99[1] == 1)
                                            {
                                              *(a2 + 1) = v99 + 2;
LABEL_307:
                                              *(this + 47) = v46 | 0x4000000;
                                              if (*(this + 14) == MEMORY[0x277D82C30])
                                              {
                                                operator new();
                                              }

                                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v100 = *(a2 + 1);
                                              v11 = *(a2 + 2);
                                              if (v11 - v100 >= 2 && *v100 == 224 && v100[1] == 1)
                                              {
                                                v12 = (v100 + 2);
                                                *(a2 + 1) = v12;
LABEL_314:
                                                *v114 = 0;
                                                if (v12 >= v11 || (v101 = *v12, v101 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v114);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v101 = *v114;
                                                  v102 = *(a2 + 1);
                                                  v11 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v102 = (v12 + 1);
                                                  *(a2 + 1) = v102;
                                                }

                                                *(this + 15) = v101;
                                                *(this + 47) |= 0x8000000u;
                                                if (v11 - v102 >= 2 && *v102 == 232 && v102[1] == 1)
                                                {
                                                  v44 = (v102 + 2);
                                                  *(a2 + 1) = v44;
LABEL_323:
                                                  v114[0] = 0;
                                                  if (v44 >= v11 || (v103 = *v44, (v103 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v103 = v114[0];
                                                    v104 = *(a2 + 1);
                                                    v11 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v104 = (v44 + 1);
                                                    *(a2 + 1) = v104;
                                                  }

                                                  *(this + 129) = v103 != 0;
                                                  v45 = *(this + 47) | 0x10000000;
                                                  *(this + 47) = v45;
                                                  if (v11 - v104 >= 2 && *v104 == 242 && v104[1] == 1)
                                                  {
                                                    *(a2 + 1) = v104 + 2;
LABEL_332:
                                                    *(this + 47) = v45 | 0x20000000;
                                                    if (*(this + 17) == MEMORY[0x277D82C30])
                                                    {
                                                      operator new();
                                                    }

                                                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v105 = *(a2 + 1);
                                                    v40 = *(a2 + 2);
                                                    if (v40 - v105 >= 2 && *v105 == 248 && v105[1] == 1)
                                                    {
                                                      v41 = (v105 + 2);
                                                      *(a2 + 1) = v41;
LABEL_339:
                                                      v114[0] = 0;
                                                      if (v41 >= v40 || (v106 = *v41, (v106 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v106 = v114[0];
                                                      }

                                                      else
                                                      {
                                                        *(a2 + 1) = v41 + 1;
                                                      }

                                                      if (v106 <= 7)
                                                      {
                                                        *(this + 47) |= 0x40000000u;
                                                        *(this + 33) = v106;
                                                      }

                                                      v107 = *(a2 + 1);
                                                      v29 = *(a2 + 2);
                                                      if (v29 - v107 >= 2 && *v107 == 128 && v107[1] == 2)
                                                      {
                                                        v30 = (v107 + 2);
                                                        *(a2 + 1) = v30;
LABEL_350:
                                                        v114[0] = 0;
                                                        if (v30 >= v29 || (v108 = *v30, (v108 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v108 = v114[0];
                                                          v109 = *(a2 + 1);
                                                          v29 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          v109 = (v30 + 1);
                                                          *(a2 + 1) = v109;
                                                        }

                                                        *(this + 130) = v108 != 0;
                                                        *(this + 47) |= 0x80000000;
                                                        if (v29 - v109 >= 2 && *v109 == 138 && v109[1] == 2)
                                                        {
                                                          *(a2 + 1) = v109 + 2;
LABEL_359:
                                                          *(this + 48) |= 1u;
                                                          if (*(this + 18) == MEMORY[0x277D82C30])
                                                          {
                                                            operator new();
                                                          }

                                                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v110 = *(a2 + 1);
                                                          if (*(a2 + 4) - v110 >= 2 && *v110 == 146 && v110[1] == 2)
                                                          {
                                                            *(a2 + 1) = v110 + 2;
LABEL_366:
                                                            *(this + 48) |= 2u;
                                                            if (*(this + 19) == MEMORY[0x277D82C30])
                                                            {
                                                              operator new();
                                                            }

                                                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v111 = *(a2 + 1);
                                                            if (*(a2 + 4) - v111 >= 2 && *v111 == 154 && v111[1] == 2)
                                                            {
                                                              *(a2 + 1) = v111 + 2;
LABEL_373:
                                                              *(this + 48) |= 4u;
                                                              if (*(this + 20) == MEMORY[0x277D82C30])
                                                              {
                                                                operator new();
                                                              }

                                                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v112 = *(a2 + 1);
                                                              if (*(a2 + 4) - v112 >= 2 && *v112 == 162 && v112[1] == 2)
                                                              {
                                                                *(a2 + 1) = v112 + 2;
LABEL_380:
                                                                *(this + 48) |= 8u;
                                                                if (*(this + 21) == MEMORY[0x277D82C30])
                                                                {
                                                                  operator new();
                                                                }

                                                                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v113 = *(a2 + 1);
                                                                if (*(a2 + 4) - v113 >= 2 && *v113 == 170 && v113[1] == 2)
                                                                {
                                                                  *(a2 + 1) = v113 + 2;
LABEL_387:
                                                                  *(this + 48) |= 0x10u;
                                                                  if (*(this + 22) == MEMORY[0x277D82C30])
                                                                  {
                                                                    operator new();
                                                                  }

                                                                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                  if (!result)
                                                                  {
                                                                    return result;
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
                    }
                  }
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v24 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_97;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v26 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_105;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_113;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v33 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_121;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v36 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_129;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v27 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_137;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v39 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_145;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v20 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_153;
      case 0xBu:
        if (v6 == 2)
        {
          goto LABEL_163;
        }

        goto LABEL_82;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_177;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_185;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v35 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_193;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v15 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_201;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_210;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_219;
      case 0x12u:
        if (v6 == 2)
        {
          goto LABEL_230;
        }

        goto LABEL_82;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_237;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v43 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_248;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_257;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v34 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_266;
      case 0x17u:
        if (v6 != 2)
        {
          goto LABEL_82;
        }

        v42 = *(this + 47);
        goto LABEL_275;
      case 0x18u:
        if (v6 == 2)
        {
          goto LABEL_282;
        }

        goto LABEL_82;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v23 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_289;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_298;
      case 0x1Bu:
        if (v6 != 2)
        {
          goto LABEL_82;
        }

        v46 = *(this + 47);
        goto LABEL_307;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_314;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v44 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_323;
      case 0x1Eu:
        if (v6 != 2)
        {
          goto LABEL_82;
        }

        v45 = *(this + 47);
        goto LABEL_332;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v41 = *(a2 + 1);
        v40 = *(a2 + 2);
        goto LABEL_339;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_82;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_350;
      case 0x21u:
        if (v6 == 2)
        {
          goto LABEL_359;
        }

        goto LABEL_82;
      case 0x22u:
        if (v6 == 2)
        {
          goto LABEL_366;
        }

        goto LABEL_82;
      case 0x23u:
        if (v6 == 2)
        {
          goto LABEL_373;
        }

        goto LABEL_82;
      case 0x24u:
        if (v6 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_82;
      case 0x25u:
        if (v6 == 2)
        {
          goto LABEL_387;
        }

        goto LABEL_82;
      default:
LABEL_82:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t awd::metrics::CommCenterCellularPlanProfileTransferDetails::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 188);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 188);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 33), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 34), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 35), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 36), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_49:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(qword_2810D87E8 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v9, a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 57), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 48), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 52), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 58), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 60), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 72), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  v10 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 76), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x14, *(v5 + 59), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 128), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 88), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  v11 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  v12 = *(v5 + 96);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x19, *(v5 + 92), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x1A, *(v5 + 104), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v13 = *(v5 + 112);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x1C, *(v5 + 120), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 129), a2, a4);
  v6 = *(v5 + 188);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_71:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x1F, *(v5 + 132), a2, a4);
    if ((*(v5 + 188) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_70:
  v14 = *(v5 + 136);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 188);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 130), a2, a4);
LABEL_33:
  v7 = *(v5 + 192);
  if (v7)
  {
    v15 = *(v5 + 144);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v7 = *(v5 + 192);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_75;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  v16 = *(v5 + 152);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v7 = *(v5 + 192);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_76:
    v18 = *(v5 + 168);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 192) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_77;
  }

LABEL_75:
  v17 = *(v5 + 160);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v7 = *(v5 + 192);
  if ((v7 & 8) != 0)
  {
    goto LABEL_76;
  }

LABEL_37:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_77:
  v19 = *(v5 + 176);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}