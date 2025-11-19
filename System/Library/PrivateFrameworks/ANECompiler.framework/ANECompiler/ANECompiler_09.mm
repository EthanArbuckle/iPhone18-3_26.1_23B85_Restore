char *operations_research::sat::LinearExpressionProto::ByteSizeLong(operations_research::sat::LinearExpressionProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  v3 = v2;
  *(this + 8) = v2;
  if (v2)
  {
    v4 = ((640 - 9 * __clz(v2)) >> 6) + 1;
    v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
LABEL_3:
      v6 = (v4 + v3 + v5 + ((640 - 9 * __clz(v5)) >> 6) + 1);
      v7 = *(this + 8);
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v6 = (v4 + v3 + v5);
  v7 = *(this + 8);
  if (v7)
  {
LABEL_4:
    v6 = (v6 + ((-9 * __clz(v7) + 704) >> 6));
  }

LABEL_5:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v6, this + 18);
}

operations_research::sat::LinearExpressionProto *operations_research::sat::LinearExpressionProto::CopyFrom(operations_research::sat::LinearExpressionProto *this, const operations_research::sat::LinearExpressionProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::LinearExpressionProto::Clear(this);

    return operations_research::sat::LinearExpressionProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::LinearExpressionProto::InternalSwap(uint64_t this, operations_research::sat::LinearExpressionProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  LOBYTE(v2) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v2;
  LOBYTE(v2) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v2;
  LOBYTE(v2) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v2;
  LOBYTE(v2) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v2;
  LOBYTE(v2) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v2;
  LOBYTE(v2) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v2;
  LOBYTE(v2) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v2;
  LOBYTE(v2) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v2;
  LOBYTE(v2) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v2;
  LOBYTE(v2) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v2;
  LOBYTE(v2) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v2;
  LOBYTE(v2) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v2;
  LOBYTE(v2) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  LOBYTE(v2) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v2;
  LOBYTE(v2) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v2;
  LOBYTE(v2) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v2;
  v3 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

void operations_research::sat::LinearArgumentProto::SharedDtor(operations_research::sat::LinearArgumentProto *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    if (*(v2 + 44) >= 1)
    {
      v3 = *(v2 + 48);
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      if (!v5)
      {
        operator delete(v4);
      }
    }

    if (*(v2 + 20) >= 1)
    {
      v6 = *(v2 + 24);
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      if (!v8)
      {
        operator delete(v7);
      }
    }

    MEMORY[0x23EED9460](v2, 0x1081C403102E283);
  }

  v10 = *(this + 3);
  v9 = (this + 24);
  if (v10)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v9);
  }
}

void operations_research::sat::LinearArgumentProto::~LinearArgumentProto(operations_research::sat::LinearArgumentProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearArgumentProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearArgumentProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearArgumentProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = (this + 1);
  v6 = this[1];
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 8))
  {
LABEL_3:
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

LABEL_4:
  v7 = *(a2 + 4);
  if (v7)
  {
    v8 = v4[6];
    v9 = *(a2 + 6);
    if (!v8)
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v6, v9);
      v4[6] = this;
      *(v4 + 4) |= v7;
      v10 = *(a2 + 1);
      if ((v10 & 1) == 0)
      {
        return this;
      }

      goto LABEL_10;
    }

    this = operations_research::sat::LinearExpressionProto::MergeImpl(v8, v9, a3);
  }

  *(v4 + 4) |= v7;
  v10 = *(a2 + 1);
  if ((v10 & 1) == 0)
  {
    return this;
  }

LABEL_10:

  return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearArgumentProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(v1 + 16))
  {
    this = operations_research::sat::LinearExpressionProto::Clear(*(v1 + 48));
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

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearArgumentProto::_InternalSerialize(operations_research::sat::LinearArgumentProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  if (*(this + 16))
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *(this + 6), *(*(this + 6) + 72), a2, a3, a6);
  }

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

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v12, *(*v12 + 72), v7, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::sat::LinearArgumentProto::ByteSizeLong(operations_research::sat::LinearArgumentProto *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 24);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v6);
      v3 = (v3 + v7 + ((352 - 9 * __clz(v7)) >> 6));
      v5 -= 8;
    }

    while (v5);
    if (*(this + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if (*(this + 16))
    {
LABEL_8:
      v8 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(this + 6));
      v3 = &v8[v3 + 1 + ((352 - 9 * __clz(v8)) >> 6)];
    }
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

void operations_research::sat::AllDifferentConstraintProto::~AllDifferentConstraintProto(operations_research::sat::AllDifferentConstraintProto *this)
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

int *operations_research::sat::AllDifferentConstraintProto::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  v5 = *(a2 + 1);
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::AllDifferentConstraintProto::Clear(google::protobuf::UnknownFieldSet *this)
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

const google::protobuf::UnknownFieldSet *operations_research::sat::AllDifferentConstraintProto::_InternalSerialize(operations_research::sat::AllDifferentConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
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

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *v12, *(*v12 + 72), a2, a3, a6);
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

char *operations_research::sat::AllDifferentConstraintProto::ByteSizeLong(operations_research::sat::AllDifferentConstraintProto *this)
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
      v7 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v6);
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

int *operations_research::sat::AllDifferentConstraintProto::MergeFrom(int *this, const operations_research::sat::AllDifferentConstraintProto *a2)
{
  v3 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  v4 = *(a2 + 1);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v3 + 8), ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

double operations_research::sat::LinearConstraintProto::LinearConstraintProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F39718;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  return result;
}

uint64_t operations_research::sat::LinearConstraintProto::LinearConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39718;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
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

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    v22 = *(a3 + 40);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0);
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v23 = *(a1 + 48);
      v24 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v23 - v24) < 0x20)
      {
        goto LABEL_19;
      }

      v25 = v21;
      v26 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v27 = &v23[v26];
      v28 = &v24[v26];
      v29 = (v24 + 2);
      v30 = v23 + 2;
      v31 = v26;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v23 = v27;
      v24 = v28;
      if (v26 != v25)
      {
LABEL_19:
        v33 = v21 + 1;
        do
        {
          v34 = *v24++;
          *v23++ = v34;
          --v33;
        }

        while (v33 > 1);
      }
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = a2;
  v35 = *(a3 + 64);
  if (v35)
  {
    v36 = *(a3 + 64);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 64, 0);
    *(a1 + 64) = v35;
    if (v35 >= 1)
    {
      v37 = *(a1 + 72);
      v38 = *(a3 + 72);
      if (v35 < 4)
      {
        goto LABEL_28;
      }

      if ((v37 - v38) < 0x20)
      {
        goto LABEL_28;
      }

      v39 = v35;
      v40 = v35 & 0x7FFFFFFC;
      LODWORD(v35) = v35 - (v35 & 0x7FFFFFFC);
      v41 = &v37[v40];
      v42 = &v38[v40];
      v43 = (v38 + 2);
      v44 = v37 + 2;
      v45 = v40;
      do
      {
        v46 = *v43;
        *(v44 - 1) = *(v43 - 1);
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      v37 = v41;
      v38 = v42;
      if (v40 != v39)
      {
LABEL_28:
        v47 = v35 + 1;
        do
        {
          v48 = *v38++;
          *v37++ = v48;
          --v47;
        }

        while (v47 > 1);
      }
    }
  }

  *(a1 + 80) = 0;
  return a1;
}

void sub_23C98F26C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 44) >= 1)
  {
    v3 = *(v1 + 48);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v6 = *(v1 + 24);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearConstraintProto::~LinearConstraintProto(operations_research::sat::LinearConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 17) >= 1)
  {
    v4 = *(this + 9);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 11) >= 1)
  {
    v7 = *(this + 6);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 5) >= 1)
  {
    v10 = *(this + 3);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }
}

{
  operations_research::sat::LinearConstraintProto::~LinearConstraintProto(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearConstraintProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v51 = this;
      v52 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v52;
      this = v51;
      LODWORD(v4) = *(v51 + 16);
      v6 = *(v51 + 24);
      *(v51 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 3);
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
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  if (*(this + 11) < v20 + v19)
  {
    v53 = this;
    v54 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v54;
    this = v53;
    LODWORD(v20) = *(v53 + 10);
    v21 = v53[6];
    *(v53 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = this[6];
    *(this + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a2 + 6);
  v23 = (v21 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v24 = 8 * v20 + v21;
  if ((v24 - v22) < 0x20)
  {
    goto LABEL_19;
  }

  v25 = v19;
  v26 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v23 += v26;
  v27 = &v22[v26];
  v28 = (v22 + 2);
  v29 = (v24 + 16);
  v30 = v26;
  do
  {
    v31 = *v28;
    *(v29 - 1) = *(v28 - 1);
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 4;
  }

  while (v30);
  v22 = v27;
  if (v26 != v25)
  {
LABEL_19:
    v32 = v19 + 1;
    do
    {
      v33 = *v22++;
      *v23++ = v33;
      --v32;
    }

    while (v32 > 1);
  }

LABEL_21:
  v34 = *(a2 + 16);
  if (!v34)
  {
    goto LABEL_31;
  }

  v35 = *(this + 16);
  if (*(this + 17) < v35 + v34)
  {
    v55 = this;
    v56 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 8, v35);
    a2 = v56;
    this = v55;
    LODWORD(v35) = *(v55 + 16);
    v36 = v55[9];
    *(v55 + 16) = v35 + v34;
    if (v34 < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v36 = this[9];
    *(this + 16) = v35 + v34;
    if (v34 < 1)
    {
      goto LABEL_31;
    }
  }

  v37 = *(a2 + 9);
  v38 = (v36 + 8 * v35);
  if (v34 < 8)
  {
    goto LABEL_29;
  }

  v39 = 8 * v35 + v36;
  if ((v39 - v37) < 0x20)
  {
    goto LABEL_29;
  }

  v40 = v34;
  v41 = v34 & 0x7FFFFFFC;
  LODWORD(v34) = v34 - (v34 & 0x7FFFFFFC);
  v38 += v41;
  v42 = &v37[v41];
  v43 = (v37 + 2);
  v44 = (v39 + 16);
  v45 = v41;
  do
  {
    v46 = *v43;
    *(v44 - 1) = *(v43 - 1);
    *v44 = v46;
    v43 += 2;
    v44 += 2;
    v45 -= 4;
  }

  while (v45);
  v37 = v42;
  if (v41 != v40)
  {
LABEL_29:
    v47 = v34 + 1;
    do
    {
      v48 = *v37++;
      *v38++ = v48;
      --v47;
    }

    while (v47 > 1);
  }

LABEL_31:
  v49 = *(a2 + 1);
  if (v49)
  {
    v50 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v50, ((v49 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearConstraintProto::Clear(operations_research::sat::LinearConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearConstraintProto::_InternalSerialize(operations_research::sat::LinearConstraintProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v42 = this;
      v43 = a3;
      v44 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v43;
      a2 = v44;
      this = v42;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v45 = v4 >> 14;
      v4 >>= 7;
    }

    while (v45);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= a2)
    {
      v46 = this;
      v47 = a3;
      v48 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v47;
      a2 = v48;
      this = v46;
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        a2 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v23 = this;
            v24 = a3;
            v25 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v24;
            a2 = v25;
            this = v23;
            v26 = *v18++;
            v20 = v26;
            if (v26 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2++ = v20 | 0x80;
                v22 = v20 >> 7;
                v27 = v20 >> 14;
                v20 >>= 7;
              }

              while (v27);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *a2++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v49 = v16 >> 14;
      v16 >>= 7;
    }

    while (v49);
    a2 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v28 = *(this + 20);
  if (v28 >= 1)
  {
    if (*a3 <= a2)
    {
      v50 = this;
      v51 = a3;
      v52 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v51;
      a2 = v52;
      this = v50;
      *a2 = 26;
      v29 = a2 + 1;
      if (v28 < 0x80)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *a2 = 26;
      v29 = a2 + 1;
      if (v28 < 0x80)
      {
LABEL_28:
        a2 += 2;
        *v29 = v28;
        v30 = *(this + 9);
        v31 = &v30[*(this + 16)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v35 = this;
            v36 = a3;
            v37 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v36;
            a2 = v37;
            this = v35;
            v38 = *v30++;
            v32 = v38;
            if (v38 >= 0x80)
            {
              do
              {
LABEL_35:
                *a2++ = v32 | 0x80;
                v34 = v32 >> 7;
                v39 = v32 >> 14;
                v32 >>= 7;
              }

              while (v39);
              goto LABEL_32;
            }
          }

          else
          {
            v33 = *v30++;
            v32 = v33;
            if (v33 >= 0x80)
            {
              goto LABEL_35;
            }
          }

          LOBYTE(v34) = v32;
LABEL_32:
          *a2++ = v34;
          if (v30 >= v31)
          {
            goto LABEL_37;
          }
        }
      }
    }

    do
    {
      *v29++ = v28 | 0x80;
      v53 = v28 >> 14;
      v28 >>= 7;
    }

    while (v53);
    a2 = v29 - 1;
    goto LABEL_28;
  }

LABEL_37:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::LinearConstraintProto::ByteSizeLong(operations_research::sat::LinearConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  v3 = (-9 * __clz(v2) + 640) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
  *(this + 14) = v5;
  v6 = (640 - 9 * __clz(v5)) >> 6;
  if (v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::Int64Size(this + 16);
  *(this + 20) = v8;
  v9 = (640 - 9 * __clz(v8)) >> 6;
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v4 + v2 + v5 + v7 + v8 + v10), this + 21);
}

operations_research::sat::LinearConstraintProto *operations_research::sat::LinearConstraintProto::CopyFrom(operations_research::sat::LinearConstraintProto *this, const operations_research::sat::LinearConstraintProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::LinearConstraintProto::Clear(this);

    return operations_research::sat::LinearConstraintProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::LinearConstraintProto::InternalSwap(uint64_t this, operations_research::sat::LinearConstraintProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  LOBYTE(v2) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v2;
  LOBYTE(v2) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v2;
  LOBYTE(v2) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v2;
  LOBYTE(v2) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v2;
  LOBYTE(v2) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v2;
  LOBYTE(v2) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v2;
  LOBYTE(v2) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v2;
  LOBYTE(v2) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v2;
  LOBYTE(v2) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v2;
  LOBYTE(v2) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v2;
  LOBYTE(v2) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v2;
  LOBYTE(v2) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v2;
  LOBYTE(v2) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  LOBYTE(v2) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v2;
  LOBYTE(v2) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v2;
  LOBYTE(v2) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v2;
  LOBYTE(v2) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v2;
  LOBYTE(v2) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v2;
  LOBYTE(v2) = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v2;
  LOBYTE(v2) = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v2;
  LOBYTE(v2) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v2;
  LOBYTE(v2) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v2;
  LOBYTE(v2) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v2;
  LOBYTE(v2) = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v2;
  LOBYTE(v2) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v2;
  LOBYTE(v2) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v2;
  LOBYTE(v2) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v2;
  LOBYTE(v2) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v2;
  LOBYTE(v2) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v2;
  LOBYTE(v2) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v2;
  LOBYTE(v2) = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = v2;
  LOBYTE(v2) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v2;
  return this;
}

void operations_research::sat::ElementConstraintProto::~ElementConstraintProto(operations_research::sat::ElementConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
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

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::ElementConstraintProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v23 = this;
      v24 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v24;
      this = v23;
      LODWORD(v4) = *(v23 + 16);
      v6 = *(v23 + 24);
      *(v23 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = *(a2 + 9);
  if (v19)
  {
    *(this + 9) = v19;
  }

  v20 = *(a2 + 10);
  if (v20)
  {
    *(this + 10) = v20;
  }

  v21 = a2[1];
  if (v21)
  {
    v22 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v22, ((v21 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::ElementConstraintProto::Clear(operations_research::sat::ElementConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 28) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::ElementConstraintProto::_InternalSerialize(operations_research::sat::ElementConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 9);
  if (v7)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<1>(a3, v7, a2);
  }

  v8 = *(this + 10);
  if (v8)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<2>(a3, v8, a2);
  }

  v9 = *(this + 8);
  if (v9 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 26;
      v10 = a2 + 1;
      if (v9 < 0x80)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *a2 = 26;
      v10 = a2 + 1;
      if (v9 < 0x80)
      {
LABEL_8:
        a2 = (a2 + 2);
        *v10 = v9;
        v11 = *(this + 3);
        v12 = &v11[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v16 = *v11++;
            v13 = v16;
            if (v16 >= 0x80)
            {
              do
              {
LABEL_15:
                *a2 = v13 | 0x80;
                a2 = (a2 + 1);
                v15 = v13 >> 7;
                v17 = v13 >> 14;
                v13 >>= 7;
              }

              while (v17);
              goto LABEL_12;
            }
          }

          else
          {
            v14 = *v11++;
            v13 = v14;
            if (v14 >= 0x80)
            {
              goto LABEL_15;
            }
          }

          LOBYTE(v15) = v13;
LABEL_12:
          *a2 = v15;
          a2 = (a2 + 1);
          if (v11 >= v12)
          {
            goto LABEL_17;
          }
        }
      }
    }

    do
    {
      *v10++ = v9 | 0x80;
      v20 = v9 >> 14;
      v9 >>= 7;
    }

    while (v20);
    a2 = (v10 - 1);
    goto LABEL_8;
  }

LABEL_17:
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::ElementConstraintProto::ByteSizeLong(operations_research::sat::ElementConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  if (v2)
  {
    v3 = (((-9 * __clz(v2) + 640) >> 6) + 1 + v2);
    v4 = *(this + 9);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = 0;
  v4 = *(this + 9);
  if (v4)
  {
LABEL_3:
    v3 = (v3 + ((-9 * __clz(v4) + 704) >> 6));
  }

LABEL_4:
  v5 = *(this + 10);
  if (v5)
  {
    v3 = (v3 + ((-9 * __clz(v5) + 704) >> 6));
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 11);
}

void *operations_research::sat::ElementConstraintProto::MergeFrom(void *this, int **a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = (v3 + v2);
    if (*(this + 5) < v4)
    {
      v22 = this;
      v23 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v3, v4);
      a2 = v23;
      this = v22;
      LODWORD(v3) = *(v22 + 16);
      v5 = *(v22 + 24);
      *(v22 + 16) = v3 + v2;
      if (v2 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = this[3];
      *(this + 4) = v4;
      if (v2 < 1)
      {
        goto LABEL_11;
      }
    }

    v6 = a2[3];
    v7 = (v5 + 4 * v3);
    if (v2 < 8)
    {
      goto LABEL_9;
    }

    v8 = 4 * v3 + v5;
    if ((v8 - v6) < 0x20)
    {
      goto LABEL_9;
    }

    v9 = v2;
    v10 = v2 & 0x7FFFFFF8;
    LODWORD(v2) = v2 - (v2 & 0x7FFFFFF8);
    v7 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 4);
    v13 = (v8 + 16);
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 8;
    }

    while (v14);
    v6 = v11;
    if (v10 != v9)
    {
LABEL_9:
      v16 = v2 + 1;
      do
      {
        v17 = *v6++;
        *v7++ = v17;
        --v16;
      }

      while (v16 > 1);
    }
  }

LABEL_11:
  v18 = *(a2 + 9);
  if (v18)
  {
    *(this + 9) = v18;
  }

  v19 = *(a2 + 10);
  if (v19)
  {
    *(this + 10) = v19;
  }

  v20 = a2[1];
  if (v20)
  {
    v21 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v21, ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void *operations_research::sat::IntervalConstraintProto::IntervalConstraintProto(void *a1, google::protobuf::Arena *a2, uint64_t a3)
{
  a1[1] = a2;
  v6 = (a1 + 1);
  *a1 = off_284F39CC8;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v8 = *(a3 + 16);
  a1[2] = v8;
  if ((v8 & 1) == 0)
  {
    a1[3] = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    a1[4] = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  a1[3] = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(a2, *(a3 + 24));
  if ((v8 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  a1[4] = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(a2, *(a3 + 32));
  if ((v8 & 4) != 0)
  {
LABEL_6:
    a1[5] = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(a2, *(a3 + 40));
    return a1;
  }

LABEL_9:
  a1[5] = 0;
  return a1;
}

uint64_t operations_research::sat::IntervalConstraintProto::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    if (*(v2 + 44) >= 1)
    {
      v3 = *(v2 + 48);
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      if (!v5)
      {
        operator delete(v4);
      }
    }

    if (*(v2 + 20) >= 1)
    {
      v6 = *(v2 + 24);
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      if (!v8)
      {
        operator delete(v7);
      }
    }

    this = MEMORY[0x23EED9460](v2, 0x1081C403102E283);
  }

  v9 = *(v1 + 32);
  if (v9)
  {
    if (*(v9 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v9 + 8));
    }

    if (*(v9 + 44) >= 1)
    {
      v10 = *(v9 + 48);
      v12 = *(v10 - 8);
      v11 = (v10 - 8);
      if (!v12)
      {
        operator delete(v11);
      }
    }

    if (*(v9 + 20) >= 1)
    {
      v13 = *(v9 + 24);
      v15 = *(v13 - 8);
      v14 = (v13 - 8);
      if (!v15)
      {
        operator delete(v14);
      }
    }

    this = MEMORY[0x23EED9460](v9, 0x1081C403102E283);
  }

  v16 = *(v1 + 40);
  if (v16)
  {
    if (*(v16 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v16 + 8));
    }

    if (*(v16 + 44) >= 1)
    {
      v17 = *(v16 + 48);
      v19 = *(v17 - 8);
      v18 = (v17 - 8);
      if (!v19)
      {
        operator delete(v18);
      }
    }

    if (*(v16 + 20) >= 1)
    {
      v20 = *(v16 + 24);
      v22 = *(v20 - 8);
      v21 = (v20 - 8);
      if (!v22)
      {
        operator delete(v21);
      }
    }

    JUMPOUT(0x23EED9460);
  }

  return this;
}

void operations_research::sat::IntervalConstraintProto::~IntervalConstraintProto(operations_research::sat::IntervalConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::IntervalConstraintProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::IntervalConstraintProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::IntervalConstraintProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = (this + 1);
  v6 = this[1];
  if (v6)
  {
    v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    v7 = *(a2 + 4);
    if ((v7 & 7) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = *(a2 + 4);
    if ((v7 & 7) == 0)
    {
      goto LABEL_18;
    }
  }

  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v10 = v4[4];
    v11 = *(a2 + 4);
    if (v10)
    {
      this = operations_research::sat::LinearExpressionProto::MergeImpl(v10, v11, a3);
      if ((v7 & 4) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v6, v11);
      v4[4] = this;
      if ((v7 & 4) == 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  v8 = this[3];
  v9 = *(a2 + 3);
  if (v8)
  {
    this = operations_research::sat::LinearExpressionProto::MergeImpl(v8, v9, a3);
    if ((v7 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v6, v9);
    v4[3] = this;
    if ((v7 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_5:
  if ((v7 & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v12 = v4[5];
  v13 = *(a2 + 5);
  if (v12)
  {
    this = operations_research::sat::LinearExpressionProto::MergeImpl(v12, v13, a3);
  }

  else
  {
    this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v6, v13);
    v4[5] = this;
  }

LABEL_18:
  *(v4 + 4) |= v7;
  v14 = *(a2 + 1);
  if (v14)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::IntervalConstraintProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = operations_research::sat::LinearExpressionProto::Clear(*(this + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = operations_research::sat::LinearExpressionProto::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = operations_research::sat::LinearExpressionProto::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::IntervalConstraintProto::_InternalSerialize(operations_research::sat::IntervalConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *(this + 3), *(*(this + 3) + 72), a2, a3, a6);
    if ((v9 & 2) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(6, *(this + 5), *(*(this + 5) + 72), v7, a3, a6);
      v10 = *(this + 1);
      if ((v10 & 1) == 0)
      {
        return v7;
      }

      goto LABEL_9;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *(this + 4), *(*(this + 4) + 72), v7, a3, a6);
  if ((v9 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_9:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::sat::IntervalConstraintProto::ByteSizeLong(operations_research::sat::IntervalConstraintProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(this + 3));
    v3 = &v4[((352 - 9 * __clz(v4)) >> 6) + 1];
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(this + 4));
    v3 = &v5[v3 + 1 + ((352 - 9 * __clz(v5)) >> 6)];
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(this + 5));
    v3 = &v6[v3 + 1 + ((352 - 9 * __clz(v6)) >> 6)];
  }

LABEL_10:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

google::protobuf::UnknownFieldSet *operations_research::sat::IntervalConstraintProto::CopyFrom(google::protobuf::UnknownFieldSet *this, const operations_research::sat::IntervalConstraintProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::IntervalConstraintProto::Clear(this);

    return operations_research::sat::IntervalConstraintProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

void operations_research::sat::NoOverlapConstraintProto::~NoOverlapConstraintProto(operations_research::sat::NoOverlapConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
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

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::NoOverlapConstraintProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 16);
      v6 = *(v21 + 24);
      *(v21 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::NoOverlapConstraintProto::Clear(operations_research::sat::NoOverlapConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::NoOverlapConstraintProto::_InternalSerialize(operations_research::sat::NoOverlapConstraintProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v18 = this;
      v19 = a3;
      v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v19;
      a2 = v20;
      this = v18;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v21 = v4 >> 14;
      v4 >>= 7;
    }

    while (v21);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::NoOverlapConstraintProto::ByteSizeLong(operations_research::sat::NoOverlapConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  if (v2)
  {
    v3 = ((640 - 9 * __clz(v2)) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v3 + v2), this + 9);
}

uint64_t operations_research::sat::NoOverlap2DConstraintProto::NoOverlap2DConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F395E0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
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

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
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

  *(a1 + 56) = 0;
  return a1;
}

void sub_23C991178(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NoOverlap2DConstraintProto::~NoOverlap2DConstraintProto(operations_research::sat::NoOverlap2DConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
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

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::NoOverlap2DConstraintProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v37 = this;
      v38 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v38;
      this = v37;
      LODWORD(v4) = *(v37 + 16);
      v6 = *(v37 + 24);
      *(v37 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  v21 = (v20 + v19);
  if (*(this + 11) < v21)
  {
    v39 = this;
    v40 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 5, v20, v21);
    a2 = v40;
    this = v39;
    LODWORD(v20) = *(v39 + 10);
    v22 = v39[6];
    *(v39 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = this[6];
    *(this + 10) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = a2[6];
  v24 = (v22 + 4 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 4 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFF8;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFF8);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 4);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 8;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = a2[1];
  if (v35)
  {
    v36 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v36, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::NoOverlap2DConstraintProto::Clear(operations_research::sat::NoOverlap2DConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::NoOverlap2DConstraintProto::_InternalSerialize(operations_research::sat::NoOverlap2DConstraintProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v30 = this;
      v31 = a3;
      v32 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v31;
      a2 = v32;
      this = v30;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v33 = v4 >> 14;
      v4 >>= 7;
    }

    while (v33);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= a2)
    {
      v34 = this;
      v35 = a3;
      v36 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v35;
      a2 = v36;
      this = v34;
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        a2 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v23 = this;
            v24 = a3;
            v25 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v24;
            a2 = v25;
            this = v23;
            v26 = *v18++;
            v20 = v26;
            if (v26 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2++ = v20 | 0x80;
                v22 = v20 >> 7;
                v27 = v20 >> 14;
                v20 >>= 7;
              }

              while (v27);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *a2++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v37 = v16 >> 14;
      v16 >>= 7;
    }

    while (v37);
    a2 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::NoOverlap2DConstraintProto::ByteSizeLong(operations_research::sat::NoOverlap2DConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  v3 = v2;
  *(this + 8) = v2;
  if (v2)
  {
    v4 = ((640 - 9 * __clz(v2)) >> 6) + 1;
    v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
    *(this + 14) = v5;
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
    v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v4 + v3 + v5 + v6), this + 15);
}

uint64_t operations_research::sat::CumulativeConstraintProto::CumulativeConstraintProto(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39D98;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = *(a3 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v8 = *(a3 + 24);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 24, 0, *(a3 + 24));
    *(a1 + 24) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
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

  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  if (*(a3 + 56))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 48), (a3 + 48), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  if (*(a1 + 16))
  {
    *(a1 + 72) = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(a2, *(a3 + 72));
  }

  else
  {
    *(a1 + 72) = 0;
  }

  return a1;
}

void sub_23C9919B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CumulativeConstraintProto::SharedDtor(operations_research::sat::CumulativeConstraintProto *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    if (*(v2 + 44) >= 1)
    {
      v3 = *(v2 + 48);
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      if (!v5)
      {
        operator delete(v4);
      }
    }

    if (*(v2 + 20) >= 1)
    {
      v6 = *(v2 + 24);
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      if (!v8)
      {
        operator delete(v7);
      }
    }

    MEMORY[0x23EED9460](v2, 0x1081C403102E283);
  }

  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  if (*(this + 7) >= 1)
  {
    v9 = *(this + 4);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {

      operator delete(v10);
    }
  }
}

void operations_research::sat::CumulativeConstraintProto::~CumulativeConstraintProto(operations_research::sat::CumulativeConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::CumulativeConstraintProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::CumulativeConstraintProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::CumulativeConstraintProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = (this + 1);
  v6 = this[1];
  if (v6)
  {
    v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    v7 = *(a2 + 6);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *(a2 + 6);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v8 = *(this + 6);
  a3 = (v8 + v7);
  if (*(this + 7) < a3)
  {
    this = google::protobuf::RepeatedField<int>::Grow(this + 3, v8, a3);
    LODWORD(v8) = *(v4 + 6);
    a3 = (v8 + v7);
    v9 = v4[4];
    *(v4 + 6) = a3;
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = this[4];
    *(this + 6) = a3;
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  v10 = *(a2 + 4);
  v11 = (v9 + 4 * v8);
  if (v7 < 8)
  {
    goto LABEL_10;
  }

  v12 = 4 * v8 + v9;
  if ((v12 - v10) < 0x20)
  {
    goto LABEL_10;
  }

  v13 = v7;
  v14 = v7 & 0x7FFFFFF8;
  LODWORD(v7) = v7 - (v7 & 0x7FFFFFF8);
  v11 += v14;
  v15 = &v10[v14];
  v16 = (v10 + 4);
  v17 = (v12 + 16);
  v18 = v14;
  do
  {
    v19 = *v16;
    *(v17 - 1) = *(v16 - 1);
    *v17 = v19;
    v16 += 2;
    v17 += 2;
    v18 -= 8;
  }

  while (v18);
  v10 = v15;
  if (v14 != v13)
  {
LABEL_10:
    v20 = v7 + 1;
    do
    {
      v21 = *v10++;
      *v11++ = v21;
      --v20;
    }

    while (v20 > 1);
  }

LABEL_12:
  if (*(a2 + 14))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v4 + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  v22 = *(a2 + 4);
  if (v22)
  {
    v23 = v4[9];
    v24 = *(a2 + 9);
    if (!v23)
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v6, v24);
      v4[9] = this;
      *(v4 + 4) |= v22;
      v25 = *(a2 + 1);
      if ((v25 & 1) == 0)
      {
        return this;
      }

      goto LABEL_20;
    }

    this = operations_research::sat::LinearExpressionProto::MergeImpl(v23, v24, a3);
  }

  *(v4 + 4) |= v22;
  v25 = *(a2 + 1);
  if ((v25 & 1) == 0)
  {
    return this;
  }

LABEL_20:

  return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v25 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *operations_research::sat::CumulativeConstraintProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 6) = 0;
  if (*(this + 14) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(v1 + 16))
  {
    this = operations_research::sat::LinearExpressionProto::Clear(*(v1 + 72));
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

const google::protobuf::UnknownFieldSet *operations_research::sat::CumulativeConstraintProto::_InternalSerialize(operations_research::sat::CumulativeConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  if (*(this + 16))
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *(this + 9), *(*(this + 9) + 72), a2, a3, a6);
  }

  v9 = *(this + 10);
  if (v9 >= 1)
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      *v7 = 18;
      v10 = v7 + 1;
      if (v9 < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *v7 = 18;
      v10 = v7 + 1;
      if (v9 < 0x80)
      {
LABEL_6:
        v7 += 2;
        *v10 = v9;
        v11 = *(this + 4);
        v12 = &v11[*(this + 6)];
        while (1)
        {
          if (*a3 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
            v16 = *v11++;
            v13 = v16;
            if (v16 >= 0x80)
            {
              do
              {
LABEL_13:
                *v7++ = v13 | 0x80;
                v15 = v13 >> 7;
                v17 = v13 >> 14;
                v13 >>= 7;
              }

              while (v17);
              goto LABEL_10;
            }
          }

          else
          {
            v14 = *v11++;
            v13 = v14;
            if (v14 >= 0x80)
            {
              goto LABEL_13;
            }
          }

          LOBYTE(v15) = v13;
LABEL_10:
          *v7++ = v15;
          if (v11 >= v12)
          {
            goto LABEL_15;
          }
        }
      }
    }

    do
    {
      *v10++ = v9 | 0x80;
      v24 = v9 >> 14;
      v9 >>= 7;
    }

    while (v24);
    v7 = v10 - 1;
    goto LABEL_6;
  }

LABEL_15:
  v18 = *(this + 14);
  if (v18)
  {
    v19 = 0;
    v20 = (this + 48);
    do
    {
      if (*v20)
      {
        v21 = (*v20 + 8 * v19 + 7);
      }

      else
      {
        v21 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *v21, *(*v21 + 72), v7, a3, a6);
      ++v19;
    }

    while (v18 != v19);
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::sat::CumulativeConstraintProto::ByteSizeLong(operations_research::sat::CumulativeConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  *(this + 10) = v2;
  v3 = (640 - 9 * __clz(v2)) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 6);
  v6 = v4 + v2;
  v7 = *(this + 14);
  v8 = (v6 + v7);
  if (v5)
  {
    v9 = (v5 + 7);
  }

  else
  {
    v9 = (this + 48);
  }

  if (v7)
  {
    v10 = 8 * v7;
    do
    {
      v11 = *v9++;
      v12 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v11);
      v8 = (v8 + v12 + ((352 - 9 * __clz(v12)) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 16))
  {
    v13 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(this + 9));
    v8 = &v13[((352 - 9 * __clz(v13)) >> 6) + 1 + v8];
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v8, this + 5);
}

uint64_t operations_research::sat::ReservoirConstraintProto::ReservoirConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39BF8;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  if (*(a3 + 24))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 16), (a3 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v8 = *(a3 + 40);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 48);
      v10 = *(a3 + 48);
      if (v8 < 8)
      {
        goto LABEL_12;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_12;
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
LABEL_12:
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

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  if (*(a3 + 72))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 64), (a3 + 64), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  *(a1 + 104) = 0;
  *(a1 + 88) = *(a3 + 88);
  return a1;
}

void sub_23C992204(_Unwind_Exception *a1)
{
  if (*(v1 + 44) >= 1)
  {
    v4 = *(v1 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
      google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(v2);
      _Unwind_Resume(a1);
    }
  }

  google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::ReservoirConstraintProto::~ReservoirConstraintProto(operations_research::sat::ReservoirConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 8))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 64));
  }

  v4 = (this + 16);
  if (*(this + 11) < 1 || (v5 = *(this + 6), v7 = *(v5 - 8), v6 = (v5 - 8), v7))
  {
    if (!*v4)
    {
      return;
    }
  }

  else
  {
    operator delete(v6);
    if (!*v4)
    {
      return;
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v4);
}

{
  operations_research::sat::ReservoirConstraintProto::~ReservoirConstraintProto(this);

  JUMPOUT(0x23EED9460);
}

int *operations_research::sat::ReservoirConstraintProto::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    v6 = *(v4 + 40);
    v7 = (v6 + v5);
    if (*(v4 + 44) < v7)
    {
      this = google::protobuf::RepeatedField<int>::Grow(v4 + 40, v6, v7);
      LODWORD(v6) = *(v4 + 40);
      v8 = *(v4 + 48);
      *(v4 + 40) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = *(v4 + 48);
      *(v4 + 40) = v7;
      if (v5 < 1)
      {
        goto LABEL_13;
      }
    }

    v9 = *(a2 + 6);
    v10 = (v8 + 4 * v6);
    if (v5 < 8)
    {
      goto LABEL_11;
    }

    v11 = 4 * v6 + v8;
    if ((v11 - v9) < 0x20)
    {
      goto LABEL_11;
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
LABEL_11:
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

LABEL_13:
  if (*(a2 + 18))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 64), (a2 + 64), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  v21 = *(a2 + 11);
  if (v21)
  {
    *(v4 + 88) = v21;
  }

  v22 = *(a2 + 12);
  if (v22)
  {
    *(v4 + 96) = v22;
  }

  v23 = *(a2 + 1);
  if (v23)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v23 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::ReservoirConstraintProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 6) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 4);
  }

  *(v1 + 40) = 0;
  if (*(v1 + 72) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 64));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::ReservoirConstraintProto::_InternalSerialize(operations_research::sat::ReservoirConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 11);
  if (v9)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<1>(a3, v9, a2);
  }

  v10 = *(this + 12);
  if (v10)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<2>(a3, v10, a2);
  }

  v11 = *(this + 6);
  if (v11)
  {
    v12 = 0;
    v13 = (this + 16);
    do
    {
      if (*v13)
      {
        v14 = (*v13 + 8 * v12 + 7);
      }

      else
      {
        v14 = (this + 16);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *v14, *(*v14 + 72), a2, a3, a6);
      ++v12;
    }

    while (v11 != v12);
  }

  v15 = *(this + 14);
  if (v15 > 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 42;
      v16 = a2 + 1;
      if (v15 < 0x80)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *a2 = 42;
      v16 = a2 + 1;
      if (v15 < 0x80)
      {
LABEL_14:
        a2 = (a2 + 2);
        *v16 = v15;
        v17 = *(this + 6);
        v18 = &v17[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v22 = *v17++;
            v19 = v22;
            if (v22 >= 0x80)
            {
              do
              {
LABEL_21:
                *a2 = v19 | 0x80;
                a2 = (a2 + 1);
                v21 = v19 >> 7;
                v23 = v19 >> 14;
                v19 >>= 7;
              }

              while (v23);
              goto LABEL_18;
            }
          }

          else
          {
            v20 = *v17++;
            v19 = v20;
            if (v20 >= 0x80)
            {
              goto LABEL_21;
            }
          }

          LOBYTE(v21) = v19;
LABEL_18:
          *a2 = v21;
          a2 = (a2 + 1);
          if (v17 >= v18)
          {
            goto LABEL_23;
          }
        }
      }
    }

    do
    {
      *v16++ = v15 | 0x80;
      v30 = v15 >> 14;
      v15 >>= 7;
    }

    while (v30);
    a2 = (v16 - 1);
    goto LABEL_14;
  }

LABEL_23:
  v24 = *(this + 18);
  if (v24)
  {
    v25 = 0;
    v26 = (this + 64);
    do
    {
      if (*v26)
      {
        v27 = (*v26 + 8 * v25 + 7);
      }

      else
      {
        v27 = (this + 64);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(6, *v27, *(*v27 + 72), a2, a3, a6);
      ++v25;
    }

    while (v24 != v25);
  }

  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<1>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 8;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 8;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<2>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 16;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 16;
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

char *operations_research::sat::ReservoirConstraintProto::ByteSizeLong(operations_research::sat::ReservoirConstraintProto *this)
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
      v7 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v6);
      v3 += &v7[(352 - 9 * __clz(v7)) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
  *(this + 14) = v8;
  v9 = (-9 * __clz(v8) + 640) >> 6;
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 8);
  v12 = *(this + 18);
  v13 = (v8 + v3 + v10 + v12);
  if (v11)
  {
    v14 = (v11 + 7);
  }

  else
  {
    v14 = (this + 64);
  }

  if (v12)
  {
    v15 = 8 * v12;
    do
    {
      v16 = *v14++;
      v17 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v16);
      v13 = (v13 + v17 + ((352 - 9 * __clz(v17)) >> 6));
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 11);
  v19 = (v13 + ((-9 * __clz(v18) + 704) >> 6));
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v13;
  }

  v21 = *(this + 12);
  v22 = __clz(v21);
  if (v21)
  {
    v23 = (v20 + ((-9 * v22 + 704) >> 6));
  }

  else
  {
    v23 = v20;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v23, this + 26);
}

uint64_t operations_research::sat::CircuitConstraintProto::CircuitConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39A58;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
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

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
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

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = a2;
  v34 = *(a3 + 64);
  if (v34)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 64, 0, *(a3 + 64));
    *(a1 + 64) = v34;
    if (v34 >= 1)
    {
      v35 = *(a1 + 72);
      v36 = *(a3 + 72);
      if (v34 < 8)
      {
        goto LABEL_28;
      }

      if ((v35 - v36) < 0x20)
      {
        goto LABEL_28;
      }

      v37 = v34;
      v38 = v34 & 0x7FFFFFF8;
      LODWORD(v34) = v34 - (v34 & 0x7FFFFFF8);
      v39 = &v35[v38];
      v40 = &v36[v38];
      v41 = (v36 + 4);
      v42 = v35 + 4;
      v43 = v38;
      do
      {
        v44 = *v41;
        *(v42 - 1) = *(v41 - 1);
        *v42 = v44;
        v41 += 2;
        v42 += 2;
        v43 -= 8;
      }

      while (v43);
      v35 = v39;
      v36 = v40;
      if (v38 != v37)
      {
LABEL_28:
        v45 = v34 + 1;
        do
        {
          v46 = *v36++;
          *v35++ = v46;
          --v45;
        }

        while (v45 > 1);
      }
    }
  }

  *(a1 + 80) = 0;
  return a1;
}

void sub_23C992C70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 44) >= 1)
  {
    v3 = *(v1 + 48);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v6 = *(v1 + 24);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CircuitConstraintProto::~CircuitConstraintProto(operations_research::sat::CircuitConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 17) >= 1)
  {
    v4 = *(this + 9);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 11) >= 1)
  {
    v7 = *(this + 6);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 5) >= 1)
  {
    v10 = *(this + 3);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }
}

{
  operations_research::sat::CircuitConstraintProto::~CircuitConstraintProto(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::CircuitConstraintProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v53 = this;
      v54 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v54;
      this = v53;
      LODWORD(v4) = *(v53 + 16);
      v6 = *(v53 + 24);
      *(v53 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  v21 = (v20 + v19);
  if (*(this + 11) < v21)
  {
    v55 = this;
    v56 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 5, v20, v21);
    a2 = v56;
    this = v55;
    LODWORD(v20) = *(v55 + 10);
    v22 = v55[6];
    *(v55 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = this[6];
    *(this + 10) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = a2[6];
  v24 = (v22 + 4 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 4 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFF8;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFF8);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 4);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 8;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = *(a2 + 16);
  if (!v35)
  {
    goto LABEL_31;
  }

  v36 = *(this + 16);
  v37 = (v36 + v35);
  if (*(this + 17) < v37)
  {
    v57 = this;
    v58 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 8, v36, v37);
    a2 = v58;
    this = v57;
    LODWORD(v36) = *(v57 + 16);
    v38 = v57[9];
    *(v57 + 16) = v36 + v35;
    if (v35 < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v38 = this[9];
    *(this + 16) = v37;
    if (v35 < 1)
    {
      goto LABEL_31;
    }
  }

  v39 = a2[9];
  v40 = (v38 + 4 * v36);
  if (v35 < 8)
  {
    goto LABEL_29;
  }

  v41 = 4 * v36 + v38;
  if ((v41 - v39) < 0x20)
  {
    goto LABEL_29;
  }

  v42 = v35;
  v43 = v35 & 0x7FFFFFF8;
  LODWORD(v35) = v35 - (v35 & 0x7FFFFFF8);
  v40 += v43;
  v44 = &v39[v43];
  v45 = (v39 + 4);
  v46 = (v41 + 16);
  v47 = v43;
  do
  {
    v48 = *v45;
    *(v46 - 1) = *(v45 - 1);
    *v46 = v48;
    v45 += 2;
    v46 += 2;
    v47 -= 8;
  }

  while (v47);
  v39 = v44;
  if (v43 != v42)
  {
LABEL_29:
    v49 = v35 + 1;
    do
    {
      v50 = *v39++;
      *v40++ = v50;
      --v49;
    }

    while (v49 > 1);
  }

LABEL_31:
  v51 = a2[1];
  if (v51)
  {
    v52 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v52, ((v51 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::CircuitConstraintProto::Clear(operations_research::sat::CircuitConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::CircuitConstraintProto::_InternalSerialize(operations_research::sat::CircuitConstraintProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v42 = this;
      v43 = a3;
      v44 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v43;
      a2 = v44;
      this = v42;
      *a2 = 26;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 26;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v45 = v4 >> 14;
      v4 >>= 7;
    }

    while (v45);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= a2)
    {
      v46 = this;
      v47 = a3;
      v48 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v47;
      a2 = v48;
      this = v46;
      *a2 = 34;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 34;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        a2 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v23 = this;
            v24 = a3;
            v25 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v24;
            a2 = v25;
            this = v23;
            v26 = *v18++;
            v20 = v26;
            if (v26 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2++ = v20 | 0x80;
                v22 = v20 >> 7;
                v27 = v20 >> 14;
                v20 >>= 7;
              }

              while (v27);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *a2++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v49 = v16 >> 14;
      v16 >>= 7;
    }

    while (v49);
    a2 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v28 = *(this + 20);
  if (v28 >= 1)
  {
    if (*a3 <= a2)
    {
      v50 = this;
      v51 = a3;
      v52 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v51;
      a2 = v52;
      this = v50;
      *a2 = 42;
      v29 = a2 + 1;
      if (v28 < 0x80)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *a2 = 42;
      v29 = a2 + 1;
      if (v28 < 0x80)
      {
LABEL_28:
        a2 += 2;
        *v29 = v28;
        v30 = *(this + 9);
        v31 = &v30[*(this + 16)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v35 = this;
            v36 = a3;
            v37 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v36;
            a2 = v37;
            this = v35;
            v38 = *v30++;
            v32 = v38;
            if (v38 >= 0x80)
            {
              do
              {
LABEL_35:
                *a2++ = v32 | 0x80;
                v34 = v32 >> 7;
                v39 = v32 >> 14;
                v32 >>= 7;
              }

              while (v39);
              goto LABEL_32;
            }
          }

          else
          {
            v33 = *v30++;
            v32 = v33;
            if (v33 >= 0x80)
            {
              goto LABEL_35;
            }
          }

          LOBYTE(v34) = v32;
LABEL_32:
          *a2++ = v34;
          if (v30 >= v31)
          {
            goto LABEL_37;
          }
        }
      }
    }

    do
    {
      *v29++ = v28 | 0x80;
      v53 = v28 >> 14;
      v28 >>= 7;
    }

    while (v53);
    a2 = v29 - 1;
    goto LABEL_28;
  }

LABEL_37:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v40 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::CircuitConstraintProto::ByteSizeLong(operations_research::sat::CircuitConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  v3 = (-9 * __clz(v2) + 640) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
  *(this + 14) = v5;
  v6 = (640 - 9 * __clz(v5)) >> 6;
  if (v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::Int32Size(this + 16);
  *(this + 20) = v8;
  v9 = (640 - 9 * __clz(v8)) >> 6;
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v4 + v2 + v5 + v7 + v8 + v10), this + 21);
}

uint64_t operations_research::sat::RoutesConstraintProto::RoutesConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F394A8;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
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

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
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

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = a2;
  v34 = *(a3 + 64);
  if (v34)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 64, 0, *(a3 + 64));
    *(a1 + 64) = v34;
    if (v34 >= 1)
    {
      v35 = *(a1 + 72);
      v36 = *(a3 + 72);
      if (v34 < 8)
      {
        goto LABEL_28;
      }

      if ((v35 - v36) < 0x20)
      {
        goto LABEL_28;
      }

      v37 = v34;
      v38 = v34 & 0x7FFFFFF8;
      LODWORD(v34) = v34 - (v34 & 0x7FFFFFF8);
      v39 = &v35[v38];
      v40 = &v36[v38];
      v41 = (v36 + 4);
      v42 = v35 + 4;
      v43 = v38;
      do
      {
        v44 = *v41;
        *(v42 - 1) = *(v41 - 1);
        *v42 = v44;
        v41 += 2;
        v42 += 2;
        v43 -= 8;
      }

      while (v43);
      v35 = v39;
      v36 = v40;
      if (v38 != v37)
      {
LABEL_28:
        v45 = v34 + 1;
        do
        {
          v46 = *v36++;
          *v35++ = v46;
          --v45;
        }

        while (v45 > 1);
      }
    }
  }

  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = a2;
  v47 = *(a3 + 88);
  if (v47)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 88, 0, *(a3 + 88));
    *(a1 + 88) = v47;
    if (v47 >= 1)
    {
      v48 = *(a1 + 96);
      v49 = *(a3 + 96);
      if (v47 < 8)
      {
        goto LABEL_37;
      }

      if ((v48 - v49) < 0x20)
      {
        goto LABEL_37;
      }

      v50 = v47;
      v51 = v47 & 0x7FFFFFF8;
      LODWORD(v47) = v47 - (v47 & 0x7FFFFFF8);
      v52 = &v48[v51];
      v53 = &v49[v51];
      v54 = (v49 + 4);
      v55 = v48 + 4;
      v56 = v51;
      do
      {
        v57 = *v54;
        *(v55 - 1) = *(v54 - 1);
        *v55 = v57;
        v54 += 2;
        v55 += 2;
        v56 -= 8;
      }

      while (v56);
      v48 = v52;
      v49 = v53;
      if (v51 != v50)
      {
LABEL_37:
        v58 = v47 + 1;
        do
        {
          v59 = *v49++;
          *v48++ = v59;
          --v58;
        }

        while (v58 > 1);
      }
    }
  }

  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = *(a3 + 112);
  return a1;
}

void sub_23C993880(_Unwind_Exception *exception_object)
{
  if (*(v1 + 68) >= 1)
  {
    v3 = *(v1 + 72);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v6 = *(v1 + 48);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v9 = *(v1 + 24);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::RoutesConstraintProto::~RoutesConstraintProto(operations_research::sat::RoutesConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 23) >= 1)
  {
    v4 = *(this + 12);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 17) >= 1)
  {
    v7 = *(this + 9);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 11) >= 1)
  {
    v10 = *(this + 6);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(this + 5) >= 1)
  {
    v13 = *(this + 3);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }
}

{
  operations_research::sat::RoutesConstraintProto::~RoutesConstraintProto(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::RoutesConstraintProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v70 = this;
      v71 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v71;
      this = v70;
      LODWORD(v4) = *(v70 + 16);
      v6 = *(v70 + 24);
      *(v70 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  v21 = (v20 + v19);
  if (*(this + 11) < v21)
  {
    v72 = this;
    v73 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 5, v20, v21);
    a2 = v73;
    this = v72;
    LODWORD(v20) = *(v72 + 10);
    v22 = v72[6];
    *(v72 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = this[6];
    *(this + 10) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = a2[6];
  v24 = (v22 + 4 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 4 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFF8;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFF8);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 4);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 8;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = *(a2 + 16);
  if (!v35)
  {
    goto LABEL_31;
  }

  v36 = *(this + 16);
  v37 = (v36 + v35);
  if (*(this + 17) < v37)
  {
    v74 = this;
    v75 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 8, v36, v37);
    a2 = v75;
    this = v74;
    LODWORD(v36) = *(v74 + 16);
    v38 = v74[9];
    *(v74 + 16) = v36 + v35;
    if (v35 < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v38 = this[9];
    *(this + 16) = v37;
    if (v35 < 1)
    {
      goto LABEL_31;
    }
  }

  v39 = a2[9];
  v40 = (v38 + 4 * v36);
  if (v35 < 8)
  {
    goto LABEL_29;
  }

  v41 = 4 * v36 + v38;
  if ((v41 - v39) < 0x20)
  {
    goto LABEL_29;
  }

  v42 = v35;
  v43 = v35 & 0x7FFFFFF8;
  LODWORD(v35) = v35 - (v35 & 0x7FFFFFF8);
  v40 += v43;
  v44 = &v39[v43];
  v45 = (v39 + 4);
  v46 = (v41 + 16);
  v47 = v43;
  do
  {
    v48 = *v45;
    *(v46 - 1) = *(v45 - 1);
    *v46 = v48;
    v45 += 2;
    v46 += 2;
    v47 -= 8;
  }

  while (v47);
  v39 = v44;
  if (v43 != v42)
  {
LABEL_29:
    v49 = v35 + 1;
    do
    {
      v50 = *v39++;
      *v40++ = v50;
      --v49;
    }

    while (v49 > 1);
  }

LABEL_31:
  v51 = *(a2 + 22);
  if (!v51)
  {
    goto LABEL_41;
  }

  v52 = *(this + 22);
  v53 = (v52 + v51);
  if (*(this + 23) < v53)
  {
    v76 = this;
    v77 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 11, v52, v53);
    a2 = v77;
    this = v76;
    LODWORD(v52) = *(v76 + 22);
    v54 = v76[12];
    *(v76 + 22) = v52 + v51;
    if (v51 < 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v54 = this[12];
    *(this + 22) = v53;
    if (v51 < 1)
    {
      goto LABEL_41;
    }
  }

  v55 = a2[12];
  v56 = (v54 + 4 * v52);
  if (v51 < 8)
  {
    goto LABEL_39;
  }

  v57 = 4 * v52 + v54;
  if ((v57 - v55) < 0x20)
  {
    goto LABEL_39;
  }

  v58 = v51;
  v59 = v51 & 0x7FFFFFF8;
  LODWORD(v51) = v51 - (v51 & 0x7FFFFFF8);
  v56 += v59;
  v60 = &v55[v59];
  v61 = (v55 + 4);
  v62 = (v57 + 16);
  v63 = v59;
  do
  {
    v64 = *v61;
    *(v62 - 1) = *(v61 - 1);
    *v62 = v64;
    v61 += 2;
    v62 += 2;
    v63 -= 8;
  }

  while (v63);
  v55 = v60;
  if (v59 != v58)
  {
LABEL_39:
    v65 = v51 + 1;
    do
    {
      v66 = *v55++;
      *v56++ = v66;
      --v65;
    }

    while (v65 > 1);
  }

LABEL_41:
  v67 = a2[14];
  if (v67)
  {
    this[14] = v67;
  }

  v68 = a2[1];
  if (v68)
  {
    v69 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v69, ((v68 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::RoutesConstraintProto::Clear(operations_research::sat::RoutesConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  *(result + 20) = 0;
  *(result + 13) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::RoutesConstraintProto::_InternalSerialize(operations_research::sat::RoutesConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *v5 = 10;
      v8 = v5 + 1;
      if (v7 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v8 = a2 + 1;
      if (v7 < 0x80)
      {
LABEL_4:
        v5 += 2;
        *v8 = v7;
        v9 = *(this + 3);
        v10 = &v9[*(this + 4)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v14 = *v9++;
            v11 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *v5++ = v11 | 0x80;
                v13 = v11 >> 7;
                v15 = v11 >> 14;
                v11 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v12 = *v9++;
            v11 = v12;
            if (v12 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v13) = v11;
LABEL_8:
          *v5++ = v13;
          if (v9 >= v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v8++ = v7 | 0x80;
      v46 = v7 >> 14;
      v7 >>= 7;
    }

    while (v46);
    v5 = v8 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      *v5 = 18;
      v17 = v5 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 18;
      v17 = v5 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        v5 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v23 = *v18++;
            v20 = v23;
            if (v23 >= 0x80)
            {
              do
              {
LABEL_23:
                *v5++ = v20 | 0x80;
                v22 = v20 >> 7;
                v24 = v20 >> 14;
                v20 >>= 7;
              }

              while (v24);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *v5++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v47 = v16 >> 14;
      v16 >>= 7;
    }

    while (v47);
    v5 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v25 = *(this + 20);
  if (v25 >= 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      *v5 = 26;
      v26 = v5 + 1;
      if (v25 < 0x80)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v5 = 26;
      v26 = v5 + 1;
      if (v25 < 0x80)
      {
LABEL_28:
        v5 += 2;
        *v26 = v25;
        v27 = *(this + 9);
        v28 = &v27[*(this + 16)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v32 = *v27++;
            v29 = v32;
            if (v32 >= 0x80)
            {
              do
              {
LABEL_35:
                *v5++ = v29 | 0x80;
                v31 = v29 >> 7;
                v33 = v29 >> 14;
                v29 >>= 7;
              }

              while (v33);
              goto LABEL_32;
            }
          }

          else
          {
            v30 = *v27++;
            v29 = v30;
            if (v30 >= 0x80)
            {
              goto LABEL_35;
            }
          }

          LOBYTE(v31) = v29;
LABEL_32:
          *v5++ = v31;
          if (v27 >= v28)
          {
            goto LABEL_37;
          }
        }
      }
    }

    do
    {
      *v26++ = v25 | 0x80;
      v48 = v25 >> 14;
      v25 >>= 7;
    }

    while (v48);
    v5 = v26 - 1;
    goto LABEL_28;
  }

LABEL_37:
  v34 = *(this + 26);
  if (v34 >= 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      *v5 = 34;
      v35 = v5 + 1;
      if (v34 < 0x80)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *v5 = 34;
      v35 = v5 + 1;
      if (v34 < 0x80)
      {
LABEL_40:
        v5 += 2;
        *v35 = v34;
        v36 = *(this + 12);
        v37 = &v36[*(this + 22)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v41 = *v36++;
            v38 = v41;
            if (v41 >= 0x80)
            {
              do
              {
LABEL_47:
                *v5++ = v38 | 0x80;
                v40 = v38 >> 7;
                v42 = v38 >> 14;
                v38 >>= 7;
              }

              while (v42);
              goto LABEL_44;
            }
          }

          else
          {
            v39 = *v36++;
            v38 = v39;
            if (v39 >= 0x80)
            {
              goto LABEL_47;
            }
          }

          LOBYTE(v40) = v38;
LABEL_44:
          *v5++ = v40;
          if (v36 >= v37)
          {
            goto LABEL_49;
          }
        }
      }
    }

    do
    {
      *v35++ = v34 | 0x80;
      v49 = v34 >> 14;
      v34 >>= 7;
    }

    while (v49);
    v5 = v35 - 1;
    goto LABEL_40;
  }

LABEL_49:
  v43 = *(this + 14);
  if (v43)
  {
    v5 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<5>(a3, v43, v5);
  }

  v44 = *(this + 1);
  if ((v44 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v44 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

char *operations_research::sat::RoutesConstraintProto::ByteSizeLong(operations_research::sat::RoutesConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  v3 = (-9 * __clz(v2) + 640) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
  *(this + 14) = v5;
  v6 = (640 - 9 * __clz(v5)) >> 6;
  if (v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::Int32Size(this + 16);
  *(this + 20) = v8;
  v9 = (640 - 9 * __clz(v8)) >> 6;
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = google::protobuf::internal::WireFormatLite::Int32Size(this + 22);
  *(this + 26) = v11;
  v12 = (640 - 9 * __clz(v11)) >> 6;
  if (v11)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v4 + v2 + v5 + v7 + v8 + v10 + v11 + v13);
  v15 = *(this + 14);
  v16 = (v14 + ((-9 * __clz(v15) + 704) >> 6));
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v17, this + 30);
}

uint64_t operations_research::sat::TableConstraintProto::TableConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F393D8;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
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

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    v22 = *(a3 + 40);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0);
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v23 = *(a1 + 48);
      v24 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v23 - v24) < 0x20)
      {
        goto LABEL_19;
      }

      v25 = v21;
      v26 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v27 = &v23[v26];
      v28 = &v24[v26];
      v29 = (v24 + 2);
      v30 = v23 + 2;
      v31 = v26;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v23 = v27;
      v24 = v28;
      if (v26 != v25)
      {
LABEL_19:
        v33 = v21 + 1;
        do
        {
          v34 = *v24++;
          *v23++ = v34;
          --v33;
        }

        while (v33 > 1);
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 60) = *(a3 + 60);
  return a1;
}

void sub_23C994578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::TableConstraintProto::~TableConstraintProto(operations_research::sat::TableConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
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

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::TableConstraintProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v36 = this;
      v37 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v37;
      this = v36;
      LODWORD(v4) = *(v36 + 16);
      v6 = *(v36 + 24);
      *(v36 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 3);
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
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  if (*(this + 11) < v20 + v19)
  {
    v38 = this;
    v39 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v39;
    this = v38;
    LODWORD(v20) = *(v38 + 10);
    v21 = v38[6];
    *(v38 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = this[6];
    *(this + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a2 + 6);
  v23 = (v21 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v24 = 8 * v20 + v21;
  if ((v24 - v22) < 0x20)
  {
    goto LABEL_19;
  }

  v25 = v19;
  v26 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v23 += v26;
  v27 = &v22[v26];
  v28 = (v22 + 2);
  v29 = (v24 + 16);
  v30 = v26;
  do
  {
    v31 = *v28;
    *(v29 - 1) = *(v28 - 1);
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 4;
  }

  while (v30);
  v22 = v27;
  if (v26 != v25)
  {
LABEL_19:
    v32 = v19 + 1;
    do
    {
      v33 = *v22++;
      *v23++ = v33;
      --v32;
    }

    while (v32 > 1);
  }

LABEL_21:
  if (*(a2 + 60) == 1)
  {
    *(this + 60) = 1;
  }

  v34 = *(a2 + 1);
  if (v34)
  {
    v35 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v35, ((v34 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::TableConstraintProto::Clear(operations_research::sat::TableConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 52) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::TableConstraintProto::_InternalSerialize(operations_research::sat::TableConstraintProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v31 = this;
      v32 = a3;
      v33 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v32;
      a2 = v33;
      this = v31;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v34 = v4 >> 14;
      v4 >>= 7;
    }

    while (v34);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= a2)
    {
      v35 = this;
      v36 = a3;
      v37 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v36;
      a2 = v37;
      this = v35;
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        a2 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v23 = this;
            v24 = a3;
            v25 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v24;
            a2 = v25;
            this = v23;
            v26 = *v18++;
            v20 = v26;
            if (v26 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2++ = v20 | 0x80;
                v22 = v20 >> 7;
                v27 = v20 >> 14;
                v20 >>= 7;
              }

              while (v27);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *a2++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v38 = v16 >> 14;
      v16 >>= 7;
    }

    while (v38);
    a2 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v28 = *(this + 60);
  if (v28 == 1)
  {
    if (*a3 <= a2)
    {
      v39 = this;
      v40 = a3;
      v41 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v40;
      a2 = v41;
      this = v39;
      LOBYTE(v28) = *(v39 + 60);
    }

    *a2 = 24;
    a2[1] = v28;
    a2 += 2;
  }

  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::TableConstraintProto::ByteSizeLong(operations_research::sat::TableConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  v3 = v2;
  *(this + 8) = v2;
  if (v2)
  {
    v4 = ((640 - 9 * __clz(v2)) >> 6) + 1;
    v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
    *(this + 14) = v5;
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
    v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v4 + v3 + v5 + v6;
  if (*(this + 60))
  {
    v8 = (v7 + 2);
  }

  else
  {
    v8 = v7;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v8, this + 16);
}

uint64_t operations_research::sat::InverseConstraintProto::InverseConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39780;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
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

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 40, 0, *(a3 + 40));
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 48);
      v23 = *(a3 + 48);
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

  *(a1 + 56) = 0;
  return a1;
}

void sub_23C994E80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::InverseConstraintProto::~InverseConstraintProto(operations_research::sat::InverseConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
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

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::InverseConstraintProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v37 = this;
      v38 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v38;
      this = v37;
      LODWORD(v4) = *(v37 + 16);
      v6 = *(v37 + 24);
      *(v37 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  v21 = (v20 + v19);
  if (*(this + 11) < v21)
  {
    v39 = this;
    v40 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 5, v20, v21);
    a2 = v40;
    this = v39;
    LODWORD(v20) = *(v39 + 10);
    v22 = v39[6];
    *(v39 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = this[6];
    *(this + 10) = v21;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v23 = a2[6];
  v24 = (v22 + 4 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v25 = 4 * v20 + v22;
  if ((v25 - v23) < 0x20)
  {
    goto LABEL_19;
  }

  v26 = v19;
  v27 = v19 & 0x7FFFFFF8;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFF8);
  v24 += v27;
  v28 = &v23[v27];
  v29 = (v23 + 4);
  v30 = (v25 + 16);
  v31 = v27;
  do
  {
    v32 = *v29;
    *(v30 - 1) = *(v29 - 1);
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 8;
  }

  while (v31);
  v23 = v28;
  if (v27 != v26)
  {
LABEL_19:
    v33 = v19 + 1;
    do
    {
      v34 = *v23++;
      *v24++ = v34;
      --v33;
    }

    while (v33 > 1);
  }

LABEL_21:
  v35 = a2[1];
  if (v35)
  {
    v36 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v36, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::InverseConstraintProto::Clear(operations_research::sat::InverseConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::InverseConstraintProto::_InternalSerialize(operations_research::sat::InverseConstraintProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v30 = this;
      v31 = a3;
      v32 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v31;
      a2 = v32;
      this = v30;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v33 = v4 >> 14;
      v4 >>= 7;
    }

    while (v33);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= a2)
    {
      v34 = this;
      v35 = a3;
      v36 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v35;
      a2 = v36;
      this = v34;
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v17 = a2 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        a2 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v23 = this;
            v24 = a3;
            v25 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v24;
            a2 = v25;
            this = v23;
            v26 = *v18++;
            v20 = v26;
            if (v26 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2++ = v20 | 0x80;
                v22 = v20 >> 7;
                v27 = v20 >> 14;
                v20 >>= 7;
              }

              while (v27);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *a2++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v37 = v16 >> 14;
      v16 >>= 7;
    }

    while (v37);
    a2 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::InverseConstraintProto::ByteSizeLong(operations_research::sat::InverseConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  v3 = v2;
  *(this + 8) = v2;
  if (v2)
  {
    v4 = ((640 - 9 * __clz(v2)) >> 6) + 1;
    v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
    *(this + 14) = v5;
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
    v5 = google::protobuf::internal::WireFormatLite::Int32Size(this + 10);
    *(this + 14) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v4 + v3 + v5 + v6), this + 15);
}

uint64_t operations_research::sat::AutomatonConstraintProto::AutomatonConstraintProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39B28;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = *(a3 + 16);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 16, 0);
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v10 = *(a1 + 24);
      v11 = *(a3 + 24);
      if (v8 < 4)
      {
        goto LABEL_10;
      }

      if ((v10 - v11) < 0x20)
      {
        goto LABEL_10;
      }

      v12 = v8;
      v13 = v8 & 0x7FFFFFFC;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFFC);
      v14 = &v10[v13];
      v15 = &v11[v13];
      v16 = (v11 + 2);
      v17 = v10 + 2;
      v18 = v13;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      v10 = v14;
      v11 = v15;
      if (v13 != v12)
      {
LABEL_10:
        v20 = v8 + 1;
        do
        {
          v21 = *v11++;
          *v10++ = v21;
          --v20;
        }

        while (v20 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v22 = *(a3 + 40);
  if (v22)
  {
    v23 = *(a3 + 40);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0);
    *(a1 + 40) = v22;
    if (v22 >= 1)
    {
      v24 = *(a1 + 48);
      v25 = *(a3 + 48);
      if (v22 < 4)
      {
        goto LABEL_19;
      }

      if ((v24 - v25) < 0x20)
      {
        goto LABEL_19;
      }

      v26 = v22;
      v27 = v22 & 0x7FFFFFFC;
      LODWORD(v22) = v22 - (v22 & 0x7FFFFFFC);
      v28 = &v24[v27];
      v29 = &v25[v27];
      v30 = (v25 + 2);
      v31 = v24 + 2;
      v32 = v27;
      do
      {
        v33 = *v30;
        *(v31 - 1) = *(v30 - 1);
        *v31 = v33;
        v30 += 2;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      v24 = v28;
      v25 = v29;
      if (v27 != v26)
      {
LABEL_19:
        v34 = v22 + 1;
        do
        {
          v35 = *v25++;
          *v24++ = v35;
          --v34;
        }

        while (v34 > 1);
      }
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = a2;
  v36 = *(a3 + 64);
  if (v36)
  {
    v37 = *(a3 + 64);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 64, 0);
    *(a1 + 64) = v36;
    if (v36 >= 1)
    {
      v38 = *(a1 + 72);
      v39 = *(a3 + 72);
      if (v36 < 4)
      {
        goto LABEL_28;
      }

      if ((v38 - v39) < 0x20)
      {
        goto LABEL_28;
      }

      v40 = v36;
      v41 = v36 & 0x7FFFFFFC;
      LODWORD(v36) = v36 - (v36 & 0x7FFFFFFC);
      v42 = &v38[v41];
      v43 = &v39[v41];
      v44 = (v39 + 2);
      v45 = v38 + 2;
      v46 = v41;
      do
      {
        v47 = *v44;
        *(v45 - 1) = *(v44 - 1);
        *v45 = v47;
        v44 += 2;
        v45 += 2;
        v46 -= 4;
      }

      while (v46);
      v38 = v42;
      v39 = v43;
      if (v41 != v40)
      {
LABEL_28:
        v48 = v36 + 1;
        do
        {
          v49 = *v39++;
          *v38++ = v49;
          --v48;
        }

        while (v48 > 1);
      }
    }
  }

  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = a2;
  v50 = *(a3 + 88);
  if (v50)
  {
    v51 = *(a3 + 88);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 88, 0);
    *(a1 + 88) = v50;
    if (v50 >= 1)
    {
      v52 = *(a1 + 96);
      v53 = *(a3 + 96);
      if (v50 < 4)
      {
        goto LABEL_37;
      }

      if ((v52 - v53) < 0x20)
      {
        goto LABEL_37;
      }

      v54 = v50;
      v55 = v50 & 0x7FFFFFFC;
      LODWORD(v50) = v50 - (v50 & 0x7FFFFFFC);
      v56 = &v52[v55];
      v57 = &v53[v55];
      v58 = (v53 + 2);
      v59 = v52 + 2;
      v60 = v55;
      do
      {
        v61 = *v58;
        *(v59 - 1) = *(v58 - 1);
        *v59 = v61;
        v58 += 2;
        v59 += 2;
        v60 -= 4;
      }

      while (v60);
      v52 = v56;
      v53 = v57;
      if (v55 != v54)
      {
LABEL_37:
        v62 = v50 + 1;
        do
        {
          v63 = *v53++;
          *v52++ = v63;
          --v62;
        }

        while (v62 > 1);
      }
    }
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = a2;
  v64 = *(a3 + 112);
  if (v64)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 112, 0, *(a3 + 112));
    *(a1 + 112) = v64;
    if (v64 >= 1)
    {
      v65 = *(a1 + 120);
      v66 = *(a3 + 120);
      if (v64 < 8)
      {
        goto LABEL_46;
      }

      if ((v65 - v66) < 0x20)
      {
        goto LABEL_46;
      }

      v67 = v64;
      v68 = v64 & 0x7FFFFFF8;
      LODWORD(v64) = v64 - (v64 & 0x7FFFFFF8);
      v69 = &v65[v68];
      v70 = &v66[v68];
      v71 = (v66 + 4);
      v72 = v65 + 4;
      v73 = v68;
      do
      {
        v74 = *v71;
        *(v72 - 1) = *(v71 - 1);
        *v72 = v74;
        v71 += 2;
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      v65 = v69;
      v66 = v70;
      if (v68 != v67)
      {
LABEL_46:
        v75 = v64 + 1;
        do
        {
          v76 = *v66++;
          *v65++ = v76;
          --v75;
        }

        while (v75 > 1);
      }
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = *(a3 + 136);
  return a1;
}

void sub_23C99594C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 92) >= 1)
  {
    v3 = *(v1 + 96);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 68) >= 1)
  {
    v6 = *(v1 + 72);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v9 = *(v1 + 48);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v12 = *(v1 + 24);
    v14 = *(v12 - 8);
    v13 = (v12 - 8);
    if (!v14)
    {
      operator delete(v13);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AutomatonConstraintProto::~AutomatonConstraintProto(operations_research::sat::AutomatonConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 29) >= 1)
  {
    v4 = *(this + 15);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 23) >= 1)
  {
    v7 = *(this + 12);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 17) >= 1)
  {
    v10 = *(this + 9);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(this + 11) >= 1)
  {
    v13 = *(this + 6);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  if (*(this + 5) >= 1)
  {
    v16 = *(this + 3);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }
}

{
  operations_research::sat::AutomatonConstraintProto::~AutomatonConstraintProto(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::AutomatonConstraintProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    if (*(this + 5) < v4 + v3)
    {
      v82 = this;
      v83 = a2;
      google::protobuf::RepeatedField<long long>::Grow(this + 2, v4);
      a2 = v83;
      this = v82;
      LODWORD(v4) = *(v82 + 16);
      v5 = *(v82 + 24);
      *(v82 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = this[3];
      *(this + 4) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v6 = *(a2 + 3);
    v7 = (v5 + 8 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v8 = 8 * v4 + v5;
    if ((v8 - v6) < 0x20)
    {
      goto LABEL_9;
    }

    v9 = v3;
    v10 = v3 & 0x7FFFFFFC;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFFC);
    v7 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 2);
    v13 = (v8 + 16);
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    v6 = v11;
    if (v10 != v9)
    {
LABEL_9:
      v16 = v3 + 1;
      do
      {
        v17 = *v6++;
        *v7++ = v17;
        --v16;
      }

      while (v16 > 1);
    }
  }

LABEL_11:
  v18 = *(a2 + 10);
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = *(this + 10);
  if (*(this + 11) < v19 + v18)
  {
    v84 = this;
    v85 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v19);
    a2 = v85;
    this = v84;
    LODWORD(v19) = *(v84 + 10);
    v20 = v84[6];
    *(v84 + 10) = v19 + v18;
    if (v18 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = this[6];
    *(this + 10) = v19 + v18;
    if (v18 < 1)
    {
      goto LABEL_21;
    }
  }

  v21 = *(a2 + 6);
  v22 = (v20 + 8 * v19);
  if (v18 < 8)
  {
    goto LABEL_19;
  }

  v23 = 8 * v19 + v20;
  if ((v23 - v21) < 0x20)
  {
    goto LABEL_19;
  }

  v24 = v18;
  v25 = v18 & 0x7FFFFFFC;
  LODWORD(v18) = v18 - (v18 & 0x7FFFFFFC);
  v22 += v25;
  v26 = &v21[v25];
  v27 = (v21 + 2);
  v28 = (v23 + 16);
  v29 = v25;
  do
  {
    v30 = *v27;
    *(v28 - 1) = *(v27 - 1);
    *v28 = v30;
    v27 += 2;
    v28 += 2;
    v29 -= 4;
  }

  while (v29);
  v21 = v26;
  if (v25 != v24)
  {
LABEL_19:
    v31 = v18 + 1;
    do
    {
      v32 = *v21++;
      *v22++ = v32;
      --v31;
    }

    while (v31 > 1);
  }

LABEL_21:
  v33 = *(a2 + 16);
  if (!v33)
  {
    goto LABEL_31;
  }

  v34 = *(this + 16);
  if (*(this + 17) < v34 + v33)
  {
    v86 = this;
    v87 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 8, v34);
    a2 = v87;
    this = v86;
    LODWORD(v34) = *(v86 + 16);
    v35 = v86[9];
    *(v86 + 16) = v34 + v33;
    if (v33 < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v35 = this[9];
    *(this + 16) = v34 + v33;
    if (v33 < 1)
    {
      goto LABEL_31;
    }
  }

  v36 = *(a2 + 9);
  v37 = (v35 + 8 * v34);
  if (v33 < 8)
  {
    goto LABEL_29;
  }

  v38 = 8 * v34 + v35;
  if ((v38 - v36) < 0x20)
  {
    goto LABEL_29;
  }

  v39 = v33;
  v40 = v33 & 0x7FFFFFFC;
  LODWORD(v33) = v33 - (v33 & 0x7FFFFFFC);
  v37 += v40;
  v41 = &v36[v40];
  v42 = (v36 + 2);
  v43 = (v38 + 16);
  v44 = v40;
  do
  {
    v45 = *v42;
    *(v43 - 1) = *(v42 - 1);
    *v43 = v45;
    v42 += 2;
    v43 += 2;
    v44 -= 4;
  }

  while (v44);
  v36 = v41;
  if (v40 != v39)
  {
LABEL_29:
    v46 = v33 + 1;
    do
    {
      v47 = *v36++;
      *v37++ = v47;
      --v46;
    }

    while (v46 > 1);
  }

LABEL_31:
  v48 = *(a2 + 22);
  if (!v48)
  {
    goto LABEL_41;
  }

  v49 = *(this + 22);
  if (*(this + 23) < v49 + v48)
  {
    v88 = this;
    v89 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 11, v49);
    a2 = v89;
    this = v88;
    LODWORD(v49) = *(v88 + 22);
    v50 = v88[12];
    *(v88 + 22) = v49 + v48;
    if (v48 < 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v50 = this[12];
    *(this + 22) = v49 + v48;
    if (v48 < 1)
    {
      goto LABEL_41;
    }
  }

  v51 = *(a2 + 12);
  v52 = (v50 + 8 * v49);
  if (v48 < 8)
  {
    goto LABEL_39;
  }

  v53 = 8 * v49 + v50;
  if ((v53 - v51) < 0x20)
  {
    goto LABEL_39;
  }

  v54 = v48;
  v55 = v48 & 0x7FFFFFFC;
  LODWORD(v48) = v48 - (v48 & 0x7FFFFFFC);
  v52 += v55;
  v56 = &v51[v55];
  v57 = (v51 + 2);
  v58 = (v53 + 16);
  v59 = v55;
  do
  {
    v60 = *v57;
    *(v58 - 1) = *(v57 - 1);
    *v58 = v60;
    v57 += 2;
    v58 += 2;
    v59 -= 4;
  }

  while (v59);
  v51 = v56;
  if (v55 != v54)
  {
LABEL_39:
    v61 = v48 + 1;
    do
    {
      v62 = *v51++;
      *v52++ = v62;
      --v61;
    }

    while (v61 > 1);
  }

LABEL_41:
  v63 = *(a2 + 28);
  if (!v63)
  {
    goto LABEL_51;
  }

  v64 = *(this + 28);
  v65 = (v64 + v63);
  if (*(this + 29) < v65)
  {
    v90 = this;
    v91 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 14, v64, v65);
    a2 = v91;
    this = v90;
    LODWORD(v64) = *(v90 + 28);
    v66 = v90[15];
    *(v90 + 28) = v64 + v63;
    if (v63 < 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v66 = this[15];
    *(this + 28) = v65;
    if (v63 < 1)
    {
      goto LABEL_51;
    }
  }

  v67 = *(a2 + 15);
  v68 = (v66 + 4 * v64);
  if (v63 < 8)
  {
    goto LABEL_49;
  }

  v69 = 4 * v64 + v66;
  if ((v69 - v67) < 0x20)
  {
    goto LABEL_49;
  }

  v70 = v63;
  v71 = v63 & 0x7FFFFFF8;
  LODWORD(v63) = v63 - (v63 & 0x7FFFFFF8);
  v68 += v71;
  v72 = &v67[v71];
  v73 = (v67 + 4);
  v74 = (v69 + 16);
  v75 = v71;
  do
  {
    v76 = *v73;
    *(v74 - 1) = *(v73 - 1);
    *v74 = v76;
    v73 += 2;
    v74 += 2;
    v75 -= 8;
  }

  while (v75);
  v67 = v72;
  if (v71 != v70)
  {
LABEL_49:
    v77 = v63 + 1;
    do
    {
      v78 = *v67++;
      *v68++ = v78;
      --v77;
    }

    while (v77 > 1);
  }

LABEL_51:
  v79 = *(a2 + 17);
  if (v79)
  {
    this[17] = v79;
  }

  v80 = *(a2 + 1);
  if (v80)
  {
    v81 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v81, ((v80 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::AutomatonConstraintProto::Clear(operations_research::sat::AutomatonConstraintProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  *(result + 20) = 0;
  *(result + 26) = 0;
  *(result + 16) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::AutomatonConstraintProto::_InternalSerialize(operations_research::sat::AutomatonConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 17);
  if (v7)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<2>(a3, v7, a2);
  }

  v8 = *(this + 8);
  if (v8 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 26;
      v9 = a2 + 1;
      if (v8 < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *a2 = 26;
      v9 = a2 + 1;
      if (v8 < 0x80)
      {
LABEL_6:
        a2 = (a2 + 2);
        *v9 = v8;
        v10 = *(this + 3);
        v11 = &v10[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v15 = *v10++;
            v12 = v15;
            if (v15 >= 0x80)
            {
              do
              {
LABEL_13:
                *a2 = v12 | 0x80;
                a2 = (a2 + 1);
                v14 = v12 >> 7;
                v16 = v12 >> 14;
                v12 >>= 7;
              }

              while (v16);
              goto LABEL_10;
            }
          }

          else
          {
            v13 = *v10++;
            v12 = v13;
            if (v13 >= 0x80)
            {
              goto LABEL_13;
            }
          }

          LOBYTE(v14) = v12;
LABEL_10:
          *a2 = v14;
          a2 = (a2 + 1);
          if (v10 >= v11)
          {
            goto LABEL_15;
          }
        }
      }
    }

    do
    {
      *v9++ = v8 | 0x80;
      v55 = v8 >> 14;
      v8 >>= 7;
    }

    while (v55);
    a2 = (v9 - 1);
    goto LABEL_6;
  }

LABEL_15:
  v17 = *(this + 14);
  if (v17 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 34;
      v18 = a2 + 1;
      if (v17 < 0x80)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *a2 = 34;
      v18 = a2 + 1;
      if (v17 < 0x80)
      {
LABEL_18:
        a2 = (a2 + 2);
        *v18 = v17;
        v19 = *(this + 6);
        v20 = &v19[*(this + 10)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v24 = *v19++;
            v21 = v24;
            if (v24 >= 0x80)
            {
              do
              {
LABEL_25:
                *a2 = v21 | 0x80;
                a2 = (a2 + 1);
                v23 = v21 >> 7;
                v25 = v21 >> 14;
                v21 >>= 7;
              }

              while (v25);
              goto LABEL_22;
            }
          }

          else
          {
            v22 = *v19++;
            v21 = v22;
            if (v22 >= 0x80)
            {
              goto LABEL_25;
            }
          }

          LOBYTE(v23) = v21;
LABEL_22:
          *a2 = v23;
          a2 = (a2 + 1);
          if (v19 >= v20)
          {
            goto LABEL_27;
          }
        }
      }
    }

    do
    {
      *v18++ = v17 | 0x80;
      v56 = v17 >> 14;
      v17 >>= 7;
    }

    while (v56);
    a2 = (v18 - 1);
    goto LABEL_18;
  }

LABEL_27:
  v26 = *(this + 20);
  if (v26 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 42;
      v27 = a2 + 1;
      if (v26 < 0x80)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *a2 = 42;
      v27 = a2 + 1;
      if (v26 < 0x80)
      {
LABEL_30:
        a2 = (a2 + 2);
        *v27 = v26;
        v28 = *(this + 9);
        v29 = &v28[*(this + 16)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v33 = *v28++;
            v30 = v33;
            if (v33 >= 0x80)
            {
              do
              {
LABEL_37:
                *a2 = v30 | 0x80;
                a2 = (a2 + 1);
                v32 = v30 >> 7;
                v34 = v30 >> 14;
                v30 >>= 7;
              }

              while (v34);
              goto LABEL_34;
            }
          }

          else
          {
            v31 = *v28++;
            v30 = v31;
            if (v31 >= 0x80)
            {
              goto LABEL_37;
            }
          }

          LOBYTE(v32) = v30;
LABEL_34:
          *a2 = v32;
          a2 = (a2 + 1);
          if (v28 >= v29)
          {
            goto LABEL_39;
          }
        }
      }
    }

    do
    {
      *v27++ = v26 | 0x80;
      v57 = v26 >> 14;
      v26 >>= 7;
    }

    while (v57);
    a2 = (v27 - 1);
    goto LABEL_30;
  }

LABEL_39:
  v35 = *(this + 26);
  if (v35 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 50;
      v36 = a2 + 1;
      if (v35 < 0x80)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *a2 = 50;
      v36 = a2 + 1;
      if (v35 < 0x80)
      {
LABEL_42:
        a2 = (a2 + 2);
        *v36 = v35;
        v37 = *(this + 12);
        v38 = &v37[*(this + 22)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v42 = *v37++;
            v39 = v42;
            if (v42 >= 0x80)
            {
              do
              {
LABEL_49:
                *a2 = v39 | 0x80;
                a2 = (a2 + 1);
                v41 = v39 >> 7;
                v43 = v39 >> 14;
                v39 >>= 7;
              }

              while (v43);
              goto LABEL_46;
            }
          }

          else
          {
            v40 = *v37++;
            v39 = v40;
            if (v40 >= 0x80)
            {
              goto LABEL_49;
            }
          }

          LOBYTE(v41) = v39;
LABEL_46:
          *a2 = v41;
          a2 = (a2 + 1);
          if (v37 >= v38)
          {
            goto LABEL_51;
          }
        }
      }
    }

    do
    {
      *v36++ = v35 | 0x80;
      v58 = v35 >> 14;
      v35 >>= 7;
    }

    while (v58);
    a2 = (v36 - 1);
    goto LABEL_42;
  }

LABEL_51:
  v44 = *(this + 32);
  if (v44 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 58;
      v45 = a2 + 1;
      if (v44 < 0x80)
      {
        goto LABEL_54;
      }
    }

    else
    {
      *a2 = 58;
      v45 = a2 + 1;
      if (v44 < 0x80)
      {
LABEL_54:
        a2 = (a2 + 2);
        *v45 = v44;
        v46 = *(this + 15);
        v47 = &v46[*(this + 28)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v51 = *v46++;
            v48 = v51;
            if (v51 >= 0x80)
            {
              do
              {
LABEL_61:
                *a2 = v48 | 0x80;
                a2 = (a2 + 1);
                v50 = v48 >> 7;
                v52 = v48 >> 14;
                v48 >>= 7;
              }

              while (v52);
              goto LABEL_58;
            }
          }

          else
          {
            v49 = *v46++;
            v48 = v49;
            if (v49 >= 0x80)
            {
              goto LABEL_61;
            }
          }

          LOBYTE(v50) = v48;
LABEL_58:
          *a2 = v50;
          a2 = (a2 + 1);
          if (v46 >= v47)
          {
            goto LABEL_63;
          }
        }
      }
    }

    do
    {
      *v45++ = v44 | 0x80;
      v59 = v44 >> 14;
      v44 >>= 7;
    }

    while (v59);
    a2 = (v45 - 1);
    goto LABEL_54;
  }

LABEL_63:
  v53 = *(this + 1);
  if ((v53 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v53 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::AutomatonConstraintProto::ByteSizeLong(operations_research::sat::AutomatonConstraintProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int64Size(this + 4);
  *(this + 8) = v2;
  v3 = (-9 * __clz(v2) + 640) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v22 = v4;
  v5 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
  *(this + 14) = v5;
  v6 = (640 - 9 * __clz(v5)) >> 6;
  if (v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::Int64Size(this + 16);
  *(this + 20) = v8;
  v9 = (640 - 9 * __clz(v8)) >> 6;
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = google::protobuf::internal::WireFormatLite::Int64Size(this + 22);
  *(this + 26) = v11;
  v12 = (640 - 9 * __clz(v11)) >> 6;
  if (v11)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = google::protobuf::internal::WireFormatLite::Int32Size(this + 28);
  *(this + 32) = v14;
  v15 = (640 - 9 * __clz(v14)) >> 6;
  if (v14)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = (v22 + v2 + v5 + v7 + v8 + v10 + v11 + v13 + v14 + v16);
  v18 = *(this + 17);
  v19 = (v17 + ((-9 * __clz(v18) + 704) >> 6));
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v20, this + 36);
}

void operations_research::sat::ListOfVariablesProto::~ListOfVariablesProto(operations_research::sat::ListOfVariablesProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
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

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::ListOfVariablesProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 16);
      v6 = *(v21 + 24);
      *(v21 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
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
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::ListOfVariablesProto::Clear(operations_research::sat::ListOfVariablesProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::ListOfVariablesProto::_InternalSerialize(operations_research::sat::ListOfVariablesProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v18 = this;
      v19 = a3;
      v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v19;
      a2 = v20;
      this = v18;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v21 = v4 >> 14;
      v4 >>= 7;
    }

    while (v21);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::ListOfVariablesProto::ByteSizeLong(operations_research::sat::ListOfVariablesProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  if (v2)
  {
    v3 = ((640 - 9 * __clz(v2)) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v3 + v2), this + 9);
}

uint64_t operations_research::sat::ConstraintProto::clear_constraint(uint64_t this)
{
  switch(*(this + 60))
  {
    case 3:
    case 4:
    case 5:
    case 0x1A:
    case 0x1D:
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v1)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::BoolArgumentProto::~BoolArgumentProto(*(this + 48));
      goto LABEL_98;
    case 7:
    case 8:
    case 0xB:
    case 0x1B:
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v3)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::LinearArgumentProto::~LinearArgumentProto(*(this + 48));
      goto LABEL_98;
    case 0xC:
      v10 = *(this + 8);
      if (v10)
      {
        if (*(v10 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v10)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::LinearConstraintProto::~LinearConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0xD:
      v11 = *(this + 8);
      if (v11)
      {
        if (*(v11 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v11)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::AllDifferentConstraintProto::~AllDifferentConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0xE:
      v15 = *(this + 8);
      if (v15)
      {
        if (*(v15 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v15)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::ElementConstraintProto::~ElementConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0xF:
      v14 = *(this + 8);
      if (v14)
      {
        if (*(v14 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v14)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::CircuitConstraintProto::~CircuitConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x10:
      v6 = *(this + 8);
      if (v6)
      {
        if (*(v6 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v6)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::TableConstraintProto::~TableConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x11:
      v9 = *(this + 8);
      if (v9)
      {
        if (*(v9 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v9)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::AutomatonConstraintProto::~AutomatonConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x12:
      v8 = *(this + 8);
      if (v8)
      {
        if (*(v8 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v8)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::InverseConstraintProto::~InverseConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x13:
      v5 = *(this + 8);
      if (v5)
      {
        if (*(v5 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v5)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::IntervalConstraintProto::~IntervalConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x14:
      v12 = *(this + 8);
      if (v12)
      {
        if (*(v12 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v12)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::NoOverlapConstraintProto::~NoOverlapConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x15:
      v13 = *(this + 8);
      if (v13)
      {
        if (*(v13 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v13)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::NoOverlap2DConstraintProto::~NoOverlap2DConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x16:
      v17 = *(this + 8);
      if (v17)
      {
        if (*(v17 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v17)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::CumulativeConstraintProto::~CumulativeConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x17:
      v16 = *(this + 8);
      if (v16)
      {
        if (*(v16 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v16)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::RoutesConstraintProto::~RoutesConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x18:
      v4 = *(this + 8);
      if (v4)
      {
        if (*(v4 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v4)
      {
        goto LABEL_64;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::ReservoirConstraintProto::~ReservoirConstraintProto(*(this + 48));
      goto LABEL_98;
    case 0x1E:
      v7 = *(this + 8);
      if (v7)
      {
        if (*(v7 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_64;
        }
      }

      else if (v7)
      {
LABEL_64:
        *(this + 60) = 0;
        return this;
      }

      if (!*(this + 48))
      {
        goto LABEL_64;
      }

      v2 = this;
      operations_research::sat::ListOfVariablesProto::~ListOfVariablesProto(*(this + 48));
LABEL_98:
      this = MEMORY[0x23EED9460]();
      *(v2 + 60) = 0;
      return this;
    default:
      goto LABEL_64;
  }
}