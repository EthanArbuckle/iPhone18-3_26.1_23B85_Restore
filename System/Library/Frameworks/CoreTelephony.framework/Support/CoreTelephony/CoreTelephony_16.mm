uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 100);
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
  v6 = *(v5 + 100);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
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
  v7 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v8 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v9 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v10 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v11 = *(v5 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 88), a2, a4);
    if ((*(v5 + 100) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  v12 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 100);
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
  v13 = *(v5 + 92);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v13, a2, a4);
}

uint64_t awd::metrics::CommCenterCellularPlanSimSetupUsage::ByteSize(awd::metrics::CommCenterCellularPlanSimSetupUsage *this)
{
  v2 = *(this + 25);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 25);
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
      v2 = *(this + 25);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(this + 6);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_21:
  v9 = *(this + 7);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v13 = *(this + 9);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 25);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

LABEL_25:
  v11 = *(this + 8);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_33:
  v15 = *(this + 5);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v2 = *(this + 25);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 1);
LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_104;
  }

  if ((v2 & 0x100) != 0)
  {
    v21 = *(this + 6);
    v22 = *(v21 + 23);
    v23 = v22;
    v24 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v25 = *(v21 + 23);
    }

    else
    {
      v25 = v24;
    }

    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      v22 = *(v21 + 23);
      v24 = *(v21 + 8);
      v2 = *(this + 25);
      v23 = *(v21 + 23);
    }

    else
    {
      v26 = 1;
    }

    if (v23 < 0)
    {
      v22 = v24;
    }

    v4 = (v4 + v26 + v22 + 1);
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_69;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v27 = *(this + 7);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v2 = *(this + 25);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v4 = (v4 + v32 + v28 + 1);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_69:
  v33 = *(this + 8);
  v34 = *(v33 + 23);
  v35 = v34;
  v36 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v37 = *(v33 + 23);
  }

  else
  {
    v37 = v36;
  }

  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
    v34 = *(v33 + 23);
    v36 = *(v33 + 8);
    v2 = *(this + 25);
    v35 = *(v33 + 23);
  }

  else
  {
    v38 = 1;
  }

  if (v35 < 0)
  {
    v34 = v36;
  }

  v4 = (v4 + v38 + v34 + 1);
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_87;
  }

LABEL_78:
  v39 = *(this + 9);
  v40 = *(v39 + 23);
  v41 = v40;
  v42 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v43 = *(v39 + 23);
  }

  else
  {
    v43 = v42;
  }

  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
    v40 = *(v39 + 23);
    v42 = *(v39 + 8);
    v2 = *(this + 25);
    v41 = *(v39 + 23);
  }

  else
  {
    v44 = 1;
  }

  if (v41 < 0)
  {
    v40 = v42;
  }

  v4 = (v4 + v44 + v40 + 1);
  if ((v2 & 0x1000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_96;
  }

LABEL_87:
  v45 = *(this + 10);
  v46 = *(v45 + 23);
  v47 = v46;
  v48 = *(v45 + 8);
  if ((v46 & 0x80u) == 0)
  {
    v49 = *(v45 + 23);
  }

  else
  {
    v49 = v48;
  }

  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
    v46 = *(v45 + 23);
    v48 = *(v45 + 8);
    v2 = *(this + 25);
    v47 = *(v45 + 23);
  }

  else
  {
    v50 = 1;
  }

  if (v47 < 0)
  {
    v46 = v48;
  }

  v4 = (v4 + v50 + v46 + 1);
  if ((v2 & 0x2000) == 0)
  {
LABEL_49:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_100;
  }

LABEL_96:
  v51 = *(this + 22);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 1;
    v2 = *(this + 25);
  }

  else
  {
    v52 = 2;
  }

  v4 = (v52 + v4);
  if ((v2 & 0x4000) != 0)
  {
LABEL_100:
    v53 = *(this + 23);
    if (v53 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 1;
    }

    else
    {
      v54 = 2;
    }

    v4 = (v54 + v4);
  }

LABEL_104:
  *(this + 24) = v4;
  return v4;
}

void awd::metrics::CommCenterCellularPlanSimSetupUsage::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v5 = *(lpsrc + 25);
  if (v5)
  {
    if (v5)
    {
      v6 = lpsrc[1];
      *(this + 25) |= 1u;
      this[1] = v6;
      v5 = *(lpsrc + 25);
      if ((v5 & 2) == 0)
      {
LABEL_7:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(lpsrc + 16);
    *(this + 25) |= 2u;
    *(this + 16) = v7;
    v5 = *(lpsrc + 25);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(lpsrc + 5);
    *(this + 25) |= 4u;
    *(this + 5) = v8;
    v5 = *(lpsrc + 25);
    if ((v5 & 8) == 0)
    {
LABEL_9:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(lpsrc + 6);
    *(this + 25) |= 8u;
    *(this + 6) = v9;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x10) == 0)
    {
LABEL_10:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(lpsrc + 7);
    *(this + 25) |= 0x10u;
    *(this + 7) = v10;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x20) == 0)
    {
LABEL_11:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(lpsrc + 8);
    *(this + 25) |= 0x20u;
    *(this + 8) = v11;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = *(lpsrc + 9);
    *(this + 25) |= 0x40u;
    *(this + 9) = v12;
    v5 = *(lpsrc + 25);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_21:
    v13 = lpsrc[5];
    *(this + 25) |= 0x80u;
    v14 = this[5];
    if (v14 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v14, v13);
    v5 = *(lpsrc + 25);
  }

LABEL_24:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = lpsrc[6];
    *(this + 25) |= 0x100u;
    v17 = this[6];
    if (v17 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v5 = *(lpsrc + 25);
    if ((v5 & 0x200) == 0)
    {
LABEL_27:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v18 = lpsrc[7];
  *(this + 25) |= 0x200u;
  v19 = this[7];
  if (v19 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x400) == 0)
  {
LABEL_28:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_40:
  v20 = lpsrc[8];
  *(this + 25) |= 0x400u;
  v21 = this[8];
  if (v21 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x800) == 0)
  {
LABEL_29:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_43:
  v22 = lpsrc[9];
  *(this + 25) |= 0x800u;
  v23 = this[9];
  if (v23 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x1000) == 0)
  {
LABEL_30:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_46:
  v24 = lpsrc[10];
  *(this + 25) |= 0x1000u;
  v25 = this[10];
  if (v25 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v5 = *(lpsrc + 25);
  if ((v5 & 0x2000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_49:
  v26 = *(lpsrc + 22);
  *(this + 25) |= 0x2000u;
  *(this + 22) = v26;
  if ((*(lpsrc + 25) & 0x4000) != 0)
  {
LABEL_32:
    v15 = *(lpsrc + 23);
    *(this + 25) |= 0x4000u;
    *(this + 23) = v15;
  }
}

void sub_2373BE9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergeFrom(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, const awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 14) |= 1u;
    v10 = *(this + 1);
    if (v10 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 4);
  *(this + 14) |= 2u;
  *(this + 4) = v11;
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 20);
  *(this + 14) |= 4u;
  *(this + 20) = v12;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 21);
  *(this + 14) |= 8u;
  *(this + 21) = v13;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v15 = *(a2 + 23);
    *(this + 14) |= 0x20u;
    *(this + 23) = v15;
    v4 = *(a2 + 14);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  v14 = *(a2 + 22);
  *(this + 14) |= 0x10u;
  *(this + 22) = v14;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v16 = *(a2 + 12);
  *(this + 14) |= 0x40u;
  *(this + 12) = v16;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 3);
    *(this + 14) |= 0x80u;
    *(this + 3) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 14) |= 0x100u;
      *(this + 4) = v6;
      v4 = *(a2 + 14);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 5);
      *(this + 14) |= 0x200u;
      v8 = *(this + 5);
      if (v8 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_2373BEC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
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

void awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::~CommCenterTransferPlanListingStatus_ListingInfo(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this)
{
  *this = &unk_284A5F340;
  awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F340;
  awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    if (v1)
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

    *(this + 48) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    v1 = *(this + 56);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 32) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 40);
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

  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergePartialFromCodedStream(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_80;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_88;
            }

            goto LABEL_47;
          }

          if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_96;
            }

            goto LABEL_47;
          }

          if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_104;
            }

            goto LABEL_47;
          }

          if (v7 != 10 || v8 != 2)
          {
            goto LABEL_47;
          }

          v11 = *(this + 14);
LABEL_112:
          *(this + 14) = v11 | 0x200;
          if (*(this + 5) == v4)
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_35;
        }

        if (v8 != 2)
        {
          goto LABEL_47;
        }

        *(this + 14) |= 1u;
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
        v9 = *(a2 + 2);
        if (v15 < v9 && *v15 == 16)
        {
          v12 = v15 + 1;
          *(a2 + 1) = v12;
LABEL_35:
          if (v12 >= v9 || (v16 = *v12, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v12 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 14) |= 2u;
          if (v17 < v9 && *v17 == 24)
          {
            v19 = v17 + 1;
            *(a2 + 1) = v19;
LABEL_56:
            v37 = 0;
            if (v19 >= v9 || (v23 = *v19, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
              if (!result)
              {
                return result;
              }

              v23 = v37;
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v24 = v19 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 20) = v23 != 0;
            *(this + 14) |= 4u;
            if (v24 < v9 && *v24 == 32)
            {
              v21 = v24 + 1;
              *(a2 + 1) = v21;
              goto LABEL_64;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_56;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v21 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_64:
      v37 = 0;
      if (v21 >= v9 || (v25 = *v21, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
        if (!result)
        {
          return result;
        }

        v25 = v37;
        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v26 = v21 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 21) = v25 != 0;
      *(this + 14) |= 8u;
      if (v26 < v9 && *v26 == 40)
      {
        v10 = v26 + 1;
        *(a2 + 1) = v10;
LABEL_72:
        v37 = 0;
        if (v10 >= v9 || (v27 = *v10, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v27 = v37;
          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v28 = v10 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 22) = v27 != 0;
        *(this + 14) |= 0x10u;
        if (v28 < v9 && *v28 == 48)
        {
          v18 = v28 + 1;
          *(a2 + 1) = v18;
LABEL_80:
          v37 = 0;
          if (v18 >= v9 || (v29 = *v18, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
            if (!result)
            {
              return result;
            }

            v29 = v37;
            v30 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v30 = v18 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 23) = v29 != 0;
          *(this + 14) |= 0x20u;
          if (v30 < v9 && *v30 == 56)
          {
            v13 = v30 + 1;
            *(a2 + 1) = v13;
LABEL_88:
            if (v13 >= v9 || (v31 = *v13, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 12) = v31;
              v32 = v13 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 14) |= 0x40u;
            if (v32 < v9 && *v32 == 64)
            {
              v20 = v32 + 1;
              *(a2 + 1) = v20;
LABEL_96:
              if (v20 >= v9 || (v33 = *v20, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v33;
                v34 = v20 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 14) |= 0x80u;
              if (v34 < v9 && *v34 == 72)
              {
                v22 = v34 + 1;
                *(a2 + 1) = v22;
LABEL_104:
                if (v22 >= v9 || (v35 = *v22, v35 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v35;
                  v36 = v22 + 1;
                  *(a2 + 1) = v36;
                }

                v11 = *(this + 14) | 0x100;
                *(this + 14) = v11;
                if (v36 < v9 && *v36 == 82)
                {
                  *(a2 + 1) = v36 + 1;
                  goto LABEL_112;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_72;
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

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 22), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 23), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 32), a2, a4);
    if ((*(v5 + 56) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
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
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::ByteSize(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this)
{
  v2 = *(this + 14);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (v2)
  {
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
      v2 = *(this + 14);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 4);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
  }

LABEL_19:
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v4 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2373DF0D0), v14)) + v3);
  if ((v2 & 0x40) != 0)
  {
    v15 = *(this + 12);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 14);
  }

LABEL_26:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
      v2 = *(this + 14);
    }

    if ((v2 & 0x200) != 0)
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
  }

  *(this + 13) = v4;
  return v4;
}

void awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::CheckTypeAndMergeFrom(awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::CommCenterTransferPlanListingStatus::~CommCenterTransferPlanListingStatus(awd::metrics::CommCenterTransferPlanListingStatus *this)
{
  *this = &unk_284A5F3B8;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2383CAF80](v5, 0x80C80B8603338);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CommCenterTransferPlanListingStatus::~CommCenterTransferPlanListingStatus(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 56))
  {
    *(this + 8) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::MergePartialFromCodedStream(awd::metrics::CommCenterTransferPlanListingStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v13 >= v10 || (v14 = *v13, v14 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v14;
            v15 = v13 + 1;
            *(a2 + 1) = v15;
          }

          *(this + 14) |= 1u;
          if (v15 < v10 && *v15 == 16)
          {
            v11 = v15 + 1;
            *(a2 + 1) = v11;
            goto LABEL_32;
          }
        }

        else
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_32:
          if (v11 >= v10 || (v17 = *v11, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v17;
            v18 = v11 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 14) |= 2u;
          if (v18 < v10 && *v18 == 26)
          {
            while (1)
            {
              *(a2 + 1) = v18 + 1;
LABEL_40:
              v19 = *(this + 7);
              v20 = *(this + 6);
              if (v20 >= v19)
              {
                if (v19 == *(this + 8))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                  v19 = *(this + 7);
                }

                *(this + 7) = v19 + 1;
                operator new();
              }

              v21 = *(this + 2);
              *(this + 6) = v20 + 1;
              v22 = *(v21 + 8 * v20);
              v34 = 0;
              v23 = *(a2 + 1);
              if (v23 >= *(a2 + 2) || *v23 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
                {
                  return 0;
                }
              }

              else
              {
                v34 = *v23;
                *(a2 + 1) = v23 + 1;
              }

              v24 = *(a2 + 14);
              v25 = *(a2 + 15);
              *(a2 + 14) = v24 + 1;
              if (v24 >= v25)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v26 = *(a2 + 14);
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 == v27)
              {
                *(a2 + 14) = v28;
              }

              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v18 >= v8)
              {
                break;
              }

              v29 = *v18;
              if (v29 != 26)
              {
                if (v29 != 32)
                {
                  goto LABEL_1;
                }

                v12 = v18 + 1;
                *(a2 + 1) = v12;
                goto LABEL_58;
              }
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 2)
        {
          goto LABEL_21;
        }

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

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_58:
      if (v12 >= v8 || (v30 = *v12, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 11) = v30;
        v31 = v12 + 1;
        *(a2 + 1) = v31;
      }

      *(this + 14) |= 8u;
      if (v31 < v8 && *v31 == 40)
      {
        v9 = v31 + 1;
        *(a2 + 1) = v9;
LABEL_66:
        if (v9 >= v8 || (v32 = *v9, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v32;
          v33 = v9 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 14) |= 0x10u;
        if (v33 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_66;
    }

LABEL_21:
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

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 56);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 44), a2, a4);
    v8 = *(v5 + 56);
  }

  if ((v8 & 0x10) != 0)
  {
    v9 = *(v5 + 48);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterTransferPlanListingStatus::ByteSize(awd::metrics::CommCenterTransferPlanListingStatus *this)
{
  LOBYTE(v2) = *(this + 56);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (*(this + 56))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 14);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v6 = *(this + 11);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
  if ((v2 & 0x10) != 0)
  {
LABEL_18:
    v8 = *(this + 12);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_22:
  v10 = *(this + 6);
  v11 = (v10 + v3);
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::ByteSize(*(*(this + 2) + 8 * v12));
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 = (v14 + v11 + v15);
      ++v12;
    }

    while (v12 < *(this + 6));
  }

  *(this + 13) = v11;
  return v11;
}

void awd::metrics::CommCenterTransferPlanListingStatus::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v5 = *(this + 6);
  v6 = *(lpsrc + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 2));
  LODWORD(v7) = *(lpsrc + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
      }

      v9 = *&lpsrc[2][8 * v8];
      v10 = *(this + 7);
      v11 = *(this + 6);
      if (v11 >= v10)
      {
        if (v10 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 2));
          v10 = *(this + 7);
        }

        *(this + 7) = v10 + 1;
        operator new();
      }

      v12 = this[2];
      *(this + 6) = v11 + 1;
      awd::metrics::CommCenterTransferPlanListingStatus_ListingInfo::MergeFrom(*&v12[8 * v11], v9);
      ++v8;
      v7 = *(lpsrc + 6);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(lpsrc + 56);
  if (!v13)
  {
    return;
  }

  if ((lpsrc[7] & 1) == 0)
  {
    if ((lpsrc[7] & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    v16 = *(lpsrc + 10);
    *(this + 14) |= 2u;
    *(this + 10) = v16;
    v13 = *(lpsrc + 14);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v15 = lpsrc[1];
  *(this + 14) |= 1u;
  this[1] = v15;
  v13 = *(lpsrc + 14);
  if ((v13 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v13 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_23:
  v17 = *(lpsrc + 11);
  *(this + 14) |= 8u;
  *(this + 11) = v17;
  if ((lpsrc[7] & 0x10) != 0)
  {
LABEL_19:
    v14 = *(lpsrc + 12);
    *(this + 14) |= 0x10u;
    *(this + 12) = v14;
  }
}

void sub_2373C027C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsCounts_2eproto(awd::metrics *this)
{
  if (qword_2810D8860)
  {
    (*(*qword_2810D8860 + 8))(qword_2810D8860);
  }

  if (qword_2810D8868)
  {
    (*(*qword_2810D8868 + 8))(qword_2810D8868);
  }

  if (qword_2810D8870)
  {
    (*(*qword_2810D8870 + 8))(qword_2810D8870);
  }

  if (qword_2810D8878)
  {
    (*(*qword_2810D8878 + 8))(qword_2810D8878);
  }

  if (qword_2810D8880)
  {
    (*(*qword_2810D8880 + 8))(qword_2810D8880);
  }

  if (qword_2810D8888)
  {
    (*(*qword_2810D8888 + 8))(qword_2810D8888);
  }

  if (qword_2810D8890)
  {
    (*(*qword_2810D8890 + 8))(qword_2810D8890);
  }

  if (qword_2810D8898)
  {
    (*(*qword_2810D8898 + 8))(qword_2810D8898);
  }

  if (qword_2810D88A0)
  {
    (*(*qword_2810D88A0 + 8))(qword_2810D88A0);
  }

  if (qword_2810D88A8)
  {
    (*(*qword_2810D88A8 + 8))(qword_2810D88A8);
  }

  if (qword_2810D88B0)
  {
    (*(*qword_2810D88B0 + 8))(qword_2810D88B0);
  }

  if (qword_2810D88B8)
  {
    (*(*qword_2810D88B8 + 8))(qword_2810D88B8);
  }

  if (qword_2810D88C0)
  {
    (*(*qword_2810D88C0 + 8))(qword_2810D88C0);
  }

  if (qword_2810D88C8)
  {
    (*(*qword_2810D88C8 + 8))(qword_2810D88C8);
  }

  if (qword_2810D88D0)
  {
    (*(*qword_2810D88D0 + 8))(qword_2810D88D0);
  }

  if (qword_2810D88D8)
  {
    (*(*qword_2810D88D8 + 8))(qword_2810D88D8);
  }

  if (qword_2810D88E0)
  {
    (*(*qword_2810D88E0 + 8))(qword_2810D88E0);
  }

  if (qword_2810D88E8)
  {
    (*(*qword_2810D88E8 + 8))(qword_2810D88E8);
  }

  if (qword_2810D88F0)
  {
    (*(*qword_2810D88F0 + 8))(qword_2810D88F0);
  }

  if (qword_2810D88F8)
  {
    (*(*qword_2810D88F8 + 8))(qword_2810D88F8);
  }

  result = qword_2810D8900;
  if (qword_2810D8900)
  {
    v2 = *(*qword_2810D8900 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::MOSMSSendSuccessfulCount::MOSMSSendSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FAC0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MOSMSSendFailedCount::MOSMSSendFailedCount(uint64_t this)
{
  *this = &unk_284A5FB38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::MTSMSRecvSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FBB0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTSMSRecvFailedCount::MTSMSRecvFailedCount(uint64_t this)
{
  *this = &unk_284A5FC28;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MOMMSSendSuccessfulCount::MOMMSSendSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FCA0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MOMMSSendFailedCount::MOMMSSendFailedCount(uint64_t this)
{
  *this = &unk_284A5FD18;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::MTMMSRecvSuccessfulCount(uint64_t this)
{
  *this = &unk_284A5FD90;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::MTMMSRecvFailedCount::MTMMSRecvFailedCount(uint64_t this)
{
  *this = &unk_284A5FE08;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::metrics::DataSentOnInternetCtxCount::DataSentOnInternetCtxCount(awd::metrics::DataSentOnInternetCtxCount *this)
{
  *this = &unk_284A5FE80;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double awd::metrics::DataRecvedOnInternetCtxCount::DataRecvedOnInternetCtxCount(awd::metrics::DataRecvedOnInternetCtxCount *this)
{
  *this = &unk_284A5FEF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t awd::metrics::VVMNotificationsRecvedCount::VVMNotificationsRecvedCount(uint64_t this)
{
  *this = &unk_284A5FF70;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::SRUMB_Attempt_Count::SRUMB_Attempt_Count(uint64_t this)
{
  *this = &unk_284A5FFE8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::metrics::SoundUMB_ATM_REG_Duration::SoundUMB_ATM_REG_Duration(awd::metrics::SoundUMB_ATM_REG_Duration *this)
{
  *this = &unk_284A60060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  return result;
}

void awd::metrics::MOCallsSuccessfulCount::~MOCallsSuccessfulCount(awd::metrics::MOCallsSuccessfulCount *this)
{
  *this = &unk_284A5F700;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F700;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallsSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallsSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MOCallsSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallsSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallsSuccessfulCount::ByteSize(awd::metrics::MOCallsSuccessfulCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOCallsSuccessfulCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C0F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOCallsFailedCount::~MOCallsFailedCount(awd::metrics::MOCallsFailedCount *this)
{
  *this = &unk_284A5F778;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F778;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallsFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallsFailedCount::MergePartialFromCodedStream(awd::metrics::MOCallsFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallsFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallsFailedCount::ByteSize(awd::metrics::MOCallsFailedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOCallsFailedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOCallsEndedNormallyCount::~MOCallsEndedNormallyCount(awd::metrics::MOCallsEndedNormallyCount *this)
{
  *this = &unk_284A5F7F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F7F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallsEndedNormallyCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallsEndedNormallyCount::MergePartialFromCodedStream(awd::metrics::MOCallsEndedNormallyCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallsEndedNormallyCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallsEndedNormallyCount::ByteSize(awd::metrics::MOCallsEndedNormallyCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOCallsEndedNormallyCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C19C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOCallEndedDropCount::~MOCallEndedDropCount(awd::metrics::MOCallEndedDropCount *this)
{
  *this = &unk_284A5F868;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F868;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOCallEndedDropCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOCallEndedDropCount::MergePartialFromCodedStream(awd::metrics::MOCallEndedDropCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOCallEndedDropCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOCallEndedDropCount::ByteSize(awd::metrics::MOCallEndedDropCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOCallEndedDropCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C1F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallPickedUpCount::~MTCallPickedUpCount(awd::metrics::MTCallPickedUpCount *this)
{
  *this = &unk_284A5F8E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F8E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallPickedUpCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallPickedUpCount::MergePartialFromCodedStream(awd::metrics::MTCallPickedUpCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallPickedUpCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallPickedUpCount::ByteSize(awd::metrics::MTCallPickedUpCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTCallPickedUpCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C2478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallsRejectedCount::~MTCallsRejectedCount(awd::metrics::MTCallsRejectedCount *this)
{
  *this = &unk_284A5F958;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F958;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallsRejectedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallsRejectedCount::MergePartialFromCodedStream(awd::metrics::MTCallsRejectedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallsRejectedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallsRejectedCount::ByteSize(awd::metrics::MTCallsRejectedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTCallsRejectedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C29D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallsEndedNormallyCount::~MTCallsEndedNormallyCount(awd::metrics::MTCallsEndedNormallyCount *this)
{
  *this = &unk_284A5F9D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5F9D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallsEndedNormallyCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallsEndedNormallyCount::MergePartialFromCodedStream(awd::metrics::MTCallsEndedNormallyCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallsEndedNormallyCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallsEndedNormallyCount::ByteSize(awd::metrics::MTCallsEndedNormallyCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTCallsEndedNormallyCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C2F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTCallsEndedDropCount::~MTCallsEndedDropCount(awd::metrics::MTCallsEndedDropCount *this)
{
  *this = &unk_284A5FA48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FA48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTCallsEndedDropCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTCallsEndedDropCount::MergePartialFromCodedStream(awd::metrics::MTCallsEndedDropCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTCallsEndedDropCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTCallsEndedDropCount::ByteSize(awd::metrics::MTCallsEndedDropCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTCallsEndedDropCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C3480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOSMSSendSuccessfulCount::~MOSMSSendSuccessfulCount(awd::metrics::MOSMSSendSuccessfulCount *this)
{
  *this = &unk_284A5FAC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FAC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOSMSSendSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOSMSSendSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MOSMSSendSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOSMSSendSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOSMSSendSuccessfulCount::ByteSize(awd::metrics::MOSMSSendSuccessfulCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOSMSSendSuccessfulCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C39D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOSMSSendFailedCount::~MOSMSSendFailedCount(awd::metrics::MOSMSSendFailedCount *this)
{
  *this = &unk_284A5FB38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FB38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOSMSSendFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOSMSSendFailedCount::MergePartialFromCodedStream(awd::metrics::MOSMSSendFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOSMSSendFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOSMSSendFailedCount::ByteSize(awd::metrics::MOSMSSendFailedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOSMSSendFailedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C3F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTSMSRecvSuccessfulCount::~MTSMSRecvSuccessfulCount(awd::metrics::MTSMSRecvSuccessfulCount *this)
{
  *this = &unk_284A5FBB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FBB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MTSMSRecvSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTSMSRecvSuccessfulCount::ByteSize(awd::metrics::MTSMSRecvSuccessfulCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTSMSRecvSuccessfulCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C4488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTSMSRecvFailedCount::~MTSMSRecvFailedCount(awd::metrics::MTSMSRecvFailedCount *this)
{
  *this = &unk_284A5FC28;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FC28;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTSMSRecvFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTSMSRecvFailedCount::MergePartialFromCodedStream(awd::metrics::MTSMSRecvFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTSMSRecvFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTSMSRecvFailedCount::ByteSize(awd::metrics::MTSMSRecvFailedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTSMSRecvFailedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C49E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOMMSSendSuccessfulCount::~MOMMSSendSuccessfulCount(awd::metrics::MOMMSSendSuccessfulCount *this)
{
  *this = &unk_284A5FCA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FCA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOMMSSendSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOMMSSendSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MOMMSSendSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOMMSSendSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOMMSSendSuccessfulCount::ByteSize(awd::metrics::MOMMSSendSuccessfulCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOMMSSendSuccessfulCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C4F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MOMMSSendFailedCount::~MOMMSSendFailedCount(awd::metrics::MOMMSSendFailedCount *this)
{
  *this = &unk_284A5FD18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FD18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MOMMSSendFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MOMMSSendFailedCount::MergePartialFromCodedStream(awd::metrics::MOMMSSendFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MOMMSSendFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MOMMSSendFailedCount::ByteSize(awd::metrics::MOMMSSendFailedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MOMMSSendFailedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C5490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTMMSRecvSuccessfulCount::~MTMMSRecvSuccessfulCount(awd::metrics::MTMMSRecvSuccessfulCount *this)
{
  *this = &unk_284A5FD90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FD90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::MergePartialFromCodedStream(awd::metrics::MTMMSRecvSuccessfulCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTMMSRecvSuccessfulCount::ByteSize(awd::metrics::MTMMSRecvSuccessfulCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTMMSRecvSuccessfulCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C59E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MTMMSRecvFailedCount::~MTMMSRecvFailedCount(awd::metrics::MTMMSRecvFailedCount *this)
{
  *this = &unk_284A5FE08;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FE08;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::MTMMSRecvFailedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MTMMSRecvFailedCount::MergePartialFromCodedStream(awd::metrics::MTMMSRecvFailedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::MTMMSRecvFailedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::MTMMSRecvFailedCount::ByteSize(awd::metrics::MTMMSRecvFailedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::MTMMSRecvFailedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::DataSentOnInternetCtxCount::~DataSentOnInternetCtxCount(awd::metrics::DataSentOnInternetCtxCount *this)
{
  *this = &unk_284A5FE80;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FE80;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::DataSentOnInternetCtxCount::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::DataSentOnInternetCtxCount::MergePartialFromCodedStream(awd::metrics::DataSentOnInternetCtxCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 9) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 4u;
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

uint64_t awd::metrics::DataSentOnInternetCtxCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::DataSentOnInternetCtxCount::ByteSize(awd::metrics::DataSentOnInternetCtxCount *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 9);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_10:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::DataSentOnInternetCtxCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 36);
  if (v5)
  {
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
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[2];
    *(this + 9) |= 2u;
    this[2] = v8;
    if ((*(lpsrc + 9) & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[3];
      *(this + 9) |= 4u;
      this[3] = v6;
    }
  }
}

void sub_2373C6488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::DataRecvedOnInternetCtxCount::~DataRecvedOnInternetCtxCount(awd::metrics::DataRecvedOnInternetCtxCount *this)
{
  *this = &unk_284A5FEF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FEF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::MergePartialFromCodedStream(awd::metrics::DataRecvedOnInternetCtxCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 9) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 4u;
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

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::DataRecvedOnInternetCtxCount::ByteSize(awd::metrics::DataRecvedOnInternetCtxCount *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 9);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_10:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::DataRecvedOnInternetCtxCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 36);
  if (v5)
  {
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
          return;
        }

        goto LABEL_8;
      }
    }

    else if ((*(lpsrc + 36) & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[2];
    *(this + 9) |= 2u;
    this[2] = v8;
    if ((*(lpsrc + 9) & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[3];
      *(this + 9) |= 4u;
      this[3] = v6;
    }
  }
}

void sub_2373C69D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::VVMNotificationsRecvedCount::~VVMNotificationsRecvedCount(awd::metrics::VVMNotificationsRecvedCount *this)
{
  *this = &unk_284A5FF70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FF70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::VVMNotificationsRecvedCount::Clear(uint64_t this)
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

uint64_t awd::metrics::VVMNotificationsRecvedCount::MergePartialFromCodedStream(awd::metrics::VVMNotificationsRecvedCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::VVMNotificationsRecvedCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::VVMNotificationsRecvedCount::ByteSize(awd::metrics::VVMNotificationsRecvedCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::VVMNotificationsRecvedCount::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C6F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::SRUMB_Attempt_Count::~SRUMB_Attempt_Count(awd::metrics::SRUMB_Attempt_Count *this)
{
  *this = &unk_284A5FFE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A5FFE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::SRUMB_Attempt_Count::Clear(uint64_t this)
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

uint64_t awd::metrics::SRUMB_Attempt_Count::MergePartialFromCodedStream(awd::metrics::SRUMB_Attempt_Count *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
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
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
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

uint64_t awd::metrics::SRUMB_Attempt_Count::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::SRUMB_Attempt_Count::ByteSize(awd::metrics::SRUMB_Attempt_Count *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::SRUMB_Attempt_Count::CheckTypeAndMergeFrom(char **this, char **lpsrc)
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

  LOBYTE(v5) = *(lpsrc + 32);
  if (v5)
  {
    if (lpsrc[4])
    {
      v7 = *(lpsrc + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v7;
      v5 = *(lpsrc + 8);
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

    else if ((lpsrc[4] & 2) == 0)
    {
      goto LABEL_7;
    }

    v8 = lpsrc[1];
    *(this + 8) |= 2u;
    this[1] = v8;
    if ((lpsrc[4] & 4) != 0)
    {
LABEL_8:
      v6 = lpsrc[2];
      *(this + 8) |= 4u;
      this[2] = v6;
    }
  }
}

void sub_2373C7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::SoundUMB_ATM_REG_Duration::~SoundUMB_ATM_REG_Duration(awd::metrics::SoundUMB_ATM_REG_Duration *this)
{
  *this = &unk_284A60060;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_284A60060;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2383CAFA0);
}

uint64_t awd::metrics::SoundUMB_ATM_REG_Duration::Clear(uint64_t this)
{
  v1 = *(this + 136);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0u;
    *(this + 64) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0u;
    *(this + 96) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 112) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  *(this + 136) = 0;
  return this;
}

uint64_t awd::metrics::SoundUMB_ATM_REG_Duration::MergePartialFromCodedStream(awd::metrics::SoundUMB_ATM_REG_Duration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v7 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v8;
            v9 = v7 + 1;
            *(a2 + 1) = v9;
LABEL_72:
            *(this + 34) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v24 = v9 + 1;
              *(a2 + 1) = v24;
              goto LABEL_75;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_72;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_75:
        if (v24 >= v6 || (v39 = *v24, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v39;
          v40 = v24 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 34) |= 2u;
        if (v40 >= v6 || *v40 != 24)
        {
          continue;
        }

        v20 = v40 + 1;
        *(a2 + 1) = v20;
LABEL_83:
        if (v20 >= v6 || (v41 = *v20, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v41;
          v42 = v20 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 34) |= 4u;
        if (v42 >= v6 || *v42 != 32)
        {
          continue;
        }

        v22 = v42 + 1;
        *(a2 + 1) = v22;
LABEL_91:
        if (v22 >= v6 || (v43 = *v22, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v43;
          v44 = v22 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 34) |= 8u;
        if (v44 >= v6 || *v44 != 40)
        {
          continue;
        }

        v15 = v44 + 1;
        *(a2 + 1) = v15;
LABEL_99:
        if (v15 >= v6 || (v45 = *v15, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v45;
          v46 = v15 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 34) |= 0x10u;
        if (v46 >= v6 || *v46 != 48)
        {
          continue;
        }

        v27 = v46 + 1;
        *(a2 + 1) = v27;
LABEL_107:
        if (v27 >= v6 || (v47 = *v27, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v47;
          v48 = v27 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 34) |= 0x20u;
        if (v48 >= v6 || *v48 != 56)
        {
          continue;
        }

        v30 = v48 + 1;
        *(a2 + 1) = v30;
LABEL_115:
        if (v30 >= v6 || (v49 = *v30, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v49;
          v50 = v30 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 34) |= 0x40u;
        if (v50 >= v6 || *v50 != 64)
        {
          continue;
        }

        v23 = v50 + 1;
        *(a2 + 1) = v23;
LABEL_123:
        if (v23 >= v6 || (v51 = *v23, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v51;
          v52 = v23 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 34) |= 0x80u;
        if (v52 >= v6 || *v52 != 72)
        {
          continue;
        }

        v33 = v52 + 1;
        *(a2 + 1) = v33;
LABEL_131:
        if (v33 >= v6 || (v53 = *v33, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v53;
          v54 = v33 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 34) |= 0x100u;
        if (v54 >= v6 || *v54 != 80)
        {
          continue;
        }

        v17 = v54 + 1;
        *(a2 + 1) = v17;
LABEL_139:
        if (v17 >= v6 || (v55 = *v17, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v55;
          v56 = v17 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 34) |= 0x200u;
        if (v56 >= v6 || *v56 != 88)
        {
          continue;
        }

        v32 = v56 + 1;
        *(a2 + 1) = v32;
LABEL_147:
        if (v32 >= v6 || (v57 = *v32, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v57;
          v58 = v32 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 34) |= 0x400u;
        if (v58 >= v6 || *v58 != 96)
        {
          continue;
        }

        v14 = v58 + 1;
        *(a2 + 1) = v14;
LABEL_155:
        if (v14 >= v6 || (v59 = *v14, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v59;
          v60 = v14 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 34) |= 0x800u;
        if (v60 >= v6 || *v60 != 104)
        {
          continue;
        }

        v16 = v60 + 1;
        *(a2 + 1) = v16;
LABEL_163:
        if (v16 >= v6 || (v61 = *v16, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v61;
          v62 = v16 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 34) |= 0x1000u;
        if (v62 >= v6 || *v62 != 112)
        {
          continue;
        }

        v29 = v62 + 1;
        *(a2 + 1) = v29;
LABEL_171:
        if (v29 >= v6 || (v63 = *v29, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v63;
          v64 = v29 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 34) |= 0x2000u;
        if (v64 >= v6 || *v64 != 120)
        {
          continue;
        }

        v13 = v64 + 1;
        *(a2 + 1) = v13;
LABEL_179:
        if (v13 >= v6 || (v65 = *v13, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v65;
          v66 = (v13 + 1);
          *(a2 + 1) = v66;
        }

        *(this + 34) |= 0x4000u;
        if (v6 - v66 < 2 || *v66 != 128 || v66[1] != 1)
        {
          continue;
        }

        v21 = (v66 + 2);
        *(a2 + 1) = v21;
LABEL_188:
        if (v21 >= v6 || (v67 = *v21, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v67;
          v68 = (v21 + 1);
          *(a2 + 1) = v68;
        }

        *(this + 34) |= 0x8000u;
        if (v6 - v68 < 2 || *v68 != 136 || v68[1] != 1)
        {
          continue;
        }

        v12 = (v68 + 2);
        *(a2 + 1) = v12;
LABEL_197:
        if (v12 >= v6 || (v69 = *v12, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v69;
          v70 = (v12 + 1);
          *(a2 + 1) = v70;
        }

        *(this + 34) |= 0x10000u;
        if (v6 - v70 < 2 || *v70 != 144 || v70[1] != 1)
        {
          continue;
        }

        v25 = (v70 + 2);
        *(a2 + 1) = v25;
LABEL_206:
        if (v25 >= v6 || (v71 = *v25, v71 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v72 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v71;
          v72 = (v25 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 34) |= 0x20000u;
        if (v6 - v72 < 2 || *v72 != 152 || v72[1] != 1)
        {
          continue;
        }

        v31 = (v72 + 2);
        *(a2 + 1) = v31;
LABEL_215:
        if (v31 >= v6 || (v73 = *v31, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v73;
          v74 = (v31 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 34) |= 0x40000u;
        if (v6 - v74 < 2 || *v74 != 160 || v74[1] != 1)
        {
          continue;
        }

        v35 = (v74 + 2);
        *(a2 + 1) = v35;
LABEL_224:
        if (v35 >= v6 || (v75 = *v35, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v75;
          v76 = (v35 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 34) |= 0x80000u;
        if (v6 - v76 < 2 || *v76 != 168 || v76[1] != 1)
        {
          continue;
        }

        v26 = (v76 + 2);
        *(a2 + 1) = v26;
LABEL_233:
        if (v26 >= v6 || (v77 = *v26, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v78 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v77;
          v78 = (v26 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 34) |= 0x100000u;
        if (v6 - v78 < 2 || *v78 != 176 || v78[1] != 1)
        {
          continue;
        }

        v28 = (v78 + 2);
        *(a2 + 1) = v28;
LABEL_242:
        if (v28 >= v6 || (v79 = *v28, v79 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v80 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v79;
          v80 = (v28 + 1);
          *(a2 + 1) = v80;
        }

        *(this + 34) |= 0x200000u;
        if (v6 - v80 < 2 || *v80 != 184 || v80[1] != 1)
        {
          continue;
        }

        v34 = (v80 + 2);
        *(a2 + 1) = v34;
LABEL_251:
        if (v34 >= v6 || (v81 = *v34, v81 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v82 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v81;
          v82 = (v34 + 1);
          *(a2 + 1) = v82;
        }

        *(this + 34) |= 0x400000u;
        if (v6 - v82 < 2 || *v82 != 192 || v82[1] != 1)
        {
          continue;
        }

        v36 = (v82 + 2);
        *(a2 + 1) = v36;
LABEL_260:
        if (v36 >= v6 || (v83 = *v36, v83 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v84 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v83;
          v84 = (v36 + 1);
          *(a2 + 1) = v84;
        }

        *(this + 34) |= 0x800000u;
        if (v6 - v84 < 2 || *v84 != 200 || v84[1] != 1)
        {
          continue;
        }

        v19 = (v84 + 2);
        *(a2 + 1) = v19;
LABEL_269:
        v10 = *(a2 + 2);
        if (v19 >= v10 || (v85 = *v19, v85 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v86 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v85;
          v86 = (v19 + 1);
          *(a2 + 1) = v86;
        }

        *(this + 34) |= 0x1000000u;
        if (v10 - v86 < 2 || *v86 != 208 || v86[1] != 1)
        {
          continue;
        }

        v18 = (v86 + 2);
        *(a2 + 1) = v18;
LABEL_278:
        if (v18 >= v10 || (v87 = *v18, v87 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v88 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v87;
          v88 = (v18 + 1);
          *(a2 + 1) = v88;
        }

        *(this + 34) |= 0x2000000u;
        if (v10 - v88 < 2 || *v88 != 216 || v88[1] != 1)
        {
          continue;
        }

        v38 = (v88 + 2);
        *(a2 + 1) = v38;
LABEL_287:
        if (v38 >= v10 || (v89 = *v38, v89 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v90 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v89;
          v90 = (v38 + 1);
          *(a2 + 1) = v90;
        }

        *(this + 34) |= 0x4000000u;
        if (v10 - v90 < 2 || *v90 != 224 || v90[1] != 1)
        {
          continue;
        }

        v11 = (v90 + 2);
        *(a2 + 1) = v11;
LABEL_296:
        if (v11 >= v10 || (v91 = *v11, v91 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v92 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v91;
          v92 = (v11 + 1);
          *(a2 + 1) = v92;
        }

        *(this + 34) |= 0x8000000u;
        if (v10 - v92 < 2 || *v92 != 232 || v92[1] != 1)
        {
          continue;
        }

        v37 = (v92 + 2);
        *(a2 + 1) = v37;
LABEL_305:
        if (v37 >= v10 || (v93 = *v37, v93 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v94 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v93;
          v94 = v37 + 1;
          *(a2 + 1) = v94;
        }

        *(this + 34) |= 0x10000000u;
        if (v94 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_66;
        }

        v20 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_83;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_91;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v15 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_99;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v27 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_107;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v30 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_123;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v33 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_131;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v17 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_139;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v32 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_147;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v14 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_155;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_163;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v29 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_171;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_179;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v21 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_188;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v12 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_197;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v25 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v31 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_215;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v35 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_224;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v26 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_233;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v28 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_242;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v34 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_251;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v36 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_260;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v19 = *(a2 + 1);
        goto LABEL_269;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_278;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v38 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_287;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_296;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v37 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_305;
      default:
LABEL_66:
        if ((TagFallback & 7) == 4)
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