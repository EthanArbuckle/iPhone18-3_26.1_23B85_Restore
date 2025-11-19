google::protobuf::UnknownFieldSet *operations_research::MPModelProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(v1 + 56) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 48));
  }

  if (*(v1 + 80) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 72));
  }

  if (*(v1 + 104) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 96));
  }

  v2 = *(v1 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v5 = *(v1 + 120) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  this = operations_research::PartialVariableAssignment::Clear(*(v1 + 128));
  if ((v2 & 4) != 0)
  {
LABEL_13:
    this = operations_research::MPQuadraticObjective::Clear(*(v1 + 136));
  }

LABEL_14:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 152) = 0;
    *(v1 + 144) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::MPModelProto::_InternalSerialize(operations_research::MPModelProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 152);
    *v7 = 8;
    v7[1] = v11;
    v7 += 2;
    if ((v9 & 8) == 0)
    {
LABEL_3:
      v10 = *(this + 8);
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v12 = *(this + 18);
  *v7 = 17;
  *(v7 + 1) = v12;
  v7 += 9;
  v10 = *(this + 8);
  if (v10)
  {
LABEL_11:
    v13 = 0;
    v14 = (this + 24);
    do
    {
      if (*v14)
      {
        v15 = (*v14 + 8 * v13 + 7);
      }

      else
      {
        v15 = (this + 24);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *v15, *(*v15 + 20), v7, a3, a6);
      ++v13;
    }

    while (v10 != v13);
  }

LABEL_16:
  v16 = *(this + 14);
  if (v16)
  {
    v17 = 0;
    v18 = (this + 48);
    do
    {
      if (*v18)
      {
        v19 = (*v18 + 8 * v17 + 7);
      }

      else
      {
        v19 = (this + 48);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *v19, *(*v19 + 20), v7, a3, a6);
      ++v17;
    }

    while (v16 != v17);
  }

  if (v9)
  {
    v21 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *(v21 + 23);
    if (v22 < 0 && (v22 = *(v21 + 8), v22 > 127) || *a3 - v7 + 14 < v22)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 5, v21, v7);
      if ((v9 & 2) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v7 = 42;
      v23 = v7 + 2;
      v7[1] = v22;
      if (*(v21 + 23) >= 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = *v21;
      }

      memcpy(v7 + 2, v24, v22);
      v7 = &v23[v22];
      if ((v9 & 2) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_24:
    v20 = *(this + 20);
    if (!v20)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_33:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(6, *(this + 16), *(*(this + 16) + 56), v7, a3, a6);
  v20 = *(this + 20);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_34:
  v25 = 0;
  v26 = (this + 72);
  do
  {
    if (*v26)
    {
      v27 = (*v26 + 8 * v25 + 7);
    }

    else
    {
      v27 = (this + 72);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(7, *v27, *(*v27 + 20), v7, a3, a6);
    ++v25;
  }

  while (v20 != v25);
LABEL_39:
  if ((v9 & 4) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *(this + 17), *(*(this + 17) + 64), v7, a3, a6);
  }

  v28 = *(this + 26);
  if (v28)
  {
    v29 = 0;
    v30 = (this + 96);
    do
    {
      if (*v30)
      {
        v31 = (*v30 + 8 * v29 + 7);
      }

      else
      {
        v31 = (this + 96);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(9, *v31, *(*v31 + 20), v7, a3, a6);
      ++v29;
    }

    while (v28 != v29);
  }

  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v32 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::MPModelProto::ByteSizeLong(operations_research::MPModelProto *this)
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
      v9 = *v4;
      v10 = *(*v4 + 16);
      if ((v10 & 0x3F) != 0)
      {
        if (v10)
        {
          v12 = *(v9 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          v13 = *(v12 + 23);
          v14 = *(v12 + 8);
          if ((v13 & 0x80u) == 0)
          {
            v14 = v13;
          }

          v11 = v14 + ((352 - 9 * __clz(v14)) >> 6) + 1;
        }

        else
        {
          v11 = 0;
        }

        if ((v10 & 2) != 0)
        {
          v11 += 9;
        }

        v6 = v11 + ((v10 >> 1) & 2);
        if ((v10 & 8) != 0)
        {
          v6 += (704 - 9 * __clz(*(v9 + 44))) >> 6;
        }

        if ((v10 & 0x10) != 0)
        {
          v6 += 9;
        }

        if ((v10 & 0x20) != 0)
        {
          v7 = (v6 + 9);
        }

        else
        {
          v7 = v6;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v9, v7, (v9 + 20));
      v3 += &v8[(352 - 9 * __clz(v8)) >> 6];
      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v15 = *(this + 6);
  v16 = *(this + 14);
  v17 = v3 + v16;
  if (v15)
  {
    v18 = (v15 + 7);
  }

  else
  {
    v18 = (this + 48);
  }

  if (v16)
  {
    v19 = 8 * v16;
    do
    {
      v20 = *v18++;
      v21 = operations_research::MPConstraintProto::ByteSizeLong(v20);
      v17 += &v21[(352 - 9 * __clz(v21)) >> 6];
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 9);
  v23 = *(this + 20);
  v24 = v17 + v23;
  if (v22)
  {
    v25 = (v22 + 7);
  }

  else
  {
    v25 = (this + 72);
  }

  if (v23)
  {
    v26 = 8 * v23;
    do
    {
      v27 = *v25++;
      v28 = operations_research::MPGeneralConstraintProto::ByteSizeLong(v27);
      v24 += &v28[(352 - 9 * __clz(v28)) >> 6];
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 12);
  v30 = *(this + 26);
  v31 = (v24 + v30);
  if (v29)
  {
    v32 = (v29 + 7);
  }

  else
  {
    v32 = (this + 96);
  }

  if (v30)
  {
    v33 = 8 * v30;
    do
    {
      v34 = *v32++;
      v35 = operations_research::MPModelProto_Annotation::ByteSizeLong(v34);
      v31 = (v31 + v35 + ((352 - 9 * __clz(v35)) >> 6));
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 4);
  if ((v36 & 0x1F) != 0)
  {
    if (v36)
    {
      v44 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
      v45 = *(v44 + 23);
      v46 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v46 = v45;
      }

      v31 = (v31 + v46 + ((352 - 9 * __clz(v46)) >> 6) + 1);
      if ((v36 & 2) == 0)
      {
LABEL_45:
        if ((v36 & 4) == 0)
        {
LABEL_47:
          v42 = (v31 + 9);
          if ((v36 & 8) == 0)
          {
            v42 = v31;
          }

          v31 = (v42 + ((v36 >> 3) & 2));
          goto LABEL_50;
        }

LABEL_46:
        v37 = *(this + 17);
        v38 = google::protobuf::internal::WireFormatLite::Int32Size(v37 + 4);
        v39 = v37[4];
        v40 = google::protobuf::internal::WireFormatLite::Int32Size(v37 + 8);
        v41 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v37, (v38 + v40 + v39 + v37[8] + 9 * v37[12]), v37 + 16);
        v31 = &v41[v31 + 1 + ((352 - 9 * __clz(v41)) >> 6)];
        goto LABEL_47;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_45;
    }

    v47 = *(this + 16);
    v48 = google::protobuf::internal::WireFormatLite::Int32Size(v47 + 4);
    v47[8] = v48;
    v49 = (-9 * __clz(v48) + 640) >> 6;
    if (v48)
    {
      v50 = v49 + 1;
    }

    else
    {
      v50 = 0;
    }

    v51 = v47[10];
    v52 = __clz(8 * v51);
    if (v51)
    {
      v53 = ((-9 * v52 + 640) >> 6) + 1;
    }

    else
    {
      v53 = 0;
    }

    v54 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v47, (v50 + v48 + 8 * v51 + v53), v47 + 14);
    v31 = &v54[v31 + 1 + ((352 - 9 * __clz(v54)) >> 6)];
    if ((v36 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_50:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v31, this + 5);
}

void operations_research::OptionalDouble::~OptionalDouble(operations_research::OptionalDouble *this)
{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }
}

{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::OptionalDouble::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    this[3] = *(a2 + 3);
  }

  *(this + 4) |= v3;
  v4 = *(a2 + 1);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::OptionalDouble::Clear(operations_research::OptionalDouble *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::OptionalDouble::_InternalSerialize(operations_research::OptionalDouble *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      v8 = a3;
      v9 = this;
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v8;
      this = v9;
    }

    v5 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v5;
    a2 += 9;
    v4 = vars8;
  }

  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::OptionalDouble::ByteSizeLong(operations_research::OptionalDouble *this)
{
  if (*(this + 4))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v1, this + 5);
}

uint64_t operations_research::MPSolverCommonParameters::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    this = MEMORY[0x23EED9460](v2, 0x1081C40ABB4582ELL);
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    if (*(v3 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v3 + 8));
    }

    this = MEMORY[0x23EED9460](v3, 0x1081C40ABB4582ELL);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v4 + 8));
    }

    JUMPOUT(0x23EED9460);
  }

  return this;
}

void operations_research::MPSolverCommonParameters::~MPSolverCommonParameters(operations_research::MPSolverCommonParameters *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::MPSolverCommonParameters::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::MPSolverCommonParameters::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::MPSolverCommonParameters::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = (this + 1);
  v6 = this[1];
  if ((v6 & 1) == 0)
  {
    v7 = *(a2 + 4);
    if ((v7 & 0x3F) == 0)
    {
      goto LABEL_32;
    }

LABEL_3:
    if (v7)
    {
      v8 = this[3];
      v9 = *(a2 + 3);
      if (!v8)
      {
        this = google::protobuf::Arena::CopyConstruct<operations_research::OptionalDouble>(v6, v9);
        v4[3] = this;
        if ((v7 & 2) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v10 = *(v9 + 16);
      if (v10)
      {
        *(v8 + 24) = *(v9 + 24);
      }

      *(v8 + 16) |= v10;
      v11 = *(v9 + 8);
      if (v11)
      {
        this = google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v8 + 8), ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }
    }

    if ((v7 & 2) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v12 = v4[4];
    v13 = *(a2 + 4);
    if (v12)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        *(v12 + 24) = *(v13 + 24);
      }

      *(v12 + 16) |= v14;
      v15 = *(v13 + 8);
      if (v15)
      {
        this = google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v12 + 8), ((v15 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }
    }

    else
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::OptionalDouble>(v6, v13);
      v4[4] = this;
    }

LABEL_18:
    if ((v7 & 4) != 0)
    {
      v16 = v4[5];
      v17 = *(a2 + 5);
      if (!v16)
      {
        this = google::protobuf::Arena::CopyConstruct<operations_research::OptionalDouble>(v6, v17);
        v4[5] = this;
        if ((v7 & 8) == 0)
        {
LABEL_25:
          if ((v7 & 0x10) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_30;
        }

LABEL_29:
        *(v4 + 12) = *(a2 + 12);
        if ((v7 & 0x10) == 0)
        {
LABEL_26:
          if ((v7 & 0x20) == 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          *(v4 + 14) = *(a2 + 14);
          goto LABEL_32;
        }

LABEL_30:
        *(v4 + 13) = *(a2 + 13);
        if ((v7 & 0x20) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v18 = *(v17 + 16);
      if (v18)
      {
        *(v16 + 24) = *(v17 + 24);
      }

      *(v16 + 16) |= v18;
      v19 = *(v17 + 8);
      if (v19)
      {
        this = google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v16 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }
    }

    if ((v7 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  v7 = *(a2 + 4);
  if ((v7 & 0x3F) != 0)
  {
    goto LABEL_3;
  }

LABEL_32:
  *(v4 + 4) |= v7;
  v20 = *(a2 + 1);
  if (v20)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::MPSolverCommonParameters::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = operations_research::OptionalDouble::Clear(*(this + 3));
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

    this = operations_research::OptionalDouble::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = operations_research::OptionalDouble::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::MPSolverCommonParameters::_InternalSerialize(operations_research::MPSolverCommonParameters *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *(this + 3), *(*(this + 3) + 20), a2, a3, a6);
    if ((v9 & 2) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *(this + 4), *(*(this + 4) + 20), v7, a3, a6);
  if ((v9 & 4) == 0)
  {
LABEL_4:
    if ((v9 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *(this + 5), *(*(this + 5) + 20), v7, a3, a6);
  if ((v9 & 8) == 0)
  {
LABEL_5:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_12:
  if (*a3 <= v7)
  {
    v21 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v12 = *(this + 12);
    *v21 = 32;
    v13 = v21 + 1;
    if (v12 < 0x80)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *(this + 12);
    *v7 = 32;
    v13 = v7 + 1;
    if (v12 < 0x80)
    {
LABEL_14:
      LOBYTE(v14) = v12;
      goto LABEL_15;
    }
  }

  do
  {
    *v13++ = v12 | 0x80;
    v14 = v12 >> 7;
    v22 = v12 >> 14;
    v12 >>= 7;
  }

  while (v22);
LABEL_15:
  *v13 = v14;
  v7 = v13 + 1;
  if ((v9 & 0x10) == 0)
  {
LABEL_6:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (*a3 <= v7)
    {
      v25 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v18 = *(this + 14);
      *v25 = 56;
      v19 = v25 + 1;
      if (v18 < 0x80)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *(this + 14);
      *v7 = 56;
      v19 = v7 + 1;
      if (v18 < 0x80)
      {
LABEL_22:
        LOBYTE(v20) = v18;
        goto LABEL_23;
      }
    }

    do
    {
      *v19++ = v18 | 0x80;
      v20 = v18 >> 7;
      v26 = v18 >> 14;
      v18 >>= 7;
    }

    while (v26);
LABEL_23:
    *v19 = v20;
    v7 = v19 + 1;
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (*a3 <= v7)
  {
    v23 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v15 = *(this + 13);
    *v23 = 40;
    v16 = v23 + 1;
    if (v15 < 0x80)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = *(this + 13);
    *v7 = 40;
    v16 = v7 + 1;
    if (v15 < 0x80)
    {
LABEL_18:
      LOBYTE(v17) = v15;
      goto LABEL_19;
    }
  }

  do
  {
    *v16++ = v15 | 0x80;
    v17 = v15 >> 7;
    v24 = v15 >> 14;
    v15 >>= 7;
  }

  while (v24);
LABEL_19:
  *v16 = v17;
  v7 = v16 + 1;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_24:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::MPSolverCommonParameters::ByteSizeLong(operations_research::MPSolverCommonParameters *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = *(this + 3);
  if (*(v4 + 4))
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  v6 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v4, v5, v4 + 5);
  v3 = &v6[((352 - 9 * __clz(v6)) >> 6) + 1];
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v7 = *(this + 4);
    if (*(v7 + 4))
    {
      v8 = 9;
    }

    else
    {
      v8 = 0;
    }

    v9 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v7, v8, v7 + 5);
    v3 = &v9[v3 + 1 + ((352 - 9 * __clz(v9)) >> 6)];
  }

LABEL_14:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 5);
    if (*(v11 + 4))
    {
      v12 = 9;
    }

    else
    {
      v12 = 0;
    }

    v13 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v11, v12, v11 + 5);
    v3 = &v13[v3 + 1 + ((352 - 9 * __clz(v13)) >> 6)];
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v3 = (v3 + ((640 - 9 * __clz(*(this + 12))) >> 6) + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_27:
  v3 = (v3 + ((640 - 9 * __clz(*(this + 13))) >> 6) + 1);
  if ((v2 & 0x20) != 0)
  {
LABEL_18:
    v3 = (v3 + ((640 - 9 * __clz(*(this + 14))) >> 6) + 1);
  }

LABEL_19:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

uint64_t operations_research::MPModelDeltaProto::MPModelDeltaProto(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F3AFB0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v8 = *(a3 + 16);
  *(a1 + 24) = google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::kVTable;
  *(a1 + 16) = v8;
  *(a1 + 20) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = xmmword_23CE389F0;
  *(a1 + 56) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 64) = a2;
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a3 + 24));
  google::protobuf::internal::MapMergeFrom<int,operations_research::MPVariableProto>(a1 + 40, a3 + 40);
  google::protobuf::internal::MapFieldBase::SetMapDirty((a1 + 24));
  *(a1 + 72) = google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::kVTable;
  *(a1 + 80) = a2;
  *(a1 + 88) = xmmword_23CE389F0;
  *(a1 + 104) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 112) = a2;
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 72));
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a3 + 72));
  google::protobuf::internal::MapMergeFrom<int,operations_research::MPConstraintProto>(a1 + 88, a3 + 88);
  google::protobuf::internal::MapFieldBase::SetMapDirty((a1 + 72));
  v11 = *(a3 + 120);
  v10 = (a3 + 120);
  v9 = v11;
  if ((v11 & 3) != 0)
  {
    v9 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v10, a2);
  }

  *(a1 + 120) = v9;
  return a1;
}

void sub_23C9B73FC(_Unwind_Exception *a1)
{
  google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapField(v2);
  google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapField(v1);
  _Unwind_Resume(a1);
}

void operations_research::MPModelDeltaProto::~MPModelDeltaProto(operations_research::MPModelDeltaProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 15);
  if (*(this + 23) != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(this + 88, 0x400700010, 0);
  }

  google::protobuf::internal::MapFieldBase::~MapFieldBase(this + 9);
  if (*(this + 11) != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(this + 40, 0x400500010, 0);
  }

  google::protobuf::internal::MapFieldBase::~MapFieldBase(this + 3);
}

{
  operations_research::MPModelDeltaProto::~MPModelDeltaProto(this);

  JUMPOUT(0x23EED9460);
}

std::string *operations_research::MPModelDeltaProto::MergeImpl(operations_research::MPModelDeltaProto *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  (*(*(this + 3) + 48))(this + 24, a2 + 24, a3);
  result = (*(*(this + 9) + 48))(this + 72, a2 + 72);
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 15);
    *(this + 4) |= 1u;
    v8 = *(this + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::internal::ArenaStringPtr::Set<>(this + 15, (v7 & 0xFFFFFFFFFFFFFFFCLL), v8);
  }

  *(this + 4) |= v6;
  v9 = *(a2 + 1);
  if (v9)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return result;
}

google::protobuf::UnknownFieldSet *operations_research::MPModelDeltaProto::Clear(atomic_ullong *this)
{
  google::protobuf::internal::MapFieldBase::Clear(this + 3);
  result = google::protobuf::internal::MapFieldBase::Clear(this + 9);
  if (this[2])
  {
    v3 = this[15] & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      v6 = *(this + 8);
      v4 = (this + 1);
      *(v4 + 2) = 0;
      if ((v6 & 1) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    *v3 = 0;
    *(v3 + 23) = 0;
  }

  v5 = *(this + 8);
  v4 = (this + 1);
  *(v4 + 2) = 0;
  if ((v5 & 1) == 0)
  {
    return result;
  }

LABEL_7:

  return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
}

double google::protobuf::internal::TcParser::CreateInArenaStorageCb<operations_research::MPVariableProto>(uint64_t a1, uint64_t a2)
{
  *a2 = off_284F3A930;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  result = -INFINITY;
  *(a2 + 48) = xmmword_23CE389E0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

double google::protobuf::internal::TcParser::CreateInArenaStorageCb<operations_research::MPConstraintProto>(uint64_t a1, uint64_t a2)
{
  *a2 = off_284F3AC08;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = a1;
  *(a2 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  result = -INFINITY;
  *(a2 + 80) = xmmword_23CE389E0;
  *(a2 + 72) = 0;
  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::MPModelDeltaProto::_InternalSerialize(operations_research::MPModelDeltaProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    v6 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *(v6 + 23);
    if (v7 < 0 && (v7 = *(v6 + 8), v7 > 127) || *a3 - a2 + 14 < v7)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v6, a2);
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 3);
      v9 = (this + 40);
      if (!*(this + 10))
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    *a2 = 10;
    a2[1] = v7;
    if (*(v6 + 23) >= 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = *v6;
    }

    memcpy(v4 + 2, v8, v7);
    v4 += v7 + 2;
  }

  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 3);
  v9 = (this + 40);
  if (!*(this + 10))
  {
    goto LABEL_19;
  }

LABEL_10:
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 3);
  if (*(a3 + 58) == 1 && *v9 >= 2)
  {
    google::protobuf::internal::MapSorterFlat<google::protobuf::Map<int,operations_research::MPVariableProto>>::MapSorterFlat(&v29, v9);
    v12 = v30;
    if ((v29 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = (v30 + 8);
      v14 = 16 * v29;
      do
      {
        v4 = google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::InternalSerialize(2, *v13, (*v13 + 2), v4, a3, v11);
        v13 += 2;
        v14 -= 16;
      }

      while (v14);
      v12 = v30;
    }

    v30 = 0;
    if (v12)
    {
      MEMORY[0x23EED9440](v12, 0x10C0C806D26F19BLL);
    }
  }

  else
  {
    LODWORD(v15) = *(this + 13);
    if (v15 != *(this + 11))
    {
      v25 = *(*(this + 7) + 8 * v15);
      if (v25)
      {
        v25 = *(**(v25 - 1) + 32);
      }

      do
      {
        v4 = google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::InternalSerialize(2, (v25 + 8), v25 + 16, v4, a3, v10);
        v25 = *v25;
        if (!v25)
        {
          v15 = (v15 + 1);
          v27 = *(this + 11);
          if (v27 <= v15)
          {
            break;
          }

          while (1)
          {
            v25 = *(*(this + 7) + 8 * v15);
            if (v25)
            {
              break;
            }

            if (v27 == ++v15)
            {
              goto LABEL_19;
            }
          }

          if (v25)
          {
            v25 = *(**(v25 - 1) + 32);
          }
        }
      }

      while (v25);
    }
  }

LABEL_19:
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 9);
  if (*(this + 22))
  {
    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 9);
    if (*(a3 + 58) == 1 && *(this + 22) >= 2u)
    {
      google::protobuf::internal::MapSorterFlat<google::protobuf::Map<int,operations_research::MPVariableProto>>::MapSorterFlat(&v29, this + 22);
      v19 = v30;
      if ((v29 & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = (v30 + 8);
        v21 = 16 * v29;
        do
        {
          v4 = google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::InternalSerialize(3, *v20, (*v20 + 2), v4, a3, v18);
          v20 += 2;
          v21 -= 16;
        }

        while (v21);
        v19 = v30;
      }

      v30 = 0;
      if (v19)
      {
        MEMORY[0x23EED9440](v19, 0x10C0C806D26F19BLL);
      }
    }

    else
    {
      LODWORD(v22) = *(this + 25);
      if (v22 != *(this + 23))
      {
        v26 = *(*(this + 13) + 8 * v22);
        if (v26)
        {
          v26 = *(**(v26 - 1) + 32);
        }

        do
        {
          v4 = google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::InternalSerialize(3, (v26 + 8), v26 + 16, v4, a3, v17);
          v26 = *v26;
          if (!v26)
          {
            v22 = (v22 + 1);
            v28 = *(this + 23);
            if (v28 <= v22)
            {
              break;
            }

            while (1)
            {
              v26 = *(*(this + 13) + 8 * v22);
              if (v26)
              {
                break;
              }

              if (v28 == ++v22)
              {
                goto LABEL_29;
              }
            }

            if (v26)
            {
              v26 = *(**(v26 - 1) + 32);
            }
          }
        }

        while (v26);
      }
    }
  }

LABEL_29:
  v23 = *(this + 1);
  if (v23)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v16);
  }

  return v4;
}

void sub_23C9B7A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x23EED9440](a10, 0x10C0C806D26F19BLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::InternalSerialize(int a1, int *a2, uint64_t a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *this, google::protobuf::io::EpsCopyOutputStream *a6)
{
  if (*this <= a4)
  {
    v21 = a2;
    v22 = this;
    v23 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    a2 = v21;
    this = v22;
    a4 = v23;
    v7 = (8 * a1) | 2;
    if ((8 * a1) < 0x80)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_17:
      *a4++ = v7 | 0x80;
      v8 = v7 >> 7;
      v24 = v7 >> 14;
      v7 >>= 7;
    }

    while (v24);
    goto LABEL_4;
  }

  v7 = (8 * a1) | 2;
  if ((8 * a1) >= 0x80)
  {
    goto LABEL_17;
  }

LABEL_3:
  LOBYTE(v8) = v7;
LABEL_4:
  *a4 = v8;
  v9 = a4 + 1;
  v10 = *(a3 + 20) + ((352 - 9 * __clz(*(a3 + 20))) >> 6) + ((640 - 9 * __clz(*a2)) >> 6) + 2;
  if (v10 >= 0x80)
  {
    do
    {
      *v9++ = v10 | 0x80;
      v11 = v10 >> 7;
      v19 = v10 >> 14;
      v10 >>= 7;
    }

    while (v19);
  }

  else
  {
    LOBYTE(v11) = v10;
  }

  *v9 = v11;
  v12 = v9 + 1;
  if (*this <= v12)
  {
    v25 = a2;
    v26 = this;
    v27 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v12);
    this = v26;
    v13 = *v25;
    *v27 = 8;
    v14 = v27 + 1;
    if (v13 < 0x80)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *a2;
    *v12 = 8;
    v14 = v12 + 1;
    if (v13 < 0x80)
    {
LABEL_8:
      LOBYTE(v15) = v13;
      goto LABEL_9;
    }
  }

  do
  {
    *v14++ = v13 | 0x80;
    v15 = v13 >> 7;
    v28 = v13 >> 14;
    v13 >>= 7;
  }

  while (v28);
LABEL_9:
  *v14 = v15;
  v16 = v14 + 1;
  if (*this <= v16)
  {
    v29 = this;
    v30 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v16);
    this = v29;
    v16 = v30;
  }

  v17 = *(a3 + 20);

  return google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, a3, v17, v16, this, a6);
}

char *operations_research::MPModelDeltaProto::ByteSizeLong(atomic_ullong *this)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 3);
  v2 = *(this + 10);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 3);
  LODWORD(v3) = *(this + 13);
  if (v3 != *(this + 11))
  {
    v10 = *(this[7] + 8 * v3);
    if (v10)
    {
      v10 = *(**(v10 - 1) + 32);
    }

    do
    {
      v2 += google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::ByteSizeLong((v10 + 8), v10 + 16);
      v10 = *v10;
      if (!v10)
      {
        v3 = (v3 + 1);
        v12 = *(this + 11);
        if (v12 <= v3)
        {
          break;
        }

        while (1)
        {
          v10 = *(this[7] + 8 * v3);
          if (v10)
          {
            break;
          }

          if (v12 == ++v3)
          {
            goto LABEL_2;
          }
        }

        if (v10)
        {
          v10 = *(**(v10 - 1) + 32);
        }
      }
    }

    while (v10);
  }

LABEL_2:
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 9);
  v4 = (v2 + *(this + 22));
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this + 9);
  LODWORD(v5) = *(this + 25);
  if (v5 != *(this + 23))
  {
    v11 = *(this[13] + 8 * v5);
    if (v11)
    {
      v11 = *(**(v11 - 1) + 32);
    }

    do
    {
      v13 = ((640 - 9 * __clz(*(v11 + 8))) >> 6) + 2;
      v14 = operations_research::MPConstraintProto::ByteSizeLong((v11 + 16));
      v15 = &v14[((352 - 9 * __clz(v14)) >> 6) + v13];
      v4 = (v4 + v15 + ((352 - 9 * __clz(v15)) >> 6));
      v11 = *v11;
      if (!v11)
      {
        v5 = (v5 + 1);
        v16 = *(this + 23);
        if (v16 <= v5)
        {
          break;
        }

        while (1)
        {
          v11 = *(this[13] + 8 * v5);
          if (v11)
          {
            break;
          }

          if (v16 == ++v5)
          {
            goto LABEL_3;
          }
        }

        if (v11)
        {
          v11 = *(**(v11 - 1) + 32);
        }
      }
    }

    while (v11);
  }

LABEL_3:
  if (this[2])
  {
    v6 = this[15] & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v4 = (v4 + v8 + ((352 - 9 * __clz(v8)) >> 6) + 1);
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 5);
}

char *google::protobuf::internal::MapEntryFuncs<int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::ByteSizeLong(int *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((v3 & 0x3F) != 0)
  {
    if (v3)
    {
      v6 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 = v8 + ((352 - 9 * __clz(v8)) >> 6) + 1;
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v9 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v9 += (704 - 9 * __clz(*(a2 + 44))) >> 6;
    }

    if ((v3 & 0x10) != 0)
    {
      v9 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = (v9 + 9);
    }

    else
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = ((640 - 9 * __clz(*a1)) >> 6) + 2;
  v11 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(a2, v5, (a2 + 20));
  v12 = &v11[((352 - 9 * __clz(v11)) >> 6) + v10];
  return &v12[(352 - 9 * __clz(v12)) >> 6];
}

double operations_research::MPModelRequest::MPModelRequest(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F3B0E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void operations_research::MPModelRequest::~MPModelRequest(operations_research::MPModelRequest *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 3);
  v4 = *(this + 4);
  if (v4)
  {
    if (*(v4 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v4 + 1);
    }

    operations_research::MPModelProto::SharedDtor(v4);
    MEMORY[0x23EED9460](v4, 0x10A1C404ECF5A7FLL);
  }

  v5 = *(this + 5);
  if (v5)
  {
    operations_research::MPModelDeltaProto::~MPModelDeltaProto(v5);
    MEMORY[0x23EED9460]();
  }
}

{
  operations_research::MPModelRequest::~MPModelRequest(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::MPModelRequest::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v6 = (this + 1);
  v5 = this[1];
  if ((v5 & 1) == 0)
  {
    v7 = this[1];
    v8 = *(a2 + 4);
    if (!v8)
    {
      goto LABEL_32;
    }

LABEL_3:
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = v4[4];
      v11 = *(a2 + 4);
      if (v10)
      {
        this = operations_research::MPModelProto::MergeImpl(v10, v11, v5);
        if ((v8 & 4) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        this = google::protobuf::Arena::CopyConstruct<operations_research::MPModelProto>(v7, v11);
        v4[4] = this;
        if ((v8 & 4) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_13:
      v12 = v4[5];
      v13 = *(a2 + 5);
      if (!v12)
      {
        this = google::protobuf::Arena::CopyConstruct<operations_research::MPModelDeltaProto>(v7, *(a2 + 5));
        v4[5] = this;
        if ((v8 & 8) == 0)
        {
LABEL_21:
          if ((v8 & 0x10) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }

LABEL_27:
        v4[6] = *(a2 + 6);
        if ((v8 & 0x10) == 0)
        {
LABEL_22:
          if ((v8 & 0x20) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }

LABEL_28:
        *(v4 + 56) = *(a2 + 56);
        if ((v8 & 0x20) == 0)
        {
LABEL_23:
          if ((v8 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }

LABEL_29:
        *(v4 + 57) = *(a2 + 57);
        if ((v8 & 0x40) == 0)
        {
LABEL_24:
          if ((v8 & 0x80) == 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          *(v4 + 16) = *(a2 + 16);
          goto LABEL_32;
        }

LABEL_30:
        *(v4 + 15) = *(a2 + 15);
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      (*(*(v12 + 24) + 48))(v12 + 24, v13 + 24);
      this = (*(*(v12 + 72) + 48))(v12 + 72, v13 + 72);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v13 + 120);
        *(v12 + 16) |= 1u;
        v16 = *(v12 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        this = google::protobuf::internal::ArenaStringPtr::Set<>((v12 + 120), (v15 & 0xFFFFFFFFFFFFFFFCLL), v16);
      }

      *(v12 + 16) |= v14;
      v17 = *(v13 + 8);
      if (v17)
      {
        this = google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v12 + 8), ((v17 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }

LABEL_20:
      if ((v8 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    v9 = *(a2 + 3);
    *(this + 4) |= 1u;
    if (v5)
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v9 & 0xFFFFFFFFFFFFFFFCLL), *(v5 & 0xFFFFFFFFFFFFFFFELL));
      if ((v8 & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>(this + 3, (v9 & 0xFFFFFFFFFFFFFFFCLL), v5);
      if ((v8 & 2) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_5:
    if ((v8 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v7 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  v8 = *(a2 + 4);
  if (v8)
  {
    goto LABEL_3;
  }

LABEL_32:
  *(v4 + 4) |= v8;
  v18 = *(a2 + 1);
  if (v18)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::MPModelRequest::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  this = operations_research::MPModelProto::Clear(*(this + 4));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = operations_research::MPModelDeltaProto::Clear(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 2;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::MPModelRequest::_InternalSerialize(operations_research::MPModelRequest *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *(this + 4), *(*(this + 4) + 20), a2, a3, a6);
    if ((v9 & 0x80) == 0)
    {
LABEL_3:
      if ((v9 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v7)
  {
    v22 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v12 = *(this + 16);
    *v22 = 16;
    v13 = v22 + 1;
    if (v12 < 0x80)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *(this + 16);
    *v7 = 16;
    v13 = v7 + 1;
    if (v12 < 0x80)
    {
LABEL_14:
      LOBYTE(v14) = v12;
      goto LABEL_15;
    }
  }

  do
  {
    *v13++ = v12 | 0x80;
    v14 = v12 >> 7;
    v23 = v12 >> 14;
    v12 >>= 7;
  }

  while (v23);
LABEL_15:
  *v13 = v14;
  v7 = (v13 + 1);
  if ((v9 & 8) == 0)
  {
LABEL_4:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v15 = *(this + 6);
  *v7 = 25;
  *(v7 + 1) = v15;
  v7 = (v7 + 9);
  if ((v9 & 0x10) == 0)
  {
LABEL_5:
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v17 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *(v17 + 23);
    if (v18 < 0 && (v18 = *(v17 + 8), v18 > 127) || *a3 - v7 + 14 < v18)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 5, v17, v7);
      if ((v9 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v7 = 42;
      v19 = v7 + 2;
      *(v7 + 1) = v18;
      if (*(v17 + 23) >= 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = *v17;
      }

      memcpy(v7 + 2, v20, v18);
      v7 = &v19[v18];
      if ((v9 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_7:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_19:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v16 = *(this + 56);
  *v7 = 32;
  *(v7 + 1) = v16;
  v7 = (v7 + 2);
  if (v9)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v9 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_29:
  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *(this + 5), *(*(this + 5) + 20), v7, a3, a6);
  if ((v9 & 0x20) == 0)
  {
LABEL_8:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<11>(a3, *(this + 15), v7);
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_34;
  }

LABEL_30:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v21 = *(this + 57);
  *v7 = 72;
  *(v7 + 1) = v21;
  v7 = (v7 + 2);
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v7;
  }

LABEL_34:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<11>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 88;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 88;
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

char *operations_research::MPModelRequest::ByteSizeLong(operations_research::MPModelRequest *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (v2)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((352 - 9 * __clz(v7)) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = operations_research::MPModelProto::ByteSizeLong(*(this + 4));
  v3 += &v8[((352 - 9 * __clz(v8)) >> 6) + 1];
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = operations_research::MPModelDeltaProto::ByteSizeLong(*(this + 5));
    v3 += &v9[((352 - 9 * __clz(v9)) >> 6) + 1];
  }

  v10 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v10 = v3;
  }

  v4 = (v10 + ((v2 >> 4) & 2) + ((v2 >> 3) & 2));
  if ((v2 & 0x40) != 0)
  {
    v4 = (v4 + ((-9 * __clz(*(this + 15)) + 704) >> 6));
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = (v4 + ((-9 * __clz(*(this + 16)) + 640) >> 6) + 1);
  }

LABEL_18:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 5);
}

void operations_research::MPSolution::~MPSolution(operations_research::MPSolution *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

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

void *operations_research::MPSolution::MergeImpl(void *this, uint64_t **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = *(this + 6);
    if (*(this + 7) < v4 + v3)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<long long>::Grow(this + 3, v4);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 6);
      v5 = v21[4];
      *(v21 + 6) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = this[4];
      *(this + 6) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v6 = a2[4];
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
  v18 = *(a2 + 4);
  if (v18)
  {
    this[5] = a2[5];
  }

  *(this + 4) |= v18;
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::MPSolution::Clear(operations_research::MPSolution *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::MPSolution::_InternalSerialize(operations_research::MPSolution *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 5);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 6);
  if (v7 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v7 = *(this + 6);
    }

    v8 = (8 * v7);
    *a2 = 18;
    v9 = a2 + 1;
    v10 = v8;
    if (v8 >= 0x80)
    {
      do
      {
        *v9++ = v10 | 0x80;
        v16 = v10 >> 14;
        v10 >>= 7;
      }

      while (v16);
      a2 = v9 - 1;
    }

    v11 = a2 + 2;
    *v9 = v10;
    v12 = *(this + 4);
    v13 = v8;
    if (*a3 - v11 < v8)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v12, v8, v11);
      v14 = *(this + 1);
      if ((v14 & 1) == 0)
      {
        return a2;
      }

      goto LABEL_16;
    }

    memcpy(v11, v12, v8);
    a2 = &v11[v13];
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

LABEL_16:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::MPSolution::ByteSizeLong(operations_research::MPSolution *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = ((640 - 9 * __clz(8 * v1)) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 + 8 * v1;
  if (*(this + 4))
  {
    v4 = (v3 + 9);
  }

  else
  {
    v4 = v3;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 5);
}

void operations_research::MPSolveInfo::~MPSolveInfo(operations_research::MPSolveInfo *this)
{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }
}

{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::MPSolveInfo::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      this[3] = *(a2 + 3);
    }

    if ((v3 & 2) != 0)
    {
      this[4] = *(a2 + 4);
    }
  }

  *(this + 4) |= v3;
  v4 = *(a2 + 1);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::MPSolveInfo::Clear(operations_research::MPSolveInfo *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::MPSolveInfo::_InternalSerialize(operations_research::MPSolveInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 4);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= a2)
    {
      v13 = this;
      v9 = a3;
      v10 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v9;
      a2 = v10;
      this = v13;
    }

    v8 = *(this + 4);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v5 = *(this + 1);
    if ((v5 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_11;
  }

  if (*a3 <= a2)
  {
    v11 = a3;
    v12 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v11;
    this = v12;
  }

  v7 = *(this + 3);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = *(this + 1);
  if ((v5 & 1) == 0)
  {
    return a2;
  }

LABEL_11:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::MPSolveInfo::ByteSizeLong(operations_research::MPSolveInfo *this)
{
  v1 = *(this + 4);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v3, this + 5);
}

double operations_research::MPSolutionResponse::MPSolutionResponse(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F3AE10;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 104) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 136) = 99;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return result;
}

void operations_research::MPSolutionResponse::SharedDtor(operations_research::MPSolutionResponse *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 12);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 13);
  v2 = *(this + 14);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    MEMORY[0x23EED9460](v2, 0x1081C4003DAF236);
  }

  if (*(this + 9))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 72));
  }

  if (*(this + 15) >= 1)
  {
    v3 = *(this + 8);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 11) < 1 || (v6 = *(this + 6), v8 = *(v6 - 8), v7 = (v6 - 8), v8))
  {
    if (*(this + 7) < 1)
    {
      return;
    }
  }

  else
  {
    operator delete(v7);
    if (*(this + 7) < 1)
    {
      return;
    }
  }

  v9 = *(this + 4);
  v11 = *(v9 - 8);
  v10 = (v9 - 8);
  if (!v11)
  {

    operator delete(v10);
  }
}

void operations_research::MPSolutionResponse::~MPSolutionResponse(operations_research::MPSolutionResponse *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::MPSolutionResponse::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::MPSolutionResponse::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::MPSolutionResponse::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
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
  if (*(this + 7) < v8 + v7)
  {
    this = google::protobuf::RepeatedField<long long>::Grow(this + 3, v8);
    LODWORD(v8) = *(v4 + 6);
    v9 = v4[4];
    *(v4 + 6) = v8 + v7;
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = this[4];
    *(this + 6) = v8 + v7;
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  v10 = *(a2 + 4);
  v11 = (v9 + 8 * v8);
  if (v7 < 8)
  {
    goto LABEL_10;
  }

  v12 = 8 * v8 + v9;
  if ((v12 - v10) < 0x20)
  {
    goto LABEL_10;
  }

  v13 = v7;
  v14 = v7 & 0x7FFFFFFC;
  LODWORD(v7) = v7 - (v7 & 0x7FFFFFFC);
  v11 += v14;
  v15 = &v10[v14];
  v16 = (v10 + 2);
  v17 = (v12 + 16);
  v18 = v14;
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
  v22 = *(a2 + 10);
  if (!v22)
  {
    goto LABEL_22;
  }

  v23 = *(v4 + 10);
  if (*(v4 + 11) < v23 + v22)
  {
    this = google::protobuf::RepeatedField<long long>::Grow(v4 + 5, v23);
    LODWORD(v23) = *(v4 + 10);
    v24 = v4[6];
    *(v4 + 10) = v23 + v22;
    if (v22 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v24 = v4[6];
    *(v4 + 10) = v23 + v22;
    if (v22 < 1)
    {
      goto LABEL_22;
    }
  }

  v25 = *(a2 + 6);
  v26 = (v24 + 8 * v23);
  if (v22 < 8)
  {
    goto LABEL_20;
  }

  v27 = 8 * v23 + v24;
  if ((v27 - v25) < 0x20)
  {
    goto LABEL_20;
  }

  v28 = v22;
  v29 = v22 & 0x7FFFFFFC;
  LODWORD(v22) = v22 - (v22 & 0x7FFFFFFC);
  v26 += v29;
  v30 = &v25[v29];
  v31 = (v25 + 2);
  v32 = (v27 + 16);
  v33 = v29;
  do
  {
    v34 = *v31;
    *(v32 - 1) = *(v31 - 1);
    *v32 = v34;
    v31 += 2;
    v32 += 2;
    v33 -= 4;
  }

  while (v33);
  v25 = v30;
  if (v29 != v28)
  {
LABEL_20:
    v35 = v22 + 1;
    do
    {
      v36 = *v25++;
      *v26++ = v36;
      --v35;
    }

    while (v35 > 1);
  }

LABEL_22:
  v37 = *(a2 + 14);
  if (!v37)
  {
    goto LABEL_32;
  }

  v38 = *(v4 + 14);
  if (*(v4 + 15) < v38 + v37)
  {
    this = google::protobuf::RepeatedField<long long>::Grow(v4 + 7, v38);
    LODWORD(v38) = *(v4 + 14);
    v39 = v4[8];
    *(v4 + 14) = v38 + v37;
    if (v37 < 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v39 = v4[8];
    *(v4 + 14) = v38 + v37;
    if (v37 < 1)
    {
      goto LABEL_32;
    }
  }

  v40 = *(a2 + 8);
  v41 = (v39 + 8 * v38);
  if (v37 < 8)
  {
    goto LABEL_30;
  }

  v42 = 8 * v38 + v39;
  if ((v42 - v40) < 0x20)
  {
    goto LABEL_30;
  }

  v43 = v37;
  v44 = v37 & 0x7FFFFFFC;
  LODWORD(v37) = v37 - (v37 & 0x7FFFFFFC);
  v41 += v44;
  v45 = &v40[v44];
  v46 = (v40 + 2);
  v47 = (v42 + 16);
  v48 = v44;
  do
  {
    v49 = *v46;
    *(v47 - 1) = *(v46 - 1);
    *v47 = v49;
    v46 += 2;
    v47 += 2;
    v48 -= 4;
  }

  while (v48);
  v40 = v45;
  if (v44 != v43)
  {
LABEL_30:
    v50 = v37 + 1;
    do
    {
      v51 = *v40++;
      *v41++ = v51;
      --v50;
    }

    while (v50 > 1);
  }

LABEL_32:
  if (*(a2 + 20))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v4 + 18, (a2 + 72), google::protobuf::Arena::CopyConstruct<operations_research::MPSolution>);
  }

  v52 = *(a2 + 4);
  if ((v52 & 0x3F) == 0)
  {
    goto LABEL_56;
  }

  if (v52)
  {
    v53 = *(a2 + 12);
    *(v4 + 4) |= 1u;
    v54 = v4[1];
    if (v54)
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 12, (v53 & 0xFFFFFFFFFFFFFFFCLL), *(v54 & 0xFFFFFFFFFFFFFFFELL));
      if ((v52 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 12, (v53 & 0xFFFFFFFFFFFFFFFCLL), v54);
      if ((v52 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_37:
    if ((v52 & 4) == 0)
    {
      goto LABEL_52;
    }

LABEL_43:
    v57 = v4[14];
    v58 = *(a2 + 14);
    if (v57)
    {
      v59 = *(v58 + 16);
      if ((v59 & 3) != 0)
      {
        if (v59)
        {
          *(v57 + 24) = *(v58 + 24);
        }

        if ((v59 & 2) != 0)
        {
          *(v57 + 32) = *(v58 + 32);
        }
      }

      *(v57 + 16) |= v59;
      v60 = *(v58 + 8);
      if (v60)
      {
        this = google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v57 + 8), ((v60 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }
    }

    else
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::MPSolveInfo>(v6, v58);
      v4[14] = this;
    }

    goto LABEL_52;
  }

  if ((v52 & 2) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  v55 = *(a2 + 13);
  *(v4 + 4) |= 2u;
  v56 = v4[1];
  if (v56)
  {
    this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 13, (v55 & 0xFFFFFFFFFFFFFFFCLL), *(v56 & 0xFFFFFFFFFFFFFFFELL));
    if ((v52 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 13, (v55 & 0xFFFFFFFFFFFFFFFCLL), v56);
  if ((v52 & 4) != 0)
  {
    goto LABEL_43;
  }

LABEL_52:
  if ((v52 & 8) != 0)
  {
    v4[15] = *(a2 + 15);
    if ((v52 & 0x10) == 0)
    {
LABEL_54:
      if ((v52 & 0x20) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((v52 & 0x10) == 0)
  {
    goto LABEL_54;
  }

  v4[16] = *(a2 + 16);
  if ((v52 & 0x20) != 0)
  {
LABEL_55:
    *(v4 + 34) = *(a2 + 34);
  }

LABEL_56:
  *(v4 + 4) |= v52;
  v61 = *(a2 + 1);
  if (v61)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v61 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::MPSolutionResponse::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  if (*(this + 20) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 18);
  }

  v2 = *(v1 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_6:
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  v6 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    this = operations_research::MPSolveInfo::Clear(*(v1 + 112));
    goto LABEL_8;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 99;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::MPSolutionResponse::_InternalSerialize(operations_research::MPSolutionResponse *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if ((v9 & 0x20) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v14 = *(this + 15);
    *v7 = 17;
    *(v7 + 1) = v14;
    v7 = (v7 + 9);
    v10 = *(this + 6);
    if (v10 < 1)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (*a3 <= a2)
  {
    v53 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v11 = *(this + 34);
    *v53 = 8;
    v12 = v53 + 1;
    if (v11 < 0x80)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *(this + 34);
    *a2 = 8;
    v12 = a2 + 1;
    if (v11 < 0x80)
    {
LABEL_7:
      LOBYTE(v13) = v11;
      goto LABEL_8;
    }
  }

  do
  {
    *v12++ = v11 | 0x80;
    v13 = v11 >> 7;
    v54 = v11 >> 14;
    v11 >>= 7;
  }

  while (v54);
LABEL_8:
  *v12 = v13;
  v7 = (v12 + 1);
  if ((v9 & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v10 = *(this + 6);
  if (v10 < 1)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v10 = *(this + 6);
  }

  v15 = (8 * v10);
  *v7 = 26;
  v16 = v7 + 1;
  v17 = v15;
  if (v15 >= 0x80)
  {
    do
    {
      *v16++ = v17 | 0x80;
      v50 = v17 >> 14;
      v17 >>= 7;
    }

    while (v50);
    v7 = (v16 - 1);
  }

  v18 = v7 + 2;
  *v16 = v17;
  v19 = *(this + 4);
  v20 = v15;
  if (*a3 - (v7 + 2) < v15)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v19, v15, v7 + 2);
    v21 = *(this + 10);
    if (v21 < 1)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  memcpy(v7 + 2, v19, v15);
  v7 = &v18[v20];
LABEL_17:
  v21 = *(this + 10);
  if (v21 < 1)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v21 = *(this + 10);
  }

  v22 = (8 * v21);
  *v7 = 34;
  v23 = v7 + 1;
  v24 = v22;
  if (v22 >= 0x80)
  {
    do
    {
      *v23++ = v24 | 0x80;
      v51 = v24 >> 14;
      v24 >>= 7;
    }

    while (v51);
    v7 = (v23 - 1);
  }

  v25 = v7 + 2;
  *v23 = v24;
  v26 = *(this + 6);
  v27 = v22;
  if (*a3 - (v7 + 2) < v22)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v26, v22, v7 + 2);
  }

  else
  {
    memcpy(v7 + 2, v26, v22);
    v7 = &v25[v27];
  }

LABEL_23:
  if ((v9 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v28 = *(this + 16);
    *v7 = 41;
    *(v7 + 1) = v28;
    v7 = (v7 + 9);
  }

  v29 = *(this + 14);
  if (v29 >= 1)
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v29 = *(this + 14);
    }

    v30 = (8 * v29);
    *v7 = 50;
    v31 = v7 + 1;
    v32 = v30;
    if (v30 >= 0x80)
    {
      do
      {
        *v31++ = v32 | 0x80;
        v52 = v32 >> 14;
        v32 >>= 7;
      }

      while (v52);
      v7 = (v31 - 1);
    }

    v33 = v7 + 2;
    *v31 = v32;
    v34 = *(this + 8);
    v35 = v30;
    if (*a3 - (v7 + 2) < v30)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v34, v30, v7 + 2);
      if ((v9 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    memcpy(v7 + 2, v34, v30);
    v7 = &v33[v35];
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_34:
  v36 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 23);
  if (v37 < 0 && (v37 = *(v36 + 8), v37 > 127) || *a3 - v7 + 14 < v37)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 7, v36, v7);
  }

  else
  {
    *v7 = 58;
    v38 = v7 + 2;
    *(v7 + 1) = v37;
    if (*(v36 + 23) >= 0)
    {
      v39 = v36;
    }

    else
    {
      v39 = *v36;
    }

    memcpy(v7 + 2, v39, v37);
    v7 = &v38[v37];
  }

LABEL_41:
  v40 = *(this + 20);
  if (v40)
  {
    v41 = 0;
    v42 = (this + 72);
    do
    {
      if (*v42)
      {
        v43 = (*v42 + 8 * v41 + 7);
      }

      else
      {
        v43 = (this + 72);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *v43, *(*v43 + 20), v7, a3, a6);
      ++v41;
    }

    while (v40 != v41);
  }

  if ((v9 & 4) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v46 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *(v46 + 23);
    if (v47 < 0 && (v47 = *(v46 + 8), v47 > 127) || *a3 - v7 + 14 < v47)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 11, v46, v7);
      v44 = *(this + 1);
      if ((v44 & 1) == 0)
      {
        return v7;
      }
    }

    else
    {
      *v7 = 90;
      v48 = v7 + 2;
      *(v7 + 1) = v47;
      if (*(v46 + 23) >= 0)
      {
        v49 = v46;
      }

      else
      {
        v49 = *v46;
      }

      memcpy(v7 + 2, v49, v47);
      v7 = &v48[v47];
      v44 = *(this + 1);
      if ((v44 & 1) == 0)
      {
        return v7;
      }
    }

    goto LABEL_59;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0xA, *(this + 14), *(*(this + 14) + 20), v7, a3, a6);
  if ((v9 & 2) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v44 = *(this + 1);
  if ((v44 & 1) == 0)
  {
    return v7;
  }

LABEL_59:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v44 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::MPSolutionResponse::ByteSizeLong(operations_research::MPSolutionResponse *this)
{
  v2 = *(this + 6);
  v3 = (-9 * __clz(8 * v2) + 640) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 10);
  v6 = (640 - 9 * __clz(8 * v5)) >> 6;
  if (v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 14);
  v9 = (640 - 9 * __clz(8 * v8)) >> 6;
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 9);
  v12 = *(this + 20);
  v13 = (v7 + v4 + 8 * (v5 + v2 + v8) + v10 + v12);
  if (v11)
  {
    v14 = (v11 + 7);
  }

  else
  {
    v14 = this + 72;
  }

  if (v12)
  {
    v15 = 8 * v12;
    do
    {
      v20 = *v14;
      v21 = *(*v14 + 24);
      if (v21)
      {
        v16 = ((640 - 9 * __clz(8 * v21)) >> 6) + 1;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 + 8 * v21;
      if (*(v20 + 4))
      {
        v18 = (v17 + 9);
      }

      else
      {
        v18 = v17;
      }

      v19 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v20, v18, v20 + 5);
      v13 = (v13 + v19 + ((352 - 9 * __clz(v19)) >> 6));
      v14 += 8;
      v15 -= 8;
    }

    while (v15);
  }

  v22 = *(this + 4);
  if ((v22 & 0x3F) != 0)
  {
    if (v22)
    {
      v30 = *(this + 12) & 0xFFFFFFFFFFFFFFFCLL;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v13 = (v13 + v32 + ((352 - 9 * __clz(v32)) >> 6) + 1);
      if ((v22 & 2) == 0)
      {
LABEL_25:
        if ((v22 & 4) == 0)
        {
LABEL_34:
          v28 = (v13 + 9);
          if ((v22 & 8) == 0)
          {
            v28 = v13;
          }

          if ((v22 & 0x10) != 0)
          {
            v13 = (v28 + 9);
          }

          else
          {
            v13 = v28;
          }

          if ((v22 & 0x20) != 0)
          {
            v13 = (v13 + ((640 - 9 * __clz(*(this + 34))) >> 6) + 1);
          }

          goto LABEL_41;
        }

LABEL_26:
        v23 = *(this + 14);
        v24 = *(v23 + 4);
        v25 = 9;
        if ((v24 & 1) == 0)
        {
          v25 = 0;
        }

        if ((v24 & 2) != 0)
        {
          v25 += 9;
        }

        if ((v24 & 3) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v23, v26, v23 + 5);
        v13 = &v27[((352 - 9 * __clz(v27)) >> 6) + 1 + v13];
        goto LABEL_34;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_25;
    }

    v33 = *(this + 13) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v13 = (v13 + v35 + ((352 - 9 * __clz(v35)) >> 6) + 1);
    if ((v22 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

LABEL_41:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v13, this + 5);
}

void operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse::~MPModelDeltaProto_VariableOverridesEntry_DoNotUse(operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse *this)
{
  google::protobuf::internal::MapEntry<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapEntry(this);

  JUMPOUT(0x23EED9460);
}

google::protobuf::internal *google::protobuf::internal::MapEntry<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::_InternalParse(uint64_t a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  result = this;
  while (1)
  {
    if (result < *a3)
    {
      goto LABEL_5;
    }

    v14 = (result - *(a3 + 2));
    if (*(a3 + 7) == v14)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v14, *(a3 + 23));
    if (v15)
    {
      return result;
    }

LABEL_5:
    v6 = (result + 1);
    LODWORD(v7) = *result;
    if ((*result & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v7 = (v7 + (*v6 << 7) - 128);
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (result + 2);
LABEL_8:
      if (!v6)
      {
        return 0;
      }

      goto LABEL_9;
    }

    google::protobuf::internal::ReadTagFallback(result, v7);
    v6 = v13;
    if (!v13)
    {
      return 0;
    }

LABEL_9:
    if (v7 == 8)
    {
      *(a1 + 16) |= 1u;
      v12 = *v6;
      if ((*v6 & 0x80) != 0)
      {
        if ((v12 & 0x8000) != 0)
        {
          result = google::protobuf::internal::VarintParseSlowArm(v6, (a1 + 24), *v6);
        }

        else
        {
          *(a1 + 24) = v12 & 0x7F | (((v12 >> 8) & 0x7F) << 7);
          result = (v6 + 2);
        }
      }

      else
      {
        *(a1 + 24) = v12 & 0x7F;
        result = (v6 + 1);
      }

      goto LABEL_3;
    }

    if (v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = *(a1 + 32);
        if (!v9)
        {
LABEL_16:
          v10 = v6;
          google::protobuf::Arena::DefaultConstruct<operations_research::MPVariableProto>(v8);
          v6 = v10;
          v9 = v11;
          *(a1 + 32) = v11;
        }
      }

      else
      {
        v9 = *(a1 + 32);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      result = google::protobuf::internal::ParseContext::ParseMessage(a3, v9, v6);
      goto LABEL_3;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      *(a3 + 20) = v7 - 1;
      return v6;
    }

    result = google::protobuf::internal::UnknownFieldParse(v7, 0, v6, a3);
LABEL_3:
    if (!result)
    {
      return result;
    }
  }

  if (v14 >= 1 && !*(a3 + 2))
  {
    return 0;
  }

  return result;
}

void operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse::~MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse(operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse *this)
{
  google::protobuf::internal::MapEntry<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapEntry(this);

  JUMPOUT(0x23EED9460);
}

google::protobuf::internal *google::protobuf::internal::MapEntry<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::_InternalParse(uint64_t a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  result = this;
  while (1)
  {
    if (result < *a3)
    {
      goto LABEL_5;
    }

    v14 = (result - *(a3 + 2));
    if (*(a3 + 7) == v14)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v14, *(a3 + 23));
    if (v15)
    {
      return result;
    }

LABEL_5:
    v6 = (result + 1);
    LODWORD(v7) = *result;
    if ((*result & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v7 = (v7 + (*v6 << 7) - 128);
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (result + 2);
LABEL_8:
      if (!v6)
      {
        return 0;
      }

      goto LABEL_9;
    }

    google::protobuf::internal::ReadTagFallback(result, v7);
    v6 = v13;
    if (!v13)
    {
      return 0;
    }

LABEL_9:
    if (v7 == 8)
    {
      *(a1 + 16) |= 1u;
      v12 = *v6;
      if ((*v6 & 0x80) != 0)
      {
        if ((v12 & 0x8000) != 0)
        {
          result = google::protobuf::internal::VarintParseSlowArm(v6, (a1 + 24), *v6);
        }

        else
        {
          *(a1 + 24) = v12 & 0x7F | (((v12 >> 8) & 0x7F) << 7);
          result = (v6 + 2);
        }
      }

      else
      {
        *(a1 + 24) = v12 & 0x7F;
        result = (v6 + 1);
      }

      goto LABEL_3;
    }

    if (v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = *(a1 + 32);
        if (!v9)
        {
LABEL_16:
          v10 = v6;
          google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>(v8);
          v6 = v10;
          v9 = v11;
          *(a1 + 32) = v11;
        }
      }

      else
      {
        v9 = *(a1 + 32);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      result = google::protobuf::internal::ParseContext::ParseMessage(a3, v9, v6);
      goto LABEL_3;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      *(a3 + 20) = v7 - 1;
      return v6;
    }

    result = google::protobuf::internal::UnknownFieldParse(v7, 0, v6, a3);
LABEL_3:
    if (!result)
    {
      return result;
    }
  }

  if (v14 >= 1 && !*(a3 + 2))
  {
    return 0;
  }

  return result;
}

void operations_research::MPModelProto::Impl_::~Impl_(operations_research::MPModelProto::Impl_ *this)
{
  v3 = *(this + 10);
  v2 = (this + 80);
  if (v3)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v2);
  }

  if (*(this + 7))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 56));
  }

  if (*(this + 4))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 32));
  }

  if (*(this + 1))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 8));
  }
}

void google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapField(uint64_t a1)
{
  if (*(a1 + 20) != 1)
  {
    v1 = a1;
    google::protobuf::internal::UntypedMapBase::ClearTable(a1 + 16, 0x400700010, 0);
    a1 = v1;
  }

  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);
}

void google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapField(uint64_t a1)
{
  if (*(a1 + 20) != 1)
  {
    v1 = a1;
    google::protobuf::internal::UntypedMapBase::ClearTable(a1 + 16, 0x400500010, 0);
    a1 = v1;
  }

  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::MergeFromImpl(atomic_ullong *a1, atomic_ullong *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a2);
  google::protobuf::internal::MapMergeFrom<int,operations_research::MPVariableProto>((a1 + 2), (a2 + 2));

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t google::protobuf::internal::MapMergeFrom<int,operations_research::MPVariableProto>(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = *(a2 + 12);
  if (v2 != *(a2 + 4))
  {
    v4 = result;
    v5 = *(*(a2 + 16) + 8 * v2);
    if (v5)
    {
      v5 = *(**(v5 - 1) + 32);
    }

    do
    {
      result = google::protobuf::Map<int,operations_research::MPVariableProto>::TryEmplaceInternal<int const&>(v4, (v5 + 8), v9);
      v6 = v9[0];
      if (v5 != v9[0])
      {
        operations_research::MPVariableProto::Clear((v9[0] + 16));
        result = operations_research::MPVariableProto::MergeImpl((v6 + 16), (v5 + 16), v7);
      }

      v5 = *v5;
      if (!v5)
      {
        v2 = (v2 + 1);
        v8 = *(a2 + 4);
        if (v8 <= v2)
        {
          return result;
        }

        while (1)
        {
          v5 = *(*(a2 + 16) + 8 * v2);
          if (v5)
          {
            break;
          }

          if (v8 == ++v2)
          {
            return result;
          }
        }

        if (v5)
        {
          v5 = *(**(v5 - 1) + 32);
        }
      }
    }

    while (v5);
  }

  return result;
}

uint64_t google::protobuf::Map<int,operations_research::MPVariableProto>::TryEmplaceInternal<int const&>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *a2;
  v7 = *(result + 4);
  v8 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(result + 8) ^ v6);
  v9 = (v7 - 1) & (((v8 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v8));
  v10 = *(*(result + 16) + 8 * v9);
  if (v10)
  {
    v11 = (*(*(result + 16) + 8 * v9) & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    do
    {
      if (*(v10 + 8) == v6)
      {
        break;
      }

      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    result = google::protobuf::internal::UntypedMapBase::FindFromTree(result, v9, 0, v6, 0);
    v10 = result;
    v9 = v12;
  }

  if (v10)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v7 = *(v4 + 4);
LABEL_12:
  v14 = (*v4 + 1);
  v15 = (v7 & 0xFFFFFFFE) - ((v7 >> 2) & 0x3FFFFFFC);
  if (v15 < v14)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v23 = 2 * v7;
      goto LABEL_38;
    }
  }

  else if (v7 >= 3 && v15 >> 2 >= v14)
  {
    v24 = 0;
    v25 = v14 + (v14 >> 2) + 1;
    do
    {
      ++v24;
    }

    while (v25 << v24 < v15);
    v23 = v7 >> v24 <= 2 ? 2 : v7 >> v24;
    if (v23 != v7)
    {
LABEL_38:
      google::protobuf::internal::KeyMapBase<unsigned int>::Resize(v4, v23);
      v26 = *a2;
      v27 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(v4 + 8) ^ v26);
      v9 = (*(v4 + 4) - 1) & (((v27 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v27));
      if (*(*(v4 + 16) + 8 * v9))
      {
        google::protobuf::internal::UntypedMapBase::FindFromTree(v4, v9, 0, v26, 0);
        v9 = v28;
      }
    }
  }

  v16 = *(v4 + 24);
  if (v16)
  {
    result = google::protobuf::Arena::AllocateForArray(v16, 0x50uLL);
  }

  else
  {
    result = operator new(0x50uLL);
  }

  v10 = result;
  *(result + 8) = *a2;
  v17 = *(v4 + 24);
  *(result + 16) = off_284F3A930;
  *(result + 24) = v17;
  *(result + 32) = 0;
  *(result + 64) = xmmword_23CE389E0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = &google::protobuf::internal::fixed_address_empty_string;
  v18 = *(v4 + 16);
  v19 = *(v18 + 8 * v9);
  if (v19)
  {
    if (v19)
    {
      goto LABEL_23;
    }

    v20 = 0;
    v21 = *(v18 + 8 * v9);
    do
    {
      ++v20;
      v21 = *v21;
    }

    while (v21);
    if (v20 > 7)
    {
LABEL_23:
      result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(v4, v9, google::protobuf::internal::KeyMapBase<unsigned int>::NodeToVariantKey, result);
    }

    else
    {
      *result = v19;
      *(v18 + 8 * v9) = result;
    }
  }

  else
  {
    *result = 0;
    *(v18 + 8 * v9) = result;
    v22 = *(v4 + 12);
    if (v22 >= v9)
    {
      v22 = v9;
    }

    *(v4 + 12) = v22;
  }

  ++*v4;
  v13 = 1;
LABEL_29:
  *a3 = v10;
  *(a3 + 8) = v4;
  *(a3 + 16) = v9;
  *(a3 + 24) = v13;
  return result;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::MergeFromImpl(atomic_ullong *a1, atomic_ullong *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a2);
  google::protobuf::internal::MapMergeFrom<int,operations_research::MPConstraintProto>((a1 + 2), (a2 + 2));

  return google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
}

uint64_t google::protobuf::internal::MapMergeFrom<int,operations_research::MPConstraintProto>(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = *(a2 + 12);
  if (v2 != *(a2 + 4))
  {
    v4 = result;
    v5 = *(*(a2 + 16) + 8 * v2);
    if (v5)
    {
      v5 = *(**(v5 - 1) + 32);
    }

    do
    {
      result = google::protobuf::Map<int,operations_research::MPConstraintProto>::TryEmplaceInternal<int const&>(v4, (v5 + 8), v9);
      v6 = v9[0];
      if (v5 != v9[0])
      {
        operations_research::MPConstraintProto::Clear((v9[0] + 16));
        result = operations_research::MPConstraintProto::MergeImpl((v6 + 16), (v5 + 16), v7);
      }

      v5 = *v5;
      if (!v5)
      {
        v2 = (v2 + 1);
        v8 = *(a2 + 4);
        if (v8 <= v2)
        {
          return result;
        }

        while (1)
        {
          v5 = *(*(a2 + 16) + 8 * v2);
          if (v5)
          {
            break;
          }

          if (v8 == ++v2)
          {
            return result;
          }
        }

        if (v5)
        {
          v5 = *(**(v5 - 1) + 32);
        }
      }
    }

    while (v5);
  }

  return result;
}

uint64_t google::protobuf::Map<int,operations_research::MPConstraintProto>::TryEmplaceInternal<int const&>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *a2;
  v7 = *(result + 4);
  v8 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(result + 8) ^ v6);
  v9 = (v7 - 1) & (((v8 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v8));
  v10 = *(*(result + 16) + 8 * v9);
  if (v10)
  {
    v11 = (*(*(result + 16) + 8 * v9) & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    do
    {
      if (*(v10 + 8) == v6)
      {
        break;
      }

      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    result = google::protobuf::internal::UntypedMapBase::FindFromTree(result, v9, 0, v6, 0);
    v10 = result;
    v9 = v12;
  }

  if (v10)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v7 = *(v4 + 4);
LABEL_12:
  v14 = (*v4 + 1);
  v15 = (v7 & 0xFFFFFFFE) - ((v7 >> 2) & 0x3FFFFFFC);
  if (v15 < v14)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v23 = 2 * v7;
      goto LABEL_38;
    }
  }

  else if (v7 >= 3 && v15 >> 2 >= v14)
  {
    v24 = 0;
    v25 = v14 + (v14 >> 2) + 1;
    do
    {
      ++v24;
    }

    while (v25 << v24 < v15);
    v23 = v7 >> v24 <= 2 ? 2 : v7 >> v24;
    if (v23 != v7)
    {
LABEL_38:
      google::protobuf::internal::KeyMapBase<unsigned int>::Resize(v4, v23);
      v26 = *a2;
      v27 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(v4 + 8) ^ v26);
      v9 = (*(v4 + 4) - 1) & (((v27 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v27));
      if (*(*(v4 + 16) + 8 * v9))
      {
        google::protobuf::internal::UntypedMapBase::FindFromTree(v4, v9, 0, v26, 0);
        v9 = v28;
      }
    }
  }

  v16 = *(v4 + 24);
  if (v16)
  {
    result = google::protobuf::Arena::AllocateForArray(v16, 0x70uLL);
  }

  else
  {
    result = operator new(0x70uLL);
  }

  v10 = result;
  *(result + 8) = *a2;
  v17 = *(v4 + 24);
  *(result + 16) = off_284F3AC08;
  *(result + 24) = v17;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = v17;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = v17;
  *(result + 80) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 96) = xmmword_23CE389E0;
  *(result + 88) = 0;
  v18 = *(v4 + 16);
  v19 = *(v18 + 8 * v9);
  if (v19)
  {
    if (v19)
    {
      goto LABEL_23;
    }

    v20 = 0;
    v21 = *(v18 + 8 * v9);
    do
    {
      ++v20;
      v21 = *v21;
    }

    while (v21);
    if (v20 > 7)
    {
LABEL_23:
      result = google::protobuf::internal::UntypedMapBase::InsertUniqueInTree(v4, v9, google::protobuf::internal::KeyMapBase<unsigned int>::NodeToVariantKey, result);
    }

    else
    {
      *result = v19;
      *(v18 + 8 * v9) = result;
    }
  }

  else
  {
    *result = 0;
    *(v18 + 8 * v9) = result;
    v22 = *(v4 + 12);
    if (v22 >= v9)
    {
      v22 = v9;
    }

    *(v4 + 12) = v22;
  }

  ++*v4;
  v13 = 1;
LABEL_29:
  *a3 = v10;
  *(a3 + 8) = v4;
  *(a3 + 16) = v9;
  *(a3 + 24) = v13;
  return result;
}

uint64_t google::protobuf::Map<int,operations_research::MPConstraintProto>::~Map(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    google::protobuf::internal::UntypedMapBase::ClearTable(result, 0x400700010, 0);
    return v1;
  }

  return result;
}

uint64_t google::protobuf::Map<int,operations_research::MPVariableProto>::~Map(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    google::protobuf::internal::UntypedMapBase::ClearTable(result, 0x400500010, 0);
    return v1;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::PartialVariableAssignment>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F3A860;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
  }

  else
  {
    result = operator new(0x40uLL);
    *result = off_284F3A860;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  *(result + 56) = 0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::OptionalDouble>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    result[1] = a1;
  }

  else
  {
    result = operator new(0x20uLL);
    result[1] = 0;
  }

  *result = off_284F3A8C8;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPSosConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F3A998;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
    *(v2 + 56) = 0;
  }

  else
  {
    v4 = operator new(0x40uLL);
    *v4 = off_284F3A998;
    *(v4 + 1) = 0;
    result = 0.0;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 44) = 0u;
  }

  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::MPSolveInfo>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    result[1] = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    result[1] = 0;
  }

  *result = off_284F3AA00;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPSolution>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F3AA68;
    v2[1] = a1;
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = a1;
    v2[5] = 0;
  }

  else
  {
    v4 = operator new(0x30uLL);
    *v4 = off_284F3AA68;
    v4[1] = 0;
    result = 0.0;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
  }

  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPQuadraticObjective>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F3AAD0;
    *(v2 + 8) = a1;
    result = 0.0;
    *(v2 + 16) = 0;
    *(v2 + 24) = a1;
    *(v2 + 32) = 0;
    *(v2 + 40) = a1;
    *(v2 + 48) = 0;
    *(v2 + 56) = a1;
  }

  else
  {
    v2 = operator new(0x48uLL);
    *v2 = off_284F3AAD0;
    *(v2 + 8) = 0;
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
  }

  *(v2 + 64) = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPQuadraticConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F3AB38;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
    *(v2 + 56) = 0;
    *(v2 + 64) = a1;
    *(v2 + 72) = 0;
    *(v2 + 80) = a1;
    *(v2 + 88) = 0;
    *(v2 + 96) = a1;
  }

  else
  {
    v2 = operator new(0x78uLL);
    *v2 = off_284F3AB38;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0;
  }

  result = -INFINITY;
  *(v2 + 104) = xmmword_23CE389E0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::MPModelProto_Annotation>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    result[1] = a1;
  }

  else
  {
    result = operator new(0x38uLL);
    result[1] = 0;
  }

  *result = off_284F3ABA0;
  result[2] = 0;
  result[3] = &google::protobuf::internal::fixed_address_empty_string;
  result[4] = &google::protobuf::internal::fixed_address_empty_string;
  result[5] = &google::protobuf::internal::fixed_address_empty_string;
  result[6] = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPArrayWithConstantConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F3AC70;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
  }

  else
  {
    v2 = operator new(0x38uLL);
    *v2 = off_284F3AC70;
    *(v2 + 8) = 0;
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
  }

  *(v2 + 48) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::MPArrayConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F3ACD8;
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
    *result = off_284F3ACD8;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::MPAbsConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    result[1] = a1;
  }

  else
  {
    result = operator new(0x20uLL);
    result[1] = 0;
  }

  *result = off_284F3AD40;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPSolverCommonParameters>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *(v2 + 8) = a1;
  }

  else
  {
    v2 = operator new(0x40uLL);
    *(v2 + 8) = 0;
  }

  *v2 = off_284F3ADA8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 44) = 0u;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::MPSolutionResponse>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F3AE10;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = a1;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
    *(result + 64) = a1;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = a1;
  }

  else
  {
    result = operator new(0x90uLL);
    *result = off_284F3AE10;
    *(result + 8) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
  }

  *(result + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 104) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 136) = 99;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 112) = 0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::MPIndicatorConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    result[1] = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    result[1] = 0;
  }

  *result = off_284F3AF48;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPModelDeltaProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *(v2 + 8) = a1;
  }

  else
  {
    v2 = operator new(0x80uLL);
    *(v2 + 8) = 0;
  }

  *v2 = off_284F3AFB0;
  *(v2 + 16) = 0;
  *(v2 + 24) = google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::kVTable;
  *(v2 + 32) = a1;
  *&result = 0x100000000;
  *(v2 + 40) = xmmword_23CE389F0;
  *(v2 + 56) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v2 + 64) = a1;
  *(v2 + 72) = google::protobuf::internal::MapField<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::kVTable;
  *(v2 + 80) = a1;
  *(v2 + 88) = xmmword_23CE389F0;
  *(v2 + 104) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v2 + 112) = a1;
  *(v2 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::MPGeneralConstraintProto>(google::protobuf::Arena *a1)
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

  *result = off_284F3B018;
  *(result + 16) = 0;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 40) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::MPModelProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F3B080;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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
  }

  else
  {
    result = operator new(0xA0uLL);
    *result = off_284F3B080;
    *(result + 8) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0;
  }

  *(result + 120) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPModelRequest>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *(v2 + 8) = a1;
  }

  else
  {
    v2 = operator new(0x48uLL);
    *(v2 + 8) = 0;
  }

  *v2 = off_284F3B0E8;
  *(v2 + 16) = 0;
  *(v2 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(v2 + 64) = 2;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

void *google::protobuf::internal::MapEntry<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse,int,operations_research::MPVariableProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapEntry(void *a1)
{
  *a1 = &unk_284F3B628;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if (v4)
  {
    if (*(v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      return a1;
    }

    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  else if (v3)
  {
    return a1;
  }

  v6 = a1[4];
  if (!v6)
  {
    return a1;
  }

  if (*(v6 + 8))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v6 + 8));
  }

  google::protobuf::internal::ArenaStringPtr::Destroy((v6 + 24));
  MEMORY[0x23EED9460](v6, 0x1081C405060A6D7);
  return a1;
}

void *google::protobuf::internal::MapEntry<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse,int,operations_research::MPConstraintProto,(google::protobuf::internal::WireFormatLite::FieldType)5,(google::protobuf::internal::WireFormatLite::FieldType)11>::~MapEntry(void *a1)
{
  *a1 = &unk_284F3B690;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if (v4)
  {
    if (*(v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      return a1;
    }

    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  else if (v3)
  {
    return a1;
  }

  v6 = a1[4];
  if (!v6)
  {
    return a1;
  }

  if (*(v6 + 8))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v6 + 8));
  }

  google::protobuf::internal::ArenaStringPtr::Destroy((v6 + 64));
  if (*(v6 + 52) >= 1)
  {
    v7 = *(v6 + 56);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v6 + 28) >= 1)
  {
    v10 = *(v6 + 32);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  MEMORY[0x23EED9460](v6, 0x1081C404C94F22CLL);
  return a1;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::LookupMapValueImpl(uint64_t a1, google::protobuf::MapKey *a2, void *a3)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  Int32Value = google::protobuf::MapKey::GetInt32Value(a2);
  v7 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 24) ^ Int32Value);
  v8 = (*(a1 + 20) - 1) & (((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v7));
  v9 = *(*(a1 + 32) + 8 * v8);
  if (v9)
  {
    v10 = (*(*(a1 + 32) + 8 * v8) & 1) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    while (*(v9 + 8) != Int32Value)
    {
      v9 = *v9;
      if (!v9)
      {
        return 0;
      }
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      v11 = 1;
      return !v11;
    }

    v9 = google::protobuf::internal::UntypedMapBase::FindFromTree(a1 + 16, v8, 0, Int32Value, 0);
  }

  v11 = v9 == 0;
  if (!a3 || !v9)
  {
    return !v11;
  }

  *a3 = v9 + 16;
  return 1;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::DeleteMapValueImpl(uint64_t a1, google::protobuf::MapKey *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
  Int32Value = google::protobuf::MapKey::GetInt32Value(a2);
  v5 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 24) ^ Int32Value);
  v6 = (*(a1 + 20) - 1) & (((v5 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v5));
  v7 = *(*(a1 + 32) + 8 * v6);
  if (v7)
  {
    v8 = (*(*(a1 + 32) + 8 * v6) & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    while (*(v7 + 8) != Int32Value)
    {
      v7 = *v7;
      if (!v7)
      {
        return 0;
      }
    }

    goto LABEL_13;
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = google::protobuf::internal::UntypedMapBase::FindFromTree(a1 + 16, v6, 0, Int32Value, 0);
  if (result)
  {
    v7 = result;
LABEL_13:
    v11[0] = v7;
    v11[1] = a1 + 16;
    v12 = v6;
    google::protobuf::Map<int,operations_research::MPVariableProto>::erase(a1 + 16, v11, &v10);
    return 1;
  }

  return result;
}

uint64_t *google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::SetMapIteratorValueImpl(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 + 8);
    v3 = *(result + 14);
    if (v3 != 1)
    {
      if (v3 == 9 && *(result + 55) < 0)
      {
        v4 = result;
        operator delete(result[4]);
        result = v4;
      }

      *(result + 14) = 1;
    }

    *(result + 8) = v2;
    result[8] = v1 + 16;
  }

  return result;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::InsertOrLookupMapValueNoSyncImpl(uint64_t a1, google::protobuf::MapKey *a2, void *a3)
{
  Int32Value = google::protobuf::MapKey::GetInt32Value(a2);
  google::protobuf::Map<int,operations_research::MPVariableProto>::TryEmplaceInternal<int const&>(a1 + 16, &Int32Value, v7);
  *a3 = v7[0] + 16;
  return v8;
}

void google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::ClearMapNoSyncImpl(uint64_t a1)
{
  if (*(a1 + 20) != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(a1 + 16, 0x10400500010, 0);
  }
}

void google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::SwapImpl(atomic_ullong *a1, atomic_ullong *a2, google::protobuf::internal::MapFieldBase *a3)
{
  google::protobuf::internal::MapFieldBase::SwapImpl(a1, a2, a3);

  google::protobuf::Map<int,operations_research::MPVariableProto>::swap((a1 + 2), (a2 + 2));
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::UnsafeShallowSwapImpl(uint64_t a1, uint64_t a2)
{
  result = google::protobuf::internal::MapFieldBase::InternalSwap(a1, a2);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 20);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = v6;
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(a1 + 28);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v9;
  v10 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  return result;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPVariableProto>::SpaceUsedExcludingSelfNoLockImpl(uint64_t a1)
{
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if ((explicit & 1) == 0)
  {
    return google::protobuf::Map<int,operations_research::MPVariableProto>::SpaceUsedExcludingSelfLong(a1 + 16);
  }

  v4 = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(explicit - 1);
  return v4 + google::protobuf::Map<int,operations_research::MPVariableProto>::SpaceUsedExcludingSelfLong(a1 + 16);
}

void google::protobuf::Map<int,operations_research::MPVariableProto>::erase(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  v9 = *v6;
  LODWORD(v10) = v7;
  if (!*v6)
  {
    v10 = v7 + 1;
    v11 = *(v5 + 4);
    if (v11 <= v10)
    {
LABEL_5:
      LODWORD(v10) = 0;
      v9 = 0;
    }

    else
    {
      while (1)
      {
        v9 = *(*(v5 + 16) + 8 * v10);
        if (v9)
        {
          break;
        }

        if (v11 == ++v10)
        {
          goto LABEL_5;
        }
      }

      if (v9)
      {
        v9 = *(**(v9 - 1) + 32);
      }
    }
  }

  *a3 = v9;
  *(a3 + 8) = v5;
  *(a3 + 16) = v10;
  *(a3 + 20) = v8;
  google::protobuf::internal::KeyMapBase<unsigned int>::erase_no_destroy(a1, v7, v6);
  if (!*(a1 + 24))
  {
    if (v6[3])
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v6 + 3);
    }

    google::protobuf::internal::ArenaStringPtr::Destroy(v6 + 5);
    if (!*(a1 + 24))
    {

      operator delete(v6);
    }
  }
}

void google::protobuf::Map<int,operations_research::MPVariableProto>::swap(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    v4 = *a1;
    *a1 = *a2;
    *a2 = v4;
    v5 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
    v9 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v9;
  }

  else
  {
    google::protobuf::Map<int,operations_research::MPVariableProto>::Map(v10, 0, a1);
    google::protobuf::Map<int,operations_research::MPVariableProto>::operator=(a1, a2);
    google::protobuf::Map<int,operations_research::MPVariableProto>::operator=(a2, v10);
    if (v10[1] != 1)
    {
      google::protobuf::internal::UntypedMapBase::ClearTable(v10, 0x400500010, 0);
    }
  }
}

uint64_t google::protobuf::Map<int,operations_research::MPVariableProto>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 4) != 1)
    {
      google::protobuf::internal::UntypedMapBase::ClearTable(a1, 0x10400500010, 0);
    }

    LODWORD(v4) = *(a2 + 12);
    if (v4 != *(a2 + 4))
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      if (v6)
      {
        v6 = *(**(v6 - 1) + 32);
      }

      do
      {
        google::protobuf::Map<int,operations_research::MPVariableProto>::TryEmplaceInternal<int const&>(a1, (v6 + 8), v10);
        if (v11 == 1)
        {
          v7 = v10[0];
          if (v10[0] != v6)
          {
            operations_research::MPVariableProto::Clear((v10[0] + 16));
            operations_research::MPVariableProto::MergeImpl((v7 + 16), (v6 + 16), v8);
          }
        }

        v6 = *v6;
        if (!v6)
        {
          v4 = (v4 + 1);
          v9 = *(a2 + 4);
          if (v9 <= v4)
          {
            return a1;
          }

          while (1)
          {
            v6 = *(*(a2 + 16) + 8 * v4);
            if (v6)
            {
              break;
            }

            if (v9 == ++v4)
            {
              return a1;
            }
          }

          if (v6)
          {
            v6 = *(**(v6 - 1) + 32);
          }
        }
      }

      while (v6);
    }
  }

  return a1;
}

uint64_t google::protobuf::Map<int,operations_research::MPVariableProto>::Map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = xmmword_23CE389F0;
  *(a1 + 16) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 24) = a2;
  LODWORD(v4) = *(a3 + 12);
  if (v4 != *(a3 + 4))
  {
    v7 = *(*(a3 + 16) + 8 * v4);
    if (v7)
    {
      v7 = *(**(v7 - 1) + 32);
    }

    do
    {
      google::protobuf::Map<int,operations_research::MPVariableProto>::TryEmplaceInternal<int const&>(a1, (v7 + 8), v11);
      if (v12 == 1)
      {
        v8 = v11[0];
        if (v11[0] != v7)
        {
          operations_research::MPVariableProto::Clear((v11[0] + 16));
          operations_research::MPVariableProto::MergeImpl((v8 + 16), (v7 + 16), v9);
        }
      }

      v7 = *v7;
      if (!v7)
      {
        v4 = (v4 + 1);
        v10 = *(a3 + 4);
        if (v10 <= v4)
        {
          return a1;
        }

        while (1)
        {
          v7 = *(*(a3 + 16) + 8 * v4);
          if (v7)
          {
            break;
          }

          if (v10 == ++v4)
          {
            return a1;
          }
        }

        if (v7)
        {
          v7 = *(**(v7 - 1) + 32);
        }
      }
    }

    while (v7);
  }

  return a1;
}

uint64_t google::protobuf::Map<int,operations_research::MPVariableProto>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = google::protobuf::internal::UntypedMapBase::SpaceUsedInTable(a1, 80);
  LODWORD(v3) = *(a1 + 12);
  if (v3 != *(a1 + 4))
  {
    v6 = *(*(a1 + 16) + 8 * v3);
    if (v6)
    {
      v6 = *(**(v6 - 1) + 32);
    }

    v4 = 0;
    while (1)
    {
      v4 = v4 + google::protobuf::Message::SpaceUsedLong((v6 + 2)) - 64;
      v6 = *v6;
      if (!v6)
      {
        v3 = (v3 + 1);
        v7 = *(a1 + 4);
        if (v7 <= v3)
        {
          return v4 + v2;
        }

        while (1)
        {
          v6 = *(*(a1 + 16) + 8 * v3);
          if (v6)
          {
            break;
          }

          if (v7 == ++v3)
          {
            return v4 + v2;
          }
        }

        if (v6)
        {
          v6 = *(**(v6 - 1) + 32);
        }
      }

      if (!v6)
      {
        return v4 + v2;
      }
    }
  }

  v4 = 0;
  return v4 + v2;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::LookupMapValueImpl(uint64_t a1, google::protobuf::MapKey *a2, void *a3)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  Int32Value = google::protobuf::MapKey::GetInt32Value(a2);
  v7 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 24) ^ Int32Value);
  v8 = (*(a1 + 20) - 1) & (((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v7));
  v9 = *(*(a1 + 32) + 8 * v8);
  if (v9)
  {
    v10 = (*(*(a1 + 32) + 8 * v8) & 1) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    while (*(v9 + 8) != Int32Value)
    {
      v9 = *v9;
      if (!v9)
      {
        return 0;
      }
    }
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      v11 = 1;
      return !v11;
    }

    v9 = google::protobuf::internal::UntypedMapBase::FindFromTree(a1 + 16, v8, 0, Int32Value, 0);
  }

  v11 = v9 == 0;
  if (!a3 || !v9)
  {
    return !v11;
  }

  *a3 = v9 + 16;
  return 1;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::DeleteMapValueImpl(uint64_t a1, google::protobuf::MapKey *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
  Int32Value = google::protobuf::MapKey::GetInt32Value(a2);
  v5 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (*(a1 + 24) ^ Int32Value);
  v6 = (*(a1 + 20) - 1) & (((v5 * 0x9DDFEA08EB382D69) >> 64) ^ (-348639895 * v5));
  v7 = *(*(a1 + 32) + 8 * v6);
  if (v7)
  {
    v8 = (*(*(a1 + 32) + 8 * v6) & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    while (*(v7 + 8) != Int32Value)
    {
      v7 = *v7;
      if (!v7)
      {
        return 0;
      }
    }

    goto LABEL_13;
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = google::protobuf::internal::UntypedMapBase::FindFromTree(a1 + 16, v6, 0, Int32Value, 0);
  if (result)
  {
    v7 = result;
LABEL_13:
    google::protobuf::internal::KeyMapBase<unsigned int>::erase_no_destroy(a1 + 16, v6, v7);
    google::protobuf::Map<int,operations_research::MPConstraintProto>::DestroyNode(a1 + 16, v7);
    return 1;
  }

  return result;
}

uint64_t *google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::SetMapIteratorValueImpl(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 + 8);
    v3 = *(result + 14);
    if (v3 != 1)
    {
      if (v3 == 9 && *(result + 55) < 0)
      {
        v4 = result;
        operator delete(result[4]);
        result = v4;
      }

      *(result + 14) = 1;
    }

    *(result + 8) = v2;
    result[8] = v1 + 16;
  }

  return result;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::InsertOrLookupMapValueNoSyncImpl(uint64_t a1, google::protobuf::MapKey *a2, void *a3)
{
  Int32Value = google::protobuf::MapKey::GetInt32Value(a2);
  google::protobuf::Map<int,operations_research::MPConstraintProto>::TryEmplaceInternal<int const&>(a1 + 16, &Int32Value, v7);
  *a3 = v7[0] + 16;
  return v8;
}

void google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::ClearMapNoSyncImpl(uint64_t a1)
{
  if (*(a1 + 20) != 1)
  {
    google::protobuf::internal::UntypedMapBase::ClearTable(a1 + 16, 0x10400700010, 0);
  }
}

void google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::SwapImpl(atomic_ullong *a1, atomic_ullong *a2, google::protobuf::internal::MapFieldBase *a3)
{
  google::protobuf::internal::MapFieldBase::SwapImpl(a1, a2, a3);

  google::protobuf::Map<int,operations_research::MPConstraintProto>::swap((a1 + 2), (a2 + 2));
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::UnsafeShallowSwapImpl(uint64_t a1, uint64_t a2)
{
  result = google::protobuf::internal::MapFieldBase::InternalSwap(a1, a2);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 20);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = v6;
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(a1 + 28);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v9;
  v10 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  return result;
}

uint64_t google::protobuf::internal::TypeDefinedMapFieldBase<int,operations_research::MPConstraintProto>::SpaceUsedExcludingSelfNoLockImpl(uint64_t a1)
{
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if ((explicit & 1) == 0)
  {
    return google::protobuf::Map<int,operations_research::MPConstraintProto>::SpaceUsedExcludingSelfLong(a1 + 16);
  }

  v4 = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(explicit - 1);
  return v4 + google::protobuf::Map<int,operations_research::MPConstraintProto>::SpaceUsedExcludingSelfLong(a1 + 16);
}

void google::protobuf::Map<int,operations_research::MPConstraintProto>::DestroyNode(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((a2 + 24));
    }

    google::protobuf::internal::ArenaStringPtr::Destroy((a2 + 80));
    if (*(a2 + 68) >= 1)
    {
      v4 = *(a2 + 72);
      v6 = *(v4 - 8);
      v5 = (v4 - 8);
      if (!v6)
      {
        operator delete(v5);
      }
    }

    if (*(a2 + 44) < 1 || (v7 = *(a2 + 48), v9 = *(v7 - 8), v8 = (v7 - 8), v9))
    {
      if (*(a1 + 24))
      {
        return;
      }
    }

    else
    {
      operator delete(v8);
      if (*(a1 + 24))
      {
        return;
      }
    }

    operator delete(a2);
  }
}

void google::protobuf::Map<int,operations_research::MPConstraintProto>::swap(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    v4 = *a1;
    *a1 = *a2;
    *a2 = v4;
    v5 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
    v9 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v9;
  }

  else
  {
    google::protobuf::Map<int,operations_research::MPConstraintProto>::Map(v10, 0, a1);
    google::protobuf::Map<int,operations_research::MPConstraintProto>::operator=(a1, a2);
    google::protobuf::Map<int,operations_research::MPConstraintProto>::operator=(a2, v10);
    if (v10[1] != 1)
    {
      google::protobuf::internal::UntypedMapBase::ClearTable(v10, 0x400700010, 0);
    }
  }
}

uint64_t google::protobuf::Map<int,operations_research::MPConstraintProto>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 4) != 1)
    {
      google::protobuf::internal::UntypedMapBase::ClearTable(a1, 0x10400700010, 0);
    }

    LODWORD(v4) = *(a2 + 12);
    if (v4 != *(a2 + 4))
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      if (v6)
      {
        v6 = *(**(v6 - 1) + 32);
      }

      do
      {
        google::protobuf::Map<int,operations_research::MPConstraintProto>::TryEmplaceInternal<int const&>(a1, (v6 + 8), v10);
        if (v11 == 1)
        {
          v7 = v10[0];
          if (v10[0] != v6)
          {
            operations_research::MPConstraintProto::Clear((v10[0] + 16));
            operations_research::MPConstraintProto::MergeImpl((v7 + 16), (v6 + 16), v8);
          }
        }

        v6 = *v6;
        if (!v6)
        {
          v4 = (v4 + 1);
          v9 = *(a2 + 4);
          if (v9 <= v4)
          {
            return a1;
          }

          while (1)
          {
            v6 = *(*(a2 + 16) + 8 * v4);
            if (v6)
            {
              break;
            }

            if (v9 == ++v4)
            {
              return a1;
            }
          }

          if (v6)
          {
            v6 = *(**(v6 - 1) + 32);
          }
        }
      }

      while (v6);
    }
  }

  return a1;
}

uint64_t google::protobuf::Map<int,operations_research::MPConstraintProto>::Map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = xmmword_23CE389F0;
  *(a1 + 16) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 24) = a2;
  LODWORD(v4) = *(a3 + 12);
  if (v4 != *(a3 + 4))
  {
    v7 = *(*(a3 + 16) + 8 * v4);
    if (v7)
    {
      v7 = *(**(v7 - 1) + 32);
    }

    do
    {
      google::protobuf::Map<int,operations_research::MPConstraintProto>::TryEmplaceInternal<int const&>(a1, (v7 + 8), v11);
      if (v12 == 1)
      {
        v8 = v11[0];
        if (v11[0] != v7)
        {
          operations_research::MPConstraintProto::Clear((v11[0] + 16));
          operations_research::MPConstraintProto::MergeImpl((v8 + 16), (v7 + 16), v9);
        }
      }

      v7 = *v7;
      if (!v7)
      {
        v4 = (v4 + 1);
        v10 = *(a3 + 4);
        if (v10 <= v4)
        {
          return a1;
        }

        while (1)
        {
          v7 = *(*(a3 + 16) + 8 * v4);
          if (v7)
          {
            break;
          }

          if (v10 == ++v4)
          {
            return a1;
          }
        }

        if (v7)
        {
          v7 = *(**(v7 - 1) + 32);
        }
      }
    }

    while (v7);
  }

  return a1;
}

uint64_t google::protobuf::Map<int,operations_research::MPConstraintProto>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = google::protobuf::internal::UntypedMapBase::SpaceUsedInTable(a1, 112);
  LODWORD(v3) = *(a1 + 12);
  if (v3 != *(a1 + 4))
  {
    v6 = *(*(a1 + 16) + 8 * v3);
    if (v6)
    {
      v6 = *(**(v6 - 1) + 32);
    }

    v4 = 0;
    while (1)
    {
      v4 = v4 + google::protobuf::Message::SpaceUsedLong((v6 + 2)) - 96;
      v6 = *v6;
      if (!v6)
      {
        v3 = (v3 + 1);
        v7 = *(a1 + 4);
        if (v7 <= v3)
        {
          return v4 + v2;
        }

        while (1)
        {
          v6 = *(*(a1 + 16) + 8 * v3);
          if (v6)
          {
            break;
          }

          if (v7 == ++v3)
          {
            return v4 + v2;
          }
        }

        if (v6)
        {
          v6 = *(**(v6 - 1) + 32);
        }
      }

      if (!v6)
      {
        return v4 + v2;
      }
    }
  }

  v4 = 0;
  return v4 + v2;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPIndicatorConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F3AF48;
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
      v11 = google::protobuf::Arena::CopyConstruct<operations_research::MPConstraintProto>(v8, v7);
      goto LABEL_12;
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F3AF48;
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

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPSosConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPSosConstraint::MPSosConstraint(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::MPSosConstraint::MPSosConstraint(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPQuadraticConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPQuadraticConstraint::MPQuadraticConstraint(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x78uLL);
    return operations_research::MPQuadraticConstraint::MPQuadraticConstraint(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPAbsConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    v5 = (v4 + 8);
    *v4 = off_284F3AD40;
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
    *v4 = off_284F3AD40;
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

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPArrayConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F3ACD8;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 24) = 0;
    *(v4 + 32) = a1;
    v6 = *(a2 + 24);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 24, 0, *(a2 + 24));
      *(v4 + 24) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 32);
        v8 = *(a2 + 32);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
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
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F3ACD8;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 28) = 0;
    *(v4 + 20) = 0;
    *(v4 + 36) = 0;
    v20 = *(a2 + 24);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 24, 0, *(a2 + 24));
      *(v4 + 24) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 32);
        v22 = *(a2 + 32);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 40) = *(a2 + 40);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPArrayWithConstantConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F3AC70;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 24) = 0;
    *(v4 + 32) = a1;
    v6 = *(a2 + 24);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 24, 0, *(a2 + 24));
      *(v4 + 24) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 32);
        v8 = *(a2 + 32);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
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
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x38uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F3AC70;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 28) = 0;
    *(v4 + 20) = 0;
    *(v4 + 36) = 0;
    v20 = *(a2 + 24);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 24, 0, *(a2 + 24));
      *(v4 + 24) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 32);
        v22 = *(a2 + 32);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  v33 = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 40) = v33;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPConstraintProto::MPConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x60uLL);
    return operations_research::MPConstraintProto::MPConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::PartialVariableAssignment>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::PartialVariableAssignment::PartialVariableAssignment(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::PartialVariableAssignment::PartialVariableAssignment(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPQuadraticObjective>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPQuadraticObjective::MPQuadraticObjective(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x48uLL);
    return operations_research::MPQuadraticObjective::MPQuadraticObjective(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPVariableProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F3A930;
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
    v4 = operator new(0x40uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F3A930;
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
  v10 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v10;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPGeneralConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPGeneralConstraintProto::MPGeneralConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x30uLL);
    return operations_research::MPGeneralConstraintProto::MPGeneralConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPModelProto_Annotation>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPModelProto_Annotation::MPModelProto_Annotation(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x38uLL);
    return operations_research::MPModelProto_Annotation::MPModelProto_Annotation(v6, 0, a2);
  }
}

void *google::protobuf::Arena::CopyConstruct<operations_research::OptionalDouble>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    v4[1] = a1;
    v5 = (v4 + 1);
    *v4 = off_284F3A8C8;
    v4[2] = 0;
    v4[3] = 0;
    v6 = *(a2 + 16);
    if (v6)
    {
      v4[3] = *(a2 + 24);
    }

    *(v4 + 4) = v6;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_9:
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    v4[1] = 0;
    v5 = (v4 + 1);
    *v4 = off_284F3A8C8;
    v4[2] = 0;
    v4[3] = 0;
    v8 = *(a2 + 16);
    if (v8)
    {
      v4[3] = *(a2 + 24);
    }

    *(v4 + 4) = v8;
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return v4;
}

void *google::protobuf::internal::MapSorterFlat<google::protobuf::Map<int,operations_research::MPVariableProto>>::MapSorterFlat(void *result, unsigned int *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2)
  {
    operator new[]();
  }

  result[1] = 0;
  return result;
}

void sub_23C9BD6B0(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, v2);
  }

  _Unwind_Resume(exception_object);
}

int *std::__introsort<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,false>(int *result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = &a2[-v10] >> 4;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v86 = *(a2 - 4);
      v87 = *v10;
      if (v86 >= *v10)
      {
        return result;
      }

      *v10 = v86;
      *(a2 - 4) = v87;
      goto LABEL_112;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v97 = (v10 + 16);
      v99 = v10 == a2 || v97 == a2;
      if (a5)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v10;
          do
          {
            v103 = v97;
            v104 = *(v101 + 16);
            v105 = *v101;
            if (v104 < *v101)
            {
              v106 = *(v101 + 24);
              v107 = v100;
              do
              {
                v108 = v10 + v107;
                *(v108 + 16) = v105;
                *(v108 + 24) = *(v10 + v107 + 8);
                if (!v107)
                {
                  v102 = v10;
                  goto LABEL_127;
                }

                v105 = *(v108 - 16);
                v107 -= 16;
              }

              while (v104 < v105);
              v102 = v10 + v107 + 16;
LABEL_127:
              *v102 = v104;
              *(v102 + 8) = v106;
            }

            v97 = v103 + 16;
            v100 += 16;
            v101 = v103;
          }

          while (v103 + 16 != a2);
        }
      }

      else if (!v99)
      {
        v117 = (v10 + 24);
        do
        {
          v118 = v97;
          v119 = *(v9 + 16);
          v120 = *v9;
          if (v119 < *v9)
          {
            v121 = *(v9 + 24);
            v122 = v117;
            do
            {
              v123 = v122;
              *(v122 - 2) = v120;
              v124 = *(v122 - 2);
              v122 -= 2;
              *v123 = v124;
              v120 = *(v123 - 10);
            }

            while (v119 < v120);
            *(v122 - 2) = v119;
            *v122 = v121;
          }

          v97 = (v118 + 16);
          v117 += 2;
          v9 = v118;
        }

        while ((v118 + 16) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,std::pair<int,void const*> *>(v10, a2, a2);
      }

      return result;
    }

    v12 = v10 + 16 * (v11 >> 1);
    v13 = v12;
    v14 = *(a2 - 4);
    if (v11 < 0x81)
    {
      v18 = *v10;
      v19 = *v12;
      if (*v10 >= *v13)
      {
        if (v14 >= v18)
        {
          goto LABEL_38;
        }

        *v10 = v14;
        *(a2 - 4) = v18;
        v25 = *(v10 + 8);
        *(v10 + 8) = *(a2 - 1);
        *(a2 - 1) = v25;
        v26 = *v13;
        if (*v10 >= *v13)
        {
          goto LABEL_38;
        }

        *v13 = *v10;
        *v10 = v26;
        v27 = *(v13 + 8);
        *(v13 + 8) = *(v10 + 8);
        *(v10 + 8) = v27;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v14 >= v18)
        {
          *v13 = v18;
          *v10 = v19;
          v37 = *(v13 + 8);
          *(v13 + 8) = *(v10 + 8);
          *(v10 + 8) = v37;
          v38 = *(a2 - 4);
          if (v38 < v19)
          {
            *v10 = v38;
            *(a2 - 4) = v19;
            *(v10 + 8) = *(a2 - 1);
            *(a2 - 1) = v37;
          }

LABEL_38:
          --a4;
          v21 = *v10;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        *v13 = v14;
        *(a2 - 4) = v19;
        v20 = *(v13 + 8);
        *(v13 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }
      }

LABEL_61:
      if (*(v10 - 16) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 4))
      {
        v77 = v10 + 16;
        do
        {
          v10 = v77;
          if (v77 >= a2)
          {
            break;
          }

          v77 += 16;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v76 = *(v10 + 16);
          v10 += 16;
        }

        while (v21 >= v76);
      }

      v78 = a2;
      if (v10 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *(v78 - 4);
          v78 -= 16;
        }

        while (v21 < v79);
      }

      v80 = *(v9 + 8);
      if (v10 < v78)
      {
        v81 = *v10;
        v82 = *v78;
        do
        {
          *v10 = v82;
          *v78 = v81;
          v83 = *(v10 + 8);
          *(v10 + 8) = *(v78 + 1);
          *(v78 + 1) = v83;
          do
          {
            v84 = *(v10 + 16);
            v10 += 16;
            v81 = v84;
          }

          while (v21 >= v84);
          do
          {
            v85 = *(v78 - 4);
            v78 -= 16;
            v82 = v85;
          }

          while (v21 < v85);
        }

        while (v10 < v78);
      }

      if (v10 - 16 != v9)
      {
        *v9 = *(v10 - 16);
        *(v9 + 8) = *(v10 - 8);
      }

      a5 = 0;
      *(v10 - 16) = v21;
      *(v10 - 8) = v80;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 4) = v15;
          v22 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 1);
          *(a2 - 1) = v22;
          v23 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v23;
            v24 = *(v10 + 8);
            *(v10 + 8) = *(v12 + 8);
            *(v12 + 8) = v24;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v17 = *(v10 + 8);
          *(v10 + 8) = *(v12 + 8);
          *(v12 + 8) = v17;
          v28 = *(a2 - 4);
          if (v28 >= v16)
          {
            goto LABEL_30;
          }

          *v12 = v28;
          *(a2 - 4) = v16;
          *(v12 + 8) = *(a2 - 1);
        }

        else
        {
          *v10 = v14;
          *(a2 - 4) = v16;
          v17 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
        }

        *(a2 - 1) = v17;
      }

LABEL_30:
      v29 = v12 - 16;
      v30 = *(v12 - 16);
      v31 = *(v10 + 16);
      v32 = *(a2 - 8);
      if (v30 >= v31)
      {
        if (v32 < v30)
        {
          *v29 = v32;
          *(a2 - 8) = v30;
          v34 = *(v12 - 8);
          *(v12 - 8) = *(a2 - 3);
          *(a2 - 3) = v34;
          v35 = *(v10 + 16);
          if (*v29 < v35)
          {
            *(v10 + 16) = *v29;
            *v29 = v35;
            v36 = *(v10 + 24);
            *(v10 + 24) = *(v12 - 8);
            *(v12 - 8) = v36;
          }
        }
      }

      else if (v32 >= v30)
      {
        *(v10 + 16) = v30;
        *v29 = v31;
        v39 = *(v10 + 24);
        *(v10 + 24) = *(v12 - 8);
        *(v12 - 8) = v39;
        v40 = *(a2 - 8);
        if (v40 < v31)
        {
          *v29 = v40;
          *(a2 - 8) = v31;
          *(v12 - 8) = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }

      else
      {
        *(v10 + 16) = v32;
        *(a2 - 8) = v31;
        v33 = *(v10 + 24);
        *(v10 + 24) = *(a2 - 3);
        *(a2 - 3) = v33;
      }

      v43 = *(v12 + 16);
      v41 = v12 + 16;
      v42 = v43;
      v44 = *(v10 + 32);
      v45 = *(a2 - 12);
      if (v43 >= v44)
      {
        if (v45 < v42)
        {
          *v41 = v45;
          *(a2 - 12) = v42;
          v47 = *(v41 + 8);
          *(v41 + 8) = *(a2 - 5);
          *(a2 - 5) = v47;
          v48 = *(v10 + 32);
          if (*v41 < v48)
          {
            *(v10 + 32) = *v41;
            *v41 = v48;
            v49 = *(v10 + 40);
            *(v10 + 40) = *(v41 + 8);
            *(v41 + 8) = v49;
          }
        }
      }

      else if (v45 >= v42)
      {
        *(v10 + 32) = v42;
        *v41 = v44;
        v50 = *(v10 + 40);
        *(v10 + 40) = *(v41 + 8);
        *(v41 + 8) = v50;
        v51 = *(a2 - 12);
        if (v51 < v44)
        {
          *v41 = v51;
          *(a2 - 12) = v44;
          *(v41 + 8) = *(a2 - 5);
          *(a2 - 5) = v50;
        }
      }

      else
      {
        *(v10 + 32) = v45;
        *(a2 - 12) = v44;
        v46 = *(v10 + 40);
        *(v10 + 40) = *(a2 - 5);
        *(a2 - 5) = v46;
      }

      v52 = *v13;
      v53 = *v29;
      v54 = *v41;
      if (*v13 >= *v29)
      {
        if (v54 >= v52)
        {
          goto LABEL_56;
        }

        *v13 = v54;
        *v41 = v52;
        v56 = *(v13 + 8);
        v57 = *(v41 + 8);
        *(v13 + 8) = v57;
        *(v41 + 8) = v56;
        if (v54 < v53)
        {
          *v29 = v54;
          *v13 = v53;
          v58 = *(v29 + 8);
          *(v29 + 8) = v57;
          *(v13 + 8) = v58;
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      if (v54 < v52)
      {
        *v29 = v54;
        *v41 = v53;
        v55 = *(v29 + 8);
        *(v29 + 8) = *(v41 + 8);
        *(v41 + 8) = v55;
LABEL_56:
        v53 = v52;
        goto LABEL_60;
      }

      *v29 = v52;
      *v13 = v53;
      v59 = *(v29 + 8);
      *(v29 + 8) = *(v13 + 8);
      *(v13 + 8) = v59;
      if (v54 < v53)
      {
        *v13 = v54;
        *v41 = v53;
        *(v13 + 8) = *(v41 + 8);
        *(v41 + 8) = v59;
LABEL_59:
        v53 = v54;
      }

LABEL_60:
      v60 = *v10;
      *v10 = v53;
      *v13 = v60;
      v61 = *(v10 + 8);
      *(v10 + 8) = *(v13 + 8);
      *(v13 + 8) = v61;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v62 = 0;
      v63 = *(v10 + 8);
      do
      {
        v64 = *(v10 + v62 + 16);
        v62 += 16;
      }

      while (v64 < v21);
      v65 = v10 + v62;
      v66 = a2;
      if (v62 == 16)
      {
        v66 = a2;
        do
        {
          if (v65 >= v66)
          {
            break;
          }

          v68 = *(v66 - 4);
          v66 -= 16;
        }

        while (v68 >= v21);
      }

      else
      {
        do
        {
          v67 = *(v66 - 4);
          v66 -= 16;
        }

        while (v67 >= v21);
      }

      if (v65 >= v66)
      {
        v10 += v62;
        v74 = (v65 - 16);
        if (v65 - 16 != v9)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v69 = *v66;
        v10 += v62;
        v70 = v66;
        do
        {
          *v10 = v69;
          *v70 = v64;
          v71 = *(v10 + 8);
          *(v10 + 8) = *(v70 + 1);
          *(v70 + 1) = v71;
          do
          {
            v72 = *(v10 + 16);
            v10 += 16;
            v64 = v72;
          }

          while (v72 < v21);
          do
          {
            v73 = *(v70 - 4);
            v70 -= 4;
            v69 = v73;
          }

          while (v73 >= v21);
        }

        while (v10 < v70);
        v74 = (v10 - 16);
        if (v10 - 16 != v9)
        {
LABEL_77:
          *v9 = *(v10 - 16);
          *(v9 + 8) = *(v10 - 8);
        }
      }

      *(v10 - 16) = v21;
      *(v10 - 8) = v63;
      if (v65 < v66)
      {
        goto LABEL_81;
      }

      v75 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *>(v9, v74);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *>(v10, a2);
      if (result)
      {
        a2 = v74;
        if (!v75)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v75)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,false>(v9, v74, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v92 = *(v10 + 16);
      v93 = *v10;
      v94 = *(v10 + 32);
      if (v92 >= *v10)
      {
        if (v94 >= v92)
        {
          v92 = *(v10 + 32);
        }

        else
        {
          *(v10 + 16) = v94;
          *(v10 + 32) = v92;
          v114 = *(v10 + 24);
          v115 = *(v10 + 40);
          *(v10 + 24) = v115;
          *(v10 + 40) = v114;
          if (v94 < v93)
          {
            *v10 = v94;
            *(v10 + 16) = v93;
            v116 = *(v10 + 8);
            *(v10 + 8) = v115;
            *(v10 + 24) = v116;
            v96 = *(a2 - 4);
            if (v96 >= v92)
            {
              return result;
            }

            goto LABEL_159;
          }
        }

        v96 = *(a2 - 4);
        if (v96 >= v92)
        {
          return result;
        }
      }

      else if (v94 >= v92)
      {
        *v10 = v92;
        *(v10 + 16) = v93;
        v127 = *(v10 + 8);
        *(v10 + 8) = *(v10 + 24);
        *(v10 + 24) = v127;
        if (v94 >= v93)
        {
          v92 = v94;
          v96 = *(a2 - 4);
          if (v96 >= v94)
          {
            return result;
          }
        }

        else
        {
          *(v10 + 16) = v94;
          *(v10 + 32) = v93;
          *(v10 + 24) = *(v10 + 40);
          *(v10 + 40) = v127;
          v92 = v93;
          v96 = *(a2 - 4);
          if (v96 >= v92)
          {
            return result;
          }
        }
      }

      else
      {
        *v10 = v94;
        *(v10 + 32) = v93;
        v95 = *(v10 + 8);
        *(v10 + 8) = *(v10 + 40);
        *(v10 + 40) = v95;
        v92 = v93;
        v96 = *(a2 - 4);
        if (v96 >= v92)
        {
          return result;
        }
      }

LABEL_159:
      *(v10 + 32) = v96;
      *(a2 - 4) = v92;
      v128 = *(v10 + 40);
      *(v10 + 40) = *(a2 - 1);
      *(a2 - 1) = v128;
      v129 = *(v10 + 32);
      v130 = *(v10 + 16);
      if (v129 >= v130)
      {
        return result;
      }

      *(v10 + 16) = v129;
      *(v10 + 32) = v130;
      v131 = *(v10 + 24);
      v113 = *(v10 + 40);
      *(v10 + 24) = v113;
      *(v10 + 40) = v131;
      v132 = *v10;
      if (v129 >= *v10)
      {
        return result;
      }

      *v10 = v129;
      *(v10 + 16) = v132;
      v112 = *(v10 + 8);
LABEL_162:
      *(v10 + 8) = v113;
      *(v10 + 24) = v112;
      return result;
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,0>(v10, (v10 + 16), (v10 + 32), (v10 + 48), a2 - 4);
    }

    goto LABEL_10;
  }

  v88 = *(v10 + 16);
  v89 = *v10;
  v90 = *(a2 - 4);
  if (v88 >= *v10)
  {
    if (v90 >= v88)
    {
      return result;
    }

    *(v10 + 16) = v90;
    *(a2 - 4) = v88;
    v109 = *(v10 + 24);
    *(v10 + 24) = *(a2 - 1);
    *(a2 - 1) = v109;
    v110 = *(v10 + 16);
    v111 = *v10;
    if (v110 >= *v10)
    {
      return result;
    }

    *v10 = v110;
    *(v10 + 16) = v111;
    v112 = *(v10 + 8);
    v113 = *(v10 + 24);
    goto LABEL_162;
  }

  if (v90 < v88)
  {
    *v10 = v90;
    *(a2 - 4) = v89;
LABEL_112:
    v91 = *(v10 + 8);
    *(v10 + 8) = *(a2 - 1);
    *(a2 - 1) = v91;
    return result;
  }

  *v10 = v88;
  *(v10 + 16) = v89;
  v125 = *(v10 + 8);
  *(v10 + 8) = *(v10 + 24);
  *(v10 + 24) = v125;
  v126 = *(a2 - 4);
  if (v126 < v89)
  {
    *(v10 + 16) = v126;
    *(a2 - 4) = v89;
    *(v10 + 24) = *(a2 - 1);
    *(a2 - 1) = v125;
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 < *result)
  {
    if (v7 >= v5)
    {
      *result = v5;
      *a2 = v6;
      v13 = *(result + 1);
      *(result + 1) = *(a2 + 1);
      *(a2 + 1) = v13;
      v5 = *a3;
      if (*a3 >= v6)
      {
        goto LABEL_11;
      }

      *a2 = v5;
      *a3 = v6;
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v13;
    }

    else
    {
      *result = v7;
      *a3 = v6;
      v8 = *(result + 1);
      *(result + 1) = *(a3 + 1);
      *(a3 + 1) = v8;
    }

    v5 = v6;
LABEL_11:
    v12 = *a4;
    if (*a4 >= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 >= v5)
  {
    v5 = *a3;
    v12 = *a4;
    if (*a4 >= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v7;
    *a3 = v5;
    v9 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v9;
    v10 = *result;
    if (*a2 >= *result)
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v10;
    v11 = *(result + 1);
    *(result + 1) = *(a2 + 1);
    *(a2 + 1) = v11;
    v5 = *a3;
    v12 = *a4;
    if (*a4 >= *a3)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v5;
  v14 = *(a3 + 1);
  *(a3 + 1) = *(a4 + 1);
  *(a4 + 1) = v14;
  v15 = *a2;
  if (*a3 < *a2)
  {
    *a2 = *a3;
    *a3 = v15;
    v16 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v16;
    v17 = *result;
    if (*a2 < *result)
    {
      *result = *a2;
      *a2 = v17;
      v18 = *(result + 1);
      *(result + 1) = *(a2 + 1);
      *(a2 + 1) = v18;
    }
  }

LABEL_16:
  v19 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v19;
    v20 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v20;
    v21 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v21;
      v22 = *(a3 + 1);
      *(a3 + 1) = *(a4 + 1);
      *(a4 + 1) = v22;
      v23 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v23;
        v24 = *(a2 + 1);
        *(a2 + 1) = *(a3 + 1);
        *(a3 + 1) = v24;
        v25 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v25;
          v26 = *(result + 1);
          *(result + 1) = *(a2 + 1);
          *(a2 + 1) = v26;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *>(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 4);
      v5 = *a1;
      if (v4 >= *a1)
      {
        return 1;
      }

      *a1 = v4;
      *(a2 - 4) = v5;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
        return 1;
      }

LABEL_15:
      v10 = (a1 + 32);
      v11 = *(a1 + 32);
      v12 = *(a1 + 16);
      v13 = *a1;
      if (v12 >= *a1)
      {
        if (v11 < v12)
        {
          *(a1 + 16) = v11;
          *(a1 + 32) = v12;
          v24 = *(a1 + 24);
          v25 = *(a1 + 40);
          *(a1 + 24) = v25;
          *(a1 + 40) = v24;
          if (v11 < v13)
          {
            *a1 = v11;
            *(a1 + 16) = v13;
            v26 = *(a1 + 8);
            *(a1 + 8) = v25;
            *(a1 + 24) = v26;
          }
        }
      }

      else if (v11 >= v12)
      {
        *a1 = v12;
        *(a1 + 16) = v13;
        v32 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v32;
        if (v11 < v13)
        {
          *(a1 + 16) = v11;
          *(a1 + 32) = v13;
          *(a1 + 24) = *(a1 + 40);
          *(a1 + 40) = v32;
        }
      }

      else
      {
        *a1 = v11;
        *(a1 + 32) = v13;
        v14 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 40) = v14;
      }

      v33 = (a1 + 48);
      if ((a1 + 48) == a2)
      {
        return 1;
      }

      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *v33;
        v37 = *v10;
        if (*v33 < *v10)
        {
          break;
        }

LABEL_39:
        v10 = v33;
        v34 += 16;
        v33 += 4;
        if (v33 == a2)
        {
          return 1;
        }
      }

      v38 = *(v33 + 1);
      v39 = v34;
      do
      {
        v40 = a1 + v39;
        *(v40 + 48) = v37;
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          *a1 = v36;
          *(a1 + 8) = v38;
          if (++v35 != 8)
          {
            goto LABEL_39;
          }

          return v33 + 4 == a2;
        }

        v37 = *(v40 + 16);
        v39 -= 16;
      }

      while (v36 < v37);
      *(a1 + v39 + 48) = v36;
      *(a1 + v39 + 56) = v38;
      if (++v35 != 8)
      {
        goto LABEL_39;
      }

      return v33 + 4 == a2;
    }

    v15 = *(a1 + 16);
    v16 = *a1;
    v17 = *(a1 + 32);
    if (v15 < *a1)
    {
      if (v17 >= v15)
      {
        *a1 = v15;
        *(a1 + 16) = v16;
        v41 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v41;
        if (v17 >= v16)
        {
          v15 = v17;
          v19 = *(a2 - 4);
          if (v19 >= v17)
          {
            return 1;
          }
        }

        else
        {
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
          *(a1 + 24) = *(a1 + 40);
          *(a1 + 40) = v41;
          v15 = v16;
          v19 = *(a2 - 4);
          if (v19 >= v15)
          {
            return 1;
          }
        }
      }

      else
      {
        *a1 = v17;
        *(a1 + 32) = v16;
        v18 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 40) = v18;
        v15 = v16;
        v19 = *(a2 - 4);
        if (v19 >= v15)
        {
          return 1;
        }
      }

      goto LABEL_52;
    }

    if (v17 >= v15)
    {
      v15 = *(a1 + 32);
    }

    else
    {
      *(a1 + 16) = v17;
      *(a1 + 32) = v15;
      v27 = *(a1 + 24);
      v28 = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
      if (v17 < v16)
      {
        *a1 = v17;
        *(a1 + 16) = v16;
        v29 = *(a1 + 8);
        *(a1 + 8) = v28;
        *(a1 + 24) = v29;
        v19 = *(a2 - 4);
        if (v19 >= v15)
        {
          return 1;
        }

        goto LABEL_52;
      }
    }

    v19 = *(a2 - 4);
    if (v19 >= v15)
    {
      return 1;
    }

LABEL_52:
    *(a1 + 32) = v19;
    *(a2 - 4) = v15;
    v42 = *(a1 + 40);
    *(a1 + 40) = *(a2 - 1);
    *(a2 - 1) = v42;
    v43 = *(a1 + 32);
    v44 = *(a1 + 16);
    if (v43 >= v44)
    {
      return 1;
    }

    *(a1 + 16) = v43;
    *(a1 + 32) = v44;
    v45 = *(a1 + 24);
    v46 = *(a1 + 40);
    *(a1 + 24) = v46;
    *(a1 + 40) = v45;
    v47 = *a1;
    if (v43 >= *a1)
    {
      return 1;
    }

    *a1 = v43;
    *(a1 + 16) = v47;
    v48 = *(a1 + 8);
    *(a1 + 8) = v46;
    *(a1 + 24) = v48;
    return 1;
  }

  v6 = *(a1 + 16);
  v7 = *a1;
  v8 = *(a2 - 4);
  if (v6 >= *a1)
  {
    if (v8 >= v6)
    {
      return 1;
    }

    *(a1 + 16) = v8;
    *(a2 - 4) = v6;
    v20 = *(a1 + 24);
    *(a1 + 24) = *(a2 - 1);
    *(a2 - 1) = v20;
    v21 = *(a1 + 16);
    v22 = *a1;
    if (v21 >= *a1)
    {
      return 1;
    }

    *a1 = v21;
    *(a1 + 16) = v22;
    v23 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v23;
    return 1;
  }

  else
  {
    if (v8 < v6)
    {
      *a1 = v8;
      *(a2 - 4) = v7;
LABEL_14:
      v9 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v9;
      return 1;
    }

    *a1 = v6;
    *(a1 + 16) = v7;
    v30 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v30;
    v31 = *(a2 - 4);
    if (v31 >= v7)
    {
      return 1;
    }

    *(a1 + 16) = v31;
    *(a2 - 4) = v7;
    *(a1 + 24) = *(a2 - 1);
    *(a2 - 1) = v30;
    return 1;
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,std::pair<int,void const*> *>(int *a1, char *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 4;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v6 = 16 * v5;
      if (v4 >= (16 * v5) >> 4)
      {
        v7 = (v6 >> 3) | 1;
        v8 = &a1[4 * v7];
        if ((v6 >> 3) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[v6 / 4];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = *v8;
          v10 = v8[4];
          if (*v8 <= v10)
          {
            v9 = v8[4];
          }

          if (*v8 < v10)
          {
            v8 += 4;
            v7 = (v6 >> 3) + 2;
          }

          v11 = &a1[v6 / 4];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_15:
            v13 = *(v11 + 1);
            while (1)
            {
              v15 = v11;
              v11 = v8;
              *v15 = v9;
              *(v15 + 1) = *(v8 + 1);
              if (v4 < v7)
              {
                break;
              }

              v16 = (2 * v7) | 1;
              v8 = &a1[4 * v16];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                v14 = v8[4];
                if (*v8 <= v14)
                {
                  v9 = v8[4];
                }

                if (*v8 >= v14)
                {
                  v7 = v16;
                }

                else
                {
                  v8 += 4;
                }

                if (v9 < v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v16;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            *(v11 + 1) = v13;
          }
        }
      }

      v27 = v5-- <= 0;
    }

    while (!v27);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v18 = *a1;
      i = a2;
      do
      {
        v19 = *i;
        if (*i < v18)
        {
          *i = v18;
          *a1 = v19;
          v20 = *(i + 1);
          *(i + 1) = *(a1 + 1);
          *(a1 + 1) = v20;
          v18 = v19;
        }

        i += 4;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; i += 4)
    {
      v21 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v21;
        v22 = *(i + 1);
        *(i + 1) = *(a1 + 1);
        *(a1 + 1) = v22;
        v23 = a1[4];
        if (a2 - a1 == 32)
        {
          v24 = a1 + 4;
          v25 = 1;
          if (v23 >= v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v26 = a1[8];
          v27 = v23 < v26;
          if (v23 <= v26)
          {
            v23 = a1[8];
          }

          if (v27)
          {
            v24 = a1 + 8;
          }

          else
          {
            v24 = a1 + 4;
          }

          if (v27)
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          if (v23 >= v21)
          {
LABEL_48:
            v28 = a1;
            while (1)
            {
              v30 = v28;
              v28 = v24;
              *v30 = v23;
              *(v30 + 1) = *(v24 + 1);
              if (((v3 - 2) >> 1) < v25)
              {
                break;
              }

              v31 = (2 * v25) | 1;
              v24 = &a1[4 * v31];
              v25 = 2 * v25 + 2;
              if (v25 < v3)
              {
                v23 = *v24;
                v29 = v24[4];
                if (*v24 <= v29)
                {
                  v23 = v24[4];
                }

                if (*v24 >= v29)
                {
                  v25 = v31;
                }

                else
                {
                  v24 += 4;
                }

                if (v23 < v21)
                {
                  break;
                }
              }

              else
              {
                v23 = *v24;
                v25 = v31;
                if (*v24 < v21)
                {
                  break;
                }
              }
            }

            *v28 = v21;
            *(v28 + 1) = v22;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v33 = 0;
      v34 = *a1;
      v35 = *(a1 + 1);
      v36 = (v3 - 2) >> 1;
      v37 = a1;
      do
      {
        while (1)
        {
          v44 = &v37[4 * v33];
          v43 = v44 + 4;
          v45 = (2 * v33) | 1;
          v33 = 2 * v33 + 2;
          if (v33 < v3)
          {
            break;
          }

          v33 = v45;
          *v37 = *v43;
          *(v37 + 1) = *(v44 + 3);
          v37 = v44 + 4;
          if (v45 > v36)
          {
            goto LABEL_73;
          }
        }

        v40 = v44[8];
        v38 = v44 + 8;
        v39 = v40;
        v41 = *(v38 - 4);
        v42 = v41 < v40;
        if (v41 > v40)
        {
          v39 = *(v38 - 4);
        }

        if (v42)
        {
          v43 = v38;
        }

        else
        {
          v33 = v45;
        }

        *v37 = v39;
        *(v37 + 1) = *(v43 + 1);
        v37 = v43;
      }

      while (v33 <= v36);
LABEL_73:
      if (v43 == (a2 - 16))
      {
        *v43 = v34;
        *(v43 + 1) = v35;
      }

      else
      {
        *v43 = *(a2 - 4);
        *(v43 + 1) = *(a2 - 1);
        *(a2 - 4) = v34;
        *(a2 - 1) = v35;
        v46 = (v43 - a1 + 16) >> 4;
        v27 = v46 < 2;
        v47 = v46 - 2;
        if (!v27)
        {
          v48 = v47 >> 1;
          v49 = &a1[4 * v48];
          v50 = *v49;
          v51 = *v43;
          if (*v49 < *v43)
          {
            v52 = *(v43 + 1);
            do
            {
              v53 = v43;
              v43 = v49;
              *v53 = v50;
              *(v53 + 1) = *(v49 + 1);
              if (!v48)
              {
                break;
              }

              v48 = (v48 - 1) >> 1;
              v49 = &a1[4 * v48];
              v50 = *v49;
            }

            while (*v49 < v51);
            *v43 = v51;
            *(v43 + 1) = v52;
          }
        }
      }

      a2 -= 16;
      v27 = v3-- <= 2;
    }

    while (!v27);
  }

  return i;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPModelProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPModelProto::MPModelProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0xA0uLL);
    return operations_research::MPModelProto::MPModelProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPModelDeltaProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::MPModelDeltaProto::MPModelDeltaProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x80uLL);
    return operations_research::MPModelDeltaProto::MPModelDeltaProto(v6, 0, a2);
  }
}

void *google::protobuf::Arena::CopyConstruct<operations_research::MPSolveInfo>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    v4[1] = a1;
    v5 = (v4 + 1);
    *v4 = off_284F3AA00;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v6 = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      if (v6)
      {
        v4[3] = *(a2 + 24);
      }

      if ((v6 & 2) != 0)
      {
        v4[4] = *(a2 + 32);
      }
    }

    *(v4 + 4) = v6;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_15:
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    v4[1] = 0;
    v5 = (v4 + 1);
    v4[2] = 0;
    *v4 = off_284F3AA00;
    v4[3] = 0;
    v4[4] = 0;
    v8 = *(a2 + 16);
    if ((v8 & 3) != 0)
    {
      if (v8)
      {
        v4[3] = *(a2 + 24);
      }

      if ((v8 & 2) != 0)
      {
        v4[4] = *(a2 + 32);
      }
    }

    *(v4 + 4) = v8;
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_15;
    }
  }

  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::MPSolution>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F3AA68;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 24) = 0;
    *(v4 + 32) = a1;
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = *(a2 + 24);
      google::protobuf::RepeatedField<long long>::Grow(v4 + 24, 0);
      *(v4 + 24) = v6;
      if (v6 >= 1)
      {
        v8 = *(v4 + 32);
        v9 = *(a2 + 32);
        if (v6 < 4)
        {
          goto LABEL_11;
        }

        if ((v8 - v9) < 0x20)
        {
          goto LABEL_11;
        }

        v10 = v6;
        v11 = v6 & 0x7FFFFFFC;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFFC);
        v12 = &v8[v11];
        v13 = &v9[v11];
        v14 = (v9 + 2);
        v15 = v8 + 2;
        v16 = v11;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        v8 = v12;
        v9 = v13;
        if (v11 != v10)
        {
LABEL_11:
          v18 = v6 + 1;
          do
          {
            v19 = *v9++;
            *v8++ = v19;
            --v18;
          }

          while (v18 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F3AA68;
    v20 = *(a2 + 8);
    if (v20)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = *(a2 + 16);
    *(v4 + 28) = 0;
    *(v4 + 20) = 0;
    *(v4 + 36) = 0;
    v21 = *(a2 + 24);
    if (v21)
    {
      v22 = *(a2 + 24);
      google::protobuf::RepeatedField<long long>::Grow(v4 + 24, 0);
      *(v4 + 24) = v21;
      if (v21 >= 1)
      {
        v23 = *(v4 + 32);
        v24 = *(a2 + 32);
        if (v21 < 4)
        {
          goto LABEL_23;
        }

        if ((v23 - v24) < 0x20)
        {
          goto LABEL_23;
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
LABEL_23:
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
  }

  *(v4 + 40) = *(a2 + 40);
  return v4;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::MPModelDeltaProto_VariableOverridesEntry_DoNotUse>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  else
  {
    result = operator new(0x28uLL);
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *result = off_284F3AE78;
  return result;
}

char *google::protobuf::internal::VarintParseSlowArm(google::protobuf::internal *this, char *a2, unint64_t a3)
{
  v3 = ~*(this + 2) & 0x8080808080808080;
  v4 = __clz(__rbit64(v3));
  v5 = this + (v4 >> 3) + 3;
  v6 = (a3 & 0x7F | (((a3 >> 8) & 0x7F | (((a3 >> 16) & 0x7F) << 7)) << 7) | (((a3 >> 24) & 0x7F | ((HIDWORD(a3) & 0x7F) << 7)) << 21)) & ~(-16384 << (v4 - (v4 >> 3)));
  if (v3)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::MPModelDeltaProto_ConstraintOverridesEntry_DoNotUse>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  else
  {
    result = operator new(0x28uLL);
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *result = off_284F3AEE0;
  return result;
}

double operations_research::glop::GlopParameters::GlopParameters(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F3B7C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 33) = 1;
  *(a1 + 36) = 0x100000001;
  *(a1 + 48) = xmmword_23CE3AE70;
  *(a1 + 64) = xmmword_23CE3AE80;
  *(a1 + 80) = xmmword_23CE3AE90;
  *(a1 + 96) = xmmword_23CE3AEA0;
  *(a1 + 112) = 0x3EB0C6F7A0B5ED8DLL;
  *(a1 + 120) = 0x4000000002;
  *(a1 + 128) = xmmword_23CE3AEB0;
  *(a1 + 144) = 0x300000002;
  *(a1 + 152) = xmmword_23CE3AEC0;
  *(a1 + 168) = -1;
  *(a1 + 176) = 0x3CD203AF9EE75616;
  *(a1 + 184) = 0x9601010101;
  *(a1 + 192) = xmmword_23CE3AED0;
  *(a1 + 208) = xmmword_23CE389E0;
  *(a1 + 224) = 0x101010101;
  *(a1 + 232) = xmmword_23CE3AEC0;
  *(a1 + 248) = 0x100000001;
  *(a1 + 256) = xmmword_23CE3AEE0;
  *(a1 + 272) = xmmword_23CE3AEF0;
  *(a1 + 288) = 0x101010101;
  *(a1 + 296) = 0x4A511B0EC57E649ALL;
  result = INFINITY;
  *(a1 + 304) = xmmword_23CE3AF00;
  *(a1 + 320) = 0x39B4484BFEEBC2A0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return result;
}

void operations_research::glop::GlopParameters::~GlopParameters(operations_research::glop::GlopParameters *this)
{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }
}

{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v1);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::glop::GlopParameters::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    *(this + 28) = *(a2 + 28);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(this + 29) = *(a2 + 29);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(this + 30) = *(a2 + 30);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(this + 31) = *(a2 + 31);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_55:
    *(this + 33) = *(a2 + 33);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_54:
  *(this + 32) = *(a2 + 32);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_56:
  *(this + 9) = *(a2 + 9);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    *(this + 10) = *(a2 + 10);
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    this[6] = *(a2 + 6);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this[7] = *(a2 + 7);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  this[8] = *(a2 + 8);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  this[9] = *(a2 + 9);
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  this[10] = *(a2 + 10);
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  this[11] = *(a2 + 11);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_64:
  this[12] = *(a2 + 12);
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    this[13] = *(a2 + 13);
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    this[14] = *(a2 + 14);
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_68;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  *(this + 30) = *(a2 + 30);
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(this + 31) = *(a2 + 31);
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  this[16] = *(a2 + 16);
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  this[17] = *(a2 + 17);
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(this + 36) = *(a2 + 36);
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_72:
  *(this + 37) = *(a2 + 37);
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    this[19] = *(a2 + 19);
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    this[20] = *(a2 + 20);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_127;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this[21] = *(a2 + 21);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_128;
  }

LABEL_127:
  this[22] = *(a2 + 22);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(this + 184) = *(a2 + 184);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(this + 185) = *(a2 + 185);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(this + 186) = *(a2 + 186);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(this + 187) = *(a2 + 187);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_40:
    v4 = *(a2 + 5);
    if (!v4)
    {
      goto LABEL_82;
    }

LABEL_41:
    if (v4)
    {
      this[24] = *(a2 + 24);
      if ((v4 & 2) == 0)
      {
LABEL_43:
        if ((v4 & 4) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_76;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_43;
    }

    this[25] = *(a2 + 25);
    if ((v4 & 4) == 0)
    {
LABEL_44:
      if ((v4 & 8) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_77;
    }

LABEL_76:
    this[26] = *(a2 + 26);
    if ((v4 & 8) == 0)
    {
LABEL_45:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_78;
    }

LABEL_77:
    this[27] = *(a2 + 27);
    if ((v4 & 0x10) == 0)
    {
LABEL_46:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_79;
    }

LABEL_78:
    *(this + 224) = *(a2 + 224);
    if ((v4 & 0x20) == 0)
    {
LABEL_47:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_80;
    }

LABEL_79:
    *(this + 225) = *(a2 + 225);
    if ((v4 & 0x40) == 0)
    {
LABEL_48:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_82;
      }

LABEL_81:
      *(this + 227) = *(a2 + 227);
      goto LABEL_82;
    }

LABEL_80:
    *(this + 226) = *(a2 + 226);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_132:
  *(this + 47) = *(a2 + 47);
  v4 = *(a2 + 5);
  if (v4)
  {
    goto LABEL_41;
  }

LABEL_82:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_92;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 57) = *(a2 + 57);
    if ((v4 & 0x200) == 0)
    {
LABEL_85:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_111;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_85;
  }

  this[29] = *(a2 + 29);
  if ((v4 & 0x400) == 0)
  {
LABEL_86:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_112;
  }

LABEL_111:
  this[30] = *(a2 + 30);
  if ((v4 & 0x800) == 0)
  {
LABEL_87:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(this + 62) = *(a2 + 62);
  if ((v4 & 0x1000) == 0)
  {
LABEL_88:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(this + 63) = *(a2 + 63);
  if ((v4 & 0x2000) == 0)
  {
LABEL_89:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_115;
  }

LABEL_114:
  this[32] = *(a2 + 32);
  if ((v4 & 0x4000) == 0)
  {
LABEL_90:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_115:
  this[33] = *(a2 + 33);
  if ((v4 & 0x8000) != 0)
  {
LABEL_91:
    this[34] = *(a2 + 34);
  }

LABEL_92:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_102;
  }

  if ((v4 & 0x10000) != 0)
  {
    this[35] = *(a2 + 35);
    if ((v4 & 0x20000) == 0)
    {
LABEL_95:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_119;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_95;
  }

  *(this + 288) = *(a2 + 288);
  if ((v4 & 0x40000) == 0)
  {
LABEL_96:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(this + 289) = *(a2 + 289);
  if ((v4 & 0x80000) == 0)
  {
LABEL_97:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(this + 290) = *(a2 + 290);
  if ((v4 & 0x100000) == 0)
  {
LABEL_98:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(this + 291) = *(a2 + 291);
  if ((v4 & 0x200000) == 0)
  {
LABEL_99:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(this + 73) = *(a2 + 73);
  if ((v4 & 0x400000) == 0)
  {
LABEL_100:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

LABEL_123:
  this[37] = *(a2 + 37);
  if ((v4 & 0x800000) != 0)
  {
LABEL_101:
    this[38] = *(a2 + 38);
  }

LABEL_102:
  if ((v4 & 0x3000000) != 0)
  {
    if ((v4 & 0x1000000) != 0)
    {
      this[39] = *(a2 + 39);
    }

    if ((v4 & 0x2000000) != 0)
    {
      this[40] = *(a2 + 40);
    }
  }

  this[2] |= *(a2 + 2);
  v5 = *(a2 + 1);
  if (v5)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}