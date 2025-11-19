void google::protobuf::FileOptions::CopyFrom(google::protobuf::FileOptions *this, const google::protobuf::FileOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::FileOptions::Clear(this);

    google::protobuf::FileOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::MessageOptions::MessageOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45B88;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 77) = 0;
  return result;
}

google::protobuf::MessageOptions *google::protobuf::MessageOptions::MessageOptions(google::protobuf::MessageOptions *this, google::protobuf::Arena *a2, const google::protobuf::MessageOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45B88;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 9));
  }

  else
  {
    v9 = 0;
  }

  *(this + 9) = v9;
  v10 = *(a3 + 20);
  *(this + 84) = *(a3 + 84);
  *(this + 20) = v10;
  return this;
}

void google::protobuf::MessageOptions::~MessageOptions(google::protobuf::MessageOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MessageOptions::~MessageOptions(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::MessageOptions::MergeImpl(google::protobuf::MessageOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    v10 = *(this + 9);
    v11 = *(a2 + 9);
    if (v10)
    {
      google::protobuf::FeatureSet::MergeImpl(v10, v11, a3, a4);
      if ((v8 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v11);
      if ((v8 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_7:
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  *(this + 80) = *(a2 + 80);
  if ((v8 & 4) == 0)
  {
LABEL_8:
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(this + 81) = *(a2 + 81);
  if ((v8 & 8) == 0)
  {
LABEL_9:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(this + 82) = *(a2 + 82);
  if ((v8 & 0x10) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(this + 83) = *(a2 + 83);
  if ((v8 & 0x20) != 0)
  {
LABEL_11:
    *(this + 84) = *(a2 + 84);
  }

LABEL_12:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_MessageOptions_default_instance_, (a2 + 16), a4);
  v9 = *(a2 + 1);
  if (v9)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::MessageOptions::_InternalSerialize(google::protobuf::MessageOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 80);
    *v7 = 8;
    v7[1] = v11;
    v7 += 2;
    if ((v9 & 4) == 0)
    {
LABEL_3:
      if ((v9 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v12 = *(this + 81);
  *v7 = 16;
  v7[1] = v12;
  v7 += 2;
  if ((v9 & 8) == 0)
  {
LABEL_4:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v13 = *(this + 82);
  *v7 = 24;
  v7[1] = v13;
  v7 += 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_5:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v14 = *(this + 83);
  *v7 = 56;
  v7[1] = v14;
  v7 += 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_6:
    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v15 = *(this + 84);
  *v7 = 88;
  v7[1] = v15;
  v7 += 2;
  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = *(this + 14);
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0xC, *(this + 9), *(*(this + 9) + 44), v7, a3, a6);
  v10 = *(this + 14);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_25:
  v16 = 0;
  v17 = (this + 48);
  do
  {
    if (*v17)
    {
      v18 = (*v17 + 8 * v16 + 7);
    }

    else
    {
      v18 = (this + 48);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v18, *(*v18 + 20), v7, a3, a6);
    ++v16;
  }

  while (v10 != v16);
LABEL_30:
  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_MessageOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::MessageOptions::ByteSizeLong(google::protobuf::MessageOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v11 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 9));
      v5 = &v11[v5 + 1 + ((352 - 9 * __clz(v11)) >> 6)];
    }

    v5 = (v5 + ((v10 >> 1) & 2) + (v10 & 2) + ((v10 >> 2) & 2) + ((v10 >> 3) & 2) + ((v10 >> 4) & 2));
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}

void google::protobuf::MessageOptions::CopyFrom(google::protobuf::MessageOptions *this, const google::protobuf::MessageOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MessageOptions::Clear(this);

    google::protobuf::MessageOptions::MergeImpl(this, a2, v5, v6);
  }
}

void google::protobuf::FieldOptions_EditionDefault::~FieldOptions_EditionDefault(google::protobuf::FieldOptions_EditionDefault *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);

  JUMPOUT(0x23EED9460);
}

void *google::protobuf::FieldOptions_EditionDefault::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a2 + 3);
      *(this + 4) |= 1u;
      v5 = this[1];
      v6 = a2;
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = this;
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v4 & 0xFFFFFFFFFFFFFFFCLL), v5);
      this = v7;
      a2 = v6;
    }

    if ((v3 & 2) != 0)
    {
      *(this + 8) = *(a2 + 8);
    }
  }

  *(this + 4) |= v3;
  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v9, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions_EditionDefault::Clear(google::protobuf::FieldOptions_EditionDefault *this)
{
  if ((*(this + 16) & 1) == 0)
  {
LABEL_4:
    v3 = *(this + 8);
    result = (this + 8);
    *(result + 6) = 0;
    *(result + 2) = 0;
    if ((v3 & 1) == 0)
    {
      return result;
    }

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    *v1 = 0;
    *(v1 + 23) = 0;
    goto LABEL_4;
  }

  **v1 = 0;
  *(v1 + 8) = 0;
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions_EditionDefault::_InternalSerialize(google::protobuf::FieldOptions_EditionDefault *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (*a3 <= v4)
    {
      v16 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v13 = *(this + 8);
      *v16 = 24;
      v14 = v16 + 1;
      if (v13 < 0x80)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = *(this + 8);
      *v4 = 24;
      v14 = v4 + 1;
      if (v13 < 0x80)
      {
LABEL_14:
        LOBYTE(v15) = v13;
        goto LABEL_15;
      }
    }

    do
    {
      *v14++ = v13 | 0x80;
      v15 = v13 >> 7;
      v17 = v13 >> 14;
      v13 >>= 7;
    }

    while (v17);
LABEL_15:
    *v14 = v15;
    v4 = v14 + 1;
    v7 = *(this + 1);
    if ((v7 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_16;
  }

  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 23);
  if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - a2 + 14 < v10)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v9, a2);
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 18;
    v11 = a2 + 2;
    *(a2 + 1) = v10;
    if (*(v9 + 23) >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = *v9;
    }

    memcpy(v4 + 2, v12, v10);
    v4 = &v11[v10];
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_3:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

LABEL_16:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::FieldOptions_EditionDefault::ByteSizeLong(google::protobuf::FieldOptions_EditionDefault *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    v3 = (this + 20);
    return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
  }

  if (v1)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v2 = (v7 + ((352 - 9 * __clz(v7)) >> 6) + 1);
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v2 = (v2 + ((640 - 9 * __clz(*(this + 8))) >> 6) + 1);
    v3 = (this + 20);
    return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = (this + 20);
  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
}

uint64_t google::protobuf::FieldOptions::FieldOptions(uint64_t result, uint64_t a2)
{
  *result = off_284F45C58;
  *(result + 8) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a2;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a2;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = a2;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 112) = 0;
  *(result + 136) = 0;
  return result;
}

google::protobuf::FieldOptions *google::protobuf::FieldOptions::FieldOptions(google::protobuf::FieldOptions *this, google::protobuf::Arena *a2, const google::protobuf::FieldOptions *a3, __n128 a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45C58;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  v9 = *(a3 + 10);
  *(this + 12) = 0;
  *(this + 5) = v9;
  *(this + 13) = 0;
  *(this + 7) = a2;
  v10 = *(a3 + 12);
  if (v10)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 48, 0, *(a3 + 12));
    *(this + 12) = v10;
    if (v10 >= 1)
    {
      v11 = *(this + 7);
      v12 = *(a3 + 7);
      if (v10 < 8)
      {
        goto LABEL_10;
      }

      if ((v11 - v12) < 0x20)
      {
        goto LABEL_10;
      }

      v13 = v10;
      v14 = v10 & 0x7FFFFFF8;
      LODWORD(v10) = v10 - (v10 & 0x7FFFFFF8);
      v15 = (v11 + 4 * v14);
      v16 = (v12 + 4 * v14);
      v17 = v12 + 1;
      v18 = v11 + 1;
      v19 = v14;
      do
      {
        a4 = v17[-1];
        v20 = *v17;
        v18[-1] = a4;
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      v11 = v15;
      v12 = v16;
      if (v14 != v13)
      {
LABEL_10:
        v21 = v10 + 1;
        do
        {
          v22 = v12->n128_u32[0];
          v12 = (v12 + 4);
          v11->n128_u32[0] = v22;
          v11 = (v11 + 4);
          --v21;
        }

        while (v21 > 1);
      }
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = a2;
  if (*(a3 + 18))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 16, (a3 + 64), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldOptions_EditionDefault>);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  if (*(a3 + 24))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 22, (a3 + 88), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4.n128_f64[0]);
  if (*(this + 40))
  {
    v23 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 14));
  }

  else
  {
    v23 = 0;
  }

  *(this + 14) = v23;
  v24 = *(a3 + 120);
  *(this + 34) = *(a3 + 34);
  *(this + 120) = v24;
  return this;
}

void sub_23CDB41D4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<google::protobuf::FieldOptions_EditionDefault>::~RepeatedPtrField(v3);
  if (*(v1 + 52) >= 1)
  {
    v5 = *(v1 + 56);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
      google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
      _Unwind_Resume(a1);
    }
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  _Unwind_Resume(a1);
}

void google::protobuf::FieldOptions::SharedDtor(google::protobuf::FieldOptions *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v2 + 16));
    MEMORY[0x23EED9460](v2, 0x10A1C4007999064);
  }

  if (*(this + 11))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 88));
  }

  if (*(this + 8))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 64));
  }

  if (*(this + 13) < 1 || (v3 = *(this + 7), v5 = *(v3 - 8), v4 = (v3 - 8), v5))
  {
    v6 = (this + 16);
  }

  else
  {
    operator delete(v4);
    v6 = (this + 16);
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet(v6);
}

void google::protobuf::FieldOptions::~FieldOptions(google::protobuf::FieldOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FieldOptions::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::FieldOptions::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::FieldOptions::MergeImpl(google::protobuf::FieldOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, __n128 a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(a2 + 12);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *(a2 + 12);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = *(this + 12);
  a3 = (v9 + v8);
  if (*(this + 13) < a3)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 48, v9, a3);
    LODWORD(v9) = *(this + 12);
    a3 = (v9 + v8);
    v10 = *(this + 7);
    *(this + 12) = a3;
    if (v8 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(this + 7);
    *(this + 12) = a3;
    if (v8 < 1)
    {
      goto LABEL_12;
    }
  }

  v11 = *(a2 + 7);
  v12 = (v10 + 4 * v9);
  if (v8 < 8)
  {
    goto LABEL_10;
  }

  v13 = (4 * v9 + v10);
  if ((v13 - v11) < 0x20)
  {
    goto LABEL_10;
  }

  v14 = v8;
  v15 = v8 & 0x7FFFFFF8;
  LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
  v12 += v15;
  v16 = (v11 + 4 * v15);
  v17 = v11 + 1;
  v18 = v13 + 1;
  v19 = v15;
  do
  {
    a4 = v17[-1];
    v20 = *v17;
    v18[-1] = a4;
    *v18 = v20;
    v17 += 2;
    v18 += 2;
    v19 -= 8;
  }

  while (v19);
  v11 = v16;
  if (v15 != v14)
  {
LABEL_10:
    v21 = v8 + 1;
    do
    {
      v22 = v11->n128_u32[0];
      v11 = (v11 + 4);
      *v12++ = v22;
      --v21;
    }

    while (v21 > 1);
  }

LABEL_12:
  if (*(a2 + 18))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 16, (a2 + 64), google::protobuf::Arena::CopyConstruct<google::protobuf::FieldOptions_EditionDefault>);
  }

  if (*(a2 + 24))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 22, (a2 + 88), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  v23 = *(a2 + 10);
  if (!v23)
  {
    goto LABEL_26;
  }

  if (v23)
  {
    v25 = *(this + 14);
    v26 = *(a2 + 14);
    if (v25)
    {
      google::protobuf::FeatureSet::MergeImpl(v25, v26, a3, a4.n128_f64[0]);
      if ((v23 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *(this + 14) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v26);
      if ((v23 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_19:
    if ((v23 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

  if ((v23 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_39:
  *(this + 30) = *(a2 + 30);
  if ((v23 & 4) == 0)
  {
LABEL_20:
    if ((v23 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(this + 31) = *(a2 + 31);
  if ((v23 & 8) == 0)
  {
LABEL_21:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(this + 128) = *(a2 + 128);
  if ((v23 & 0x10) == 0)
  {
LABEL_22:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_23;
    }

LABEL_43:
    *(this + 130) = *(a2 + 130);
    if ((v23 & 0x40) == 0)
    {
LABEL_24:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_42:
  *(this + 129) = *(a2 + 129);
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_23:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_44:
  *(this + 131) = *(a2 + 131);
  if ((v23 & 0x80) != 0)
  {
LABEL_25:
    *(this + 132) = *(a2 + 132);
  }

LABEL_26:
  if ((v23 & 0x300) != 0)
  {
    if ((v23 & 0x100) != 0)
    {
      *(this + 133) = *(a2 + 133);
    }

    if ((v23 & 0x200) != 0)
    {
      *(this + 34) = *(a2 + 34);
    }
  }

  *(this + 10) |= v23;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_FieldOptions_default_instance_, (a2 + 16), a4.n128_f64[0]);
  v24 = *(a2 + 1);
  if (v24)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v24 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions::_InternalSerialize(google::protobuf::FieldOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 2) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  if (*a3 <= a2)
  {
    v42 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v11 = *(this + 30);
    *v42 = 8;
    v12 = v42 + 1;
    if (v11 < 0x80)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *(this + 30);
    *a2 = 8;
    v12 = a2 + 1;
    if (v11 < 0x80)
    {
LABEL_14:
      LOBYTE(v13) = v11;
      goto LABEL_15;
    }
  }

  do
  {
    *v12++ = v11 | 0x80;
    v13 = v11 >> 7;
    v43 = v11 >> 14;
    v11 >>= 7;
  }

  while (v43);
LABEL_15:
  *v12 = v13;
  v7 = v12 + 1;
  if ((v9 & 8) == 0)
  {
LABEL_3:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v14 = *(this + 128);
  *v7 = 16;
  v7[1] = v14;
  v7 += 2;
  if ((v9 & 0x40) == 0)
  {
LABEL_4:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v15 = *(this + 131);
  *v7 = 24;
  v7[1] = v15;
  v7 += 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_5:
    if ((v9 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v16 = *(this + 129);
  *v7 = 40;
  v7[1] = v16;
  v7 += 2;
  if ((v9 & 4) == 0)
  {
LABEL_6:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_25:
  if (*a3 <= v7)
  {
    v44 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v17 = *(this + 31);
    *v44 = 48;
    v18 = v44 + 1;
    if (v17 < 0x80)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = *(this + 31);
    *v7 = 48;
    v18 = v7 + 1;
    if (v17 < 0x80)
    {
LABEL_27:
      LOBYTE(v19) = v17;
      goto LABEL_28;
    }
  }

  do
  {
    *v18++ = v17 | 0x80;
    v19 = v17 >> 7;
    v45 = v17 >> 14;
    v17 >>= 7;
  }

  while (v45);
LABEL_28:
  *v18 = v19;
  v7 = v18 + 1;
  if ((v9 & 0x80) == 0)
  {
LABEL_7:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v20 = *(this + 132);
  *v7 = 80;
  v7[1] = v20;
  v7 += 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_8:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v21 = *(this + 130);
  *v7 = 120;
  v7[1] = v21;
  v7 += 2;
  if ((v9 & 0x100) == 0)
  {
LABEL_9:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    if (*a3 <= v7)
    {
      v46 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v23 = *(this + 34);
      *v46 = 392;
      v24 = v46 + 2;
      if (v23 < 0x80)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v23 = *(this + 34);
      *v7 = 392;
      v24 = v7 + 2;
      if (v23 < 0x80)
      {
LABEL_40:
        LOBYTE(v25) = v23;
        goto LABEL_41;
      }
    }

    do
    {
      *v24++ = v23 | 0x80;
      v25 = v23 >> 7;
      v47 = v23 >> 14;
      v23 >>= 7;
    }

    while (v47);
LABEL_41:
    *v24 = v25;
    v7 = v24 + 1;
    v10 = *(this + 12);
    if (v10 < 1)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v22 = *(this + 133);
  *v7 = 384;
  v7[2] = v22;
  v7 += 3;
  if ((v9 & 0x200) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  v10 = *(this + 12);
  if (v10 >= 1)
  {
LABEL_42:
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v7)
      {
        v30 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
        v27 = *(*(this + 7) + 4 * i);
        *v30 = 408;
        v28 = v30 + 2;
        if (v27 >= 0x80)
        {
          do
          {
LABEL_49:
            *v28++ = v27 | 0x80;
            v29 = v27 >> 7;
            v31 = v27 >> 14;
            v27 >>= 7;
          }

          while (v31);
          goto LABEL_46;
        }
      }

      else
      {
        v27 = *(*(this + 7) + 4 * i);
        *v7 = 408;
        v28 = v7 + 2;
        if (v27 >= 0x80)
        {
          goto LABEL_49;
        }
      }

      LOBYTE(v29) = v27;
LABEL_46:
      *v28 = v29;
      v7 = v28 + 1;
    }
  }

LABEL_51:
  v32 = *(this + 18);
  if (v32)
  {
    v33 = 0;
    v34 = (this + 64);
    do
    {
      if (*v34)
      {
        v35 = (*v34 + 8 * v33 + 7);
      }

      else
      {
        v35 = (this + 64);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x14, *v35, *(*v35 + 20), v7, a3, a6);
      ++v33;
    }

    while (v32 != v33);
  }

  if (v9)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x15, *(this + 14), *(*(this + 14) + 44), v7, a3, a6);
  }

  v36 = *(this + 24);
  if (v36)
  {
    v37 = 0;
    v38 = (this + 88);
    do
    {
      if (*v38)
      {
        v39 = (*v38 + 8 * v37 + 7);
      }

      else
      {
        v39 = (this + 88);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v39, *(*v39 + 20), v7, a3, a6);
      ++v37;
    }

    while (v36 != v37);
  }

  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_FieldOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::FieldOptions::ByteSizeLong(google::protobuf::FieldOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 7);
    if (v3 != 1 && (v3 - 2147483649) > 0xFFFFFFFF7FFFFFFFLL)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v7 = v3 & 0xFFFFFFFE;
      v11 = v7;
      do
      {
        v12 = (v4 + (v8 >> 30));
        v9 += (640 - 9 * __clz(*v12)) >> 6;
        v10 += (640 - 9 * __clz(v12[1])) >> 6;
        v8 += 0x200000000;
        v11 -= 2;
      }

      while (v11);
      v6 = v10 + v9;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v13 = v3 - v7;
    v14 = v7 << 32;
    do
    {
      v6 += (640 - 9 * __clz(*(v4 + (v14 >> 30)))) >> 6;
      v14 += 0x100000000;
      --v13;
    }

    while (v13);
  }

  else
  {
    v6 = 0;
  }

LABEL_13:
  v15 = *(this + 8);
  v16 = *(this + 18);
  v17 = v6 + v2 + 2 * (v16 + v3);
  if (v15)
  {
    v18 = (v15 + 7);
  }

  else
  {
    v18 = this + 64;
  }

  if (v16)
  {
    for (i = 8 * v16; i; i -= 8)
    {
      v22 = *v18;
      v23 = *(*v18 + 16);
      if ((v23 & 3) != 0)
      {
        if (v23)
        {
          v24 = *(v22 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = *(v24 + 23);
          v26 = *(v24 + 8);
          if ((v25 & 0x80u) == 0)
          {
            v26 = v25;
          }

          v20 = (v26 + ((352 - 9 * __clz(v26)) >> 6) + 1);
          if ((v23 & 2) == 0)
          {
            goto LABEL_19;
          }

LABEL_27:
          v20 = (v20 + ((640 - 9 * __clz(*(v22 + 32))) >> 6) + 1);
          goto LABEL_19;
        }

        v20 = 0;
        if ((v23 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = 0;
      }

LABEL_19:
      v21 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v22, v20, (v22 + 20));
      v17 += &v21[(352 - 9 * __clz(v21)) >> 6];
      v18 += 8;
    }
  }

  v27 = *(this + 11);
  v28 = *(this + 24);
  v29 = (v17 + 2 * v28);
  if (v27)
  {
    v30 = (v27 + 7);
  }

  else
  {
    v30 = (this + 88);
  }

  if (v28)
  {
    v31 = 8 * v28;
    do
    {
      v32 = *v30++;
      v33 = google::protobuf::UninterpretedOption::ByteSizeLong(v32);
      v29 = (v29 + v33 + ((352 - 9 * __clz(v33)) >> 6));
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(this + 10);
  if (v34)
  {
    if (v34)
    {
      v37 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 14));
      v29 = &v37[((352 - 9 * __clz(v37)) >> 6) + 2 + v29];
      if ((v34 & 2) == 0)
      {
LABEL_37:
        if ((v34 & 4) == 0)
        {
LABEL_39:
          v35.i64[0] = 0x200000002;
          v35.i64[1] = 0x200000002;
          v29 = (v29 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v34), xmmword_23CE4F5F0), v35)) + ((v34 >> 6) & 2));
          goto LABEL_40;
        }

LABEL_38:
        v29 = (v29 + ((640 - 9 * __clz(*(this + 31))) >> 6) + 1);
        goto LABEL_39;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_37;
    }

    v29 = (v29 + ((640 - 9 * __clz(*(this + 30))) >> 6) + 1);
    if ((v34 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_40:
  if ((v34 & 0x300) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      v29 = (v29 + 3);
    }

    if ((v34 & 0x200) != 0)
    {
      v29 = (v29 + ((640 - 9 * __clz(*(this + 34))) >> 6) + 2);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v29, this + 11);
}

void google::protobuf::FieldOptions::CopyFrom(google::protobuf::FieldOptions *this, const google::protobuf::FieldOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldOptions::Clear(this);

    google::protobuf::FieldOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::OneofOptions::OneofOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45AB8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  return result;
}

google::protobuf::OneofOptions *google::protobuf::OneofOptions::OneofOptions(google::protobuf::OneofOptions *this, google::protobuf::Arena *a2, const google::protobuf::OneofOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45AB8;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 9));
  }

  else
  {
    *(this + 9) = 0;
  }

  return this;
}

void google::protobuf::OneofOptions::~OneofOptions(google::protobuf::OneofOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::OneofOptions::~OneofOptions(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::OneofOptions::MergeImpl(google::protobuf::OneofOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(this + 9);
    v10 = *(a2 + 9);
    if (v9)
    {
      google::protobuf::FeatureSet::MergeImpl(v9, v10, a3, a4);
    }

    else
    {
      *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v10);
    }
  }

  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_OneofOptions_default_instance_, (a2 + 16), a4);
  v11 = *(a2 + 1);
  if (v11)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::OneofOptions::_InternalSerialize(google::protobuf::OneofOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  if (*(this + 40))
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *(this + 9), *(*(this + 9) + 44), a2, a3, a6);
  }

  v9 = *(this + 14);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 48);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v12, *(*v12 + 20), v7, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_OneofOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::OneofOptions::ByteSizeLong(google::protobuf::OneofOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 40))
  {
    v10 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 9));
    v5 = &v10[v5 + 1 + ((352 - 9 * __clz(v10)) >> 6)];
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}

void google::protobuf::OneofOptions::CopyFrom(google::protobuf::OneofOptions *this, const google::protobuf::OneofOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::EnumOptions::EnumOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45DF8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 79) = 0;
  return result;
}

google::protobuf::EnumOptions *google::protobuf::EnumOptions::EnumOptions(google::protobuf::EnumOptions *this, google::protobuf::Arena *a2, const google::protobuf::EnumOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45DF8;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 9));
  }

  else
  {
    v9 = 0;
  }

  *(this + 9) = v9;
  v10 = *(a3 + 40);
  *(this + 82) = *(a3 + 82);
  *(this + 40) = v10;
  return this;
}

void google::protobuf::EnumOptions::~EnumOptions(google::protobuf::EnumOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumOptions::~EnumOptions(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::EnumOptions::MergeImpl(google::protobuf::EnumOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_10;
  }

  if (v8)
  {
    v10 = *(this + 9);
    v11 = *(a2 + 9);
    if (v10)
    {
      google::protobuf::FeatureSet::MergeImpl(v10, v11, a3, a4);
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v11);
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_7:
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  *(this + 80) = *(a2 + 80);
  if ((v8 & 4) == 0)
  {
LABEL_8:
    if ((v8 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(this + 81) = *(a2 + 81);
  if ((v8 & 8) != 0)
  {
LABEL_9:
    *(this + 82) = *(a2 + 82);
  }

LABEL_10:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_EnumOptions_default_instance_, (a2 + 16), a4);
  v9 = *(a2 + 1);
  if (v9)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::_InternalSerialize(google::protobuf::EnumOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 80);
    *v7 = 16;
    v7[1] = v11;
    v7 += 2;
    if ((v9 & 4) == 0)
    {
LABEL_3:
      if ((v9 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v12 = *(this + 81);
  *v7 = 24;
  v7[1] = v12;
  v7 += 2;
  if ((v9 & 8) == 0)
  {
LABEL_4:
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v13 = *(this + 82);
  *v7 = 48;
  v7[1] = v13;
  v7 += 2;
  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = *(this + 14);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(7, *(this + 9), *(*(this + 9) + 44), v7, a3, a6);
  v10 = *(this + 14);
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_17:
  v14 = 0;
  v15 = (this + 48);
  do
  {
    if (*v15)
    {
      v16 = (*v15 + 8 * v14 + 7);
    }

    else
    {
      v16 = (this + 48);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v16, *(*v16 + 20), v7, a3, a6);
    ++v14;
  }

  while (v10 != v14);
LABEL_22:
  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_EnumOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::EnumOptions::ByteSizeLong(google::protobuf::EnumOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 0xF) != 0)
  {
    if (v10)
    {
      v11 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 9));
      v5 = &v11[v5 + 1 + ((352 - 9 * __clz(v11)) >> 6)];
    }

    v5 = (v5 + ((v10 >> 1) & 2) + (v10 & 2) + ((v10 >> 2) & 2));
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}

void google::protobuf::EnumOptions::CopyFrom(google::protobuf::EnumOptions *this, const google::protobuf::EnumOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::EnumValueOptions::EnumValueOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45D90;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

google::protobuf::EnumValueOptions *google::protobuf::EnumValueOptions::EnumValueOptions(google::protobuf::EnumValueOptions *this, google::protobuf::Arena *a2, const google::protobuf::EnumValueOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45D90;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 9));
  }

  else
  {
    v9 = 0;
  }

  *(this + 9) = v9;
  *(this + 40) = *(a3 + 40);
  return this;
}

void google::protobuf::EnumValueOptions::~EnumValueOptions(google::protobuf::EnumValueOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumValueOptions::~EnumValueOptions(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::EnumValueOptions::MergeImpl(google::protobuf::EnumValueOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if ((v8 & 7) == 0)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    v10 = *(this + 9);
    v11 = *(a2 + 9);
    if (v10)
    {
      google::protobuf::FeatureSet::MergeImpl(v10, v11, a3, a4);
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v11);
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_7:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  *(this + 80) = *(a2 + 80);
  if ((v8 & 4) != 0)
  {
LABEL_8:
    *(this + 81) = *(a2 + 81);
  }

LABEL_9:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_EnumValueOptions_default_instance_, (a2 + 16), a4);
  v9 = *(a2 + 1);
  if (v9)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::_InternalSerialize(google::protobuf::EnumValueOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 80);
    *v7 = 8;
    v7[1] = v11;
    v7 += 2;
    if ((v9 & 1) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *(this + 9), *(*(this + 9) + 44), v7, a3, a6);
  if ((v9 & 4) == 0)
  {
LABEL_4:
    v10 = *(this + 14);
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v12 = *(this + 81);
  *v7 = 24;
  v7[1] = v12;
  v7 += 2;
  v10 = *(this + 14);
  if (v10)
  {
LABEL_13:
    v13 = 0;
    v14 = (this + 48);
    do
    {
      if (*v14)
      {
        v15 = (*v14 + 8 * v13 + 7);
      }

      else
      {
        v15 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v15, *(*v15 + 20), v7, a3, a6);
      ++v13;
    }

    while (v10 != v13);
  }

LABEL_18:
  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_EnumValueOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::EnumValueOptions::ByteSizeLong(google::protobuf::EnumValueOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      v11 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 9));
      v5 = &v11[v5 + 1 + ((352 - 9 * __clz(v11)) >> 6)];
    }

    v5 = (v5 + ((v10 >> 1) & 2) + (v10 & 2));
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}

void google::protobuf::EnumValueOptions::CopyFrom(google::protobuf::EnumValueOptions *this, const google::protobuf::EnumValueOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::ServiceOptions::ServiceOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45A50;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

google::protobuf::ServiceOptions *google::protobuf::ServiceOptions::ServiceOptions(google::protobuf::ServiceOptions *this, google::protobuf::Arena *a2, const google::protobuf::ServiceOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45A50;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 9));
  }

  else
  {
    v9 = 0;
  }

  *(this + 9) = v9;
  *(this + 80) = *(a3 + 80);
  return this;
}

void google::protobuf::ServiceOptions::~ServiceOptions(google::protobuf::ServiceOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::ServiceOptions::~ServiceOptions(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::ServiceOptions::MergeImpl(google::protobuf::ServiceOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if ((v8 & 3) == 0)
  {
    goto LABEL_10;
  }

  if ((v8 & 1) == 0)
  {
LABEL_8:
    if ((v8 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = *(this + 9);
  v10 = *(a2 + 9);
  if (v9)
  {
    google::protobuf::FeatureSet::MergeImpl(v9, v10, a3, a4);
    goto LABEL_8;
  }

  *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v10);
  if ((v8 & 2) != 0)
  {
LABEL_9:
    *(this + 80) = *(a2 + 80);
  }

LABEL_10:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_ServiceOptions_default_instance_, (a2 + 16), a4);
  v11 = *(a2 + 1);
  if (v11)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::_InternalSerialize(google::protobuf::ServiceOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 80);
    *v7 = 648;
    v7[2] = v11;
    v7 += 3;
    if ((v9 & 1) == 0)
    {
LABEL_3:
      v10 = *(this + 14);
      if (!v10)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x22, *(this + 9), *(*(this + 9) + 44), v7, a3, a6);
  v10 = *(this + 14);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_9:
  v12 = 0;
  v13 = (this + 48);
  do
  {
    if (*v13)
    {
      v14 = (*v13 + 8 * v12 + 7);
    }

    else
    {
      v14 = (this + 48);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v14, *(*v14 + 20), v7, a3, a6);
    ++v12;
  }

  while (v10 != v12);
LABEL_14:
  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_ServiceOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::ServiceOptions::ByteSizeLong(google::protobuf::ServiceOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 9));
      v5 = &v11[v5 + 2 + ((352 - 9 * __clz(v11)) >> 6)];
    }

    if ((v10 & 2) != 0)
    {
      v5 = (v5 + 3);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}

void google::protobuf::ServiceOptions::CopyFrom(google::protobuf::ServiceOptions *this, const google::protobuf::ServiceOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeImpl(this, a2, v5, v6);
  }
}

double google::protobuf::MethodOptions::MethodOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45B20;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a2;
  return result;
}

google::protobuf::MethodOptions *google::protobuf::MethodOptions::MethodOptions(google::protobuf::MethodOptions *this, google::protobuf::Arena *a2, const google::protobuf::MethodOptions *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45B20;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a3 + 10);
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 8) = a2;
  if (*(a3 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a3 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  if (*(this + 40))
  {
    v9 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(a2, *(a3 + 9));
  }

  else
  {
    v9 = 0;
  }

  *(this + 9) = v9;
  *(this + 10) = *(a3 + 10);
  return this;
}

void google::protobuf::MethodOptions::~MethodOptions(google::protobuf::MethodOptions *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MethodOptions::~MethodOptions(this);

  JUMPOUT(0x23EED9460);
}

void google::protobuf::MethodOptions::MergeImpl(google::protobuf::MethodOptions *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    if (!*(a2 + 14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 14))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>);
  }

LABEL_4:
  v8 = *(a2 + 10);
  if ((v8 & 7) == 0)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    v10 = *(this + 9);
    v11 = *(a2 + 9);
    if (v10)
    {
      google::protobuf::FeatureSet::MergeImpl(v10, v11, a3, a4);
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(this + 9) = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v7, v11);
      if ((v8 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_7:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  *(this + 80) = *(a2 + 80);
  if ((v8 & 4) != 0)
  {
LABEL_8:
    *(this + 21) = *(a2 + 21);
  }

LABEL_9:
  *(this + 10) |= v8;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_MethodOptions_default_instance_, (a2 + 16), a4);
  v9 = *(a2 + 1);
  if (v9)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::_InternalSerialize(google::protobuf::MethodOptions *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 10);
  if ((v9 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 80);
    *v7 = 648;
    v7[2] = v11;
    v7 += 3;
    if ((v9 & 4) == 0)
    {
LABEL_3:
      if ((v9 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v7)
  {
    v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v12 = *(this + 21);
    *v20 = 656;
    v13 = v20 + 2;
    if (v12 < 0x80)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(this + 21);
    *v7 = 656;
    v13 = v7 + 2;
    if (v12 < 0x80)
    {
LABEL_11:
      LOBYTE(v14) = v12;
      goto LABEL_12;
    }
  }

  do
  {
    *v13++ = v12 | 0x80;
    v14 = v12 >> 7;
    v21 = v12 >> 14;
    v12 >>= 7;
  }

  while (v21);
LABEL_12:
  *v13 = v14;
  v7 = v13 + 1;
  if ((v9 & 1) == 0)
  {
LABEL_4:
    v10 = *(this + 14);
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x23, *(this + 9), *(*(this + 9) + 44), v7, a3, a6);
  v10 = *(this + 14);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_14:
  v15 = 0;
  v16 = (this + 48);
  do
  {
    if (*v16)
    {
      v17 = (*v16 + 8 * v15 + 7);
    }

    else
    {
      v17 = (this + 48);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x3E7, *v17, *(*v17 + 20), v7, a3, a6);
    ++v15;
  }

  while (v10 != v15);
LABEL_19:
  if (*(this + 13))
  {
    v7 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_MethodOptions_default_instance_, 0x3E8, 0x20000000, v7, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

char *google::protobuf::MethodOptions::ByteSizeLong(google::protobuf::MethodOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 6);
  v4 = *(this + 14);
  v5 = (v2 + 2 * v4);
  if (v3)
  {
    v6 = (v3 + 7);
  }

  else
  {
    v6 = (this + 48);
  }

  if (v4)
  {
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v5 = (v5 + v9 + ((352 - 9 * __clz(v9)) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      v11 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 9));
      v5 = &v11[v5 + 2 + ((352 - 9 * __clz(v11)) >> 6)];
    }

    if ((v10 & 2) != 0)
    {
      v5 = (v5 + 3);
    }

    if ((v10 & 4) != 0)
    {
      v5 = (v5 + ((640 - 9 * __clz(*(this + 21))) >> 6) + 2);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 11);
}

void google::protobuf::MethodOptions::CopyFrom(google::protobuf::MethodOptions *this, const google::protobuf::MethodOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeImpl(this, a2, v5, v6);
  }
}

void google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);

  JUMPOUT(0x23EED9460);
}

void *google::protobuf::UninterpretedOption_NamePart::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a2 + 3);
      *(this + 4) |= 1u;
      v5 = this[1];
      v6 = a2;
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = this;
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v4 & 0xFFFFFFFFFFFFFFFCLL), v5);
      this = v7;
      a2 = v6;
    }

    if ((v3 & 2) != 0)
    {
      *(this + 32) = *(a2 + 32);
    }
  }

  *(this + 4) |= v3;
  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v9, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::Clear(google::protobuf::UninterpretedOption_NamePart *this)
{
  if ((*(this + 16) & 1) == 0)
  {
LABEL_4:
    v3 = *(this + 8);
    result = (this + 8);
    *(result + 24) = 0;
    *(result + 2) = 0;
    if ((v3 & 1) == 0)
    {
      return result;
    }

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    *v1 = 0;
    *(v1 + 23) = 0;
    goto LABEL_4;
  }

  **v1 = 0;
  *(v1 + 8) = 0;
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(google::protobuf::UninterpretedOption_NamePart *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 32);
    *v4 = 16;
    v4[1] = v13;
    v4 += 2;
    v7 = *(this + 1);
    if ((v7 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_15;
  }

  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 23);
  if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - a2 + 14 < v10)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v9, a2);
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = 10;
    v11 = a2 + 2;
    *(a2 + 1) = v10;
    if (*(v9 + 23) >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = *v9;
    }

    memcpy(v4 + 2, v12, v10);
    v4 = &v11[v10];
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_3:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

LABEL_15:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(google::protobuf::UninterpretedOption_NamePart *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v2 = (v7 + ((352 - 9 * __clz(v7)) >> 6) + 1 + (v1 & 2));
      v3 = (this + 20);
    }

    else
    {
      v2 = (v1 & 2);
      v3 = (this + 20);
    }
  }

  else
  {
    v2 = 0;
    v3 = (this + 20);
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, v3);
}

google::protobuf::UninterpretedOption *google::protobuf::UninterpretedOption::UninterpretedOption(google::protobuf::UninterpretedOption *this, google::protobuf::Arena *a2, const google::protobuf::UninterpretedOption *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F458B0;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 4) = *(a3 + 4);
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
  *(this + 5) = a2;
  if (*(a3 + 8))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a3 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption_NamePart>);
  }

  v8 = *(a3 + 6);
  if ((v8 & 3) != 0)
  {
    v8 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 48), a2);
  }

  *(this + 6) = v8;
  v9 = *(a3 + 7);
  if ((v9 & 3) != 0)
  {
    v9 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 56), a2);
  }

  *(this + 7) = v9;
  v10 = *(a3 + 8);
  if ((v10 & 3) != 0)
  {
    v10 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 64), a2);
  }

  *(this + 8) = v10;
  v11 = *(a3 + 72);
  *(this + 11) = *(a3 + 11);
  *(this + 72) = v11;
  return this;
}

void google::protobuf::UninterpretedOption::~UninterpretedOption(google::protobuf::UninterpretedOption *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 6);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 7);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 8);
  if (*(this + 3))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 24));
  }
}

{
  google::protobuf::UninterpretedOption::~UninterpretedOption(this);

  JUMPOUT(0x23EED9460);
}

int *google::protobuf::UninterpretedOption::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 8))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption_NamePart>);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v9 = *(a2 + 7);
    *(v4 + 16) |= 2u;
    v10 = *(v4 + 8);
    if (v10)
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 56), (v9 & 0xFFFFFFFFFFFFFFFCLL), *(v10 & 0xFFFFFFFFFFFFFFFELL));
      if ((v5 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 56), (v9 & 0xFFFFFFFFFFFFFFFCLL), v10);
      if ((v5 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    *(v4 + 72) = *(a2 + 9);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v7 = *(a2 + 6);
  *(v4 + 16) |= 1u;
  v8 = *(v4 + 8);
  if (v8)
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 48), (v7 & 0xFFFFFFFFFFFFFFFCLL), *(v8 & 0xFFFFFFFFFFFFFFFELL));
    if ((v5 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 48), (v7 & 0xFFFFFFFFFFFFFFFCLL), v8);
    if ((v5 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  v11 = *(a2 + 8);
  *(v4 + 16) |= 4u;
  v12 = *(v4 + 8);
  if (v12)
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 64), (v11 & 0xFFFFFFFFFFFFFFFCLL), *(v12 & 0xFFFFFFFFFFFFFFFELL));
    if ((v5 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 64), (v11 & 0xFFFFFFFFFFFFFFFCLL), v12);
    if ((v5 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_22:
  *(v4 + 80) = *(a2 + 10);
  if ((v5 & 0x20) != 0)
  {
LABEL_10:
    *(v4 + 88) = *(a2 + 11);
  }

LABEL_11:
  *(v4 + 16) |= v5;
  v6 = *(a2 + 1);
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  v2 = *(v1 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v3 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_12:
      v4 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFCLL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_16;
      }

LABEL_18:
      if ((v2 & 0x38) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v5 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    goto LABEL_18;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 0x38) != 0)
  {
LABEL_19:
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
  }

LABEL_20:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v6);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::_InternalSerialize(google::protobuf::UninterpretedOption *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 8);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 24);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 24);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v12, *(*v12 + 20), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 4);
  if (v13)
  {
    v16 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *(v16 + 23);
    if (v17 < 0 && (v17 = *(v16 + 8), v17 > 127) || *a3 - a2 + 14 < v17)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 3, v16, a2);
      if ((v13 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *a2 = 26;
      v18 = a2 + 2;
      *(a2 + 1) = v17;
      if (*(v16 + 23) >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = *v16;
      }

      memcpy(a2 + 2, v19, v17);
      a2 = &v18[v17];
      if ((v13 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_9:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if ((v13 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    v32 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v20 = *(this + 9);
    *v32 = 32;
    v21 = v32 + 1;
    if (v20 < 0x80)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = *(this + 9);
    *a2 = 32;
    v21 = a2 + 1;
    if (v20 < 0x80)
    {
LABEL_24:
      LOBYTE(v22) = v20;
      goto LABEL_25;
    }
  }

  do
  {
    *v21++ = v20 | 0x80;
    v22 = v20 >> 7;
    v33 = v20 >> 14;
    v20 >>= 7;
  }

  while (v33);
LABEL_25:
  *v21 = v22;
  a2 = (v21 + 1);
  if ((v13 & 0x10) == 0)
  {
LABEL_10:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<5>(a3, *(this + 10), a2);
  if ((v13 & 0x20) == 0)
  {
LABEL_11:
    if ((v13 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 11);
  *a2 = 49;
  *(a2 + 1) = v23;
  a2 = (a2 + 9);
  if ((v13 & 2) == 0)
  {
LABEL_12:
    if ((v13 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_37:
    v28 = *(this + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *(v28 + 23);
    if (v29 < 0 && (v29 = *(v28 + 8), v29 > 127) || *a3 - a2 + 14 < v29)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 8, v28, a2);
      v14 = *(this + 1);
      if ((v14 & 1) == 0)
      {
        return a2;
      }
    }

    else
    {
      *a2 = 66;
      v30 = a2 + 2;
      *(a2 + 1) = v29;
      if (*(v28 + 23) >= 0)
      {
        v31 = v28;
      }

      else
      {
        v31 = *v28;
      }

      memcpy(a2 + 2, v31, v29);
      a2 = &v30[v29];
      v14 = *(this + 1);
      if ((v14 & 1) == 0)
      {
        return a2;
      }
    }

    goto LABEL_44;
  }

LABEL_30:
  v24 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 23);
  if (v25 < 0 && (v25 = *(v24 + 8), v25 > 127) || *a3 - a2 + 14 < v25)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 7, v24, a2);
    if ((v13 & 4) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *a2 = 58;
    v26 = a2 + 2;
    *(a2 + 1) = v25;
    if (*(v24 + 23) >= 0)
    {
      v27 = v24;
    }

    else
    {
      v27 = *v24;
    }

    memcpy(a2 + 2, v27, v25);
    a2 = &v26[v25];
    if ((v13 & 4) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_13:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

LABEL_44:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<5>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 40;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 40;
    v3 = a3 + 1;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v4) = a2;
      goto LABEL_4;
    }
  }

  do
  {
    *v3++ = a2 | 0x80;
    v4 = a2 >> 7;
    v8 = a2 >> 14;
    a2 >>= 7;
  }

  while (v8);
LABEL_4:
  *v3 = v4;
  return v3 + 1;
}

char *google::protobuf::UninterpretedOption::ByteSizeLong(google::protobuf::UninterpretedOption *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = this + 24;
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v8 = *v4;
      v9 = *(*v4 + 16);
      if ((v9 & 3) != 0)
      {
        if (v9)
        {
          v11 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          v12 = *(v11 + 23);
          v13 = *(v11 + 8);
          if ((v12 & 0x80u) == 0)
          {
            v13 = v12;
          }

          v10 = v13 + ((352 - 9 * __clz(v13)) >> 6) + 1;
        }

        else
        {
          v10 = 0;
        }

        v6 = (v10 + (v9 & 2));
      }

      else
      {
        v6 = 0;
      }

      v7 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v8, v6, (v8 + 20));
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v14 = *(this + 4);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      v16 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v3 = (v3 + v18 + ((352 - 9 * __clz(v18)) >> 6) + 1);
      if ((v14 & 2) == 0)
      {
LABEL_19:
        if ((v14 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_19;
    }

    v19 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v3 = (v3 + v21 + ((352 - 9 * __clz(v21)) >> 6) + 1);
    if ((v14 & 4) == 0)
    {
LABEL_20:
      if ((v14 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }

LABEL_34:
    v22 = *(this + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    v3 = (v3 + v24 + ((352 - 9 * __clz(v24)) >> 6) + 1);
    if ((v14 & 8) == 0)
    {
LABEL_21:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_37:
    v3 = (v3 + ((704 - 9 * __clz(*(this + 9))) >> 6));
    if ((v14 & 0x10) == 0)
    {
LABEL_23:
      if ((v14 & 0x20) != 0)
      {
        v3 = (v3 + 9);
      }

      goto LABEL_25;
    }

LABEL_22:
    v3 = (v3 + ((704 - 9 * __clz(*(this + 10))) >> 6));
    goto LABEL_23;
  }

LABEL_25:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

BOOL google::protobuf::UninterpretedOption::IsInitialized(google::protobuf::UninterpretedOption *this)
{
  v1 = *(this + 8);
  v2 = *(this + 3);
  if (v2)
  {
    v5 = v2 - 1;
    while (1)
    {
      result = v1 < 1;
      if (v1 < 1)
      {
        break;
      }

      v6 = v1 - 1;
      IsInitialized = google::protobuf::UninterpretedOption_NamePart::IsInitialized(*&v5[8 * v1]);
      v1 = v6;
      if (!IsInitialized)
      {
        return 0;
      }
    }
  }

  else
  {
    v3 = v1 + 1;
    while (1)
    {
      result = --v3 < 1;
      if (v3 < 1)
      {
        break;
      }

      if (!google::protobuf::UninterpretedOption_NamePart::IsInitialized(v2))
      {
        return 0;
      }
    }
  }

  return result;
}

double google::protobuf::FeatureSet::FeatureSet(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F45710;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

google::protobuf::FeatureSet *google::protobuf::FeatureSet::FeatureSet(google::protobuf::FeatureSet *this, google::protobuf::Arena *a2, const google::protobuf::FeatureSet *a3, double a4)
{
  *(this + 1) = a2;
  v7 = (this + 8);
  *this = off_284F45710;
  v8 = *(a3 + 1);
  if (v8)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v7, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = *(a3 + 10);
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), this, (a3 + 16), a4);
  v9 = *(a3 + 3);
  *(this + 8) = *(a3 + 8);
  *(this + 3) = v9;
  return this;
}

void google::protobuf::FeatureSet::~FeatureSet(google::protobuf::FeatureSet *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));

  JUMPOUT(0x23EED9460);
}

void google::protobuf::FeatureSet::MergeImpl(google::protobuf::FeatureSet *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v6 = *(a2 + 10);
  if ((v6 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v6)
  {
    *(this + 12) = *(a2 + 12);
    if ((v6 & 2) == 0)
    {
LABEL_4:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(this + 13) = *(a2 + 13);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    *(this + 15) = *(a2 + 15);
    if ((v6 & 0x10) == 0)
    {
LABEL_7:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  *(this + 14) = *(a2 + 14);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  *(this + 16) = *(a2 + 16);
  if ((v6 & 0x20) != 0)
  {
LABEL_8:
    *(this + 17) = *(a2 + 17);
  }

LABEL_9:
  *(this + 10) |= v6;
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), &google::protobuf::_FeatureSet_default_instance_, (a2 + 16), a4);
  v7 = *(a2 + 1);
  if (v7)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::FeatureSet::_InternalSerialize(google::protobuf::FeatureSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 10);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    v28 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v10 = *(this + 12);
    *v28 = 8;
    v11 = v28 + 1;
    if (v10 < 0x80)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *(this + 12);
    *a2 = 8;
    v11 = a2 + 1;
    if (v10 < 0x80)
    {
LABEL_13:
      LOBYTE(v12) = v10;
      goto LABEL_14;
    }
  }

  do
  {
    *v11++ = v10 | 0x80;
    v12 = v10 >> 7;
    v29 = v10 >> 14;
    v10 >>= 7;
  }

  while (v29);
LABEL_14:
  *v11 = v12;
  v5 = v11 + 1;
  if ((v7 & 2) == 0)
  {
LABEL_3:
    if ((v7 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

LABEL_15:
  if (*a3 <= v5)
  {
    v30 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v13 = *(this + 13);
    *v30 = 16;
    v14 = v30 + 1;
    if (v13 < 0x80)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = *(this + 13);
    *v5 = 16;
    v14 = v5 + 1;
    if (v13 < 0x80)
    {
LABEL_17:
      LOBYTE(v15) = v13;
      goto LABEL_18;
    }
  }

  do
  {
    *v14++ = v13 | 0x80;
    v15 = v13 >> 7;
    v31 = v13 >> 14;
    v13 >>= 7;
  }

  while (v31);
LABEL_18:
  *v14 = v15;
  v5 = v14 + 1;
  if ((v7 & 4) == 0)
  {
LABEL_4:
    if ((v7 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_19:
  if (*a3 <= v5)
  {
    v32 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v16 = *(this + 14);
    *v32 = 24;
    v17 = v32 + 1;
    if (v16 < 0x80)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(this + 14);
    *v5 = 24;
    v17 = v5 + 1;
    if (v16 < 0x80)
    {
LABEL_21:
      LOBYTE(v18) = v16;
      goto LABEL_22;
    }
  }

  do
  {
    *v17++ = v16 | 0x80;
    v18 = v16 >> 7;
    v33 = v16 >> 14;
    v16 >>= 7;
  }

  while (v33);
LABEL_22:
  *v17 = v18;
  v5 = v17 + 1;
  if ((v7 & 8) == 0)
  {
LABEL_5:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_23:
  if (*a3 <= v5)
  {
    v34 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v19 = *(this + 15);
    *v34 = 32;
    v20 = v34 + 1;
    if (v19 < 0x80)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v19 = *(this + 15);
    *v5 = 32;
    v20 = v5 + 1;
    if (v19 < 0x80)
    {
LABEL_25:
      LOBYTE(v21) = v19;
      goto LABEL_26;
    }
  }

  do
  {
    *v20++ = v19 | 0x80;
    v21 = v19 >> 7;
    v35 = v19 >> 14;
    v19 >>= 7;
  }

  while (v35);
LABEL_26:
  *v20 = v21;
  v5 = v20 + 1;
  if ((v7 & 0x10) == 0)
  {
LABEL_6:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_27:
  if (*a3 <= v5)
  {
    v36 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v22 = *(this + 16);
    *v36 = 40;
    v23 = v36 + 1;
    if (v22 < 0x80)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v22 = *(this + 16);
    *v5 = 40;
    v23 = v5 + 1;
    if (v22 < 0x80)
    {
LABEL_29:
      LOBYTE(v24) = v22;
      goto LABEL_30;
    }
  }

  do
  {
    *v23++ = v22 | 0x80;
    v24 = v22 >> 7;
    v37 = v22 >> 14;
    v22 >>= 7;
  }

  while (v37);
LABEL_30:
  *v23 = v24;
  v5 = v23 + 1;
  if ((v7 & 0x20) == 0)
  {
LABEL_7:
    if (!*(this + 13))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_31:
  if (*a3 <= v5)
  {
    v38 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v25 = *(this + 17);
    *v38 = 48;
    v26 = v38 + 1;
    if (v25 < 0x80)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v25 = *(this + 17);
    *v5 = 48;
    v26 = v5 + 1;
    if (v25 < 0x80)
    {
LABEL_33:
      LOBYTE(v27) = v25;
      goto LABEL_34;
    }
  }

  do
  {
    *v26++ = v25 | 0x80;
    v27 = v25 >> 7;
    v39 = v25 >> 14;
    v25 >>= 7;
  }

  while (v39);
LABEL_34:
  *v26 = v27;
  v5 = v26 + 1;
  if (*(this + 13))
  {
LABEL_8:
    v5 = google::protobuf::internal::ExtensionSet::_InternalSerializeImpl((this + 16), &google::protobuf::_FeatureSet_default_instance_, 0x3E8, 10001, v5, a3);
  }

LABEL_9:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

char *google::protobuf::FeatureSet::ByteSizeLong(google::protobuf::FeatureSet *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = v2;
  v4 = *(this + 10);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    v3 = (v2 + ((640 - 9 * __clz(*(this + 12))) >> 6) + 1);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v3 = (v3 + ((640 - 9 * __clz(*(this + 13))) >> 6) + 1);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v3 = (v3 + ((640 - 9 * __clz(*(this + 15))) >> 6) + 1);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  v3 = (v3 + ((640 - 9 * __clz(*(this + 14))) >> 6) + 1);
  if ((v4 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v3 = (v3 + ((640 - 9 * __clz(*(this + 16))) >> 6) + 1);
  if ((v4 & 0x20) != 0)
  {
LABEL_8:
    v3 = (v3 + ((640 - 9 * __clz(*(this + 17))) >> 6) + 1);
  }

LABEL_9:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 11);
}

void google::protobuf::FeatureSet::CopyFrom(google::protobuf::FeatureSet *this, const google::protobuf::FeatureSet *a2)
{
  if (a2 != this)
  {
    google::protobuf::FeatureSet::Clear(this);

    google::protobuf::FeatureSet::MergeImpl(this, a2, v5, v6);
  }
}

uint64_t *google::protobuf::FeatureSet::InternalSwap(google::protobuf::FeatureSet *this, google::protobuf::FeatureSet *a2)
{
  result = google::protobuf::internal::ExtensionSet::InternalSwap(this + 2, a2 + 2);
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LOBYTE(v5) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  LOBYTE(v5) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v5;
  LOBYTE(v5) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v5;
  LOBYTE(v5) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v5;
  LOBYTE(v5) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v5;
  LOBYTE(v5) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v5;
  LOBYTE(v5) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v5;
  LOBYTE(v5) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v5;
  LOBYTE(v5) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v5;
  LOBYTE(v5) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v5;
  LOBYTE(v5) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v5;
  LOBYTE(v5) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v5;
  LOBYTE(v5) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v5;
  LOBYTE(v5) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v5;
  LOBYTE(v5) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v5;
  LOBYTE(v5) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v5;
  LOBYTE(v5) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  LOBYTE(v5) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v5;
  LOBYTE(v5) = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v5;
  LOBYTE(v5) = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v5;
  LOBYTE(v5) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v5;
  LOBYTE(v5) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v5;
  LOBYTE(v5) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v5;
  LOBYTE(v5) = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v5;
  return result;
}

uint64_t google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::FeatureSetDefaults_FeatureSetEditionDefault(uint64_t result, uint64_t a2)
{
  *result = off_284F459E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::~FeatureSetDefaults_FeatureSetEditionDefault(google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    google::protobuf::internal::ExtensionSet::~ExtensionSet((v4 + 16));
    MEMORY[0x23EED9460](v4, 0x10A1C4007999064);
  }

  JUMPOUT(0x23EED9460);
}

void *google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3, double a4)
{
  v5 = (this + 1);
  v4 = this[1];
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *(a2 + 4);
    if ((v6 & 3) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(a2 + 4);
    if ((v6 & 3) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = this;
  v8 = this[3];
  v9 = a2;
  v10 = *(a2 + 3);
  if (v8)
  {
    google::protobuf::FeatureSet::MergeImpl(v8, v10, a3, a4);
    a2 = v9;
    this = v7;
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v4, v10);
  this = v7;
  v7[3] = v12;
  a2 = v9;
  if ((v6 & 2) != 0)
  {
LABEL_7:
    *(this + 8) = *(a2 + 8);
  }

LABEL_8:
  *(this + 4) |= v6;
  v11 = *(a2 + 1);
  if (v11)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::Clear(google::protobuf::FeatureSet **this)
{
  if (this[2])
  {
    v2 = this;
    google::protobuf::FeatureSet::Clear(this[3]);
    this = v2;
    v1 = vars8;
  }

  v4 = *(this + 8);
  result = (this + 1);
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::_InternalSerialize(google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v7)
    {
      v15 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v12 = *(this + 8);
      *v15 = 24;
      v13 = v15 + 1;
      if (v12 < 0x80)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *(this + 8);
      *v7 = 24;
      v13 = v7 + 1;
      if (v12 < 0x80)
      {
LABEL_8:
        LOBYTE(v14) = v12;
        goto LABEL_9;
      }
    }

    do
    {
      *v13++ = v12 | 0x80;
      v14 = v12 >> 7;
      v16 = v12 >> 14;
      v12 >>= 7;
    }

    while (v16);
LABEL_9:
    *v13 = v14;
    v7 = v13 + 1;
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_10;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *(this + 3), *(*(this + 3) + 44), a2, a3, a6);
  if ((v9 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_10:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::ByteSizeLong(google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = this;
      v6 = google::protobuf::FeatureSet::ByteSizeLong(*(this + 3));
      v3 = &v6[((352 - 9 * __clz(v6)) >> 6) + 1];
      if ((v1 & 2) != 0)
      {
LABEL_4:
        this = v2;
        v3 = (v3 + ((640 - 9 * __clz(v2[8])) >> 6) + 1);
        v4 = v2 + 5;

        return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
      }
    }

    else
    {
      v2 = this;
      v3 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    this = v2;
    v4 = v2 + 5;
  }

  else
  {
    v3 = 0;
    v4 = (this + 20);
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, v4);
}

uint64_t google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::IsInitialized(google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = google::protobuf::FeatureSet::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

void *google::protobuf::FeatureSetDefaults::FeatureSetDefaults(void *result, uint64_t a2)
{
  *result = off_284F45CC0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a2;
  result[6] = 0;
  return result;
}

void google::protobuf::FeatureSetDefaults::~FeatureSetDefaults(google::protobuf::FeatureSetDefaults *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 3))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 24));
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 3))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 24));
  }

  JUMPOUT(0x23EED9460);
}

int *google::protobuf::FeatureSetDefaults::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 8))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault>);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v4 + 48) = *(a2 + 12);
    }

    if ((v5 & 2) != 0)
    {
      *(v4 + 52) = *(a2 + 13);
    }
  }

  *(v4 + 16) |= v5;
  v6 = *(a2 + 1);
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::FeatureSetDefaults::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 48) = 0;
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FeatureSetDefaults::_InternalSerialize(google::protobuf::FeatureSetDefaults *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 8);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 24);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 24);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *v12, *(*v12 + 20), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 4);
  if ((v13 & 1) == 0)
  {
    if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (*a3 <= a2)
    {
      v24 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v19 = *(this + 13);
      *v24 = 40;
      v20 = v24 + 1;
      if (v19 < 0x80)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = *(this + 13);
      *a2 = 40;
      v20 = a2 + 1;
      if (v19 < 0x80)
      {
LABEL_17:
        LOBYTE(v21) = v19;
        goto LABEL_18;
      }
    }

    do
    {
      *v20++ = v19 | 0x80;
      v21 = v19 >> 7;
      v25 = v19 >> 14;
      v19 >>= 7;
    }

    while (v25);
LABEL_18:
    *v20 = v21;
    a2 = (v20 + 1);
    v14 = *(this + 1);
    if ((v14 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_19;
  }

  if (*a3 <= a2)
  {
    v22 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v16 = *(this + 12);
    *v22 = 32;
    v17 = v22 + 1;
    if (v16 < 0x80)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *(this + 12);
    *a2 = 32;
    v17 = a2 + 1;
    if (v16 < 0x80)
    {
LABEL_13:
      LOBYTE(v18) = v16;
      goto LABEL_14;
    }
  }

  do
  {
    *v17++ = v16 | 0x80;
    v18 = v16 >> 7;
    v23 = v16 >> 14;
    v16 >>= 7;
  }

  while (v23);
LABEL_14:
  *v17 = v18;
  a2 = (v17 + 1);
  if ((v13 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

LABEL_19:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

char *google::protobuf::FeatureSetDefaults::ByteSizeLong(google::protobuf::FeatureSetDefaults *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = this + 24;
  }

  if (v3)
  {
    v5 = 8 * v3;
    while (1)
    {
      v8 = *v4;
      v9 = *(*v4 + 16);
      if ((v9 & 3) != 0)
      {
        if (v9)
        {
          v10 = google::protobuf::FeatureSet::ByteSizeLong(*(v8 + 24));
          v6 = &v10[((352 - 9 * __clz(v10)) >> 6) + 1];
          if ((v9 & 2) != 0)
          {
LABEL_13:
            v6 = (v6 + ((640 - 9 * __clz(*(v8 + 32))) >> 6) + 1);
          }
        }

        else
        {
          v6 = 0;
          if ((v9 & 2) != 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v8, v6, (v8 + 20));
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v4 += 8;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_15;
      }
    }
  }

  v3 = 0;
LABEL_15:
  v11 = *(this + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v3 = (v3 + ((-9 * __clz(*(this + 12)) + 640) >> 6) + 1);
    }

    if ((v11 & 2) != 0)
    {
      v3 = (v3 + ((-9 * __clz(*(this + 13)) + 640) >> 6) + 1);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

BOOL google::protobuf::FeatureSetDefaults::IsInitialized(google::protobuf::FeatureSetDefaults *this)
{
  v1 = (this + 24);
  v2 = *(this + 8);
  v3 = 8 * v2;
  v4 = v2 + 1;
  do
  {
    if (--v4 < 1)
    {
      break;
    }

    v5 = v3 - 8;
    v6 = (*v1 + v3 - 1);
    if ((*v1 & 1) == 0)
    {
      v6 = v1;
    }

    IsInitialized = google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::IsInitialized(*v6);
    v3 = v5;
  }

  while ((IsInitialized & 1) != 0);
  return v4 < 1;
}

uint64_t google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(uint64_t result, uint64_t a2)
{
  *result = off_284F455D8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a2;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a2;
  *(result + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 104) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

google::protobuf::SourceCodeInfo_Location *google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::Arena *a2, const google::protobuf::SourceCodeInfo_Location *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F455D8;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = *(a3 + 4);
  *(this + 3) = 0;
  *(this + 4) = a2;
  v8 = *(a3 + 6);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 24, 0, *(a3 + 6));
    *(this + 6) = v8;
    if (v8 >= 1)
    {
      v9 = *(this + 4);
      v10 = *(a3 + 4);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 13) = 0;
  *(this + 7) = a2;
  v21 = *(a3 + 12);
  if (v21)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 48, 0, *(a3 + 12));
    *(this + 12) = v21;
    if (v21 >= 1)
    {
      v22 = *(this + 7);
      v23 = *(a3 + 7);
      if (v21 < 8)
      {
        goto LABEL_19;
      }

      if ((v22 - v23) < 0x20)
      {
        goto LABEL_19;
      }

      v24 = v21;
      v25 = v21 & 0x7FFFFFF8;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFF8);
      v26 = &v22[v25];
      v27 = &v23[v25];
      v28 = (v23 + 4);
      v29 = v22 + 4;
      v30 = v25;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 8;
      }

      while (v30);
      v22 = v26;
      v23 = v27;
      if (v25 != v24)
      {
LABEL_19:
        v32 = v21 + 1;
        do
        {
          v33 = *v23++;
          *v22++ = v33;
          --v32;
        }

        while (v32 > 1);
      }
    }
  }

  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 10) = 0;
  *(this + 11) = a2;
  if (*(a3 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 72, a3 + 72);
  }

  v34 = *(a3 + 12);
  if ((v34 & 3) != 0)
  {
    v34 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 96), a2);
  }

  *(this + 12) = v34;
  v37 = *(a3 + 13);
  v36 = (a3 + 104);
  v35 = v37;
  if ((v37 & 3) != 0)
  {
    v35 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v36, a2);
  }

  *(this + 13) = v35;
  return this;
}

void sub_23CDB918C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 52) >= 1)
  {
    v3 = *(v1 + 56);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v6 = *(v1 + 32);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 12);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 13);
  google::protobuf::SourceCodeInfo_Location::Impl_::~Impl_((this + 16));
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 12);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 13);
  google::protobuf::SourceCodeInfo_Location::Impl_::~Impl_((this + 16));

  JUMPOUT(0x23EED9460);
}

void google::protobuf::SourceCodeInfo_Location::MergeImpl(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = (v6 + v5);
    if (*(this + 7) < v7)
    {
      google::protobuf::RepeatedField<int>::Grow(this + 24, v6, v7);
      LODWORD(v6) = *(this + 6);
      v8 = *(this + 4);
      *(this + 6) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(this + 4);
      *(this + 6) = v7;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    v9 = *(a2 + 4);
    v10 = (v8 + 4 * v6);
    if (v5 < 8)
    {
      goto LABEL_9;
    }

    v11 = 4 * v6 + v8;
    if ((v11 - v9) < 0x20)
    {
      goto LABEL_9;
    }

    v12 = v5;
    v13 = v5 & 0x7FFFFFF8;
    LODWORD(v5) = v5 - (v5 & 0x7FFFFFF8);
    v10 += v13;
    v14 = &v9[v13];
    v15 = (v9 + 4);
    v16 = (v11 + 16);
    v17 = v13;
    do
    {
      v18 = *v15;
      *(v16 - 1) = *(v15 - 1);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    v9 = v14;
    if (v13 != v12)
    {
LABEL_9:
      v19 = v5 + 1;
      do
      {
        v20 = *v9++;
        *v10++ = v20;
        --v19;
      }

      while (v19 > 1);
    }
  }

LABEL_11:
  v21 = *(a2 + 12);
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = *(this + 12);
  v23 = (v22 + v21);
  if (*(this + 13) < v23)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 48, v22, v23);
    LODWORD(v22) = *(this + 12);
    v24 = *(this + 7);
    *(this + 12) = v22 + v21;
    if (v21 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = *(this + 7);
    *(this + 12) = v23;
    if (v21 < 1)
    {
      goto LABEL_21;
    }
  }

  v25 = *(a2 + 7);
  v26 = (v24 + 4 * v22);
  if (v21 < 8)
  {
    goto LABEL_19;
  }

  v27 = 4 * v22 + v24;
  if ((v27 - v25) < 0x20)
  {
    goto LABEL_19;
  }

  v28 = v21;
  v29 = v21 & 0x7FFFFFF8;
  LODWORD(v21) = v21 - (v21 & 0x7FFFFFF8);
  v26 += v29;
  v30 = &v25[v29];
  v31 = (v25 + 4);
  v32 = (v27 + 16);
  v33 = v29;
  do
  {
    v34 = *v31;
    *(v32 - 1) = *(v31 - 1);
    *v32 = v34;
    v31 += 2;
    v32 += 2;
    v33 -= 8;
  }

  while (v33);
  v25 = v30;
  if (v29 != v28)
  {
LABEL_19:
    v35 = v21 + 1;
    do
    {
      v36 = *v25++;
      *v26++ = v36;
      --v35;
    }

    while (v35 > 1);
  }

LABEL_21:
  if (*(a2 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 72, a2 + 72);
  }

  v37 = *(a2 + 4);
  if ((v37 & 3) != 0)
  {
    if (v37)
    {
      v38 = *(a2 + 12);
      *(this + 4) |= 1u;
      v39 = *(this + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set<>(this + 12, (v38 & 0xFFFFFFFFFFFFFFFCLL), v39);
    }

    if ((v37 & 2) != 0)
    {
      v40 = *(a2 + 13);
      *(this + 4) |= 2u;
      v41 = *(this + 1);
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set<>(this + 13, (v40 & 0xFFFFFFFFFFFFFFFCLL), v41);
    }
  }

  *(this + 4) |= v37;
  v42 = *(a2 + 1);
  if (v42)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v42 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 12) = 0;
  if (*(this + 20) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(this + 72);
  }

  v2 = *(v1 + 16);
  if ((v2 & 3) == 0)
  {
    goto LABEL_12;
  }

  if ((v2 & 1) == 0)
  {
LABEL_7:
    if ((v2 & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = *(v1 + 8);
    v5 = v1 + 8;
    *(v5 + 8) = 0;
    if ((v7 & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

  v3 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    goto LABEL_7;
  }

  **v3 = 0;
  *(v3 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v4 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    v8 = *(v1 + 8);
    v5 = v1 + 8;
    *(v5 + 8) = 0;
    if ((v8 & 1) == 0)
    {
      return this;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    v6 = *(v1 + 8);
    v5 = v1 + 8;
    *(v5 + 8) = 0;
    if ((v6 & 1) == 0)
    {
      return this;
    }
  }

LABEL_15:

  return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v5);
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::_InternalSerialize(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *v4 = 10;
      v7 = v4 + 1;
      if (v6 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v7 = a2 + 1;
      if (v6 < 0x80)
      {
LABEL_4:
        v4 += 2;
        *v7 = v6;
        v8 = *(this + 4);
        v9 = &v8[*(this + 6)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
            v13 = *v8++;
            v10 = v13;
            if (v13 >= 0x80)
            {
              do
              {
LABEL_11:
                *v4++ = v10 | 0x80;
                v12 = v10 >> 7;
                v14 = v10 >> 14;
                v10 >>= 7;
              }

              while (v14);
              goto LABEL_8;
            }
          }

          else
          {
            v11 = *v8++;
            v10 = v11;
            if (v11 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v12) = v10;
LABEL_8:
          *v4++ = v12;
          if (v8 >= v9)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v7++ = v6 | 0x80;
      v42 = v6 >> 14;
      v6 >>= 7;
    }

    while (v42);
    v4 = v7 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v15 = *(this + 16);
  if (v15 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      *v4 = 18;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v4 = 18;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
LABEL_16:
        v4 += 2;
        *v16 = v15;
        v17 = *(this + 7);
        v18 = &v17[*(this + 12)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
            v22 = *v17++;
            v19 = v22;
            if (v22 >= 0x80)
            {
              do
              {
LABEL_23:
                *v4++ = v19 | 0x80;
                v21 = v19 >> 7;
                v23 = v19 >> 14;
                v19 >>= 7;
              }

              while (v23);
              goto LABEL_20;
            }
          }

          else
          {
            v20 = *v17++;
            v19 = v20;
            if (v20 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v21) = v19;
LABEL_20:
          *v4++ = v21;
          if (v17 >= v18)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v16++ = v15 | 0x80;
      v43 = v15 >> 14;
      v15 >>= 7;
    }

    while (v43);
    v4 = v16 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v24 = *(this + 4);
  if (v24)
  {
    v26 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *(v26 + 23);
    if (v27 < 0 && (v27 = *(v26 + 8), v27 > 127) || *a3 - v4 + 14 < v27)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 3, v26, v4);
      if ((v24 & 2) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v4 = 26;
      v28 = v4 + 2;
      v4[1] = v27;
      if (*(v26 + 23) >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = *v26;
      }

      memcpy(v4 + 2, v29, v27);
      v4 = &v28[v27];
      if ((v24 & 2) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_27:
    v25 = *(this + 20);
    if (v25 < 1)
    {
      goto LABEL_59;
    }

    goto LABEL_43;
  }

  if ((v24 & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_36:
  v30 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 23);
  if (v31 < 0 && (v31 = *(v30 + 8), v31 > 127) || *a3 - v4 + 14 < v31)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 4, v30, v4);
    v25 = *(this + 20);
    if (v25 < 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v4 = 34;
    v32 = v4 + 2;
    v4[1] = v31;
    if (*(v30 + 23) >= 0)
    {
      v33 = v30;
    }

    else
    {
      v33 = *v30;
    }

    memcpy(v4 + 2, v33, v31);
    v4 = &v32[v31];
    v25 = *(this + 20);
    if (v25 < 1)
    {
      goto LABEL_59;
    }
  }

LABEL_43:
  v34 = (this + 72);
  v35 = 8;
  do
  {
    while (1)
    {
      v36 = (*v34 & 1) != 0 ? (*v34 + v35 - 1) : (this + 72);
      v37 = *v36;
      v38 = *(*v36 + 23);
      if ((v38 & 0x8000000000000000) == 0 || (v38 = v37[1], v38 <= 127))
      {
        if (*a3 - v4 + 14 >= v38)
        {
          break;
        }
      }

      v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 6, v37, v4);
      v35 += 8;
      if (!--v25)
      {
        goto LABEL_59;
      }
    }

    *v4 = 50;
    v4[1] = v38;
    if (*(v37 + 23) < 0)
    {
      v37 = *v37;
    }

    v39 = v4 + 2;
    memcpy(v4 + 2, v37, v38);
    v4 = &v39[v38];
    v35 += 8;
    --v25;
  }

  while (v25);
LABEL_59:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::SourceCodeInfo_Location::ByteSizeLong(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  v3 = v2;
  *(this + 10) = v2;
  if (v2)
  {
    v4 = ((640 - 9 * __clz(v2)) >> 6) + 1;
    v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 12);
    *(this + 16) = v5;
    if (v5)
    {
LABEL_3:
      v6 = ((640 - 9 * __clz(v5)) >> 6) + 1;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 12);
    *(this + 16) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = *(this + 20);
  v8 = (v4 + v3 + v5 + v6 + v7);
  if (v7 < 1)
  {
    goto LABEL_24;
  }

  v9 = *(this + 9);
  if ((v9 & 1) == 0)
  {
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v12 = (352 - 9 * __clz(v11)) >> 6;
    v8 = (v11 + v3 + v5 + v4 + v6 + v12 + (v11 + v12) * (v7 - 1) + v7);
    goto LABEL_24;
  }

  v13 = v9 - 1;
  if (v7 == 1)
  {
    v14 = 0;
LABEL_20:
    v22 = (v13 + 8 * v14 + 8);
    v23 = v7 - v14;
    do
    {
      v24 = *v22++;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v8 = (v8 + v26 + ((352 - 9 * __clz(v26)) >> 6));
      --v23;
    }

    while (v23);
    goto LABEL_24;
  }

  v15 = 0;
  v14 = v7 & 0x7FFFFFFE;
  v16 = v13 + 16;
  v17 = v14;
  do
  {
    v18 = *(v16 - 8);
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    v21 = *(*v16 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    if (*(*v16 + 23) >= 0)
    {
      v21 = *(*v16 + 23);
    }

    v8 = (v8 + v20 + ((352 - 9 * __clz(v20)) >> 6));
    v15 += v21 + ((352 - 9 * __clz(v21)) >> 6);
    v16 += 16;
    v17 -= 2;
  }

  while (v17);
  v8 = (v8 + v15);
  if (v14 != v7)
  {
    goto LABEL_20;
  }

LABEL_24:
  v27 = *(this + 4);
  if ((v27 & 3) != 0)
  {
    if (v27)
    {
      v28 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = *(v28 + 23);
      v30 = *(v28 + 8);
      if ((v29 & 0x80u) == 0)
      {
        v30 = v29;
      }

      v8 = (v8 + v30 + ((352 - 9 * __clz(v30)) >> 6) + 1);
    }

    if ((v27 & 2) != 0)
    {
      v31 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
      v32 = *(v31 + 23);
      v33 = *(v31 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v33 = v32;
      }

      v8 = (v8 + v33 + ((352 - 9 * __clz(v33)) >> 6) + 1);
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v8, this + 5);
}

void google::protobuf::SourceCodeInfo_Location::CopyFrom(google::protobuf::SourceCodeInfo_Location *this, const google::protobuf::SourceCodeInfo_Location *a2)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    google::protobuf::SourceCodeInfo_Location::MergeImpl(this, a2, v5);
  }
}

uint64_t google::protobuf::SourceCodeInfo::SourceCodeInfo(uint64_t result, uint64_t a2)
{
  *result = off_284F45918;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

void google::protobuf::SourceCodeInfo::~SourceCodeInfo(google::protobuf::SourceCodeInfo *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  JUMPOUT(0x23EED9460);
}

int *google::protobuf::SourceCodeInfo::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>);
  }

  v5 = *(a2 + 1);
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::_InternalSerialize(google::protobuf::SourceCodeInfo *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 6);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 16);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 16);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *v12, *(*v12 + 20), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

char *google::protobuf::SourceCodeInfo::ByteSizeLong(google::protobuf::SourceCodeInfo *this)
{
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 16);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::SourceCodeInfo_Location::ByteSizeLong(v6);
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 10);
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::SourceCodeInfo *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = google::protobuf::SourceCodeInfo::Clear(this);
    if (*(a2 + 6))
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v3 + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v3 + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }
  }

  return this;
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this, google::protobuf::Arena *a2, const google::protobuf::GeneratedCodeInfo_Annotation *a3)
{
  *(this + 1) = a2;
  v6 = (this + 8);
  *this = off_284F45640;
  v7 = *(a3 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 2) = *(a3 + 4);
  *(this + 3) = 0;
  *(this + 4) = a2;
  v8 = *(a3 + 6);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(this + 24, 0, *(a3 + 6));
    *(this + 6) = v8;
    if (v8 >= 1)
    {
      v9 = *(this + 4);
      v10 = *(a3 + 4);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(this + 10) = 0;
  v21 = *(a3 + 6);
  if ((v21 & 3) != 0)
  {
    v21 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 48), a2);
  }

  *(this + 6) = v21;
  v22 = *(a3 + 7);
  *(this + 16) = *(a3 + 16);
  *(this + 7) = v22;
  return this;
}

void sub_23CDBA224(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 6);
  if (*(this + 7) >= 1)
  {
    v4 = *(this + 4);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 6);
  if (*(this + 7) >= 1)
  {
    v4 = *(this + 4);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *google::protobuf::GeneratedCodeInfo_Annotation::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = (v4 + v3);
    if (*(this + 7) < v5)
    {
      v26 = this;
      v27 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 3, v4, v5);
      a2 = v27;
      this = v26;
      LODWORD(v4) = *(v26 + 6);
      v6 = v26[4];
      *(v26 + 6) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[4];
      *(this + 6) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[4];
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 4);
  if ((v19 & 0xF) == 0)
  {
    goto LABEL_17;
  }

  if (v19)
  {
    v22 = a2[6];
    *(this + 4) |= 1u;
    v23 = this[1];
    v24 = a2;
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = this;
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 6, (v22 & 0xFFFFFFFFFFFFFFFCLL), v23);
    this = v25;
    a2 = v24;
    if ((v19 & 2) == 0)
    {
LABEL_14:
      if ((v19 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_14;
  }

  *(this + 14) = *(a2 + 14);
  if ((v19 & 4) == 0)
  {
LABEL_15:
    if ((v19 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  *(this + 15) = *(a2 + 15);
  if ((v19 & 8) != 0)
  {
LABEL_16:
    *(this + 16) = *(a2 + 16);
  }

LABEL_17:
  *(this + 4) |= v19;
  v20 = a2[1];
  if (v20)
  {
    v21 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v21, ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::Clear(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  *(this + 6) = 0;
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
LABEL_4:
    if ((v1 & 0xE) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_4;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 0xE) != 0)
  {
LABEL_5:
    *(this + 16) = 0;
    *(this + 7) = 0;
  }

LABEL_6:
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(google::protobuf::GeneratedCodeInfo_Annotation *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *v4 = 10;
      v7 = v4 + 1;
      if (v6 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v7 = a2 + 1;
      if (v6 < 0x80)
      {
LABEL_4:
        v4 += 2;
        *v7 = v6;
        v8 = *(this + 4);
        v9 = &v8[*(this + 6)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
            v13 = *v8++;
            v10 = v13;
            if (v13 >= 0x80)
            {
              do
              {
LABEL_11:
                *v4++ = v10 | 0x80;
                v12 = v10 >> 7;
                v14 = v10 >> 14;
                v10 >>= 7;
              }

              while (v14);
              goto LABEL_8;
            }
          }

          else
          {
            v11 = *v8++;
            v10 = v11;
            if (v11 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v12) = v10;
LABEL_8:
          *v4++ = v12;
          if (v8 >= v9)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v7++ = v6 | 0x80;
      v25 = v6 >> 14;
      v6 >>= 7;
    }

    while (v25);
    v4 = v7 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v15 = *(this + 4);
  if (v15)
  {
    v18 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *(v18 + 23);
    if (v19 < 0 && (v19 = *(v18 + 8), v19 > 127) || *a3 - v4 + 14 < v19)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 2, v18, v4);
      if ((v15 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v4 = 18;
      v20 = v4 + 2;
      v4[1] = v19;
      if (*(v18 + 23) >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = *v18;
      }

      memcpy(v4 + 2, v21, v19);
      v4 = &v20[v19];
      if ((v15 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_15:
    if ((v15 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if ((v15 & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v4 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<3>(a3, *(this + 14), v4);
  if ((v15 & 4) == 0)
  {
LABEL_16:
    if ((v15 & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    if (*a3 <= v4)
    {
      v26 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v22 = *(this + 16);
      *v26 = 40;
      v23 = v26 + 1;
      if (v22 < 0x80)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(this + 16);
      *v4 = 40;
      v23 = v4 + 1;
      if (v22 < 0x80)
      {
LABEL_30:
        LOBYTE(v24) = v22;
        goto LABEL_31;
      }
    }

    do
    {
      *v23++ = v22 | 0x80;
      v24 = v22 >> 7;
      v27 = v22 >> 14;
      v22 >>= 7;
    }

    while (v27);
LABEL_31:
    *v23 = v24;
    v4 = v23 + 1;
    v16 = *(this + 1);
    if ((v16 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_32;
  }

LABEL_27:
  v4 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<4>(a3, *(this + 15), v4);
  if ((v15 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

LABEL_32:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<4>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 32;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 32;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

char *google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  *(this + 10) = v2;
  v3 = (-9 * __clz(v2) + 640) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + v2);
  v6 = *(this + 4);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v5 = (v5 + ((-9 * __clz(*(this + 14)) + 704) >> 6));
    if ((v6 & 4) == 0)
    {
LABEL_8:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  v5 = (v5 + v10 + ((352 - 9 * __clz(v10)) >> 6) + 1);
  if ((v6 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  v5 = (v5 + ((-9 * __clz(*(this + 15)) + 704) >> 6));
  if ((v6 & 8) != 0)
  {
LABEL_9:
    v5 = (v5 + ((-9 * __clz(*(this + 16)) + 640) >> 6) + 1);
  }

LABEL_10:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v5, this + 5);
}

void google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  JUMPOUT(0x23EED9460);
}

int *google::protobuf::GeneratedCodeInfo::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<google::protobuf::GeneratedCodeInfo_Annotation>);
  }

  v5 = *(a2 + 1);
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 6) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 4);
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::_InternalSerialize(google::protobuf::GeneratedCodeInfo *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 6);
  if (v9)
  {
    v10 = 0;
    v11 = (this + 16);
    do
    {
      if (*v11)
      {
        v12 = (*v11 + 8 * v10 + 7);
      }

      else
      {
        v12 = (this + 16);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *v12, *(*v12 + 20), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

char *google::protobuf::GeneratedCodeInfo::ByteSizeLong(google::protobuf::GeneratedCodeInfo *this)
{
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 16);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(v6);
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 10);
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::FieldDescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::ServiceDescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::EnumDescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

void google::protobuf::FileDescriptorProto::Impl_::~Impl_(google::protobuf::FileDescriptorProto::Impl_ *this)
{
  if (*(this + 37) >= 1)
  {
    v2 = *(this + 19);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 33) < 1 || (v5 = *(this + 17), v7 = *(v5 - 8), v6 = (v5 - 8), v7))
  {
    v8 = (this + 104);
    if (!*(this + 13))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(v6);
  v8 = (this + 104);
  if (*(this + 13))
  {
LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v8);
  }

LABEL_8:
  if (*(this + 10))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 80));
  }

  if (*(this + 7))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 56));
  }

  if (*(this + 4))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 32));
  }

  v9 = *(this + 1);
  if (v9)
  {
    if (!*(this + 3))
    {
      google::protobuf::FileDescriptorProto::Impl_::~Impl_(v9, this + 1, this);
    }
  }
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto_ReservedRange>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::OneofDescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::DescriptorProto_ExtensionRange>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::ExtensionRangeOptions_Declaration>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::UninterpretedOption>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::EnumDescriptorProto_EnumReservedRange>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::EnumValueDescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::MethodDescriptorProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::FieldOptions_EditionDefault>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<google::protobuf::UninterpretedOption_NamePart>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::UninterpretedOption_NamePart>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    *(result + 8) = 0;
  }

  *result = off_284F45570;
  *(result + 16) = 0;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::GeneratedCodeInfo_Annotation>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F45640;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = a1;
  }

  else
  {
    result = operator new(0x48uLL);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = off_284F45640;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  *(result + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::FieldOptions_EditionDefault>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    *(result + 8) = 0;
  }

  *result = off_284F456A8;
  *(result + 16) = 0;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::ExtensionRangeOptions_Declaration>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
  }

  else
  {
    result = operator new(0x30uLL);
    *(result + 8) = 0;
  }

  *result = off_284F45778;
  *(result + 16) = 0;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 40) = 0;
  *(result + 44) = 0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<google::protobuf::UninterpretedOption>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F458B0;
    result[1] = a1;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = a1;
  }

  else
  {
    result = operator new(0x60uLL);
    *result = off_284F458B0;
    result[1] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
  }

  result[6] = &google::protobuf::internal::fixed_address_empty_string;
  result[7] = &google::protobuf::internal::fixed_address_empty_string;
  result[8] = &google::protobuf::internal::fixed_address_empty_string;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::GeneratedCodeInfo>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F45980;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = a1;
  }

  else
  {
    result = operator new(0x30uLL);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = off_284F45980;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    *(result + 8) = 0;
  }

  *result = off_284F459E8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSetDefaults>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F45CC0;
    v2[1] = a1;
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;
    v2[5] = a1;
  }

  else
  {
    v2 = operator new(0x38uLL);
    *v2 = off_284F45CC0;
    v2[1] = 0;
    result = 0.0;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
  }

  v2[6] = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::FileDescriptorProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F461A0;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0u;
    *(result + 40) = a1;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = a1;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = a1;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = a1;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 136) = a1;
    *(result + 144) = 0;
    *(result + 152) = a1;
    *(result + 160) = 0;
    *(result + 168) = a1;
  }

  else
  {
    result = operator new(0xE0uLL);
    *result = off_284F461A0;
    *(result + 8) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
  }

  *(result + 176) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 184) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 192) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 216) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<google::protobuf::FileDescriptorSet>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F46208;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = a1;
  }

  else
  {
    result = operator new(0x30uLL);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = off_284F46208;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  return result;
}

google::protobuf::FileDescriptorProto *google::protobuf::Arena::CopyConstruct<google::protobuf::FileDescriptorProto>(google::protobuf::Arena *a1, const google::protobuf::FileDescriptorProto *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::FileDescriptorProto::FileDescriptorProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0xE0uLL);
    return google::protobuf::FileDescriptorProto::FileDescriptorProto(v6, 0, a2);
  }
}

google::protobuf::FileOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::FileOptions>(google::protobuf::Arena *a1, const google::protobuf::FileOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::FileOptions::FileOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0xB0uLL);
    return google::protobuf::FileOptions::FileOptions(v7, 0, a2, v8);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F45918;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6 = (v4 + 16);
    *(v4 + 32) = a1;
    if (*(a2 + 24))
    {
LABEL_5:
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v6, (a2 + 16), google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>);
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F45918;
    v8 = *(a2 + 8);
    if (v8)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6 = (v4 + 16);
    *(v4 + 32) = 0;
    if (*(a2 + 24))
    {
      goto LABEL_5;
    }
  }

  *(v4 + 40) = 0;
  return v4;
}

google::protobuf::DescriptorProto *google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto>(google::protobuf::Arena *a1, const google::protobuf::DescriptorProto *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::DescriptorProto::DescriptorProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0xE8uLL);
    return google::protobuf::DescriptorProto::DescriptorProto(v6, 0, a2);
  }
}

google::protobuf::EnumDescriptorProto *google::protobuf::Arena::CopyConstruct<google::protobuf::EnumDescriptorProto>(google::protobuf::Arena *a1, const google::protobuf::EnumDescriptorProto *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::EnumDescriptorProto::EnumDescriptorProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x70uLL);
    return google::protobuf::EnumDescriptorProto::EnumDescriptorProto(v6, 0, a2);
  }
}

google::protobuf::ServiceDescriptorProto *google::protobuf::Arena::CopyConstruct<google::protobuf::ServiceDescriptorProto>(google::protobuf::Arena *a1, const google::protobuf::ServiceDescriptorProto *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(v6, 0, a2);
  }
}

google::protobuf::FieldDescriptorProto *google::protobuf::Arena::CopyConstruct<google::protobuf::FieldDescriptorProto>(google::protobuf::Arena *a1, const google::protobuf::FieldDescriptorProto *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::FieldDescriptorProto::FieldDescriptorProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x60uLL);
    return google::protobuf::FieldDescriptorProto::FieldDescriptorProto(v6, 0, a2);
  }
}

google::protobuf::ExtensionRangeOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::ExtensionRangeOptions>(google::protobuf::Arena *a1, const google::protobuf::ExtensionRangeOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x70uLL);
    return google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v7, 0, a2, v8);
  }
}

google::protobuf::MessageOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::MessageOptions>(google::protobuf::Arena *a1, const google::protobuf::MessageOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::MessageOptions::MessageOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x58uLL);
    return google::protobuf::MessageOptions::MessageOptions(v7, 0, a2, v8);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto_ExtensionRange>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F46000;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v6 = *(a2 + 16);
    *(v4 + 16) = v6;
    if (v6)
    {
      v7 = *(a2 + 24);
      v8 = a1;
LABEL_11:
      v11 = google::protobuf::Arena::CopyConstruct<google::protobuf::ExtensionRangeOptions>(v8, v7);
      goto LABEL_12;
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F46000;
    v9 = *(a2 + 8);
    if (v9)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v10 = *(a2 + 16);
    *(v4 + 16) = v10;
    if (v10)
    {
      v7 = *(a2 + 24);
      v8 = 0;
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  *(v4 + 24) = v11;
  *(v4 + 32) = *(a2 + 32);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::OneofDescriptorProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F45E60;
    v10 = *(a2 + 8);
    if (v10)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 16);
    *(v4 + 16) = v12;
    if ((v11 & 3) != 0)
    {
      v11 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a2 + 24), 0);
      v12 = *(v4 + 16);
    }

    *(v4 + 24) = v11;
    if ((v12 & 2) != 0)
    {
      v8 = *(a2 + 32);
      v9 = 0;
      goto LABEL_15;
    }

LABEL_13:
    *(v4 + 32) = 0;
    return v4;
  }

  v4 = google::protobuf::Arena::Allocate(a1);
  *(v4 + 8) = a1;
  *v4 = off_284F45E60;
  v5 = *(a2 + 8);
  if (v5)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v6 = *(a2 + 16);
  *(v4 + 16) = v6;
  v7 = *(a2 + 24);
  if ((v7 & 3) != 0)
  {
    v7 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a2 + 24), a1);
    v6 = *(v4 + 16);
  }

  *(v4 + 24) = v7;
  if ((v6 & 2) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(a2 + 32);
  v9 = a1;
LABEL_15:
  *(v4 + 32) = google::protobuf::Arena::CopyConstruct<google::protobuf::OneofOptions>(v9, v8);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::DescriptorProto_ReservedRange>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    v5 = (v4 + 8);
    *v4 = off_284F45848;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6 = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      if (v6)
      {
        *(v4 + 24) = *(a2 + 24);
      }

      if ((v6 & 2) != 0)
      {
        *(v4 + 28) = *(a2 + 28);
      }
    }

    *(v4 + 16) = v6;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_15:
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    *(v4 + 8) = 0;
    v5 = (v4 + 8);
    *v4 = off_284F45848;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v8 = *(a2 + 16);
    if ((v8 & 3) != 0)
    {
      if (v8)
      {
        *(v4 + 24) = *(a2 + 24);
      }

      if ((v8 & 2) != 0)
      {
        *(v4 + 28) = *(a2 + 28);
      }
    }

    *(v4 + 16) = v8;
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_15;
    }
  }

  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = operator new(0x48uLL);
    *(v4 + 8) = 0;
    v6 = (v4 + 8);
    *v4 = off_284F45710;
    v7 = *(a2 + 8);
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = google::protobuf::Arena::Allocate(a1);
  *(v4 + 8) = a1;
  v6 = (v4 + 8);
  *v4 = off_284F45710;
  v7 = *(a2 + 8);
  if (v7)
  {
LABEL_3:
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

LABEL_4:
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = *(a2 + 40);
  google::protobuf::internal::ExtensionSet::MergeFrom((v4 + 16), v4, (a2 + 16), v5);
  v8 = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 48) = v8;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::ExtensionRangeOptions_Declaration>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F45778;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 20) = 0;
    v6 = *(a2 + 24);
    if ((v6 & 3) != 0)
    {
      v6 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a2 + 24), a1);
    }

    *(v4 + 24) = v6;
    v7 = *(a2 + 32);
    if ((v7 & 3) != 0)
    {
      v8 = (a2 + 32);
      v9 = a1;
LABEL_14:
      v7 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v8, v9);
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F45778;
    v10 = *(a2 + 8);
    if (v10)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v11 = *(a2 + 24);
    *(v4 + 16) = *(a2 + 16);
    if ((v11 & 3) != 0)
    {
      v11 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a2 + 24), 0);
    }

    *(v4 + 24) = v11;
    v7 = *(a2 + 32);
    if ((v7 & 3) != 0)
    {
      v8 = (a2 + 32);
      v9 = 0;
      goto LABEL_14;
    }
  }

  *(v4 + 32) = v7;
  v12 = *(a2 + 40);
  *(v4 + 44) = *(a2 + 44);
  *(v4 + 40) = v12;
  return v4;
}

google::protobuf::UninterpretedOption *google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption>(google::protobuf::Arena *a1, const google::protobuf::UninterpretedOption *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::UninterpretedOption::UninterpretedOption(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x60uLL);
    return google::protobuf::UninterpretedOption::UninterpretedOption(v6, 0, a2);
  }
}

google::protobuf::FieldOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::FieldOptions>(google::protobuf::Arena *a1, const google::protobuf::FieldOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::FieldOptions::FieldOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x90uLL);
    return google::protobuf::FieldOptions::FieldOptions(v7, 0, a2, v8);
  }
}

google::protobuf::OneofOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::OneofOptions>(google::protobuf::Arena *a1, const google::protobuf::OneofOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::OneofOptions::OneofOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x50uLL);
    return google::protobuf::OneofOptions::OneofOptions(v7, 0, a2, v8);
  }
}

google::protobuf::EnumOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::EnumOptions>(google::protobuf::Arena *a1, const google::protobuf::EnumOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::EnumOptions::EnumOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x58uLL);
    return google::protobuf::EnumOptions::EnumOptions(v7, 0, a2, v8);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::EnumValueDescriptorProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F45F98;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v6 = *(a2 + 16);
    *(v4 + 16) = v6;
    v7 = *(a2 + 24);
    if ((v7 & 3) != 0)
    {
      v7 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a2 + 24), a1);
      v6 = *(v4 + 16);
    }

    *(v4 + 24) = v7;
    if ((v6 & 2) != 0)
    {
      v8 = *(a2 + 32);
      v9 = a1;
LABEL_15:
      v13 = google::protobuf::Arena::CopyConstruct<google::protobuf::EnumValueOptions>(v9, v8);
      goto LABEL_16;
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F45F98;
    v10 = *(a2 + 8);
    if (v10)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 16);
    *(v4 + 16) = v12;
    if ((v11 & 3) != 0)
    {
      v11 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a2 + 24), 0);
      v12 = *(v4 + 16);
    }

    *(v4 + 24) = v11;
    if ((v12 & 2) != 0)
    {
      v8 = *(a2 + 32);
      v9 = 0;
      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_16:
  *(v4 + 32) = v13;
  *(v4 + 40) = *(a2 + 40);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::EnumDescriptorProto_EnumReservedRange>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    v5 = (v4 + 8);
    *v4 = off_284F457E0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6 = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      if (v6)
      {
        *(v4 + 24) = *(a2 + 24);
      }

      if ((v6 & 2) != 0)
      {
        *(v4 + 28) = *(a2 + 28);
      }
    }

    *(v4 + 16) = v6;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_15:
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    *(v4 + 8) = 0;
    v5 = (v4 + 8);
    *v4 = off_284F457E0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v8 = *(a2 + 16);
    if ((v8 & 3) != 0)
    {
      if (v8)
      {
        *(v4 + 24) = *(a2 + 24);
      }

      if ((v8 & 2) != 0)
      {
        *(v4 + 28) = *(a2 + 28);
      }
    }

    *(v4 + 16) = v8;
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_15;
    }
  }

  return v4;
}

google::protobuf::EnumValueOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::EnumValueOptions>(google::protobuf::Arena *a1, const google::protobuf::EnumValueOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::EnumValueOptions::EnumValueOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x58uLL);
    return google::protobuf::EnumValueOptions::EnumValueOptions(v7, 0, a2, v8);
  }
}

google::protobuf::ServiceOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::ServiceOptions>(google::protobuf::Arena *a1, const google::protobuf::ServiceOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::ServiceOptions::ServiceOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x58uLL);
    return google::protobuf::ServiceOptions::ServiceOptions(v7, 0, a2, v8);
  }
}

google::protobuf::MethodDescriptorProto *google::protobuf::Arena::CopyConstruct<google::protobuf::MethodDescriptorProto>(google::protobuf::Arena *a1, const google::protobuf::MethodDescriptorProto *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::MethodDescriptorProto::MethodDescriptorProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return google::protobuf::MethodDescriptorProto::MethodDescriptorProto(v6, 0, a2);
  }
}

google::protobuf::MethodOptions *google::protobuf::Arena::CopyConstruct<google::protobuf::MethodOptions>(google::protobuf::Arena *a1, const google::protobuf::MethodOptions *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::MethodOptions::MethodOptions(v4, a1, a2, v5);
  }

  else
  {
    v7 = operator new(0x58uLL);
    return google::protobuf::MethodOptions::MethodOptions(v7, 0, a2, v8);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::FieldOptions_EditionDefault>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F456A8;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 20) = 0;
    v6 = *(a2 + 24);
    if ((v6 & 3) != 0)
    {
      v7 = (a2 + 24);
      v8 = a1;
LABEL_10:
      v6 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v7, v8);
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F456A8;
    v9 = *(a2 + 8);
    if (v9)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v6 = *(a2 + 24);
    *(v4 + 16) = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      v7 = (a2 + 24);
      v8 = 0;
      goto LABEL_10;
    }
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = *(a2 + 32);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::UninterpretedOption_NamePart>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F45570;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 20) = 0;
    v6 = *(a2 + 24);
    if ((v6 & 3) != 0)
    {
      v7 = (a2 + 24);
      v8 = a1;
LABEL_10:
      v6 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v7, v8);
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F45570;
    v9 = *(a2 + 8);
    if (v9)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v6 = *(a2 + 24);
    *(v4 + 16) = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      v7 = (a2 + 24);
      v8 = 0;
      goto LABEL_10;
    }
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = *(a2 + 32);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F459E8;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v6 = *(a2 + 16);
    *(v4 + 16) = v6;
    if (v6)
    {
      v7 = *(a2 + 24);
      v8 = a1;
LABEL_11:
      v11 = google::protobuf::Arena::CopyConstruct<google::protobuf::FeatureSet>(v8, v7);
      goto LABEL_12;
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F459E8;
    v9 = *(a2 + 8);
    if (v9)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v10 = *(a2 + 16);
    *(v4 + 16) = v10;
    if (v10)
    {
      v7 = *(a2 + 24);
      v8 = 0;
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  *(v4 + 24) = v11;
  *(v4 + 32) = *(a2 + 32);
  return v4;
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::Arena::CopyConstruct<google::protobuf::GeneratedCodeInfo_Annotation>(google::protobuf::Arena *a1, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x48uLL);
    return google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(v6, 0, a2);
  }
}

uint64_t google::protobuf::EncodedDescriptorDatabase::Add(google::protobuf::EncodedDescriptorDatabase *this, char *a2, int a3)
{
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v9, 0);
  if (google::protobuf::MessageLite::ParseFromArray(v9, a2, a3))
  {
    v6 = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddFile<google::protobuf::FileDescriptorProto>(*(this + 1), v9, a2, a3);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v8, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 550);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "Invalid file descriptor data passed to EncodedDescriptorDatabase::Add().", 0x48uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v8);
    v6 = 0;
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v9);
  return v6;
}

void sub_23CDBCA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a9);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a11);
  _Unwind_Resume(a1);
}

void sub_23CDBCA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

void sub_23CDBCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddFile<google::protobuf::FileDescriptorProto>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&__dst = a3;
  DWORD2(__dst) = a4;
  v91 = 0;
  __p = 0uLL;
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 16))
  {
    v13 = std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EncodedEntry>::__emplace_back_slow_path<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EncodedEntry>(a1, &__dst);
    v14 = SHIBYTE(v91);
    *(a1 + 8) = v13;
    if (v14 < 0)
    {
      operator delete(__p);
      v9 = (*(a2 + 184) & 0xFFFFFFFFFFFFFFFCLL);
      v10 = v9[23];
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = (*(a2 + 184) & 0xFFFFFFFFFFFFFFFCLL);
      v10 = v9[23];
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_3:
    v11 = *v9;
    v12 = *(v9 + 1);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v7 = __dst;
  *(v6 + 8) = DWORD2(__dst);
  *v6 = v7;
  v8 = __p;
  *(v6 + 32) = v91;
  *(v6 + 16) = v8;
  *(a1 + 8) = v6 + 40;
  v9 = (*(a2 + 184) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = v9[23];
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_3;
  }

LABEL_7:
  v11 = v9;
  v12 = v10;
  if (v10)
  {
LABEL_17:
    while (1)
    {
      v19 = *v11;
      if (v19 != 46 && v19 != 95)
      {
        v20 = v19 - 58;
        v21 = (v19 & 0xFFFFFFDF) - 91;
        if (v20 <= 0xFFFFFFF5 && v21 < 0xFFFFFFE6)
        {
          break;
        }
      }

      ++v11;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 622);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__dst, "Invalid package name: ", 0x16uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(&__dst, (*(a2 + 184) & 0xFFFFFFFFFFFFFFFCLL));
    goto LABEL_129;
  }

LABEL_8:
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 < 0x17)
    {
      goto LABEL_10;
    }

LABEL_26:
    operator new();
  }

  v10 = *(v9 + 1);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_132;
  }

  v9 = *v9;
  if (v10 >= 0x17)
  {
    goto LABEL_26;
  }

LABEL_10:
  BYTE7(__p) = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
    *(&__dst + v10) = 0;
    v23 = *(a1 + 8);
    v16 = v23 - 24;
    if ((*(v23 - 1) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v15 = *(a1 + 8);
    v16 = v15 - 24;
    if ((*(v15 - 1) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  operator delete(*v16);
LABEL_12:
  *v16 = __dst;
  *(v16 + 16) = __p;
  LODWORD(__dst) = -858993459 * ((*(a1 + 8) - *a1) >> 3) - 1;
  v17 = (*(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = v17[1];
    if (v18 <= 0x7FFFFFFFFFFFFFF7)
    {
      v17 = *v17;
      if (v18 < 0x17)
      {
        goto LABEL_14;
      }

LABEL_31:
      operator new();
    }

LABEL_132:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v18 >= 0x17)
  {
    goto LABEL_31;
  }

LABEL_14:
  HIBYTE(__p) = v18;
  if (v18)
  {
    memmove(&__dst + 8, v17, v18);
  }

  *(&__dst + v18 + 8) = 0;
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::insert_unique<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>((a1 + 24), &__dst, &__dst, v88);
  if (v88[16] != 1)
  {
    if (SHIBYTE(__p) < 0)
    {
      operator delete(*(&__dst + 1));
    }

LABEL_128:
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 633);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__dst, "File already exists in database: ", 0x21uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(&__dst, (*(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL));
LABEL_129:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
    return 0;
  }

  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  if (v25 == v24)
  {
LABEL_76:
    v47 = 0;
    if (SHIBYTE(__p) < 0)
    {
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v26 = *(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL;
  v27 = (v25 - v24) >> 5;
  v28 = *(v26 + 23);
  if (v28 >= 0)
  {
    v29 = (*(a2 + 176) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v29 = *v26;
  }

  if (v28 >= 0)
  {
    v30 = *(v26 + 23);
  }

  else
  {
    v30 = *(v26 + 8);
  }

  do
  {
    v31 = v27 >> 1;
    v32 = v24 + 32 * (v27 >> 1);
    v33 = *(v32 + 31);
    if (v33 >= 0)
    {
      v34 = (v32 + 8);
    }

    else
    {
      v34 = *(v32 + 8);
    }

    if (v33 >= 0)
    {
      v35 = *(v32 + 31);
    }

    else
    {
      v35 = *(v32 + 16);
    }

    if (v30 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v30;
    }

    v37 = memcmp(v34, v29, v36);
    if (v37)
    {
      if (v37 < 0)
      {
        goto LABEL_41;
      }
    }

    else if (v35 < v30)
    {
LABEL_41:
      v24 = v32 + 32;
      v31 = v27 + ~v31;
    }

    v27 = v31;
  }

  while (v31);
  if (v24 == v25)
  {
    goto LABEL_76;
  }

  v40 = *(v24 + 8);
  v39 = v24 + 8;
  v38 = v40;
  v41 = *(v39 + 23);
  if (v41 >= 0)
  {
    v42 = v39;
  }

  else
  {
    v42 = v38;
  }

  if (v41 >= 0)
  {
    v43 = *(v39 + 23);
  }

  else
  {
    v43 = *(v39 + 8);
  }

  if (v43 >= v30)
  {
    v44 = v30;
  }

  else
  {
    v44 = v43;
  }

  v45 = memcmp(v29, v42, v44);
  if (v30 < v43)
  {
    v46 = -1;
  }

  else
  {
    v46 = 1;
  }

  if (v30 == v43)
  {
    v46 = 0;
  }

  if (v45)
  {
    v46 = v45;
  }

  v47 = v46 >= 0;
  if (SHIBYTE(__p) < 0)
  {
LABEL_77:
    operator delete(*(&__dst + 1));
  }

LABEL_78:
  if (v47)
  {
    goto LABEL_128;
  }

  v48 = *(a2 + 48);
  if (v48)
  {
    v49 = (v48 + 7);
  }

  else
  {
    v49 = (a2 + 48);
  }

  v50 = *(a2 + 56);
  if (!v50)
  {
LABEL_91:
    v60 = *(a2 + 72);
    if (v60)
    {
      v61 = v60 + 7;
    }

    else
    {
      v61 = a2 + 72;
    }

    v62 = *(a2 + 80);
    if (!v62)
    {
LABEL_100:
      v67 = *(a2 + 120);
      if (v67)
      {
        v68 = (v67 + 7);
      }

      else
      {
        v68 = (a2 + 120);
      }

      v69 = *(a2 + 128);
      if (v69)
      {
        v70 = 8 * v69;
        while (1)
        {
          v71 = *v68;
          v72 = *(*v68 + 24);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          v74 = *((v72 & 0xFFFFFFFFFFFFFFFCLL) + 23);
          if ((v74 & 0x8000000000000000) != 0)
          {
            v73 = *v73;
            v74 = *((v72 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v73, v74);
          if (!result)
          {
            break;
          }

          v75 = *(a2 + 176);
          v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
          v77 = *((v75 & 0xFFFFFFFFFFFFFFFCLL) + 23);
          if ((v77 & 0x8000000000000000) != 0)
          {
            v76 = *v76;
            v77 = *((v75 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          if ((google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddExtension<google::protobuf::FieldDescriptorProto>(a1, v76, v77, v71) & 1) == 0)
          {
            return 0;
          }

          ++v68;
          v70 -= 8;
          if (!v70)
          {
            goto LABEL_112;
          }
        }
      }

      else
      {
LABEL_112:
        v79 = *(a2 + 96);
        v78 = a2 + 96;
        v80 = v79 + 7;
        if (v79)
        {
          v81 = v80;
        }

        else
        {
          v81 = v78;
        }

        v82 = *(v78 + 8);
        if (v82)
        {
          v83 = 8 * v82 - 8;
          do
          {
            v85 = *(*v81 + 48);
            v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
            v87 = *((v85 & 0xFFFFFFFFFFFFFFFCLL) + 23);
            if ((v87 & 0x8000000000000000) != 0)
            {
              v86 = *v86;
              v87 = *((v85 & 0xFFFFFFFFFFFFFFFCLL) + 8);
            }

            result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v86, v87);
            v81 += 8;
            if (result)
            {
              v84 = v83 == 0;
            }

            else
            {
              v84 = 1;
            }

            v83 -= 8;
          }

          while (!v84);
        }

        else
        {
          return 1;
        }
      }

      return result;
    }

    v63 = 8 * v62;
    while (1)
    {
      v64 = *(*v61 + 96);
      v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
      v66 = *((v64 & 0xFFFFFFFFFFFFFFFCLL) + 23);
      if ((v66 & 0x8000000000000000) != 0)
      {
        v65 = *v65;
        v66 = *((v64 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      if ((google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v65, v66) & 1) == 0)
      {
        return 0;
      }

      v61 += 8;
      v63 -= 8;
      if (!v63)
      {
        goto LABEL_100;
      }
    }
  }

  v51 = 8 * v50;
  while (1)
  {
    v52 = *v49;
    v53 = *(*v49 + 216);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    v55 = *((v53 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if ((v55 & 0x8000000000000000) != 0)
    {
      v54 = *v54;
      v55 = *((v53 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(a1, v54, v55);
    if (!result)
    {
      return result;
    }

    v57 = *(a2 + 176);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    v59 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 23);
    if ((v59 & 0x8000000000000000) != 0)
    {
      v58 = *v58;
      v59 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    if ((google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddNestedExtensions<google::protobuf::DescriptorProto>(a1, v58, v59, v52) & 1) == 0)
    {
      return 0;
    }

    ++v49;
    v51 -= 8;
    if (!v51)
    {
      goto LABEL_91;
    }
  }
}

char *google::protobuf::EncodedDescriptorDatabase::FindFileByName(uint64_t a1, void *a2, google::protobuf::MessageLite *a3)
{
  v4 = *(a1 + 8);
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindFile(v4, a2, v6);
  if (result)
  {

    return google::protobuf::internal::ParseNoReflection(result, v8, a3);
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindFile(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, size_t a3)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  if (v7 == v6)
  {
    return 0;
  }

  v8 = (v7 - v6) >> 5;
  do
  {
    v9 = v8 >> 1;
    v10 = &v6[8 * (v8 >> 1)];
    v11 = *(v10 + 31);
    if (v11 >= 0)
    {
      v12 = v10 + 2;
    }

    else
    {
      v12 = *(v10 + 1);
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 31);
    }

    else
    {
      v13 = *(v10 + 2);
    }

    if (a3 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = a3;
    }

    v15 = memcmp(v12, a2, v14);
    if (v15)
    {
      if (v15 < 0)
      {
        goto LABEL_3;
      }
    }

    else if (v13 < a3)
    {
LABEL_3:
      v6 = v10 + 8;
      v9 = v8 + ~v9;
    }

    v8 = v9;
  }

  while (v9);
  if (v6 == v7)
  {
    return 0;
  }

  v16 = *(v6 + 31);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v6 + 2);
  }

  if (v16 != a3)
  {
    return 0;
  }

  v18 = v17 >= 0 ? v6 + 2 : *(v6 + 1);
  if (memcmp(v18, a2, a3))
  {
    return 0;
  }

  v20 = *a1 + 40 * *v6;
  result = *v20;
  v21 = *(v20 + 8);
  return result;
}

char *google::protobuf::EncodedDescriptorDatabase::FindFileContainingSymbol(uint64_t a1, const void **a2, google::protobuf::MessageLite *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(*(a1 + 8));
  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(v4, v6, v7);
  if (result)
  {

    return google::protobuf::internal::ParseNoReflection(result, v9, a3);
  }

  return result;
}

char *google::protobuf::EncodedDescriptorDatabase::FindFileContainingExtension(uint64_t a1, void *a2, int a3, google::protobuf::MessageLite *a4)
{
  v6 = *(a1 + 8);
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

  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindExtension(v6, a2, v8, a3);
  if (result)
  {

    return google::protobuf::internal::ParseNoReflection(result, v10, a4);
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindExtension(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, size_t a3, int a4)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v7 = *(a1 + 21);
  v26 = a1;
  v27 = *(a1 + 22);
  if (v27 != v7)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - v7) >> 3);
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[10 * (v8 >> 1)];
      v11 = *(v10 + 31);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 2);
      }

      if (!v11)
      {
        goto LABEL_39;
      }

      if (v12 >= 0)
      {
        v13 = v10 + 2;
      }

      else
      {
        v13 = *(v10 + 1);
      }

      v14 = v11 - 1;
      v15 = v10[8];
      if (a3 >= v11 - 1)
      {
        v16 = v11 - 1;
      }

      else
      {
        v16 = a3;
      }

      v17 = memcmp(v13 + 1, a2, v16);
      if (v17)
      {
        if (v17 < 0)
        {
          goto LABEL_3;
        }
      }

      else if (v14 < a3)
      {
        goto LABEL_3;
      }

      v18 = memcmp(a2, v13 + 1, v16);
      if (v18)
      {
        if (v18 < 0 || v15 >= a4)
        {
          goto LABEL_4;
        }
      }

      else if (a3 < v14 || v15 >= a4)
      {
        goto LABEL_4;
      }

LABEL_3:
      v7 = v10 + 10;
      v9 = v8 + ~v9;
LABEL_4:
      v8 = v9;
    }

    while (v9);
  }

  if (v7 == v27)
  {
    return 0;
  }

  v20 = *(v7 + 31);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(v7 + 2);
  }

  if (!v20)
  {
LABEL_39:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v20 - 1 != a3)
  {
    return 0;
  }

  v22 = v21 >= 0 ? (v7 + 2) : *(v7 + 1);
  if (memcmp((v22 + 1), a2, a3) || v7[8] != a4)
  {
    return 0;
  }

  v23 = *v26 + 40 * *v7;
  result = *v23;
  v25 = *(v23 + 8);
  return result;
}