uint64_t awd::profile::MetricFileSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, v7, a2, a4);
}

uint64_t awd::profile::MetricFileSpec::ByteSize(awd::profile::MetricFileSpec *this, unint64_t a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_23;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v7 = *(this + 3);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_16;
  }

  v6 = *(this + 2);
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 4);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 2;
  }

LABEL_23:
  *(this + 8) = v5;
  return v5;
}

void awd::profile::TaskingCriteria::MergeFrom(awd::profile::TaskingCriteria *this, const awd::profile::TaskingCriteria *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_10001C3A0(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }
}

void sub_1001F50A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TaskingCriteria::~TaskingCriteria(awd::profile::TaskingCriteria *this)
{
  *this = off_1002B9380;
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (*(this + 1))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TaskingCriteria::~TaskingCriteria(this);

  operator delete();
}

uint64_t awd::profile::TaskingCriteria::Clear(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t awd::profile::TaskingCriteria::MergePartialFromCodedStream(awd::profile::TaskingCriteria *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v9 = *(a2 + 1);
    v8 = *(a2 + 2);
    while (1)
    {
      v15 = 0;
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v10 = v15;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 1 <= 3)
      {
        v11 = *(this + 4);
        if (v11 == *(this + 5))
        {
          sub_10001C3A0(this + 1, v11 + 1);
          v11 = *(this + 4);
        }

        v12 = *(this + 1);
        *(this + 4) = v11 + 1;
        *(v12 + 4 * v11) = v10;
      }

LABEL_24:
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 >= v8 || *v13 != 8)
      {
        break;
      }

      v9 = v13 + 1;
      *(a2 + 1) = v9;
    }

    if (v13 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

  if (v7 != 2)
  {
    goto LABEL_9;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (result)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t awd::profile::TaskingCriteria::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v4 = a2;
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(*(v5 + 8) + 4 * v6++), v4, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::TaskingCriteria::ByteSize(awd::profile::TaskingCriteria *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(this + 1) + 4 * v4);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 10;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
        v3 = *(this + 4);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  result = (v3 + v5);
  *(this + 6) = result;
  return result;
}

awd::profile::DeviceConfiguration *awd::profile::DeviceConfiguration::DeviceConfiguration(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  *this = off_1002B93F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 19) = 0;
  *(this + 42) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 25) = 0;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 18) = 0;
  *(this + 52) = 0;
  awd::profile::DeviceConfiguration::MergeFrom(this, a2);
  return this;
}

void sub_1001F5554(_Unwind_Exception *a1)
{
  v9 = v6;
  sub_1000C8650(v9);
  sub_1000C8650(v8);
  sub_1000C8650(v7);
  sub_1000C8650(v5);
  sub_1000C8650(v4);
  sub_1000C8650(v3);
  sub_1000C8650(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::DeviceConfiguration::MergeFrom(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
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
      awd::profile::ComponentConfiguration::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 4));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 5) + 8 * v9);
      v11 = *(this + 13);
      v12 = *(this + 12);
      if (v12 >= v11)
      {
        if (v11 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v11 + 1);
          v11 = *(this + 13);
        }

        *(this + 13) = v11 + 1;
        operator new();
      }

      v13 = *(this + 5);
      *(this + 12) = v12 + 1;
      awd::profile::TimerSpec::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 12));
  }

  sub_1001F785C((this + 72), a2 + 72);
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
      awd::profile::TriggerSource::MergeFrom(*(v18 + 8 * v17), v15);
      ++v14;
    }

    while (v14 < *(a2 + 26));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120), *(a2 + 32) + *(this + 32));
  if (*(a2 + 32) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(a2 + 15) + 8 * v19);
      v21 = *(this + 33);
      v22 = *(this + 32);
      if (v22 >= v21)
      {
        if (v21 == *(this + 34))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120), v21 + 1);
          v21 = *(this + 33);
        }

        *(this + 33) = v21 + 1;
        operator new();
      }

      v23 = *(this + 15);
      *(this + 32) = v22 + 1;
      awd::profile::TriggerProcessingRule::MergeFrom(*(v23 + 8 * v22), v20);
      ++v19;
    }

    while (v19 < *(a2 + 32));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152), *(a2 + 40) + *(this + 40));
  if (*(a2 + 40) >= 1)
  {
    v24 = 0;
    do
    {
      v25 = *(*(a2 + 19) + 8 * v24);
      v26 = *(this + 41);
      v27 = *(this + 40);
      if (v27 >= v26)
      {
        if (v26 == *(this + 42))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152), v26 + 1);
          v26 = *(this + 41);
        }

        *(this + 41) = v26 + 1;
        operator new();
      }

      v28 = *(this + 19);
      *(this + 40) = v27 + 1;
      awd::profile::AggregationSpec::MergeFrom(*(v28 + 8 * v27), v25);
      ++v24;
    }

    while (v24 < *(a2 + 40));
  }

  v29 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176), *(a2 + 46) + *(this + 46));
  if (*(a2 + 46) >= 1)
  {
    v30 = 0;
    do
    {
      v31 = *(*(a2 + 22) + 8 * v30);
      v32 = *(this + 47);
      v33 = *(this + 46);
      if (v33 >= v32)
      {
        if (v32 == *(this + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176), v32 + 1);
          v32 = *(this + 47);
        }

        *(this + 47) = v32 + 1;
        sub_1001F74DC();
      }

      v34 = *(this + 22);
      *(this + 46) = v33 + 1;
      v29 = awd::profile::DeviceConfiguration::MergeFrom(*(v34 + 8 * v33), v31);
      ++v30;
    }

    while (v30 < *(a2 + 46));
  }

  v35 = *(a2 + 52);
  if (!v35)
  {
    goto LABEL_56;
  }

  if (v35)
  {
    v36 = *(a2 + 8);
    *(this + 52) |= 1u;
    *(this + 8) = v36;
    v35 = *(a2 + 52);
    if ((v35 & 8) == 0)
    {
LABEL_54:
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_60;
    }
  }

  else if ((v35 & 8) == 0)
  {
    goto LABEL_54;
  }

  v37 = *(a2 + 36);
  *(this + 52) |= 8u;
  *(this + 36) = v37;
  v35 = *(a2 + 52);
  if ((v35 & 0x10) != 0)
  {
LABEL_60:
    v38 = *(a2 + 50);
    *(this + 52) |= 0x10u;
    *(this + 50) = v38;
    v35 = *(a2 + 52);
    if ((v35 & 0x20) != 0)
    {
      goto LABEL_61;
    }

LABEL_56:
    if ((v35 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_64;
  }

LABEL_55:
  if ((v35 & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_61:
  v39 = *(a2 + 8);
  *(this + 52) |= 0x20u;
  v40 = *(this + 8);
  if (v40 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  v29 = std::string::operator=(v40, v39);
  if ((*(a2 + 52) & 0x200) != 0)
  {
LABEL_64:
    *(this + 52) |= 0x200u;
    v41 = *(this + 18);
    if (!v41)
    {
      operator new();
    }

    v42 = *(a2 + 18);
    if (!v42)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(v29);
      v42 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    awd::profile::TaskingCriteria::MergeFrom(v41, v42);
  }
}

void sub_1001F5CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::DeviceConfiguration::~DeviceConfiguration(awd::profile::DeviceConfiguration *this)
{
  *this = off_1002B93F8;
  awd::profile::DeviceConfiguration::SharedDtor(this);
  sub_1000C8650(this + 22);
  sub_1000C8650(this + 19);
  sub_1000C8650(this + 15);
  sub_1000C8650(this + 12);
  sub_1000C8650(this + 9);
  sub_1000C8650(this + 5);
  sub_1000C8650(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::DeviceConfiguration::~DeviceConfiguration(this);

  operator delete();
}

void awd::profile::DeviceConfiguration::SharedDtor(awd::profile::DeviceConfiguration *this)
{
  v2 = *(this + 8);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::DeviceConfiguration::default_instance_ != this)
  {
    v4 = *(this + 18);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t awd::profile::DeviceConfiguration::Clear(awd::profile::DeviceConfiguration *this)
{
  v2 = *(this + 208);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
    *(this + 50) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(this + 8);
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

  if ((*(this + 209) & 2) != 0)
  {
    v4 = *(this + 18);
    if (v4)
    {
      *(v4 + 16) = 0;
      *(v4 + 28) = 0;
    }
  }

  sub_1000C85E0(this + 8);
  sub_1000C85E0(this + 40);
  sub_1000C85E0(this + 72);
  sub_1000C85E0(this + 96);
  sub_1000C85E0(this + 120);
  sub_1000C85E0(this + 152);
  result = sub_1000C85E0(this + 176);
  *(this + 52) = 0;
  return result;
}

uint64_t awd::profile::DeviceConfiguration::MergePartialFromCodedStream(awd::profile::DeviceConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            if (TagFallback >> 3 <= 6)
            {
              break;
            }

            if (TagFallback >> 3 > 9)
            {
              if (v7 == 10)
              {
                if ((TagFallback & 7) == 0)
                {
                  v16 = *(a2 + 1);
                  v15 = *(a2 + 2);
                  goto LABEL_172;
                }

                goto LABEL_46;
              }

              if (v7 == 11)
              {
                if (v8 == 2)
                {
                  goto LABEL_182;
                }

                goto LABEL_46;
              }

              if (v7 != 16 || v8 != 2)
              {
                goto LABEL_46;
              }

              while (2)
              {
                v106 = *(this + 47);
                v107 = *(this + 46);
                if (v107 >= v106)
                {
                  if (v106 == *(this + 48))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176), v106 + 1);
                    v106 = *(this + 47);
                  }

                  *(this + 47) = v106 + 1;
                  sub_1001F74DC();
                }

                v108 = *(this + 22);
                *(this + 46) = v107 + 1;
                v109 = *(v108 + 8 * v107);
                v117 = 0;
                v110 = *(a2 + 1);
                if (v110 >= *(a2 + 2) || *v110 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
                  {
                    return 0;
                  }
                }

                else
                {
                  v117 = *v110;
                  *(a2 + 1) = v110 + 1;
                }

                v111 = *(a2 + 14);
                v112 = *(a2 + 15);
                *(a2 + 14) = v111 + 1;
                if (v111 >= v112)
                {
                  return 0;
                }

                v113 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
                if (!awd::profile::DeviceConfiguration::MergePartialFromCodedStream(v109, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v113);
                v114 = *(a2 + 14);
                v29 = __OFSUB__(v114, 1);
                v115 = v114 - 1;
                if (v115 < 0 == v29)
                {
                  *(a2 + 14) = v115;
                }

                v93 = *(a2 + 1);
                v116 = *(a2 + 2);
                if (v116 - v93 > 1 && *v93 == 130 && v93[1] == 1)
                {
LABEL_201:
                  *(a2 + 1) = v93 + 2;
                  continue;
                }

                break;
              }

              if (v93 == v116 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }

            else if (v7 == 7)
            {
              if (v8 != 2)
              {
                goto LABEL_46;
              }

              while (2)
              {
                v59 = *(this + 27);
                v60 = *(this + 26);
                if (v60 >= v59)
                {
                  if (v59 == *(this + 28))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v59 + 1);
                    v59 = *(this + 27);
                  }

                  *(this + 27) = v59 + 1;
                  operator new();
                }

                v61 = *(this + 12);
                *(this + 26) = v60 + 1;
                v62 = *(v61 + 8 * v60);
                v117 = 0;
                v63 = *(a2 + 1);
                if (v63 >= *(a2 + 2) || *v63 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
                  {
                    return 0;
                  }
                }

                else
                {
                  v117 = *v63;
                  *(a2 + 1) = v63 + 1;
                }

                v64 = *(a2 + 14);
                v65 = *(a2 + 15);
                *(a2 + 14) = v64 + 1;
                if (v64 >= v65)
                {
                  return 0;
                }

                v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
                if (!awd::profile::TriggerSource::MergePartialFromCodedStream(v62, a2, v67) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v66);
                v68 = *(a2 + 14);
                v29 = __OFSUB__(v68, 1);
                v69 = v68 - 1;
                if (v69 < 0 == v29)
                {
                  *(a2 + 14) = v69;
                }

                v46 = *(a2 + 1);
                if (v46 < *(a2 + 2))
                {
                  v70 = *v46;
                  if (v70 == 58)
                  {
LABEL_121:
                    *(a2 + 1) = v46 + 1;
                    continue;
                  }

                  if (v70 == 66)
                  {
                    goto LABEL_139;
                  }
                }

                break;
              }
            }

            else
            {
              if (v7 != 8)
              {
                if (v7 == 9 && v8 == 2)
                {
                  goto LABEL_158;
                }

                goto LABEL_46;
              }

              if (v8 != 2)
              {
                goto LABEL_46;
              }

              while (2)
              {
                v71 = *(this + 33);
                v72 = *(this + 32);
                if (v72 >= v71)
                {
                  if (v71 == *(this + 34))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120), v71 + 1);
                    v71 = *(this + 33);
                  }

                  *(this + 33) = v71 + 1;
                  operator new();
                }

                v73 = *(this + 15);
                *(this + 32) = v72 + 1;
                v74 = *(v73 + 8 * v72);
                v117 = 0;
                v75 = *(a2 + 1);
                if (v75 >= *(a2 + 2) || *v75 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
                  {
                    return 0;
                  }
                }

                else
                {
                  v117 = *v75;
                  *(a2 + 1) = v75 + 1;
                }

                v76 = *(a2 + 14);
                v77 = *(a2 + 15);
                *(a2 + 14) = v76 + 1;
                if (v76 >= v77)
                {
                  return 0;
                }

                v78 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
                if (!awd::profile::TriggerProcessingRule::MergePartialFromCodedStream(v74, a2, v79) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v78);
                v80 = *(a2 + 14);
                v29 = __OFSUB__(v80, 1);
                v81 = v80 - 1;
                if (v81 < 0 == v29)
                {
                  *(a2 + 14) = v81;
                }

                v46 = *(a2 + 1);
                if (v46 < *(a2 + 2))
                {
                  v82 = *v46;
                  if (v82 == 66)
                  {
LABEL_139:
                    *(a2 + 1) = v46 + 1;
                    continue;
                  }

                  if (v82 == 74)
                  {
                    *(a2 + 1) = v46 + 1;
LABEL_158:
                    *(this + 52) |= 0x200u;
                    v83 = *(this + 18);
                    if (!v83)
                    {
                      operator new();
                    }

                    v117 = 0;
                    v84 = *(a2 + 1);
                    if (v84 >= *(a2 + 2) || *v84 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v117 = *v84;
                      *(a2 + 1) = v84 + 1;
                    }

                    v85 = *(a2 + 14);
                    v86 = *(a2 + 15);
                    *(a2 + 14) = v85 + 1;
                    if (v85 >= v86)
                    {
                      return 0;
                    }

                    v87 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
                    if (!awd::profile::TaskingCriteria::MergePartialFromCodedStream(v83, a2, v88) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v87);
                    v89 = *(a2 + 14);
                    v29 = __OFSUB__(v89, 1);
                    v90 = v89 - 1;
                    if (v90 < 0 == v29)
                    {
                      *(a2 + 14) = v90;
                    }

                    v91 = *(a2 + 1);
                    v15 = *(a2 + 2);
                    if (v91 < v15 && *v91 == 80)
                    {
                      v16 = v91 + 1;
                      *(a2 + 1) = v16;
LABEL_172:
                      v117 = 0;
                      if (v16 >= v15 || (v92 = *v16, (v92 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117);
                        if (!result)
                        {
                          return result;
                        }

                        v92 = v117;
                      }

                      else
                      {
                        *(a2 + 1) = v16 + 1;
                      }

                      if (v92 <= 3)
                      {
                        *(this + 52) |= 0x10u;
                        *(this + 50) = v92;
                      }

                      v93 = *(a2 + 1);
                      if (v93 < *(a2 + 2) && *v93 == 90)
                      {
                        do
                        {
                          *(a2 + 1) = v93 + 1;
LABEL_182:
                          v94 = *(this + 41);
                          v95 = *(this + 40);
                          if (v95 >= v94)
                          {
                            if (v94 == *(this + 42))
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152), v94 + 1);
                              v94 = *(this + 41);
                            }

                            *(this + 41) = v94 + 1;
                            operator new();
                          }

                          v96 = *(this + 19);
                          *(this + 40) = v95 + 1;
                          v97 = *(v96 + 8 * v95);
                          v117 = 0;
                          v98 = *(a2 + 1);
                          if (v98 >= *(a2 + 2) || *v98 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v117 = *v98;
                            *(a2 + 1) = v98 + 1;
                          }

                          v99 = *(a2 + 14);
                          v100 = *(a2 + 15);
                          *(a2 + 14) = v99 + 1;
                          if (v99 >= v100)
                          {
                            return 0;
                          }

                          v101 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
                          if (!awd::profile::AggregationSpec::MergePartialFromCodedStream(v97, a2, v102) || *(a2 + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v101);
                          v103 = *(a2 + 14);
                          v29 = __OFSUB__(v103, 1);
                          v104 = v103 - 1;
                          if (v104 < 0 == v29)
                          {
                            *(a2 + 14) = v104;
                          }

                          v93 = *(a2 + 1);
                          v105 = *(a2 + 2);
                        }

                        while (v93 < v105 && *v93 == 90);
                        if (v105 - v93 >= 2 && *v93 == 130 && v93[1] == 1)
                        {
                          goto LABEL_201;
                        }
                      }
                    }
                  }
                }

                break;
              }
            }
          }

          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v14 = *(a2 + 2);
              goto LABEL_90;
            }

            goto LABEL_46;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_46;
            }

            v17 = *(this + 52);
LABEL_98:
            *(this + 52) = v17 | 0x20;
            if (*(this + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v46 = *(a2 + 1);
            if (v46 < *(a2 + 2) && *v46 == 50)
            {
LABEL_103:
              *(a2 + 1) = v46 + 1;
              goto LABEL_104;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_46;
            }

LABEL_104:
            v47 = *(this + 21);
            v48 = *(this + 20);
            if (v48 >= v47)
            {
              if (v47 == *(this + 22))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72), v47 + 1);
                v47 = *(this + 21);
              }

              *(this + 21) = v47 + 1;
              operator new();
            }

            v49 = *(this + 9);
            *(this + 20) = v48 + 1;
            v50 = *(v49 + 8 * v48);
            v117 = 0;
            v51 = *(a2 + 1);
            if (v51 >= *(a2 + 2) || *v51 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
              {
                return 0;
              }
            }

            else
            {
              v117 = *v51;
              *(a2 + 1) = v51 + 1;
            }

            v52 = *(a2 + 14);
            v53 = *(a2 + 15);
            *(a2 + 14) = v52 + 1;
            if (v52 >= v53)
            {
              return 0;
            }

            v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
            if (!awd::profile::MetricFileSpec::MergePartialFromCodedStream(v50, a2, v55) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v54);
            v56 = *(a2 + 14);
            v29 = __OFSUB__(v56, 1);
            v57 = v56 - 1;
            if (v57 < 0 == v29)
            {
              *(a2 + 14) = v57;
            }

            v46 = *(a2 + 1);
            if (v46 < *(a2 + 2))
            {
              v58 = *v46;
              if (v58 == 50)
              {
                goto LABEL_103;
              }

              if (v58 == 58)
              {
                goto LABEL_121;
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v117 = 0;
        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117);
          if (!result)
          {
            return result;
          }

          v11 = v117;
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) = v11;
        *(this + 52) |= 1u;
        if (v12 < v10 && *v12 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v12 + 1;
LABEL_54:
            v19 = *(this + 5);
            v20 = *(this + 4);
            if (v20 >= v19)
            {
              if (v19 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8), v19 + 1);
                v19 = *(this + 5);
              }

              *(this + 5) = v19 + 1;
              operator new();
            }

            v21 = *(this + 1);
            *(this + 4) = v20 + 1;
            v22 = *(v21 + 8 * v20);
            v117 = 0;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
              {
                return 0;
              }
            }

            else
            {
              v117 = *v23;
              *(a2 + 1) = v23 + 1;
            }

            v24 = *(a2 + 14);
            v25 = *(a2 + 15);
            *(a2 + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
            if (!awd::profile::ComponentConfiguration::MergePartialFromCodedStream(v22, a2, v27) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
            v28 = *(a2 + 14);
            v29 = __OFSUB__(v28, 1);
            v30 = v28 - 1;
            if (v30 < 0 == v29)
            {
              *(a2 + 14) = v30;
            }

            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2))
            {
              break;
            }

            v31 = *v12;
            if (v31 != 18)
            {
              if (v31 == 26)
              {
                goto LABEL_71;
              }

              goto LABEL_1;
            }
          }
        }
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_54;
      }

      if (v7 != 3 || v8 != 2)
      {
        break;
      }

      while (1)
      {
        v32 = *(this + 13);
        v33 = *(this + 12);
        if (v33 >= v32)
        {
          if (v32 == *(this + 14))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40), v32 + 1);
            v32 = *(this + 13);
          }

          *(this + 13) = v32 + 1;
          operator new();
        }

        v34 = *(this + 5);
        *(this + 12) = v33 + 1;
        v35 = *(v34 + 8 * v33);
        v117 = 0;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117))
          {
            return 0;
          }
        }

        else
        {
          v117 = *v36;
          *(a2 + 1) = v36 + 1;
        }

        v37 = *(a2 + 14);
        v38 = *(a2 + 15);
        *(a2 + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v117);
        if (!awd::profile::TimerSpec::MergePartialFromCodedStream(v35, a2, v40) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v39);
        v41 = *(a2 + 14);
        v29 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v29)
        {
          *(a2 + 14) = v42;
        }

        v12 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v12 >= v14)
        {
          break;
        }

        v43 = *v12;
        if (v43 != 26)
        {
          if (v43 == 32)
          {
            v13 = v12 + 1;
            *(a2 + 1) = v13;
LABEL_90:
            v117 = 0;
            if (v13 >= v14 || (v44 = *v13, (v44 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v117);
              if (!result)
              {
                return result;
              }

              v44 = v117;
              v45 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              v45 = v13 + 1;
              *(a2 + 1) = v45;
            }

            *(this + 36) = v44 != 0;
            v17 = *(this + 52) | 8;
            *(this + 52) = v17;
            if (v45 < v14 && *v45 == 42)
            {
              *(a2 + 1) = v45 + 1;
              goto LABEL_98;
            }
          }

          goto LABEL_1;
        }

LABEL_71:
        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_46:
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

uint64_t awd::profile::DeviceConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 208))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 32), a2, a4);
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

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  v8 = *(v5 + 208);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 36), a2, a4);
    v8 = *(v5 + 208);
  }

  if ((v8 & 0x20) != 0)
  {
    v9 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 72) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 96) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 128) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 120) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 128));
  }

  v13 = *(v5 + 208);
  if ((v13 & 0x200) != 0)
  {
    v14 = *(v5 + 144);
    if (!v14)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v14 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
    v13 = *(v5 + 208);
  }

  if ((v13 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 200), a2, a4);
  }

  if (*(v5 + 160) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 152) + 8 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 160));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 176) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  return this;
}

uint64_t awd::profile::DeviceConfiguration::ByteSize(awd::profile::DeviceConfiguration *this, unint64_t a2)
{
  v3 = *(this + 52);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v3)
  {
    v6 = *(this + 8);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(this + 52);
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = ((v3 >> 2) & 2) + v4;
  if ((v3 & 0x10) != 0)
  {
    v7 = *(this + 50);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 52);
    }

    else
    {
      v8 = 2;
    }

    v5 += v8;
    if ((v3 & 0x20) == 0)
    {
LABEL_13:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 8);
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
    v3 = *(this + 52);
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

  v5 += v14 + v10 + 1;
  if ((v3 & 0x200) != 0)
  {
LABEL_30:
    v15 = *(this + 18);
    if (!v15)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v15 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    v16 = awd::profile::TaskingCriteria::ByteSize(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }

    v5 += v17 + v18 + 1;
  }

LABEL_36:
  v19 = *(this + 4);
  v20 = v19 + v5;
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = awd::profile::ComponentConfiguration::ByteSize(*(*(this + 1) + 8 * v21), a2);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      }

      else
      {
        v24 = 1;
      }

      v20 += v23 + v24;
      ++v21;
    }

    while (v21 < *(this + 4));
  }

  v25 = *(this + 12);
  v26 = v25 + v20;
  if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = awd::profile::TimerSpec::ByteSize(*(*(this + 5) + 8 * v27), a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      }

      else
      {
        v30 = 1;
      }

      v26 += v29 + v30;
      ++v27;
    }

    while (v27 < *(this + 12));
  }

  v31 = *(this + 20);
  v32 = v31 + v26;
  if (v31 >= 1)
  {
    v33 = 0;
    do
    {
      v34 = awd::profile::MetricFileSpec::ByteSize(*(*(this + 9) + 8 * v33), a2);
      v35 = v34;
      if (v34 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
      }

      else
      {
        v36 = 1;
      }

      v32 += v35 + v36;
      ++v33;
    }

    while (v33 < *(this + 20));
  }

  v37 = *(this + 26);
  v38 = v37 + v32;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v40 = awd::profile::TriggerSource::ByteSize(*(*(this + 12) + 8 * v39), a2);
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

    while (v39 < *(this + 26));
  }

  v43 = *(this + 32);
  v44 = v43 + v38;
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = awd::profile::TriggerProcessingRule::ByteSize(*(*(this + 15) + 8 * v45), a2);
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
      }

      else
      {
        v48 = 1;
      }

      v44 += v47 + v48;
      ++v45;
    }

    while (v45 < *(this + 32));
  }

  v49 = *(this + 40);
  v50 = v49 + v44;
  if (v49 >= 1)
  {
    v51 = 0;
    do
    {
      v52 = awd::profile::AggregationSpec::ByteSize(*(*(this + 19) + 8 * v51), a2);
      v53 = v52;
      if (v52 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
      }

      else
      {
        v54 = 1;
      }

      v50 += v53 + v54;
      ++v51;
    }

    while (v51 < *(this + 40));
  }

  v55 = *(this + 46);
  v56 = (v50 + 2 * v55);
  if (v55 >= 1)
  {
    v57 = 0;
    do
    {
      v58 = awd::profile::DeviceConfiguration::ByteSize(*(*(this + 22) + 8 * v57));
      v60 = v58;
      if (v58 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, v59);
      }

      else
      {
        v61 = 1;
      }

      v56 = (v60 + v56 + v61);
      ++v57;
    }

    while (v57 < *(this + 46));
  }

  *(this + 51) = v56;
  return v56;
}

uint64_t sub_1001F757C(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

void sub_1001F75FC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      awd::profile::Profile::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1001F7734(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      awd::profile::Condition::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_1001F785C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
      awd::profile::MetricFileSpec::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t sub_1001F7984(uint64_t a1, uint64_t a2, const char *a3)
{
  sub_1001F7F30(a3, a2, &v7);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = &off_1002B9690;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v5;
  return a1;
}

void sub_1001F7A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1001F7984(a1, a4, a2);
  *v6 = off_1002B9638;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_10000FFF8(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_1001F8968(&v11);
  return a1;
}

void sub_1001F7AF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_1001F8968(&a10);
  __cxa_end_catch();
  JUMPOUT(0x1001F7AD8);
}

void sub_1001F7B28(_Unwind_Exception *a1)
{
  sub_1001F8968(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void boost::filesystem::filesystem_error::~filesystem_error(boost::filesystem::filesystem_error *this)
{
  *this = off_1002B9638;
  sub_1001F8968(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = off_1002B9638;
  sub_1001F8968(this + 5);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    sub_1001F8854((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t sub_1001F7D90(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001F7DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13[0] = 0;
    if ((qword_1002D82A8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = a1 != 0;
    }

    else
    {
      v9 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v10 = 2;
    LODWORD(v13[0]) = a1;
    if (v9)
    {
      v10 = 3;
    }

    v13[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v13[2] = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, v13);
  }

  if ((qword_1002D82A8 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 16) = v7;
  return result;
}

void sub_1001F7F30(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v6 = strlen(a1);
    std::string::append(a3, a1, v6);
    std::string::append(a3, ": ", 2uLL);
  }

  sub_1001F8040(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001F7FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F8018(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::string *sub_1001F8040@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1001F8194(a1, a2);
  std::string::append(a2, " [", 2uLL);
  sub_1001F81E4(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 16) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(a1 + 16);
    if (v6 <= 3)
    {
      v7 = off_1002B96B8;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_1001F83B0(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_1001F8154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001F8194@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, a1);
    }

    v4 = *(a1 + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return ((*v4)[4])(v4, *a1);
}

std::string *sub_1001F81E4@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_1001F86C4(a2, "std:");
      v5 = (*(**(a1 + 1) + 16))(*(a1 + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      sub_1001F876C(__s, 0x20uLL, ":%d", v7, v8, v9, v10, v11, *a1);
      v12 = strlen(__s);
      return std::string::append(a2, __s, v12);
    }

    v14 = *(a1 + 1);
  }

  else
  {
    v14 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v15 = (**v14)(v14);
  sub_1001F86C4(a2, v15);
  v21 = *a1;
  if (*(a1 + 2) == 1)
  {
    v21 += 1000 * (*(a1 + 1) % 0x1FFFF7uLL);
  }

  sub_1001F876C(__s, 0x20uLL, ":%d", v16, v17, v18, v19, v20, v21);
  v22 = strlen(__s);
  return std::string::append(a2, __s, v22);
}

void sub_1001F8390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F83B0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1001F86C4(a2, *a1);
    sprintf(__s, ":%ld", *(a1 + 16));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(a1 + 20))
    {
      sprintf(__s, ":%ld", *(a1 + 20));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = *(a1 + 8);
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
  }

  else
  {

    sub_1001F86C4(a2, "(unknown source location)");
  }
}

void sub_1001F8500(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001F851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

BOOL sub_1001F85F4(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    if (*(a3 + 8) == 0xB2AB117A257EDFD2)
    {
      return *a1 + 1000 * (*(a1 + 8) % 0x1FFFF7uLL) == a2;
    }

    return 0;
  }

  if (!v3)
  {
    return !a2 && *(a3 + 8) == 0xB2AB117A257EDFD1;
  }

  if (*a1 != a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = v6 == a3;
  if (v7)
  {
    return *(a3 + 8) == v7;
  }

  else
  {
    return v8;
  }
}

void *sub_1001F86C4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023410();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

std::string *sub_1001F8798(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1001F8854(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1001F8798(a1, __s, v4);
}

void *sub_1001F88B4@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_1001F86C4(a2, v4);
}

const char *sub_1001F8900(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t *sub_1001F8968(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

double sub_1001F89DC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  if (*(a1 + 24))
  {
    v5 = *(a1 + 28) == 0xFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 36);
    if ((v6 & 0xFFFFFFFB) == 0 || v7 == 0xFFFF)
    {
      sub_1001FA174(a1, a2, &v10);
      *(a1 + 24) = v10;
      goto LABEL_14;
    }

    *(a1 + 24) = v6;
    *(a1 + 28) = v7;
  }

  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

LABEL_14:
  result = *(a1 + 24);
  *a3 = result;
  return result;
}

DIR *sub_1001F8A60@<X0>(DIR **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  result = *a1;
  if (*a1 && (*a1 = 0, result = closedir(result), result))
  {
    v7 = *__error();

    return sub_1001F8AF4(a3, v7, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_1001F8AF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    v6 = a2 != 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  *a1 = v4;
  if (v6)
  {
    v7 = 3;
  }

  a1[1] = a3;
  a1[2] = v7;
  return a1;
}

atomic_uint **sub_1001F8B94(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (a4)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v32[0] = 0;
      v9 = operator new(0x40uLL, &std::nothrow);
      if (v9)
      {
        *v9 = 0;
        v9[1] = 0;
        *(v9 + 8) = 0;
        *(v9 + 1) = 0u;
        *(v9 + 36) = 0xFFFFLL;
        *(v9 + 11) = 0xFFFF;
        v9[6] = 0;
        v9[7] = 0;
        v29 = v9;
        atomic_fetch_add(v9, 1u);
        v10 = v9;
        v11 = v32[0];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v29 = v11;
      v32[0] = v10;
      sub_1001FA118(&v29);
      v13 = v32[0];
      if (!v32[0])
      {
        sub_10020C3CC(a4);
        return sub_1001FA118(v32);
      }
    }

    else
    {
      v32[0] = 0;
      v12 = operator new(0x40uLL);
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 8) = 0;
      *(v12 + 1) = 0u;
      *(v12 + 36) = 0xFFFFLL;
      *(v12 + 11) = 0xFFFF;
      v12[6] = 0;
      v12[7] = 0;
      v29 = v12;
      atomic_fetch_add(v12, 1u);
      v29 = v32[0];
      v32[0] = v12;
      sub_1001FA118(&v29);
      v13 = v32[0];
    }

    memset(&v32[1], 0, 15);
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = opendir(v14);
    *(v13 + 6) = v15;
    if (v15)
    {
      v16 = 1;
      v17 = 46;
    }

    else
    {
      v18 = *__error();
      v29 = 0;
      if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8)
      {
        v19 = v18 != 0;
      }

      else
      {
        v19 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v18);
      }

      v20 = 2;
      LODWORD(v29) = v18;
      if (v19)
      {
        v20 = 3;
      }

      v30 = &boost::system::detail::system_cat_holder<void>::instance;
      v31 = v20;
      if (v20)
      {
        __str.__r_.__value_.__r.__words[0] = 13;
        __str.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
        v24 = sub_1001F9678(&v29, &__str);
        if ((a3 & 1) == 0 || (v24 & 1) == 0)
        {
          v25 = v29;
          if (v31 == 1)
          {
            v25 = v29 + 1000 * (v30 % 0x1FFFF7);
          }

          if (v25)
          {
            sub_1001F7DC4(v25, a2, a4, "boost::filesystem::directory_iterator::construct");
          }

          else if (a4)
          {
            *a4 = 0;
            a4[1] = 0;
            a4[2] = 0;
          }
        }

        return sub_1001FA118(v32);
      }

      v17 = 0;
      v16 = 0;
    }

    v21 = v32[0];
    if (*(v32[0] + 6))
    {
      v22 = *a1;
      *a1 = v32[0];
      v32[0] = v22;
      __p.__r_.__value_.__r.__words[0] = v17;
      __p.__r_.__value_.__l.__size_ = v32[1];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v32[1] + 7);
      *(&__p.__r_.__value_.__s + 23) = v16;
      if (*(a2 + 23) < 0)
      {
        sub_10000FFF8(&__str, *a2, *(a2 + 8));
      }

      else
      {
        __str = *a2;
      }

      sub_1001FA574(&__str, &__p);
      std::string::operator=((v21 + 2), &__str);
      *&v23 = 0xFFFF00000000;
      *(&v23 + 1) = 0xFFFF00000000;
      *(v21 + 2) = v23;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v15)
        {
          return sub_1001FA118(v32);
        }

        goto LABEL_32;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_32:
        sub_1001F90A0(a1, a4);
      }
    }

    return sub_1001FA118(v32);
  }

  return sub_1001F7DC4(2, a2, a4, "boost::filesystem::directory_iterator::construct");
}

void sub_1001F8FA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, atomic_uint *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v19)
    {
      if (qword_1002D82C0 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *v19 = 12;
      v19[1] = &boost::system::detail::generic_cat_holder<void>::instance;
      v19[2] = v23;
      a19 = *v20;
      *v20 = 0;
      sub_1001FA118(&a19);
      __cxa_end_catch();
      JUMPOUT(0x1001F8EBCLL);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1001F8F94);
}

void sub_1001F908C(void *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  JUMPOUT(0x1001F8F9CLL);
}

void sub_1001F90A0(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  memset(&__src, 0, sizeof(__src));
  v26 = 0;
  v27 = 0;
  v4 = *a1;
  v5 = *(*a1 + 48);
  while (1)
  {
    *v20 = 0;
    *__error() = 0;
    if (sysconf(91) < 0)
    {
      *__error() = 0;
      v8 = readdir(v5);
      *v20 = v8;
      if (v8)
      {
LABEL_14:
        sub_1001F8854(&__src, v8->d_name);
        memset(&__p, 0, sizeof(__p));
        v26 = 0;
        v27 = 0;
        goto LABEL_15;
      }

      v7 = *__error();
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *(v4 + 56);
      if (!v6)
      {
        v14 = sub_1001FA064();
        v15 = malloc(v14 + 25);
        *(v4 + 56) = v15;
        if (!v15)
        {
          v7 = 12;
LABEL_31:
          *&__p.__r_.__value_.__l.__data_ = 0uLL;
          if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8 || (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7))
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = v7;
          __p.__r_.__value_.__l.__size_ = &boost::system::detail::system_cat_holder<void>::instance;
          __p.__r_.__value_.__r.__words[2] = v9;
          goto LABEL_9;
        }

        v6 = v15;
        bzero(v15, v14 + 25);
      }

      v7 = readdir_r(v5, v6, v20);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    v8 = *v20;
    if (*v20)
    {
      goto LABEL_14;
    }

    sub_1001F8A60((v4 + 48), (v4 + 56), &__p);
    LODWORD(v7) = __p.__r_.__value_.__l.__data_;
    v9 = __p.__r_.__value_.__r.__words[2];
LABEL_9:
    v26 = *(__p.__r_.__value_.__r.__words + 4);
    v27 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
    if ((v9 & 1) != 0 && (v9 != 1 || v7))
    {
      v23 = *a1;
      v18 = v23;
      *a1 = 0;
      sub_1001F9554((v18 + 8), &__p);
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        *v20 = v7;
        *&v20[4] = v26;
        v21 = v27;
        v22 = v9;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::directory_iterator::operator++", &__p, v20);
      }

      *a2 = v7;
      *(a2 + 4) = v26;
      *(a2 + 12) = v27;
      *(a2 + 16) = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      p_p = &v23;
      goto LABEL_42;
    }

LABEL_15:
    v4 = *a1;
    v5 = *(*a1 + 48);
    if (!v5)
    {
      __p.__r_.__value_.__r.__words[0] = *a1;
      *a1 = 0;
      p_p = &__p;
LABEL_42:
      sub_1001FA118(p_p);
      goto LABEL_46;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (p_src->__r_.__value_.__s.__data_[0] != 46)
    {
      break;
    }

    v11 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
    v12 = v11->__r_.__value_.__s.__data_[1];
    if (v12)
    {
      if (v12 != 46)
      {
        break;
      }

      v13 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
      if (v13->__r_.__value_.__s.__data_[2])
      {
        break;
      }
    }
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __src;
  }

  sub_1001FA7D4((v4 + 8));
  sub_1001FA574(v4 + 8, &__p);
  *&v17 = 0xFFFF00000000;
  *(&v17 + 1) = 0xFFFF00000000;
  *(v4 + 32) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void sub_1001F9538(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1001F9554@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_1001FA82C(a1);

  return sub_10005D6A0(a2, v3, &v3[v4], v4);
}

void *sub_1001F95C4@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_1001F86C4(a2, v4);
}

const char *sub_1001F9610(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t sub_1001F9678(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[2];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_1001F97EC(a1);
      v7 = v6;
      v16[0] = v5;
      v16[1] = v6;
      v14 = sub_1001F9914(a2);
      v15 = v8;
      if (((*(*v7 + 32))(v7, v5, &v14) & 1) == 0)
      {
        return (*(*v15 + 40))(v15, v16, v14);
      }

      return 1;
    }

    v10 = a1[1];
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  if (((*v10)[2])(v10, *a1, a2))
  {
    return 1;
  }

  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = &boost::system::detail::generic_cat_holder<void>::instance;
  }

  v12 = *a2;
  v13 = (*v11)[3];

  return v13();
}

unint64_t sub_1001F97EC(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = *a1;
      v2 = a1[1];
      v4 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v3) = *a1;
      v5 = a1[1];
      v6 = *(v5 + 8);
      if (v6 == 0xB2AB117A257EDFD1)
      {
        std::system_category();
      }

      else if (v6 == 0xB2AB117A257EDFD0)
      {
        std::generic_category();
      }

      else if (!atomic_load_explicit((v5 + 16), memory_order_acquire))
      {
        v7 = operator new(0x10uLL);
        v8 = 0;
        *v7 = &off_1002B97A0;
        v7[1] = v5;
        atomic_compare_exchange_strong((v5 + 16), &v8, v7);
        if (v8)
        {
          (*(*v7 + 8))(v7);
          v4 = 0;
          return v4 | v3;
        }
      }

      v4 = 0;
    }
  }

  else
  {
    std::system_category();
    v4 = 0;
    LODWORD(v3) = 0;
  }

  return v4 | v3;
}

uint64_t sub_1001F9914(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 8);
  if (v3 == 0xB2AB117A257EDFD1)
  {
    std::system_category();
    return v2;
  }

  if (v3 != 0xB2AB117A257EDFD0)
  {
    if (!atomic_load_explicit((v1 + 16), memory_order_acquire))
    {
      v5 = operator new(0x10uLL);
      v6 = 0;
      *v5 = &off_1002B97A0;
      v5[1] = v1;
      atomic_compare_exchange_strong((v1 + 16), &v6, v5);
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  else
  {
LABEL_4:
    std::generic_category();
  }

  return v2;
}

void sub_1001F9A04(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete(v1);
}

uint64_t sub_1001F9A54(uint64_t a1)
{
  v3[0] = (*(**(a1 + 8) + 8))(*(a1 + 8));
  v3[1] = v1;
  return sub_1001F9914(v3);
}

uint64_t sub_1001F9AA8(void *a1, uint64_t a2, int *a3)
{
  v6 = *(a3 + 1);
  if (v6 == a1)
  {
    v8 = a1[1];
    v18 = *a3;
    v19 = v8;
    return ((*v8)[2])(v8, a2, &v18);
  }

  explicit = std::generic_category();
  if (v6 == explicit)
  {
    goto LABEL_13;
  }

  if (qword_1002D82C0 != 0xB2AB117A257EDFD0)
  {
    if (qword_1002D82C0 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_1002D82C8, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v9 = 0;
        *explicit = &off_1002B97A0;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_1002D82C8, &v9, explicit);
        if (v9)
        {
          (*(*explicit + 8))(explicit);
          explicit = v9;
        }
      }
    }
  }

  if (v6 == explicit)
  {
LABEL_13:
    v18 = *a3;
    v19 = &boost::system::detail::generic_cat_holder<void>::instance;
    goto LABEL_14;
  }

  v10 = *(a3 + 1);
  v11 = **v10;
  if (v12)
  {
    v13 = v12[1];
    v18 = *a3;
    v19 = v13;
LABEL_14:
    v8 = a1[1];
    return ((*v8)[2])(v8, a2, &v18);
  }

  v15 = (*(*a1 + 24))(a1, a2);
  return *(a3 + 1) == v16 && *a3 == v15;
}

uint64_t sub_1001F9CAC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  if (v6 == a1)
  {
    v10 = *a2;
    v11 = *(a1 + 8);
    v32 = 0;
    if (v11[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v12 = v10 != 0;
      v13 = v11;
    }

    else
    {
      v12 = ((*v11)[6])(v11, v10);
      v13 = *(a1 + 8);
    }

    v14 = v12 == 0;
    v15 = 2;
    if (!v14)
    {
      v15 = 3;
    }

    LODWORD(v32) = v10;
    v33 = v11;
    v34 = v15;
    return ((*v13)[3])(v13, &v32, a3);
  }

  explicit = std::generic_category();
  v8 = qword_1002D82C0;
  if (v6 == explicit)
  {
    goto LABEL_20;
  }

  v9 = explicit;
  if (qword_1002D82C0 != 0xB2AB117A257EDFD0)
  {
    if (qword_1002D82C0 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(algn_1002D82C8, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v16 = 0;
        *explicit = &off_1002B97A0;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(algn_1002D82C8, &v16, explicit);
        if (v16)
        {
          (*(*explicit + 8))(explicit);
          explicit = v16;
        }
      }
    }
  }

  if (v6 == explicit)
  {
    v8 = qword_1002D82C0;
LABEL_20:
    v23 = *a2;
    v32 = 0;
    if (v8 >> 1 == 0x595588BD12BF6FE8)
    {
      v24 = v23 != 0;
    }

    else
    {
      v24 = (boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, v23);
    }

    v25 = 2;
    if (v24)
    {
      v25 = 3;
    }

    LODWORD(v32) = v23;
    v33 = &boost::system::detail::generic_cat_holder<void>::instance;
    v34 = v25;
    goto LABEL_36;
  }

  v17 = *(a2 + 1);
  v18 = **v17;
  if (v19)
  {
    v20 = *a2;
    v21 = v19[1];
    v32 = 0;
    if (v21[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v22 = v20 != 0;
    }

    else
    {
      v22 = ((*v21)[6])(v21, v20);
    }

    v31 = 2;
    if (v22)
    {
      v31 = 3;
    }

    LODWORD(v32) = v20;
    v33 = v21;
    v34 = v31;
LABEL_36:
    v13 = *(a1 + 8);
    return ((*v13)[3])(v13, &v32, a3);
  }

  v26 = *(a1 + 8);
  v27 = v26 == &boost::system::detail::generic_cat_holder<void>::instance;
  v28 = v26[1] == qword_1002D82C0;
  if (!qword_1002D82C0)
  {
    v28 = v27;
  }

  if (!v28)
  {
    return 0;
  }

  v29 = *(*v9 + 40);

  return v29(v9, a2, a3);
}

uint64_t sub_1001FA064()
{
  if ((atomic_load_explicit(&qword_1002DBE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002DBE50))
  {
    qword_1002DBE48 = sub_1001FA0D8();
    __cxa_guard_release(&qword_1002DBE50);
  }

  return qword_1002DBE48;
}

uint64_t sub_1001FA0D8()
{
  *__error() = 0;
  v0 = pathconf("/", 5);
  if (v0 <= 0x400)
  {
    v1 = 1024;
  }

  else
  {
    v1 = v0;
  }

  if (v0 >= 0)
  {
    return v1;
  }

  else
  {
    return 1024;
  }
}

atomic_uint **sub_1001FA118(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = sub_10003B178(v2);
    operator delete(v3);
  }

  return a1;
}

int *sub_1001FA174@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_1002D82A8 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v4, v22);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 5;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 2;
      if (v8 == 11)
      {
        v11 = 8;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 11)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 7;
    }

    else
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_50:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

off_t sub_1001FA3E0(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v5) < 0)
  {
    sub_10020C448();
    return -1;
  }

  if ((v5.st_mode & 0xF000) != 0x8000)
  {
    sub_1001F7DC4(78, v3, a2, "boost::filesystem::file_size");
    return -1;
  }

  return v5.st_size;
}

__darwin_time_t sub_1001FA478(const char *a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v3) & 0x80000000) == 0)
  {
    return v3.st_mtimespec.tv_sec;
  }

  sub_10020C478();
  return 0x8000000000000000;
}

uint64_t sub_1001FA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7DC4(a1, v5, v4, a4);
}

int *sub_1001FA4FC()
{

  return __error();
}

uint64_t sub_1001FA514(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return 0;
    }

    v2 = a1 + v1;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(a1, 47);
      return v1;
    }

    return 0;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1 + v1;
    goto LABEL_6;
  }

  return v1;
}

void sub_1001FA574(uint64_t a1, const std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = a2;
    if (a1 == a2)
    {
      if (v3 < 0)
      {
        sub_10000FFF8(__n, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        *__n = *&a2->__r_.__value_.__l.__data_;
        v15 = a2->__r_.__value_.__r.__words[2];
      }

      sub_1001FA574(a1, __n);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__n[0]);
      }
    }

    else
    {
      if (v3 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2->__r_.__value_.__r.__words[0];
      }

      __n[0] = 0;
      if (sub_1001FA738(v6, size, __n) < size)
      {
LABEL_25:
        std::string::operator=(a1, v5);
        return;
      }

      v16 = 0;
      v7 = *(a1 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v8 = a1;
      }

      sub_1001FA738(v8, v7, &v16);
      v9 = __n[0];
      if (__n[0])
      {
        if (__n[0] != v16)
        {
          goto LABEL_25;
        }

        v10 = a1;
        if (*(a1 + 23) < 0)
        {
          v10 = *a1;
        }

        v11 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
        v12 = v5->__r_.__value_.__r.__words[0];
        v13 = v11 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
        if (memcmp(v10, v13, __n[0]))
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v11) = *(&v5->__r_.__value_.__s + 23);
        v12 = v5->__r_.__value_.__r.__words[0];
      }

      if ((v11 & 0x80u) != 0)
      {
        v5 = v12;
      }

      if (v5->__r_.__value_.__s.__data_[v9] != 47)
      {
        sub_1001FA514(a1);
      }

      std::string::append(a1, v5 + v9, size - v9);
    }
  }

  else if (sub_1001FA90C(a1))
  {

    std::string::push_back(a1, 47);
  }
}

void sub_1001FA71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_1001FA738(_BYTE *__s, size_t a2, size_t *a3)
{
  *a3 = 0;
  if (a2 && *__s == 47)
  {
    if (a2 == 1 || __s[1] != 47)
    {
      return 0;
    }

    v4 = a2 - 2;
    if (a2 != 2)
    {
      v5 = __s + 2;
      if (__s[2] == 47)
      {
        return 0;
      }

      v7 = memchr(v5, 47, v4);
      v8 = v7 - v5;
      if (!v7)
      {
        v8 = v4;
      }

      a2 = v8 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

std::string *sub_1001FA7D4(std::string *a1)
{
  v2 = sub_1001FA82C(a1);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    v4 = a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v4 = a1 + v3;
    v5 = a1;
  }

  std::string::erase(a1, v2, v4 - (v5 + v2));
  return a1;
}

size_t sub_1001FA82C(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v17 = 0;
  v3 = sub_1001FA738(a1, v2, &v17);
  v4 = v1[23];
  v5 = *v1;
  if (v2 >= v17)
  {
    v6 = v17;
  }

  else
  {
    v6 = v2;
  }

  if (v4 >= 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = *v1;
  }

  v8 = v7 - 1;
  v9 = v2;
  while (v9 > v17)
  {
    v10 = v9 - 1;
    v11 = v8[v9--];
    if (v11 == 47)
    {
      v6 = v10 + 1;
      break;
    }
  }

  if (v6 >= v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = v6;
  }

  if (v4 >= 0)
  {
    v13 = v1;
  }

  else
  {
    v13 = *v1;
  }

  v14 = v13 - 1;
  v15 = v6;
  while (v15 > v17)
  {
    if (v14[v15] != 47)
    {
      return v15;
    }

    if (v3 == --v15)
    {
      if (v2 == v6)
      {
        return v3;
      }

      else
      {
        return v3 + 1;
      }
    }
  }

  if (v2 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

size_t sub_1001FA90C(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v10 = 0;
  sub_1001FA738(a1, v2, &v10);
  if (v2 >= v10)
  {
    v3 = v10;
  }

  else
  {
    v3 = v2;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  v5 = v4 - 1;
  v6 = v2;
  while (v6 > v10)
  {
    v7 = v6 - 1;
    v8 = v5[v6--];
    if (v8 == 47)
    {
      v3 = v7 + 1;
      return v2 - v3;
    }
  }

  return v2 - v3;
}

uint64_t sub_1001FA9A0(uint64_t a1)
{
  if (qword_1002DBE90)
  {
    std::locale::~locale(qword_1002DBE90);
    operator delete(v2);
  }

  qword_1002DBE90 = 0;
  return a1;
}

uint64_t sub_1001FA9DC()
{
  __cxa_atexit(sub_1001FA9A0, &unk_1002DBE58, &_mh_execute_header);
  sub_1001F86C4(qword_1002DBE60, ".");
  __cxa_atexit(sub_1001F7D90, qword_1002DBE60, &_mh_execute_header);
  sub_1001F86C4(qword_1002DBE78, "..");

  return __cxa_atexit(sub_1001F7D90, qword_1002DBE78, &_mh_execute_header);
}

void sub_1001FAA94(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  sub_100023B54();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001FAB18()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAB54()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FABD0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAC0C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FACE4()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMBasebandMetricsController]:#D Metric name: %@, payload %@", v2, 0x16u);
}

void sub_1001FADD0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAE0C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAE48()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAE84(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FAED8()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FAF48(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FAF9C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCongestionModel]:#D Failed to extract FMCongestionCell from cell info for context %@: %@", buf, 0x16u);
}

void sub_1001FB004(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001FB048()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB0B8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB128()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB198()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB208()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1001FB2FC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB36C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB3A8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB3E4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB420()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB45C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100023B60();
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCongestionModel]:Ignoring duplicate congestion metric for cell %@: %@", v5, 0x16u);
}

void sub_1001FB4E4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB520()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB55C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB5CC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB63C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB678()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FB6F8()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB768()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB84C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB888()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB8C4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FBAC8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMRegulatoryDomainController]:#D Regulatory domain estimates: %@", &v2, 0xCu);
}

void sub_1001FBBE8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMUtil]:#D DayOfWeek is larger than INT16_MAX: %ld", &v2, 0xCu);
}

void sub_1001FBD30(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMUtil]:#D TimeOfDay is larger than INT16_MAX: %ld", &v2, 0xCu);
}

void sub_1001FBDA8(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMUtil]:Exception while generating JSON: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1001FBE5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMUtil]:Failed to convert object %@ to JSON data: %@", &v3, 0x16u);
}

void sub_1001FBEE4()
{
  if (__cxa_guard_acquire(&qword_1002D82D8))
  {
    qword_1002D82D0 = dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.FMGEOServicesHandler", 0);

    __cxa_guard_release(&qword_1002D82D8);
  }
}

void sub_1001FBF84()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FBFF4()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC064()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC0A0()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC110()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC180()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC1BC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC1F8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC234()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC2A4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC2E0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC31C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch current data context %@", v5);
}

void sub_1001FC360()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Populating info for context %@", v5);
}

void sub_1001FC3A4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch registration state: %@", v5);
}

void sub_1001FC3E8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch low data mode: %@", v5);
}

void sub_1001FC42C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch interface expensive: %@", v5);
}

void sub_1001FC470()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch registration display status: %@", v5);
}

void sub_1001FC4B4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC524()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC560()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "RatDataUsageMetric:#D primary interface: %@, secondary interface %@", v2, 0x16u);
}

void sub_1001FC5E4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC620()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC65C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC698()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received registration state update for non-data context %@", v5);
}

void sub_1001FC6DC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received RAT update for non-data context %@", v5);
}

void sub_1001FC720()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received low data mode update for non-data context %@", v5);
}

void sub_1001FC764()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received interface expensive update for non-data context %@", v5);
}

void sub_1001FC7A8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received satellite registration state update for non-data context %@", v5);
}

void sub_1001FC7EC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC944(os_log_t log, double a2, double a3)
{
  v3 = 134545921;
  v4 = a2;
  v5 = 2053;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Handling received results for latitude: %{sensitive}lf, longitude: %{sensitive}lf", &v3, 0x16u);
}

void sub_1001FCAD0(int a1, NSObject *a2)
{
  v3[0] = 67109378;
  v3[1] = 0;
  v4 = 2080;
  v5 = sub_100038F0C(a1);
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "metric:#D needsUpdate = %{BOOL}d, srv_status = %s", v3, 0x12u);
}

void sub_1001FCB68(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "metric:#D Unsupported metric id = 0x%x", v2, 8u);
}

void sub_1001FCBE0(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "metric:#D Could not get average_rsrp from the tile for mcc = %u, mnc = %u", v3, 0xEu);
}

void sub_1001FCC68(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "metric:#D Failed to infer mcc and mnc from serving_plmn = %s", &v3, 0xCu);
}

void sub_1001FCCF0(char *a1, uint64_t *a2)
{
  sub_10003B714(a1, a2);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  LODWORD(v8) = 136315138;
  HIDWORD(v8) = v7;
  sub_10003B724(&_mh_execute_header, v2, v3, "file.helpers:Unable to open metric file %s (fail).", v8);
}

void sub_1001FCD64(char *a1, uint64_t *a2)
{
  sub_10003B714(a1, a2);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  LODWORD(v8) = 136315138;
  HIDWORD(v8) = v7;
  sub_10003B724(&_mh_execute_header, v2, v3, "file.helpers:Unable to open metric file %s for reading (fail)", v8);
}

void sub_1001FCDD8(char *a1, uint64_t *a2, NSObject *a3)
{
  sub_10003B714(a1, a2);
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = *__error();
  v10 = 136315394;
  v11 = v8;
  v12 = 1024;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "file.helpers:Delete failed for %s (errno=%d)", &v10, 0x12u);
}

void sub_1001FCE7C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1001FCEDC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+OOSPredictor]:Error while saving OutOfServiceAreas after next visit update: %@", buf, 0xCu);
}

void sub_1001FCFD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#D Data sim registration status changed to %@", &v2, 0xCu);
}

void sub_1001FD048()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD0B8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD0F4(void *a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Initializing context %@ with home PLMN %@", v5, 0x16u);
}

void sub_1001FD23C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FD300(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Failed to extract FMServingCell from cell info for context %@: %@", v4, 0x16u);
}

void sub_1001FD358()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD3C8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD438()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FD4B8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FD504()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD540()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD57C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD5EC()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD628()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD698()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD708(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 52);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Updating congestion state for data context %@ to %{BOOL}d", buf, 0x12u);
}

void sub_1001FD774()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD85C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD8CC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD93C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD9AC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDA1C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDA58(char a1, _DWORD *a2)
{
  *a2 = 67109120;
  a2[1] = a1 & 1;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1001FDAA0(_DWORD *a1, int a2)
{
  *a1 = 67109120;
  a1[1] = a2;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1001FDAE4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDB20()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDB5C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FDBA8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDC4C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FDC98()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FDCE4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDD20(char a1, _DWORD *a2)
{
  *a2 = 67109120;
  a2[1] = a1 & 1;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1001FDD68()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDDA4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDE7C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDEB8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDF5C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMTimeSeriesModel]:Could not convert event timestamp to date, aborting", buf, 2u);
}

void sub_1001FE0A0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching CongestionArea: %@", v5);
}

void sub_1001FE180(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+CongestionPredictor]:#D a: %d, b: %d", buf, 0xEu);
}

void sub_1001FE1D8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching bad cells: %@", v5);
}

void sub_1001FE21C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching good cells: %@", v5);
}

void sub_1001FE294()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching CongestionOccurrences: %@", v5);
}

void sub_1001FE2D8(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "main:failed to initialize temporary directory (%d): %s", v5, 0x12u);
}

void sub_1001FE384(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "main:Error setting jetsam priority: %d", v2, 8u);
}

void sub_1001FE51C(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "FederatedMobility[FMCoreTelephonyController]:Error while fetching registration status: %@", a2);
}

void sub_1001FE568(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreTelephonyController]:#D Cannot retrieve context for UUID %@", &v2, 0xCu);
}

void sub_1001FE6F8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "FederatedMobility[FMCoreTelephonyController]:Unable to fetch subscription info: %@", a2);
}

void sub_1001FE8A4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Unable to fetch the subscription info: %@", v5);
}

void sub_1001FE8E8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Unable to fetch current data subscription context: %@", v5);
}

void sub_1001FE998()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "SignalBarMetric:#D Skipping initialization for existing context %@", v4);
}

void sub_1001FE9E8()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "SignalBarMetric:#D Initializing data for context %@", v4);
}

void sub_1001FEA38()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "SignalBarMetric:#D Ignoring non-SIM context %@", v4);
}

void sub_1001FEABC()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Unable to extract RAT for context %@, setting RAT to default value %@", v4, v5);
}

void sub_1001FEB00(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Successfully received RAT %@ for context %@", v4, v5);
}

void sub_1001FEB4C()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Unable to extract serving cell info for context %@, setting RAT to default value %@", v4, v5);
}

void sub_1001FEB90()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Unable to extract cell info for context %@, setting RAT to default value %@", v4, v5);
}

void sub_1001FEBD4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Unable to allocate state for context %@", v5);
}

void sub_1001FEC58()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Signal strength of context %@ changed: %@ bars", v4, v5);
}

void sub_1001FEC9C()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Received signal strength change callback. Triggering the metric for old signal strength: %@, setting new signal strength: %@", v4, v5);
}

void sub_1001FECE0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received signal strength callback for context %@ but signal strength did not change", v5);
}

void sub_1001FED24()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received signal strength change callback for unknown context: %@", v5);
}

void sub_1001FED9C()
{
  sub_100023B60();
  v3 = 2048;
  v4 = v0;
  v5 = 2048;
  v6 = 100;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "SignalBarMetric:#D Signal bar event duration (%llu ms = (int) %llu s) is less than %llu ms, not submitting a CA event", v2, 0x20u);
}

void sub_1001FEE98()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Received RAT change callback. Triggering the metric for old RAT: %@, setting new RAT: %@", v4, v5);
}

void sub_1001FEEDC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received RAT change callback for unknown context: %@", v5);
}

void sub_1001FEF88()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Aborting PLMN change update due to error while converting MNC: %@", v5);
}

void sub_1001FEFCC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Aborting PLMN change update due to error while converting MCC: %@", v5);
}

void sub_1001FF010()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received PLMN change callback for unknown context: %@", v5);
}

void sub_1001FF054()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Received display status change callback. Triggering the metric for old display status: %@, setting new display status: %@", v4, v5);
}

void sub_1001FF098()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received display status change callback for unknown context: %@", v5);
}

void sub_1001FF110()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Current data context changed to %@, but we did not successfully initialize. Running initialization", v5);
}

void sub_1001FF154()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Current data context changed to %@", v5);
}

void sub_1001FF210(uint64_t a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Received event : %s, payload = %s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_1001FF2A8(os_log_t log)
{
  v1 = 138412290;
  v2 = off_1002D4F80;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D %@: Initializing WISTrialExperimentsManager", &v1, 0xCu);
}

void sub_1001FF32C(os_log_t log)
{
  v1 = 138412290;
  v2 = off_1002D4F80;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D %@: initialized trialClient for Wireless project ID", &v1, 0xCu);
}

void sub_1001FF3E8(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "file:#D Metric File(%s, %d): skipping because no such file id", buf, 0x12u);
}

void sub_1001FF440(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = (*(*a2 + 16))(a2);
  v6 = 136315394;
  v7 = v4;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "snapshotter:Error linking log files from '%s': %s", &v6, 0x16u);
}

void sub_1001FF50C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_10005DDFC())
  {
    (*(*v1 + 16))(v1);
    sub_10005DDDC(&_mh_execute_header, v2, v3, "snapshotter:#E EXCEPT: filesystem_error('%s')", v4, v5, v6, v7, 2u);
  }
}

void sub_1001FF5B8(NSObject **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1001FF5F4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "agg:#D Skipping coverage stats update for primary config profile 0x%x", v2, 8u);
}

void sub_1001FF66C(int *a1, int *a2, os_log_t log)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "agg:Error adding new trigger to GeoServicesRequestStatus; already exists! Trigger(cid=0x%x, trid=0x%x, sid=%u)", v6, 0x14u);
}

void sub_1001FF704(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "agg:Unable to create the cellularServiceStatus object, cannot update the CellularCoverage stats", buf, 2u);
}

void sub_1001FF744(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "agg:Unable to get the updated metric buffer, cannot update the CellularCoverage stats", buf, 2u);
}

void sub_1001FF784(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "agg:#D Got trigger from source 0x%x with triggering component id 0x%x (they're different!).  Using triggering component id.", v3, 0xEu);
}

void sub_1001FF80C(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "timer:#D ****** Check in: Existing criteria %s *********", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1001FF880(void *a1, uint64_t *a2)
{
  sub_100068B74(a1, a2, __stack_chk_guard);
  sub_100068B98();
  sub_100068BB0(&_mh_execute_header, v2, v3, "config:#D Internal Hotship detected: %d; (%s)", v4, v5);
}

void sub_1001FF8E8(void *a1, uint64_t *a2)
{
  sub_100068B74(a1, a2, __stack_chk_guard);
  sub_100068B98();
  sub_100068BB0(&_mh_execute_header, v2, v3, "config:#D Carrier Hotship detected: %d; (%s)", v4, v5);
}

void sub_1001FF9F0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "caobserver:Error while parsing received CA event: %@", buf, 0xCu);
}

void sub_1001FFA48(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "caobserver:WISCoreAnalyticsObserver received nil or invalid(%@) event: %@", a3, 0x16u);
}

void sub_1001FFAC0()
{
  sub_10006F7B4();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FFB34()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FFBA4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FFC14()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FFC60()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10006F7DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FFCAC(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  sub_100023B54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001FFD2C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:Failed to get tags for events %@", &v3, 0xCu);
}

void sub_1001FFDDC(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1001FFE10(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_10006F7DC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1001FFE44()
{
  sub_10006F7B4();
  sub_10006F7DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FFEB8()
{
  sub_10006F7B4();
  sub_10006F7DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FFF2C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10006F7DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FFF78(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001FFFBC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10006F7DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100200008(uint64_t a1, uint64_t a2)
{
  sub_10002FD64(a1, a2, 5.778e-34);
  *(v2 + 12) = 2048;
  *(v2 + 14) = v3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Generating tags for anomaly %@, based on %lu events", v4, 0x16u);
}

void sub_10020005C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100200124(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100200178()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002001B4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002001F0(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_10006F7DC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100200224(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_10006F7DC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100200258()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1002002AC()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1002003B8(char a1, char a2, os_log_t log)
{
  v3 = "kOne";
  if (a2)
  {
    v3 = "kTwo";
  }

  if (a1 == 2)
  {
    v4 = "kUnknown";
  }

  else
  {
    v4 = v3;
  }

  v5 = 136315138;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Received cellular status on simSlot : %s", &v5, 0xCu);
}

void sub_100200460(os_log_t log)
{
  v1 = 136315138;
  v2 = "kUnknown";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Simslot in the payload is %s", &v1, 0xCu);
}

void sub_100200518(char a1, NSObject *a2)
{
  v2 = "kOne";
  if (a1 == 1)
  {
    v2 = "kTwo";
  }

  if (a1 == 2)
  {
    v3 = "kUnknown";
  }

  else
  {
    v3 = v2;
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Timer is found without an active service anomaly on slot : %s", &v4, 0xCu);
}

void sub_1002006C4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100200908(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Error while loading persistent store %@: %@", buf, 0x16u);
}

void sub_100200970()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100200A14()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:No or invalid persistent store in coordinator, aborting (%@, %@)", v2, 0x16u);
}

void sub_100200A98(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_100023B54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100200B1C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching configuration: %@", v5);
}

void sub_100200BC8(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_100023B54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100200C40()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving Configuration: %@", v5);
}

void sub_100200C84()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of Configurations: %@", v5);
}

void sub_100200CC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching Configurations to delete: %@", v5);
}

void sub_100200D0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing Configurations: %@", v5);
}

void sub_100200D50()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving updated ServingCell: %@", v5);
}

void sub_100200DC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving ServingCell: %@", v5);
}

void sub_100200E0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching ServingCell with predicate %@", v5);
}

void sub_100200E50()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching ServingCell: %@", v5);
}

void sub_100200EFC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OutOfServiceAreas without nextVisit: %@", v5);
}

void sub_100200F40()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving updated OutOfServiceArea: %@", v5);
}

void sub_100200FEC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving OutOfServiceArea: %@", v5);
}

void sub_100201030()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OutOfServiceArea: %@", v5);
}

void sub_100201110()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving LocationOfInterest: %@", v5);
}

void sub_100201154()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.9284e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching LocationOfInterest with predicate %{sensitive}@", v5);
}

void sub_100201198()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching location of interest: %@", v5);
}

void sub_100201244()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.9284e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D No matching LocationOfInterest found for predicate %{sensitive}@", v5);
}

void sub_100201288()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of OOS entities: %@", v5);
}

void sub_1002012CC()
{
  sub_100023B60();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Number of OOS areas in database (%lu) is below or at threshold (%lu)", v2, 0x16u);
}

void sub_100201350()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OOS areas to delete: %@", v5);
}

void sub_1002013C8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching orphaned serving cells: %@", v5);
}

void sub_10020140C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing orphaned serving cells: %@", v5);
}

void sub_100201484()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching orphaned locations of interest: %@", v5);
}

void sub_1002014C8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing orphaned locations of interest: %@", v5);
}

void sub_100201540()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching OOS areas with predicate %@", v5);
}

void sub_100201584()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching OOS durations with predicate %@", v5);
}

void sub_1002015C8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OOS durations to delete: %@", v5);
}

void sub_10020160C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing OOS durations: %@", v5);
}

void sub_1002016EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of OOS Areas: %@", v5);
}

void sub_100201730()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of OOS Durations: %@", v5);
}

void sub_100201774()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching OOS area with highest seen count: %@", v5);
}

void sub_1002017B8(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Got an exception while executing CoreData block: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1002018A0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing OOS areas: %@", v5);
}

void sub_1002018EC()
{
  if (__cxa_guard_acquire(&qword_1002D8340))
  {
    qword_1002D8348 = 850045863;
    xmmword_1002D8350 = 0u;
    unk_1002D8360 = 0u;
    xmmword_1002D8370 = 0u;
    qword_1002D8380 = 0;

    __cxa_guard_release(&qword_1002D8340);
  }
}

void sub_100201958(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TelephonyStateRelay:Received unexpected CT notification %@", &v2, 0xCu);
}

void sub_100201AD4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "TelephonyStateRelay:#D Capabilities changed for context %@: %@", v4, 0x16u);
}

void sub_100201C64(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "TelephonyStateRelay:Error while copying registration status: %@", a2);
}

void sub_100201D18(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "TelephonyStateRelay:Error while fetching airplane mode status after callback: %@", a2);
}

void sub_100201D64(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "TelephonyStateRelay:Error while fetching subscriptions info: %@", a2);
}

void sub_100201E18(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "TelephonyStateRelay:#D Callback for context %@, testing call with localSenderIdentityUUID %@", v4, 0x16u);
}

void sub_100201F18(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMOOSPredictor]:Error while fetching OutOfServiceArea: %@", buf, 0xCu);
}

void sub_100201FD8(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSPredictor]:#D a: %d, b: %d", buf, 0xEu);
}

void sub_100202030(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSPredictor]:#D Sorting next cells using seen count: %{BOOL}d", v2, 8u);
}

void sub_1002020E0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Fetching CellMapNode with predicate %@", v5);
}

void sub_100202124()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202194()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while fetching CellMapNode: %@", v5);
}

void sub_1002021D8()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMap]:Non-matching GCI while attempting to update node %@ with metric %@", v2, 0x16u);
}

void sub_10020225C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapNode after updating: %@", v5);
}

void sub_1002022A0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapEdge after updating: %@", v5);
}

void sub_1002022E4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Fetching CellMapEdges with predicate %@", v5);
}

void sub_100202328()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202398()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202408()
{
  sub_100023B60();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_10008793C(&_mh_execute_header, v0, v1, "FederatedMobility[FMCoreData+CellMap]:#D Number of CellMapNodes in database (%lu) is below or at threshold (%lu)", v2, v3);
}

void sub_10020247C()
{
  sub_100023B60();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_10008793C(&_mh_execute_header, v0, v1, "FederatedMobility[FMCoreData+CellMap]:#D Deleting %lu CellMapNodes over the threshold (%lu)", v2, v3);
}

void sub_1002024F0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Deleting CellMapNodes and associated edges with predicate %@", v5);
}

void sub_100202534()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Deleting CellMapEdges with predicate %@", v5);
}

void sub_100202578(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMap]:Error while deleting %@: %@", v4, 0x16u);
}

void sub_1002025D0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMap]:Error while saving after removing %@: %@", v4, 0x16u);
}

void sub_10020265C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapNode: %@", v5);
}

void sub_1002026D4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapEdge: %@", v5);
}

void sub_100202718()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Fetching CellMapEdge with predicate %@", v5);
}

void sub_10020275C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002027CC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while fetching CellMapEdge: %@", v5);
}

void sub_100202810()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020284C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002028BC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020292C(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_100029854();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002029A4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002029E0()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202A1C(void *a1, uint64_t a2)
{
  v3 = __cxa_begin_catch(a1);
  v4 = *(a2 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*v3 + 16))(v3);
    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "conv:#E Runtime error when converting metric to XPC: %s", &v6, 0xCu);
  }
}

void sub_100202AE8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202B58()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202C08(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Updating context %@", buf, 0xCu);
}

void sub_100202E10()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Received display status change for context %@: %@", v2, 0x16u);
}

void sub_100202E94()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202F04()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202F74()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202FE4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203020()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203090(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Failed to extract FMServingCell from cell info for context %@: %@", buf, 0x16u);
}

void sub_1002030F8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203134()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002031A4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203214()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203284()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002032F4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203364()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002033A0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203488(uint64_t *a1)
{
  sub_100098E28(a1);
  *v2 = 136380675;
  *(v2 + 4) = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[WISToCAEventSanitizer] Failed to process array of strings: %{private}s", v4, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1002034EC(uint64_t *a1)
{
  sub_100098E28(a1);
  *v2 = 136380675;
  *(v2 + 4) = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[WISToCAEventSanitizer] Failed to process array of bytes: %{private}s", v4, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1002036D0(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreLocationController]:CoreLocation encountered an error: %@ (code %ld)", buf, 0x16u);
}

void sub_100203738()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203774()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002037B0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002037EC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203828()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203864()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002038A0(void *a1, NSObject *a2)
{
  v4 = 134218240;
  v5 = [a1 numAirplaneModeToggles];
  v6 = 1024;
  v7 = [a1 isAirplaneModeActive];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D handleAirplaneModeStatusChanged: numAirplaneModeToggles %lu, isAirplaneModeActive %{BOOL}d", &v4, 0x12u);
}

void sub_100203950(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D Registration status changed for context %@: %@", a3, a4);
}

void sub_1002039AC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Ignoring registration state for context %@, airplane mode is active", v5);
}

void sub_1002039F0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Got registration state change for non-data context %@", v5);
}

void sub_100203A34()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D Data status changed for context %@: %@", v2, 0x16u);
}

void sub_100203AB8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Got data status change for non-data context %@", v5);
}

void sub_100203AFC()
{
  sub_10002FD58();
  sub_10009E280(v1, v2, v3, 3.8521e-34);
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D handleSignalStrengthChanged: numCellularSignalBarChanges %lu, currentCellularSignalBars %@", v4, v5);
}

void sub_100203B44()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Received signal strength info without display bars for context %@", v5);
}

void sub_100203B88()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Received nil signal strength info for context %@", v5);
}

void sub_100203BCC()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203C08()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203C44()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203C80()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203CF0()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203D9C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203E0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D handleBasebandBootStateChangeWithState: numBasebandCrashes %lu, numBasebandMTBFCrashes %lu", a1, a4);
}

void sub_100203E58()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203EC8()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203F38(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10002FD70(&_mh_execute_header, a2, a3, "DailyWirelessUsageMetric:#D handleABMServerStateChangedWithState: numCommCenterCrashes %lu", a1);
}

void sub_100203F74()
{
  sub_10002FD58();
  sub_10009E280(v1, v2, v3, 3.8521e-34);
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D handleDataIconChanged: numCellularRATIconChanges %lu, currentDataIcon %@", v4, v5);
}

void sub_100203FBC()
{
  sub_100023B60();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D %@ changed to %{BOOL}d", v2, 0x12u);
}

void sub_100204044()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002040B4()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204124(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_100023B54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10020419C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020420C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020427C()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "DailyWirelessUsageMetric:Failed to retrieve registration status for context %@: %@", v2, 0x16u);
}

void sub_100204388()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002043C4()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204434()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002044A4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002044E0()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020451C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204558(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1002045AC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020461C(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100204670()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002046E0()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100204760()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002047D0()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002048B4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204924()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1002049A4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204A14()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204A84()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204AC0()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204AFC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204B6C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204C24(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMConfiguration]:Missing configuration value for key %@", &v2, 0xCu);
}

void sub_100204C9C(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMConfiguration]:#D Is internal build: %{BOOL}d", v2, 8u);
}

void sub_100204D18(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMConfiguration]:One or more errors while initializing FMConfiguration: %@. Aborting", buf, 0xCu);
}

void sub_100204D70(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMConfiguration]:#D FedMobility Config: %@: %@", &v3, 0x16u);
}

void sub_100204DF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMConfiguration]:Key %@ missing in active config during compatibility check", &v2, 0xCu);
}

void sub_100204E70()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204EAC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204EE8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204F24()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205014()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205178(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+CellMapPredictor]:#D No learnings for GCI %@", &v3, 0xCu);
}

void sub_1002051F4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMapPredictor]:CellMapNode does not have as many GCI components than expected: %@", buf, 0xCu);
}

void sub_100205360(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Can't create TSEvent for unknown type %d", v2, 8u);
}

void sub_1002053D8(__int16 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Can't create TSEvent for unknown type %d", buf, 8u);
}

void sub_100205424()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving TSEvent: %@", v5);
}

void sub_100205468(__int16 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Successfully stored new event of type %d", buf, 8u);
}

void sub_100205528(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Failed to create TSEvent", buf, 2u);
}

void sub_100205568(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Event timestamp after anomaly timestamp, skipping", buf, 2u);
}

void sub_1002055A8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving TSAnomaly: %@", v5);
}

void sub_1002055EC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100205690()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving TSPrediction: %@", v5);
}

void sub_1002056D4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002057AC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error fetching number of TSAnomaly entities: %@", v5);
}

void sub_1002057F0()
{
  sub_100023B60();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Number of TSAnomalies in database (%lu) is below or at threshold (%lu)", v2, 0x16u);
}

void sub_100205874()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching TSAnomalies to delete: %@", v5);
}

void sub_1002058EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving after removing TSAnomaly: %@", v5);
}

void sub_100205930()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching orphaned TSPredictions: %@", v5);
}

void sub_100205974()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving after removing orphaned TSPredictions: %@", v5);
}

void sub_1002059B8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002059F4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching orphaned TSAnomalyTags: %@", v5);
}

void sub_100205A38()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving after removing orphaned TSAnomalyTags: %@", v5);
}

void sub_100205A7C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205AB8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Fetching anomalies with predicate %@", v4, 0xCu);
}

void sub_100205B08()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching anomalies to delete: %@", v5);
}

void sub_100205B80(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  LODWORD(v3) = 136315138;
  HIDWORD(v3) = a2;
  sub_1000C45E0(&_mh_execute_header, a2, a3, "WISABC:#D Event %s has no ABC rule", v3);
}

void sub_100205BF8(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_1000C45D4();
  sub_1000C45E0(&_mh_execute_header, v3, v4, "WISABC:#D Event %s has no ABC rule", v5);
}

void sub_100205C70()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205CAC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205CE8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205D24()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205D60()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205D9C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205DD8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205E14(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_1002D8590))
  {
    if (*(a1 + 23) >= 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = *a1;
    }

    qword_1002D8588 = v2;
    __cxa_guard_release(&qword_1002D8590);
  }
}

void sub_100205E64()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205EA0(char *a1, uint64_t *a2)
{
  if (__cxa_guard_acquire(&qword_1002D85A0))
  {
    if (*a1 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    qword_1002D8598 = v4;
    __cxa_guard_release(&qword_1002D85A0);
  }
}

void sub_100205EF4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205F30()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205F6C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205FA8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205FE4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100206020(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_1002060B8(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_10020614C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_1002061E4(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_100206278(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_100206310(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1002063A4(uint64_t *a1)
{
  sub_1000C4554(a1, __stack_chk_guard);
  sub_1000C45D4();
  sub_100029854();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100206414(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_1002064B8(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206554(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1002065F0(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_10020668C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206730(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_1002067D4(uint64_t *a1)
{
  sub_1000C4554(a1, __stack_chk_guard);
  sub_1000C45D4();
  sub_100029854();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100206844(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4590();
    (*(*v1 + 16))(v1);
    sub_1000C45A0();
    sub_1000C4580();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100206918(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4590();
    (*(*v1 + 16))(v1);
    sub_1000C45A0();
    sub_1000C4580();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1002069EC(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4590();
    (*(*v1 + 16))(v1);
    sub_1000C45A0();
    sub_1000C4580();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100206AC0(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206B64(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206C08(uint64_t *a1)
{
  sub_1000C4554(a1, __stack_chk_guard);
  sub_1000C45D4();
  sub_100029854();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100206C78(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206D14(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206DB0(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206E4C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206EF0(uint64_t *a1)
{
  sub_1000C4554(a1, __stack_chk_guard);
  sub_1000C45D4();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "WISABC:#D Skipping ABC, for %s for success case", v2, 0xCu);
}

void sub_1002070B8(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMModel]:#D Removing state for %lu contexts, %lu subscriptions in use", buf, 0x16u);
}

void sub_1002076A0(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "insight_config:#D config = %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

float sub_100207714(int **a1, NSObject *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7[0] = 67109888;
  v7[1] = v2;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v5;
  v12 = 1024;
  v13 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "insight_config:#D Crowdsourced learnings PLMN: MCC, MNC, LimitedServiceCount, InServiceCount: %d, %d, %d, %d", v7, 0x1Au);
  return result;
}

void sub_1002077B0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "insight_config:Crowdsourced OOS learnings: Count is not valid", buf, 2u);
}

void sub_100207828(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "submit:OSAMoveFileForSubmission failed for file '%s'!", &v4, 0xCu);
}

uint64_t sub_100207924(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  sub_1000D7488((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = (a1[5] + 1);
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

uint64_t sub_1002079D0(uint64_t a1)
{
  sub_1000D7578(a1);
  while (2)
  {
    while (2)
    {
      v2 = sub_100207924(a1) + 1;
      result = 4;
      v4 = "invalid string: missing closing quote";
      switch(v2)
      {
        case 0:
          goto LABEL_82;
        case 1:
          v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
          goto LABEL_82;
        case 2:
          v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
          goto LABEL_82;
        case 3:
          v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
          goto LABEL_82;
        case 4:
          v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
          goto LABEL_82;
        case 5:
          v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
          goto LABEL_82;
        case 6:
          v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
          goto LABEL_82;
        case 7:
          v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
          goto LABEL_82;
        case 8:
          v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
          goto LABEL_82;
        case 9:
          v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
          goto LABEL_82;
        case 10:
          v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
          goto LABEL_82;
        case 11:
          v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_82;
        case 12:
          v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
          goto LABEL_82;
        case 13:
          v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
          goto LABEL_82;
        case 14:
          v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
          goto LABEL_82;
        case 15:
          v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
          goto LABEL_82;
        case 16:
          v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
          goto LABEL_82;
        case 17:
          v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
          goto LABEL_82;
        case 18:
          v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
          goto LABEL_82;
        case 19:
          v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
          goto LABEL_82;
        case 20:
          v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
          goto LABEL_82;
        case 21:
          v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
          goto LABEL_82;
        case 22:
          v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
          goto LABEL_82;
        case 23:
          v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
          goto LABEL_82;
        case 24:
          v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
          goto LABEL_82;
        case 25:
          v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
          goto LABEL_82;
        case 26:
          v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
          goto LABEL_82;
        case 27:
          v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
          goto LABEL_82;
        case 28:
          v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
          goto LABEL_82;
        case 29:
          v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
          goto LABEL_82;
        case 30:
          v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
          goto LABEL_82;
        case 31:
          v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
          goto LABEL_82;
        case 32:
          v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
          goto LABEL_82;
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
          v8 = *(a1 + 16);
          goto LABEL_7;
        case 35:
          return result;
        case 93:
          v10 = sub_100207924(a1);
          v4 = "invalid string: forbidden character after backslash";
          if (!v12 & v11)
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_82;
            }

            goto LABEL_7;
          }

          break;
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
          *&v16 = 0xBF00000080;
          v5 = a1;
          v6 = 2;
          goto LABEL_14;
        case 225:
          v7 = xmmword_100243B30;
          goto LABEL_5;
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 239:
        case 240:
          v7 = xmmword_100243B20;
          goto LABEL_5;
        case 238:
          v7 = xmmword_100243B10;
LABEL_5:
          v16 = v7;
          v5 = a1;
          v6 = 4;
          goto LABEL_14;
        case 241:
          v17 = 0xBF00000080;
          v9 = &xmmword_100244818;
          goto LABEL_13;
        case 242:
        case 243:
        case 244:
          v17 = 0xBF00000080;
          v9 = &xmmword_100244830;
          goto LABEL_13;
        case 245:
          v17 = 0xBF00000080;
          v9 = &xmmword_100244848;
LABEL_13:
          v16 = *v9;
          v5 = a1;
          v6 = 6;
LABEL_14:
          if ((sub_1000D75D0(v5, &v16, v6) & 1) == 0)
          {
            return 14;
          }

          continue;
        default:
          v4 = "invalid string: ill-formed UTF-8 byte";
          goto LABEL_82;
      }

      break;
    }

    switch(v10)
    {
      case 'n':
        LOBYTE(v8) = 10;
        goto LABEL_7;
      case 'o':
      case 'p':
      case 'q':
      case 's':
        goto LABEL_82;
      case 'r':
        LOBYTE(v8) = 13;
        goto LABEL_7;
      case 't':
        LOBYTE(v8) = 9;
        goto LABEL_7;
      case 'u':
        v13 = sub_100207EEC(a1);
        if (v13 == -1)
        {
          goto LABEL_84;
        }

        v14 = v13;
        if ((v13 & 0xFFFFFC00) != 0xD800)
        {
          if ((v13 & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_82;
          }

          if (v13 > 127)
          {
            if (v13 <= 0x7FF)
            {
              std::string::push_back((a1 + 72), (v13 >> 6) | 0xC0);
              goto LABEL_39;
            }

            if (!HIWORD(v13))
            {
              std::string::push_back((a1 + 72), (v13 >> 12) | 0xE0);
              goto LABEL_38;
            }

LABEL_37:
            std::string::push_back((a1 + 72), (v14 >> 18) | 0xF0);
            std::string::push_back((a1 + 72), (v14 >> 12) & 0x3F | 0x80);
LABEL_38:
            std::string::push_back((a1 + 72), (v14 >> 6) & 0x3F | 0x80);
LABEL_39:
            LOBYTE(v8) = v14 & 0x3F | 0x80;
            goto LABEL_7;
          }

          LOBYTE(v8) = v13;
LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (sub_100207924(a1) != 92 || sub_100207924(a1) != 117)
        {
LABEL_85:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_82;
        }

        v15 = sub_100207EEC(a1);
        if (v15 != -1)
        {
          if (v15 >> 10 != 55)
          {
            goto LABEL_85;
          }

          v14 = v15 + (v14 << 10) - 56613888;
          goto LABEL_37;
        }

LABEL_84:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_82:
        *(a1 + 96) = v4;
        return 14;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_100207E9C(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    --*(result + 56);
  }

  return result;
}

uint64_t sub_100207EEC(uint64_t a1)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v8 = xmmword_100243B40;
  while (1)
  {
    v4 = *(&v8 + v3);
    sub_100207924(a1);
    v5 = *(a1 + 16);
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v2 = ((v6 << v4) + v2);
    v3 += 4;
    if (v3 == 16)
    {
      return v2;
    }
  }

  if ((v5 - 65) <= 5)
  {
    v6 = v5 - 55;
    goto LABEL_7;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100207FFC(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_100023B88();
  sub_100035910(&_mh_execute_header, v5, v6, "Could not create Insight type Satellite Cell Classifier", v7, v8, v9, v10, v12);
  result = *a2;
  *a3 = 0;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_1002082B0(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = sub_100207924(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = sub_100207924(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void sub_100208314(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "persist:Unable to create DB with error %d", v2, 8u);
}

void sub_10020838C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "persist:#D Done executing DB command.", buf, 2u);
}

void sub_100208C3C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to retrieve battery info: %@", buf, 0xCu);
}

void sub_100208C94(uint64_t a1)
{
  v6 = *(a1 + 80);
  sub_100023B54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100208D0C(uint64_t *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *a1;
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "client:#D Client mgr sending msg of type 0x%llx on connection %p", buf, 0x16u);
}

void sub_100208E50(uint64_t a1)
{
  v6 = *(a1 + 80);
  sub_100023B54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100208EC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Unable to fetch subscription info: %@", v5);
}

void sub_100208F0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Unable to fetch current data subscription context: %@", v5);
}

void sub_100208F50(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100055954(&_mh_execute_header, "OOSRecoveryMetric:#D Removing state for %lu contexts, %lu subscriptions in use", a1, a4);
}

void sub_100208F9C()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "OOSRecoveryMetric:#D Skipping initialization for existing context %@", v4);
}

void sub_100208FEC()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "OOSRecoveryMetric:#D Initializing data for new context %@", v4);
}

void sub_10020907C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Error while fetching registration display status: %@", v5);
}

void sub_1002090C0()
{
  sub_1000F5B54();
  v1 = v0;
  v3 = v2;
  sub_1000427FC(v2, v0, v4, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "OOSRecoveryMetric:Error while fetching cell info for context %@: %@", v5, 0x16u);
}

void sub_10020911C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Successfully received initial cell info for context %@", v5);
}

void sub_100209160()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Cell info is null for context %@", v5);
}

void sub_1002091A4()
{
  sub_1000F5B54();
  v1 = v0;
  sub_1000427FC(v0, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "OOSRecoveryMetric:#D Successfully initialized state for context %@: %@", v4, v5);
}

void sub_1002091EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Could not allocate state for context %@", v5);
}

void sub_100209264()
{
  sub_1000F5B54();
  v1 = v0;
  sub_1000427FC(v0, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "OOSRecoveryMetric:#D Display status of context %@ changed. New display status: %@", v4, v5);
}

void sub_1002092AC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Sending OOS event for context %@", v5);
}

void sub_1002092F0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Registration state for context %@ indicates in service, but cell info not up to date", v5);
}

void sub_100209334()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Starting OOS tracking for context %@", v5);
}

void sub_100209378()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received display status change callback for context %@, but display status did not change", v5);
}

void sub_1002093BC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received display status change callback for unknown context: %@", v5);
}

void sub_100209400()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Received null display status for context %@", v5);
}

void sub_100209444()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Current data context changed to %@", v5);
}

void sub_100209488()
{
  sub_1000F5B54();
  v1 = v0;
  v3 = v2;
  sub_1000427FC(v2, v0, v4, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "OOSRecoveryMetric:Could not extract cell information for context %@: %@", v5, 0x16u);
}

void sub_1002094E4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received Cell Monitor update for context %@", v5);
}

void sub_100209528()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received cell monitor update for unknown context: %@", v5);
}

void sub_1002095A0(char a1, NSObject *a2, uint64_t a3)
{
  v3 = @"off";
  if (a1)
  {
    v3 = @"on";
  }

  v4 = 138412290;
  v5 = v3;
  sub_100055970(&_mh_execute_header, a2, a3, "OOSRecoveryMetric:#D Airplane mode status switched to %@", &v4);
}

void sub_100209628(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = a1;
  sub_100055970(&_mh_execute_header, a2, a3, "OOSRecoveryMetric:#D Sent CA event for state %@", &v3);
}

void sub_1002098F0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "conn:CoreAnalytics shim: Metadata already loaded for 0x%x", v2, 8u);
}

void sub_100209968(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "conn:CoreAnalytics shim: Filesytem error on metadata directory! Looking for component 0x%x", v3, 8u);
}

void sub_1002099E4(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "conn:#D Sending observation for metric: %s.", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100209A58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "WISABC:#D CTProperty: %@ is disabled", &v2, 0xCu);
}

void sub_100209AD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "WISABC:#D CTProperty: %@ is enabled", &v2, 0xCu);
}

void sub_100209C4C(_DWORD *a1, NSObject *a2)
{
  v2 = a1[22];
  v3 = a1[23];
  v4 = a1[24];
  v5[0] = 67109632;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "trig:#D handleWisdTrigger: AWD component Trigger(cid=0x%x, trid=0x%x, sid=%u) completed", v5, 0x14u);
}

void sub_100209CE0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 60);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "trig:#D handleWisdTrigger: Calling callback on metric: 0x%x", v3, 8u);
}

void sub_10020A034(void *a1, uint64_t a2, void *a3)
{
  __cxa_begin_catch(a1);
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    sub_100008350(v4);
  }
}

void sub_10020A068(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#D No build update; build is %{public}s", &v2, 0xCu);
}

void sub_10020A3CC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A43C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Unable to fetch subscription info: %@", v5);
}

void sub_10020A480()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Unable to fetch current data subscription context: %@", v5);
}

void sub_10020A4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100136C10();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10020A518()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10020A56C()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10020A600()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A670()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020A6AC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A71C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A78C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020A854()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Current data context changed to %@", v5);
}

void sub_10020A898()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received data status change callback for context %@, but data bearer technology and data connection type did not change", v5);
}

void sub_10020A8DC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received data status change callback for unknown context: %@", v5);
}

void sub_10020A920()
{
  sub_10002FD58();
  sub_100136C1C(v1, v2, v3, 1.5047e-36);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10020A970()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received Cell Monitor update for context %@", v5);
}

void sub_10020A9B4()
{
  sub_100136BFC();
  sub_1000427FC(v2, v3, v4, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10020AA04()
{
  sub_100136BFC();
  *v2 = 138412547;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2113;
  *(v2 + 14) = v4;
  sub_100136C10();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10020AA64()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Cell monitor for context %@ updated but values did not change", v5);
}

void sub_10020AAA8()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020AAF4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received cell monitor update for unknown context: %@", v5);
}

void sub_10020AB38()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020AB84()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received display status change callback for context %@, but display status did not change", v5);
}

void sub_10020ABC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received display status change callback for unknown context: %@", v5);
}

void sub_10020AC0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Received null display status for context %@", v5);
}

void sub_10020AC50()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020AC8C()
{
  sub_100055944();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1 & 1;
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10020ACEC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite status change callback for context %@, but status did not change", v5);
}

void sub_10020AD30()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite status change callback for unknown context: %@", v5);
}

void sub_10020AD74()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020ADC0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite provisioning status change callback for context %@, but status did not change", v5);
}

void sub_10020AE04()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite provisioning status change callback for unknown context: %@", v5);
}

void sub_10020AE48()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Error while fetching registration display status: %@", v5);
}

void sub_10020AE8C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Error while fetching data status: %@", v5);
}

void sub_10020AED0()
{
  sub_100136BFC();
  sub_1000427FC(v2, v3, v4, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10020AF20()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Successfully received initial cell info for context %@", v5);
}

void sub_10020AF64()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Cell info is null for context %@", v5);
}

void sub_10020AFA8()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020AFF4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Could not allocate state for context %@", v5);
}

void sub_10020B038()
{
  sub_10002FD58();
  sub_100136C1C(v1, v2, v3, 1.5047e-36);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10020B088()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020B0C4(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "PowerUsageMetric:#D Received event %s", &v2, 0xCu);
}

void sub_10020B13C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PowerUsageMetric:Failed to convert incoming metric: %@", &v2, 0xCu);
}

void sub_10020B2F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "PowerUsageMetric:#D Submitting event payload: %@", &v2, 0xCu);
}

void sub_10020B370(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PowerUsageMetric:Retrieved property is null or of unexpected class (%@, %@)", buf, 0x16u);
}

void sub_10020B418(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+Congestion]:Incoming RAT type of cell (%@) is not equal to existing RAT type (%@)", buf, 0x16u);
}

void sub_10020B488()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving updated CongestionCell: %@", v5);
}

void sub_10020B500()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving CongestionCell: %@", v5);
}

void sub_10020B544()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching CongestionCells with predicate %@", v5);
}

void sub_10020B588()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching CongestionCell: %@", v5);
}

void sub_10020B62C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving updated CongestionPrevCell: %@", v5);
}

void sub_10020B6A4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching CongestionPrevCell with predicate %@", v5);
}

void sub_10020B6E8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching CongestionPrevCell: %@", v5);
}

void sub_10020B7EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving updated CongestionArea: %@", v5);
}

void sub_10020B898()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving CongestionArea: %@", v5);
}

void sub_10020B8DC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching CongestionArea: %@", v5);
}

void sub_10020B988()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching congestion areas with predicate %@", v5);
}

void sub_10020B9CC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching congestion areas to delete: %@", v5);
}

void sub_10020BA44()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching congestion occurrences with predicate %@", v5);
}

void sub_10020BA88()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching congestion occurrences to delete: %@", v5);
}

void sub_10020BACC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing congestion occurrences: %@", v5);
}

void sub_10020BB10()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error fetching number of CongestionArea entities: %@", v5);
}

void sub_10020BB54(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+Congestion]:#D Number of congestion areas in database (%lu) is below or at threshold (%lu)", &v3, 0x16u);
}

void sub_10020BBDC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing congestion areas: %@", v5);
}

void sub_10020BC20()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching orphaned congestion cells: %@", v5);
}

void sub_10020BC64()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing orphaned congestion cells: %@", v5);
}

void sub_10020BCDC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching orphaned congestion prev cells: %@", v5);
}

void sub_10020BD20()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing orphaned congestion prev cells: %@", v5);
}

void sub_10020BE20(void *a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = [objc_msgSend(a1 "description")];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ManagedConfiguration BB profile installed returned error=%s", &v3, 0xCu);
}

void sub_10020BEB0(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#D Notified of effective settings changed, SafetyDataSubmissionAllowed = %{BOOL}d", v2, 8u);
}

void sub_10020BF78()
{
  if (__cxa_guard_acquire(&qword_1002D55C0))
  {
    __cxa_atexit(sub_10014898C, &unk_1002D5540, &_mh_execute_header);

    __cxa_guard_release(&qword_1002D55C0);
  }
}

void sub_10020BFE0()
{
  v0 = __cxa_guard_acquire(&qword_1002D5608);
  if (v0)
  {
    sub_10015E4EC(v0, &unk_1002D55C8, &_mh_execute_header);

    __cxa_guard_release(&qword_1002D5608);
  }
}

void sub_10020C038()
{
  if (__cxa_guard_acquire(&qword_1002D5640))
  {
    off_1002D5610 = &off_1002D5610;
    off_1002D5618 = &off_1002D5610;
    qword_1002D5638 = 0;
    qword_1002D5630 = 0;
    qword_1002D5620 = 0;
    unk_1002D5628 = &qword_1002D5630;
    __cxa_atexit(sub_10015181C, &off_1002D5610, &_mh_execute_header);

    __cxa_guard_release(&qword_1002D5640);
  }
}

void sub_10020C0B4()
{
  v0 = __cxa_guard_acquire(&qword_1002D56C8);
  if (v0)
  {
    qword_1002D56B0 = 0;
    *algn_1002D56B8 = 0;
    qword_1002D56C0 = 0;
    sub_10015E50C(v0, &qword_1002D56B0, &_mh_execute_header);
    __cxa_guard_release(&qword_1002D56C8);
  }
}

void sub_10020C100()
{
  v0 = __cxa_guard_acquire(&qword_1002D5688);
  if (v0)
  {
    sub_10015E4EC(v0, &unk_1002D5648, &_mh_execute_header);

    __cxa_guard_release(&qword_1002D5688);
  }
}

void sub_10020C158()
{
  v0 = __cxa_guard_acquire(&qword_1002D56A8);
  if (v0)
  {
    qword_1002D5690 = 0;
    *algn_1002D5698 = 0;
    qword_1002D56A0 = 0;
    sub_10015E50C(v0, &qword_1002D5690, &_mh_execute_header);

    __cxa_guard_release(&qword_1002D56A8);
  }
}

void sub_10020C1B8(char *a1, uint64_t *a2)
{
  sub_100160C6C(a1, a2, __stack_chk_guard);
  LODWORD(v5) = 136315138;
  HIDWORD(v5) = v2;
  sub_10003B724(&_mh_execute_header, v3, v4, "cahandler:Unknown CA event: %s", v5);
}

void sub_10020C268(os_log_t log)
{
  v1 = 136315138;
  v2 = "CellularDataDiagnosticsSuite";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "cahandler:#D Speed is called by: %s", &v1, 0xCu);
}

void sub_10020C2EC(char *a1, uint64_t *a2)
{
  sub_100160C6C(a1, a2, __stack_chk_guard);
  LODWORD(v5) = 136315138;
  HIDWORD(v5) = v2;
  sub_10003B724(&_mh_execute_header, v3, v4, "cahandler:Failed to open the write log for speed event, %s", v5);
}

void sub_10020C358(void *a1)
{
  __cxa_begin_catch(a1);
  v1 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "cahandler:Failed to parse event data to json", v2, 2u);
  }
}

void sub_10020C3CC(void *a1)
{
  sub_1001FA15C();
  if (v2 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12) & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = 12;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a1[2] = v3;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t MetricFileMetadataHelper::MetricFileMetadataHelper()
{
  return MetricFileMetadataHelper::MetricFileMetadataHelper();
}

{
  return MetricFileMetadataHelper::MetricFileMetadataHelper();
}

uint64_t ctu::path_join_impl()
{
  return ctu::path_join_impl();
}

{
  return ctu::path_join_impl();
}

uint64_t ctu::cf::assign()
{
  return ctu::cf::assign();
}

{
  return ctu::cf::assign();
}

{
  return ctu::cf::assign();
}

uint64_t wis::asString()
{
  return wis::asString();
}

{
  return wis::asString();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

void std::logic_error::~logic_error(std::logic_error *this)
{
  std::logic_error::~logic_error(this);
}

{
  std::logic_error::~logic_error(this);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);
}

{
  std::runtime_error::~runtime_error(this);
}

void std::invalid_argument::~invalid_argument(std::invalid_argument *this)
{
  std::invalid_argument::~invalid_argument(this);
}

{
  std::invalid_argument::~invalid_argument(this);
}

uint64_t std::istream::~istream()
{
  return std::istream::~istream();
}

{
  return std::istream::~istream();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return std::to_string(retstr, __val);
}

{
  return std::to_string(retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = _lldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}