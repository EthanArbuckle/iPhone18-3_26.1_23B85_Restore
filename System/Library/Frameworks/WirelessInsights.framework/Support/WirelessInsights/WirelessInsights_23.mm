uint64_t awd::metrics::MetricFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 144);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 144);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 44), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 136), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x800) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(v5 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x1000) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x2000) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xC, *(v5 + 88), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 32), a2, a4);
  if ((*(v5 + 144) & 0x10) != 0)
  {
LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 36), a2, a4);
  }

LABEL_16:
  if (*(v5 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 96) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 104));
  }

  v8 = *(v5 + 144);
  if ((v8 & 0x8000) != 0)
  {
    v9 = *(v5 + 120);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v8 = *(v5 + 144);
  }

  if ((v8 & 0x10000) != 0)
  {
    v17 = *(v5 + 128);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t awd::metrics::MetricFile::ByteSize(awd::metrics::MetricFile *this, unint64_t a2)
{
  v3 = *(this + 36);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
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

  v6 = *(this + 2);
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
    v3 = *(this + 36);
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

  v4 += v11 + v7 + 1;
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v18 = *(this + 8);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v12 = *(this + 3);
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
    v3 = *(this + 36);
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

  v4 += v17 + v13 + 1;
  if ((v3 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v3 & 0x10) != 0)
  {
LABEL_33:
    v20 = *(this + 9);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
  }

LABEL_37:
  v5 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v22 = *(this + 11);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
  }

  if ((v3 & 0x80) != 0)
  {
    v24 = *(this + 34);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v25 = 2;
    }

    v5 += v25;
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_55;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 6);
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
      v3 = *(this + 36);
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

    v5 += v31 + v27 + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_75;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v32 = *(this + 7);
  v33 = *(v32 + 23);
  v34 = v33;
  v35 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v36 = *(v32 + 23);
  }

  else
  {
    v36 = v35;
  }

  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
    v33 = *(v32 + 23);
    v35 = *(v32 + 8);
    v3 = *(this + 36);
    v34 = *(v32 + 23);
  }

  else
  {
    v37 = 1;
  }

  if (v34 < 0)
  {
    v33 = v35;
  }

  v5 += v37 + v33 + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_51:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_84;
  }

LABEL_75:
  v38 = *(this + 8);
  v39 = *(v38 + 23);
  v40 = v39;
  v41 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v42 = *(v38 + 23);
  }

  else
  {
    v42 = v41;
  }

  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
    v39 = *(v38 + 23);
    v41 = *(v38 + 8);
    v3 = *(this + 36);
    v40 = *(v38 + 23);
  }

  else
  {
    v43 = 1;
  }

  if (v40 < 0)
  {
    v39 = v41;
  }

  v5 += v43 + v39 + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_52:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_93;
  }

LABEL_84:
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
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2);
    v45 = *(v44 + 23);
    v47 = *(v44 + 8);
    v3 = *(this + 36);
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

  v5 += v49 + v45 + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_53:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_102;
  }

LABEL_93:
  v50 = *(this + 10);
  v51 = *(v50 + 23);
  v52 = v51;
  v53 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v54 = *(v50 + 23);
  }

  else
  {
    v54 = v53;
  }

  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
    v51 = *(v50 + 23);
    v53 = *(v50 + 8);
    v3 = *(this + 36);
    v52 = *(v50 + 23);
  }

  else
  {
    v55 = 1;
  }

  if (v52 < 0)
  {
    v51 = v53;
  }

  v5 += v55 + v51 + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_54:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_103;
  }

LABEL_102:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11), a2) + 1;
  v3 = *(this + 36);
  if ((v3 & 0x8000) == 0)
  {
LABEL_55:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_112;
  }

LABEL_103:
  v56 = *(this + 15);
  v57 = *(v56 + 23);
  v58 = v57;
  v59 = *(v56 + 8);
  if ((v57 & 0x80u) == 0)
  {
    v60 = *(v56 + 23);
  }

  else
  {
    v60 = v59;
  }

  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2);
    v57 = *(v56 + 23);
    v59 = *(v56 + 8);
    v3 = *(this + 36);
    v58 = *(v56 + 23);
  }

  else
  {
    v61 = 1;
  }

  if (v58 < 0)
  {
    v57 = v59;
  }

  v5 += v61 + v57 + 2;
  if ((v3 & 0x10000) != 0)
  {
LABEL_112:
    v62 = *(this + 16);
    v63 = *(v62 + 23);
    v64 = v63;
    v65 = *(v62 + 8);
    if ((v63 & 0x80u) == 0)
    {
      v66 = *(v62 + 23);
    }

    else
    {
      v66 = v65;
    }

    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
      v63 = *(v62 + 23);
      v65 = *(v62 + 8);
      v64 = *(v62 + 23);
    }

    else
    {
      v67 = 1;
    }

    if (v64 < 0)
    {
      v63 = v65;
    }

    v5 += v67 + v63 + 2;
  }

LABEL_121:
  v68 = *(this + 26);
  v69 = (v68 + v5);
  if (v68 >= 1)
  {
    v70 = 0;
    do
    {
      v71 = awd::metrics::MetricLog::ByteSize(*(*(this + 12) + 8 * v70), a2);
      v72 = v71;
      if (v71 >= 0x80)
      {
        v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71, a2);
      }

      else
      {
        v73 = 1;
      }

      v69 = (v72 + v69 + v73);
      ++v70;
    }

    while (v70 < *(this + 26));
  }

  *(this + 35) = v69;
  return v69;
}

void awd::metrics::protobuf_AssignDesc_AwdOptions_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(this);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v1);
  sub_100007ECC(__p, "AwdOptions.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  v3 = FileByName;
  if (v5 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return;
    }
  }

  else if (FileByName)
  {
    return;
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
}

void awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1002DBDF0 & 1) == 0)
  {
    byte_1002DBDF0 = 1;
    v5 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/AWDMetrics/cpp/AwdOptions.pb.cc", a4);
    wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(v5);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_10024D610, 0x213, v6);
    v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    v8 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v7);
    v10 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v8, 0xC350, 8, 0, 0, v9);
    v11 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v10);
    v13 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v11, 0xC351, 8, 0, 0, v12);
    v14 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v13);
    v16 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v14, 0xC352, 13, 0, 0, v15);
    v17 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v16);
    v19 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v17, 0xC355, 9, 0, 0, v18);
    v20 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v19);
    v22 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v20, 0xC3B4, 9, 0, 0, v21);
    v23 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v22);
    v25 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v23, 0xC3B5, 9, 0, 0, v24);
    v26 = wireless_diagnostics::google::protobuf::MessageOptions::default_instance(v25);
    wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v26, 0xC352, 8, 0, 0, v27);

    wireless_diagnostics::google::protobuf::internal::OnShutdown(awd::metrics::protobuf_ShutdownFile_AwdOptions_2eproto, v28);
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CellularServiceStatus_2eproto(awd::metrics *this)
{
  if (awd::metrics::CellularServiceStatus::default_instance_)
  {
    (*(*awd::metrics::CellularServiceStatus::default_instance_ + 8))(awd::metrics::CellularServiceStatus::default_instance_);
  }

  result = awd::metrics::KCellularServiceStatus::default_instance_;
  if (awd::metrics::KCellularServiceStatus::default_instance_)
  {
    v2 = *(*awd::metrics::KCellularServiceStatus::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto_impl(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/AWDMetrics/cpp/CellularServiceStatus.pb.cc", a4);
  awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(v4, v5, v6, v7);
  operator new();
}

double awd::metrics::CellularServiceStatus::CellularServiceStatus(awd::metrics::CellularServiceStatus *this)
{
  *this = off_1002B8708;
  *(this + 1) = 0;
  result = NAN;
  *(this + 1) = xmmword_10024D830;
  *(this + 4) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 8) = 0;
  *(this + 18) = -1;
  *(this + 76) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return result;
}

double awd::metrics::KCellularServiceStatus::KCellularServiceStatus(awd::metrics::KCellularServiceStatus *this)
{
  *(this + 14) = 0;
  *(this + 30) = 0;
  *this = off_1002B8780;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 4) = xmmword_10024D840;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

void awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E2844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CellularServiceStatus::MergeFrom(awd::metrics::CellularServiceStatus *this, const awd::metrics::CellularServiceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 27);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 27) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 27);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 27) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 27);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a2 + 5);
  *(this + 27) |= 4u;
  *(this + 5) = v10;
  v4 = *(a2 + 27);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a2 + 6);
  *(this + 27) |= 8u;
  *(this + 6) = v11;
  v4 = *(a2 + 27);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_35:
    v13 = *(a2 + 10);
    *(this + 27) |= 0x20u;
    *(this + 10) = v13;
    v4 = *(a2 + 27);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_34:
  v12 = *(a2 + 7);
  *(this + 27) |= 0x10u;
  *(this + 7) = v12;
  v4 = *(a2 + 27);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_36:
  v14 = *(a2 + 4);
  *(this + 27) |= 0x40u;
  v15 = *(this + 4);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 27);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 27) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 27);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 12);
    *(this + 27) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(a2 + 27);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 13);
  *(this + 27) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(a2 + 27);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_42:
  v18 = *(a2 + 7);
  *(this + 27) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v4 = *(a2 + 27);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 16);
  *(this + 27) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(a2 + 27);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 17);
  *(this + 27) |= 0x1000u;
  *(this + 17) = v21;
  v4 = *(a2 + 27);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 18);
  *(this + 27) |= 0x2000u;
  *(this + 18) = v22;
  v4 = *(a2 + 27);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_48:
  v23 = *(a2 + 76);
  *(this + 27) |= 0x4000u;
  *(this + 76) = v23;
  v4 = *(a2 + 27);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 22);
    *(this + 27) |= 0x8000u;
    *(this + 22) = v6;
    v4 = *(a2 + 27);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v24 = *(a2 + 10);
    *(this + 27) |= 0x10000u;
    *(this + 10) = v24;
    v4 = *(a2 + 27);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v25 = *(a2 + 23);
  *(this + 27) |= 0x20000u;
  *(this + 23) = v25;
  v4 = *(a2 + 27);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_52:
  v26 = *(a2 + 24);
  *(this + 27) |= 0x40000u;
  *(this + 24) = v26;
  if ((*(a2 + 27) & 0x80000) == 0)
  {
    return;
  }

LABEL_28:
  v7 = *(a2 + 25);
  *(this + 27) |= 0x80000u;
  *(this + 25) = v7;
}

void sub_1001E2C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CellularServiceStatus::~CellularServiceStatus(awd::metrics::CellularServiceStatus *this)
{
  *this = off_1002B8708;
  awd::metrics::CellularServiceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CellularServiceStatus::~CellularServiceStatus(this);

  operator delete();
}

void awd::metrics::CellularServiceStatus::SharedDtor(awd::metrics::CellularServiceStatus *this)
{
  v1 = *(this + 4);
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

  awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto(this);
}

uint64_t awd::metrics::CellularServiceStatus::Clear(uint64_t this)
{
  v1 = *(this + 108);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = xmmword_10024D830;
    *(this + 40) = 0;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 32);
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
    v1 = *(this + 108);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
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
    *(this + 72) = -1;
    *(this + 76) = 0;
    *(this + 88) = 0;
    v1 = *(this + 108);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
    *(this + 96) = 0;
    *(this + 92) = 0;
  }

  *(this + 108) = 0;
  return this;
}

uint64_t awd::metrics::CellularServiceStatus::MergePartialFromCodedStream(awd::metrics::CellularServiceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          goto LABEL_48;
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
LABEL_54:
            *(this + 27) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v28 = v11 + 1;
              *(a2 + 1) = v28;
              goto LABEL_57;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_54;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_57:
        v75 = 0;
        if (v28 >= v8 || (v38 = *v28, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v38 = v75;
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (v38 < 0xD || v38 - 15 <= 1)
        {
          *(this + 27) |= 2u;
          *(this + 4) = v38;
        }

        v39 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v39 >= v22 || *v39 != 24)
        {
          continue;
        }

        v23 = v39 + 1;
        *(a2 + 1) = v23;
LABEL_67:
        v75 = 0;
        if (v23 >= v22 || (v40 = *v23, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v40 = v75;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (awd::metrics::SrvStatus_IsValid(v40))
        {
          *(this + 27) |= 4u;
          *(this + 5) = v40;
        }

        v41 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v41 >= v25 || *v41 != 32)
        {
          continue;
        }

        v26 = v41 + 1;
        *(a2 + 1) = v26;
LABEL_77:
        v75 = 0;
        if (v26 >= v25 || (v42 = *v26, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v42 = v75;
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v42 + 1 <= 7)
        {
          *(this + 27) |= 8u;
          *(this + 6) = v42;
        }

        v43 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v43 >= v17 || *v43 != 40)
        {
          continue;
        }

        v18 = v43 + 1;
        *(a2 + 1) = v18;
LABEL_87:
        v75 = 0;
        if (v18 >= v17 || (v44 = *v18, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v44 = v75;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (awd::metrics::RoamStatus_IsValid(v44))
        {
          *(this + 27) |= 0x10u;
          *(this + 7) = v44;
        }

        v45 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v45 >= v30 || *v45 != 48)
        {
          continue;
        }

        v31 = v45 + 1;
        *(a2 + 1) = v31;
LABEL_97:
        if (v31 >= v30 || (v46 = *v31, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v46;
          v47 = v31 + 1;
          *(a2 + 1) = v47;
        }

        v33 = *(this + 27) | 0x20;
        *(this + 27) = v33;
        if (v47 >= v30 || *v47 != 58)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_105:
        *(this + 27) = v33 | 0x40;
        if (*(this + 4) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v48 >= v20 || *v48 != 64)
        {
          continue;
        }

        v27 = v48 + 1;
        *(a2 + 1) = v27;
LABEL_111:
        if (v27 >= v20 || (v49 = *v27, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v49;
          v50 = v27 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 27) |= 0x80u;
        if (v50 >= v20 || *v50 != 72)
        {
          continue;
        }

        v36 = v50 + 1;
        *(a2 + 1) = v36;
LABEL_119:
        if (v36 >= v20 || (v51 = *v36, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v51;
          v52 = v36 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 27) |= 0x100u;
        if (v52 >= v20 || *v52 != 80)
        {
          continue;
        }

        v21 = v52 + 1;
        *(a2 + 1) = v21;
LABEL_127:
        if (v21 >= v20 || (v53 = *v21, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v53;
          v54 = v21 + 1;
          *(a2 + 1) = v54;
        }

        v35 = *(this + 27) | 0x200;
        *(this + 27) = v35;
        if (v54 >= v20 || *v54 != 90)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_135:
        *(this + 27) = v35 | 0x400;
        if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v55 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v55 >= v15 || *v55 != 96)
        {
          continue;
        }

        v16 = v55 + 1;
        *(a2 + 1) = v16;
LABEL_141:
        v75 = 0;
        if (v16 >= v15 || (v56 = *v16, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v56 = v75;
          v57 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v57 = v16 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 16) = v56;
        *(this + 27) |= 0x800u;
        if (v57 >= v15 || *v57 != 104)
        {
          continue;
        }

        v19 = v57 + 1;
        *(a2 + 1) = v19;
LABEL_149:
        v75 = 0;
        if (v19 >= v15 || (v58 = *v19, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v58 = v75;
          v59 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v59 = v19 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 17) = v58;
        *(this + 27) |= 0x1000u;
        if (v59 >= v15 || *v59 != 112)
        {
          continue;
        }

        v32 = v59 + 1;
        *(a2 + 1) = v32;
LABEL_157:
        v75 = 0;
        if (v32 >= v15 || (v60 = *v32, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v60 = v75;
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v60 + 1 <= 6)
        {
          *(this + 27) |= 0x2000u;
          *(this + 18) = v60;
        }

        v61 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v61 >= v12 || *v61 != 120)
        {
          continue;
        }

        v14 = v61 + 1;
        *(a2 + 1) = v14;
LABEL_167:
        v75 = 0;
        if (v14 >= v12 || (v62 = *v14, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v62 = v75;
          v63 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v63 = (v14 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 76) = v62 != 0;
        *(this + 27) |= 0x4000u;
        if (v12 - v63 < 2 || *v63 != 128 || v63[1] != 1)
        {
          continue;
        }

        v24 = (v63 + 2);
        *(a2 + 1) = v24;
LABEL_176:
        if (v24 >= v12 || (v64 = *v24, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v64;
          v65 = (v24 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 27) |= 0x8000u;
        if (v12 - v65 < 2 || *v65 != 136 || v65[1] != 1)
        {
          continue;
        }

        v13 = (v65 + 2);
        *(a2 + 1) = v13;
LABEL_185:
        if (v13 >= v12 || (v66 = *v13, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v66;
          v67 = (v13 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 27) |= 0x10000u;
        if (v12 - v67 < 2 || *v67 != 144 || v67[1] != 1)
        {
          continue;
        }

        v29 = (v67 + 2);
        *(a2 + 1) = v29;
LABEL_194:
        if (v29 >= v12 || (v68 = *v29, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v68;
          v69 = (v29 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 27) |= 0x20000u;
        if (v12 - v69 < 2 || *v69 != 152 || v69[1] != 1)
        {
          continue;
        }

        v34 = (v69 + 2);
        *(a2 + 1) = v34;
LABEL_203:
        if (v34 >= v12 || (v70 = *v34, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v70;
          v71 = (v34 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 27) |= 0x40000u;
        if (v12 - v71 < 2 || *v71 != 160 || v71[1] != 1)
        {
          continue;
        }

        v37 = (v71 + 2);
        *(a2 + 1) = v37;
LABEL_212:
        v75 = 0;
        if (v37 >= v12 || (v72 = *v37, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v72 = v75;
          v73 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v73 = v37 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 25) = v72;
        *(this + 27) |= 0x80000u;
        if (v73 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_48;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_67;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_77;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_87;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_97;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_48;
        }

        v33 = *(this + 27);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v27 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_111;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v36 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_127;
      case 0xBu:
        if (v7 != 2)
        {
          goto LABEL_48;
        }

        v35 = *(this + 27);
        goto LABEL_135;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_149;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v32 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_167;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_176;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_185;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_194;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v34 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_203;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v37 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_212;
      default:
LABEL_48:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::CellularServiceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 108);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 108);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v8 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 108);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, *(v5 + 80), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
    if ((*(v5 + 108) & 0x80000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 92), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v6 & 0x80000) == 0)
  {
    return this;
  }

LABEL_41:
  v9 = *(v5 + 100);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, v9, a2, a4);
}

uint64_t awd::metrics::CellularServiceStatus::ByteSize(awd::metrics::CellularServiceStatus *this, unint64_t a2)
{
  v3 = *(this + 27);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 27);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
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
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(this + 6);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v11 = *(this + 7);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_38:
  v13 = *(this + 10);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

LABEL_42:
  v15 = *(this + 4);
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
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v3 = *(this + 27);
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
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v21 = *(this + 11);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_55:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v3 & 0x100) != 0)
  {
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v24 = 2;
    }

    LODWORD(v4) = v24 + v4;
    if ((v3 & 0x200) == 0)
    {
LABEL_58:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v26 = 2;
  }

  LODWORD(v4) = v26 + v4;
  if ((v3 & 0x400) == 0)
  {
LABEL_59:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_80;
  }

LABEL_71:
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
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v3 = *(this + 27);
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

  LODWORD(v4) = v4 + v32 + v28 + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_60:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_86;
  }

LABEL_80:
  v33 = *(this + 16);
  if ((v33 & 0x80000000) != 0)
  {
    v34 = 11;
  }

  else if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v34 = 2;
  }

  LODWORD(v4) = v34 + v4;
  if ((v3 & 0x1000) == 0)
  {
LABEL_61:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_92;
  }

LABEL_86:
  v35 = *(this + 17);
  if ((v35 & 0x80000000) != 0)
  {
    v36 = 11;
  }

  else if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v36 = 2;
  }

  LODWORD(v4) = v36 + v4;
  if ((v3 & 0x2000) != 0)
  {
LABEL_92:
    v37 = *(this + 18);
    if ((v37 & 0x80000000) != 0)
    {
      v38 = 11;
    }

    else if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v38 = 2;
    }

    LODWORD(v4) = v38 + v4;
  }

LABEL_98:
  v4 = ((v3 >> 13) & 2) + v4;
  if ((v3 & 0x8000) != 0)
  {
    v39 = *(this + 22);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2) + 2;
      v3 = *(this + 27);
    }

    else
    {
      v40 = 3;
    }

    v4 = (v40 + v4);
  }

LABEL_103:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_124;
  }

  if ((v3 & 0x10000) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10), a2) + 2;
    v3 = *(this + 27);
    if ((v3 & 0x20000) == 0)
    {
LABEL_106:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_114;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v41 = *(this + 23);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 2;
    v3 = *(this + 27);
  }

  else
  {
    v42 = 3;
  }

  v4 = (v42 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_107:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_118;
  }

LABEL_114:
  v43 = *(this + 24);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2) + 2;
    v3 = *(this + 27);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v3 & 0x80000) != 0)
  {
LABEL_118:
    v45 = *(this + 25);
    if ((v45 & 0x80000000) != 0)
    {
      v46 = 12;
    }

    else if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 2;
    }

    else
    {
      v46 = 3;
    }

    v4 = (v46 + v4);
  }

LABEL_124:
  *(this + 26) = v4;
  return v4;
}

void awd::metrics::KCellularServiceStatus::MergeFrom(awd::metrics::KCellularServiceStatus *this, const awd::metrics::KCellularServiceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = *(a2 + 29);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 29);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 4);
  *(this + 29) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 29);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  v11 = *(a2 + 60);
  *(this + 29) |= 4u;
  *(this + 60) = v11;
  v4 = *(a2 + 29);
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 5);
    *(this + 29) |= 8u;
    *(this + 5) = v5;
    v4 = *(a2 + 29);
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_42:
    v14 = *(a2 + 4);
    *(this + 29) |= 0x20u;
    v15 = *(this + 4);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 29);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_45;
  }

  v12 = *(a2 + 3);
  *(this + 29) |= 0x10u;
  v13 = *(this + 3);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 29);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_45:
  v16 = *(a2 + 10);
  *(this + 29) |= 0x40u;
  *(this + 10) = v16;
  v4 = *(a2 + 29);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 11);
    *(this + 29) |= 0x80u;
    *(this + 11) = v6;
    v4 = *(a2 + 29);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 12);
    *(this + 29) |= 0x100u;
    *(this + 12) = v17;
    v4 = *(a2 + 29);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_49;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(a2 + 13);
  *(this + 29) |= 0x200u;
  *(this + 13) = v18;
  v4 = *(a2 + 29);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = *(a2 + 14);
  *(this + 29) |= 0x400u;
  *(this + 14) = v19;
  v4 = *(a2 + 29);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = *(a2 + 16);
  *(this + 29) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(a2 + 29);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = *(a2 + 17);
  *(this + 29) |= 0x1000u;
  *(this + 17) = v21;
  v4 = *(a2 + 29);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = *(a2 + 18);
  *(this + 29) |= 0x2000u;
  *(this + 18) = v22;
  v4 = *(a2 + 29);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_53:
  v23 = *(a2 + 19);
  *(this + 29) |= 0x4000u;
  *(this + 19) = v23;
  v4 = *(a2 + 29);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 20);
    *(this + 29) |= 0x8000u;
    *(this + 20) = v7;
    v4 = *(a2 + 29);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v24 = *(a2 + 21);
    *(this + 29) |= 0x10000u;
    *(this + 21) = v24;
    v4 = *(a2 + 29);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_57;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v25 = *(a2 + 22);
  *(this + 29) |= 0x20000u;
  *(this + 22) = v25;
  v4 = *(a2 + 29);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a2 + 23);
  *(this + 29) |= 0x40000u;
  *(this + 23) = v26;
  v4 = *(a2 + 29);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(a2 + 61);
  *(this + 29) |= 0x80000u;
  *(this + 61) = v27;
  v4 = *(a2 + 29);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 24);
  *(this + 29) |= 0x100000u;
  *(this + 24) = v28;
  v4 = *(a2 + 29);
  if ((v4 & 0x200000) == 0)
  {
LABEL_31:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 25);
  *(this + 29) |= 0x200000u;
  *(this + 25) = v29;
  v4 = *(a2 + 29);
  if ((v4 & 0x400000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

LABEL_61:
  v30 = *(a2 + 26);
  *(this + 29) |= 0x400000u;
  *(this + 26) = v30;
  if ((*(a2 + 29) & 0x800000) == 0)
  {
    return;
  }

LABEL_33:
  v8 = *(a2 + 27);
  *(this + 29) |= 0x800000u;
  *(this + 27) = v8;
}

void sub_1001E43C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::KCellularServiceStatus::~KCellularServiceStatus(awd::metrics::KCellularServiceStatus *this)
{
  *this = off_1002B8780;
  awd::metrics::KCellularServiceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::KCellularServiceStatus::~KCellularServiceStatus(this);

  operator delete();
}

void awd::metrics::KCellularServiceStatus::SharedDtor(awd::metrics::KCellularServiceStatus *this)
{
  v1 = *(this + 3);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 4);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto(this);
}

uint64_t awd::metrics::KCellularServiceStatus::Clear(uint64_t this)
{
  v1 = *(this + 116);
  if (v1)
  {
    *(this + 60) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 24);
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

    if ((*(this + 116) & 0x20) != 0)
    {
      v3 = *(this + 32);
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

    *(this + 40) = 0;
    v1 = *(this + 116);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = xmmword_10024D840;
    *(this + 80) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 61) = 0;
    *(this + 84) = 0;
    *(this + 100) = 0;
    *(this + 92) = 0;
    *(this + 108) = 0;
  }

  *(this + 116) = 0;
  return this;
}

uint64_t awd::metrics::KCellularServiceStatus::MergePartialFromCodedStream(awd::metrics::KCellularServiceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
          goto LABEL_56;
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
LABEL_62:
            *(this + 29) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v26 = v11 + 1;
              *(a2 + 1) = v26;
              goto LABEL_65;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_62;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_65:
        v87 = 0;
        if (v26 >= v8 || (v42 = *v26, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v42 = v87;
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v42 < 0xD || v42 - 15 <= 1)
        {
          *(this + 29) |= 2u;
          *(this + 4) = v42;
        }

        v43 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v43 >= v23 || *v43 != 40)
        {
          continue;
        }

        v24 = v43 + 1;
        *(a2 + 1) = v24;
LABEL_75:
        v87 = 0;
        if (v24 >= v23 || (v44 = *v24, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v44 = v87;
          v45 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v45 = v24 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 60) = v44 != 0;
        *(this + 29) |= 4u;
        if (v45 >= v23 || *v45 != 48)
        {
          continue;
        }

        v34 = v45 + 1;
        *(a2 + 1) = v34;
LABEL_83:
        if (v34 >= v23 || (v46 = *v34, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v46;
          v47 = v34 + 1;
          *(a2 + 1) = v47;
        }

        v35 = *(this + 29) | 8;
        *(this + 29) = v35;
        if (v47 >= v23 || *v47 != 58)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_91:
        *(this + 29) = v35 | 0x10;
        if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 != 66)
        {
          continue;
        }

        *(a2 + 1) = v48 + 1;
LABEL_97:
        *(this + 29) |= 0x20u;
        if (*(this + 4) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v49 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v49 >= v27 || *v49 != 72)
        {
          continue;
        }

        v28 = v49 + 1;
        *(a2 + 1) = v28;
LABEL_103:
        v87 = 0;
        if (v28 >= v27 || (v50 = *v28, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v50 = v87;
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (awd::metrics::KRegStatus_IsValid(v50))
        {
          *(this + 29) |= 0x40u;
          *(this + 10) = v50;
        }

        v51 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v51 >= v29 || *v51 != 80)
        {
          continue;
        }

        v30 = v51 + 1;
        *(a2 + 1) = v30;
LABEL_113:
        v87 = 0;
        if (v30 >= v29 || (v52 = *v30, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v52 = v87;
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (awd::metrics::KRegStatus_IsValid(v52))
        {
          *(this + 29) |= 0x80u;
          *(this + 11) = v52;
        }

        v53 = *(a2 + 1);
        v37 = *(a2 + 2);
        if (v53 >= v37 || *v53 != 88)
        {
          continue;
        }

        v38 = v53 + 1;
        *(a2 + 1) = v38;
LABEL_123:
        v87 = 0;
        if (v38 >= v37 || (v54 = *v38, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v54 = v87;
        }

        else
        {
          *(a2 + 1) = v38 + 1;
        }

        if (awd::metrics::KPowerChangeMode_IsValid(v54))
        {
          *(this + 29) |= 0x100u;
          *(this + 12) = v54;
        }

        v55 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v55 >= v16 || *v55 != 96)
        {
          continue;
        }

        v36 = v55 + 1;
        *(a2 + 1) = v36;
LABEL_133:
        if (v36 >= v16 || (v56 = *v36, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v56;
          v57 = v36 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 29) |= 0x200u;
        if (v57 >= v16 || *v57 != 104)
        {
          continue;
        }

        v19 = v57 + 1;
        *(a2 + 1) = v19;
LABEL_141:
        if (v19 >= v16 || (v58 = *v19, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v58;
          v59 = v19 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 29) |= 0x400u;
        if (v59 >= v16 || *v59 != 112)
        {
          continue;
        }

        v25 = v59 + 1;
        *(a2 + 1) = v25;
LABEL_149:
        if (v25 >= v16 || (v60 = *v25, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v60;
          v61 = v25 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 29) |= 0x800u;
        if (v61 >= v16 || *v61 != 120)
        {
          continue;
        }

        v21 = v61 + 1;
        *(a2 + 1) = v21;
LABEL_157:
        if (v21 >= v16 || (v62 = *v21, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v62;
          v63 = (v21 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 29) |= 0x1000u;
        if (v16 - v63 < 2 || *v63 != 128 || v63[1] != 1)
        {
          continue;
        }

        v17 = (v63 + 2);
        *(a2 + 1) = v17;
LABEL_166:
        v87 = 0;
        if (v17 >= v16 || (v64 = *v17, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v64 = v87;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (awd::metrics::SrvStatus_IsValid(v64))
        {
          *(this + 29) |= 0x2000u;
          *(this + 18) = v64;
        }

        v65 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v31 - v65 < 2 || *v65 != 136 || v65[1] != 1)
        {
          continue;
        }

        v32 = (v65 + 2);
        *(a2 + 1) = v32;
LABEL_177:
        v87 = 0;
        if (v32 >= v31 || (v66 = *v32, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v66 = v87;
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v66 + 1 <= 7)
        {
          *(this + 29) |= 0x4000u;
          *(this + 19) = v66;
        }

        v67 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v67 < 2 || *v67 != 144 || v67[1] != 1)
        {
          continue;
        }

        v33 = (v67 + 2);
        *(a2 + 1) = v33;
LABEL_188:
        if (v33 >= v12 || (v68 = *v33, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v68;
          v69 = (v33 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 29) |= 0x8000u;
        if (v12 - v69 < 2 || *v69 != 152 || v69[1] != 1)
        {
          continue;
        }

        v40 = (v69 + 2);
        *(a2 + 1) = v40;
LABEL_197:
        if (v40 >= v12 || (v70 = *v40, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v70;
          v71 = (v40 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 29) |= 0x10000u;
        if (v12 - v71 < 2 || *v71 != 160 || v71[1] != 1)
        {
          continue;
        }

        v39 = (v71 + 2);
        *(a2 + 1) = v39;
LABEL_206:
        v87 = 0;
        if (v39 >= v12 || (v72 = *v39, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v72 = v87;
          v73 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v73 = (v39 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 22) = -(v72 & 1) ^ (v72 >> 1);
        *(this + 29) |= 0x20000u;
        if (v12 - v73 < 2 || *v73 != 168 || v73[1] != 1)
        {
          continue;
        }

        v13 = (v73 + 2);
        *(a2 + 1) = v13;
LABEL_215:
        v87 = 0;
        if (v13 >= v12 || (v74 = *v13, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v74 = v87;
          v75 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v75 = (v13 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 23) = -(v74 & 1) ^ (v74 >> 1);
        *(this + 29) |= 0x40000u;
        if (v12 - v75 < 2 || *v75 != 176 || v75[1] != 1)
        {
          continue;
        }

        v22 = (v75 + 2);
        *(a2 + 1) = v22;
LABEL_224:
        v87 = 0;
        if (v22 >= v12 || (v76 = *v22, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v76 = v87;
          v77 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v77 = (v22 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 61) = v76 != 0;
        *(this + 29) |= 0x80000u;
        if (v12 - v77 < 2 || *v77 != 184 || v77[1] != 1)
        {
          continue;
        }

        v41 = (v77 + 2);
        *(a2 + 1) = v41;
LABEL_233:
        v87 = 0;
        if (v41 >= v12 || (v78 = *v41, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v78 = v87;
        }

        else
        {
          *(a2 + 1) = v41 + 1;
        }

        if (v78 <= 1)
        {
          *(this + 29) |= 0x100000u;
          *(this + 24) = v78;
        }

        v79 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v14 - v79 < 2 || *v79 != 192 || v79[1] != 1)
        {
          continue;
        }

        v15 = (v79 + 2);
        *(a2 + 1) = v15;
LABEL_244:
        if (v15 >= v14 || (v80 = *v15, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v80;
          v81 = (v15 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 29) |= 0x200000u;
        if (v14 - v81 < 2 || *v81 != 200 || v81[1] != 1)
        {
          continue;
        }

        v20 = (v81 + 2);
        *(a2 + 1) = v20;
LABEL_253:
        if (v20 >= v14 || (v82 = *v20, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v82;
          v83 = (v20 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 29) |= 0x400000u;
        if (v14 - v83 < 2 || *v83 != 208 || v83[1] != 1)
        {
          continue;
        }

        v18 = (v83 + 2);
        *(a2 + 1) = v18;
LABEL_262:
        v87 = 0;
        if (v18 >= v14 || (v84 = *v18, (v84 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v84 = v87;
          v85 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v85 = v18 + 1;
          *(a2 + 1) = v85;
        }

        *(this + 27) = v84;
        *(this + 29) |= 0x800000u;
        if (v85 != v14 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_75;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v34 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_83;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        v35 = *(this + 29);
        goto LABEL_91;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_97;
        }

        goto LABEL_56;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_103;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_113;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v36 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_166;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_177;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_188;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v40 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_197;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v39 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_206;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_215;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_224;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v41 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_233;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_244;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_253;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_262;
      default:
LABEL_56:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::KCellularServiceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 60), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 20), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v7 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 40), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 44), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 48), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 52), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 56), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, *(v5 + 72), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 76), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x14, *(v5 + 88), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x15, *(v5 + 92), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, *(v5 + 61), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 96), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 104), v4, a4);
    if ((*(v5 + 116) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 100), v4, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v6 & 0x800000) == 0)
  {
    return this;
  }

LABEL_49:
  v9 = *(v5 + 108);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1A, v9, v4, a4);
}

uint64_t awd::metrics::KCellularServiceStatus::ByteSize(awd::metrics::KCellularServiceStatus *this, unint64_t a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_53;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 29);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_13:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 5);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

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
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    v11 = *(v10 + 23);
    v13 = *(v10 + 8);
    v3 = *(this + 29);
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

  v5 = (v5 + v15 + v11 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_32:
  v16 = *(this + 4);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(this + 29);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_41:
  v22 = *(this + 10);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = 11;
  }

  else if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v23 = 2;
  }

  v5 = (v23 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_47:
    v24 = *(this + 11);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_53:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_101;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 12);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 11;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v27 = 2;
    }

    v5 = (v27 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_56:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  v28 = *(this + 13);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v29 = 2;
  }

  v5 = (v29 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_57:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_77;
  }

LABEL_73:
  v30 = *(this + 14);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v31 = 2;
  }

  v5 = (v31 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_58:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_81;
  }

LABEL_77:
  v32 = *(this + 16);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v33 = 2;
  }

  v5 = (v33 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_59:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_85;
  }

LABEL_81:
  v34 = *(this + 17);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v35 = 2;
  }

  v5 = (v35 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_60:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_91;
  }

LABEL_85:
  v36 = *(this + 18);
  if ((v36 & 0x80000000) != 0)
  {
    v37 = 12;
  }

  else if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v37 = 3;
  }

  v5 = (v37 + v5);
  if ((v3 & 0x4000) == 0)
  {
LABEL_61:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

LABEL_91:
  v38 = *(this + 19);
  if ((v38 & 0x80000000) != 0)
  {
    v39 = 12;
  }

  else if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v39 = 3;
  }

  v5 = (v39 + v5);
  if ((v3 & 0x8000) != 0)
  {
LABEL_97:
    v40 = *(this + 20);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v41 = 3;
    }

    v5 = (v41 + v5);
  }

LABEL_101:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v3 & 0x10000) != 0)
  {
    v42 = *(this + 21);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v43 = 3;
    }

    LODWORD(v5) = v43 + v5;
    if ((v3 & 0x20000) == 0)
    {
LABEL_104:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_114;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_104;
  }

  v44 = ((2 * *(this + 22)) ^ (*(this + 22) >> 31));
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v45 = 3;
  }

  LODWORD(v5) = v45 + v5;
  if ((v3 & 0x40000) != 0)
  {
LABEL_114:
    v46 = ((2 * *(this + 23)) ^ (*(this + 23) >> 31));
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v47 = 3;
    }

    LODWORD(v5) = v47 + v5;
  }

LABEL_118:
  if ((v3 & 0x80000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x100000) != 0)
  {
    v48 = *(this + 24);
    if ((v48 & 0x80000000) != 0)
    {
      v49 = 12;
    }

    else if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2) + 2;
      v3 = *(this + 29);
    }

    else
    {
      v49 = 3;
    }

    v5 = (v49 + v5);
    if ((v3 & 0x200000) == 0)
    {
LABEL_123:
      if ((v3 & 0x400000) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_136;
    }
  }

  else if ((v3 & 0x200000) == 0)
  {
    goto LABEL_123;
  }

  v50 = *(this + 25);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v51 = 3;
  }

  v5 = (v51 + v5);
  if ((v3 & 0x400000) == 0)
  {
LABEL_124:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_140;
  }

LABEL_136:
  v52 = *(this + 26);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2) + 2;
    v3 = *(this + 29);
  }

  else
  {
    v53 = 3;
  }

  v5 = (v53 + v5);
  if ((v3 & 0x800000) != 0)
  {
LABEL_140:
    v54 = *(this + 27);
    if ((v54 & 0x80000000) != 0)
    {
      v55 = 12;
    }

    else if (v54 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2) + 2;
    }

    else
    {
      v55 = 3;
    }

    v5 = (v55 + v5);
  }

LABEL_146:
  *(this + 28) = v5;
  return v5;
}

uint64_t awd::metrics::protobuf_ShutdownFile_AwddMetricsGeneral_2eproto(awd::metrics *this)
{
  if (awd::metrics::MetricAwddLocation::default_instance_)
  {
    (*(*awd::metrics::MetricAwddLocation::default_instance_ + 8))(awd::metrics::MetricAwddLocation::default_instance_);
  }

  if (awd::metrics::MetricCCDiagnosticsAllowed::default_instance_)
  {
    (*(*awd::metrics::MetricCCDiagnosticsAllowed::default_instance_ + 8))(awd::metrics::MetricCCDiagnosticsAllowed::default_instance_);
  }

  if (awd::metrics::AwddShutdown::default_instance_)
  {
    (*(*awd::metrics::AwddShutdown::default_instance_ + 8))(awd::metrics::AwddShutdown::default_instance_);
  }

  if (awd::metrics::AwddStartup::default_instance_)
  {
    (*(*awd::metrics::AwddStartup::default_instance_ + 8))(awd::metrics::AwddStartup::default_instance_);
  }

  if (awd::metrics::BatteryPowerLevel::default_instance_)
  {
    (*(*awd::metrics::BatteryPowerLevel::default_instance_ + 8))(awd::metrics::BatteryPowerLevel::default_instance_);
  }

  result = awd::metrics::AwddAggregation::default_instance_;
  if (awd::metrics::AwddAggregation::default_instance_)
  {
    v2 = *(*awd::metrics::AwddAggregation::default_instance_ + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::MetricCCDiagnosticsAllowed(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = off_1002B88A0;
  *(this + 8) = 0;
  return this;
}

void *awd::metrics::AwddShutdown::AwddShutdown(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1002B8918;
  return this;
}

void *awd::metrics::AwddStartup::AwddStartup(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1002B8990;
  return this;
}

void awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E5EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double awd::metrics::MetricAwddLocation::MergeFrom(awd::metrics::MetricAwddLocation *this, const awd::metrics::MetricAwddLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      result = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    v6 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v6;
  }

  return result;
}

void sub_1001E5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricAwddLocation::~MetricAwddLocation(awd::metrics::MetricAwddLocation *this)
{
  *this = off_1002B8828;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricAwddLocation::~MetricAwddLocation(this);

  operator delete();
}

uint64_t awd::metrics::MetricAwddLocation::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::MetricAwddLocation::MergePartialFromCodedStream(awd::metrics::MetricAwddLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_25;
          }

          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_29:
          if (v12 >= v10 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 11) |= 8u;
          if (v14 < v10 && *v14 == 33)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_37;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_25;
          }

LABEL_37:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 11) |= 4u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v16;
      *(this + 11) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_20:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 11) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_29;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MetricAwddLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 44) & 4) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v7, a3);
}

uint64_t awd::metrics::MetricAwddLocation::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v3 = *(this + 44);
  if (*(this + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[4], a2) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  return v5;
}

void awd::metrics::MetricCCDiagnosticsAllowed::MergeFrom(awd::metrics::MetricCCDiagnosticsAllowed *this, const awd::metrics::MetricCCDiagnosticsAllowed *a2)
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
      v5 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_1001E652C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricCCDiagnosticsAllowed::~MetricCCDiagnosticsAllowed(awd::metrics::MetricCCDiagnosticsAllowed *this)
{
  *this = off_1002B88A0;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricCCDiagnosticsAllowed::~MetricCCDiagnosticsAllowed(this);

  operator delete();
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::MergePartialFromCodedStream(awd::metrics::MetricCCDiagnosticsAllowed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 4)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 16) = v9 != 0;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 32)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
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

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::MetricCCDiagnosticsAllowed::ByteSize(awd::metrics::MetricCCDiagnosticsAllowed *this, unint64_t a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 2 * (v3 & 1u);
    if ((v3 & 2) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + v4 + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 5) = v4;
  return v4;
}

void awd::metrics::AwddShutdown::MergeFrom(awd::metrics::AwddShutdown *this, const awd::metrics::AwddShutdown *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_1001E693C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AwddShutdown::~AwddShutdown(awd::metrics::AwddShutdown *this)
{
  *this = off_1002B8918;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AwddShutdown::~AwddShutdown(this);

  operator delete();
}

uint64_t awd::metrics::AwddShutdown::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::AwddShutdown::MergePartialFromCodedStream(awd::metrics::AwddShutdown *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
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

      *(this + 5) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::AwddShutdown::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::AwddShutdown::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::AwddStartup::MergeFrom(awd::metrics::AwddStartup *this, const awd::metrics::AwddStartup *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_1001E6C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AwddStartup::~AwddStartup(awd::metrics::AwddStartup *this)
{
  *this = off_1002B8990;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AwddStartup::~AwddStartup(this);

  operator delete();
}

uint64_t awd::metrics::AwddStartup::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::AwddStartup::MergePartialFromCodedStream(awd::metrics::AwddStartup *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
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

      *(this + 5) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::AwddStartup::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::AwddStartup::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::BatteryPowerLevel::MergeFrom(awd::metrics::BatteryPowerLevel *this, const awd::metrics::BatteryPowerLevel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 10);
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
    v8 = *(a2 + 3);
    *(this + 10) |= 4u;
    *(this + 3) = v8;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 32);
    *(this + 10) |= 8u;
    *(this + 32) = v5;
  }
}

void sub_1001E6FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BatteryPowerLevel::~BatteryPowerLevel(awd::metrics::BatteryPowerLevel *this)
{
  *this = off_1002B8A08;
  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BatteryPowerLevel::~BatteryPowerLevel(this);

  operator delete();
}

uint64_t awd::metrics::BatteryPowerLevel::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BatteryPowerLevel::MergePartialFromCodedStream(awd::metrics::BatteryPowerLevel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
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

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 10) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        *v22 = 0;
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v22);
          if (!result)
          {
            return result;
          }

          v15 = *v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 2) = v15;
        *(this + 10) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22[0] = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v22);
            if (!result)
            {
              return result;
            }

            v17 = v22[0];
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 32) = v17 != 0;
          *(this + 10) |= 8u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            *v22 = 0;
            if (v10 >= v8 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v22);
              if (!result)
              {
                return result;
              }

              v19 = *v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 3) = v19;
            *(this + 10) |= 4u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::BatteryPowerLevel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 4) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::BatteryPowerLevel::ByteSize(awd::metrics::BatteryPowerLevel *this, unint64_t a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    result = 0;
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
  v3 = *(this + 10);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 10);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 10);
  }

  result = ((v3 >> 2) & 2) + v4;
LABEL_11:
  *(this + 9) = result;
  return result;
}

void awd::metrics::AwddAggregation::MergeFrom(awd::metrics::AwddAggregation *this, const awd::metrics::AwddAggregation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 20);
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

  v9 = *(a2 + 2);
  *(this + 20) |= 2u;
  v10 = *(this + 2);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 20);
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
  v11 = *(a2 + 3);
  *(this + 20) |= 4u;
  *(this + 3) = v11;
  v4 = *(a2 + 20);
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
  v12 = *(a2 + 4);
  *(this + 20) |= 8u;
  *(this + 4) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 6);
    *(this + 20) |= 0x20u;
    *(this + 6) = v14;
    v4 = *(a2 + 20);
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
  v13 = *(a2 + 5);
  *(this + 20) |= 0x10u;
  *(this + 5) = v13;
  v4 = *(a2 + 20);
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
  v15 = *(a2 + 7);
  *(this + 20) |= 0x40u;
  *(this + 7) = v15;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 20) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 20);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 72);
      *(this + 20) |= 0x100u;
      *(this + 72) = v6;
      v4 = *(a2 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 73);
      *(this + 20) |= 0x200u;
      *(this + 73) = v7;
    }
  }
}

void sub_1001E76C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AwddAggregation::~AwddAggregation(awd::metrics::AwddAggregation *this)
{
  *this = off_1002B8A80;
  awd::metrics::AwddAggregation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AwddAggregation::~AwddAggregation(this);

  operator delete();
}

void awd::metrics::AwddAggregation::SharedDtor(awd::metrics::AwddAggregation *this)
{
  v1 = *(this + 2);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_AwddMetricsGeneral_2eproto(this);
}

uint64_t awd::metrics::AwddAggregation::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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

    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v1 = *(this + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::AwddAggregation::MergePartialFromCodedStream(awd::metrics::AwddAggregation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_79;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_87;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_40;
          }

          v12 = *(this + 20);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        v12 = *(this + 20) | 1;
        *(this + 20) = v12;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_49:
          *(this + 20) = v12 | 2;
          if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v23 < v9 && *v23 == 24)
          {
            v19 = v23 + 1;
            *(a2 + 1) = v19;
LABEL_55:
            if (v19 >= v9 || (v24 = *v19, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v24;
              v25 = v19 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 20) |= 4u;
            if (v25 < v9 && *v25 == 32)
            {
              v21 = v25 + 1;
              *(a2 + 1) = v21;
              goto LABEL_63;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_55;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v21 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_63:
      if (v21 >= v9 || (v26 = *v21, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v26;
        v27 = v21 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 20) |= 8u;
      if (v27 < v9 && *v27 == 40)
      {
        v10 = v27 + 1;
        *(a2 + 1) = v10;
LABEL_71:
        *v41 = 0;
        if (v10 >= v9 || (v28 = *v10, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
          if (!result)
          {
            return result;
          }

          v28 = *v41;
          v29 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v29 = v10 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 5) = v28;
        *(this + 20) |= 0x10u;
        if (v29 < v9 && *v29 == 48)
        {
          v18 = v29 + 1;
          *(a2 + 1) = v18;
LABEL_79:
          *v41 = 0;
          if (v18 >= v9 || (v30 = *v18, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
            if (!result)
            {
              return result;
            }

            v30 = *v41;
            v31 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v31 = v18 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 6) = v30;
          *(this + 20) |= 0x20u;
          if (v31 < v9 && *v31 == 56)
          {
            v13 = v31 + 1;
            *(a2 + 1) = v13;
LABEL_87:
            *v41 = 0;
            if (v13 >= v9 || (v32 = *v13, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
              if (!result)
              {
                return result;
              }

              v32 = *v41;
              v33 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v33 = v13 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 7) = v32;
            *(this + 20) |= 0x40u;
            if (v33 < v9 && *v33 == 64)
            {
              v20 = v33 + 1;
              *(a2 + 1) = v20;
LABEL_95:
              *v41 = 0;
              if (v20 >= v9 || (v34 = *v20, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v41);
                if (!result)
                {
                  return result;
                }

                v34 = *v41;
                v35 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v35 = v20 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 8) = v34;
              *(this + 20) |= 0x80u;
              if (v35 < v9 && *v35 == 72)
              {
                v22 = v35 + 1;
                *(a2 + 1) = v22;
LABEL_103:
                v41[0] = 0;
                if (v22 >= v9 || (v36 = *v22, (v36 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = v41[0];
                  v37 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v37 = v22 + 1;
                  *(a2 + 1) = v37;
                }

                *(this + 72) = v36 != 0;
                *(this + 20) |= 0x100u;
                if (v37 < v9 && *v37 == 80)
                {
                  v11 = v37 + 1;
                  *(a2 + 1) = v11;
LABEL_111:
                  v41[0] = 0;
                  if (v11 >= v9 || (v38 = *v11, (v38 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = v41[0];
                    v39 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v39 = v11 + 1;
                    *(a2 + 1) = v39;
                  }

                  *(this + 73) = v38 != 0;
                  *(this + 20) |= 0x200u;
                  if (v39 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_71;
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

uint64_t awd::metrics::AwddAggregation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 80);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 72), a2, a4);
    if ((*(v5 + 80) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(8, *(v5 + 64), a2, a4);
  v6 = *(v5 + 80);
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
  v8 = *(v5 + 73);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, v8, a2, a4);
}

uint64_t awd::metrics::AwddAggregation::ByteSize(awd::metrics::AwddAggregation *this, unint64_t a2)
{
  v3 = *(this + 20);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 20);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 20);
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

  v4 += v10 + v6 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
    v3 = *(this + 20);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_31:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7), a2) + 1;
  v3 = *(this + 20);
  if ((v3 & 0x80) != 0)
  {
LABEL_22:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8), a2) + 1;
    v3 = *(this + 20);
  }

LABEL_23:
  v11 = (v3 & 0xFF00) == 0;
  v12 = ((v3 >> 7) & 2) + v4 + ((v3 >> 8) & 2);
  if (v11)
  {
    result = v4;
  }

  else
  {
    result = v12;
  }

  *(this + 19) = result;
  return result;
}

uint64_t awd::profile::protobuf_ShutdownFile_AwdProfile_2eproto(awd::profile *this)
{
  if (awd::profile::ProcessingRule::default_instance_)
  {
    (*(*awd::profile::ProcessingRule::default_instance_ + 8))(awd::profile::ProcessingRule::default_instance_);
  }

  if (awd::profile::BedfTreeNode::default_instance_)
  {
    (*(*awd::profile::BedfTreeNode::default_instance_ + 8))(awd::profile::BedfTreeNode::default_instance_);
  }

  if (awd::profile::BedfConfig::default_instance_)
  {
    (*(*awd::profile::BedfConfig::default_instance_ + 8))(awd::profile::BedfConfig::default_instance_);
  }

  if (awd::profile::Metric::default_instance_)
  {
    (*(*awd::profile::Metric::default_instance_ + 8))(awd::profile::Metric::default_instance_);
  }

  if (awd::profile::Profile::default_instance_)
  {
    (*(*awd::profile::Profile::default_instance_ + 8))(awd::profile::Profile::default_instance_);
  }

  if (awd::profile::LogParameter::default_instance_)
  {
    (*(*awd::profile::LogParameter::default_instance_ + 8))(awd::profile::LogParameter::default_instance_);
  }

  if (awd::profile::Log::default_instance_)
  {
    (*(*awd::profile::Log::default_instance_ + 8))(awd::profile::Log::default_instance_);
  }

  if (awd::profile::ConfigurationParameter::default_instance_)
  {
    (*(*awd::profile::ConfigurationParameter::default_instance_ + 8))(awd::profile::ConfigurationParameter::default_instance_);
  }

  if (awd::profile::ComponentConfiguration::default_instance_)
  {
    (*(*awd::profile::ComponentConfiguration::default_instance_ + 8))(awd::profile::ComponentConfiguration::default_instance_);
  }

  if (awd::profile::TimerSpec::default_instance_)
  {
    (*(*awd::profile::TimerSpec::default_instance_ + 8))(awd::profile::TimerSpec::default_instance_);
  }

  if (awd::profile::TypeVariant::default_instance_)
  {
    (*(*awd::profile::TypeVariant::default_instance_ + 8))(awd::profile::TypeVariant::default_instance_);
  }

  if (awd::profile::Condition::default_instance_)
  {
    (*(*awd::profile::Condition::default_instance_ + 8))(awd::profile::Condition::default_instance_);
  }

  if (awd::profile::ConditionClause::default_instance_)
  {
    (*(*awd::profile::ConditionClause::default_instance_ + 8))(awd::profile::ConditionClause::default_instance_);
  }

  if (awd::profile::TriggerSource::default_instance_)
  {
    (*(*awd::profile::TriggerSource::default_instance_ + 8))(awd::profile::TriggerSource::default_instance_);
  }

  if (awd::profile::TriggerProcessingRule::default_instance_)
  {
    (*(*awd::profile::TriggerProcessingRule::default_instance_ + 8))(awd::profile::TriggerProcessingRule::default_instance_);
  }

  if (awd::profile::AggregationSpec::default_instance_)
  {
    (*(*awd::profile::AggregationSpec::default_instance_ + 8))(awd::profile::AggregationSpec::default_instance_);
  }

  if (awd::profile::MetricFileSpec::default_instance_)
  {
    (*(*awd::profile::MetricFileSpec::default_instance_ + 8))(awd::profile::MetricFileSpec::default_instance_);
  }

  if (awd::profile::TaskingCriteria::default_instance_)
  {
    (*(*awd::profile::TaskingCriteria::default_instance_ + 8))(awd::profile::TaskingCriteria::default_instance_);
  }

  result = awd::profile::DeviceConfiguration::default_instance_;
  if (awd::profile::DeviceConfiguration::default_instance_)
  {
    v2 = *(*awd::profile::DeviceConfiguration::default_instance_ + 8);

    return v2();
  }

  return result;
}

double awd::profile::TypeVariant::TypeVariant(awd::profile::TypeVariant *this)
{
  *this = off_1002B9038;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 6) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 7) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

double awd::profile::MetricFileSpec::MetricFileSpec(awd::profile::MetricFileSpec *this)
{
  *this = off_1002B9308;
  result = COERCE_DOUBLE(&_mh_execute_header);
  *(this + 1) = &_mh_execute_header;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t awd::profile::DeviceConfiguration::DeviceConfiguration(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1002B93F8;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 168) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 200) = 0;
  *(this + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 72) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 208) = 0;
  return this;
}

void awd::profile::protobuf_AddDesc_AwdProfile_2eproto(awd::profile *this)
{
  v1 = awd::profile::protobuf_AddDesc_AwdProfile_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::profile::protobuf_AddDesc_AwdProfile_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E8D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void awd::profile::ProcessingRule::MergeFrom(awd::profile::ProcessingRule *this, const awd::profile::ProcessingRule *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v6 = *(a2 + 4);
    *(this + 13) |= 1u;
    *(this + 4) = v6;
    v4 = *(a2 + 13);
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

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 1);
  *(this + 13) |= 2u;
  *(this + 1) = v7;
  v4 = *(a2 + 13);
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
  v8 = *(a2 + 3);
  *(this + 13) |= 4u;
  *(this + 3) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v10 = *(a2 + 40);
    *(this + 13) |= 0x10u;
    *(this + 40) = v10;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_16:
  v9 = *(a2 + 5);
  *(this + 13) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(this + 13) |= 0x20u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v12 = *(awd::profile::ProcessingRule::default_instance_ + 32);
  }

  awd::profile::ProcessingRule::MergeFrom(v11, v12);
  if ((*(a2 + 13) & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 11);
    *(this + 13) |= 0x40u;
    *(this + 11) = v5;
  }
}

void sub_1001E8F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ProcessingRule::~ProcessingRule(awd::profile::ProcessingRule *this)
{
  *this = off_1002B8B88;
  awd::profile::ProcessingRule::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ProcessingRule::~ProcessingRule(this);

  operator delete();
}

void awd::profile::ProcessingRule::SharedDtor(awd::profile::ProcessingRule *this)
{
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::ProcessingRule::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t awd::profile::ProcessingRule::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    if ((v2 & 0x20) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = awd::profile::ProcessingRule::Clear(this);
      }
    }

    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::profile::ProcessingRule::MergePartialFromCodedStream(awd::profile::ProcessingRule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
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
        if (TagFallback >> 3 > 0x11)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v15 >= v11 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = (v15 + 1);
            *(a2 + 1) = v17;
          }

          *(this + 13) |= 1u;
          if (v11 - v17 >= 2 && *v17 == 128 && v17[1] == 1)
          {
            v19 = (v17 + 2);
            *(a2 + 1) = v19;
            goto LABEL_34;
          }
        }

        else
        {
          if (v7 != 16)
          {
            if (v7 != 17 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_43;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v19 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_34:
          if (v19 >= v11 || (v20 = *v19, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v20;
            v21 = (v19 + 1);
            *(a2 + 1) = v21;
          }

          *(this + 13) |= 2u;
          if (v11 - v21 >= 2 && *v21 == 136 && v21[1] == 1)
          {
            v12 = (v21 + 2);
            *(a2 + 1) = v12;
LABEL_43:
            v39[0] = 0;
            if (v12 >= v11 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
              if (!result)
              {
                return result;
              }

              v23 = v39[0];
              v24 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v24 = (v12 + 1);
              *(a2 + 1) = v24;
            }

            *(this + 40) = v23 != 0;
            v18 = *(this + 13) | 0x10;
            *(this + 13) = v18;
            if (v11 - v24 >= 2 && *v24 == 146 && v24[1] == 1)
            {
              *(a2 + 1) = v24 + 2;
              goto LABEL_52;
            }
          }
        }
      }

      if (TagFallback >> 3 > 0x13)
      {
        break;
      }

      if (v7 == 18)
      {
        if (v8 != 2)
        {
          goto LABEL_30;
        }

        v18 = *(this + 13);
LABEL_52:
        *(this + 13) = v18 | 0x20;
        v25 = *(this + 4);
        if (!v25)
        {
          operator new();
        }

        v39[0] = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
          {
            return 0;
          }
        }

        else
        {
          v39[0] = *v26;
          *(a2 + 1) = v26 + 1;
        }

        v27 = *(a2 + 14);
        v28 = *(a2 + 15);
        *(a2 + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v39[0]);
        if (!awd::profile::ProcessingRule::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
        v30 = *(a2 + 14);
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v32 < 0 == v31)
        {
          *(a2 + 14) = v32;
        }

        v33 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v33 > 1 && *v33 == 152 && v33[1] == 1)
        {
          v10 = (v33 + 2);
          *(a2 + 1) = v10;
LABEL_67:
          if (v10 >= v9 || (v34 = *v10, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v34;
            v35 = (v10 + 1);
            *(a2 + 1) = v35;
          }

          *(this + 13) |= 8u;
          if (v9 - v35 >= 2 && *v35 == 161 && v35[1] == 1)
          {
            *(a2 + 1) = v35 + 2;
LABEL_76:
            *v39 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v39;
            *(this + 13) |= 4u;
            v36 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v13 - v36 >= 2 && *v36 == 168 && v36[1] == 1)
            {
              v14 = (v36 + 2);
              *(a2 + 1) = v14;
              goto LABEL_81;
            }
          }
        }
      }

      else
      {
        if (v7 == 19 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_67;
        }

LABEL_30:
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

    if (v7 == 20)
    {
      if (v8 == 1)
      {
        goto LABEL_76;
      }

      goto LABEL_30;
    }

    if (v7 != 21 || (TagFallback & 7) != 0)
    {
      goto LABEL_30;
    }

    v14 = *(a2 + 1);
    v13 = *(a2 + 2);
LABEL_81:
    if (v14 >= v13 || (v37 = *v14, v37 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
      if (!result)
      {
        return result;
      }

      v38 = *(a2 + 1);
      v13 = *(a2 + 2);
    }

    else
    {
      *(this + 11) = v37;
      v38 = v14 + 1;
      *(a2 + 1) = v38;
    }

    *(this + 13) |= 0x40u;
  }

  while (v38 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

int *awd::profile::ProcessingRule::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[13];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[4], a2, a4);
    v6 = v5[13];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, *(v5 + 1), a2, a4);
  v6 = v5[13];
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 40), a2, a4);
  v6 = v5[13];
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 4);
  if (!v7)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v7 = *(awd::profile::ProcessingRule::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v7, a2, a4);
  v6 = v5[13];
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 3), a3);
    if ((v5[13] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v5[5], a2, a4);
  v6 = v5[13];
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v8, a2, a4);
}

uint64_t awd::profile::ProcessingRule::ByteSize(awd::profile::ProcessingRule *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((*(this + 52) & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 4);
  if (v5 < 0x80)
  {
    LODWORD(v4) = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
LABEL_10:
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 2;
    v3 = *(this + 13);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    LODWORD(v4) = v4 + 10;
  }

  if ((v3 & 8) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 2;
      v3 = *(this + 13);
    }

    else
    {
      v7 = 3;
    }

    LODWORD(v4) = v7 + v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v8 = *(this + 4);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v8 = *(awd::profile::ProcessingRule::default_instance_ + 32);
    }

    v9 = awd::profile::ProcessingRule::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 2);
    v3 = *(this + 13);
  }

  if ((v3 & 0x40) != 0)
  {
    v12 = *(this + 11);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 2;
    }

    else
    {
      v13 = 3;
    }

    v4 = (v13 + v4);
  }

LABEL_33:
  *(this + 12) = v4;
  return v4;
}

void awd::profile::BedfTreeNode::MergeFrom(awd::profile::BedfTreeNode *this, const awd::profile::BedfTreeNode *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    sub_10001C3A0(v3 + 5, *(v3 + 12) + v4);
    this = memcpy((*(v3 + 5) + 4 * *(v3 + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(v3 + 12) += *(a2 + 12);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      v7 = *(a2 + 2);
      *(v3 + 15) |= 1u;
      *(v3 + 2) = v7;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 3);
    *(v3 + 15) |= 2u;
    *(v3 + 3) = v8;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_16:
    *(v3 + 15) |= 4u;
    v9 = *(v3 + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v10 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
    }

    this = awd::profile::BedfTreeNode::MergeFrom(v9, v10);
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_21:
    *(v3 + 15) |= 8u;
    v11 = *(v3 + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v12 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
    }

    awd::profile::BedfTreeNode::MergeFrom(v11, v12);
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_26:
    v13 = *(a2 + 8);
    *(v3 + 15) |= 0x10u;
    *(v3 + 8) = v13;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return;
    }

LABEL_12:
    v6 = *(a2 + 9);
    *(v3 + 15) |= 0x20u;
    *(v3 + 9) = v6;
  }
}

void sub_1001E9B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::BedfTreeNode::~BedfTreeNode(awd::profile::BedfTreeNode *this)
{
  *this = off_1002B8C00;
  awd::profile::BedfTreeNode::SharedDtor(this);
  if (*(this + 5))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::BedfTreeNode::~BedfTreeNode(this);

  operator delete();
}

void awd::profile::BedfTreeNode::SharedDtor(awd::profile::BedfTreeNode *this)
{
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::BedfTreeNode::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t awd::profile::BedfTreeNode::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    *(this + 8) = &_mh_execute_header;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
      }
    }

    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 60) = 0;
  return this;
}

uint64_t awd::profile::BedfTreeNode::MergePartialFromCodedStream(awd::profile::BedfTreeNode *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v51 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
            if (!result)
            {
              return result;
            }

            v13 = v51;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v13 <= 3)
          {
            *(this + 15) |= 1u;
            *(this + 2) = v13;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 2)
            {
              goto LABEL_32;
            }

            goto LABEL_54;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_44:
          v51 = 0;
          if (v16 >= v15 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
            if (!result)
            {
              return result;
            }

            v19 = v51;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v19 - 1 <= 0xB)
          {
            *(this + 15) |= 2u;
            *(this + 3) = v19;
          }

          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 26)
          {
            *(a2 + 1) = v20 + 1;
LABEL_54:
            *(this + 15) |= 4u;
            v21 = *(this + 2);
            if (!v21)
            {
              operator new();
            }

            v51 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v23 = *(a2 + 14);
            v24 = *(a2 + 15);
            *(a2 + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v51);
            if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v21, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
            v26 = *(a2 + 14);
            v27 = __OFSUB__(v26, 1);
            v28 = v26 - 1;
            if (v28 < 0 == v27)
            {
              *(a2 + 14) = v28;
            }

            v29 = *(a2 + 1);
            if (v29 < *(a2 + 2) && *v29 == 34)
            {
              *(a2 + 1) = v29 + 1;
              goto LABEL_68;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_90;
          }
        }

        else if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_98;
          }

          if (v8 == 2)
          {
            result = sub_1000C71A8(a2, this + 40);
            if (!result)
            {
              return result;
            }

            goto LABEL_115;
          }
        }

        goto LABEL_32;
      }

      if (v7 == 4)
      {
        break;
      }

      if (v7 == 5 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_82;
      }

LABEL_32:
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
      goto LABEL_32;
    }

LABEL_68:
    *(this + 15) |= 8u;
    v30 = *(this + 3);
    if (!v30)
    {
      operator new();
    }

    v51 = 0;
    v31 = *(a2 + 1);
    if (v31 >= *(a2 + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
      {
        return 0;
      }
    }

    else
    {
      v51 = *v31;
      *(a2 + 1) = v31 + 1;
    }

    v32 = *(a2 + 14);
    v33 = *(a2 + 15);
    *(a2 + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v51);
    if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v34);
    v35 = *(a2 + 14);
    v27 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (v36 < 0 == v27)
    {
      *(a2 + 14) = v36;
    }

    v37 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v37 < v9 && *v37 == 40)
    {
      v10 = v37 + 1;
      *(a2 + 1) = v10;
LABEL_82:
      v51 = 0;
      if (v10 >= v9 || (v38 = *v10, (v38 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
        if (!result)
        {
          return result;
        }

        v38 = v51;
        v39 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v39 = v10 + 1;
        *(a2 + 1) = v39;
      }

      *(this + 8) = v38;
      *(this + 15) |= 0x10u;
      if (v39 < v9 && *v39 == 48)
      {
        v14 = v39 + 1;
        *(a2 + 1) = v14;
LABEL_90:
        v51 = 0;
        if (v14 >= v9 || (v40 = *v14, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
          if (!result)
          {
            return result;
          }

          v40 = v51;
          v41 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v41 = v14 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 9) = v40;
        *(this + 15) |= 0x20u;
        if (v41 < v9 && *v41 == 56)
        {
          do
          {
            v17 = v41 + 1;
            *(a2 + 1) = v17;
LABEL_98:
            v51 = 0;
            if (v17 >= v9 || (v42 = *v17, (v42 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
              if (!result)
              {
                return result;
              }

              v42 = v51;
            }

            else
            {
              *(a2 + 1) = v17 + 1;
            }

            v43 = *(this + 12);
            if (v43 == *(this + 13))
            {
              sub_10001C3A0(this + 5, v43 + 1);
              v43 = *(this + 12);
            }

            v44 = *(this + 5);
            *(this + 12) = v43 + 1;
            *(v44 + 4 * v43) = v42;
            v45 = *(this + 13) - *(this + 12);
            if (v45 >= 1)
            {
              v46 = v45 + 1;
              do
              {
                v47 = *(a2 + 1);
                v48 = *(a2 + 2);
                if (v47 >= v48 || *v47 != 56)
                {
                  break;
                }

                *(a2 + 1) = v47 + 1;
                v51 = 0;
                if ((v47 + 1) >= v48 || (v49 = v47[1], (v49 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
                  if (!result)
                  {
                    return result;
                  }

                  v49 = v51;
                  v44 = *(this + 5);
                }

                else
                {
                  *(a2 + 1) = v47 + 2;
                }

                v50 = *(this + 12);
                *(this + 12) = v50 + 1;
                *(v44 + 4 * v50) = v49;
                --v46;
              }

              while (v46 > 1);
            }

LABEL_115:
            v41 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          while (v41 < v9 && *v41 == 56);
          if (v41 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

int *awd::profile::BedfTreeNode::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[15];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[2], a2, a4);
    v6 = v5[15];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
  v6 = v5[15];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 2);
  if (!v8)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v8 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = v5[15];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 3);
  if (!v9)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v9 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = v5[15];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[8], a2, a4);
  if ((v5[15] & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[9], a2, a4);
  }

LABEL_8:
  if (v5[12] >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(*(v5 + 5) + 4 * v7++), a2, a4);
    }

    while (v7 < v5[12]);
  }

  return this;
}

uint64_t awd::profile::BedfTreeNode::ByteSize(awd::profile::BedfTreeNode *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_48;
  }

  if (*(this + 60))
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 15);
      if ((v3 & 2) == 0)
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
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
      v8 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
    }

    v9 = awd::profile::BedfTreeNode::ByteSize(v8);
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
    v3 = *(this + 15);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0);
    v12 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
  }

  v13 = awd::profile::BedfTreeNode::ByteSize(v12);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
  }

  else
  {
    v15 = 1;
  }

  v4 += v14 + v15 + 1;
  v3 = *(this + 15);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_36:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x20) != 0)
  {
LABEL_42:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_48:
  v20 = *(this + 12);
  if (v20 < 1)
  {
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(*(this + 5) + 4 * v21);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 10;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
        v20 = *(this + 12);
      }

      else
      {
        v24 = 1;
      }

      v22 += v24;
      ++v21;
    }

    while (v21 < v20);
  }

  result = (v22 + v4 + v20);
  *(this + 14) = result;
  return result;
}

void awd::profile::BedfConfig::MergeFrom(awd::profile::BedfConfig *this, const awd::profile::BedfConfig *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    sub_10001C3A0(v3 + 3, *(v3 + 8) + v4);
    this = memcpy((*(v3 + 3) + 4 * *(v3 + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(v3 + 8) += *(a2 + 8);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 2);
      *(v3 + 11) |= 1u;
      *(v3 + 2) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

    v7 = *(a2 + 3);
    *(v3 + 11) |= 2u;
    *(v3 + 3) = v7;
    if ((*(a2 + 11) & 4) == 0)
    {
      return;
    }

LABEL_12:
    *(v3 + 11) |= 4u;
    v8 = *(v3 + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
      v9 = *(awd::profile::BedfConfig::default_instance_ + 16);
    }

    awd::profile::BedfTreeNode::MergeFrom(v8, v9);
  }
}

void sub_1001EA8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::BedfConfig::~BedfConfig(awd::profile::BedfConfig *this)
{
  *this = off_1002B8C78;
  awd::profile::BedfConfig::SharedDtor(this);
  if (*(this + 3))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::BedfConfig::~BedfConfig(this);

  operator delete();
}

void awd::profile::BedfConfig::SharedDtor(awd::profile::BedfConfig *this)
{
  awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  if (awd::profile::BedfConfig::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t awd::profile::BedfConfig::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::profile::BedfConfig::MergePartialFromCodedStream(awd::profile::BedfConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
            if (v8 == 2)
            {
              v15 = *(this + 11);
              goto LABEL_40;
            }
          }

          else if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v16 = *(a2 + 2);
              goto LABEL_54;
            }

            if (v8 == 2)
            {
              result = sub_1000C71A8(a2, this + 24);
              if (!result)
              {
                return result;
              }

              goto LABEL_71;
            }
          }

LABEL_22:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 >= v9 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 11) |= 1u;
        if (v14 < v9 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
          goto LABEL_32;
        }
      }

      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_32:
      if (v10 >= v9 || (v18 = *v10, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v18;
        v19 = v10 + 1;
        *(a2 + 1) = v19;
      }

      v15 = *(this + 11) | 2;
      *(this + 11) = v15;
    }

    while (v19 >= v9 || *v19 != 26);
    *(a2 + 1) = v19 + 1;
LABEL_40:
    *(this + 11) = v15 | 4;
    v20 = *(this + 2);
    if (!v20)
    {
      operator new();
    }

    v41 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v21;
      *(a2 + 1) = v21 + 1;
    }

    v22 = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v41);
    if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v20, a2, v25) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
    v26 = *(a2 + 14);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(a2 + 14) = v28;
    }

    v29 = *(a2 + 1);
    v16 = *(a2 + 2);
    if (v29 < v16 && *v29 == 32)
    {
      do
      {
        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_54:
        v40 = 0;
        if (v17 >= v16 || (v30 = *v17, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v30 = v40;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        v31 = *(this + 8);
        if (v31 == *(this + 9))
        {
          sub_10001C3A0(this + 3, v31 + 1);
          v31 = *(this + 8);
        }

        v32 = *(this + 3);
        *(this + 8) = v31 + 1;
        *(v32 + 4 * v31) = v30;
        v33 = *(this + 9) - *(this + 8);
        if (v33 >= 1)
        {
          v34 = v33 + 1;
          do
          {
            v35 = *(a2 + 1);
            v36 = *(a2 + 2);
            if (v35 >= v36 || *v35 != 32)
            {
              break;
            }

            *(a2 + 1) = v35 + 1;
            v39 = 0;
            if ((v35 + 1) >= v36 || (v37 = v35[1], (v37 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v37 = v39;
              v32 = *(this + 3);
            }

            else
            {
              *(a2 + 1) = v35 + 2;
            }

            v38 = *(this + 8);
            *(this + 8) = v38 + 1;
            *(v32 + 4 * v38) = v37;
            --v34;
          }

          while (v34 > 1);
        }

LABEL_71:
        v29 = *(a2 + 1);
        v16 = *(a2 + 2);
      }

      while (v29 < v16 && *v29 == 32);
      if (v29 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}