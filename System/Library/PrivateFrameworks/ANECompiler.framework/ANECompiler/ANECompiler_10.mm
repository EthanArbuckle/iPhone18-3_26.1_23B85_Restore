double operations_research::sat::ConstraintProto::ConstraintProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F39ED0;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = 0;
  return result;
}

uint64_t operations_research::sat::ConstraintProto::ConstraintProto(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39ED0;
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

  *(a1 + 32) = 0;
  v21 = *(a3 + 40);
  if ((v21 & 3) != 0)
  {
    v21 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 40), a2);
  }

  *(a1 + 40) = v21;
  *(a1 + 56) = 0;
  v22 = *(a3 + 60);
  *(a1 + 60) = v22;
  switch(v22)
  {
    case 3:
    case 4:
    case 5:
    case 26:
    case 29:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::BoolArgumentProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 7:
    case 8:
    case 11:
    case 27:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearArgumentProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 12:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 13:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::AllDifferentConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 14:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::ElementConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 15:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::CircuitConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 16:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::TableConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 17:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::AutomatonConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 18:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::InverseConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 19:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::IntervalConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 20:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::NoOverlapConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 21:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::NoOverlap2DConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 22:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::CumulativeConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 23:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::RoutesConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 24:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::ReservoirConstraintProto>(a2, *(a3 + 48));
      goto LABEL_31;
    case 30:
      v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::ListOfVariablesProto>(a2, *(a3 + 48));
LABEL_31:
      *(a1 + 48) = v23;
      break;
    default:
      return a1;
  }

  return a1;
}

void sub_23C9971B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::ConstraintProto::~ConstraintProto(operations_research::sat::ConstraintProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  if (*(this + 15))
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
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

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  if (*(this + 15))
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
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

void *operations_research::sat::ConstraintProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = (this + 1);
  v6 = this[1];
  if (v6)
  {
    v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    v7 = *(a2 + 4);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *(a2 + 4);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v8 = *(this + 4);
  a3 = (v8 + v7);
  if (*(this + 5) < a3)
  {
    this = google::protobuf::RepeatedField<int>::Grow(this + 2, v8, a3);
    LODWORD(v8) = *(v4 + 16);
    a3 = (v8 + v7);
    v9 = *(v4 + 24);
    *(v4 + 16) = a3;
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = this[3];
    *(this + 4) = a3;
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  v10 = *(a2 + 3);
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
  v22 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    v23 = *(v22 + 8);
  }

  if (v23)
  {
    v24 = *(v4 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 40), v22, v24);
  }

  v25 = *(a2 + 15);
  if (v25)
  {
    v26 = *(v4 + 60);
    if (v26 != v25)
    {
      if (v26)
      {
        this = operations_research::sat::ConstraintProto::clear_constraint(v4);
      }

      *(v4 + 60) = v25;
    }

    switch(v25)
    {
      case 3:
        if (v26 != v25)
        {
          goto LABEL_67;
        }

        v27 = *(v4 + 48);
        if (*(a2 + 15) != 3)
        {
          goto LABEL_41;
        }

        goto LABEL_76;
      case 4:
        if (v26 != v25)
        {
          goto LABEL_67;
        }

        v27 = *(v4 + 48);
        if (*(a2 + 15) != 4)
        {
          goto LABEL_41;
        }

        goto LABEL_76;
      case 5:
        if (v26 != v25)
        {
          goto LABEL_67;
        }

        v27 = *(v4 + 48);
        if (*(a2 + 15) != 5)
        {
          goto LABEL_41;
        }

        goto LABEL_76;
      case 7:
        if (v26 != v25)
        {
          goto LABEL_95;
        }

        v31 = *(v4 + 48);
        if (*(a2 + 15) == 7)
        {
          goto LABEL_44;
        }

        goto LABEL_56;
      case 8:
        if (v26 != v25)
        {
          goto LABEL_95;
        }

        v31 = *(v4 + 48);
        if (*(a2 + 15) == 8)
        {
          goto LABEL_44;
        }

        goto LABEL_56;
      case 11:
        if (v26 != v25)
        {
          goto LABEL_95;
        }

        v31 = *(v4 + 48);
        if (*(a2 + 15) != 11)
        {
          goto LABEL_56;
        }

        goto LABEL_44;
      case 12:
        if (v26 == v25)
        {
          v36 = *(v4 + 48);
          if (*(a2 + 15) == 12)
          {
            this = operations_research::sat::LinearConstraintProto::MergeImpl(v36, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::LinearConstraintProto::MergeImpl(v36, &operations_research::sat::_LinearConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 13:
        if (v26 == v25)
        {
          v37 = *(v4 + 48);
          if (*(a2 + 15) == 13)
          {
            this = operations_research::sat::AllDifferentConstraintProto::MergeFrom(v37, *(a2 + 6));
          }

          else
          {
            this = operations_research::sat::AllDifferentConstraintProto::MergeFrom(v37, &operations_research::sat::_AllDifferentConstraintProto_default_instance_);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::AllDifferentConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 14:
        if (v26 == v25)
        {
          v40 = *(v4 + 48);
          if (*(a2 + 15) == 14)
          {
            this = operations_research::sat::ElementConstraintProto::MergeFrom(v40, *(a2 + 6));
          }

          else
          {
            this = operations_research::sat::ElementConstraintProto::MergeFrom(v40, &operations_research::sat::_ElementConstraintProto_default_instance_);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::ElementConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 15:
        if (v26 == v25)
        {
          v39 = *(v4 + 48);
          if (*(a2 + 15) == 15)
          {
            this = operations_research::sat::CircuitConstraintProto::MergeImpl(v39, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::CircuitConstraintProto::MergeImpl(v39, &operations_research::sat::_CircuitConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::CircuitConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 16:
        if (v26 == v25)
        {
          v30 = *(v4 + 48);
          if (*(a2 + 15) == 16)
          {
            this = operations_research::sat::TableConstraintProto::MergeImpl(v30, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::TableConstraintProto::MergeImpl(v30, &operations_research::sat::_TableConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::TableConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 17:
        if (v26 == v25)
        {
          v35 = *(v4 + 48);
          if (*(a2 + 15) == 17)
          {
            this = operations_research::sat::AutomatonConstraintProto::MergeImpl(v35, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::AutomatonConstraintProto::MergeImpl(v35, &operations_research::sat::_AutomatonConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::AutomatonConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 18:
        if (v26 == v25)
        {
          v34 = *(v4 + 48);
          if (*(a2 + 15) == 18)
          {
            this = operations_research::sat::InverseConstraintProto::MergeImpl(v34, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::InverseConstraintProto::MergeImpl(v34, &operations_research::sat::_InverseConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::InverseConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 19:
        if (v26 == v25)
        {
          v29 = *(v4 + 48);
          if (*(a2 + 15) == 19)
          {
            this = operations_research::sat::IntervalConstraintProto::MergeImpl(v29, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::IntervalConstraintProto::MergeImpl(v29, &operations_research::sat::_IntervalConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::IntervalConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 20:
        if (v26 == v25)
        {
          v27 = *(v4 + 48);
          if (*(a2 + 15) == 20)
          {
            goto LABEL_76;
          }

          this = operations_research::sat::BoolArgumentProto::MergeFrom(v27, &operations_research::sat::_NoOverlapConstraintProto_default_instance_);
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::NoOverlapConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 21:
        if (v26 == v25)
        {
          v38 = *(v4 + 48);
          if (*(a2 + 15) == 21)
          {
            this = operations_research::sat::NoOverlap2DConstraintProto::MergeImpl(v38, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::NoOverlap2DConstraintProto::MergeImpl(v38, &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 22:
        if (v26 == v25)
        {
          if (*(a2 + 15) == 22)
          {
            v42 = *(a2 + 6);
          }

          else
          {
            v42 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          }

          this = operations_research::sat::CumulativeConstraintProto::MergeImpl(*(v4 + 48), v42, a3);
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::CumulativeConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 23:
        if (v26 == v25)
        {
          v41 = *(v4 + 48);
          if (*(a2 + 15) == 23)
          {
            this = operations_research::sat::RoutesConstraintProto::MergeImpl(v41, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::RoutesConstraintProto::MergeImpl(v41, &operations_research::sat::_RoutesConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::RoutesConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 24:
        if (v26 == v25)
        {
          v28 = *(v4 + 48);
          if (*(a2 + 15) == 24)
          {
            this = operations_research::sat::ReservoirConstraintProto::MergeImpl(v28, *(a2 + 6), a3);
          }

          else
          {
            this = operations_research::sat::ReservoirConstraintProto::MergeImpl(v28, &operations_research::sat::_ReservoirConstraintProto_default_instance_, a3);
          }
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::ReservoirConstraintProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 26:
        if (v26 != v25)
        {
          goto LABEL_67;
        }

        v27 = *(v4 + 48);
        if (*(a2 + 15) != 26)
        {
          goto LABEL_41;
        }

        goto LABEL_76;
      case 27:
        if (v26 == v25)
        {
          v31 = *(v4 + 48);
          if (*(a2 + 15) == 27)
          {
LABEL_44:
            v32 = *(a2 + 6);
          }

          else
          {
LABEL_56:
            v32 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          }

          this = operations_research::sat::LinearArgumentProto::MergeImpl(v31, v32, a3);
        }

        else
        {
LABEL_95:
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearArgumentProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 29:
        if (v26 == v25)
        {
          v27 = *(v4 + 48);
          if (*(a2 + 15) == 29)
          {
LABEL_76:
            this = operations_research::sat::BoolArgumentProto::MergeFrom(v27, *(a2 + 6));
          }

          else
          {
LABEL_41:
            this = operations_research::sat::BoolArgumentProto::MergeFrom(v27, &operations_research::sat::_BoolArgumentProto_default_instance_);
          }
        }

        else
        {
LABEL_67:
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::BoolArgumentProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      case 30:
        if (v26 == v25)
        {
          if (*(a2 + 15) == 30)
          {
            v33 = *(a2 + 6);
          }

          else
          {
            v33 = &operations_research::sat::_ListOfVariablesProto_default_instance_;
          }

          this = operations_research::sat::BoolArgumentProto::MergeFrom(*(v4 + 48), v33);
        }

        else
        {
          this = google::protobuf::Arena::CopyConstruct<operations_research::sat::ListOfVariablesProto>(v6, *(a2 + 6));
          *(v4 + 48) = this;
        }

        break;
      default:
        break;
    }
  }

  v43 = *(a2 + 1);
  if (v43)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v43 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::ConstraintProto::Clear(operations_research::sat::ConstraintProto *this)
{
  *(this + 4) = 0;
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  result = operations_research::sat::ConstraintProto::clear_constraint(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::ConstraintProto::_InternalSerialize(operations_research::sat::ConstraintProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 5);
  v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if (v11 < 0)
  {
    v13 = *(v10 + 8);
    if (!v13)
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v10, v13, 1, "operations_research.sat.ConstraintProto.name");
    v12 = *(v10 + 23);
    if (v12 < 0)
    {
LABEL_7:
      v12 = *(v10 + 8);
      if (v12 > 127)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v9 & 0xFFFFFFFFFFFFFFFCLL), v11, 1, "operations_research.sat.ConstraintProto.name");
    v12 = *(v10 + 23);
    if (v12 < 0)
    {
      goto LABEL_7;
    }
  }

  if (*a3 - a2 + 14 >= v12)
  {
    *a2 = 10;
    *(a2 + 1) = v12;
    if (*(v10 + 23) >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = *v10;
    }

    memcpy(a2 + 2, v14, v12);
    a2 = (a2 + v12 + 2);
LABEL_13:
    v15 = *(this + 8);
    if (v15 >= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v10, a2);
  v15 = *(this + 8);
  if (v15 >= 1)
  {
LABEL_14:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 18;
      v16 = a2 + 1;
      if (v15 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v16 = a2 + 1;
      if (v15 < 0x80)
      {
LABEL_16:
        a2 = (a2 + 2);
        *v16 = v15;
        v17 = *(this + 3);
        v18 = &v17[*(this + 4)];
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
LABEL_23:
                *a2 = v19 | 0x80;
                a2 = (a2 + 1);
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
          *a2 = v21;
          a2 = (a2 + 1);
          if (v17 >= v18)
          {
            goto LABEL_26;
          }
        }
      }
    }

    do
    {
      *v16++ = v15 | 0x80;
      v28 = v15 >> 14;
      v15 = v15 >> 7;
    }

    while (v28);
    a2 = (v16 - 1);
    goto LABEL_16;
  }

LABEL_26:
  v24 = *(this + 15);
  v25 = v24 - 3;
  if (v24 - 3) <= 0x1B && ((0xDBFFF37u >> v25))
  {
    a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(v24, *(this + 6), *(*(this + 6) + *&asc_23CE38578[8 * v25]), a2, a3, a6);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v26 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::ConstraintProto::ByteSizeLong(operations_research::sat::ConstraintProto *this)
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

  v5 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = (v4 + v2);
    if (*(v5 + 8))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = (v4 + v2);
    if (*(v5 + 23))
    {
LABEL_6:
      v8 = *(v5 + 8);
      if (v6 >= 0)
      {
        v8 = v6;
      }

      v7 = (v7 + v8 + ((352 - 9 * __clz(v8)) >> 6) + 1);
    }
  }

  switch(*(this + 15))
  {
    case 3:
    case 4:
    case 5:
      v12 = *(this + 6);
      v13 = google::protobuf::internal::WireFormatLite::Int32Size(v12 + 4);
      v12[8] = v13;
      if (v13)
      {
        v14 = ((640 - 9 * __clz(v13)) >> 6) + 1;
      }

      else
      {
        v14 = 0;
      }

      v22 = (v14 + v13);
      v23 = v12 + 9;
      goto LABEL_94;
    case 7:
      v30 = *(this + 6);
      v31 = *(v30 + 32);
      v44 = *(v30 + 24);
      v45 = (v44 + 7);
      if (v44)
      {
        v46 = v45;
      }

      else
      {
        v46 = (v30 + 24);
      }

      if (!v31)
      {
        goto LABEL_50;
      }

      v47 = 8 * v31;
      do
      {
        v48 = *v46++;
        v49 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v48);
        v31 = (v31 + v49 + ((352 - 9 * __clz(v49)) >> 6));
        v47 -= 8;
      }

      while (v47);
      goto LABEL_51;
    case 8:
      v30 = *(this + 6);
      v31 = *(v30 + 32);
      v32 = *(v30 + 24);
      v33 = (v32 + 7);
      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = (v30 + 24);
      }

      if (!v31)
      {
        goto LABEL_50;
      }

      v35 = 8 * v31;
      do
      {
        v36 = *v34++;
        v37 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v36);
        v31 = (v31 + v37 + ((352 - 9 * __clz(v37)) >> 6));
        v35 -= 8;
      }

      while (v35);
      goto LABEL_51;
    case 0xB:
      v30 = *(this + 6);
      v31 = *(v30 + 32);
      v38 = *(v30 + 24);
      v39 = (v38 + 7);
      if (v38)
      {
        v40 = v39;
      }

      else
      {
        v40 = (v30 + 24);
      }

      if (v31)
      {
        v41 = 8 * v31;
        do
        {
          v42 = *v40++;
          v43 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v42);
          v31 = (v31 + v43 + ((352 - 9 * __clz(v43)) >> 6));
          v41 -= 8;
        }

        while (v41);
      }

      else
      {
LABEL_50:
        v31 = 0;
      }

LABEL_51:
      if (*(v30 + 16))
      {
        v50 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(v30 + 48));
        v31 = &v50[((352 - 9 * __clz(v50)) >> 6) + 1 + v31];
      }

      v23 = (v30 + 20);
      goto LABEL_54;
    case 0xC:
      v52 = operations_research::sat::LinearConstraintProto::ByteSizeLong(*(this + 6));
      goto LABEL_96;
    case 0xD:
      v30 = *(this + 6);
      v31 = *(v30 + 24);
      v53 = *(v30 + 16);
      v54 = (v53 + 7);
      if (v53)
      {
        v55 = v54;
      }

      else
      {
        v55 = (v30 + 16);
      }

      if (v31)
      {
        v56 = 8 * v31;
        do
        {
          v57 = *v55++;
          v58 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v57);
          v31 = (v31 + v58 + ((352 - 9 * __clz(v58)) >> 6));
          v56 -= 8;
        }

        while (v56);
        v23 = (v30 + 40);
      }

      else
      {
        v31 = 0;
        v23 = (v30 + 40);
      }

LABEL_54:
      v51 = v30;
      v22 = v31;
      goto LABEL_95;
    case 0xE:
      v12 = *(this + 6);
      v59 = google::protobuf::internal::WireFormatLite::Int32Size(v12 + 4);
      v12[8] = v59;
      if (v59)
      {
        v60 = ((640 - 9 * __clz(v59)) >> 6) + 1;
      }

      else
      {
        v60 = 0;
      }

      v22 = (v60 + v59);
      v71 = v12[9];
      if (v71)
      {
        v22 = (v22 + ((-9 * __clz(v71) + 704) >> 6));
      }

      v72 = v12[10];
      if (v72)
      {
        v22 = (v22 + ((-9 * __clz(v72) + 704) >> 6));
      }

      v23 = v12 + 11;
LABEL_94:
      v51 = v12;
LABEL_95:
      v52 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v51, v22, v23);
      goto LABEL_96;
    case 0xF:
      v52 = operations_research::sat::CircuitConstraintProto::ByteSizeLong(*(this + 6));
LABEL_96:
      v7 = &v52[v7 + 1 + ((352 - 9 * __clz(v52)) >> 6)];
      goto LABEL_97;
    case 0x10:
      v9 = *(this + 6);
      v25 = google::protobuf::internal::WireFormatLite::Int32Size(v9 + 4);
      v26 = v25;
      v9[8] = v25;
      if (v25)
      {
        v27 = ((-9 * __clz(v25) + 640) >> 6) + 1;
        v28 = google::protobuf::internal::WireFormatLite::Int64Size(v9 + 10);
        v9[14] = v28;
        if (v28)
        {
LABEL_27:
          v29 = ((-9 * __clz(v28) + 640) >> 6) + 1;
          goto LABEL_80;
        }
      }

      else
      {
        v27 = 0;
        v28 = google::protobuf::internal::WireFormatLite::Int64Size(v9 + 10);
        v9[14] = v28;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      v29 = 0;
LABEL_80:
      v69 = v27 + v26 + v28 + v29;
      if (*(v9 + 60))
      {
        v20 = (v69 + 2);
      }

      else
      {
        v20 = v69;
      }

      v21 = v9 + 16;
      goto LABEL_84;
    case 0x11:
      v24 = operations_research::sat::AutomatonConstraintProto::ByteSizeLong(*(this + 6));
      goto LABEL_86;
    case 0x12:
    case 0x15:
      v9 = *(this + 6);
      v15 = google::protobuf::internal::WireFormatLite::Int32Size(v9 + 4);
      v16 = v15;
      v9[8] = v15;
      if (v15)
      {
        v17 = ((-9 * __clz(v15) + 640) >> 6) + 1;
        v18 = google::protobuf::internal::WireFormatLite::Int32Size(v9 + 10);
        v9[14] = v18;
        if (v18)
        {
LABEL_18:
          v19 = ((-9 * __clz(v18) + 640) >> 6) + 1;
          goto LABEL_77;
        }
      }

      else
      {
        v17 = 0;
        v18 = google::protobuf::internal::WireFormatLite::Int32Size(v9 + 10);
        v9[14] = v18;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      v19 = 0;
LABEL_77:
      v20 = (v17 + v16 + v18 + v19);
      v21 = v9 + 15;
LABEL_84:
      v70 = v9;
LABEL_85:
      v24 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v70, v20, v21);
LABEL_86:
      v7 = &v24[v7 + 2 + ((352 - 9 * __clz(v24)) >> 6)];
LABEL_97:

      return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v7, this + 14);
    case 0x13:
      v24 = operations_research::sat::IntervalConstraintProto::ByteSizeLong(*(this + 6));
      goto LABEL_86;
    case 0x14:
    case 0x1A:
    case 0x1D:
    case 0x1E:
      v9 = *(this + 6);
      v10 = google::protobuf::internal::WireFormatLite::Int32Size(v9 + 4);
      v9[8] = v10;
      if (v10)
      {
        v11 = ((640 - 9 * __clz(v10)) >> 6) + 1;
      }

      else
      {
        v11 = 0;
      }

      v20 = (v11 + v10);
      v21 = v9 + 9;
      goto LABEL_84;
    case 0x16:
      v24 = operations_research::sat::CumulativeConstraintProto::ByteSizeLong(*(this + 6));
      goto LABEL_86;
    case 0x17:
      v24 = operations_research::sat::RoutesConstraintProto::ByteSizeLong(*(this + 6));
      goto LABEL_86;
    case 0x18:
      v24 = operations_research::sat::ReservoirConstraintProto::ByteSizeLong(*(this + 6));
      goto LABEL_86;
    case 0x1B:
      v61 = *(this + 6);
      v62 = *(v61 + 32);
      v63 = *(v61 + 24);
      v64 = (v63 + 7);
      if (v63)
      {
        v65 = v64;
      }

      else
      {
        v65 = (v61 + 24);
      }

      if (v62)
      {
        v66 = 8 * v62;
        do
        {
          v67 = *v65++;
          v68 = operations_research::sat::LinearExpressionProto::ByteSizeLong(v67);
          v62 = (v62 + v68 + ((352 - 9 * __clz(v68)) >> 6));
          v66 -= 8;
        }

        while (v66);
      }

      else
      {
        v62 = 0;
      }

      if (*(v61 + 16))
      {
        v74 = operations_research::sat::LinearExpressionProto::ByteSizeLong(*(v61 + 48));
        v62 = &v74[((352 - 9 * __clz(v74)) >> 6) + 1 + v62];
      }

      v21 = (v61 + 20);
      v70 = v61;
      v20 = v62;
      goto LABEL_85;
    default:
      goto LABEL_97;
  }
}

operations_research::sat::ConstraintProto *operations_research::sat::ConstraintProto::CopyFrom(operations_research::sat::ConstraintProto *this, const operations_research::sat::ConstraintProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::ConstraintProto::Clear(this);

    return operations_research::sat::ConstraintProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::ConstraintProto::InternalSwap(uint64_t this, operations_research::sat::ConstraintProto *a2)
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
  v3 = *(a2 + 5);
  *(a2 + 5) = *(this + 40);
  *(this + 40) = v3;
  v4 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 60);
  *(this + 60) = *(a2 + 15);
  *(a2 + 15) = v4;
  return this;
}

uint64_t operations_research::sat::CpObjectiveProto::CpObjectiveProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F399F0;
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
  *(a1 + 132) = 0;
  v49 = *(a3 + 88);
  v50 = *(a3 + 104);
  *(a1 + 113) = *(a3 + 113);
  *(a1 + 104) = v50;
  *(a1 + 88) = v49;
  return a1;
}

void sub_23C998718(_Unwind_Exception *exception_object)
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

void operations_research::sat::CpObjectiveProto::~CpObjectiveProto(operations_research::sat::CpObjectiveProto *this)
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
  operations_research::sat::CpObjectiveProto::~CpObjectiveProto(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::CpObjectiveProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v55 = this;
      v56 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v56;
      this = v55;
      LODWORD(v4) = *(v55 + 16);
      v6 = *(v55 + 24);
      *(v55 + 16) = v4 + v3;
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
    v57 = this;
    v58 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v58;
    this = v57;
    LODWORD(v20) = *(v57 + 10);
    v21 = v57[6];
    *(v57 + 10) = v20 + v19;
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
    v59 = this;
    v60 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 8, v35);
    a2 = v60;
    this = v59;
    LODWORD(v35) = *(v59 + 16);
    v36 = v59[9];
    *(v59 + 16) = v35 + v34;
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
  if (*(a2 + 11))
  {
    this[11] = *(a2 + 11);
    v49 = *(a2 + 12);
    if (!v49)
    {
LABEL_33:
      v50 = *(a2 + 13);
      if (!v50)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v49 = *(a2 + 12);
    if (!v49)
    {
      goto LABEL_33;
    }
  }

  this[12] = v49;
  v50 = *(a2 + 13);
  if (v50)
  {
LABEL_34:
    this[13] = v50;
  }

LABEL_35:
  v51 = *(a2 + 14);
  if (v51)
  {
    this[14] = v51;
  }

  v52 = *(a2 + 15);
  if (v52)
  {
    this[15] = v52;
  }

  if (*(a2 + 128) == 1)
  {
    *(this + 128) = 1;
  }

  v53 = *(a2 + 1);
  if (v53)
  {
    v54 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v54, ((v53 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::CpObjectiveProto::Clear(operations_research::sat::CpObjectiveProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 105) = 0u;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::CpObjectiveProto::_InternalSerialize(operations_research::sat::CpObjectiveProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        v5 = (v5 + 2);
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
                *v5 = v11 | 0x80;
                v5 = (v5 + 1);
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
          *v5 = v13;
          v5 = (v5 + 1);
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
      v43 = v7 >> 14;
      v7 >>= 7;
    }

    while (v43);
    v5 = (v8 - 1);
    goto LABEL_4;
  }

LABEL_13:
  if (*(this + 11))
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v18 = *(this + 11);
    *v5 = 17;
    *(v5 + 1) = v18;
    v5 = (v5 + 9);
    v16 = *(this + 12);
    if (!v16)
    {
LABEL_15:
      v17 = *(this + 14);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

LABEL_23:
      if (*a3 <= v5)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
        *v5 = 34;
        v20 = v5 + 1;
        if (v17 < 0x80)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v5 = 34;
        v20 = v5 + 1;
        if (v17 < 0x80)
        {
LABEL_25:
          v5 = (v5 + 2);
          *v20 = v17;
          v21 = *(this + 6);
          v22 = &v21[*(this + 10)];
          while (1)
          {
            if (*a3 <= v5)
            {
              v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
              v26 = *v21++;
              v23 = v26;
              if (v26 >= 0x80)
              {
                do
                {
LABEL_32:
                  *v5 = v23 | 0x80;
                  v5 = (v5 + 1);
                  v25 = v23 >> 7;
                  v27 = v23 >> 14;
                  v23 >>= 7;
                }

                while (v27);
                goto LABEL_29;
              }
            }

            else
            {
              v24 = *v21++;
              v23 = v24;
              if (v24 >= 0x80)
              {
                goto LABEL_32;
              }
            }

            LOBYTE(v25) = v23;
LABEL_29:
            *v5 = v25;
            v5 = (v5 + 1);
            if (v21 >= v22)
            {
              goto LABEL_34;
            }
          }
        }
      }

      do
      {
        *v20++ = v17 | 0x80;
        v44 = v17 >> 14;
        v17 = v17 >> 7;
      }

      while (v44);
      v5 = (v20 - 1);
      goto LABEL_25;
    }
  }

  else
  {
    v16 = *(this + 12);
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  if (*a3 <= v5)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v19 = *(this + 12);
  }

  else
  {
    v19 = v16;
  }

  *v5 = 25;
  *(v5 + 1) = v19;
  v5 = (v5 + 9);
  v17 = *(this + 14);
  if (v17 >= 1)
  {
    goto LABEL_23;
  }

LABEL_34:
  v28 = *(this + 20);
  if (v28 >= 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      *v5 = 42;
      v29 = v5 + 1;
      if (v28 < 0x80)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v5 = 42;
      v29 = v5 + 1;
      if (v28 < 0x80)
      {
LABEL_37:
        v5 = (v5 + 2);
        *v29 = v28;
        v30 = *(this + 9);
        v31 = &v30[*(this + 16)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v35 = *v30++;
            v32 = v35;
            if (v35 >= 0x80)
            {
              do
              {
LABEL_44:
                *v5 = v32 | 0x80;
                v5 = (v5 + 1);
                v34 = v32 >> 7;
                v36 = v32 >> 14;
                v32 >>= 7;
              }

              while (v36);
              goto LABEL_41;
            }
          }

          else
          {
            v33 = *v30++;
            v32 = v33;
            if (v33 >= 0x80)
            {
              goto LABEL_44;
            }
          }

          LOBYTE(v34) = v32;
LABEL_41:
          *v5 = v34;
          v5 = (v5 + 1);
          if (v30 >= v31)
          {
            goto LABEL_46;
          }
        }
      }
    }

    do
    {
      *v29++ = v28 | 0x80;
      v45 = v28 >> 14;
      v28 >>= 7;
    }

    while (v45);
    v5 = (v29 - 1);
    goto LABEL_37;
  }

LABEL_46:
  v37 = *(this + 128);
  if (v37 == 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      LOBYTE(v37) = *(this + 128);
    }

    *v5 = 48;
    *(v5 + 1) = v37;
    v5 = (v5 + 2);
  }

  v38 = *(this + 13);
  if (v38)
  {
    v5 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<7>(a3, v38, v5);
  }

  v39 = *(this + 14);
  if (v39)
  {
    v5 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<8>(a3, v39, v5);
  }

  v40 = *(this + 15);
  if (v40)
  {
    v5 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<9>(a3, v40, v5);
  }

  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v41 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<7>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 56;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 56;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<8>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 64;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 64;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<9>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 72;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 72;
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

char *operations_research::sat::CpObjectiveProto::ByteSizeLong(operations_research::sat::CpObjectiveProto *this)
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

  v11 = v4 + v2 + v5 + v7 + v8 + v10;
  if (*(this + 11))
  {
    v11 += 9;
  }

  if (*(this + 12))
  {
    v11 += 9;
  }

  v12 = *(this + 13);
  v13 = *(this + 14);
  v14 = ((-9 * __clz(v12) + 704) >> 6) + v11;
  if (v12)
  {
    v11 = v14;
  }

  v15 = ((-9 * __clz(v13) + 704) >> 6) + v11;
  if (v13)
  {
    v11 = v15;
  }

  v16 = *(this + 15);
  v17 = ((-9 * __clz(v16) + 704) >> 6) + v11;
  if (v16)
  {
    v11 = v17;
  }

  if (*(this + 128))
  {
    v18 = (v11 + 2);
  }

  else
  {
    v18 = v11;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v18, this + 33);
}

operations_research::sat::CpObjectiveProto *operations_research::sat::CpObjectiveProto::CopyFrom(operations_research::sat::CpObjectiveProto *this, const operations_research::sat::CpObjectiveProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::CpObjectiveProto::Clear(this);

    return operations_research::sat::CpObjectiveProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::FloatObjectiveProto::FloatObjectiveProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39850;
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

  *(a1 + 68) = 0;
  v35 = *(a3 + 56);
  *(a1 + 64) = *(a3 + 64);
  *(a1 + 56) = v35;
  return a1;
}

void sub_23C999578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::FloatObjectiveProto::~FloatObjectiveProto(operations_research::sat::FloatObjectiveProto *this)
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

void *operations_research::sat::FloatObjectiveProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
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
    v39 = this;
    v40 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v40;
    this = v39;
    LODWORD(v20) = *(v39 + 10);
    v21 = v39[6];
    *(v39 + 10) = v20 + v19;
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
  if (!*(a2 + 7))
  {
    v34 = *(a2 + 64);
    if (v34 != 1)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(this + 64) = v34;
    v35 = *(a2 + 1);
    if ((v35 & 1) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

  this[7] = *(a2 + 7);
  v34 = *(a2 + 64);
  if (v34 == 1)
  {
    goto LABEL_26;
  }

LABEL_23:
  v35 = *(a2 + 1);
  if ((v35 & 1) == 0)
  {
    return this;
  }

LABEL_27:
  v36 = (this + 1);

  return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v36, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *operations_research::sat::FloatObjectiveProto::Clear(operations_research::sat::FloatObjectiveProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 6) = 0;
  *(result + 56) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::FloatObjectiveProto::_InternalSerialize(operations_research::sat::FloatObjectiveProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 10;
      v7 = a2 + 1;
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
        a2 += 2;
        *v7 = v6;
        v8 = *(this + 3);
        v9 = &v8[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v13 = *v8++;
            v10 = v13;
            if (v13 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v10 | 0x80;
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
          *a2++ = v12;
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
      v27 = v6 >> 14;
      v6 >>= 7;
    }

    while (v27);
    a2 = v7 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v15 = *(this + 10);
  if (v15 < 1)
  {
LABEL_19:
    v22 = *(this + 7);
    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v15 = *(this + 10);
  }

  v16 = (8 * v15);
  *a2 = 18;
  v17 = a2 + 1;
  v18 = v16;
  if (v16 >= 0x80)
  {
    do
    {
      *v17++ = v18 | 0x80;
      v26 = v18 >> 14;
      v18 >>= 7;
    }

    while (v26);
    a2 = v17 - 1;
  }

  v19 = a2 + 2;
  *v17 = v18;
  v20 = *(this + 6);
  v21 = v16;
  if (*a3 - v19 >= v16)
  {
    memcpy(v19, v20, v16);
    a2 = &v19[v21];
    goto LABEL_19;
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v20, v16, v19);
  v22 = *(this + 7);
  if (!v22)
  {
LABEL_20:
    v23 = *(this + 64);
    if (v23 != 1)
    {
      goto LABEL_21;
    }

LABEL_32:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v23) = *(this + 64);
    }

    *a2 = 32;
    a2[1] = v23;
    a2 += 2;
    v24 = *(this + 1);
    if ((v24 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v28 = *(this + 7);
  }

  else
  {
    v28 = v22;
  }

  *a2 = 25;
  *(a2 + 1) = v28;
  a2 += 9;
  v23 = *(this + 64);
  if (v23 == 1)
  {
    goto LABEL_32;
  }

LABEL_21:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

LABEL_35:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v24 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::FloatObjectiveProto::ByteSizeLong(operations_research::sat::FloatObjectiveProto *this)
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

  v5 = *(this + 10);
  v6 = (-9 * __clz(8 * v5) + 640) >> 6;
  if (v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 + v2 + 8 * v5 + v7;
  if (*(this + 7))
  {
    v8 += 9;
  }

  if (*(this + 64))
  {
    v9 = (v8 + 2);
  }

  else
  {
    v9 = v8;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v9, this + 17);
}

operations_research::sat::FloatObjectiveProto *operations_research::sat::FloatObjectiveProto::CopyFrom(operations_research::sat::FloatObjectiveProto *this, const operations_research::sat::FloatObjectiveProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::FloatObjectiveProto::Clear(this);

    return operations_research::sat::FloatObjectiveProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(uint64_t result, uint64_t a2)
{
  *result = off_284F39D30;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  *(result + 56) = a2;
  *(result + 64) = 0;
  return result;
}

uint64_t operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39D30;
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
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  if (*(a3 + 48))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 40), (a3 + 40), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  *(a1 + 72) = 0;
  *(a1 + 64) = *(a3 + 64);
  return a1;
}

void sub_23C999E60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto(operations_research::sat::DecisionStrategyProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 40));
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

  if (*(this + 5))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 40));
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

int *operations_research::sat::DecisionStrategyProto::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = this[4];
    v7 = (v6 + v5);
    if (this[5] < v7)
    {
      this = google::protobuf::RepeatedField<int>::Grow(this + 4, v6, v7);
      LODWORD(v6) = *(v4 + 16);
      v8 = *(v4 + 24);
      *(v4 + 16) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(this + 3);
      this[4] = v7;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    v9 = *(a2 + 3);
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
  if (*(a2 + 12))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 40), (a2 + 40), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    *(v4 + 64) = v21;
  }

  v22 = *(a2 + 17);
  if (v22)
  {
    *(v4 + 68) = v22;
  }

  v23 = *(a2 + 1);
  if (v23)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v23 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::DecisionStrategyProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 4) = 0;
  if (*(this + 12) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 10);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 56) = 0;
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::DecisionStrategyProto::_InternalSerialize(operations_research::sat::DecisionStrategyProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 8);
  if (v9 >= 1)
  {
    if (*a3 <= a2)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *v7 = 10;
      v10 = v7 + 1;
      if (v9 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v10 = a2 + 1;
      if (v9 < 0x80)
      {
LABEL_4:
        v7 += 2;
        *v10 = v9;
        v11 = *(this + 3);
        v12 = &v11[*(this + 4)];
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
LABEL_11:
                *v7++ = v13 | 0x80;
                v15 = v13 >> 7;
                v17 = v13 >> 14;
                v13 >>= 7;
              }

              while (v17);
              goto LABEL_8;
            }
          }

          else
          {
            v14 = *v11++;
            v13 = v14;
            if (v14 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v15) = v13;
LABEL_8:
          *v7++ = v15;
          if (v11 >= v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v10++ = v9 | 0x80;
      v32 = v9 >> 14;
      v9 >>= 7;
    }

    while (v32);
    v7 = v10 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v18 = *(this + 16);
  if (v18)
  {
    if (*a3 <= v7)
    {
      v33 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v34 = *(this + 16);
      *v33 = 16;
      v19 = v33 + 1;
      v20 = v34;
      if (v34 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v7 = 16;
      v19 = v7 + 1;
      v20 = v18;
      if (v18 < 0x80)
      {
LABEL_16:
        LOBYTE(v21) = v20;
LABEL_17:
        *v19 = v21;
        v7 = v19 + 1;
        goto LABEL_18;
      }
    }

    do
    {
      *v19++ = v20 | 0x80;
      v21 = v20 >> 7;
      v35 = v20 >> 14;
      v20 >>= 7;
    }

    while (v35);
    goto LABEL_17;
  }

LABEL_18:
  v22 = *(this + 17);
  if (!v22)
  {
    goto LABEL_23;
  }

  if (*a3 <= v7)
  {
    v36 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v37 = *(this + 17);
    *v36 = 24;
    v23 = v36 + 1;
    v24 = v37;
    if (v37 < 0x80)
    {
      goto LABEL_21;
    }

    do
    {
LABEL_41:
      *v23++ = v24 | 0x80;
      v25 = v24 >> 7;
      v38 = v24 >> 14;
      v24 >>= 7;
    }

    while (v38);
    goto LABEL_22;
  }

  *v7 = 24;
  v23 = v7 + 1;
  v24 = v22;
  if (v22 >= 0x80)
  {
    goto LABEL_41;
  }

LABEL_21:
  LOBYTE(v25) = v24;
LABEL_22:
  *v23 = v25;
  v7 = v23 + 1;
LABEL_23:
  v26 = *(this + 12);
  if (v26)
  {
    v27 = 0;
    v28 = (this + 40);
    do
    {
      if (*v28)
      {
        v29 = (*v28 + 8 * v27 + 7);
      }

      else
      {
        v29 = (this + 40);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *v29, *(*v29 + 72), v7, a3, a6);
      ++v27;
    }

    while (v26 != v27);
  }

  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v30 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

char *operations_research::sat::DecisionStrategyProto::ByteSizeLong(operations_research::sat::DecisionStrategyProto *this)
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

  v5 = *(this + 5);
  v6 = v4 + v2;
  v7 = *(this + 12);
  v8 = (v6 + v7);
  if (v5)
  {
    v9 = (v5 + 7);
  }

  else
  {
    v9 = (this + 40);
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

  v13 = *(this + 16);
  v14 = v8 + ((640 - 9 * __clz(v13)) >> 6);
  if (v13)
  {
    v15 = (v14 + 1);
  }

  else
  {
    v15 = v8;
  }

  v16 = *(this + 17);
  v17 = v15 + ((640 - 9 * __clz(v16)) >> 6);
  if (v16)
  {
    v18 = (v17 + 1);
  }

  else
  {
    v18 = v15;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v18, this + 18);
}

int *operations_research::sat::DecisionStrategyProto::CopyFrom(int *this, const operations_research::sat::DecisionStrategyProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::DecisionStrategyProto::Clear(this);

    return operations_research::sat::DecisionStrategyProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::DecisionStrategyProto::InternalSwap(uint64_t this, operations_research::sat::DecisionStrategyProto *a2)
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
  return this;
}

uint64_t operations_research::sat::PartialVariableAssignment::PartialVariableAssignment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39510;
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
  return a1;
}

void sub_23C99A9E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PartialVariableAssignment::~PartialVariableAssignment(operations_research::sat::PartialVariableAssignment *this)
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

void *operations_research::sat::PartialVariableAssignment::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
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
  v34 = *(a2 + 1);
  if (v34)
  {
    v35 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v35, ((v34 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::PartialVariableAssignment::Clear(operations_research::sat::PartialVariableAssignment *this)
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

const google::protobuf::UnknownFieldSet *operations_research::sat::PartialVariableAssignment::_InternalSerialize(operations_research::sat::PartialVariableAssignment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

char *operations_research::sat::PartialVariableAssignment::ByteSizeLong(operations_research::sat::PartialVariableAssignment *this)
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

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v4 + v3 + v5 + v6), this + 15);
}

operations_research::sat::PartialVariableAssignment *operations_research::sat::PartialVariableAssignment::CopyFrom(operations_research::sat::PartialVariableAssignment *this, const operations_research::sat::PartialVariableAssignment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::PartialVariableAssignment::Clear(this);

    return operations_research::sat::PartialVariableAssignment::MergeImpl(v4, a2, v5);
  }

  return this;
}

double operations_research::sat::SparsePermutationProto::SparsePermutationProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F39440;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  return result;
}

uint64_t operations_research::sat::SparsePermutationProto::SparsePermutationProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39440;
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

void sub_23C99B304(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SparsePermutationProto::~SparsePermutationProto(operations_research::sat::SparsePermutationProto *this)
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

void *operations_research::sat::SparsePermutationProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
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

google::protobuf::UnknownFieldSet *operations_research::sat::SparsePermutationProto::Clear(operations_research::sat::SparsePermutationProto *this)
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

const google::protobuf::UnknownFieldSet *operations_research::sat::SparsePermutationProto::_InternalSerialize(operations_research::sat::SparsePermutationProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

char *operations_research::sat::SparsePermutationProto::ByteSizeLong(operations_research::sat::SparsePermutationProto *this)
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

void *operations_research::sat::DenseMatrixProto::DenseMatrixProto(void *result, uint64_t a2)
{
  *result = off_284F39920;
  result[1] = a2;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void operations_research::sat::DenseMatrixProto::~DenseMatrixProto(operations_research::sat::DenseMatrixProto *this)
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

void *operations_research::sat::DenseMatrixProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
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

google::protobuf::UnknownFieldSet *operations_research::sat::DenseMatrixProto::Clear(operations_research::sat::DenseMatrixProto *this)
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

const google::protobuf::UnknownFieldSet *operations_research::sat::DenseMatrixProto::_InternalSerialize(operations_research::sat::DenseMatrixProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

char *operations_research::sat::DenseMatrixProto::ByteSizeLong(operations_research::sat::DenseMatrixProto *this)
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

void operations_research::sat::SymmetryProto::~SymmetryProto(operations_research::sat::SymmetryProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 40));
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

  if (*(this + 5))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 40));
  }

  if (*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  JUMPOUT(0x23EED9460);
}

int *operations_research::sat::SymmetryProto::MergeImpl(int *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  if (*(a2 + 6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::SparsePermutationProto>);
  }

  if (*(a2 + 12))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 40), (a2 + 40), google::protobuf::Arena::CopyConstruct<operations_research::sat::DenseMatrixProto>);
  }

  v5 = *(a2 + 1);
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::SymmetryProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 6) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 4);
  }

  if (*(v1 + 48) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 40));
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  if (v3)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v2);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::SymmetryProto::_InternalSerialize(operations_research::sat::SymmetryProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
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

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(1, *v12, *(*v12 + 60), a2, a3, a6);
      ++v10;
    }

    while (v9 != v10);
  }

  v13 = *(this + 12);
  if (v13)
  {
    v14 = 0;
    v15 = (this + 40);
    do
    {
      if (*v15)
      {
        v16 = (*v15 + 8 * v14 + 7);
      }

      else
      {
        v16 = (this + 40);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v16, *(*v16 + 44), a2, a3, a6);
      ++v14;
    }

    while (v13 != v14);
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

char *operations_research::sat::SymmetryProto::ByteSizeLong(operations_research::sat::SymmetryProto *this)
{
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = this + 16;
  }

  if (v3)
  {
    v5 = 8 * v3;
    while (1)
    {
      v8 = *v4;
      v9 = google::protobuf::internal::WireFormatLite::Int32Size((*v4 + 16));
      v10 = v9;
      v8[8] = v9;
      if (v9)
      {
        v11 = ((640 - 9 * __clz(v9)) >> 6) + 1;
        v12 = google::protobuf::internal::WireFormatLite::Int32Size(v8 + 10);
        v8[14] = v12;
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = 0;
        v12 = google::protobuf::internal::WireFormatLite::Int32Size(v8 + 10);
        v8[14] = v12;
        if (!v12)
        {
LABEL_12:
          v6 = 0;
          goto LABEL_7;
        }
      }

      v6 = ((640 - 9 * __clz(v12)) >> 6) + 1;
LABEL_7:
      v7 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v8, (v11 + v10 + v12 + v6), v8 + 15);
      v3 += &v7[(352 - 9 * __clz(v7)) >> 6];
      v4 += 8;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  v3 = 0;
LABEL_14:
  v13 = *(this + 5);
  v14 = *(this + 12);
  v15 = (v3 + v14);
  if (v13)
  {
    v16 = (v13 + 7);
  }

  else
  {
    v16 = this + 40;
  }

  if (v14)
  {
    v17 = 8 * v14;
    while (1)
    {
      v19 = *v16;
      v20 = google::protobuf::internal::WireFormatLite::Int32Size((*v16 + 16));
      *(v19 + 8) = v20;
      if (!v20)
      {
        break;
      }

      v21 = (((640 - 9 * __clz(v20)) >> 6) + 1 + v20);
      v22 = *(v19 + 9);
      if (v22)
      {
        goto LABEL_22;
      }

LABEL_23:
      v23 = *(v19 + 10);
      if (v23)
      {
        v21 = (v21 + ((704 - 9 * __clz(v23)) >> 6));
      }

      v18 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v19, v21, v19 + 11);
      v15 = (v15 + v18 + ((352 - 9 * __clz(v18)) >> 6));
      v16 += 8;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    v21 = 0;
    v22 = *(v19 + 9);
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_22:
    v21 = (v21 + ((704 - 9 * __clz(v22)) >> 6));
    goto LABEL_23;
  }

LABEL_27:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v15, this + 16);
}

google::protobuf::UnknownFieldSet *operations_research::sat::SymmetryProto::CopyFrom(google::protobuf::UnknownFieldSet *this, const operations_research::sat::SymmetryProto *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = operations_research::sat::SymmetryProto::Clear(this);
    if (*(a2 + 6))
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v3 + 4, (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::SparsePermutationProto>);
    }

    if (*(a2 + 12))
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v3 + 10, (a2 + 40), google::protobuf::Arena::CopyConstruct<operations_research::sat::DenseMatrixProto>);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v3 + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }
  }

  return this;
}

double operations_research::sat::CpModelProto::CpModelProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F39F38;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t operations_research::sat::CpModelProto::CpModelProto(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39F38;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = *(a3 + 16);
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = a2;
  if (*(a3 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 24), (a3 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  if (*(a3 + 56))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 48), (a3 + 48), google::protobuf::Arena::CopyConstruct<operations_research::sat::ConstraintProto>);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  if (*(a3 + 80))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 72), (a3 + 72), google::protobuf::Arena::CopyConstruct<operations_research::sat::DecisionStrategyProto>);
  }

  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = a2;
  v8 = *(a3 + 96);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 96, 0, *(a3 + 96));
    *(a1 + 96) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 104);
      v10 = *(a3 + 104);
      if (v8 < 8)
      {
        goto LABEL_16;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_16;
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
LABEL_16:
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

  *(a1 + 112) = 0;
  v21 = *(a3 + 120);
  if ((v21 & 3) != 0)
  {
    v21 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 120), a2);
  }

  *(a1 + 120) = v21;
  v22 = *(a1 + 16);
  if (v22)
  {
    *(a1 + 128) = google::protobuf::Arena::CopyConstruct<operations_research::sat::CpObjectiveProto>(a2, *(a3 + 128));
    if ((v22 & 2) != 0)
    {
LABEL_22:
      *(a1 + 136) = google::protobuf::Arena::CopyConstruct<operations_research::sat::PartialVariableAssignment>(a2, *(a3 + 136));
      if ((v22 & 4) != 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      *(a1 + 144) = 0;
      if ((v22 & 8) != 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v23 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    if ((v22 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  *(a1 + 136) = 0;
  if ((v22 & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  *(a1 + 144) = google::protobuf::Arena::CopyConstruct<operations_research::sat::SymmetryProto>(a2, *(a3 + 144));
  if ((v22 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v23 = google::protobuf::Arena::CopyConstruct<operations_research::sat::FloatObjectiveProto>(a2, *(a3 + 152));
LABEL_29:
  *(a1 + 152) = v23;
  return a1;
}

void sub_23C99C73C(_Unwind_Exception *a1)
{
  if (*(v1 + 100) >= 1)
  {
    v5 = *(v1 + 104);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(v2);
  google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField((v1 + 24));
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelProto::SharedDtor(operations_research::sat::CpModelProto *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 15);
  v2 = *(this + 16);
  if (v2)
  {
    operations_research::sat::CpObjectiveProto::~CpObjectiveProto(v2);
    MEMORY[0x23EED9460]();
  }

  v3 = *(this + 17);
  if (v3)
  {
    if (*(v3 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v3 + 8));
    }

    if (*(v3 + 44) >= 1)
    {
      v4 = *(v3 + 48);
      v6 = *(v4 - 8);
      v5 = (v4 - 8);
      if (!v6)
      {
        operator delete(v5);
      }
    }

    if (*(v3 + 20) >= 1)
    {
      v7 = *(v3 + 24);
      v9 = *(v7 - 8);
      v8 = (v7 - 8);
      if (!v9)
      {
        operator delete(v8);
      }
    }

    MEMORY[0x23EED9460](v3, 0x1081C408C98BF25);
  }

  v10 = *(this + 18);
  if (v10)
  {
    if (v10[1])
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v10 + 1);
    }

    if (v10[5])
    {
      google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((v10 + 5));
    }

    if (v10[2])
    {
      google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((v10 + 2));
    }

    MEMORY[0x23EED9460](v10, 0x10A1C405CE04F75);
  }

  v11 = *(this + 19);
  if (v11)
  {
    if (*(v11 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v11 + 8));
    }

    if (*(v11 + 44) >= 1)
    {
      v12 = *(v11 + 48);
      v14 = *(v12 - 8);
      v13 = (v12 - 8);
      if (!v14)
      {
        operator delete(v13);
      }
    }

    if (*(v11 + 20) >= 1)
    {
      v15 = *(v11 + 24);
      v17 = *(v15 - 8);
      v16 = (v15 - 8);
      if (!v17)
      {
        operator delete(v16);
      }
    }

    MEMORY[0x23EED9460](v11, 0x1081C40A19F9B97);
  }

  if (*(this + 25) < 1 || (v18 = *(this + 13), v20 = *(v18 - 8), v19 = (v18 - 8), v20))
  {
    v21 = (this + 72);
    if (!*(this + 9))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  operator delete(v19);
  v21 = (this + 72);
  if (*(this + 9))
  {
LABEL_34:
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v21);
  }

LABEL_35:
  if (*(this + 6))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 48));
  }

  v23 = *(this + 3);
  v22 = (this + 24);
  if (v23)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v22);
  }
}

void operations_research::sat::CpModelProto::~CpModelProto(operations_research::sat::CpModelProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::CpModelProto::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::CpModelProto::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::CpModelProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
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
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
  }

LABEL_4:
  if (*(a2 + 14))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v4 + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<operations_research::sat::ConstraintProto>);
  }

  if (*(a2 + 20))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v4 + 18, (a2 + 72), google::protobuf::Arena::CopyConstruct<operations_research::sat::DecisionStrategyProto>);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v4 + 24);
    a3 = (v8 + v7);
    if (*(v4 + 25) < a3)
    {
      this = google::protobuf::RepeatedField<int>::Grow(v4 + 12, v8, a3);
      LODWORD(v8) = *(v4 + 24);
      a3 = (v8 + v7);
      v9 = v4[13];
      *(v4 + 24) = a3;
      if (v7 < 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = v4[13];
      *(v4 + 24) = a3;
      if (v7 < 1)
      {
        goto LABEL_18;
      }
    }

    v10 = *(a2 + 13);
    v11 = (v9 + 4 * v8);
    if (v7 < 8)
    {
      goto LABEL_16;
    }

    v12 = 4 * v8 + v9;
    if ((v12 - v10) < 0x20)
    {
      goto LABEL_16;
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
LABEL_16:
      v20 = v7 + 1;
      do
      {
        v21 = *v10++;
        *v11++ = v21;
        --v20;
      }

      while (v20 > 1);
    }
  }

LABEL_18:
  v22 = *(a2 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    v23 = *(v22 + 8);
  }

  if (v23)
  {
    v24 = v4[1];
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 15, v22, v24);
  }

  v25 = *(a2 + 4);
  if ((v25 & 0xF) == 0)
  {
    goto LABEL_49;
  }

  if (v25)
  {
    v26 = v4[16];
    v27 = *(a2 + 16);
    if (v26)
    {
      this = operations_research::sat::CpObjectiveProto::MergeImpl(v26, v27, a3);
      if ((v25 & 2) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::sat::CpObjectiveProto>(v6, v27);
      v4[16] = this;
      if ((v25 & 2) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_27:
    if ((v25 & 4) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if ((v25 & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_33:
  v28 = v4[17];
  v29 = *(a2 + 17);
  if (v28)
  {
    this = operations_research::sat::PartialVariableAssignment::MergeImpl(v28, v29, a3);
    if ((v25 & 4) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    this = google::protobuf::Arena::CopyConstruct<operations_research::sat::PartialVariableAssignment>(v6, v29);
    v4[17] = this;
    if ((v25 & 4) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_37:
  v30 = v4[18];
  v31 = *(a2 + 18);
  if (v30)
  {
    if (*(v31 + 24))
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v30 + 16), (v31 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::SparsePermutationProto>);
    }

    if (*(v31 + 48))
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v30 + 40), (v31 + 40), google::protobuf::Arena::CopyConstruct<operations_research::sat::DenseMatrixProto>);
    }

    v32 = *(v31 + 8);
    if (v32)
    {
      this = google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v30 + 8), ((v32 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

LABEL_44:
    if ((v25 & 8) != 0)
    {
      goto LABEL_45;
    }

LABEL_49:
    *(v4 + 4) |= v25;
    v35 = *(a2 + 1);
    if ((v35 & 1) == 0)
    {
      return this;
    }

    goto LABEL_52;
  }

  this = google::protobuf::Arena::CopyConstruct<operations_research::sat::SymmetryProto>(v6, *(a2 + 18));
  v4[18] = this;
  if ((v25 & 8) == 0)
  {
    goto LABEL_49;
  }

LABEL_45:
  v33 = v4[19];
  v34 = *(a2 + 19);
  if (v33)
  {
    this = operations_research::sat::FloatObjectiveProto::MergeImpl(v33, v34, a3);
    *(v4 + 4) |= v25;
    v35 = *(a2 + 1);
    if ((v35 & 1) == 0)
    {
      return this;
    }
  }

  else
  {
    this = google::protobuf::Arena::CopyConstruct<operations_research::sat::FloatObjectiveProto>(v6, v34);
    v4[19] = this;
    *(v4 + 4) |= v25;
    v35 = *(a2 + 1);
    if ((v35 & 1) == 0)
    {
      return this;
    }
  }

LABEL_52:

  return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
}

google::protobuf::UnknownFieldSet *operations_research::sat::CpModelProto::Clear(operations_research::sat::CpModelProto *this)
{
  if (*(this + 8) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(this + 14) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  if (*(this + 20) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 18);
  }

  *(this + 24) = 0;
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 15);
  v3 = *(this + 4);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    result = operations_research::sat::PartialVariableAssignment::Clear(*(this + 17));
    if ((v3 & 4) == 0)
    {
LABEL_11:
      if ((v3 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_19;
  }

  result = operations_research::sat::CpObjectiveProto::Clear(*(this + 16));
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v3 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  result = operations_research::sat::SymmetryProto::Clear(*(this + 18));
  if ((v3 & 8) != 0)
  {
LABEL_12:
    result = operations_research::sat::FloatObjectiveProto::Clear(*(this + 19));
  }

LABEL_13:
  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::CpModelProto::_InternalSerialize(operations_research::sat::CpModelProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v9 = *(this + 15);
  v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if (v11 < 0)
  {
    v13 = *(v10 + 8);
    if (!v13)
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v10, v13, 1, "operations_research.sat.CpModelProto.name");
    v12 = *(v10 + 23);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v9 & 0xFFFFFFFFFFFFFFFCLL), v11, 1, "operations_research.sat.CpModelProto.name");
    v12 = *(v10 + 23);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  v12 = *(v10 + 8);
  if (v12 > 127)
  {
    goto LABEL_56;
  }

LABEL_8:
  if (*a3 - a2 + 14 < v12)
  {
LABEL_56:
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v10, a2);
    v15 = *(this + 8);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  *a2 = 10;
  *(a2 + 1) = v12;
  if (*(v10 + 23) >= 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = *v10;
  }

  memcpy(a2 + 2, v14, v12);
  a2 = (a2 + v12 + 2);
LABEL_13:
  v15 = *(this + 8);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_14:
  v16 = 0;
  v17 = (this + 24);
  do
  {
    if (*v17)
    {
      v18 = (*v17 + 8 * v16 + 7);
    }

    else
    {
      v18 = (this + 24);
    }

    a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(2, *v18, *(*v18 + 48), a2, a3, a6);
    ++v16;
  }

  while (v15 != v16);
LABEL_19:
  v19 = *(this + 14);
  if (v19)
  {
    v20 = 0;
    v21 = (this + 48);
    do
    {
      if (*v21)
      {
        v22 = (*v21 + 8 * v20 + 7);
      }

      else
      {
        v22 = (this + 48);
      }

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(3, *v22, *(*v22 + 56), a2, a3, a6);
      ++v20;
    }

    while (v19 != v20);
  }

  v23 = *(this + 4);
  if (v23)
  {
    a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *(this + 16), *(*(this + 16) + 132), a2, a3, a6);
  }

  v24 = *(this + 20);
  if (v24)
  {
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

      a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *v27, *(*v27 + 72), a2, a3, a6);
      ++v25;
    }

    while (v24 != v25);
  }

  if ((v23 & 2) != 0)
  {
    a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(6, *(this + 17), *(*(this + 17) + 60), a2, a3, a6);
  }

  v28 = *(this + 28);
  if (v28 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 58;
      v29 = a2 + 1;
      if (v28 < 0x80)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *a2 = 58;
      v29 = a2 + 1;
      if (v28 < 0x80)
      {
LABEL_38:
        a2 = (a2 + 2);
        *v29 = v28;
        v30 = *(this + 13);
        v31 = &v30[*(this + 24)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v35 = *v30++;
            v32 = v35;
            if (v35 >= 0x80)
            {
              do
              {
LABEL_45:
                *a2 = v32 | 0x80;
                a2 = (a2 + 1);
                v34 = v32 >> 7;
                v36 = v32 >> 14;
                v32 >>= 7;
              }

              while (v36);
              goto LABEL_42;
            }
          }

          else
          {
            v33 = *v30++;
            v32 = v33;
            if (v33 >= 0x80)
            {
              goto LABEL_45;
            }
          }

          LOBYTE(v34) = v32;
LABEL_42:
          *a2 = v34;
          a2 = (a2 + 1);
          if (v30 >= v31)
          {
            goto LABEL_47;
          }
        }
      }
    }

    do
    {
      *v29++ = v28 | 0x80;
      v39 = v28 >> 14;
      v28 >>= 7;
    }

    while (v39);
    a2 = (v29 - 1);
    goto LABEL_38;
  }

LABEL_47:
  if ((v23 & 4) == 0)
  {
    if ((v23 & 8) == 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(9, *(this + 19), *(*(this + 19) + 68), a2, a3, a6);
    v37 = *(this + 1);
    if ((v37 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_53;
  }

  a2 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(8, *(this + 18), *(*(this + 18) + 64), a2, a3, a6);
  if ((v23 & 8) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return a2;
  }

LABEL_53:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v37 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::CpModelProto::ByteSizeLong(operations_research::sat::CpModelProto *this)
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
      v7 = *v4;
      v8 = google::protobuf::internal::WireFormatLite::Int64Size((*v4 + 16));
      *(v7 + 32) = v8;
      if (v8)
      {
        v9 = ((640 - 9 * __clz(v8)) >> 6) + 1;
        v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v11 = *(v10 + 23);
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = 0;
        v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v11 = *(v10 + 23);
        if ((v11 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v12 = (v9 + v8);
          if (v11)
          {
            goto LABEL_13;
          }

          goto LABEL_6;
        }
      }

      v12 = (v9 + v8);
      if (*(v10 + 8))
      {
LABEL_13:
        v13 = *(v10 + 8);
        if (v11 >= 0)
        {
          v13 = v11;
        }

        v12 = (v12 + v13 + ((352 - 9 * __clz(v13)) >> 6) + 1);
      }

LABEL_6:
      v6 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v7, v12, (v7 + 48));
      v3 += &v6[(352 - 9 * __clz(v6)) >> 6];
      v4 += 8;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_17;
      }
    }
  }

  v3 = 0;
LABEL_17:
  v14 = *(this + 6);
  v15 = *(this + 14);
  v16 = v3 + v15;
  if (v14)
  {
    v17 = (v14 + 7);
  }

  else
  {
    v17 = (this + 48);
  }

  if (v15)
  {
    v18 = 8 * v15;
    do
    {
      v19 = *v17++;
      v20 = operations_research::sat::ConstraintProto::ByteSizeLong(v19);
      v16 += &v20[(352 - 9 * __clz(v20)) >> 6];
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(this + 9);
  v22 = *(this + 20);
  v23 = v16 + v22;
  if (v21)
  {
    v24 = (v21 + 7);
  }

  else
  {
    v24 = (this + 72);
  }

  if (v22)
  {
    v25 = 8 * v22;
    do
    {
      v26 = *v24++;
      v27 = operations_research::sat::DecisionStrategyProto::ByteSizeLong(v26);
      v23 += &v27[(352 - 9 * __clz(v27)) >> 6];
      v25 -= 8;
    }

    while (v25);
  }

  v28 = google::protobuf::internal::WireFormatLite::Int32Size(this + 24);
  *(this + 28) = v28;
  v29 = (640 - 9 * __clz(v28)) >> 6;
  if (v28)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = v28 + v23;
  v32 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 23);
  if (v33 < 0)
  {
    v34 = (v31 + v30);
    if (!*(v32 + 8))
    {
      goto LABEL_37;
    }
  }

  else
  {
    v34 = (v31 + v30);
    if (!*(v32 + 23))
    {
      goto LABEL_37;
    }
  }

  v35 = *(v32 + 8);
  if (v33 >= 0)
  {
    v35 = *(v32 + 23);
  }

  v34 = (v34 + v35 + ((352 - 9 * __clz(v35)) >> 6) + 1);
LABEL_37:
  v36 = *(this + 4);
  if ((v36 & 0xF) == 0)
  {
    goto LABEL_54;
  }

  if (v36)
  {
    v48 = operations_research::sat::CpObjectiveProto::ByteSizeLong(*(this + 16));
    v34 = &v48[((352 - 9 * __clz(v48)) >> 6) + 1 + v34];
    if ((v36 & 2) == 0)
    {
LABEL_40:
      if ((v36 & 4) == 0)
      {
        goto LABEL_41;
      }

LABEL_66:
      v56 = operations_research::sat::SymmetryProto::ByteSizeLong(*(this + 18));
      v34 = &v56[((352 - 9 * __clz(v56)) >> 6) + 1 + v34];
      if ((v36 & 8) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_40;
  }

  v49 = *(this + 17);
  v50 = google::protobuf::internal::WireFormatLite::Int32Size(v49 + 4);
  v51 = v50;
  v49[8] = v50;
  if (v50)
  {
    v52 = ((640 - 9 * __clz(v50)) >> 6) + 1;
    v53 = google::protobuf::internal::WireFormatLite::Int64Size(v49 + 10);
    v49[14] = v53;
    if (v53)
    {
LABEL_62:
      v54 = ((640 - 9 * __clz(v53)) >> 6) + 1;
      goto LABEL_65;
    }
  }

  else
  {
    v52 = 0;
    v53 = google::protobuf::internal::WireFormatLite::Int64Size(v49 + 10);
    v49[14] = v53;
    if (v53)
    {
      goto LABEL_62;
    }
  }

  v54 = 0;
LABEL_65:
  v55 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v49, (v52 + v51 + v53 + v54), v49 + 15);
  v34 = &v55[v34 + 1 + ((352 - 9 * __clz(v55)) >> 6)];
  if ((v36 & 4) != 0)
  {
    goto LABEL_66;
  }

LABEL_41:
  if ((v36 & 8) == 0)
  {
    goto LABEL_54;
  }

LABEL_42:
  v37 = *(this + 19);
  v38 = google::protobuf::internal::WireFormatLite::Int32Size((v37 + 16));
  *(v37 + 32) = v38;
  v39 = (640 - 9 * __clz(v38)) >> 6;
  if (v38)
  {
    v40 = v39 + 1;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(v37 + 40);
  v42 = (640 - 9 * __clz(8 * v41)) >> 6;
  if (v41)
  {
    v43 = v42 + 1;
  }

  else
  {
    v43 = 0;
  }

  v44 = v40 + v38 + 8 * v41 + v43;
  if (*(v37 + 56))
  {
    v44 += 9;
  }

  if (*(v37 + 64))
  {
    v45 = (v44 + 2);
  }

  else
  {
    v45 = v44;
  }

  v46 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v37, v45, (v37 + 68));
  v34 = &v46[v34 + 1 + ((352 - 9 * __clz(v46)) >> 6)];
LABEL_54:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v34, this + 5);
}

operations_research::sat::CpModelProto *operations_research::sat::CpModelProto::CopyFrom(operations_research::sat::CpModelProto *this, const operations_research::sat::CpModelProto *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::CpModelProto::Clear(this);

    return operations_research::sat::CpModelProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

char *operations_research::sat::CpModelProto::InternalSwap(operations_research::sat::CpModelProto *this, operations_research::sat::CpModelProto *a2)
{
  v2 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v2;
  LODWORD(v2) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
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
  LOBYTE(v2) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v2;
  LOBYTE(v2) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v2;
  LOBYTE(v2) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v2;
  LOBYTE(v2) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v2;
  LOBYTE(v2) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v2;
  LOBYTE(v2) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v2;
  LOBYTE(v2) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v2;
  LOBYTE(v2) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v2;
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
  LOBYTE(v2) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v2;
  LOBYTE(v2) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v2;
  LOBYTE(v2) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v2;
  LOBYTE(v2) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v2;
  LOBYTE(v2) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v2;
  LOBYTE(v2) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v2;
  LOBYTE(v2) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v2;
  LOBYTE(v2) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v2;
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
  LOBYTE(v2) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v2;
  LOBYTE(v2) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v2;
  LOBYTE(v2) = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v2;
  LOBYTE(v2) = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v2;
  LOBYTE(v2) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v2;
  LOBYTE(v2) = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v2;
  LOBYTE(v2) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v2;
  LOBYTE(v2) = *(this + 87);
  *(this + 87) = *(a2 + 87);
  *(a2 + 87) = v2;
  LOBYTE(v2) = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v2;
  LOBYTE(v2) = *(this + 97);
  *(this + 97) = *(a2 + 97);
  *(a2 + 97) = v2;
  LOBYTE(v2) = *(this + 98);
  *(this + 98) = *(a2 + 98);
  *(a2 + 98) = v2;
  LOBYTE(v2) = *(this + 99);
  *(this + 99) = *(a2 + 99);
  *(a2 + 99) = v2;
  LOBYTE(v2) = *(this + 100);
  *(this + 100) = *(a2 + 100);
  *(a2 + 100) = v2;
  LOBYTE(v2) = *(this + 101);
  *(this + 101) = *(a2 + 101);
  *(a2 + 101) = v2;
  LOBYTE(v2) = *(this + 102);
  *(this + 102) = *(a2 + 102);
  *(a2 + 102) = v2;
  LOBYTE(v2) = *(this + 103);
  *(this + 103) = *(a2 + 103);
  *(a2 + 103) = v2;
  LOBYTE(v2) = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v2;
  LOBYTE(v2) = *(this + 105);
  *(this + 105) = *(a2 + 105);
  *(a2 + 105) = v2;
  LOBYTE(v2) = *(this + 106);
  *(this + 106) = *(a2 + 106);
  *(a2 + 106) = v2;
  LOBYTE(v2) = *(this + 107);
  *(this + 107) = *(a2 + 107);
  *(a2 + 107) = v2;
  LOBYTE(v2) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v2;
  LOBYTE(v2) = *(this + 109);
  *(this + 109) = *(a2 + 109);
  *(a2 + 109) = v2;
  LOBYTE(v2) = *(this + 110);
  *(this + 110) = *(a2 + 110);
  *(a2 + 110) = v2;
  LOBYTE(v2) = *(this + 111);
  *(this + 111) = *(a2 + 111);
  *(a2 + 111) = v2;
  v3 = *(a2 + 15);
  *(a2 + 15) = *(this + 15);
  *(this + 15) = v3;
  return google::protobuf::internal::memswap<32ul>(this + 128, a2 + 128);
}

char *google::protobuf::internal::memswap<32ul>(char *result, char *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  v6 = result[4];
  result[4] = a2[4];
  a2[4] = v6;
  v7 = result[5];
  result[5] = a2[5];
  a2[5] = v7;
  v8 = result[6];
  result[6] = a2[6];
  a2[6] = v8;
  v9 = result[7];
  result[7] = a2[7];
  a2[7] = v9;
  v10 = result[8];
  result[8] = a2[8];
  a2[8] = v10;
  v11 = result[9];
  result[9] = a2[9];
  a2[9] = v11;
  v12 = result[10];
  result[10] = a2[10];
  a2[10] = v12;
  v13 = result[11];
  result[11] = a2[11];
  a2[11] = v13;
  v14 = result[12];
  result[12] = a2[12];
  a2[12] = v14;
  v15 = result[13];
  result[13] = a2[13];
  a2[13] = v15;
  v16 = result[14];
  result[14] = a2[14];
  a2[14] = v16;
  v17 = result[15];
  result[15] = a2[15];
  a2[15] = v17;
  v18 = result[16];
  result[16] = a2[16];
  a2[16] = v18;
  v19 = result[17];
  result[17] = a2[17];
  a2[17] = v19;
  v20 = result[18];
  result[18] = a2[18];
  a2[18] = v20;
  v21 = result[19];
  result[19] = a2[19];
  a2[19] = v21;
  v22 = result[20];
  result[20] = a2[20];
  a2[20] = v22;
  v23 = result[21];
  result[21] = a2[21];
  a2[21] = v23;
  v24 = result[22];
  result[22] = a2[22];
  a2[22] = v24;
  v25 = result[23];
  result[23] = a2[23];
  a2[23] = v25;
  v26 = result[24];
  result[24] = a2[24];
  a2[24] = v26;
  v27 = result[25];
  result[25] = a2[25];
  a2[25] = v27;
  v28 = result[26];
  result[26] = a2[26];
  a2[26] = v28;
  v29 = result[27];
  result[27] = a2[27];
  a2[27] = v29;
  v30 = result[28];
  result[28] = a2[28];
  a2[28] = v30;
  v31 = result[29];
  result[29] = a2[29];
  a2[29] = v31;
  v32 = result[30];
  result[30] = a2[30];
  a2[30] = v32;
  v33 = result[31];
  result[31] = a2[31];
  a2[31] = v33;
  return result;
}

double operations_research::sat::CpSolverSolution::CpSolverSolution(void *a1, uint64_t a2)
{
  *a1 = off_284F39988;
  a1[1] = a2;
  result = 0.0;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  return result;
}

void operations_research::sat::CpSolverSolution::~CpSolverSolution(operations_research::sat::CpSolverSolution *this)
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

void *operations_research::sat::CpSolverSolution::MergeImpl(void *this, uint64_t **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    if (*(this + 5) < v4 + v3)
    {
      v20 = this;
      v21 = a2;
      google::protobuf::RepeatedField<long long>::Grow(this + 2, v4);
      a2 = v21;
      this = v20;
      LODWORD(v4) = *(v20 + 16);
      v5 = *(v20 + 24);
      *(v20 + 16) = v4 + v3;
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

    v6 = a2[3];
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
  v18 = a2[1];
  if (v18)
  {
    v19 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v19, ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::CpSolverSolution::Clear(operations_research::sat::CpSolverSolution *this)
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

const google::protobuf::UnknownFieldSet *operations_research::sat::CpSolverSolution::_InternalSerialize(operations_research::sat::CpSolverSolution *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

char *operations_research::sat::CpSolverSolution::ByteSizeLong(operations_research::sat::CpSolverSolution *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int64Size(this + 4);
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

double operations_research::sat::CpSolverResponse::CpSolverResponse(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F39E00;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 128) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 264) = 0;
  result = 0.0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t operations_research::sat::CpSolverResponse::CpSolverResponse(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39E00;
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
    v9 = *(a3 + 24);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 24, 0);
    *(a1 + 24) = v8;
    if (v8 >= 1)
    {
      v10 = *(a1 + 32);
      v11 = *(a3 + 32);
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

  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  if (*(a3 + 56))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 48), (a3 + 48), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
  }

  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = a2;
  v22 = *(a3 + 72);
  if (v22)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 72, 0, *(a3 + 72));
    *(a1 + 72) = v22;
    if (v22 >= 1)
    {
      v23 = *(a1 + 80);
      v24 = *(a3 + 80);
      if (v22 < 8)
      {
        goto LABEL_21;
      }

      if ((v23 - v24) < 0x20)
      {
        goto LABEL_21;
      }

      v25 = v22;
      v26 = v22 & 0x7FFFFFF8;
      LODWORD(v22) = v22 - (v22 & 0x7FFFFFF8);
      v27 = &v23[v26];
      v28 = &v24[v26];
      v29 = (v24 + 4);
      v30 = v23 + 4;
      v31 = v26;
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
      v23 = v27;
      v24 = v28;
      if (v26 != v25)
      {
LABEL_21:
        v33 = v22 + 1;
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

  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  if (*(a3 + 104))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 96), (a3 + 96), google::protobuf::Arena::CopyConstruct<operations_research::sat::CpSolverSolution>);
  }

  v35 = *(a3 + 120);
  if ((v35 & 3) != 0)
  {
    v35 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 120), a2);
  }

  *(a1 + 120) = v35;
  v36 = *(a3 + 128);
  if ((v36 & 3) != 0)
  {
    v36 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 128), a2);
  }

  *(a1 + 128) = v36;
  if (*(a1 + 16))
  {
    v37 = google::protobuf::Arena::CopyConstruct<operations_research::sat::CpObjectiveProto>(a2, *(a3 + 136));
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 136) = v37;
  v38 = *(a3 + 144);
  v39 = *(a3 + 160);
  v40 = *(a3 + 192);
  *(a1 + 176) = *(a3 + 176);
  *(a1 + 192) = v40;
  *(a1 + 144) = v38;
  *(a1 + 160) = v39;
  v41 = *(a3 + 208);
  v42 = *(a3 + 224);
  v43 = *(a3 + 240);
  *(a1 + 252) = *(a3 + 252);
  *(a1 + 224) = v42;
  *(a1 + 240) = v43;
  *(a1 + 208) = v41;
  return a1;
}

void sub_23C99E484(_Unwind_Exception *a1)
{
  if (*(v1 + 76) >= 1)
  {
    v4 = *(v1 + 80);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(v2);
  if (*(v1 + 28) >= 1)
  {
    v7 = *(v1 + 32);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CpSolverResponse::SharedDtor(operations_research::sat::CpSolverResponse *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 15);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 16);
  v2 = *(this + 17);
  if (v2)
  {
    operations_research::sat::CpObjectiveProto::~CpObjectiveProto(v2);
    MEMORY[0x23EED9460]();
  }

  if (*(this + 12))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 96));
  }

  if (*(this + 19) >= 1)
  {
    v3 = *(this + 10);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
      v6 = (this + 48);
      if (!*(this + 6))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v6 = (this + 48);
  if (*(this + 6))
  {
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v6);
  }

LABEL_9:
  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {

      operator delete(v8);
    }
  }
}

void operations_research::sat::CpSolverResponse::~CpSolverResponse(operations_research::sat::CpSolverResponse *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::CpSolverResponse::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::CpSolverResponse::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::CpSolverResponse::MergeImpl(void *this, google::protobuf::MessageLite *a2, unint64_t a3)
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
    this = google::protobuf::RepeatedField<long long>::Grow(this + 3, v8);
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
  if (*(a2 + 14))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v4 + 12, (a2 + 48), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
  }

  v22 = *(a2 + 18);
  if (v22)
  {
    v23 = *(v4 + 18);
    a3 = (v23 + v22);
    if (*(v4 + 19) < a3)
    {
      this = google::protobuf::RepeatedField<int>::Grow(v4 + 9, v23, a3);
      LODWORD(v23) = *(v4 + 18);
      a3 = (v23 + v22);
      v24 = v4[10];
      *(v4 + 18) = a3;
      if (v22 < 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v4[10];
      *(v4 + 18) = a3;
      if (v22 < 1)
      {
        goto LABEL_24;
      }
    }

    v25 = *(a2 + 10);
    v26 = (v24 + 4 * v23);
    if (v22 < 8)
    {
      goto LABEL_22;
    }

    v27 = 4 * v23 + v24;
    if ((v27 - v25) < 0x20)
    {
      goto LABEL_22;
    }

    v28 = v22;
    v29 = v22 & 0x7FFFFFF8;
    LODWORD(v22) = v22 - (v22 & 0x7FFFFFF8);
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
LABEL_22:
      v35 = v22 + 1;
      do
      {
        v36 = *v25++;
        *v26++ = v36;
        --v35;
      }

      while (v35 > 1);
    }
  }

LABEL_24:
  if (*(a2 + 26))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v4 + 24, (a2 + 96), google::protobuf::Arena::CopyConstruct<operations_research::sat::CpSolverSolution>);
  }

  v37 = *(a2 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 23);
  if (v38 < 0)
  {
    v38 = *(v37 + 8);
  }

  if (v38)
  {
    v39 = v4[1];
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 15, v37, v39);
  }

  v40 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 23);
  if (v41 < 0)
  {
    v41 = *(v40 + 8);
  }

  if (v41)
  {
    v42 = v4[1];
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>(v4 + 16, v40, v42);
  }

  v43 = *(a2 + 4);
  if (v43)
  {
    v60 = v4[17];
    v61 = *(a2 + 17);
    if (v60)
    {
      this = operations_research::sat::CpObjectiveProto::MergeImpl(v60, v61, a3);
      v44 = *(a2 + 18);
      if (v44)
      {
        goto LABEL_79;
      }
    }

    else
    {
      this = google::protobuf::Arena::CopyConstruct<operations_research::sat::CpObjectiveProto>(v6, v61);
      v4[17] = this;
      v44 = *(a2 + 18);
      if (v44)
      {
        goto LABEL_79;
      }
    }

LABEL_40:
    v45 = *(a2 + 19);
    if (!v45)
    {
      goto LABEL_41;
    }

    goto LABEL_80;
  }

  v44 = *(a2 + 18);
  if (!v44)
  {
    goto LABEL_40;
  }

LABEL_79:
  v4[18] = v44;
  v45 = *(a2 + 19);
  if (!v45)
  {
LABEL_41:
    v46 = *(a2 + 20);
    if (!v46)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_80:
  v4[19] = v45;
  v46 = *(a2 + 20);
  if (v46)
  {
LABEL_42:
    v4[20] = v46;
  }

LABEL_43:
  v47 = *(a2 + 21);
  if (v47)
  {
    v4[21] = v47;
  }

  v48 = *(a2 + 22);
  if (v48)
  {
    v4[22] = v48;
  }

  v49 = *(a2 + 23);
  if (v49)
  {
    v4[23] = v49;
  }

  v50 = *(a2 + 24);
  if (v50)
  {
    v4[24] = v50;
  }

  if (*(a2 + 25))
  {
    v4[25] = *(a2 + 25);
    v51 = *(a2 + 26);
    if (!v51)
    {
LABEL_53:
      v52 = *(a2 + 27);
      if (!v52)
      {
        goto LABEL_54;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v51 = *(a2 + 26);
    if (!v51)
    {
      goto LABEL_53;
    }
  }

  v4[26] = v51;
  v52 = *(a2 + 27);
  if (!v52)
  {
LABEL_54:
    v53 = *(a2 + 28);
    if (!v53)
    {
      goto LABEL_55;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4[27] = v52;
  v53 = *(a2 + 28);
  if (!v53)
  {
LABEL_55:
    v54 = *(a2 + 29);
    if (!v54)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_73:
  v4[28] = v53;
  v54 = *(a2 + 29);
  if (v54)
  {
LABEL_56:
    v4[29] = v54;
  }

LABEL_57:
  v55 = *(a2 + 30);
  if (v55)
  {
    v4[30] = v55;
  }

  v56 = *(a2 + 31);
  if (v56)
  {
    v4[31] = v56;
  }

  v57 = *(a2 + 32);
  if (v57)
  {
    v4[32] = v57;
  }

  v58 = *(a2 + 66);
  if (v58)
  {
    *(v4 + 66) = v58;
  }

  *(v4 + 4) |= v43;
  v59 = *(a2 + 1);
  if (v59)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v59 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::CpSolverResponse::Clear(operations_research::sat::CpSolverResponse *this)
{
  *(this + 6) = 0;
  if (*(this + 14) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 12);
  }

  *(this + 18) = 0;
  if (*(this + 26) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 24);
  }

  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 15);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 16);
  if (*(this + 16))
  {
    result = operations_research::sat::CpObjectiveProto::Clear(*(this + 17));
  }

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 244) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 2) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::CpSolverResponse::_InternalSerialize(operations_research::sat::CpSolverResponse *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 66);
  if (v9)
  {
    if (*a3 <= a2)
    {
      v79 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v80 = *(this + 66);
      *v79 = 8;
      v10 = v79 + 1;
      v11 = v80;
      if (v80 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 8;
      v10 = a2 + 1;
      v11 = v9;
      if (v9 < 0x80)
      {
LABEL_4:
        LOBYTE(v12) = v11;
LABEL_5:
        *v10 = v12;
        v7 = (v10 + 1);
        goto LABEL_6;
      }
    }

    do
    {
      *v10++ = v11 | 0x80;
      v12 = v11 >> 7;
      v81 = v11 >> 14;
      v11 >>= 7;
    }

    while (v81);
    goto LABEL_5;
  }

LABEL_6:
  v13 = *(this + 10);
  if (v13 >= 1)
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      *v7 = 18;
      v14 = v7 + 1;
      if (v13 < 0x80)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v7 = 18;
      v14 = v7 + 1;
      if (v13 < 0x80)
      {
LABEL_9:
        v7 = (v7 + 2);
        *v14 = v13;
        v15 = *(this + 4);
        v16 = &v15[*(this + 6)];
        while (1)
        {
          if (*a3 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
            v20 = *v15++;
            v17 = v20;
            if (v20 >= 0x80)
            {
              do
              {
LABEL_16:
                *v7 = v17 | 0x80;
                v7 = (v7 + 1);
                v19 = v17 >> 7;
                v21 = v17 >> 14;
                v17 >>= 7;
              }

              while (v21);
              goto LABEL_13;
            }
          }

          else
          {
            v18 = *v15++;
            v17 = v18;
            if (v18 >= 0x80)
            {
              goto LABEL_16;
            }
          }

          LOBYTE(v19) = v17;
LABEL_13:
          *v7 = v19;
          v7 = (v7 + 1);
          if (v15 >= v16)
          {
            goto LABEL_18;
          }
        }
      }
    }

    do
    {
      *v14++ = v13 | 0x80;
      v82 = v13 >> 14;
      v13 >>= 7;
    }

    while (v82);
    v7 = (v14 - 1);
    goto LABEL_9;
  }

LABEL_18:
  if (*(this + 18))
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v33 = *(this + 18);
    *v7 = 25;
    *(v7 + 1) = v33;
    v7 = (v7 + 9);
    v22 = *(this + 19);
    if (!v22)
    {
LABEL_20:
      v23 = *(this + 20);
      if (!v23)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v22 = *(this + 19);
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v34 = *(this + 19);
  }

  else
  {
    v34 = v22;
  }

  *v7 = 33;
  *(v7 + 1) = v34;
  v7 = (v7 + 9);
  v23 = *(this + 20);
  if (v23)
  {
LABEL_21:
    v7 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<10>(a3, v23, v7);
  }

LABEL_22:
  v24 = *(this + 21);
  if (v24)
  {
    v7 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<11>(a3, v24, v7);
  }

  v25 = *(this + 22);
  if (v25)
  {
    v7 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<12>(a3, v25, v7);
  }

  v26 = *(this + 23);
  if (v26)
  {
    v7 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<13>(a3, v26, v7);
  }

  v27 = *(this + 24);
  if (v27)
  {
    v7 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<14>(a3, v27, v7);
  }

  if (*(this + 25))
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v35 = *(this + 25);
    *v7 = 121;
    *(v7 + 1) = v35;
    v7 = (v7 + 9);
    v28 = *(this + 26);
    if (!v28)
    {
LABEL_32:
      v29 = *(this + 27);
      if (!v29)
      {
        goto LABEL_33;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v28 = *(this + 26);
    if (!v28)
    {
      goto LABEL_32;
    }
  }

  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v36 = *(this + 26);
  }

  else
  {
    v36 = v28;
  }

  *v7 = 385;
  *(v7 + 2) = v36;
  v7 = (v7 + 10);
  v29 = *(this + 27);
  if (!v29)
  {
LABEL_33:
    v30 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *(v30 + 23);
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_53:
    v38 = *(v30 + 8);
    if (!v38)
    {
      goto LABEL_61;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v30, v38, 1, "operations_research.sat.CpSolverResponse.solution_info");
    v32 = *(v30 + 23);
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_50:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v37 = *(this + 27);
  }

  else
  {
    v37 = v29;
  }

  *v7 = 393;
  *(v7 + 2) = v37;
  v7 = (v7 + 10);
  v30 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 23);
  if (v31 < 0)
  {
    goto LABEL_53;
  }

LABEL_34:
  if (!v31)
  {
    goto LABEL_61;
  }

  google::protobuf::internal::WireFormatLite::VerifyUtf8String(v30, v31, 1, "operations_research.sat.CpSolverResponse.solution_info");
  v32 = *(v30 + 23);
  if ((v32 & 0x8000000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_55:
  v32 = *(v30 + 8);
  if (v32 > 127)
  {
    goto LABEL_126;
  }

LABEL_56:
  if (*a3 - v7 + 13 < v32)
  {
LABEL_126:
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 20, v30, v7);
    v40 = *(this + 14);
    if (!v40)
    {
      goto LABEL_67;
    }

    goto LABEL_62;
  }

  *v7 = 418;
  *(v7 + 2) = v32;
  if (*(v30 + 23) >= 0)
  {
    v39 = v30;
  }

  else
  {
    v39 = *v30;
  }

  memcpy(v7 + 3, v39, v32);
  v7 = (v7 + v32 + 3);
LABEL_61:
  v40 = *(this + 14);
  if (!v40)
  {
    goto LABEL_67;
  }

LABEL_62:
  v41 = 0;
  v42 = (this + 48);
  do
  {
    if (*v42)
    {
      v43 = (*v42 + 8 * v41 + 7);
    }

    else
    {
      v43 = (this + 48);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x15, *v43, *(*v43 + 48), v7, a3, a6);
    ++v41;
  }

  while (v40 != v41);
LABEL_67:
  if (*(this + 28))
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v44 = *(this + 28);
    *v7 = 433;
    *(v7 + 2) = v44;
    v7 = (v7 + 10);
  }

  v45 = *(this + 22);
  if (v45 >= 1)
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      *v7 = 442;
      v46 = v7 + 2;
      if (v45 < 0x80)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v7 = 442;
      v46 = v7 + 2;
      if (v45 < 0x80)
      {
LABEL_74:
        v47 = v7 + 1;
LABEL_75:
        v7 = (v47 + 2);
        *v46 = v45;
        v48 = *(this + 10);
        v49 = &v48[*(this + 18)];
        while (1)
        {
          if (*a3 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
            v53 = *v48++;
            v50 = v53;
            if (v53 >= 0x80)
            {
              do
              {
LABEL_82:
                *v7 = v50 | 0x80;
                v7 = (v7 + 1);
                v52 = v50 >> 7;
                v54 = v50 >> 14;
                v50 >>= 7;
              }

              while (v54);
              goto LABEL_79;
            }
          }

          else
          {
            v51 = *v48++;
            v50 = v51;
            if (v51 >= 0x80)
            {
              goto LABEL_82;
            }
          }

          LOBYTE(v52) = v50;
LABEL_79:
          *v7 = v52;
          v7 = (v7 + 1);
          if (v48 >= v49)
          {
            goto LABEL_84;
          }
        }
      }
    }

    do
    {
      *v46++ = v45 | 0x80;
      v83 = v45 >> 14;
      v45 >>= 7;
    }

    while (v83);
    v47 = v46 - 1;
    goto LABEL_75;
  }

LABEL_84:
  v55 = *(this + 29);
  if (v55)
  {
    if (*a3 <= v7)
    {
      v84 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v55 = *(this + 29);
      *v84 = 448;
      v56 = v84 + 2;
      if (v55 < 0x80)
      {
        goto LABEL_87;
      }
    }

    else
    {
      *v7 = 448;
      v56 = v7 + 2;
      if (v55 < 0x80)
      {
LABEL_87:
        LOBYTE(v57) = v55;
LABEL_88:
        *v56 = v57;
        v7 = (v56 + 1);
        goto LABEL_89;
      }
    }

    do
    {
      *v56++ = v55 | 0x80;
      v57 = v55 >> 7;
      v85 = v55 >> 14;
      v55 >>= 7;
    }

    while (v85);
    goto LABEL_88;
  }

LABEL_89:
  v58 = *(this + 30);
  if (!v58)
  {
    goto LABEL_94;
  }

  if (*a3 <= v7)
  {
    v86 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v58 = *(this + 30);
    *v86 = 456;
    v59 = v86 + 2;
    if (v58 < 0x80)
    {
      goto LABEL_92;
    }

    do
    {
LABEL_146:
      *v59++ = v58 | 0x80;
      v60 = v58 >> 7;
      v87 = v58 >> 14;
      v58 >>= 7;
    }

    while (v87);
    goto LABEL_93;
  }

  *v7 = 456;
  v59 = v7 + 2;
  if (v58 >= 0x80)
  {
    goto LABEL_146;
  }

LABEL_92:
  LOBYTE(v60) = v58;
LABEL_93:
  *v59 = v60;
  v7 = (v59 + 1);
LABEL_94:
  v61 = *(this + 16);
  v62 = v61 & 0xFFFFFFFFFFFFFFFCLL;
  v63 = *((v61 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if (v63 < 0)
  {
    v65 = *(v62 + 8);
    if (!v65)
    {
      goto LABEL_106;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v62, v65, 1, "operations_research.sat.CpSolverResponse.solve_log");
    v64 = *(v62 + 23);
    if ((v64 & 0x8000000000000000) == 0)
    {
      goto LABEL_101;
    }
  }

  else
  {
    if (!*((v61 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_106;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v61 & 0xFFFFFFFFFFFFFFFCLL), v63, 1, "operations_research.sat.CpSolverResponse.solve_log");
    v64 = *(v62 + 23);
    if ((v64 & 0x8000000000000000) == 0)
    {
      goto LABEL_101;
    }
  }

  v64 = *(v62 + 8);
  if (v64 > 127)
  {
    goto LABEL_128;
  }

LABEL_101:
  if (*a3 - v7 + 13 < v64)
  {
LABEL_128:
    v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 26, v62, v7);
    v67 = *(this + 26);
    if (!v67)
    {
      goto LABEL_112;
    }

    goto LABEL_107;
  }

  *v7 = 466;
  *(v7 + 2) = v64;
  if (*(v62 + 23) >= 0)
  {
    v66 = v62;
  }

  else
  {
    v66 = *v62;
  }

  memcpy(v7 + 3, v66, v64);
  v7 = (v7 + v64 + 3);
LABEL_106:
  v67 = *(this + 26);
  if (!v67)
  {
    goto LABEL_112;
  }

LABEL_107:
  v68 = 0;
  v69 = (this + 96);
  do
  {
    if (*v69)
    {
      v70 = (*v69 + 8 * v68 + 7);
    }

    else
    {
      v70 = (this + 96);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x1B, *v70, *(*v70 + 36), v7, a3, a6);
    ++v68;
  }

  while (v67 != v68);
LABEL_112:
  if (*(this + 16))
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0x1C, *(this + 17), *(*(this + 17) + 132), v7, a3, a6);
  }

  v71 = *(this + 31);
  if (v71)
  {
    if (*a3 <= v7)
    {
      v88 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v71 = *(this + 31);
      *v88 = 488;
      v72 = v88 + 2;
      if (v71 < 0x80)
      {
        goto LABEL_117;
      }
    }

    else
    {
      *v7 = 488;
      v72 = v7 + 2;
      if (v71 < 0x80)
      {
LABEL_117:
        LOBYTE(v73) = v71;
LABEL_118:
        *v72 = v73;
        v7 = (v72 + 1);
        goto LABEL_119;
      }
    }

    do
    {
      *v72++ = v71 | 0x80;
      v73 = v71 >> 7;
      v89 = v71 >> 14;
      v71 >>= 7;
    }

    while (v89);
    goto LABEL_118;
  }

LABEL_119:
  v74 = *(this + 32);
  if (!v74)
  {
    goto LABEL_124;
  }

  if (*a3 <= v7)
  {
    v90 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v74 = *(this + 32);
    *v90 = 496;
    v75 = v90 + 2;
    if (v74 < 0x80)
    {
      goto LABEL_122;
    }

    do
    {
LABEL_152:
      *v75++ = v74 | 0x80;
      v76 = v74 >> 7;
      v91 = v74 >> 14;
      v74 >>= 7;
    }

    while (v91);
    goto LABEL_123;
  }

  *v7 = 496;
  v75 = v7 + 2;
  if (v74 >= 0x80)
  {
    goto LABEL_152;
  }

LABEL_122:
  LOBYTE(v76) = v74;
LABEL_123:
  *v75 = v76;
  v7 = (v75 + 1);
LABEL_124:
  v77 = *(this + 1);
  if ((v77 & 1) == 0)
  {
    return v7;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v77 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, a4);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<10>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 80;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 80;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<11>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 88;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 88;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<12>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 96;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 96;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<13>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 104;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 104;
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

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<14>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 112;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 112;
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

char *operations_research::sat::CpSolverResponse::ByteSizeLong(operations_research::sat::CpSolverResponse *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int64Size(this + 6);
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

  v5 = *(this + 6);
  v6 = v4 + v2;
  v7 = *(this + 14);
  v8 = v6 + 2 * v7;
  if (v5)
  {
    v9 = (v5 + 7);
  }

  else
  {
    v9 = this + 48;
  }

  if (v7)
  {
    for (i = 8 * v7; i; i -= 8)
    {
      v12 = *v9;
      v13 = google::protobuf::internal::WireFormatLite::Int64Size((*v9 + 16));
      *(v12 + 32) = v13;
      if (v13)
      {
        v14 = ((640 - 9 * __clz(v13)) >> 6) + 1;
        v15 = *(v12 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v16 = *(v15 + 23);
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0;
        v15 = *(v12 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v16 = *(v15 + 23);
        if ((v16 & 0x8000000000000000) == 0)
        {
LABEL_12:
          v17 = (v14 + v13);
          if (v16)
          {
            goto LABEL_16;
          }

          goto LABEL_9;
        }
      }

      v17 = (v14 + v13);
      if (*(v15 + 8))
      {
LABEL_16:
        v18 = *(v15 + 8);
        if (v16 >= 0)
        {
          v18 = v16;
        }

        v17 = (v17 + v18 + ((352 - 9 * __clz(v18)) >> 6) + 1);
      }

LABEL_9:
      v11 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v12, v17, (v12 + 48));
      v8 += &v11[(352 - 9 * __clz(v11)) >> 6];
      v9 += 8;
    }
  }

  v19 = google::protobuf::internal::WireFormatLite::Int32Size(this + 18);
  *(this + 22) = v19;
  v20 = ((640 - 9 * __clz(v19)) >> 6) + 2;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(this + 12);
  v23 = *(this + 26);
  v24 = v19 + v8 + v21 + 2 * v23;
  if (v22)
  {
    v25 = (v22 + 7);
  }

  else
  {
    v25 = this + 96;
  }

  if (v23)
  {
    v26 = 8 * v23;
    do
    {
      v29 = *v25;
      v30 = google::protobuf::internal::WireFormatLite::Int64Size((*v25 + 16));
      *(v29 + 8) = v30;
      if (v30)
      {
        v27 = ((640 - 9 * __clz(v30)) >> 6) + 1;
      }

      else
      {
        v27 = 0;
      }

      v28 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v29, (v27 + v30), v29 + 9);
      v24 += &v28[(352 - 9 * __clz(v28)) >> 6];
      v25 += 8;
      v26 -= 8;
    }

    while (v26);
  }

  v31 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 23);
  if (v32 < 0)
  {
    if (!*(v31 + 8))
    {
      goto LABEL_36;
    }
  }

  else if (!*(v31 + 23))
  {
    goto LABEL_36;
  }

  v33 = *(v31 + 8);
  if (v32 >= 0)
  {
    v33 = v32;
  }

  v24 += v33 + ((352 - 9 * __clz(v33)) >> 6) + 2;
LABEL_36:
  v34 = *(this + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 23);
  if (v35 < 0)
  {
    if (!*(v34 + 8))
    {
      goto LABEL_41;
    }
  }

  else if (!*(v34 + 23))
  {
    goto LABEL_41;
  }

  v36 = *(v34 + 8);
  if (v35 >= 0)
  {
    v36 = v35;
  }

  v24 += v36 + ((352 - 9 * __clz(v36)) >> 6) + 2;
LABEL_41:
  if (*(this + 16))
  {
    v37 = operations_research::sat::CpObjectiveProto::ByteSizeLong(*(this + 17));
    v24 += &v37[((352 - 9 * __clz(v37)) >> 6) + 2];
  }

  v38 = (v24 + 9);
  if (!*(this + 18))
  {
    v38 = v24;
  }

  if (*(this + 19))
  {
    v38 = (v38 + 9);
  }

  v39 = *(this + 20);
  v40 = *(this + 21);
  v41 = (v38 + ((-9 * __clz(v39) + 704) >> 6));
  if (v39)
  {
    v38 = v41;
  }

  v42 = (v38 + ((-9 * __clz(v40) + 704) >> 6));
  if (v40)
  {
    v38 = v42;
  }

  v43 = *(this + 22);
  v44 = *(this + 23);
  v45 = (v38 + ((-9 * __clz(v43) + 704) >> 6));
  if (v43)
  {
    v38 = v45;
  }

  v46 = (v38 + ((-9 * __clz(v44) + 704) >> 6));
  if (v44)
  {
    v38 = v46;
  }

  v47 = *(this + 24);
  v48 = (v38 + ((-9 * __clz(v47) + 704) >> 6));
  if (v47)
  {
    v38 = v48;
  }

  if (*(this + 25))
  {
    v38 = (v38 + 9);
  }

  if (*(this + 26))
  {
    v38 = (v38 + 10);
  }

  if (*(this + 27))
  {
    v38 = (v38 + 10);
  }

  v49 = *(this + 29);
  if (*(this + 28))
  {
    v38 = (v38 + 10);
  }

  v50 = v38 + ((640 - 9 * __clz(v49)) >> 6) + 2;
  if (v49)
  {
    v38 = v50;
  }

  v51 = *(this + 30);
  v52 = *(this + 31);
  v53 = v38 + ((640 - 9 * __clz(v51)) >> 6) + 2;
  if (v51)
  {
    v38 = v53;
  }

  v54 = v38 + ((640 - 9 * __clz(v52)) >> 6) + 2;
  if (v52)
  {
    v38 = v54;
  }

  v55 = *(this + 32);
  v56 = v38 + ((640 - 9 * __clz(v55)) >> 6) + 2;
  if (v55)
  {
    v38 = v56;
  }

  v57 = *(this + 66);
  v58 = v38 + ((640 - 9 * __clz(v57)) >> 6);
  if (v57)
  {
    v59 = (v58 + 1);
  }

  else
  {
    v59 = v38;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v59, this + 5);
}