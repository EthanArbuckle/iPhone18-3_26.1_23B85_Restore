int *awd::profile::BedfConfig::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[11];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[11];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  if ((v5[11] & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 2);
  if (!v7)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v7 = *(awd::profile::BedfConfig::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (v5[8] >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(*(v5 + 3) + 4 * v8++), a2, a4);
    }

    while (v8 < v5[8]);
  }

  return this;
}

uint64_t awd::profile::BedfConfig::ByteSize(awd::profile::BedfConfig *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (*(this + 44))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v8 = *(awd::profile::BedfConfig::default_instance_ + 16);
    }

    v9 = awd::profile::BedfTreeNode::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 += v10 + v11 + 1;
  }

LABEL_21:
  v12 = *(this + 8);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(this + 3) + 4 * v13);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 10;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
        v12 = *(this + 8);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  result = (v14 + v4 + v12);
  *(this + 10) = result;
  return result;
}

void awd::profile::Metric::MergeFrom(awd::profile::Metric *this, const awd::profile::Metric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v32);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), *(a2 + 14) + *(this + 14));
  if (*(a2 + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 6) + 8 * v4);
      v6 = *(this + 15);
      v7 = *(this + 14);
      if (v7 >= v6)
      {
        if (v6 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v6 + 1);
          v6 = *(this + 15);
        }

        *(this + 15) = v6 + 1;
        operator new();
      }

      v8 = *(this + 6);
      *(this + 14) = v7 + 1;
      awd::profile::ProcessingRule::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 14));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), *(a2 + 20) + *(this + 20));
  if (*(a2 + 20) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 9) + 8 * v9);
      v11 = *(this + 21);
      v12 = *(this + 20);
      if (v12 >= v11)
      {
        if (v11 == *(this + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v11 + 1);
          v11 = *(this + 21);
        }

        *(this + 21) = v11 + 1;
        operator new();
      }

      v13 = *(this + 9);
      *(this + 20) = v12 + 1;
      awd::profile::BedfConfig::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 20));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), *(a2 + 26) + *(this + 26));
  if (*(a2 + 26) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 12) + 8 * v14);
      v16 = *(this + 27);
      v17 = *(this + 26);
      if (v17 >= v16)
      {
        if (v16 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v16 + 1);
          v16 = *(this + 27);
        }

        *(this + 27) = v16 + 1;
        operator new();
      }

      v18 = *(this + 12);
      *(this + 26) = v17 + 1;
      awd::profile::ConfigurationParameter::MergeFrom(*(v18 + 8 * v17), v15);
      ++v14;
    }

    while (v14 < *(a2 + 26));
  }

  v19 = *(a2 + 33);
  if (!v19)
  {
    goto LABEL_37;
  }

  if (v19)
  {
    v22 = *(a2 + 2);
    *(this + 33) |= 1u;
    *(this + 2) = v22;
    v19 = *(a2 + 33);
    if ((v19 & 2) == 0)
    {
LABEL_30:
      if ((v19 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_46;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_30;
  }

  v23 = *(a2 + 3);
  *(this + 33) |= 2u;
  *(this + 3) = v23;
  v19 = *(a2 + 33);
  if ((v19 & 4) == 0)
  {
LABEL_31:
    if ((v19 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = *(a2 + 4);
  *(this + 33) |= 4u;
  *(this + 4) = v24;
  v19 = *(a2 + 33);
  if ((v19 & 8) == 0)
  {
LABEL_32:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = *(a2 + 5);
  *(this + 33) |= 8u;
  *(this + 5) = v25;
  v19 = *(a2 + 33);
  if ((v19 & 0x10) == 0)
  {
LABEL_33:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_34;
    }

LABEL_49:
    v27 = *(a2 + 7);
    *(this + 33) |= 0x20u;
    *(this + 7) = v27;
    v19 = *(a2 + 33);
    if ((v19 & 0x40) == 0)
    {
LABEL_35:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_48:
  v26 = *(a2 + 6);
  *(this + 33) |= 0x10u;
  *(this + 6) = v26;
  v19 = *(a2 + 33);
  if ((v19 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_34:
  if ((v19 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_50:
  v28 = *(a2 + 8);
  *(this + 33) |= 0x40u;
  *(this + 8) = v28;
  v19 = *(a2 + 33);
  if ((v19 & 0x80) != 0)
  {
LABEL_36:
    v20 = *(a2 + 9);
    *(this + 33) |= 0x80u;
    *(this + 9) = v20;
    v19 = *(a2 + 33);
  }

LABEL_37:
  if ((v19 & 0xFF00) == 0)
  {
    return;
  }

  if ((v19 & 0x100) != 0)
  {
    v29 = *(a2 + 40);
    *(this + 33) |= 0x100u;
    *(this + 40) = v29;
    v19 = *(a2 + 33);
    if ((v19 & 0x200) == 0)
    {
LABEL_40:
      if ((v19 & 0x1000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_54;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v30 = *(a2 + 11);
  *(this + 33) |= 0x200u;
  *(this + 11) = v30;
  v19 = *(a2 + 33);
  if ((v19 & 0x1000) == 0)
  {
LABEL_41:
    if ((v19 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_54:
  v31 = *(a2 + 30);
  *(this + 33) |= 0x1000u;
  *(this + 30) = v31;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return;
  }

LABEL_42:
  v21 = *(a2 + 31);
  *(this + 33) |= 0x4000u;
  *(this + 31) = v21;
}

void sub_1001EB5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Metric::~Metric(awd::profile::Metric *this)
{
  *this = off_1002B8CF0;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 12);
  sub_1000C8650(this + 9);
  sub_1000C8650(this + 6);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Metric::~Metric(this);

  operator delete();
}

uint64_t awd::profile::Metric::Clear(awd::profile::Metric *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 11) = 0;
    *(this + 15) = 0;
  }

  sub_1000C85E0(this + 48);
  sub_1000C85E0(this + 72);
  result = sub_1000C85E0(this + 96);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::profile::Metric::MergePartialFromCodedStream(awd::profile::Metric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
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
            goto LABEL_38;
          }

          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v9 >= v8 || (v10 = *v9, v10 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
          }

          *(this + 33) |= 1u;
          if (v11 < v8 && *v11 == 16)
          {
            v21 = v11 + 1;
            *(a2 + 1) = v21;
            goto LABEL_47;
          }

          continue;
        case 2u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_47:
          if (v21 >= v8 || (v26 = *v21, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v26;
            v27 = v21 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 33) |= 2u;
          if (v27 >= v8 || *v27 != 24)
          {
            continue;
          }

          v18 = v27 + 1;
          *(a2 + 1) = v18;
LABEL_55:
          v85 = 0;
          if (v18 >= v8 || (v28 = *v18, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v28 = v85;
            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v29 = v18 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 4) = -(v28 & 1) ^ (v28 >> 1);
          *(this + 33) |= 4u;
          if (v29 >= v8 || *v29 != 32)
          {
            continue;
          }

          v19 = v29 + 1;
          *(a2 + 1) = v19;
LABEL_63:
          v85 = 0;
          if (v19 >= v8 || (v30 = *v19, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v30 = v85;
            v31 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v31 = v19 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 5) = -(v30 & 1) ^ (v30 >> 1);
          *(this + 33) |= 8u;
          if (v31 >= v8 || *v31 != 40)
          {
            continue;
          }

          v14 = v31 + 1;
          *(a2 + 1) = v14;
LABEL_71:
          if (v14 >= v8 || (v32 = *v14, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v33 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v32;
            v33 = v14 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 33) |= 0x10u;
          if (v33 >= v8 || *v33 != 48)
          {
            continue;
          }

          v22 = v33 + 1;
          *(a2 + 1) = v22;
LABEL_79:
          if (v22 >= v8 || (v34 = *v22, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v34;
            v35 = v22 + 1;
            *(a2 + 1) = v35;
          }

          *(this + 33) |= 0x20u;
          if (v35 >= v8 || *v35 != 56)
          {
            continue;
          }

          v23 = v35 + 1;
          *(a2 + 1) = v23;
LABEL_87:
          v85 = 0;
          if (v23 >= v8 || (v36 = *v23, (v36 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v36 = v85;
            v37 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v37 = v23 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 8) = v36;
          *(this + 33) |= 0x40u;
          if (v37 >= v8 || *v37 != 64)
          {
            continue;
          }

          v20 = v37 + 1;
          *(a2 + 1) = v20;
LABEL_95:
          v85 = 0;
          if (v20 >= v8 || (v38 = *v20, (v38 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v38 = v85;
            v39 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v39 = v20 + 1;
            *(a2 + 1) = v39;
          }

          *(this + 9) = v38;
          *(this + 33) |= 0x80u;
          if (v39 >= v8 || *v39 != 72)
          {
            continue;
          }

          v24 = v39 + 1;
          *(a2 + 1) = v24;
LABEL_103:
          v85 = 0;
          if (v24 >= v8 || (v40 = *v24, (v40 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
            if (!result)
            {
              return result;
            }

            v40 = v85;
            v41 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v41 = v24 + 1;
            *(a2 + 1) = v41;
          }

          *(this + 40) = v40 != 0;
          *(this + 33) |= 0x100u;
          if (v41 >= v8 || *v41 != 80)
          {
            continue;
          }

          v17 = v41 + 1;
          *(a2 + 1) = v17;
LABEL_111:
          if (v17 >= v8 || (v42 = *v17, v42 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
            if (!result)
            {
              return result;
            }

            v43 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 11) = v42;
            v43 = v17 + 1;
            *(a2 + 1) = v43;
          }

          *(this + 33) |= 0x200u;
          if (v43 >= v8 || *v43 != 90)
          {
            continue;
          }

          break;
        case 3u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_55;
        case 4u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v19 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_63;
        case 5u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_71;
        case 6u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v22 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_79;
        case 7u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_87;
        case 8u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_95;
        case 9u:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v24 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_103;
        case 0xAu:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_111;
        case 0xBu:
          if (v7 == 2)
          {
            goto LABEL_119;
          }

          goto LABEL_38;
        case 0xCu:
          if (v7 == 2)
          {
            goto LABEL_137;
          }

          goto LABEL_38;
        case 0xDu:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_155;
        case 0xEu:
          if (v7 == 2)
          {
            goto LABEL_163;
          }

          goto LABEL_38;
        case 0xFu:
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_181;
        default:
LABEL_38:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }

          continue;
      }

      do
      {
        *(a2 + 1) = v43 + 1;
LABEL_119:
        v44 = *(this + 15);
        v45 = *(this + 14);
        if (v45 >= v44)
        {
          if (v44 == *(this + 16))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v44 + 1);
            v44 = *(this + 15);
          }

          *(this + 15) = v44 + 1;
          operator new();
        }

        v46 = *(this + 6);
        *(this + 14) = v45 + 1;
        v47 = *(v46 + 8 * v45);
        v85 = 0;
        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v48;
          *(a2 + 1) = v48 + 1;
        }

        v49 = *(a2 + 14);
        v50 = *(a2 + 15);
        *(a2 + 14) = v49 + 1;
        if (v49 >= v50)
        {
          return 0;
        }

        v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v85);
        if (!awd::profile::ProcessingRule::MergePartialFromCodedStream(v47, a2, v52) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
        v53 = *(a2 + 14);
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v55 < 0 == v54)
        {
          *(a2 + 14) = v55;
        }

        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2))
        {
          goto LABEL_1;
        }

        v56 = *v43;
      }

      while (v56 == 90);
      if (v56 == 98)
      {
        do
        {
          *(a2 + 1) = v43 + 1;
LABEL_137:
          v57 = *(this + 21);
          v58 = *(this + 20);
          if (v58 >= v57)
          {
            if (v57 == *(this + 22))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v57 + 1);
              v57 = *(this + 21);
            }

            *(this + 21) = v57 + 1;
            operator new();
          }

          v59 = *(this + 9);
          *(this + 20) = v58 + 1;
          v60 = *(v59 + 8 * v58);
          v85 = 0;
          v61 = *(a2 + 1);
          if (v61 >= *(a2 + 2) || *v61 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
            {
              return 0;
            }
          }

          else
          {
            v85 = *v61;
            *(a2 + 1) = v61 + 1;
          }

          v62 = *(a2 + 14);
          v63 = *(a2 + 15);
          *(a2 + 14) = v62 + 1;
          if (v62 >= v63)
          {
            return 0;
          }

          v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v85);
          if (!awd::profile::BedfConfig::MergePartialFromCodedStream(v60, a2, v65) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v64);
          v66 = *(a2 + 14);
          v54 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (v67 < 0 == v54)
          {
            *(a2 + 14) = v67;
          }

          v43 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v43 >= v15)
          {
            goto LABEL_1;
          }

          v68 = *v43;
        }

        while (v68 == 98);
        if (v68 == 104)
        {
          v16 = v43 + 1;
          *(a2 + 1) = v16;
LABEL_155:
          if (v16 < v15)
          {
            v69 = *v16;
            if ((v69 & 0x80000000) == 0)
            {
              *(this + 30) = v69;
              v70 = v16 + 1;
              *(a2 + 1) = v70;
              goto LABEL_160;
            }
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_160:
          *(this + 33) |= 0x1000u;
          if (v70 < v15 && *v70 == 114)
          {
            do
            {
              *(a2 + 1) = v70 + 1;
LABEL_163:
              v71 = *(this + 27);
              v72 = *(this + 26);
              if (v72 >= v71)
              {
                if (v71 == *(this + 28))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v71 + 1);
                  v71 = *(this + 27);
                }

                *(this + 27) = v71 + 1;
                operator new();
              }

              v73 = *(this + 12);
              *(this + 26) = v72 + 1;
              v74 = *(v73 + 8 * v72);
              v85 = 0;
              v75 = *(a2 + 1);
              if (v75 >= *(a2 + 2) || *v75 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
                {
                  return 0;
                }
              }

              else
              {
                v85 = *v75;
                *(a2 + 1) = v75 + 1;
              }

              v76 = *(a2 + 14);
              v77 = *(a2 + 15);
              *(a2 + 14) = v76 + 1;
              if (v76 >= v77)
              {
                return 0;
              }

              v78 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v85);
              if (!awd::profile::ConfigurationParameter::MergePartialFromCodedStream(v74, a2, v79) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v78);
              v80 = *(a2 + 14);
              v54 = __OFSUB__(v80, 1);
              v81 = v80 - 1;
              if (v81 < 0 == v54)
              {
                *(a2 + 14) = v81;
              }

              v70 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v70 >= v12)
              {
                goto LABEL_1;
              }

              v82 = *v70;
            }

            while (v82 == 114);
            if (v82 == 120)
            {
              break;
            }
          }
        }
      }
    }

    v13 = v70 + 1;
    *(a2 + 1) = v13;
LABEL_181:
    if (v13 >= v12)
    {
      break;
    }

    v83 = *v13;
    if (v83 < 0)
    {
      break;
    }

    *(this + 31) = v83;
    v84 = v13 + 1;
    *(a2 + 1) = v84;
LABEL_186:
    *(this + 33) |= 0x4000u;
    if (v84 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
  if (result)
  {
    v84 = *(a2 + 1);
    v12 = *(a2 + 2);
    goto LABEL_186;
  }

  return result;
}

uint64_t awd::profile::Metric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 40), a2, a4);
  if ((*(v5 + 132) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, *(*(v5 + 72) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  if ((*(v5 + 133) & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 120), a2, a4);
  }

  if (*(v5 + 104) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, *(*(v5 + 96) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 104));
  }

  if ((*(v5 + 133) & 0x40) != 0)
  {
    v10 = *(v5 + 124);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v10, a2, a4);
  }

  return this;
}

uint64_t awd::profile::Metric::ByteSize(awd::profile::Metric *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_49;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 33);
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

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = ((2 * *(this + 4)) ^ (*(this + 4) >> 31));
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = ((2 * *(this + 5)) ^ (*(this + 5) >> 31));
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

LABEL_37:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_49:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  v4 += (v3 >> 7) & 2;
  if ((v3 & 0x200) != 0)
  {
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
    if ((v3 & 0x1000) == 0)
    {
LABEL_52:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_52;
  }

  v22 = *(this + 30);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v23 = 2;
  }

  v4 += v23;
  if ((v3 & 0x4000) != 0)
  {
LABEL_62:
    v24 = *(this + 31);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    }

    else
    {
      v25 = 2;
    }

    v4 += v25;
  }

LABEL_66:
  v26 = *(this + 14);
  v27 = v26 + v4;
  if (v26 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = awd::profile::ProcessingRule::ByteSize(*(*(this + 6) + 8 * v28), a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      v27 += v30 + v31;
      ++v28;
    }

    while (v28 < *(this + 14));
  }

  v32 = *(this + 20);
  v33 = v32 + v27;
  if (v32 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = awd::profile::BedfConfig::ByteSize(*(*(this + 9) + 8 * v34), a2);
      v36 = v35;
      if (v35 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
      }

      else
      {
        v37 = 1;
      }

      v33 += v36 + v37;
      ++v34;
    }

    while (v34 < *(this + 20));
  }

  v38 = *(this + 26);
  v39 = (v38 + v33);
  if (v38 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = awd::profile::ConfigurationParameter::ByteSize(*(*(this + 12) + 8 * v40), a2);
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

    while (v40 < *(this + 26));
  }

  *(this + 32) = v39;
  return v39;
}

void awd::profile::Profile::MergeFrom(awd::profile::Profile *this, const awd::profile::Profile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v34);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_10001C3A0(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        operator new();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      awd::profile::Metric::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  v10 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), *(a2 + 24) + *(this + 24));
  if (*(a2 + 24) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(a2 + 11) + 8 * v11);
      v13 = *(this + 25);
      v14 = *(this + 24);
      if (v14 >= v13)
      {
        if (v13 == *(this + 26))
        {
          v10 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), v13 + 1);
          v13 = *(this + 25);
        }

        *(this + 25) = v13 + 1;
        v16 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v10);
        v17 = *(this + 11);
        v18 = *(this + 24);
        *(this + 24) = v18 + 1;
        *(v17 + 8 * v18) = v16;
      }

      else
      {
        v15 = *(this + 11);
        *(this + 24) = v14 + 1;
        v16 = *(v15 + 8 * v14);
      }

      v10 = std::string::operator=(v16, v12);
      ++v11;
    }

    while (v11 < *(a2 + 24));
  }

  v19 = *(a2 + 33);
  if (v19)
  {
    if (v19)
    {
      v20 = *(a2 + 2);
      *(this + 33) |= 1u;
      *(this + 2) = v20;
      v19 = *(a2 + 33);
      if ((v19 & 2) == 0)
      {
LABEL_24:
        if ((v19 & 8) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_24;
    }

    v21 = *(a2 + 3);
    *(this + 33) |= 2u;
    *(this + 3) = v21;
    v19 = *(a2 + 33);
    if ((v19 & 8) == 0)
    {
LABEL_25:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

LABEL_31:
    v22 = *(a2 + 8);
    *(this + 33) |= 8u;
    *(this + 8) = v22;
    v19 = *(a2 + 33);
    if ((v19 & 0x10) == 0)
    {
LABEL_26:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

LABEL_32:
    v23 = *(a2 + 9);
    *(this + 33) |= 0x10u;
    *(this + 9) = v23;
    v19 = *(a2 + 33);
    if ((v19 & 0x20) == 0)
    {
LABEL_27:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_33:
    v24 = *(a2 + 16);
    *(this + 33) |= 0x20u;
    *(this + 16) = v24;
    v19 = *(a2 + 33);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_39;
    }

LABEL_34:
    *(this + 33) |= 0x80u;
    v25 = *(this + 9);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 9);
    if (!v26)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(v10);
      v26 = *(awd::profile::Profile::default_instance_ + 72);
    }

    awd::profile::Log::MergeFrom(v25, v26);
    v19 = *(a2 + 33);
  }

LABEL_39:
  if ((v19 & 0xFF00) == 0)
  {
    return;
  }

  if ((v19 & 0x100) != 0)
  {
    v27 = *(a2 + 17);
    *(this + 33) |= 0x100u;
    *(this + 17) = v27;
    v19 = *(a2 + 33);
    if ((v19 & 0x200) == 0)
    {
LABEL_42:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v28 = *(a2 + 20);
  *(this + 33) |= 0x200u;
  *(this + 20) = v28;
  v19 = *(a2 + 33);
  if ((v19 & 0x400) == 0)
  {
LABEL_43:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_50;
  }

LABEL_49:
  v29 = *(a2 + 21);
  *(this + 33) |= 0x400u;
  *(this + 21) = v29;
  v19 = *(a2 + 33);
  if ((v19 & 0x800) == 0)
  {
LABEL_44:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_50:
  v30 = *(a2 + 28);
  *(this + 33) |= 0x800u;
  *(this + 28) = v30;
  v19 = *(a2 + 33);
  if ((v19 & 0x2000) == 0)
  {
LABEL_45:
    if ((v19 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_52;
  }

LABEL_51:
  v31 = *(a2 + 116);
  *(this + 33) |= 0x2000u;
  *(this + 116) = v31;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return;
  }

LABEL_52:
  v32 = *(a2 + 15);
  *(this + 33) |= 0x4000u;
  v33 = *(this + 15);
  if (v33 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v33, v32);
}

void sub_1001ECC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Profile::~Profile(awd::profile::Profile *this)
{
  *this = off_1002B8D68;
  awd::profile::Profile::SharedDtor(this);
  sub_1001F757C(this + 22);
  sub_1000C8650(this + 5);
  if (*(this + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Profile::~Profile(this);

  operator delete();
}

void awd::profile::Profile::SharedDtor(awd::profile::Profile *this)
{
  v2 = *(this + 15);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::Profile::default_instance_ != this)
  {
    v4 = *(this + 9);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t awd::profile::Profile::Clear(awd::profile::Profile *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 16) = 0;
    if ((v2 & 0x80) != 0)
    {
      v3 = *(this + 9);
      if (v3)
      {
        sub_1000C85E0(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(this + 33);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 17) = 0;
    *(this + 10) = 0;
    *(this + 28) = 0;
    *(this + 116) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v4 = *(this + 15);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

  *(this + 6) = 0;
  sub_1000C85E0(this + 40);
  result = sub_100129BCC(this + 88);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::profile::Log::Clear(awd::profile::Log *this)
{
  result = sub_1000C85E0(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t awd::profile::Profile::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
LABEL_2:
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
    {
      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v6 = this;
      *(a2 + 8) = this;
      if (!this)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      if (!v6)
      {
        return 1;
      }
    }

    v7 = v6 & 7;
    switch(v6 >> 3)
    {
      case 1u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 8));
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(v4 + 8) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(v4 + 132) |= 1u;
        if (v11 < v8 && *v11 == 24)
        {
          v18 = v11 + 1;
          *(a2 + 1) = v18;
          goto LABEL_51;
        }

        continue;
      case 3u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_51:
        if (v18 >= v8 || (v25 = *v18, v25 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 12));
          if (!this)
          {
            return this;
          }

          v26 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(v4 + 12) = v25;
          v26 = (v18 + 1);
          *(a2 + 1) = v26;
        }

        *(v4 + 132) |= 2u;
        if (v26 < v8)
        {
          v27 = *v26;
          goto LABEL_58;
        }

        continue;
      case 4u:
        if ((v6 & 7) == 0)
        {
          v24 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v83 = 0;
            if (v24 >= v8 || *v24 < 0)
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
              if (!this)
              {
                return 0;
              }
            }

            else
            {
              v83 = *v24;
              *(a2 + 1) = v24 + 1;
            }

            v28 = *(v4 + 24);
            if (v28 == *(v4 + 28))
            {
              this = sub_10001C3A0((v4 + 16), v28 + 1);
              v28 = *(v4 + 24);
            }

            v29 = v83;
            v30 = *(v4 + 16);
            *(v4 + 24) = v28 + 1;
            *(v30 + 4 * v28) = v29;
            v31 = *(v4 + 28) - *(v4 + 24);
            if (v31 >= 1)
            {
              v32 = v31 + 1;
              do
              {
                v33 = *(a2 + 1);
                v34 = *(a2 + 2);
                if (v33 >= v34 || *v33 != 32)
                {
                  break;
                }

                *(a2 + 1) = v33 + 1;
                if ((v33 + 1) >= v34 || (v35 = v33[1], (v35 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
                  if (!this)
                  {
                    return 0;
                  }

                  v35 = v83;
                  v30 = *(v4 + 16);
                }

                else
                {
                  v83 = v33[1];
                  *(a2 + 1) = v33 + 2;
                }

                v36 = *(v4 + 24);
                *(v4 + 24) = v36 + 1;
                *(v30 + 4 * v36) = v35;
                --v32;
              }

              while (v32 > 1);
            }

LABEL_76:
            v26 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v26 >= v8)
            {
              goto LABEL_2;
            }

            v27 = *v26;
            if (v27 == 40)
            {
              break;
            }

LABEL_58:
            if (v27 != 32)
            {
              goto LABEL_2;
            }

            v24 = (v26 + 1);
            *(a2 + 1) = v24;
          }

          v20 = (v26 + 1);
          *(a2 + 1) = v20;
LABEL_79:
          if (v20 >= v8 || (v37 = *v20, v37 < 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 32));
            if (!this)
            {
              return this;
            }

            v38 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(v4 + 32) = v37;
            v38 = v20 + 1;
            *(a2 + 1) = v38;
          }

          *(v4 + 132) |= 8u;
          if (v38 < v8 && *v38 == 48)
          {
            v21 = v38 + 1;
            *(a2 + 1) = v21;
LABEL_87:
            v83 = 0;
            if (v21 >= v8 || (v39 = *v21, (v39 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
              if (!this)
              {
                return this;
              }

              v39 = v83;
              v40 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v40 = v21 + 1;
              *(a2 + 1) = v40;
            }

            *(v4 + 36) = v39;
            *(v4 + 132) |= 0x10u;
            if (v40 < v8 && *v40 == 56)
            {
              v16 = v40 + 1;
              *(a2 + 1) = v16;
LABEL_95:
              v83 = 0;
              if (v16 >= v8 || (v41 = *v16, (v41 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
                if (!this)
                {
                  return this;
                }

                v41 = v83;
                v42 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v42 = v16 + 1;
                *(a2 + 1) = v42;
              }

              *(v4 + 64) = v41;
              *(v4 + 132) |= 0x20u;
              if (v42 < v8 && *v42 == 66)
              {
                do
                {
                  *(a2 + 1) = v42 + 1;
LABEL_103:
                  v43 = *(v4 + 52);
                  v44 = *(v4 + 48);
                  if (v44 >= v43)
                  {
                    if (v43 == *(v4 + 56))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40), v43 + 1);
                      v43 = *(v4 + 52);
                    }

                    *(v4 + 52) = v43 + 1;
                    operator new();
                  }

                  v45 = *(v4 + 40);
                  *(v4 + 48) = v44 + 1;
                  v46 = *(v45 + 8 * v44);
                  v83 = 0;
                  v47 = *(a2 + 1);
                  if (v47 >= *(a2 + 2) || *v47 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v83 = *v47;
                    *(a2 + 1) = v47 + 1;
                  }

                  v48 = *(a2 + 14);
                  v49 = *(a2 + 15);
                  *(a2 + 14) = v48 + 1;
                  if (v48 >= v49)
                  {
                    return 0;
                  }

                  v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v83);
                  if (!awd::profile::Metric::MergePartialFromCodedStream(v46, a2, v51) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v50);
                  v52 = *(a2 + 14);
                  v53 = __OFSUB__(v52, 1);
                  v54 = v52 - 1;
                  if (v54 < 0 == v53)
                  {
                    *(a2 + 14) = v54;
                  }

                  v42 = *(a2 + 1);
                  if (v42 >= *(a2 + 2))
                  {
                    goto LABEL_2;
                  }

                  v55 = *v42;
                }

                while (v55 == 66);
                if (v55 == 74)
                {
                  *(a2 + 1) = v42 + 1;
LABEL_121:
                  *(v4 + 132) |= 0x80u;
                  v56 = *(v4 + 72);
                  if (!v56)
                  {
                    operator new();
                  }

                  v83 = 0;
                  v57 = *(a2 + 1);
                  if (v57 >= *(a2 + 2) || *v57 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v83 = *v57;
                    *(a2 + 1) = v57 + 1;
                  }

                  v58 = *(a2 + 14);
                  v59 = *(a2 + 15);
                  *(a2 + 14) = v58 + 1;
                  if (v58 >= v59)
                  {
                    return 0;
                  }

                  v60 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v83);
                  if (!awd::profile::Log::MergePartialFromCodedStream(v56, a2, v61) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v60);
                  v62 = *(a2 + 14);
                  v53 = __OFSUB__(v62, 1);
                  v63 = v62 - 1;
                  if (v63 < 0 == v53)
                  {
                    *(a2 + 14) = v63;
                  }

                  v64 = *(a2 + 1);
                  v14 = *(a2 + 2);
                  if (v64 < v14 && *v64 == 80)
                  {
                    v23 = v64 + 1;
                    *(a2 + 1) = v23;
LABEL_135:
                    if (v23 >= v14 || (v65 = *v23, v65 < 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 68));
                      if (!this)
                      {
                        return this;
                      }

                      v66 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *(v4 + 68) = v65;
                      v66 = v23 + 1;
                      *(a2 + 1) = v66;
                    }

                    *(v4 + 132) |= 0x100u;
                    if (v66 < v14 && *v66 == 88)
                    {
                      v22 = v66 + 1;
                      *(a2 + 1) = v22;
LABEL_143:
                      if (v22 >= v14 || (v67 = *v22, v67 < 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 80));
                        if (!this)
                        {
                          return this;
                        }

                        v68 = *(a2 + 1);
                        v14 = *(a2 + 2);
                      }

                      else
                      {
                        *(v4 + 80) = v67;
                        v68 = v22 + 1;
                        *(a2 + 1) = v68;
                      }

                      *(v4 + 132) |= 0x200u;
                      if (v68 < v14 && *v68 == 104)
                      {
                        v15 = v68 + 1;
                        *(a2 + 1) = v15;
LABEL_151:
                        if (v15 >= v14 || (v69 = *v15, v69 < 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 84));
                          if (!this)
                          {
                            return this;
                          }

                          v70 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *(v4 + 84) = v69;
                          v70 = (v15 + 1);
                          *(a2 + 1) = v70;
                        }

                        *(v4 + 132) |= 0x400u;
                        if (v14 - v70 >= 2 && *v70 == 160 && v70[1] == 1)
                        {
                          v17 = (v70 + 2);
                          *(a2 + 1) = v17;
LABEL_160:
                          if (v17 >= v14 || (v71 = *v17, v71 < 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 112));
                            if (!this)
                            {
                              return this;
                            }

                            v72 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *(v4 + 112) = v71;
                            v72 = (v17 + 1);
                            *(a2 + 1) = v72;
                          }

                          *(v4 + 132) |= 0x800u;
                          if (v14 - v72 >= 2 && *v72 == 130 && v72[1] == 2)
                          {
                            while (1)
                            {
                              *(a2 + 1) = v72 + 2;
LABEL_169:
                              v73 = *(v4 + 100);
                              v74 = *(v4 + 96);
                              if (v74 >= v73)
                              {
                                if (v73 == *(v4 + 104))
                                {
                                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 88), v73 + 1);
                                  v73 = *(v4 + 100);
                                }

                                *(v4 + 100) = v73 + 1;
                                v77 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                                v78 = *(v4 + 88);
                                v79 = *(v4 + 96);
                                *(v4 + 96) = v79 + 1;
                                *(v78 + 8 * v79) = v77;
                              }

                              else
                              {
                                v75 = *(v4 + 88);
                                *(v4 + 96) = v74 + 1;
                                v76 = *(v75 + 8 * v74);
                              }

                              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                              if (!this)
                              {
                                return this;
                              }

                              v72 = *(a2 + 1);
                              v12 = *(a2 + 2);
                              if (v12 - v72 < 2)
                              {
                                goto LABEL_2;
                              }

                              v80 = *v72;
                              if (v80 == 136)
                              {
                                break;
                              }

                              if (v80 != 130 || v72[1] != 2)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v72[1] == 2)
                            {
                              v13 = (v72 + 2);
                              *(a2 + 1) = v13;
LABEL_182:
                              v83 = 0;
                              if (v13 >= v12 || (v81 = *v13, (v81 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
                                if (!this)
                                {
                                  return this;
                                }

                                v81 = v83;
                                v82 = *(a2 + 1);
                                v12 = *(a2 + 2);
                              }

                              else
                              {
                                v82 = (v13 + 1);
                                *(a2 + 1) = v82;
                              }

                              *(v4 + 116) = v81 != 0;
                              v19 = *(v4 + 132) | 0x2000;
                              *(v4 + 132) = v19;
                              if (v12 - v82 >= 2 && *v82 == 146 && v82[1] == 2)
                              {
                                *(a2 + 1) = v82 + 2;
LABEL_191:
                                *(v4 + 132) = v19 | 0x4000;
                                if (*(v4 + 120) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                                {
                                  operator new();
                                }

                                this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                if (!this)
                                {
                                  return this;
                                }

                                if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                {
                                  *(a2 + 8) = 0;
                                  this = 1;
                                  *(a2 + 36) = 1;
                                  return this;
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

        if (v7 != 2)
        {
LABEL_41:
          if (v7 == 4)
          {
            return 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6, a3);
          if ((this & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        this = sub_1001E0570(a2, v4 + 16);
        if (this)
        {
          goto LABEL_76;
        }

        return this;
      case 5u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_103;
        }

        goto LABEL_41;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_121;
        }

        goto LABEL_41;
      case 0xAu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_135;
      case 0xBu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_151;
      case 0x14u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_160;
      case 0x20u:
        if (v7 == 2)
        {
          goto LABEL_169;
        }

        goto LABEL_41;
      case 0x21u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_41;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_182;
      case 0x22u:
        if (v7 != 2)
        {
          goto LABEL_41;
        }

        v19 = *(v4 + 132);
        goto LABEL_191;
      default:
        goto LABEL_41;
    }
  }
}

int *awd::profile::Profile::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[33];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[33];
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[3], a2, a4);
  }

  if (v5[6] >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 2) + 4 * v7++), a2, a4);
    }

    while (v7 < v5[6]);
  }

  v8 = v5[33];
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[8], a2, a4);
    v8 = v5[33];
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[9], a2, a4);
  if ((v5[33] & 0x20) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v5[16], a2, a4);
  }

LABEL_12:
  if (v5[12] >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 5) + 8 * v9++), a2, a4);
    }

    while (v9 < v5[12]);
  }

  v10 = v5[33];
  if ((v10 & 0x80) != 0)
  {
    v14 = *(v5 + 9);
    if (!v14)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v14 = *(awd::profile::Profile::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
    v10 = v5[33];
    if ((v10 & 0x100) == 0)
    {
LABEL_17:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[17], a2, a4);
  v10 = v5[33];
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[20], a2, a4);
  v10 = v5[33];
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[21], a2, a4);
  if ((v5[33] & 0x800) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v5[28], a2, a4);
  }

LABEL_21:
  if (v5[24] >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(v5 + 11) + 8 * v11);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v11;
    }

    while (v11 < v5[24]);
  }

  v13 = v5[33];
  if ((v13 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 116), a2, a4);
    v13 = v5[33];
  }

  if ((v13 & 0x4000) != 0)
  {
    v15 = *(v5 + 15);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::Profile::ByteSize(awd::profile::Profile *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_41;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 33);
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

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 8);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x10) == 0)
    {
LABEL_16:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v12 = *(this + 16);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v13 = 2;
      }

      v4 += v13;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 9);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v14 = *(this + 9);
  if (!v14)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v14 = *(awd::profile::Profile::default_instance_ + 72);
  }

  v15 = awd::profile::Log::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 += v16 + v17 + 1;
  v3 = *(this + 33);
LABEL_41:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_75;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(this + 17);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x200) == 0)
    {
LABEL_44:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_45;
      }

LABEL_55:
      v22 = *(this + 21);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v23 = 2;
      }

      v4 += v23;
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_59;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(this + 20);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v21 = 2;
  }

  v4 += v21;
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_55;
  }

LABEL_45:
  if ((v3 & 0x800) != 0)
  {
LABEL_59:
    v24 = *(this + 28);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 2;
      v3 = *(this + 33);
    }

    else
    {
      v25 = 3;
    }

    v4 += v25;
  }

LABEL_63:
  if ((v3 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v3 & 0x4000) != 0)
  {
    v26 = *(this + 15);
    v27 = *(v26 + 23);
    v28 = v27;
    v29 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v29;
    }

    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
      v27 = *(v26 + 23);
      v29 = *(v26 + 8);
      v28 = *(v26 + 23);
    }

    else
    {
      v31 = 1;
    }

    if (v28 < 0)
    {
      v27 = v29;
    }

    v4 += v31 + v27 + 2;
  }

LABEL_75:
  v32 = *(this + 6);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 2) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
        v32 = *(this + 6);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v37 = *(this + 12);
  v38 = v34 + v4 + v32 + v37;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v40 = awd::profile::Metric::ByteSize(*(*(this + 5) + 8 * v39), a2);
      v41 = v40;
      if (v40 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
      }

      else
      {
        v42 = 1;
      }

      v38 += v41 + v42;
      ++v39;
    }

    while (v39 < *(this + 12));
  }

  v43 = *(this + 24);
  v44 = (v38 + 2 * v43);
  if (v43 >= 1)
  {
    for (i = 0; i < v43; ++i)
    {
      v46 = *(*(this + 11) + 8 * i);
      v47 = *(v46 + 23);
      v48 = v47;
      v49 = *(v46 + 8);
      if ((v47 & 0x80u) == 0)
      {
        v50 = *(v46 + 23);
      }

      else
      {
        v50 = v49;
      }

      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
        v47 = *(v46 + 23);
        v49 = *(v46 + 8);
        v43 = *(this + 24);
        v48 = *(v46 + 23);
      }

      else
      {
        v51 = 1;
      }

      if (v48 < 0)
      {
        v47 = v49;
      }

      v44 = (v51 + v44 + v47);
    }
  }

  *(this + 32) = v44;
  return v44;
}

void awd::profile::Log::MergeFrom(awd::profile::Log *this, const awd::profile::Log *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), *(a2 + 4) + *(this + 4));
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      v6 = *(this + 5);
      v7 = *(this + 4);
      if (v7 >= v6)
      {
        if (v6 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v6 + 1);
          v6 = *(this + 5);
        }

        *(this + 5) = v6 + 1;
        operator new();
      }

      v8 = *(this + 1);
      *(this + 4) = v7 + 1;
      awd::profile::LogParameter::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 4));
  }
}

void sub_1001EE0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::LogParameter::MergeFrom(awd::profile::LogParameter *this, const awd::profile::LogParameter *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 7) |= 2u;
      v8 = *(this + 2);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_1001EE248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::LogParameter::~LogParameter(awd::profile::LogParameter *this)
{
  *this = off_1002B8DE0;
  awd::profile::LogParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::LogParameter::~LogParameter(this);

  operator delete();
}

void awd::profile::LogParameter::SharedDtor(awd::profile::LogParameter *this)
{
  v1 = *(this + 1);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 2);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::LogParameter::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v1 = *(this + 8);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    if ((*(this + 28) & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::profile::LogParameter::MergePartialFromCodedStream(awd::profile::LogParameter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_16;
      }

      *(this + 7) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 18)
      {
        *(a2 + 1) = v9 + 1;
LABEL_19:
        *(this + 7) |= 2u;
        if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if (v7 == 2)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::LogParameter::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v2 = this;
  v3 = *(this + 28);
  if (v3)
  {
    v4 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v3 = *(v2 + 28);
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(v2 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::LogParameter::ByteSize(awd::profile::LogParameter *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 7);
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

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
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
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
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

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  *(this + 6) = v4;
  return v4;
}

void awd::profile::Log::~Log(awd::profile::Log *this)
{
  *this = off_1002B8E58;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Log::~Log(this);

  operator delete();
}

uint64_t awd::profile::Log::MergePartialFromCodedStream(awd::profile::Log *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v7 + 1);
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
        if (!awd::profile::LogParameter::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
        v16 = *(a2 + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(a2 + 14) = v18;
        }

        v19 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::Log::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::Log::ByteSize(awd::profile::Log *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = awd::profile::LogParameter::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void awd::profile::ConfigurationParameter::MergeFrom(awd::profile::ConfigurationParameter *this, const awd::profile::ConfigurationParameter *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(v3 + 7) |= 1u;
      v6 = *(v3 + 1);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      this = std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      *(v3 + 7) |= 2u;
      v7 = *(v3 + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
        v8 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
      }

      awd::profile::TypeVariant::MergeFrom(v7, v8);
    }
  }
}

void sub_1001EED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConfigurationParameter::~ConfigurationParameter(awd::profile::ConfigurationParameter *this)
{
  *this = off_1002B8ED0;
  awd::profile::ConfigurationParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ConfigurationParameter::~ConfigurationParameter(this);

  operator delete();
}

void awd::profile::ConfigurationParameter::SharedDtor(awd::profile::ConfigurationParameter *this)
{
  v2 = *(this + 1);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::ConfigurationParameter::default_instance_ != this)
  {
    v4 = *(this + 2);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t awd::profile::ConfigurationParameter::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if ((*(this + 28) & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t awd::profile::TypeVariant::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 48);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    *(this + 44) = 0;
    v1 = *(this + 72);
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v3 = *(this + 56);
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

    *(this + 64) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::profile::ConfigurationParameter::MergePartialFromCodedStream(awd::profile::ConfigurationParameter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 2)
        {
          goto LABEL_16;
        }

        *(this + 7) |= 1u;
        if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 18)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_19;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_16:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    *(this + 7) |= 2u;
    v10 = *(this + 2);
    if (!v10)
    {
      operator new();
    }

    v19 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v19);
    if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
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

uint64_t awd::profile::ConfigurationParameter::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v8 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t awd::profile::ConfigurationParameter::ByteSize(awd::profile::ConfigurationParameter *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 7);
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

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 2);
    if (!v12)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v12 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
    }

    v13 = awd::profile::TypeVariant::ByteSize(v12, a2);
    v15 = v13;
    if (v13 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
  }

LABEL_21:
  *(this + 6) = v4;
  return v4;
}

void awd::profile::TypeVariant::MergeFrom(awd::profile::TypeVariant *this, const awd::profile::TypeVariant *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 4);
    *(this + 18) |= 1u;
    *(this + 4) = v9;
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 1);
  *(this + 18) |= 2u;
  *(this + 1) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 5);
  *(this + 18) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 3);
  *(this + 18) |= 8u;
  *(this + 3) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 4);
    *(this + 18) |= 0x20u;
    *(this + 4) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v13 = *(a2 + 10);
  *(this + 18) |= 0x10u;
  *(this + 10) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v15 = *(a2 + 6);
  *(this + 18) |= 0x40u;
  v16 = *(this + 6);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(this + 18) |= 0x80u;
    *(this + 44) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 7);
      *(this + 18) |= 0x100u;
      v7 = *(this + 7);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 18);
    }

    if ((v4 & 0x200) != 0)
    {
      v8 = *(a2 + 16);
      *(this + 18) |= 0x200u;
      *(this + 16) = v8;
    }
  }
}

void sub_1001EF648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ComponentConfiguration::MergeFrom(awd::profile::ComponentConfiguration *this, const awd::profile::ComponentConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  sub_1001F75FC((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), *(a2 + 10) + *(this + 10));
  if (*(a2 + 10) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 4) + 8 * v4);
      v6 = *(this + 11);
      v7 = *(this + 10);
      if (v7 >= v6)
      {
        if (v6 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v6 + 1);
          v6 = *(this + 11);
        }

        *(this + 11) = v6 + 1;
        operator new();
      }

      v8 = *(this + 4);
      *(this + 10) = v7 + 1;
      awd::profile::TriggerSource::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64), *(a2 + 18) + *(this + 18));
  if (*(a2 + 18) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 8) + 8 * v9);
      v11 = *(this + 19);
      v12 = *(this + 18);
      if (v12 >= v11)
      {
        if (v11 == *(this + 20))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64), v11 + 1);
          v11 = *(this + 19);
        }

        *(this + 19) = v11 + 1;
        operator new();
      }

      v13 = *(this + 8);
      *(this + 18) = v12 + 1;
      awd::profile::ConfigurationParameter::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 18));
  }

  LOBYTE(v14) = *(a2 + 92);
  if (v14)
  {
    if (*(a2 + 92))
    {
      v15 = *(a2 + 14);
      *(this + 23) |= 1u;
      *(this + 14) = v15;
      v14 = *(a2 + 23);
    }

    if ((v14 & 0x10) != 0)
    {
      v16 = *(a2 + 15);
      *(this + 23) |= 0x10u;
      *(this + 15) = v16;
    }
  }
}

void sub_1001EF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ComponentConfiguration::~ComponentConfiguration(awd::profile::ComponentConfiguration *this)
{
  *this = off_1002B8F48;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 8);
  sub_1000C8650(this + 4);
  sub_1000C8650(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ComponentConfiguration::~ComponentConfiguration(this);

  operator delete();
}

uint64_t awd::profile::ComponentConfiguration::Clear(awd::profile::ComponentConfiguration *this)
{
  if (*(this + 92))
  {
    *(this + 7) = 0;
  }

  sub_1000C85E0(this + 8);
  sub_1000C85E0(this + 32);
  result = sub_1000C85E0(this + 64);
  *(this + 23) = 0;
  return result;
}

uint64_t awd::profile::ComponentConfiguration::MergePartialFromCodedStream(awd::profile::ComponentConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v54 = 0;
        v11 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v11 >= v12 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v13 = v54;
          v14 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v14 = (v11 + 1);
          *(a2 + 1) = v14;
        }

        *(this + 14) = v13;
        *(this + 23) |= 1u;
        if (v14 < v12 && *v14 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v14 + 1;
LABEL_32:
            v16 = *(this + 5);
            v17 = *(this + 4);
            if (v17 >= v16)
            {
              if (v16 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v16 + 1);
                v16 = *(this + 5);
              }

              *(this + 5) = v16 + 1;
              operator new();
            }

            v18 = *(this + 1);
            *(this + 4) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v54 = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
              {
                return 0;
              }
            }

            else
            {
              v54 = *v20;
              *(a2 + 1) = v20 + 1;
            }

            v21 = *(a2 + 14);
            v22 = *(a2 + 15);
            *(a2 + 14) = v21 + 1;
            if (v21 >= v22)
            {
              return 0;
            }

            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
            if (!awd::profile::Profile::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
            v25 = *(a2 + 14);
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v27 < 0 == v26)
            {
              *(a2 + 14) = v27;
            }

            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2))
            {
              break;
            }

            v28 = *v14;
            if (v28 != 18)
            {
              if (v28 == 26)
              {
                while (1)
                {
                  *(a2 + 1) = v14 + 1;
LABEL_50:
                  v29 = *(this + 11);
                  v30 = *(this + 10);
                  if (v30 >= v29)
                  {
                    if (v29 == *(this + 12))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v29 + 1);
                      v29 = *(this + 11);
                    }

                    *(this + 11) = v29 + 1;
                    operator new();
                  }

                  v31 = *(this + 4);
                  *(this + 10) = v30 + 1;
                  v32 = *(v31 + 8 * v30);
                  v54 = 0;
                  v33 = *(a2 + 1);
                  if (v33 >= *(a2 + 2) || *v33 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v54 = *v33;
                    *(a2 + 1) = v33 + 1;
                  }

                  v34 = *(a2 + 14);
                  v35 = *(a2 + 15);
                  *(a2 + 14) = v34 + 1;
                  if (v34 >= v35)
                  {
                    return 0;
                  }

                  v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
                  if (!awd::profile::TriggerSource::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
                  v38 = *(a2 + 14);
                  v26 = __OFSUB__(v38, 1);
                  v39 = v38 - 1;
                  if (v39 < 0 == v26)
                  {
                    *(a2 + 14) = v39;
                  }

                  v14 = *(a2 + 1);
                  if (v14 >= *(a2 + 2))
                  {
                    break;
                  }

                  v40 = *v14;
                  if (v40 != 26)
                  {
                    if (v40 != 34)
                    {
                      goto LABEL_1;
                    }

                    goto LABEL_67;
                  }
                }
              }

              goto LABEL_1;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_50;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v41 = *(this + 19);
        v42 = *(this + 18);
        if (v42 >= v41)
        {
          if (v41 == *(this + 20))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64), v41 + 1);
            v41 = *(this + 19);
          }

          *(this + 19) = v41 + 1;
          operator new();
        }

        v43 = *(this + 8);
        *(this + 18) = v42 + 1;
        v44 = *(v43 + 8 * v42);
        v54 = 0;
        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
          {
            return 0;
          }
        }

        else
        {
          v54 = *v45;
          *(a2 + 1) = v45 + 1;
        }

        v46 = *(a2 + 14);
        v47 = *(a2 + 15);
        *(a2 + 14) = v46 + 1;
        if (v46 >= v47)
        {
          return 0;
        }

        v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v54);
        if (!awd::profile::ConfigurationParameter::MergePartialFromCodedStream(v44, a2, v49) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v48);
        v50 = *(a2 + 14);
        v26 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v26)
        {
          *(a2 + 14) = v51;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v14 >= v10 || *v14 != 34)
        {
          break;
        }

LABEL_67:
        *(a2 + 1) = v14 + 1;
      }

      if (v10 - v14 >= 2 && *v14 == 160 && v14[1] == 1)
      {
        v9 = (v14 + 2);
        *(a2 + 1) = v9;
LABEL_88:
        if (v9 >= v10 || (v52 = *v9, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v52;
          v53 = v9 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 23) |= 0x10u;
        if (v53 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 20 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_88;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::ComponentConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 92))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 56), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 64) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if ((*(v5 + 92) & 0x10) != 0)
  {
    v9 = *(v5 + 60);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v9, a2, a4);
  }

  return this;
}

uint64_t awd::profile::ComponentConfiguration::ByteSize(awd::profile::ComponentConfiguration *this, unint64_t a2)
{
  v3 = *(this + 92);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if (*(this + 92))
  {
    v5 = *(this + 14);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      if ((*(this + 23) & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 92) & 0x10) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(this + 15);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 2;
  }

  else
  {
    v7 = 3;
  }

  v4 += v7;
LABEL_17:
  v8 = *(this + 4);
  v9 = v8 + v4;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = awd::profile::Profile::ByteSize(*(*(this + 1) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 += v12 + v13;
      ++v10;
    }

    while (v10 < *(this + 4));
  }

  v14 = *(this + 10);
  v15 = v14 + v9;
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = awd::profile::TriggerSource::ByteSize(*(*(this + 4) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      }

      else
      {
        v19 = 1;
      }

      v15 += v18 + v19;
      ++v16;
    }

    while (v16 < *(this + 10));
  }

  v20 = *(this + 18);
  v21 = (v20 + v15);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = awd::profile::ConfigurationParameter::ByteSize(*(*(this + 8) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(this + 18));
  }

  *(this + 22) = v21;
  return v21;
}

void awd::profile::TimerSpec::MergeFrom(awd::profile::TimerSpec *this, const awd::profile::TimerSpec *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_1001F0470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TimerSpec::~TimerSpec(awd::profile::TimerSpec *this)
{
  *this = off_1002B8FC0;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TimerSpec::~TimerSpec(this);

  operator delete();
}

uint64_t awd::profile::TimerSpec::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::profile::TimerSpec::MergePartialFromCodedStream(awd::profile::TimerSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 2)
      {
        break;
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

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::TimerSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t awd::profile::TimerSpec::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void awd::profile::TypeVariant::~TypeVariant(awd::profile::TypeVariant *this)
{
  *this = off_1002B9038;
  awd::profile::TypeVariant::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TypeVariant::~TypeVariant(this);

  operator delete();
}

void awd::profile::TypeVariant::SharedDtor(awd::profile::TypeVariant *this)
{
  v1 = *(this + 6);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 7);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::TypeVariant::MergePartialFromCodedStream(awd::profile::TypeVariant *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
                goto LABEL_40;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_49;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_40;
            }

            v36[0] = 0;
            v14 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v14 >= v11 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
              if (!result)
              {
                return result;
              }

              v15 = v36[0];
              v16 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 4) = v15;
            *(this + 18) |= 1u;
            if (v16 < v11 && *v16 == 16)
            {
              v12 = v16 + 1;
              *(a2 + 1) = v12;
LABEL_49:
              *v36 = 0;
              if (v12 >= v11 || (v23 = *v12, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v36);
                if (!result)
                {
                  return result;
                }

                v23 = *v36;
                v24 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v24 = v12 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 1) = v23;
              *(this + 18) |= 2u;
              if (v24 < v11 && *v24 == 24)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
LABEL_57:
                if (v17 >= v11 || (v25 = *v17, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v25;
                  v26 = v17 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 18) |= 4u;
                if (v26 < v11 && *v26 == 32)
                {
                  v20 = v26 + 1;
                  *(a2 + 1) = v20;
                  goto LABEL_65;
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
                goto LABEL_40;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_57;
            }

            if (v7 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v20 = *(a2 + 1);
              v11 = *(a2 + 2);
LABEL_65:
              if (v20 >= v11 || (v27 = *v20, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v27;
                v28 = v20 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 18) |= 8u;
              if (v28 < v11 && *v28 == 45)
              {
                *(a2 + 1) = v28 + 1;
LABEL_73:
                v36[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v36) & 1) == 0)
                {
                  return 0;
                }

                *(this + 10) = v36[0];
                *(this + 18) |= 0x10u;
                v29 = *(a2 + 1);
                if (v29 < *(a2 + 2) && *v29 == 49)
                {
                  *(a2 + 1) = v29 + 1;
LABEL_77:
                  *v36 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v36) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 4) = *v36;
                  v13 = *(this + 18) | 0x20;
                  *(this + 18) = v13;
                  v30 = *(a2 + 1);
                  if (v30 < *(a2 + 2) && *v30 == 58)
                  {
                    *(a2 + 1) = v30 + 1;
                    goto LABEL_81;
                  }
                }
              }
            }

            else
            {
              if (v7 == 5 && v8 == 5)
              {
                goto LABEL_73;
              }

LABEL_40:
              if (v8 == 4)
              {
                return 1;
              }

              if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        if (TagFallback >> 3 > 7)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 1)
          {
            goto LABEL_77;
          }

          goto LABEL_40;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_40;
        }

        v13 = *(this + 18);
LABEL_81:
        *(this + 18) = v13 | 0x40;
        if (*(this + 6) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v31 < v18 && *v31 == 64)
        {
          v19 = v31 + 1;
          *(a2 + 1) = v19;
LABEL_87:
          v36[0] = 0;
          if (v19 >= v18 || (v32 = *v19, (v32 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
            if (!result)
            {
              return result;
            }

            v32 = v36[0];
            v33 = *(a2 + 1);
            v18 = *(a2 + 2);
          }

          else
          {
            v33 = v19 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 44) = v32 != 0;
          v21 = *(this + 18) | 0x80;
          *(this + 18) = v21;
          if (v33 < v18 && *v33 == 74)
          {
            *(a2 + 1) = v33 + 1;
            goto LABEL_95;
          }
        }
      }

      if (v7 == 8)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(a2 + 1);
          v18 = *(a2 + 2);
          goto LABEL_87;
        }

        goto LABEL_40;
      }

      if (v7 != 9)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_40;
      }

      v21 = *(this + 18);
LABEL_95:
      *(this + 18) = v21 | 0x100;
      if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v34 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v34 < v9 && *v34 == 80)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
        goto LABEL_101;
      }
    }

    if (v7 != 10 || (TagFallback & 7) != 0)
    {
      goto LABEL_40;
    }

    v10 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_101:
    v36[0] = 0;
    if (v10 >= v9 || (v35 = *v10, v35 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
      if (!result)
      {
        return result;
      }

      if (!v36[0])
      {
LABEL_104:
        *(this + 18) |= 0x200u;
        *(this + 16) = 0;
      }
    }

    else
    {
      *(a2 + 1) = v10 + 1;
      if (!v35)
      {
        goto LABEL_104;
      }
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::profile::TypeVariant::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v8 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 72) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v9 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, v9, a2, a4);
}

uint64_t awd::profile::TypeVariant::ByteSize(awd::profile::TypeVariant *this, unint64_t a2)
{
  v3 = *(this + 18);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 18);
    goto LABEL_12;
  }

  v6 = *(this + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v6 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 18);
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
    v15 = *(this + 5);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v3 & 8) != 0)
  {
LABEL_14:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 18);
  }

LABEL_15:
  v7 = v4 + 5;
  if ((v3 & 0x10) == 0)
  {
    v7 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v8 = v7 + 9;
  }

  else
  {
    v8 = v7;
  }

  if ((v3 & 0x40) != 0)
  {
    v9 = *(this + 6);
    v10 = *(v9 + 23);
    v11 = v10;
    v12 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = v12;
    }

    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v10 = *(v9 + 23);
      v12 = *(v9 + 8);
      v3 = *(this + 18);
      v11 = *(v9 + 23);
    }

    else
    {
      v14 = 1;
    }

    if (v11 < 0)
    {
      v10 = v12;
    }

    v8 += v14 + v10 + 1;
  }

  v5 = ((v3 >> 6) & 2) + v8;
LABEL_33:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v17 = *(this + 7);
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
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
        v18 = *(v17 + 23);
        v20 = *(v17 + 8);
        v3 = *(this + 18);
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

      v5 = (v5 + v22 + v18 + 1);
    }

    if ((v3 & 0x200) != 0)
    {
      v23 = *(this + 16);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 11;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      }

      else
      {
        v24 = 2;
      }

      v5 = (v24 + v5);
    }
  }

  *(this + 17) = v5;
  return v5;
}

void awd::profile::Condition::MergeFrom(awd::profile::Condition *this, const awd::profile::Condition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_37;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 17);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 17);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = *(a2 + 6);
  *(this + 17) |= 4u;
  *(this + 6) = v7;
  v4 = *(a2 + 17);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 28);
  *(this + 17) |= 8u;
  *(this + 28) = v8;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    *(this + 17) |= 0x20u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v12 = *(awd::profile::Condition::default_instance_ + 32);
    }

    awd::profile::TypeVariant::MergeFrom(v11, v12);
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(this + 17) |= 0x10u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v10 = *(awd::profile::Condition::default_instance_ + 16);
  }

  awd::profile::TypeVariant::MergeFrom(v9, v10);
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  *(this + 17) |= 0x40u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v14 = *(awd::profile::Condition::default_instance_ + 40);
  }

  awd::profile::TypeVariant::MergeFrom(v13, v14);
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    *(this + 17) |= 0x80u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v16 = *(awd::profile::Condition::default_instance_ + 48);
    }

    awd::profile::TypeVariant::MergeFrom(v15, v16);
    v4 = *(a2 + 17);
  }

LABEL_37:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v17 = *(a2 + 7);
      *(this + 17) |= 0x100u;
      v18 = *(this + 7);
      if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v18, v17);
      v4 = *(a2 + 17);
    }

    if ((v4 & 0x200) != 0)
    {
      v19 = *(a2 + 29);
      *(this + 17) |= 0x200u;
      *(this + 29) = v19;
    }
  }
}

void sub_1001F166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Condition::~Condition(awd::profile::Condition *this)
{
  *this = off_1002B90B0;
  awd::profile::Condition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Condition::~Condition(this);

  operator delete();
}

void awd::profile::Condition::SharedDtor(awd::profile::Condition *this)
{
  v2 = *(this + 7);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::Condition::default_instance_ != this)
  {
    v4 = *(this + 2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t awd::profile::Condition::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    *(this + 28) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 = *(v1 + 56);
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

    *(v1 + 29) = 0;
  }

  *(v1 + 68) = 0;
  return this;
}

uint64_t awd::profile::Condition::MergePartialFromCodedStream(awd::profile::Condition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (TagFallback >> 3 > 0x11)
            {
              if (TagFallback >> 3 <= 0x13)
              {
                if (v7 == 18)
                {
                  if (v8 == 2)
                  {
                    goto LABEL_97;
                  }
                }

                else if (v7 == 19 && (TagFallback & 7) == 0)
                {
                  v14 = *(a2 + 1);
                  v13 = *(a2 + 2);
                  goto LABEL_104;
                }
              }

              else if (v7 == 20)
              {
                if (v8 == 2)
                {
                  v19 = *(this + 17);
                  goto LABEL_113;
                }
              }

              else if (v7 == 32)
              {
                if (v8 == 2)
                {
                  goto LABEL_128;
                }
              }

              else if (v7 == 33 && (TagFallback & 7) == 0)
              {
                v10 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_143;
              }

              goto LABEL_40;
            }

            if (TagFallback >> 3 > 2)
            {
              break;
            }

            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_40;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_48;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_40;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v15 >= v11 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v16;
              v17 = v15 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 17) |= 1u;
            if (v17 < v11 && *v17 == 16)
            {
              v12 = v17 + 1;
              *(a2 + 1) = v12;
LABEL_48:
              if (v12 >= v11 || (v21 = *v12, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v21;
                v22 = v12 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 17) |= 2u;
              if (v22 < v11 && *v22 == 24)
              {
                v18 = v22 + 1;
                *(a2 + 1) = v18;
                goto LABEL_56;
              }
            }
          }

          if (v7 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_56:
          v67 = 0;
          if (v18 >= v11 || (v23 = *v18, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67);
            if (!result)
            {
              return result;
            }

            if (v67)
            {
              goto LABEL_60;
            }
          }

          else
          {
            *(a2 + 1) = v18 + 1;
            if (v23)
            {
              goto LABEL_60;
            }
          }

          *(this + 17) |= 4u;
          *(this + 6) = 0;
LABEL_60:
          v24 = *(a2 + 1);
          if (*(a2 + 4) - v24 >= 2 && *v24 == 130 && v24[1] == 1)
          {
            *(a2 + 1) = v24 + 2;
            goto LABEL_64;
          }
        }

        if (v7 == 16)
        {
          break;
        }

        if (v7 == 17 && v8 == 2)
        {
          goto LABEL_82;
        }

LABEL_40:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 != 2)
      {
        goto LABEL_40;
      }

LABEL_64:
      *(this + 17) |= 0x20u;
      v25 = *(this + 4);
      if (!v25)
      {
        operator new();
      }

      v67 = 0;
      v26 = *(a2 + 1);
      if (v26 >= *(a2 + 2) || *v26 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
        {
          return 0;
        }
      }

      else
      {
        v67 = *v26;
        *(a2 + 1) = v26 + 1;
      }

      v27 = *(a2 + 14);
      v28 = *(a2 + 15);
      *(a2 + 14) = v27 + 1;
      if (v27 >= v28)
      {
        return 0;
      }

      v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
      if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
      v31 = *(a2 + 14);
      v32 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v33 < 0 == v32)
      {
        *(a2 + 14) = v33;
      }

      v34 = *(a2 + 1);
      if (*(a2 + 4) - v34 > 1 && *v34 == 138 && v34[1] == 1)
      {
        *(a2 + 1) = v34 + 2;
LABEL_82:
        *(this + 17) |= 0x40u;
        v35 = *(this + 5);
        if (!v35)
        {
          operator new();
        }

        v67 = 0;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
          {
            return 0;
          }
        }

        else
        {
          v67 = *v36;
          *(a2 + 1) = v36 + 1;
        }

        v37 = *(a2 + 14);
        v38 = *(a2 + 15);
        *(a2 + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
        if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v35, a2, v40) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v39);
        v41 = *(a2 + 14);
        v32 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v32)
        {
          *(a2 + 14) = v42;
        }

        v43 = *(a2 + 1);
        if (*(a2 + 4) - v43 > 1 && *v43 == 146 && v43[1] == 1)
        {
          *(a2 + 1) = v43 + 2;
LABEL_97:
          *(this + 17) |= 0x100u;
          if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v13 - v44 >= 2 && *v44 == 152 && v44[1] == 1)
          {
            v14 = (v44 + 2);
            *(a2 + 1) = v14;
LABEL_104:
            v67 = 0;
            if (v14 >= v13 || (v45 = *v14, (v45 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67);
              if (!result)
              {
                return result;
              }

              v45 = v67;
              v46 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              v46 = (v14 + 1);
              *(a2 + 1) = v46;
            }

            *(this + 28) = v45 != 0;
            v19 = *(this + 17) | 8;
            *(this + 17) = v19;
            if (v13 - v46 >= 2 && *v46 == 162 && v46[1] == 1)
            {
              *(a2 + 1) = v46 + 2;
LABEL_113:
              *(this + 17) = v19 | 0x10;
              v47 = *(this + 2);
              if (!v47)
              {
                operator new();
              }

              v67 = 0;
              v48 = *(a2 + 1);
              if (v48 >= *(a2 + 2) || *v48 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
                {
                  return 0;
                }
              }

              else
              {
                v67 = *v48;
                *(a2 + 1) = v48 + 1;
              }

              v49 = *(a2 + 14);
              v50 = *(a2 + 15);
              *(a2 + 14) = v49 + 1;
              if (v49 >= v50)
              {
                return 0;
              }

              v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
              if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v47, a2, v52) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
              v53 = *(a2 + 14);
              v32 = __OFSUB__(v53, 1);
              v54 = v53 - 1;
              if (v54 < 0 == v32)
              {
                *(a2 + 14) = v54;
              }

              v55 = *(a2 + 1);
              if (*(a2 + 4) - v55 > 1 && *v55 == 130 && v55[1] == 2)
              {
                break;
              }
            }
          }
        }
      }
    }

    *(a2 + 1) = v55 + 2;
LABEL_128:
    *(this + 17) |= 0x80u;
    v56 = *(this + 6);
    if (!v56)
    {
      operator new();
    }

    v67 = 0;
    v57 = *(a2 + 1);
    if (v57 >= *(a2 + 2) || *v57 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67))
      {
        return 0;
      }
    }

    else
    {
      v67 = *v57;
      *(a2 + 1) = v57 + 1;
    }

    v58 = *(a2 + 14);
    v59 = *(a2 + 15);
    *(a2 + 14) = v58 + 1;
    if (v58 >= v59)
    {
      return 0;
    }

    v60 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v67);
    if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v56, a2, v61) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v60);
    v62 = *(a2 + 14);
    v32 = __OFSUB__(v62, 1);
    v63 = v62 - 1;
    if (v63 < 0 == v32)
    {
      *(a2 + 14) = v63;
    }

    v64 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v9 - v64 > 1 && *v64 == 136 && v64[1] == 2)
    {
      v10 = (v64 + 2);
      *(a2 + 1) = v10;
LABEL_143:
      v67 = 0;
      if (v10 >= v9 || (v65 = *v10, (v65 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v67);
        if (!result)
        {
          return result;
        }

        v65 = v67;
        v66 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v66 = v10 + 1;
        *(a2 + 1) = v66;
      }

      *(this + 29) = v65 != 0;
      *(this + 17) |= 0x200u;
      if (v66 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

int *awd::profile::Condition::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[17];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[17];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[17];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[6], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v7 = *(v5 + 4);
  if (!v7)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v7 = *(awd::profile::Condition::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v7, a2, a4);
  v6 = v5[17];
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v8 = *(v5 + 5);
  if (!v8)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v8 = *(awd::profile::Condition::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v8, a2, a4);
  v6 = v5[17];
  if ((v6 & 0x100) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(v5 + 7);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[17];
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 28), a2, a4);
  v6 = v5[17];
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 2);
  if (!v10)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v10 = *(awd::profile::Condition::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v10, a2, a4);
  v6 = v5[17];
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 6);
  if (!v11)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v11 = *(awd::profile::Condition::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v11, a2, a4);
  if ((v5[17] & 0x200) != 0)
  {
LABEL_29:
    v12 = *(v5 + 29);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, v12, a2, a4);
  }

  return this;
}

uint64_t awd::profile::Condition::ByteSize(awd::profile::Condition *this, unint64_t a2)
{
  v3 = *(this + 17);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_53;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 17);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LODWORD(v4) = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v7 = 2;
  }

  LODWORD(v4) = v7 + v4;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 6);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v9 = 2;
    }

    LODWORD(v4) = v9 + v4;
  }

  if ((v3 & 8) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v10 = *(awd::profile::Condition::default_instance_ + 16);
    }

    v11 = awd::profile::TypeVariant::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 2);
    v3 = *(this + 17);
    if ((v3 & 0x20) == 0)
    {
LABEL_26:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(this + 4);
  if (!v14)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v14 = *(awd::profile::Condition::default_instance_ + 32);
  }

  v15 = awd::profile::TypeVariant::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 2);
  v3 = *(this + 17);
  if ((v3 & 0x40) == 0)
  {
LABEL_27:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_41:
  v18 = *(this + 5);
  if (!v18)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v18 = *(awd::profile::Condition::default_instance_ + 40);
  }

  v19 = awd::profile::TypeVariant::ByteSize(v18, a2);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 2);
  v3 = *(this + 17);
  if ((v3 & 0x80) != 0)
  {
LABEL_47:
    v22 = *(this + 6);
    if (!v22)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v22 = *(awd::profile::Condition::default_instance_ + 48);
    }

    v23 = awd::profile::TypeVariant::ByteSize(v22, a2);
    v24 = v23;
    if (v23 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
    }

    else
    {
      v25 = 1;
    }

    v4 = (v4 + v24 + v25 + 2);
    v3 = *(this + 17);
  }

LABEL_53:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v26 = *(this + 7);
      v27 = *(v26 + 23);
      v28 = v27;
      v29 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = v29;
      }

      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
        v27 = *(v26 + 23);
        v29 = *(v26 + 8);
        v3 = *(this + 17);
        v28 = *(v26 + 23);
      }

      else
      {
        v31 = 1;
      }

      if (v28 < 0)
      {
        v27 = v29;
      }

      LODWORD(v4) = v4 + v31 + v27 + 2;
    }

    if ((v3 & 0x200) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }
  }

  *(this + 16) = v4;
  return v4;
}

void awd::profile::ConditionClause::MergeFrom(awd::profile::ConditionClause *this, const awd::profile::ConditionClause *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_1001F7734((this + 8), a2 + 8);
}

void sub_1001F276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConditionClause::~ConditionClause(awd::profile::ConditionClause *this)
{
  *this = off_1002B9128;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ConditionClause::~ConditionClause(this);

  operator delete();
}

uint64_t awd::profile::ConditionClause::Clear(awd::profile::ConditionClause *this)
{
  result = sub_1000C85E0(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t awd::profile::ConditionClause::MergePartialFromCodedStream(awd::profile::ConditionClause *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v7 + 1);
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
        if (!awd::profile::Condition::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
        v16 = *(a2 + 14);
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v18 < 0 == v17)
        {
          *(a2 + 14) = v18;
        }

        v19 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::ConditionClause::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::ConditionClause::ByteSize(awd::profile::ConditionClause *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = awd::profile::Condition::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void awd::profile::TriggerSource::MergeFrom(awd::profile::TriggerSource *this, const awd::profile::TriggerSource *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), *(a2 + 10) + *(this + 10));
  if (*(a2 + 10) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 4) + 8 * v4);
      v6 = *(this + 11);
      v7 = *(this + 10);
      if (v7 >= v6)
      {
        if (v6 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v6 + 1);
          v6 = *(this + 11);
        }

        *(this + 11) = v6 + 1;
        operator new();
      }

      v8 = *(this + 4);
      *(this + 10) = v7 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  LOBYTE(v9) = *(a2 + 68);
  if (v9)
  {
    if (*(a2 + 68))
    {
      v10 = *(a2 + 4);
      *(this + 17) |= 1u;
      *(this + 4) = v10;
      v9 = *(a2 + 17);
      if ((v9 & 2) == 0)
      {
LABEL_14:
        if ((v9 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(a2 + 1);
    *(this + 17) |= 2u;
    *(this + 1) = v11;
    v9 = *(a2 + 17);
    if ((v9 & 4) == 0)
    {
LABEL_15:
      if ((v9 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v12;
    v9 = *(a2 + 17);
    if ((v9 & 8) == 0)
    {
LABEL_16:
      if ((v9 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = *(a2 + 3);
    *(this + 17) |= 8u;
    *(this + 3) = v13;
    if ((*(a2 + 17) & 0x20) == 0)
    {
      return;
    }

LABEL_22:
    v14 = *(a2 + 7);
    *(this + 17) |= 0x20u;
    v15 = *(this + 7);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
  }
}

void sub_1001F2E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerSource::~TriggerSource(awd::profile::TriggerSource *this)
{
  *this = off_1002B91A0;
  awd::profile::TriggerSource::SharedDtor(this);
  sub_1000C8650(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TriggerSource::~TriggerSource(this);

  operator delete();
}

void awd::profile::TriggerSource::SharedDtor(awd::profile::TriggerSource *this)
{
  v1 = *(this + 7);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::TriggerSource::Clear(awd::profile::TriggerSource *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(this + 7);
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
  }

  result = sub_1000C85E0(this + 32);
  *(this + 17) = 0;
  return result;
}

uint64_t awd::profile::TriggerSource::MergePartialFromCodedStream(awd::profile::TriggerSource *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
LABEL_1:
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v11 >= v9 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 17) |= 2u;
        if (v13 < v9 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_34;
        }
      }

      else if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_34:
        if (v15 >= v9 || (v17 = *v15, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v17;
          v18 = v15 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 17) |= 1u;
        if (v18 < v9 && *v18 == 24)
        {
          v10 = v18 + 1;
          *(a2 + 1) = v10;
LABEL_42:
          if (v10 >= v9 || (v19 = *v10, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v19;
            v20 = v10 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 17) |= 4u;
          if (v20 < v9 && *v20 == 32)
          {
            v14 = v20 + 1;
            *(a2 + 1) = v14;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v7 == 3 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_42;
        }

LABEL_26:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 4)
    {
      if (v7 == 16)
      {
        if (v8 == 2)
        {
          goto LABEL_59;
        }
      }

      else if (v7 == 32 && v8 == 2)
      {
        goto LABEL_78;
      }

      goto LABEL_26;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_26;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_50:
    if (v14 >= v9 || (v21 = *v14, v21 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
      if (!result)
      {
        return result;
      }

      v22 = *(a2 + 1);
      v9 = *(a2 + 2);
    }

    else
    {
      *(this + 3) = v21;
      v22 = (v14 + 1);
      *(a2 + 1) = v22;
    }

    *(this + 17) |= 8u;
  }

  while (v9 - v22 < 2 || *v22 != 130 || v22[1] != 1);
  while (1)
  {
    *(a2 + 1) = v22 + 2;
LABEL_59:
    v23 = *(this + 11);
    v24 = *(this + 10);
    if (v24 >= v23)
    {
      if (v23 == *(this + 12))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32), v23 + 1);
        v23 = *(this + 11);
      }

      *(this + 11) = v23 + 1;
      operator new();
    }

    v25 = *(this + 4);
    *(this + 10) = v24 + 1;
    v26 = *(v25 + 8 * v24);
    v36 = 0;
    v27 = *(a2 + 1);
    if (v27 >= *(a2 + 2) || *v27 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v27;
      *(a2 + 1) = v27 + 1;
    }

    v28 = *(a2 + 14);
    v29 = *(a2 + 15);
    *(a2 + 14) = v28 + 1;
    if (v28 >= v29)
    {
      return 0;
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v36);
    if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v26, a2, v31) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v30);
    v32 = *(a2 + 14);
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v34 < 0 == v33)
    {
      *(a2 + 14) = v34;
    }

    v22 = *(a2 + 1);
    if (*(a2 + 4) - v22 <= 1 || *v22 != 130)
    {
      goto LABEL_1;
    }

    v35 = v22[1];
    if (v35 != 1)
    {
      if (v35 == 2)
      {
        *(a2 + 1) = v22 + 2;
LABEL_78:
        *(this + 17) |= 0x20u;
        if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

      goto LABEL_1;
    }
  }
}

uint64_t awd::profile::TriggerSource::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if ((*(v5 + 68) & 0x20) != 0)
  {
    v8 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::TriggerSource::ByteSize(awd::profile::TriggerSource *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((*(this + 68) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 17);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 17);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
  if ((*(this + 17) & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v8 = *(this + 7);
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

  v4 += v13 + v9 + 2;
LABEL_29:
  v14 = *(this + 10);
  v15 = (v4 + 2 * v14);
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = awd::profile::ConditionClause::ByteSize(*(*(this + 4) + 8 * v16), a2);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      }

      else
      {
        v19 = 1;
      }

      v15 = (v18 + v15 + v19);
      ++v16;
    }

    while (v16 < *(this + 10));
  }

  *(this + 16) = v15;
  return v15;
}

void awd::profile::TriggerProcessingRule::MergeFrom(awd::profile::TriggerProcessingRule *this, const awd::profile::TriggerProcessingRule *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_10001C3A0(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), *(a2 + 8) + *(this + 8));
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v7 + 1);
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        operator new();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), *(a2 + 14) + *(this + 14));
  if (*(a2 + 14) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(a2 + 6) + 8 * v10);
      v12 = *(this + 15);
      v13 = *(this + 14);
      if (v13 >= v12)
      {
        if (v12 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v12 + 1);
          v12 = *(this + 15);
        }

        *(this + 15) = v12 + 1;
        operator new();
      }

      v14 = *(this + 6);
      *(this + 14) = v13 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v14 + 8 * v13), v11);
      ++v10;
    }

    while (v10 < *(a2 + 14));
  }

  if (*(a2 + 80))
  {
    v15 = *(a2 + 18);
    *(this + 20) |= 1u;
    *(this + 18) = v15;
  }
}

void sub_1001F3A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerProcessingRule::~TriggerProcessingRule(awd::profile::TriggerProcessingRule *this)
{
  *this = off_1002B9218;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  sub_1000C8650(this + 6);
  sub_1000C8650(this + 3);
  if (*(this + 1))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TriggerProcessingRule::~TriggerProcessingRule(this);

  operator delete();
}

uint64_t awd::profile::TriggerProcessingRule::Clear(awd::profile::TriggerProcessingRule *this)
{
  if (*(this + 80))
  {
    *(this + 18) = 0;
  }

  *(this + 4) = 0;
  sub_1000C85E0(this + 24);
  result = sub_1000C85E0(this + 48);
  *(this + 20) = 0;
  return result;
}

uint64_t awd::profile::TriggerProcessingRule::MergePartialFromCodedStream(awd::profile::TriggerProcessingRule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            if (v8 == 2)
            {
              result = sub_1001E0570(a2, this + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_66;
            }

            goto LABEL_21;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
LABEL_50:
          v50 = 0;
          if (v15 >= v14 || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v15;
            *(a2 + 1) = v15 + 1;
          }

          v29 = *(this + 4);
          if (v29 == *(this + 5))
          {
            sub_10001C3A0(this + 1, v29 + 1);
            v29 = *(this + 4);
          }

          v30 = v50;
          v31 = *(this + 1);
          *(this + 4) = v29 + 1;
          *(v31 + 4 * v29) = v30;
          v32 = *(this + 5) - *(this + 4);
          if (v32 >= 1)
          {
            v33 = v32 + 1;
            do
            {
              v34 = *(a2 + 1);
              v35 = *(a2 + 2);
              if (v34 >= v35 || *v34 != 24)
              {
                break;
              }

              *(a2 + 1) = v34 + 1;
              if ((v34 + 1) >= v35 || (v36 = v34[1], (v36 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                {
                  return 0;
                }

                v36 = v50;
                v31 = *(this + 1);
              }

              else
              {
                v50 = v34[1];
                *(a2 + 1) = v34 + 2;
              }

              v37 = *(this + 4);
              *(this + 4) = v37 + 1;
              *(v31 + 4 * v37) = v36;
              --v33;
            }

            while (v33 > 1);
          }

LABEL_66:
          v12 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v12 < v14)
          {
            v28 = *v12;
            if (v28 == 34)
            {
              goto LABEL_68;
            }

            goto LABEL_48;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (2)
          {
            v38 = *(this + 9);
            v39 = *(this + 8);
            if (v39 >= v38)
            {
              if (v38 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v38 + 1);
                v38 = *(this + 9);
              }

              *(this + 9) = v38 + 1;
              operator new();
            }

            v40 = *(this + 3);
            *(this + 8) = v39 + 1;
            v41 = *(v40 + 8 * v39);
            v52 = 0;
            v42 = *(a2 + 1);
            if (v42 >= *(a2 + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
              {
                return 0;
              }
            }

            else
            {
              v52 = *v42;
              *(a2 + 1) = v42 + 1;
            }

            v43 = *(a2 + 14);
            v44 = *(a2 + 15);
            *(a2 + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v52);
            if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v41, a2, v46) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v45);
            v47 = *(a2 + 14);
            v26 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v26)
            {
              *(a2 + 14) = v48;
            }

            v12 = *(a2 + 1);
            v49 = *(a2 + 2);
            if (v12 < v49 && *v12 == 34)
            {
LABEL_68:
              *(a2 + 1) = v12 + 1;
              continue;
            }

            break;
          }

          if (v12 == v49 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 18) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 20) |= 1u;
      if (v12 < v9 && *v12 == 18)
      {
        while (2)
        {
          *(a2 + 1) = v12 + 1;
LABEL_32:
          v16 = *(this + 15);
          v17 = *(this + 14);
          if (v17 >= v16)
          {
            if (v16 == *(this + 16))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v16 + 1);
              v16 = *(this + 15);
            }

            *(this + 15) = v16 + 1;
            operator new();
          }

          v18 = *(this + 6);
          *(this + 14) = v17 + 1;
          v19 = *(v18 + 8 * v17);
          v51 = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
            {
              return 0;
            }
          }

          else
          {
            v51 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v21 = *(a2 + 14);
          v22 = *(a2 + 15);
          *(a2 + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v51);
          if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
          v25 = *(a2 + 14);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v27 < 0 == v26)
          {
            *(a2 + 14) = v27;
          }

          v12 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v12 < v14)
          {
            v28 = *v12;
            if (v28 == 18)
            {
              continue;
            }

LABEL_48:
            if (v28 == 24)
            {
              v15 = v12 + 1;
              *(a2 + 1) = v15;
              goto LABEL_50;
            }
          }

          break;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::TriggerProcessingRule::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 80))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 72), a2, a4);
  }

  if (*(v5 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 48) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 56));
  }

  if (*(v5 + 16) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 8) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 16));
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::profile::TriggerProcessingRule::ByteSize(awd::profile::TriggerProcessingRule *this, unint64_t a2)
{
  if (*(this + 80))
  {
    v4 = *(this + 18);
    if (v4 >= 0x80)
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

  v5 = *(this + 4);
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(this + 1) + 4 * v6);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
        v5 = *(this + 4);
      }

      else
      {
        v9 = 1;
      }

      v7 += v9;
      ++v6;
    }

    while (v6 < v5);
  }

  v10 = *(this + 8);
  v11 = v7 + v3 + v5 + v10;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = awd::profile::ConditionClause::ByteSize(*(*(this + 3) + 8 * v12), a2);
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15;
      ++v12;
    }

    while (v12 < *(this + 8));
  }

  v16 = *(this + 14);
  v17 = (v16 + v11);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = awd::profile::ConditionClause::ByteSize(*(*(this + 6) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(this + 14));
  }

  *(this + 19) = v17;
  return v17;
}

void awd::profile::AggregationSpec::MergeFrom(awd::profile::AggregationSpec *this, const awd::profile::AggregationSpec *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_1001F4414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::AggregationSpec::~AggregationSpec(awd::profile::AggregationSpec *this)
{
  *this = off_1002B9290;
  awd::profile::AggregationSpec::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::AggregationSpec::~AggregationSpec(this);

  operator delete();
}

void awd::profile::AggregationSpec::SharedDtor(awd::profile::AggregationSpec *this)
{
  v1 = *(this + 1);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
}

uint64_t awd::profile::AggregationSpec::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::profile::AggregationSpec::MergePartialFromCodedStream(awd::profile::AggregationSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_13;
        }

        v12 = *(this + 6);
LABEL_22:
        *(this + 6) = v12 | 2;
        if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
      if (v11 < v8 && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_22;
      }
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::AggregationSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::AggregationSpec::ByteSize(awd::profile::AggregationSpec *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(this + 1);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(this + 5) = v4;
  return v4;
}

void awd::profile::MetricFileSpec::MergeFrom(awd::profile::MetricFileSpec *this, const awd::profile::MetricFileSpec *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 20);
    *(this + 9) |= 8u;
    *(this + 20) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 3);
    *(this + 9) |= 0x10u;
    *(this + 3) = v5;
  }
}

void sub_1001F49D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::MetricFileSpec::~MetricFileSpec(awd::profile::MetricFileSpec *this)
{
  *this = off_1002B9308;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::MetricFileSpec::~MetricFileSpec(this);

  operator delete();
}

uint64_t awd::profile::MetricFileSpec::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = &_mh_execute_header;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::profile::MetricFileSpec::MergePartialFromCodedStream(awd::profile::MetricFileSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v14 >= v10 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) |= 1u;
        if (v16 < v10 && *v16 == 16)
        {
          v11 = v16 + 1;
          *(a2 + 1) = v11;
LABEL_32:
          v27 = 0;
          if (v11 >= v10 || (v17 = *v11, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
            if (!result)
            {
              return result;
            }

            v17 = v27;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v17 - 1 <= 2)
          {
            *(this + 9) |= 2u;
            *(this + 3) = v17;
          }

          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v18 < v8 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(a2 + 1) = v12;
LABEL_42:
            if (v12 >= v8 || (v19 = *v12, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v19;
              v20 = v12 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 9) |= 4u;
            if (v20 < v8 && *v20 == 32)
            {
              v13 = v20 + 1;
              *(a2 + 1) = v13;
              goto LABEL_50;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_42;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_50:
      v26 = 0;
      if (v13 >= v8 || (v21 = *v13, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v21 = v26;
        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v22 = (v13 + 1);
        *(a2 + 1) = v22;
      }

      *(this + 20) = v21 != 0;
      *(this + 9) |= 8u;
      if (v8 - v22 >= 2 && *v22 == 128 && v22[1] == 1)
      {
        v9 = (v22 + 2);
        *(a2 + 1) = v9;
LABEL_59:
        if (v9 >= v8 || (v23 = *v9, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v23;
          v24 = v9 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 9) |= 0x10u;
        if (v24 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 16 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_59;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}