void sub_23CABA78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::ModelCopy::CopyBoolAnd(operations_research::sat::PresolveContext **this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = *(a2 + 6);
  if (*(a2 + 15) != 4)
  {
    v2 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v3 = *(v2 + 4);
  if (!v3)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  v7 = v2[3];
  v8 = 4 * v3;
  do
  {
    v9 = *v7;
    IsFalse = operations_research::sat::PresolveContext::LiteralIsFalse(*this, *v7);
    v11 = *this;
    if (IsFalse)
    {
      v31 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v11 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v32 = v31;
      if (*(v31 + 60) == 3)
      {
        v33 = *(v31 + 48);
        v35 = this[12];
        v34 = this[13];
        if (v35 != v34)
        {
          goto LABEL_20;
        }

LABEL_27:
        v40 = *(v33 + 4);
        return v40 != 0;
      }

      operations_research::sat::ConstraintProto::clear_constraint(v31);
      *(v32 + 60) = 3;
      v42 = *(v32 + 8);
      if (v42)
      {
        v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v42 & 0xFFFFFFFFFFFFFFFELL));
        *(v32 + 48) = v33;
        v35 = this[12];
        v34 = this[13];
        if (v35 == v34)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v42);
        *(v32 + 48) = v33;
        v35 = this[12];
        v34 = this[13];
        if (v35 == v34)
        {
          goto LABEL_27;
        }
      }

LABEL_20:
      v36 = *(v33 + 4);
      v37 = *(v33 + 5);
      do
      {
        v38 = *v35;
        if (v36 == v37)
        {
          v41 = v33;
          google::protobuf::RepeatedField<int>::Grow(v33 + 2, v36, (v36 + 1));
          v33 = v41;
          LODWORD(v36) = *(v41 + 4);
          v37 = *(v41 + 5);
        }

        v39 = v33[3];
        v40 = v36 + 1;
        *(v33 + 4) = v36 + 1;
        *(v39 + 4 * v36) = ~v38;
        v35 = (v35 + 4);
        v36 = (v36 + 1);
      }

      while (v35 != v34);
      return v40 != 0;
    }

    v6 = v6 + !operations_research::sat::PresolveContext::LiteralIsTrue(v11, v9);
    ++v7;
    v8 -= 4;
  }

  while (v8);
  if (v6 < 1)
  {
    return 1;
  }

  v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v13 = v12;
  v14 = *(v12 + 16);
  v16 = this[12];
  v15 = this[13];
  v17 = v15 - v16;
  v18 = v14 + ((v15 - v16) >> 2);
  if (v18 > *(v12 + 20))
  {
    v53 = (v12 + 16);
    v54 = this[12];
    v55 = this[13];
    google::protobuf::RepeatedField<int>::Grow(v12 + 16, v14, v14 + ((v15 - v16) >> 2));
    v16 = v54;
    v15 = v55;
    LODWORD(v14) = *v53;
    v19 = *(v13 + 24);
    *(v13 + 16) = v18;
    if (v54 != v55)
    {
LABEL_10:
      v20 = (v19 + 4 * v14);
      if ((v17 - 4) < 0x1C)
      {
        goto LABEL_52;
      }

      v21 = 4 * v14 + v19;
      if ((v21 - v16) < 0x20)
      {
        goto LABEL_52;
      }

      v22 = ((v17 - 4) >> 2) + 1;
      v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
      v20 = (v20 + v23);
      v24 = (v16 + v23);
      v25 = (v16 + 16);
      v26 = (v21 + 16);
      v27 = v22 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v28 = *v25;
        *(v26 - 1) = *(v25 - 1);
        *v26 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      v16 = v24;
      if (v22 != (v22 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_52:
        do
        {
          v29 = *v16;
          v16 = (v16 + 4);
          *v20++ = v29;
        }

        while (v16 != v15);
      }
    }
  }

  else
  {
    v19 = *(v12 + 24);
    *(v12 + 16) = v18;
    if (v16 != v15)
    {
      goto LABEL_10;
    }
  }

  if (*(v13 + 60) == 4)
  {
    v30 = *(v13 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v13);
    *(v13 + 60) = 4;
    v44 = *(v13 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v44);
    *(v13 + 48) = v30;
  }

  if (*(v30 + 5) < v6)
  {
    google::protobuf::RepeatedField<int>::Grow(v30 + 2, *(v30 + 4), v6);
    v45 = *(a2 + 6);
    if (*(a2 + 15) != 4)
    {
      v45 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    v46 = *(v45 + 4);
    if (v46)
    {
LABEL_36:
      v47 = v45[3];
      v48 = 4 * v46;
      do
      {
        v50 = *v47;
        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, *v47))
        {
          v51 = v30[2];
          v52 = v51;
          if (v51 == HIDWORD(v51))
          {
            google::protobuf::RepeatedField<int>::Grow(v30 + 2, HIDWORD(v51), (HIDWORD(v51) + 1));
            v52 = *(v30 + 4);
          }

          v49 = v30[3];
          *(v30 + 4) = v52 + 1;
          *(v49 + 4 * v52) = v50;
        }

        ++v47;
        v48 -= 4;
      }

      while (v48);
    }
  }

  else
  {
    v45 = *(a2 + 6);
    if (*(a2 + 15) != 4)
    {
      v45 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    v46 = *(v45 + 4);
    if (v46)
    {
      goto LABEL_36;
    }
  }

  return 1;
}

BOOL operations_research::sat::ModelCopy::CopyLinear(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v3 = this;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  *(this + 2) = *(this + 1);
  v104 = (this + 32);
  v105 = this + 8;
  *(this + 5) = *(this + 4);
  if (*(a2 + 15) != 12)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_5:
    v9 = *(a2 + 6);
    if (v4 >= *(v9 + 16))
    {
      goto LABEL_17;
    }

    v8 = *(*(v9 + 24) + 4 * v4);
    LODWORD(v108[0]) = v8;
    v110[0] = *(*(v9 + 48) + 8 * v4);
    if (v110[0])
    {
      break;
    }

LABEL_4:
    ++v4;
    if (*(a2 + 15) != 12)
    {
      goto LABEL_2;
    }
  }

  while (1)
  {
    IsFixed = operations_research::sat::PresolveContext::IsFixed(*v3, v8);
    v11 = v110[0];
    if (IsFixed)
    {
      v7 += operations_research::sat::PresolveContext::MinOf(*v3, v108[0]) * v11;
      ++v4;
      if (*(a2 + 15) == 12)
      {
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    v12 = *v3;
    if (v110[0] < 1)
    {
      v16 = operations_research::sat::PresolveContext::MaxOf(v12, v108[0]);
      v17 = v110[0];
      v6 += v16 * v11;
      v5 += operations_research::sat::PresolveContext::MinOf(*v3, v108[0]) * v17;
      v15 = v108[0];
      if ((v108[0] & 0x80000000) == 0)
      {
LABEL_12:
        std::vector<int>::push_back[abi:ne200100](v105, v108);
        std::vector<long long>::push_back[abi:ne200100](v104, v110);
        v3 = this;
        ++v4;
        if (*(a2 + 15) == 12)
        {
          goto LABEL_5;
        }

        goto LABEL_2;
      }
    }

    else
    {
      v13 = operations_research::sat::PresolveContext::MinOf(v12, v108[0]);
      v14 = v110[0];
      v6 += v13 * v11;
      v5 += operations_research::sat::PresolveContext::MaxOf(*v3, v108[0]) * v14;
      v15 = v108[0];
      if ((v108[0] & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v109[0]) = ~v15;
    std::vector<int>::push_back[abi:ne200100](v105, v109);
    v109[0] = -v110[0];
    std::vector<long long>::push_back[abi:ne200100](v104, v109);
    v3 = this;
    ++v4;
    if (*(a2 + 15) == 12)
    {
      goto LABEL_5;
    }

LABEL_2:
    if (v4 >= off_2810BEE58)
    {
      break;
    }

    v8 = *(off_2810BEE60 + v4);
    LODWORD(v108[0]) = v8;
    v110[0] = *(off_2810BEE78 + v4);
    if (!v110[0])
    {
      goto LABEL_4;
    }
  }

LABEL_17:
  operations_research::Domain::Domain(v110, v6, v5);
  if (*(a2 + 15) == 12)
  {
    v19 = *(a2 + 6);
  }

  else
  {
    v19 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v19[9], *(v19 + 16), v108, v18);
  operations_research::Domain::Domain(v107, -v7);
  operations_research::Domain::AdditionWith(v108, v107, v109, v20);
  if (v107[0])
  {
    operator delete(v107[1]);
  }

  if (v108[0])
  {
    operator delete(*(&v108[0] + 1));
  }

  if (!operations_research::Domain::IsIncludedIn(v110, v109))
  {
    operations_research::Domain::IntersectionWith(v110, v109, v108);
    IsEmpty = operations_research::Domain::IsEmpty(v108);
    if (v108[0])
    {
      operator delete(*(&v108[0] + 1));
    }

    if (IsEmpty)
    {
      v25 = *(a2 + 4);
      if (!v25)
      {
        v85 = 0;
        goto LABEL_68;
      }

      *(v3 + 20) = *(v3 + 19);
      v26 = *(a2 + 3);
      v27 = 4 * v25;
      do
      {
        v28 = *v26;
        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*v3, *v26))
        {
          LODWORD(v108[0]) = ~v28;
          std::vector<int>::push_back[abi:ne200100](v3 + 152, v108);
        }

        ++v26;
        v27 -= 4;
      }

      while (v27);
      v49 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**v3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v50 = v49;
      if (*(v49 + 60) == 3)
      {
        v51 = *(v49 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v49);
        *(v50 + 60) = 3;
        v87 = *(v50 + 8);
        if (v87)
        {
          v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
        }

        v51 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v87);
        *(v50 + 48) = v51;
      }

      v88 = *(v51 + 4);
      v90 = *(v3 + 19);
      v89 = *(v3 + 20);
      v91 = v89 - v90;
      v92 = v88 + ((v89 - v90) >> 2);
      if (v92 > *(v51 + 5))
      {
        google::protobuf::RepeatedField<int>::Grow(v51 + 2, v88, v88 + ((v89 - v90) >> 2));
        LODWORD(v88) = *(v51 + 4);
        v93 = v51[3];
        *(v51 + 4) = v92;
        if (v90 != v89)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v93 = v51[3];
        *(v51 + 4) = v92;
        if (v90 != v89)
        {
LABEL_79:
          v94 = (v93 + 4 * v88);
          if ((v91 - 4) < 0x1C)
          {
            goto LABEL_96;
          }

          v95 = 4 * v88 + v93;
          if ((v95 - v90) < 0x20)
          {
            goto LABEL_96;
          }

          v96 = ((v91 - 4) >> 2) + 1;
          v97 = 4 * (v96 & 0x7FFFFFFFFFFFFFF8);
          v94 = (v94 + v97);
          v98 = &v90[v97];
          v99 = (v90 + 16);
          v100 = (v95 + 16);
          v101 = v96 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v102 = *v99;
            *(v100 - 1) = *(v99 - 1);
            *v100 = v102;
            v99 += 2;
            v100 += 2;
            v101 -= 8;
          }

          while (v101);
          v90 = v98;
          if (v96 != (v96 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_96:
            do
            {
              v103 = *v90;
              v90 += 4;
              *v94++ = v103;
            }

            while (v90 != v89);
          }
        }
      }

      v85 = *(v3 + 19) != *(v3 + 20);
      goto LABEL_68;
    }

    v29 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**v3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v30 = v29;
    v31 = *(v29 + 16);
    v32 = (v29 + 16);
    v34 = *(v3 + 12);
    v33 = *(v3 + 13);
    v35 = v33 - v34;
    v36 = v31 + ((v33 - v34) >> 2);
    if (v36 > *(v29 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v29 + 16, v31, v31 + ((v33 - v34) >> 2));
      LODWORD(v31) = *v32;
      v37 = *(v30 + 24);
      *(v30 + 16) = v36;
      if (v34 == v33)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v37 = *(v29 + 24);
      *(v29 + 16) = v36;
      if (v34 == v33)
      {
        goto LABEL_43;
      }
    }

    v38 = (v37 + 4 * v31);
    if ((v35 - 4) < 0x1C)
    {
      goto LABEL_97;
    }

    v39 = 4 * v31 + v37;
    if ((v39 - v34) < 0x20)
    {
      goto LABEL_97;
    }

    v40 = ((v35 - 4) >> 2) + 1;
    v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
    v38 = (v38 + v41);
    v42 = &v34[v41];
    v43 = (v34 + 16);
    v44 = (v39 + 16);
    v45 = v40 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v46 = *v43;
      *(v44 - 1) = *(v43 - 1);
      *v44 = v46;
      v43 += 2;
      v44 += 2;
      v45 -= 8;
    }

    while (v45);
    v34 = v42;
    if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_97:
      do
      {
        v47 = *v34;
        v34 += 4;
        *v38++ = v47;
      }

      while (v34 != v33);
    }

LABEL_43:
    if (*(v30 + 60) == 12)
    {
      v48 = *(v30 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v30);
      *(v30 + 60) = 12;
      v52 = *(v30 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v52);
      *(v30 + 48) = v48;
    }

    v53 = *(v48 + 16);
    v55 = *(v3 + 1);
    v54 = *(v3 + 2);
    v56 = v54 - v55;
    v57 = v53 + ((v54 - v55) >> 2);
    if (v57 > *(v48 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v48 + 16, v53, v53 + ((v54 - v55) >> 2));
      LODWORD(v53) = *(v48 + 16);
      v58 = *(v48 + 24);
      *(v48 + 16) = v57;
      if (v55 == v54)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v58 = *(v48 + 24);
      *(v48 + 16) = v57;
      if (v55 == v54)
      {
        goto LABEL_58;
      }
    }

    v59 = (v58 + 4 * v53);
    if ((v56 - 4) < 0x1C)
    {
      goto LABEL_98;
    }

    v60 = 4 * v53 + v58;
    if ((v60 - v55) < 0x20)
    {
      goto LABEL_98;
    }

    v61 = ((v56 - 4) >> 2) + 1;
    v62 = 4 * (v61 & 0x7FFFFFFFFFFFFFF8);
    v59 = (v59 + v62);
    v63 = &v55[v62];
    v64 = (v55 + 16);
    v65 = (v60 + 16);
    v66 = v61 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v67 = *v64;
      *(v65 - 1) = *(v64 - 1);
      *v65 = v67;
      v64 += 2;
      v65 += 2;
      v66 -= 8;
    }

    while (v66);
    v55 = v63;
    if (v61 != (v61 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_98:
      do
      {
        v68 = *v55;
        v55 += 4;
        *v59++ = v68;
      }

      while (v55 != v54);
    }

LABEL_58:
    v69 = *(v48 + 40);
    v71 = *(v3 + 4);
    v70 = *(v3 + 5);
    v72 = v70 - v71;
    v73 = v69 + ((v70 - v71) >> 3);
    if (v73 > *(v48 + 44))
    {
      google::protobuf::RepeatedField<long long>::Grow(v48 + 40, v69);
      LODWORD(v69) = *(v48 + 40);
      v74 = *(v48 + 48);
      *(v48 + 40) = v73;
      if (v71 != v70)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v74 = *(v48 + 48);
      *(v48 + 40) = v73;
      if (v71 != v70)
      {
LABEL_60:
        v75 = (v74 + 8 * v69);
        if ((v72 - 8) < 0x38)
        {
          goto LABEL_99;
        }

        v76 = 8 * v69 + v74;
        if ((v76 - v71) < 0x20)
        {
          goto LABEL_99;
        }

        v77 = ((v72 - 8) >> 3) + 1;
        v78 = 8 * (v77 & 0x3FFFFFFFFFFFFFFCLL);
        v75 = (v75 + v78);
        v79 = &v71[v78];
        v80 = (v71 + 16);
        v81 = (v76 + 16);
        v82 = v77 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v83 = *v80;
          *(v81 - 1) = *(v80 - 1);
          *v81 = v83;
          v80 += 2;
          v81 += 2;
          v82 -= 4;
        }

        while (v82);
        v71 = v79;
        if (v77 != (v77 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_99:
          do
          {
            v84 = *v71;
            v71 += 8;
            *v75++ = v84;
          }

          while (v71 != v70);
        }
      }
    }

    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v109, v48);
    goto LABEL_67;
  }

  v23 = *v3;
  BYTE7(v108[1]) = 19;
  strcpy(v108, "linear: always true");
  operations_research::sat::PresolveContext::UpdateRuleStats(v23, v108, 1, v21, v22);
  if (SBYTE7(v108[1]) < 0)
  {
    operator delete(*&v108[0]);
  }

LABEL_67:
  v85 = 1;
LABEL_68:
  if (v109[0])
  {
    operator delete(v109[1]);
  }

  if (v110[0])
  {
    operator delete(v110[1]);
  }

  return v85;
}

void sub_23CABB31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, void *a15, void *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, void *__p, uint64_t a24, char a25, void *a26)
{
  if (a22)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::ModelCopy::CopyAtMostOne(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = this + 152;
  *(this + 20) = *(this + 19);
  v3 = *(a2 + 6);
  if (*(a2 + 15) != 26)
  {
    v3 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (!v4)
  {
    return 1;
  }

  v6 = 0;
  v7 = v3[3];
  v8 = 4 * v4;
  do
  {
    v51 = *v7;
    if (!operations_research::sat::PresolveContext::LiteralIsFalse(*this, v51))
    {
      std::vector<int>::push_back[abi:ne200100](v2, &v51);
      v6 += operations_research::sat::PresolveContext::LiteralIsTrue(*this, v51);
    }

    ++v7;
    v8 -= 4;
  }

  while (v8);
  v9 = *(this + 20) - *(this + 19);
  result = v9 < 5;
  if (v9 >= 5 && v6 <= 1)
  {
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v13 = v12;
    v15 = (v12 + 16);
    v14 = *(v12 + 16);
    v17 = *(this + 12);
    v16 = *(this + 13);
    v18 = v16 - v17;
    v19 = v14 + ((v16 - v17) >> 2);
    if (v19 > *(v12 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v12 + 16, v14, v14 + ((v16 - v17) >> 2));
      LODWORD(v14) = *v15;
      v20 = *(v13 + 24);
      *(v13 + 16) = v19;
      if (v17 == v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = *(v12 + 24);
      *(v12 + 16) = v19;
      if (v17 == v16)
      {
        goto LABEL_21;
      }
    }

    v21 = (v20 + 4 * v14);
    if ((v18 - 4) < 0x1C)
    {
      goto LABEL_42;
    }

    v22 = 4 * v14 + v20;
    if ((v22 - v17) < 0x20)
    {
      goto LABEL_42;
    }

    v23 = ((v18 - 4) >> 2) + 1;
    v24 = 4 * (v23 & 0x7FFFFFFFFFFFFFF8);
    v21 = (v21 + v24);
    v25 = &v17[v24];
    v26 = (v17 + 16);
    v27 = (v22 + 16);
    v28 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v29 = *v26;
      *(v27 - 1) = *(v26 - 1);
      *v27 = v29;
      v26 += 2;
      v27 += 2;
      v28 -= 8;
    }

    while (v28);
    v17 = v25;
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_42:
      do
      {
        v30 = *v17;
        v17 += 4;
        *v21++ = v30;
      }

      while (v17 != v16);
    }

LABEL_21:
    if (*(v13 + 60) == 26)
    {
      v31 = *(v13 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v13);
      *(v13 + 60) = 26;
      v32 = *(v13 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v32);
      *(v13 + 48) = v31;
    }

    v33 = *(v31 + 4);
    v34 = v31 + 2;
    v36 = *(this + 19);
    v35 = *(this + 20);
    v37 = v35 - v36;
    v38 = v33 + ((v35 - v36) >> 2);
    if (v38 > *(v31 + 5))
    {
      v50 = v31;
      google::protobuf::RepeatedField<int>::Grow(v31 + 2, v33, v33 + ((v35 - v36) >> 2));
      LODWORD(v33) = *v34;
      v39 = v50[3];
      *(v50 + 4) = v38;
      if (v36 != v35)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v39 = v31[3];
      *(v31 + 4) = v38;
      if (v36 != v35)
      {
LABEL_28:
        v40 = (v39 + 4 * v33);
        if ((v37 - 4) < 0x1C)
        {
          goto LABEL_43;
        }

        v41 = 4 * v33 + v39;
        if ((v41 - v36) < 0x20)
        {
          goto LABEL_43;
        }

        v42 = ((v37 - 4) >> 2) + 1;
        v43 = 4 * (v42 & 0x7FFFFFFFFFFFFFF8);
        v40 = (v40 + v43);
        v44 = &v36[v43];
        v45 = (v36 + 16);
        v46 = (v41 + 16);
        v47 = v42 & 0x7FFFFFFFFFFFFFF8;
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
        v36 = v44;
        if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_43:
          do
          {
            v49 = *v36;
            v36 += 4;
            *v40++ = v49;
          }

          while (v36 != v35);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::ModelCopy::CopyExactlyOne(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = this + 152;
  *(this + 20) = *(this + 19);
  v3 = *(a2 + 6);
  if (*(a2 + 15) != 29)
  {
    v3 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = v3[3];
  v8 = 4 * v4;
  do
  {
    v56 = *v7;
    if (!operations_research::sat::PresolveContext::LiteralIsFalse(*this, v56))
    {
      std::vector<int>::push_back[abi:ne200100](v2, &v56);
      v6 += operations_research::sat::PresolveContext::LiteralIsTrue(*this, v56);
    }

    ++v7;
    v8 -= 4;
  }

  while (v8);
  v9 = *(this + 19);
  v10 = *(this + 20);
  if (v9 == v10 || v6 >= 2)
  {
    return 0;
  }

  if (v10 - v9 == 4 && v6 == 1)
  {
    return 1;
  }

  v14 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v15 = v14;
  v17 = (v14 + 16);
  v16 = *(v14 + 16);
  v19 = *(this + 12);
  v18 = *(this + 13);
  v20 = v18 - v19;
  v21 = v16 + ((v18 - v19) >> 2);
  if (v21 > *(v14 + 20))
  {
    v54 = v16 + ((v18 - v19) >> 2);
    v52 = *(this + 13);
    v53 = *(this + 12);
    google::protobuf::RepeatedField<int>::Grow(v14 + 16, v16, v21);
    v19 = v53;
    v18 = v52;
    LODWORD(v16) = *v17;
    v22 = *(v15 + 24);
    *(v15 + 16) = v54;
    if (v53 == v52)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v22 = *(v14 + 24);
    *(v14 + 16) = v21;
    if (v19 == v18)
    {
      goto LABEL_25;
    }
  }

  v23 = (v22 + 4 * v16);
  if ((v20 - 4) < 0x1C)
  {
    goto LABEL_45;
  }

  v24 = 4 * v16 + v22;
  if ((v24 - v19) < 0x20)
  {
    goto LABEL_45;
  }

  v25 = ((v20 - 4) >> 2) + 1;
  v26 = 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
  v23 = (v23 + v26);
  v27 = &v19[v26];
  v28 = (v19 + 16);
  v29 = (v24 + 16);
  v30 = v25 & 0x7FFFFFFFFFFFFFF8;
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
  v19 = v27;
  if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_45:
    do
    {
      v32 = *v19;
      v19 += 4;
      *v23++ = v32;
    }

    while (v19 != v18);
  }

LABEL_25:
  if (*(v15 + 60) == 29)
  {
    v33 = *(v15 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v15);
    *(v15 + 60) = 29;
    v34 = *(v15 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v34);
    *(v15 + 48) = v33;
  }

  v35 = *(v33 + 4);
  v36 = v33 + 2;
  v38 = *(this + 19);
  v37 = *(this + 20);
  v39 = v37 - v38;
  v40 = v35 + ((v37 - v38) >> 2);
  if (v40 > *(v33 + 5))
  {
    v55 = v33;
    google::protobuf::RepeatedField<int>::Grow(v33 + 2, v35, v35 + ((v37 - v38) >> 2));
    LODWORD(v35) = *v36;
    v41 = v55[3];
    *(v55 + 4) = v40;
    if (v38 != v37)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v33[3];
    *(v33 + 4) = v40;
    if (v38 != v37)
    {
LABEL_32:
      v42 = (v41 + 4 * v35);
      if ((v39 - 4) < 0x1C)
      {
        goto LABEL_46;
      }

      v43 = 4 * v35 + v41;
      if ((v43 - v38) < 0x20)
      {
        goto LABEL_46;
      }

      v44 = ((v39 - 4) >> 2) + 1;
      v45 = 4 * (v44 & 0x7FFFFFFFFFFFFFF8);
      v42 = (v42 + v45);
      v46 = &v38[v45];
      v47 = (v38 + 16);
      v48 = (v43 + 16);
      v49 = v44 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v50 = *v47;
        *(v48 - 1) = *(v47 - 1);
        *v48 = v50;
        v47 += 2;
        v48 += 2;
        v49 -= 8;
      }

      while (v49);
      v38 = v46;
      if (v44 != (v44 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_46:
        do
        {
          v51 = *v38;
          v38 += 4;
          *v42++ = v51;
        }

        while (v38 != v37);
      }
    }
  }

  return 1;
}

uint64_t operations_research::sat::ModelCopy::CopyInterval(operations_research::sat::ModelCopy *this, const operations_research::sat::IntervalConstraintProto **a2, unsigned int a3, char a4)
{
  v31 = a3;
  v5 = *(this + 22);
  if (v5)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v5, 0, "starting_constraint_index_ == 0");
  }

  v8 = *(**this + 56);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(this + 56, &v31, v32);
  if (v34 == 1)
  {
    *v33 = v31;
  }

  *(v33 + 4) = v8;
  v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if ((a4 & 1) == 0)
  {
    operations_research::sat::ConstraintProto::CopyFrom(v9, a2);
    return 1;
  }

  v10 = v9;
  if (v9 != a2)
  {
    *(v9 + 16) = 0;
    v11 = *(a2 + 4);
    if (v11)
    {
      if (*(v9 + 20) < v11)
      {
        google::protobuf::RepeatedField<int>::Grow(v9 + 16, 0, *(a2 + 4));
        v9 = v10;
        v12 = *(v10 + 16);
        v14 = *(v10 + 24);
        *(v10 + 16) = v12 + v11;
        if (v11 >= 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(a2 + 4);
        v14 = *(v9 + 24);
        *(v9 + 16) = v11;
        if (v11 >= 1)
        {
LABEL_9:
          v15 = a2[3];
          v16 = (v14 + 4 * v12);
          if (v11 < 8)
          {
            goto LABEL_14;
          }

          v17 = 4 * v12 + v14;
          if ((v17 - v15) < 0x20)
          {
            goto LABEL_14;
          }

          v18 = v11;
          v19 = v11 & 0x7FFFFFF8;
          LODWORD(v11) = v11 - (v11 & 0x7FFFFFF8);
          v16 += v19;
          v20 = (v15 + 4 * v19);
          v21 = (v15 + 16);
          v22 = (v17 + 16);
          v23 = v19;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v21 += 2;
            v22 += 2;
            v23 -= 8;
          }

          while (v23);
          v15 = v20;
          if (v19 != v18)
          {
LABEL_14:
            v25 = v11 + 1;
            do
            {
              v26 = *v15;
              v15 = (v15 + 4);
              *v16++ = v26;
              --v25;
            }

            while (v25 > 1);
          }
        }
      }
    }
  }

  if (*(a2 + 15) == 19)
  {
    v27 = a2[6];
  }

  else
  {
    v27 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  if (*(v9 + 60) == 19)
  {
    v28 = *(v9 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v10);
    *(v10 + 60) = 19;
    v30 = *(v10 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v30);
    *(v10 + 48) = v28;
  }

  operations_research::sat::IntervalConstraintProto::CopyFrom(v28, v27);
  return 1;
}

uint64_t operations_research::sat::ModelCopy::AddLinearConstraintForInterval(operations_research::sat::PresolveContext **this, const operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) == 19)
  {
    v4 = *(a2 + 6);
  }

  else
  {
    v4 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  v5 = v4[5];
  if (v5)
  {
    v6 = v4[5];
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (*(v6 + 4) || (v4[3] ? (v7 = v4[3]) : (v7 = &operations_research::sat::_LinearExpressionProto_default_instance_), (v8 = (v7[8] + v6[8]), v4[4]) ? (v9 = v4[4]) : (v9 = &operations_research::sat::_LinearExpressionProto_default_instance_), v8 != v9[8] || (v10 = *(v7 + 4), v10 != *(v9 + 4)) || memcmp(v7[3], v9[3], 4 * v10) || (v11 = *(v7 + 10), v11 != *(v9 + 10)) || memcmp(v7[6], v9[6], 8 * v11)))
  {
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v15 = v12;
    if (v12 != a2)
    {
      *(v12 + 16) = 0;
      v16 = *(a2 + 4);
      if (v16)
      {
        if (*(v12 + 20) < v16)
        {
          google::protobuf::RepeatedField<int>::Grow(v12 + 16, 0, *(a2 + 4));
          v17 = *(v15 + 16);
          v19 = *(v15 + 24);
          *(v15 + 16) = v17 + v16;
          if (v16 < 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v17 = 0;
          v18 = *(a2 + 4);
          v19 = *(v12 + 24);
          *(v12 + 16) = v16;
          if (v16 < 1)
          {
            goto LABEL_30;
          }
        }

        v20 = *(a2 + 3);
        v21 = (v19 + 4 * v17);
        if (v16 < 8)
        {
          goto LABEL_28;
        }

        v22 = (4 * v17 + v19);
        if ((v22 - v20) < 0x20)
        {
          goto LABEL_28;
        }

        v23 = v16;
        v24 = v16 & 0x7FFFFFF8;
        LODWORD(v16) = v16 - (v16 & 0x7FFFFFF8);
        v21 += v24;
        v25 = (v20 + 4 * v24);
        v26 = v20 + 1;
        v27 = v22 + 1;
        v28 = v24;
        do
        {
          v14 = v26[-1];
          v29 = *v26;
          v27[-1] = v14;
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        v20 = v25;
        if (v24 != v23)
        {
LABEL_28:
          v30 = v16 + 1;
          do
          {
            v31 = v20->n128_u32[0];
            v20 = (v20 + 4);
            *v21++ = v31;
            --v30;
          }

          while (v30 > 1);
        }
      }
    }

LABEL_30:
    if (*(v15 + 60) == 12)
    {
      v32 = *(v15 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v15);
      *(v15 + 60) = 12;
      v33 = *(v15 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v33);
      *(v15 + 48) = v32;
    }

    v35 = *(v32 + 64);
    v34 = *(v32 + 68);
    if (v35 == v34)
    {
      google::protobuf::RepeatedField<long long>::Grow(v32 + 64, v34);
      v112 = *(v32 + 64);
      v34 = *(v32 + 68);
      v36 = *(v32 + 72);
      v37 = v112 + 1;
      *(v32 + 64) = v112 + 1;
      *(v36 + 8 * v112) = 0;
      if (v112 + 1 != v34)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v36 = *(v32 + 72);
      v37 = v35 + 1;
      *(v32 + 64) = v35 + 1;
      *(v36 + 8 * v35) = 0;
      if (v35 + 1 != v34)
      {
LABEL_37:
        *(v32 + 64) = v37 + 1;
        *(v36 + 8 * v37) = 0;
        if (v4[3])
        {
          v38 = v4[3];
        }

        else
        {
          v38 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::AddLinearExpressionToLinearConstraint(v38, 1, v32, v13, v14);
        if (v4[5])
        {
          v41 = v4[5];
        }

        else
        {
          v41 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::AddLinearExpressionToLinearConstraint(v41, 1, v32, v39, v40);
        if (v4[4])
        {
          v44 = v4[4];
        }

        else
        {
          v44 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::AddLinearExpressionToLinearConstraint(v44, 0xFFFFFFFFFFFFFFFFLL, v32, v42, v43);
        v5 = v4[5];
        goto LABEL_47;
      }
    }

    google::protobuf::RepeatedField<long long>::Grow(v32 + 64, v34);
    v37 = *(v32 + 64);
    v36 = *(v32 + 72);
    goto LABEL_37;
  }

LABEL_47:
  if (!v5)
  {
    v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  result = operations_research::sat::PresolveContext::MinOf(*this, v5);
  if (result < 0)
  {
    v46 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v47 = v46;
    if (v46 != a2)
    {
      *(v46 + 16) = 0;
      v48 = *(a2 + 4);
      if (v48)
      {
        if (*(v46 + 20) < v48)
        {
          google::protobuf::RepeatedField<int>::Grow(v46 + 16, 0, *(a2 + 4));
          v49 = *(v47 + 16);
          v51 = *(v47 + 24);
          *(v47 + 16) = v49 + v48;
          if (v48 < 1)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v49 = 0;
          v50 = *(a2 + 4);
          v51 = *(v46 + 24);
          *(v46 + 16) = v48;
          if (v48 < 1)
          {
            goto LABEL_61;
          }
        }

        v52 = *(a2 + 3);
        v53 = (v51 + 4 * v49);
        if (v48 < 8)
        {
          goto LABEL_59;
        }

        v54 = 4 * v49 + v51;
        if ((v54 - v52) < 0x20)
        {
          goto LABEL_59;
        }

        v55 = v48;
        v56 = v48 & 0x7FFFFFF8;
        LODWORD(v48) = v48 - (v48 & 0x7FFFFFF8);
        v53 += v56;
        v57 = &v52[v56];
        v58 = (v52 + 4);
        v59 = (v54 + 16);
        v60 = v56;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 8;
        }

        while (v60);
        v52 = v57;
        if (v56 != v55)
        {
LABEL_59:
          v62 = v48 + 1;
          do
          {
            v63 = *v52++;
            *v53++ = v63;
            --v62;
          }

          while (v62 > 1);
        }
      }
    }

LABEL_61:
    if (*(v47 + 60) == 12)
    {
      v64 = *(v47 + 48);
      if (v64 == v5)
      {
        goto LABEL_76;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v47);
      *(v47 + 60) = 12;
      v65 = *(v47 + 8);
      if (v65)
      {
        v64 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v65 & 0xFFFFFFFFFFFFFFFELL));
        *(v47 + 48) = v64;
        if (v64 == v5)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v64 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v65);
        *(v47 + 48) = v64;
        if (v64 == v5)
        {
          goto LABEL_76;
        }
      }
    }

    *(v64 + 16) = 0;
    v66 = *(v5 + 4);
    if (!v66)
    {
      goto LABEL_76;
    }

    if (*(v64 + 20) < v66)
    {
      v115 = v64;
      google::protobuf::RepeatedField<int>::Grow(v64 + 16, 0, *(v5 + 4));
      v67 = *(v115 + 16);
      v69 = *(v115 + 24);
      *(v115 + 16) = v67 + v66;
      if (v66 < 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v67 = 0;
      v68 = *(v5 + 4);
      v69 = *(v64 + 24);
      *(v64 + 16) = v66;
      if (v66 < 1)
      {
        goto LABEL_76;
      }
    }

    v70 = v5[3];
    v71 = (v69 + 4 * v67);
    if (v66 < 8)
    {
      goto LABEL_74;
    }

    v72 = 4 * v67 + v69;
    if ((v72 - v70) < 0x20)
    {
      goto LABEL_74;
    }

    v73 = v66;
    v74 = v66 & 0x7FFFFFF8;
    LODWORD(v66) = v66 - (v66 & 0x7FFFFFF8);
    v71 += v74;
    v75 = (v70 + 4 * v74);
    v76 = (v70 + 2);
    v77 = (v72 + 16);
    v78 = v74;
    do
    {
      v79 = *v76;
      *(v77 - 1) = *(v76 - 1);
      *v77 = v79;
      v76 += 2;
      v77 += 2;
      v78 -= 8;
    }

    while (v78);
    v70 = v75;
    if (v74 != v73)
    {
LABEL_74:
      v80 = v66 + 1;
      do
      {
        v81 = *v70;
        v70 = (v70 + 4);
        *v71++ = v81;
        --v80;
      }

      while (v80 > 1);
    }

LABEL_76:
    if (*(v47 + 60) == 12)
    {
      v82 = *(v47 + 48);
      if (v82 == v5)
      {
        goto LABEL_91;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v47);
      *(v47 + 60) = 12;
      v83 = *(v47 + 8);
      if (v83)
      {
        v82 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v83 & 0xFFFFFFFFFFFFFFFELL));
        *(v47 + 48) = v82;
        if (v82 == v5)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v82 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v83);
        *(v47 + 48) = v82;
        if (v82 == v5)
        {
          goto LABEL_91;
        }
      }
    }

    *(v82 + 40) = 0;
    v84 = *(v5 + 10);
    if (v84)
    {
      if (*(v82 + 44) < v84)
      {
        v116 = v82;
        v117 = *(v5 + 10);
        google::protobuf::RepeatedField<long long>::Grow(v82 + 40, 0);
        v85 = *(v116 + 40);
        v87 = *(v116 + 48);
        *(v116 + 40) = v85 + v84;
        if (v84 < 1)
        {
          goto LABEL_91;
        }

LABEL_84:
        v88 = v5[6];
        v89 = (v87 + 8 * v85);
        if (v84 < 8)
        {
          goto LABEL_89;
        }

        v90 = 8 * v85 + v87;
        if ((v90 - v88) < 0x20)
        {
          goto LABEL_89;
        }

        v91 = v84;
        v92 = v84 & 0x7FFFFFFC;
        LODWORD(v84) = v84 - (v84 & 0x7FFFFFFC);
        v89 += v92;
        v93 = &v88[v92];
        v94 = (v88 + 2);
        v95 = (v90 + 16);
        v96 = v92;
        do
        {
          v97 = *v94;
          *(v95 - 1) = *(v94 - 1);
          *v95 = v97;
          v94 += 2;
          v95 += 2;
          v96 -= 4;
        }

        while (v96);
        v88 = v93;
        if (v92 != v91)
        {
LABEL_89:
          v98 = v84 + 1;
          do
          {
            v99 = *v88++;
            *v89++ = v99;
            --v98;
          }

          while (v98 > 1);
        }

        goto LABEL_91;
      }

      v85 = 0;
      v86 = *(v5 + 10);
      v87 = *(v82 + 48);
      *(v82 + 40) = v84;
      if (v84 >= 1)
      {
        goto LABEL_84;
      }
    }

LABEL_91:
    if (*(v47 + 60) == 12)
    {
      v100 = *(v47 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v47);
      *(v47 + 60) = 12;
      v101 = *(v47 + 8);
      if (v101)
      {
        v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
      }

      v100 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v101);
      *(v47 + 48) = v100;
    }

    v102 = -v5[8];
    v104 = *(v100 + 64);
    v103 = *(v100 + 68);
    v105 = (v100 + 64);
    if (v104 == v103)
    {
      v113 = v100;
      google::protobuf::RepeatedField<long long>::Grow(v100 + 64, v103);
      v100 = v113;
      v104 = *v105;
    }

    v106 = *(v100 + 72);
    *(v100 + 64) = v104 + 1;
    *(v106 + 8 * v104) = v102;
    if (*(v47 + 60) == 12)
    {
      result = *(v47 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v47);
      *(v47 + 60) = 12;
      v107 = *(v47 + 8);
      if (v107)
      {
        v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v107);
      *(v47 + 48) = result;
    }

    v109 = *(result + 64);
    v108 = *(result + 68);
    v110 = (result + 64);
    if (v109 == v108)
    {
      v114 = result;
      google::protobuf::RepeatedField<long long>::Grow(result + 64, v108);
      result = v114;
      v109 = *v110;
    }

    v111 = *(result + 72);
    *(result + 64) = v109 + 1;
    *(v111 + 8 * v109) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

void *operations_research::sat::ModelCopy::CopyAndMapNoOverlap(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v5 = v4;
  if (*(v4 + 60) == 20)
  {
    result = *(v4 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v4);
    *(v5 + 60) = 20;
    v7 = *(v5 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v7);
    *(v5 + 48) = result;
  }

  v8 = *(a2 + 15);
  v9 = *(a2 + 6);
  if (v8 == 20)
  {
    v10 = *(a2 + 6);
  }

  else
  {
    v10 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
  }

  v11 = *(v10 + 4);
  if (*(result + 5) < v11)
  {
    v38 = result;
    google::protobuf::RepeatedField<int>::Grow(result + 2, *(result + 4), v11);
    result = v38;
    v9 = *(a2 + 6);
    if (*(a2 + 15) != 20)
    {
      v9 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
    }

    v12 = *(v9 + 4);
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    if (v8 != 20)
    {
      v9 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
    }

    v12 = *(v9 + 4);
    if (!v12)
    {
      return result;
    }
  }

  v13 = v9[3];
  v14 = &v13[v12];
  v15 = (this + 72);
  do
  {
    v17 = *v13;
    v18 = *(this + 7);
    if (v18 > 1)
    {
      v19 = 0;
      _X10 = *v15;
      __asm { PRFM            #4, [X10] }

      v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17));
      v27 = vdup_n_s8(v26 & 0x7F);
      v28 = ((v26 >> 7) ^ (*v15 >> 12)) & v18;
      v29 = *(*v15 + v28);
      v30 = vceq_s8(v29, v27);
      if (!v30)
      {
        goto LABEL_23;
      }

LABEL_20:
      v31 = *(this + 10);
      while (1)
      {
        v32 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v18;
        if (*(v31 + 8 * v32) == v17)
        {
          break;
        }

        v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v30)
        {
LABEL_23:
          while (!*&vceq_s8(v29, 0x8080808080808080))
          {
            v19 += 8;
            v28 = (v19 + v28) & v18;
            v29 = *(_X10 + v28);
            v30 = vceq_s8(v29, v27);
            if (v30)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_15;
        }
      }

      v17 = v31 + 8 * v32;
      if (_X10 + v32)
      {
        goto LABEL_32;
      }
    }

    else if (*(this + 8) >= 2uLL)
    {
      if (*v15 == v17)
      {
        v17 = this + 72;
        v33 = &absl::lts_20240722::container_internal::kSooControl;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
LABEL_32:
        v34 = *(v17 + 4);
        v35 = result[2];
        v36 = v35;
        if (v35 == HIDWORD(v35))
        {
          v37 = result;
          google::protobuf::RepeatedField<int>::Grow(result + 2, HIDWORD(v35), (HIDWORD(v35) + 1));
          result = v37;
          v36 = *(v37 + 16);
        }

        v16 = result[3];
        *(result + 4) = v36 + 1;
        *(v16 + 4 * v36) = v34;
      }
    }

LABEL_15:
    ++v13;
  }

  while (v13 != v14);
  return result;
}

uint64_t operations_research::sat::ModelCopy::CopyAndMapNoOverlap2D(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v5 = v4;
  if (*(v4 + 60) == 21)
  {
    result = *(v4 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v4);
    *(v5 + 60) = 21;
    v7 = *(v5 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v7);
    *(v5 + 48) = result;
  }

  if (*(a2 + 15) == 21)
  {
    v8 = *(a2 + 6);
  }

  else
  {
    v8 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
  }

  v9 = *(v8 + 4);
  if (*(result + 20) >= v9)
  {
    if (*(result + 44) >= v9)
    {
      goto LABEL_11;
    }

LABEL_61:
    v54 = result;
    google::protobuf::RepeatedField<int>::Grow(result + 40, *(result + 40), v9);
    result = v54;
    if (v9 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v53 = result;
  google::protobuf::RepeatedField<int>::Grow(result + 16, *(result + 16), v9);
  result = v53;
  if (*(v53 + 44) < v9)
  {
    goto LABEL_61;
  }

LABEL_11:
  if (v9 < 1)
  {
    return result;
  }

LABEL_12:
  v10 = 0;
  v11 = (this + 72);
  do
  {
    if (*(a2 + 15) == 21)
    {
      v13 = *(a2 + 6);
    }

    else
    {
      v13 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    v14 = *(v13[3] + v10);
    v15 = *(this + 7);
    if (v15 > 1)
    {
      v16 = 0;
      _X11 = *v11;
      __asm { PRFM            #4, [X11] }

      v22 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14));
      v23 = vdup_n_s8(v22 & 0x7F);
      v24 = ((v22 >> 7) ^ (*v11 >> 12)) & v15;
      v25 = *(*v11 + v24);
      v26 = vceq_s8(v25, v23);
      if (!v26)
      {
        goto LABEL_25;
      }

LABEL_22:
      v27 = *(this + 10);
      while (1)
      {
        v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v15;
        if (*(v27 + 8 * v28) == v14)
        {
          break;
        }

        v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v26)
        {
LABEL_25:
          while (!*&vceq_s8(v25, 0x8080808080808080))
          {
            v16 += 8;
            v24 = (v16 + v24) & v15;
            v25 = *(_X11 + v24);
            v26 = vceq_s8(v25, v23);
            if (v26)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_14;
        }
      }

      v29 = (v27 + 8 * v28);
      if (_X11 + v28)
      {
        goto LABEL_37;
      }
    }

    else if (*(this + 8) >= 2uLL)
    {
      _ZF = *v11 == v14;
      v29 = *v11 == v14 ? (this + 72) : *(this + 7);
      if (_ZF ? &absl::lts_20240722::container_internal::kSooControl : 0)
      {
LABEL_37:
        v32 = *(v13[6] + v10);
        if (v15 > 1)
        {
          v33 = 0;
          _X11 = *v11;
          __asm { PRFM            #4, [X11] }

          v36 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32));
          v37 = vdup_n_s8(v36 & 0x7F);
          v38 = ((v36 >> 7) ^ (*v11 >> 12)) & v15;
          v39 = *(*v11 + v38);
          v40 = vceq_s8(v39, v37);
          if (!v40)
          {
            goto LABEL_44;
          }

LABEL_41:
          v41 = *(this + 10);
          while (1)
          {
            v42 = (v38 + (__clz(__rbit64(v40)) >> 3)) & v15;
            if (*(v41 + 8 * v42) == v32)
            {
              break;
            }

            v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v40)
            {
LABEL_44:
              while (!*&vceq_s8(v39, 0x8080808080808080))
              {
                v33 += 8;
                v38 = (v33 + v38) & v15;
                v39 = *(_X11 + v38);
                v40 = vceq_s8(v39, v37);
                if (v40)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_14;
            }
          }

          v43 = (v41 + 8 * v42);
          if (_X11 + v42)
          {
            goto LABEL_56;
          }
        }

        else if (*(this + 8) >= 2uLL)
        {
          v43 = *v11 == v32 ? (this + 72) : *v11;
          if (*v11 == v32 ? &absl::lts_20240722::container_internal::kSooControl : 0)
          {
LABEL_56:
            v45 = *(v29 + 1);
            v46 = *(result + 16);
            v47 = v46;
            if (v46 == HIDWORD(v46))
            {
              v55 = result;
              google::protobuf::RepeatedField<int>::Grow(result + 16, HIDWORD(v46), (HIDWORD(v46) + 1));
              result = v55;
              v47 = *(v55 + 16);
            }

            v48 = *(result + 24);
            *(result + 16) = v47 + 1;
            *(v48 + 4 * v47) = v45;
            v49 = *(v43 + 1);
            v50 = *(result + 40);
            v51 = v50;
            if (v50 == HIDWORD(v50))
            {
              v52 = result;
              google::protobuf::RepeatedField<int>::Grow(result + 40, HIDWORD(v50), (HIDWORD(v50) + 1));
              result = v52;
              v51 = *(v52 + 40);
            }

            v12 = *(result + 48);
            *(result + 40) = v51 + 1;
            *(v12 + 4 * v51) = v49;
          }
        }
      }
    }

LABEL_14:
    ++v10;
  }

  while (v10 != v9);
  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *operations_research::sat::ModelCopy::CopyAndMapCumulative(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v5 = v4;
  if (*(v4 + 60) == 22)
  {
    v6 = *(v4 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v4);
    *(v5 + 60) = 22;
    v7 = *(v5 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v7);
    v6 = v8;
    *(v5 + 48) = v8;
  }

  if (*(a2 + 15) == 22)
  {
    v9 = *(a2 + 6);
  }

  else
  {
    v9 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  v10 = v9[9];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  *(v6 + 16) |= 1u;
  v12 = *(v6 + 72);
  if (!v12)
  {
    v13 = *(v6 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v13);
    *(v6 + 72) = v12;
  }

  operations_research::sat::LinearExpressionProto::CopyFrom(v12, v11);
  if (*(a2 + 15) == 22)
  {
    v14 = *(a2 + 6);
  }

  else
  {
    v14 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  v15 = *(v14 + 6);
  if (*(v6 + 28) < v15)
  {
    google::protobuf::RepeatedField<int>::Grow(v6 + 24, *(v6 + 24), v15);
    result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 48), v15);
    if (v15 < 1)
    {
      return result;
    }
  }

  else
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 48), v15);
    if (v15 < 1)
    {
      return result;
    }
  }

  v17 = 0;
  v18 = (this + 72);
  do
  {
    if (*(a2 + 15) == 22)
    {
      v26 = *(a2 + 6);
    }

    else
    {
      v26 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
    }

    v27 = *(v26[4] + v17);
    v28 = *(this + 7);
    if (v28 > 1)
    {
      v29 = 0;
      _X10 = *v18;
      __asm { PRFM            #4, [X10] }

      v35 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
      v36 = vdup_n_s8(v35 & 0x7F);
      v37 = ((v35 >> 7) ^ (*v18 >> 12)) & v28;
      v38 = *(*v18 + v37);
      v39 = vceq_s8(v38, v36);
      if (!v39)
      {
        goto LABEL_39;
      }

LABEL_36:
      v40 = *(this + 10);
      while (1)
      {
        v41 = (v37 + (__clz(__rbit64(v39)) >> 3)) & v28;
        if (*(v40 + 8 * v41) == v27)
        {
          break;
        }

        v39 &= ((v39 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v39)
        {
LABEL_39:
          while (!*&vceq_s8(v38, 0x8080808080808080))
          {
            v29 += 8;
            v37 = (v29 + v37) & v28;
            v38 = *(_X10 + v37);
            v39 = vceq_s8(v38, v36);
            if (v39)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_28;
        }
      }

      v27 = v40 + 8 * v41;
      if (_X10 + v41)
      {
        goto LABEL_49;
      }
    }

    else if (*(this + 8) >= 2uLL)
    {
      _ZF = *v18 == v27;
      if (*v18 == v27)
      {
        v27 = this + 72;
      }

      v43 = &absl::lts_20240722::container_internal::kSooControl;
      if (!_ZF)
      {
        v43 = 0;
      }

      if (v43)
      {
LABEL_49:
        v44 = *(v27 + 4);
        v45 = *(v6 + 24);
        v46 = v45;
        if (v45 == HIDWORD(v45))
        {
          google::protobuf::RepeatedField<int>::Grow(v6 + 24, HIDWORD(v45), (HIDWORD(v45) + 1));
          v46 = *(v6 + 24);
        }

        v19 = *(v6 + 32);
        *(v6 + 24) = v46 + 1;
        *(v19 + 4 * v46) = v44;
        if (*(a2 + 15) == 22)
        {
          v20 = *(a2 + 6);
        }

        else
        {
          v20 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
        }

        v22 = v20[6];
        v21 = (v20 + 6);
        v23 = &v22[v17] + 7;
        if (v22)
        {
          v21 = v23;
        }

        v24 = *v21;
        v25 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v6 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
        result = operations_research::sat::LinearExpressionProto::CopyFrom(v25, v24);
      }
    }

LABEL_28:
    ++v17;
  }

  while (v17 != v15);
  return result;
}

uint64_t operations_research::sat::ModelCopy::FinishBoolOrCopy(operations_research::sat::ModelCopy *this)
{
  v1 = *(this + 19);
  v2 = *(this + 20);
  if (v1 == v2)
  {
    return 0;
  }

  if (v2 - v1 == 4)
  {
    operator new();
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v6 = v5;
  if (*(v5 + 60) == 3)
  {
    v7 = *(v5 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v5);
    *(v6 + 60) = 3;
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v8);
    *(v6 + 48) = v7;
  }

  v9 = *(v7 + 4);
  v10 = v7 + 2;
  v12 = *(this + 19);
  v11 = *(this + 20);
  v13 = v11 - v12;
  v14 = v9 + ((v11 - v12) >> 2);
  if (v14 > *(v7 + 5))
  {
    v26 = v7;
    google::protobuf::RepeatedField<int>::Grow(v7 + 2, v9, v9 + ((v11 - v12) >> 2));
    LODWORD(v9) = *v10;
    v15 = v26[3];
    *(v26 + 4) = v14;
    if (v12 != v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = v7[3];
    *(v7 + 4) = v14;
    if (v12 != v11)
    {
LABEL_12:
      v16 = (v15 + 4 * v9);
      if ((v13 - 4) < 0x1C)
      {
        goto LABEL_23;
      }

      v17 = 4 * v9 + v15;
      if ((v17 - v12) < 0x20)
      {
        goto LABEL_23;
      }

      v18 = ((v13 - 4) >> 2) + 1;
      v19 = 4 * (v18 & 0x7FFFFFFFFFFFFFF8);
      v16 = (v16 + v19);
      v20 = &v12[v19];
      v21 = (v12 + 16);
      v22 = (v17 + 16);
      v23 = v18 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
      v12 = v20;
      if (v18 != (v18 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_23:
        do
        {
          v25 = *v12;
          v12 += 4;
          *v16++ = v25;
        }

        while (v12 != v11);
      }
    }
  }

  return 1;
}

void sub_23CABCFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ImportModelWithBasicPresolveIntoContext(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::PresolveContext *a3)
{
  v8 = a2;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v12 = xmmword_23CE306D0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = xmmword_23CE306D0;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v23 = xmmword_23CE306D0;
  operations_research::sat::ModelCopy::ImportVariablesAndMaybeIgnoreNames(&v8, this);
  if (!operations_research::sat::ModelCopy::ImportAndSimplifyConstraints(&v8, this, 1))
  {
    v6 = *(a2 + 416) ^ 1;
    if (v23 < 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  operations_research::sat::CopyEverythingExceptVariablesAndConstraintsFieldsIntoContext(this, a2, v5);
  v6 = 1;
  if (v23 >= 2)
  {
LABEL_5:
    operator delete((v24 - (BYTE8(v23) & 1) - 8));
  }

LABEL_6:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v18 >= 2)
  {
    operator delete((v19 - (BYTE8(v18) & 1) - 8));
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v12 >= 2)
  {
    operator delete((v13 - (BYTE8(v12) & 1) - 8));
  }

  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v6 & 1;
}

operations_research::sat::PartialVariableAssignment *operations_research::sat::CopyEverythingExceptVariablesAndConstraintsFieldsIntoContext(operations_research::sat::PartialVariableAssignment *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::PresolveContext *a3)
{
  v4 = this;
  v5 = *(this + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v6 = *(v5 + 8);
  }

  if (v6)
  {
    v7 = *(*a2 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>((*a2 + 120), v5, v7);
  }

  v8 = *(v4 + 4);
  if (v8)
  {
    v9 = *(v4 + 16);
    v10 = *a2;
    *(v10 + 16) = *(*a2 + 16) | 1;
    v11 = *(v10 + 128);
    if (v11)
    {
      this = operations_research::sat::CpObjectiveProto::CopyFrom(v11, v9);
      if ((*(v4 + 4) & 8) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = v9;
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v12);
      *(v10 + 128) = v14;
      this = operations_research::sat::CpObjectiveProto::CopyFrom(v14, v13);
      if ((*(v4 + 4) & 8) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_9:
    v71 = a2;
    if (!*(v4 + 20))
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

  if ((v8 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  v15 = *(v4 + 19);
  v16 = *a2;
  *(v16 + 16) = *(*a2 + 16) | 8;
  v17 = *(v16 + 152);
  if (v17)
  {
    this = operations_research::sat::FloatObjectiveProto::CopyFrom(v17, v15);
    v71 = a2;
    if (!*(v4 + 20))
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

  v18 = *(v16 + 8);
  v19 = v15;
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  v20 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::FloatObjectiveProto>(v18);
  *(v16 + 152) = v20;
  this = operations_research::sat::FloatObjectiveProto::CopyFrom(v20, v19);
  v71 = a2;
  if (*(v4 + 20))
  {
LABEL_23:
    v21 = *v71;
    if (*v71 != v4)
    {
      if (*(v21 + 80) < 1 || (this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v21 + 72)), *(v4 + 20)))
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v21 + 72), (v4 + 72), google::protobuf::Arena::CopyConstruct<operations_research::sat::DecisionStrategyProto>);
      }
    }

    v22 = *(*v71 + 72);
    if (v22)
    {
      v23 = v22 + 7;
    }

    else
    {
      v23 = *v71 + 72;
    }

    v24 = *(*v71 + 80);
    if (v24)
    {
      v25 = v23 + 8 * v24;
      do
      {
        v26 = *v23;
        v27 = *(*v23 + 16);
        if (v27)
        {
          if (*(v26 + 48))
          {
            operations_research::sat::CopyEverythingExceptVariablesAndConstraintsFieldsIntoContext(v72);
          }

          v28 = *(v26 + 24);
          v29 = 4 * v27;
          do
          {
            v30 = *v28;
            this = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v26 + 40), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            if (~v30 <= v30)
            {
              v31 = v30;
            }

            else
            {
              v31 = ~v30;
            }

            v32 = (this + 16);
            v33 = *(this + 2);
            v34 = v33;
            if (v33 == HIDWORD(v33))
            {
              v70 = this;
              google::protobuf::RepeatedField<int>::Grow(this + 16, HIDWORD(v33), (HIDWORD(v33) + 1));
              this = v70;
              v34 = *v32;
            }

            v35 = *(this + 3);
            *(this + 4) = v34 + 1;
            *(v35 + 4 * v34) = v31;
            if (v30 >= 0)
            {
              v36 = 1;
            }

            else
            {
              v36 = -1;
            }

            v38 = *(this + 10);
            v37 = *(this + 11);
            v39 = (this + 40);
            if (v38 == v37)
            {
              v41 = this;
              google::protobuf::RepeatedField<long long>::Grow(this + 40, v37);
              this = v41;
              v38 = *v39;
            }

            v40 = *(this + 6);
            *(this + 10) = v38 + 1;
            *(v40 + 8 * v38) = v36;
            ++v28;
            v29 -= 4;
          }

          while (v29);
          *(v26 + 16) = 0;
        }

        v23 += 8;
      }

      while (v23 != v25);
    }
  }

LABEL_48:
  if (*(v4 + 24))
  {
    v42 = *v71;
    if (*v71 != v4)
    {
      *(v42 + 96) = 0;
      v43 = *(v4 + 24);
      if (v43)
      {
        if (*(v42 + 100) < v43)
        {
          this = google::protobuf::RepeatedField<int>::Grow(v42 + 96, 0, *(v4 + 24));
          v44 = *(v42 + 96);
          v46 = *(v42 + 104);
          *(v42 + 96) = v44 + v43;
          if (v43 < 1)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v44 = 0;
          v45 = *(v4 + 24);
          v46 = *(v42 + 104);
          *(v42 + 96) = v43;
          if (v43 < 1)
          {
            goto LABEL_60;
          }
        }

        v47 = *(v4 + 13);
        v48 = (v46 + 4 * v44);
        if (v43 < 8)
        {
          goto LABEL_58;
        }

        v49 = 4 * v44 + v46;
        if ((v49 - v47) < 0x20)
        {
          goto LABEL_58;
        }

        v50 = v43;
        v51 = v43 & 0x7FFFFFF8;
        LODWORD(v43) = v43 - (v43 & 0x7FFFFFF8);
        v48 += v51;
        v52 = &v47[v51];
        v53 = (v47 + 4);
        v54 = (v49 + 16);
        v55 = v51;
        do
        {
          v56 = *v53;
          *(v54 - 1) = *(v53 - 1);
          *v54 = v56;
          v53 += 2;
          v54 += 2;
          v55 -= 8;
        }

        while (v55);
        v47 = v52;
        if (v51 != v50)
        {
LABEL_58:
          v57 = v43 + 1;
          do
          {
            v58 = *v47++;
            *v48++ = v58;
            --v57;
          }

          while (v57 > 1);
        }
      }
    }
  }

LABEL_60:
  v59 = *(v4 + 4);
  if ((v59 & 4) != 0)
  {
    v60 = *(v4 + 18);
    v61 = *v71;
    *(v61 + 16) = *(*v71 + 16) | 4;
    v62 = *(v61 + 144);
    if (!v62)
    {
      v63 = *(v61 + 8);
      v64 = v60;
      if (v63)
      {
        v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::SymmetryProto>(v63);
      *(v61 + 144) = v62;
      v60 = v64;
    }

    this = operations_research::sat::SymmetryProto::CopyFrom(v62, v60);
    v59 = *(v4 + 4);
  }

  if ((v59 & 2) != 0)
  {
    v65 = *(v4 + 17);
    v66 = *v71;
    *(v66 + 16) = *(*v71 + 16) | 2;
    v67 = *(v66 + 136);
    if (!v67)
    {
      v68 = *(v66 + 8);
      v69 = v65;
      if (v68)
      {
        v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
      }

      v67 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::PartialVariableAssignment>(v68);
      *(v66 + 136) = v67;
      v65 = v69;
    }

    return operations_research::sat::PartialVariableAssignment::CopyFrom(v67, v65);
  }

  return this;
}

void operations_research::sat::CpModelPresolver::MergeClauses(operations_research::sat::CpModelPresolver *this)
{
  if ((*(*(this + 1) + 416) & 1) == 0)
  {
    strcpy(v203, "MergeClauses");
    v204 = 268;
    v207 = *(this + 1);
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v206 = 0;
    v211 = 0;
    CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
    v185 = this;
    v2 = *(this + 1);
    v200 = xmmword_23CE306D0;
    v3 = 2 * *(*v2 + 32);
    if (v3)
    {
      if ((v3 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v196[0] = v2[51];
    v196[1] = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
    v196[2] = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    v4 = *(*v2 + 56);
    if (v4 < 1)
    {
      v133 = 0;
      v181 = 0;
      v180 = 0;
    }

    else
    {
      v5 = 0;
      v182 = 0;
      v183 = 0;
      do
      {
        v6 = **(v185 + 1);
        v8 = *(v6 + 48);
        v7 = v6 + 48;
        v9 = v8 + 8 * v5 + 7;
        if (v8)
        {
          v7 = v9;
        }

        v10 = *v7;
        v11 = *(*v7 + 60);
        if (v11 > 25)
        {
          if (v11 == 26)
          {
            v21 = *(v10 + 48);
            v22 = *(v21 + 16);
            if (v22)
            {
              v23 = *(v21 + 24);
              v24 = 4 * v22;
              do
              {
                v26 = *v23++;
                v25 = v26;
                if (~v26 <= v26)
                {
                  v27 = v25;
                }

                else
                {
                  v27 = ~v25;
                }

                *(8 * (__PAIR64__(v27, v25) >> 31)) = *(8 * (__PAIR64__(v27, v25) >> 31)) + v22;
                v24 -= 4;
              }

              while (v24);
            }
          }

          else if (v11 == 29)
          {
            v14 = *(v10 + 48);
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v14 + 24);
              v17 = 4 * v15;
              do
              {
                v19 = *v16++;
                v18 = v19;
                if (~v19 <= v19)
                {
                  v20 = v18;
                }

                else
                {
                  v20 = ~v18;
                }

                *(8 * (__PAIR64__(v20, v18) >> 31)) = *(8 * (__PAIR64__(v20, v18) >> 31)) + v15;
                v17 -= 4;
              }

              while (v17);
            }
          }
        }

        else if (v11 == 3)
        {
          if (!*(v10 + 16))
          {
            v28 = *(v10 + 48);
            v29 = *(v28 + 16);
            if (v29 >= 3)
            {
              std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,false>(*(v28 + 24), (*(v28 + 24) + 4 * v29), &v193, 126 - 2 * __clz(v29), 1);
              v30 = &operations_research::sat::_BoolArgumentProto_default_instance_;
              if (*(v10 + 60) == 3)
              {
                v30 = *(v10 + 48);
              }

              operations_research::sat::ClauseWithOneMissingHasher::RegisterClause(v196, v5, v30[3], *(v30 + 4));
              v36 = v182;
              v37 = v182 >> 2;
              if (((v182 >> 2) + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (v182 >> 2 != -1)
              {
                if (!(((v182 >> 2) + 1) >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(4 * v37) = v5;
              v182 = 4 * v37 + 4;
              memcpy(0, 0, v36);
            }
          }
        }

        else if (v11 == 4)
        {
          v12 = *(v10 + 16);
          if (v12 >= 2)
          {
            std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>,false>(*(v10 + 24), (*(v10 + 24) + 4 * v12), &v193, 126 - 2 * __clz(v12), 1);
            __p = operations_research::sat::ClauseWithOneMissingHasher::HashOfNegatedLiterals(v196, *(v10 + 24), *(v10 + 16));
            LODWORD(v192) = v5;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>(&v200, &__p, &v193);
            if (v195 == 1)
            {
              v13 = v194;
              *v194 = __p;
              *(v13 + 8) = v192;
              v34 = v183;
              v35 = v183 >> 2;
              if (((v183 >> 2) + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (v183 >> 2 != -1)
              {
                if (!(((v183 >> 2) + 1) >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(4 * v35) = v5;
              v183 = 4 * v35 + 4;
              memcpy(0, 0, v34);
            }

            else
            {
              v31 = (**(v185 + 1) + 48);
              if (*v31)
              {
                v31 = (*v31 + 8 * *(v194 + 8) + 7);
              }

              v32 = *v31;
              v33 = *(v10 + 16);
              if (v33 == *(v32 + 16) && !memcmp(*(v10 + 24), *(v32 + 24), 4 * v33))
              {
                operator new();
              }
            }
          }
        }

        ++v5;
      }

      while (v5 != v4);
      v38 = 0;
      if (v182)
      {
        v184 = 0;
        v181 = 0;
        v39 = 0;
        while (1)
        {
          while (1)
          {
            v40 = *v38;
            v41 = **(v185 + 1);
            v44 = *(v41 + 48);
            v42 = (v41 + 48);
            v43 = v44;
            v45 = v44 + 7;
            v46 = v44 + 7 + 8 * *v38;
            if ((v44 & 1) == 0)
            {
              v46 = v42;
            }

            v47 = *v46;
            v48 = *(*v46 + 60);
            v49 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (v48 == 3)
            {
              v49 = *(v47 + 48);
            }

            *&v208 = *&v208 + *(v49 + 4) * 0.000000005;
            if (*&v208 >= 1.0)
            {
              goto LABEL_152;
            }

            v50 = *(v47 + 60);
            v51 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (v50 == 3)
            {
              v51 = *(v47 + 48);
            }

            v52 = *(v51 + 4);
            if (!v52)
            {
              break;
            }

            v53 = v51[3];
            v54 = &v53[v52];
            _X16 = v201;
            while (1)
            {
              v56 = *v53;
              v57 = *(v197 + 8 * ((2 * v56) ^ (v56 >> 31))) ^ *(*(&v198 + 1) + 8 * v40);
              if (v200 > 1)
              {
                v61 = 0;
                __asm { PRFM            #4, [X16] }

                v67 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57));
                v68 = vdup_n_s8(v67 & 0x7F);
                v69 = ((v201 >> 12) ^ (v67 >> 7)) & v200;
                v70 = *(v201 + v69);
                v71 = vceq_s8(v70, v68);
                if (!v71)
                {
                  goto LABEL_76;
                }

LABEL_74:
                while (1)
                {
                  v72 = (v69 + (__clz(__rbit64(v71)) >> 3)) & v200;
                  if (*(v202 + 16 * v72) == v57)
                  {
                    break;
                  }

                  v71 &= ((v71 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v71)
                  {
LABEL_76:
                    while (!*&vceq_s8(v70, 0x8080808080808080))
                    {
                      v61 += 8;
                      v69 = (v61 + v69) & v200;
                      v70 = *(v201 + v69);
                      v71 = vceq_s8(v70, v68);
                      if (v71)
                      {
                        goto LABEL_74;
                      }
                    }

                    goto LABEL_64;
                  }
                }

                v60 = (v202 + 16 * v72);
                if (v201 + v72)
                {
                  break;
                }

                goto LABEL_64;
              }

              v58 = v57 == v201 && *(&v200 + 1) > 1uLL;
              v59 = &absl::lts_20240722::container_internal::kSooControl;
              if (!v58)
              {
                v59 = 0;
              }

              v60 = &v201;
              if (v59)
              {
                break;
              }

LABEL_64:
              if (++v53 == v54)
              {
                goto LABEL_97;
              }
            }

            v73 = (v45 + 8 * *(v60 + 2));
            if ((v43 & 1) == 0)
            {
              v73 = v42;
            }

            v74 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (v50 == 3)
            {
              v74 = *(v47 + 48);
            }

            ++v184;
            v75 = *v73;
            v76 = *(v74 + 4);
            if (*(v75 + 16) + 1 != v76)
            {
              goto LABEL_64;
            }

            if (v76)
            {
              v77 = 0;
              v78 = 0;
              v79 = v74[3];
              v80 = 1;
              do
              {
                v81 = *(v79 + v77);
                if (v81 != v56)
                {
                  if ((*(*(v75 + 24) + 4 * v78) ^ v81) != 0xFFFFFFFF)
                  {
                    goto LABEL_64;
                  }

                  ++v78;
                }

                v77 = v80++;
                LODWORD(v76) = v76 - 1;
              }

              while (v76);
            }

            v82 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (v50 == 3)
            {
              v82 = *(v47 + 48);
            }

            v83 = *(v82 + 4);
            if (*(v75 + 60) == 4)
            {
              v84 = *(v75 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v75);
              *(v75 + 60) = 4;
              v99 = *(v75 + 8);
              if (v99)
              {
                v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
              }

              v84 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v99);
              *(v75 + 48) = v84;
            }

            v101 = *(v84 + 4);
            v100 = *(v84 + 5);
            if (v101 == v100)
            {
              google::protobuf::RepeatedField<int>::Grow(v84 + 2, v100, (v100 + 1));
              v101 = *(v84 + 4);
            }

            v102 = v84[3];
            *(v84 + 4) = v101 + 1;
            *(v102 + 4 * v101) = v56;
            operations_research::sat::ConstraintProto::Clear(v47);
            operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v185 + 1), v40);
            ++v181;
            v39 += v83 - 1;
LABEL_54:
            if (++v38 == v182)
            {
              goto LABEL_152;
            }
          }

LABEL_97:
          v85 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          if (v50 == 3)
          {
            v85 = *(v47 + 48);
          }

          v86 = *v85[3];
          if (v86 > ~v86)
          {
            v87 = *v85[3];
          }

          else
          {
            v87 = ~v86;
          }

          v88 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          if (v50 == 3)
          {
            v88 = *(v47 + 48);
          }

          v89 = *(v88 + 4);
          if (v89)
          {
            v90 = *(8 * (__PAIR64__(v87, ~v86) >> 31));
            v91 = v88[3];
            v92 = 4 * v89;
            do
            {
              v94 = *v91++;
              v93 = v94;
              v95 = ~v94;
              if (v94 > ~v94)
              {
                v96 = v93;
              }

              else
              {
                v96 = ~v93;
              }

              v97 = *(8 * (__PAIR64__(v96, v95) >> 31));
              if (v97 > v90)
              {
                v90 = v97;
                v86 = v93;
              }

              v92 -= 4;
            }

            while (v92);
          }

          __p = (*(v197 + 8 * ((2 * v86) ^ (v86 >> 31))) ^ *(*(&v198 + 1) + 8 * v40));
          LODWORD(v192) = v40;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>(&v200, &__p, &v193);
          if ((v195 & 1) == 0)
          {
            goto LABEL_54;
          }

          v98 = v194;
          *v194 = __p;
          *(v98 + 8) = v192;
          v103 = v183;
          v104 = v183 >> 2;
          if (((v183 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v183 >> 2 != -1)
          {
            if (!(((v183 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v104) = v40;
          v183 = 4 * v104 + 4;
          memcpy(0, 0, v103);
          *(*(v185 + 1) + 40) = *(*(v185 + 1) + 32);
          v105 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          if (*(v47 + 60) == 3)
          {
            v105 = *(v47 + 48);
          }

          v106 = *(v105 + 4);
          if (v106)
          {
            v107 = v105[3];
            v108 = 4 * v106;
            do
            {
              if (*v107 != v86)
              {
                v109 = *(v185 + 1);
                LODWORD(__p) = ~*v107;
                std::vector<int>::push_back[abi:ne200100](v109 + 32, &__p);
              }

              ++v107;
              v108 -= 4;
            }

            while (v108);
          }

          operations_research::sat::ConstraintProto::Clear(v47);
          *(v47 + 16) = 0;
          v110 = *(v185 + 1);
          v112 = *(v110 + 32);
          v111 = *(v110 + 40);
          v113 = v111 - v112;
          v114 = (v111 - v112) >> 2;
          if (*(v47 + 20) < v114)
          {
            google::protobuf::RepeatedField<int>::Grow(v47 + 16, 0, (v111 - v112) >> 2);
            v115 = *(v47 + 16);
            v116 = *(v47 + 24);
            *(v47 + 16) = v114;
            if (v112 == v111)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v115 = 0;
            v116 = *(v47 + 24);
            *(v47 + 16) = v114;
            if (v112 == v111)
            {
              goto LABEL_139;
            }
          }

          v117 = (v116 + 4 * v115);
          if ((v113 - 4) < 0x1C)
          {
            goto LABEL_221;
          }

          v118 = 4 * v115;
          if ((4 * v115 + v116 - v112) < 0x20)
          {
            goto LABEL_221;
          }

          v119 = ((v113 - 4) >> 2) + 1;
          v120 = 4 * (v119 & 0x7FFFFFFFFFFFFFF8);
          v117 = (v117 + v120);
          v121 = &v112[v120];
          v122 = (v112 + 16);
          v123 = (v116 + v118 + 16);
          v124 = v119 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v125 = *v122;
            *(v123 - 1) = *(v122 - 1);
            *v123 = v125;
            v122 += 2;
            v123 += 2;
            v124 -= 8;
          }

          while (v124);
          v112 = v121;
          if (v119 != (v119 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_221:
            do
            {
              v126 = *v112;
              v112 += 4;
              *v117++ = v126;
            }

            while (v112 != v111);
          }

LABEL_139:
          if (*(v47 + 60) != 4)
          {
            operations_research::sat::ConstraintProto::clear_constraint(v47);
            *(v47 + 60) = 4;
            v131 = *(v47 + 8);
            if (v131)
            {
              v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
            }

            v127 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v131);
            *(v47 + 48) = v127;
            v129 = *(v127 + 4);
            v128 = *(v127 + 5);
            v130 = (v127 + 2);
            if (v129 != v128)
            {
              goto LABEL_145;
            }

LABEL_149:
            google::protobuf::RepeatedField<int>::Grow(v130, v128, (v128 + 1));
            v129 = *v130;
            goto LABEL_145;
          }

          v127 = *(v47 + 48);
          v129 = *(v127 + 4);
          v128 = *(v127 + 5);
          v130 = (v127 + 2);
          if (v129 == v128)
          {
            goto LABEL_149;
          }

LABEL_145:
          v132 = v127[3];
          *(v127 + 4) = v129 + 1;
          *(v132 + 4 * v129) = v86;
          if (++v38 == v182)
          {
            goto LABEL_152;
          }
        }
      }

      v39 = 0;
      v181 = 0;
      v184 = 0;
LABEL_152:
      v180 = v39;
      if (v183)
      {
        for (i = 0; i != v183; ++i)
        {
          v135 = *i;
          v136 = *(v185 + 1);
          v137 = (v136->__begin_ + 12);
          if (*v137)
          {
            v137 = *v137 + 8 * v135 + 7;
          }

          v138 = *v137;
          v139 = *(*v137 + 60);
          v140 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          if (v139 == 4)
          {
            v140 = *(v138 + 48);
          }

          if (*(v140 + 4) >= 2)
          {
            operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v136, v135);
          }

          else
          {
            end = v136[1].__end_;
            p_end = &v136[1].__end_;
            *(p_end + 8) = end;
            v143 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (*(v138 + 60) == 4)
            {
              v143 = *(v138 + 48);
            }

            v193 = *v143[3];
            std::vector<int>::push_back[abi:ne200100](p_end, &v193);
            v144 = *(v138 + 16);
            if (v144)
            {
              v145 = *(v138 + 24);
              v146 = 4 * v144;
              do
              {
                v148 = *(v185 + 1);
                v149 = ~*v145;
                v151 = v148[5];
                v150 = v148[6];
                if (v151 < v150)
                {
                  *v151 = v149;
                  v147 = v151 + 1;
                }

                else
                {
                  v152 = v148[4];
                  v153 = v151 - v152;
                  v154 = (v151 - v152) >> 2;
                  v155 = v154 + 1;
                  if ((v154 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v156 = v150 - v152;
                  if (v156 >> 1 > v155)
                  {
                    v155 = v156 >> 1;
                  }

                  if (v156 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v157 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v157 = v155;
                  }

                  if (v157)
                  {
                    if (!(v157 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v158 = (v151 - v152) >> 2;
                  v159 = (4 * v154);
                  v160 = (4 * v154 - 4 * v158);
                  *v159 = v149;
                  v147 = v159 + 1;
                  memcpy(v160, v152, v153);
                  v148[4] = v160;
                  v148[5] = v147;
                  v148[6] = 0;
                  if (v152)
                  {
                    operator delete(v152);
                  }
                }

                v148[5] = v147;
                ++v145;
                v146 -= 4;
              }

              while (v146);
            }

            operations_research::sat::ConstraintProto::Clear(v138);
            if (*(v138 + 60) == 3)
            {
              v161 = *(v138 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v138);
              *(v138 + 60) = 3;
              v162 = *(v138 + 8);
              if (v162)
              {
                v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
              }

              v161 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v162);
              *(v138 + 48) = v161;
            }

            *(v161 + 4) = 0;
            v163 = *(v185 + 1);
            v165 = *(v163 + 32);
            v164 = *(v163 + 40);
            v166 = v164 - v165;
            v167 = (v164 - v165) >> 2;
            if (*(v161 + 5) < v167)
            {
              google::protobuf::RepeatedField<int>::Grow(v161 + 2, 0, (v164 - v165) >> 2);
              v168 = *(v161 + 4);
              v169 = v161[3];
              *(v161 + 4) = v167;
              if (v165 != v164)
              {
LABEL_186:
                v170 = (v169 + 4 * v168);
                if ((v166 - 4) < 0x1C)
                {
                  goto LABEL_222;
                }

                v171 = 4 * v168;
                if ((4 * v168 + v169 - v165) < 0x20)
                {
                  goto LABEL_222;
                }

                v172 = ((v166 - 4) >> 2) + 1;
                v173 = 4 * (v172 & 0x7FFFFFFFFFFFFFF8);
                v170 = (v170 + v173);
                v174 = &v165[v173];
                v175 = (v165 + 16);
                v176 = (v169 + v171 + 16);
                v177 = v172 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v178 = *v175;
                  *(v176 - 1) = *(v175 - 1);
                  *v176 = v178;
                  v175 += 2;
                  v176 += 2;
                  v177 -= 8;
                }

                while (v177);
                v165 = v174;
                if (v172 != (v172 & 0x7FFFFFFFFFFFFFF8))
                {
LABEL_222:
                  do
                  {
                    v179 = *v165;
                    v165 += 4;
                    *v170++ = v179;
                  }

                  while (v165 != v164);
                }
              }
            }

            else
            {
              v168 = 0;
              v169 = v161[3];
              *(v161 + 4) = v167;
              if (v165 != v164)
              {
                goto LABEL_186;
              }
            }
          }
        }
      }

      v133 = v184;
    }

    v190 = 14;
    strcpy(&v189, "num_collisions");
    operations_research::sat::PresolveTimer::AddCounter(v203, &v189, v133);
    if (v190 < 0)
    {
      operator delete(v189);
    }

    v188 = 10;
    strcpy(&v187, "num_merges");
    operations_research::sat::PresolveTimer::AddCounter(v203, &v187, v181);
    if (v188 < 0)
    {
      operator delete(v187);
    }

    v186[23] = 18;
    strcpy(v186, "num_saved_literals");
    operations_research::sat::PresolveTimer::AddCounter(v203, v186, v180);
    if ((v186[23] & 0x80000000) != 0)
    {
      operator delete(*v186);
    }

    if (*(&v198 + 1))
    {
      *&v199 = *(&v198 + 1);
      operator delete(*(&v198 + 1));
    }

    if (v197)
    {
      *(&v197 + 1) = v197;
      operator delete(v197);
    }

    if (v200 >= 2)
    {
      operator delete((v201 - (BYTE8(v200) & 1) - 8));
    }

    operations_research::sat::PresolveTimer::~PresolveTimer(v203);
  }
}

void sub_23CABE860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::ClauseWithOneMissingHasher::~ClauseWithOneMissingHasher(&a50);
  if (a13)
  {
    operator delete(a13);
    v63 = a20;
    if (!a20)
    {
LABEL_5:
      if (a59 < 2)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v63 = a20;
    if (!a20)
    {
      goto LABEL_5;
    }
  }

  operator delete(v63);
  if (a59 < 2)
  {
LABEL_6:
    v64 = a21;
    if (!a21)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  operator delete((a61 - (a60 & 1) - 8));
  v64 = a21;
  if (!a21)
  {
LABEL_8:
    operations_research::sat::PresolveTimer::~PresolveTimer((v61 - 248));
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v64);
  goto LABEL_8;
}

void operations_research::sat::ClauseWithOneMissingHasher::~ClauseWithOneMissingHasher(operations_research::sat::ClauseWithOneMissingHasher *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

uint64_t operations_research::sat::PresolveCpModel(uint64_t a1, uint64_t a2)
{
  operations_research::sat::CpModelPresolver::CpModelPresolver(v4, a1, a2);
  v2 = operations_research::sat::CpModelPresolver::Presolve(v4);
  operations_research::sat::CpModelPresolver::~CpModelPresolver(v4);
  return v2;
}

uint64_t operations_research::sat::CpModelPresolver::Presolve(void ***this)
{
  v187 = *MEMORY[0x277D85DE8];
  v2 = this[1];
  v3 = *(v2 + 49);
  if ((v3[285] & 1) != 0 || (v3[284] & 1) != 0 || (v3[286] & 1) != 0 || *(*v2 + 96))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3[570] ^ 1;
  }

  *(v2 + 16) = v4 & 1;
  v5 = *(*v2 + 72);
  if (v5)
  {
    v6 = (v5 + 7);
  }

  else
  {
    v6 = (*v2 + 72);
  }

  v7 = *(*v2 + 80);
  if (v7)
  {
    v8 = 8 * v7;
    do
    {
      v9 = *v6++;
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((this[1][1] + 72), google::protobuf::Arena::DefaultConstruct<operations_research::sat::DecisionStrategyProto>);
      operations_research::sat::DecisionStrategyProto::CopyFrom(v10, v9);
      v8 -= 8;
    }

    while (v8);
    v2 = this[1];
  }

  operations_research::sat::PresolveContext::InitializeNewDomains(v2);
  operations_research::sat::PresolveContext::LoadSolutionHint(this[1]);
  v12 = this[1];
  if ((*(*v12 + 16) & 8) != 0)
  {
    if (!operations_research::sat::PresolveContext::ScaleFloatingPointObjective(v12))
    {
      if (*this[2] == 1)
      {
        operator new();
      }

      result = 1;
      goto LABEL_57;
    }

    v13 = this[1];
    v14 = v13[1];
    v15 = *(*v13 + 16);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    *(v14 + 4) |= 1u;
    v17 = *(v14 + 16);
    if (!v17)
    {
      v18 = *(v14 + 1);
      v19 = v16;
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v18);
      *(v14 + 16) = v17;
      v16 = v19;
    }

    operations_research::sat::CpObjectiveProto::CopyFrom(v17, v16);
    v12 = this[1];
  }

  operations_research::sat::PresolveContext::ReadObjectiveFromProto(v12, v11);
  if ((operations_research::sat::PresolveContext::CanonicalizeObjective(this[1], 1) & 1) == 0)
  {
    if (*this[2] == 1)
    {
      operations_research::sat::PresolveContext::LogInfo(this[1]);
    }

    goto LABEL_33;
  }

  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
  v21 = this[1];
  v22 = *(*v21 + 96);
  if (v22)
  {
    v23 = *(*v21 + 104);
    v24 = 4 * v22;
    do
    {
      v25 = *v23;
      if (~*v23 > *v23)
      {
        v25 = ~v25;
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(*(v21 + 84) + 32 * v25, &operations_research::sat::kAssumptionsConstraint, __p);
      if (__p[16] == 1)
      {
        **&__p[8] = -3;
      }

      ++v23;
      v24 -= 4;
    }

    while (v24);
    v21 = this[1];
  }

  if ((*(*(v21 + 49) + 570) & 1) == 0)
  {
    operations_research::sat::ExpandCpModel(v21, v20);
    v27 = this[1];
    if (LOBYTE(v27[17].__end_) == 1)
    {
      if (*this[2] == 1)
      {
        goto LABEL_174;
      }

      goto LABEL_33;
    }

    if (v27->__begin_[4])
    {
      operations_research::sat::PresolveContext::WriteObjectiveToProto(v27);
    }

    operations_research::sat::CpModelPresolver::EncodeAllAffineRelations(this);
    if (*this[2] == 1)
    {
      operations_research::sat::PresolveContext::LogInfo(this[1]);
    }

    result = 0;
    goto LABEL_57;
  }

  if (*(v21 + 416))
  {
    if (*this[2] == 1)
    {
      operations_research::sat::PresolveContext::LogInfo(v21);
    }

    goto LABEL_33;
  }

  if (*(*v21 + 32) >= 1)
  {
    v28 = 0;
    do
    {
      if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(v21, v28))
      {
        if ((operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(this, v28) & 1) == 0)
        {
          if (*this[2] != 1)
          {
            goto LABEL_33;
          }

          goto LABEL_222;
        }

        operations_research::sat::CpModelPresolver::TryToSimplifyDomain(this, v28);
        v27 = this[1];
        if (LOBYTE(v27[17].__end_) == 1)
        {
          if (*this[2] == 1)
          {
            goto LABEL_174;
          }

          goto LABEL_33;
        }

        operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v27);
      }

      v28 = (v28 + 1);
      v21 = this[1];
    }

    while (v28 < *(*v21 + 32));
  }

  if (!operations_research::sat::PresolveContext::CanonicalizeObjective(v21, 1))
  {
    if (*this[2] != 1)
    {
      goto LABEL_33;
    }

LABEL_222:
    operations_research::sat::PresolveContext::LogInfo(this[1]);
    goto LABEL_33;
  }

  v27 = this[1];
  if (v27[16].__end_[164] < 1)
  {
LABEL_118:
    if (LOBYTE(v27[17].__end_) == 1)
    {
      if (*this[2] == 1)
      {
        goto LABEL_174;
      }

      goto LABEL_33;
    }

    operations_research::sat::CpModelPresolver::MergeNoOverlapConstraints(this);
    v27 = this[1];
    if (LOBYTE(v27[17].__end_) == 1)
    {
      if (*this[2] == 1)
      {
        goto LABEL_174;
      }

      goto LABEL_33;
    }

    if (v27->__begin_[4])
    {
      operations_research::sat::CpModelPresolver::ExpandObjective(this);
      v27 = this[1];
      if (LOBYTE(v27[17].__end_) == 1)
      {
        if (*this[2] == 1)
        {
          goto LABEL_174;
        }

        goto LABEL_33;
      }

      operations_research::sat::CpModelPresolver::ShiftObjectiveWithExactlyOnes(this);
      v27 = this[1];
      if (LOBYTE(v27[17].__end_) == 1)
      {
        if (*this[2] == 1)
        {
          goto LABEL_174;
        }

        goto LABEL_33;
      }

      if ((operations_research::sat::PresolveContext::CanonicalizeObjective(v27, 1) & 1) == 0)
      {
        if (*this[2] != 1)
        {
          goto LABEL_33;
        }

        goto LABEL_222;
      }

      operations_research::sat::PresolveContext::WriteObjectiveToProto(this[1]);
      v27 = this[1];
    }

    operations_research::sat::FinalExpansionForLinearConstraint(v27, v59, v62, v60, v61);
    operations_research::sat::CpModelPresolver::EncodeAllAffineRelations(this);
    v27 = this[1];
    if (LOBYTE(v27[17].__end_) == 1)
    {
      if (*this[2] == 1)
      {
        goto LABEL_174;
      }

      goto LABEL_33;
    }

    v162 = xmmword_23CE306D0;
    begin = v27->__begin_;
    v64 = *(v27->__begin_ + 9);
    if (v64)
    {
      v65 = v64 + 7;
    }

    else
    {
      v65 = (v27->__begin_ + 18);
    }

    v66 = begin[20];
    if (v66)
    {
      v67 = v65 + 8 * v66;
      do
      {
        v69 = *v65;
        if (*(*v65 + 16))
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 12639);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
        }

        if (*(v69 + 48))
        {
          operations_research::sat::ConstraintProto::ConstraintProto(__p, 0);
          v70 = (v69 + 40);
          v71 = *(v69 + 40);
          if (v71)
          {
            v72 = (v71 + 7);
          }

          else
          {
            v72 = (v69 + 40);
          }

          v73 = *(v69 + 48);
          if (v73)
          {
            v74 = 8 * v73;
            do
            {
              operations_research::sat::PresolveContext::CanonicalizeLinearExpression(this[1], v170, *&__p[16], *v72++);
              v74 -= 8;
            }

            while (v74);
            v75 = *(v69 + 40);
            v76 = *(v69 + 48);
            if (v75)
            {
              v77 = (v75 + 7);
            }

            else
            {
              v77 = (v69 + 40);
            }

            v68 = 0;
            if (v76)
            {
              v78 = 8 * v76;
              do
              {
                v79 = *v77;
                if (!operations_research::sat::PresolveContext::IsFixed(this[1], *v77))
                {
                  LODWORD(v164) = **(v79 + 3);
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v162, &v164, &v167);
                  if (v168[0])
                  {
                    *v167.n128_u64[1] = v164;
                    if (*v70)
                    {
                      v80 = (*v70 + 8 * v68 + 7);
                    }

                    else
                    {
                      v80 = v70;
                    }

                    operations_research::sat::LinearExpressionProto::CopyFrom(*v80, v79);
                    v68 = (v68 + 1);
                  }
                }

                ++v77;
                v78 -= 8;
              }

              while (v78);
            }
          }

          else
          {
            v68 = 0;
          }

          google::protobuf::util::Truncate<operations_research::sat::LinearExpressionProto>(v70, v68);
          operations_research::sat::ConstraintProto::~ConstraintProto(__p);
        }

        v65 += 8;
      }

      while (v65 != v67);
      v27 = this[1];
      begin = v27->__begin_;
    }

    if (begin[8] >= 1)
    {
      v81 = 0;
      v82 = 8;
      do
      {
        operations_research::sat::PresolveContext::DomainOf(v27, v81, __p);
        v83 = *this[1];
        v85 = *(v83 + 24);
        v84 = (v83 + 24);
        v86 = v85 + v82 - 1;
        if (v85)
        {
          v84 = v86;
        }

        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(__p, *v84);
        if (__p[0])
        {
          operator delete(*&__p[8]);
        }

        ++v81;
        v27 = this[1];
        begin = v27->__begin_;
        v82 += 8;
      }

      while (v81 < v27->__begin_[8]);
    }

    google::protobuf::RepeatedPtrField<operations_research::sat::IntegerVariableProto>::CopyFrom(v27->__end_ + 6, begin + 6);
    (*this)[1] = **this;
    v87 = *(*this[1] + 8);
    *__p = -1;
    std::vector<int>::vector[abi:ne200100](v161, v87);
    v159 = xmmword_23CE306D0;
    LODWORD(v164) = 0;
    v89 = this[1];
    if (*(*v89 + 32) >= 1)
    {
      v90 = 0;
      v91 = 0;
      while (1)
      {
        if (*(v161[0] + v91) == -1)
        {
          if (operations_research::sat::PresolveContext::VariableWasRemoved(v89, v91))
          {
            operations_research::sat::PresolveContext::GetAffineRelation(this[1], v164, __p);
            if (~*__p <= *__p)
            {
              v94 = *__p;
            }

            else
            {
              v94 = ~*__p;
            }

            v167.n128_u32[0] = v94;
            if (*(v161[0] + v94) == -1 && !operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(this[1], v94))
            {
              v95 = *this;
              *(v161[0] + v167.n128_i32[0]) = ((*this)[1] - **this) >> 2;
              std::vector<int>::push_back[abi:ne200100](v95, &v167);
            }

            goto LABEL_187;
          }

          if (operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(this[1], v164))
          {
            v96 = this[1];
            if (*(v96 + 16) != 1)
            {
              goto LABEL_200;
            }

            if (operations_research::sat::PresolveContext::IsFixed(v96, v164))
            {
              v96 = this[1];
LABEL_200:
              operations_research::sat::PresolveContext::DomainOf(v96, v164, &v167);
              v97 = operations_research::Domain::SmallestValue(&v167);
              operations_research::Domain::Domain(__p, v97);
              v98 = this[1][1];
              v100 = v98[3];
              v99 = v98 + 3;
              v101 = v100 + 8 * v164 + 7;
              if (v100)
              {
                v99 = v101;
              }

              operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(__p, *v99);
              if (__p[0])
              {
                operator delete(*&__p[8]);
              }

              if (v167.n128_u8[0])
              {
                operator delete(v167.n128_u64[1]);
              }

              v90 = (v90 + 1);
              goto LABEL_187;
            }
          }

          if (operations_research::sat::PresolveContext::IsFixed(this[1], v164))
          {
            v102 = operations_research::sat::PresolveContext::FixedValue(this[1], v164);
            v103 = ((*this)[1] - **this) >> 2;
            v167.n128_u64[0] = v102;
            v167.n128_u32[2] = v103;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::find_or_prepare_insert<long long>(&v159, &v167, __p);
            if (__p[16] != 1)
            {
              *(v161[0] + v164) = *(*&__p[8] + 8);
              goto LABEL_187;
            }

            v92 = *&__p[8];
            **&__p[8] = v167.n128_u64[0];
            *(v92 + 8) = v167.n128_u32[2];
          }

          v93 = *this;
          *(v161[0] + v164) = ((*this)[1] - **this) >> 2;
          std::vector<int>::push_back[abi:ne200100](v93, &v164);
        }

LABEL_187:
        v91 = v164 + 1;
        LODWORD(v164) = v91;
        v89 = this[1];
        if (v91 >= *(*v89 + 32))
        {
          goto LABEL_215;
        }
      }
    }

    v90 = 0;
LABEL_215:
    v104 = v89;
    *__p = "presolve: ";
    *&__p[8] = 10;
    v105 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v90, v168, v88);
    v167.n128_u64[0] = v168;
    v167.n128_u64[1] = v105 - v168;
    v164 = " unused variables removed.";
    v165 = 26;
    absl::lts_20240722::StrCat(__p, &v167, &v164, &v158);
    operations_research::sat::PresolveContext::UpdateRuleStats(v104, &v158, 1, v106, v107);
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    v110 = this[1];
    if (*(*(v110 + 49) + 255) != 1)
    {
LABEL_241:
      operations_research::sat::ApplyVariableMapping(v161, v110, v108, v109);
      operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(this);
      v140 = this[1];
      v141 = (*(v140 + 45) >> 1);
      if (v141 >= 1)
      {
        *__p = "deductions: ";
        *&__p[8] = 12;
        v142 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v141, v168, v138);
        v167.n128_u64[0] = v168;
        v167.n128_u64[1] = v142 - v168;
        v164 = " stored";
        v165 = 7;
        absl::lts_20240722::StrCat(__p, &v167, &v164, &v158);
        operations_research::sat::PresolveContext::UpdateRuleStats(v140, &v158, 1, v143, v144);
        if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v158.__r_.__value_.__l.__data_);
        }

        v140 = this[1];
      }

      if (*this[2] == 1)
      {
        operations_research::sat::PresolveContext::LogInfo(v140);
        v140 = this[1];
      }

      operations_research::sat::ValidateCpModel(*v140, 1, v138, &v164, v139);
      v147 = v166;
      if ((v166 & 0x80u) == 0)
      {
        v148 = v166;
      }

      else
      {
        v148 = v165;
      }

      if (v148)
      {
        v149 = this[2];
        if (*v149 == 1)
        {
          *__p = "Error while validating postsolved model: ";
          *&__p[8] = 41;
          v150 = &v164;
          if ((v166 & 0x80u) != 0)
          {
            v150 = v164;
          }

          v167.n128_u64[0] = v150;
          v167.n128_u64[1] = v148;
          absl::lts_20240722::StrCat(__p, &v167, &v158);
          operations_research::SolverLogger::LogInfo(v149, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 12765, &v158);
          if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v158.__r_.__value_.__l.__data_);
          }

          result = 1;
          v147 = v166;
        }

        else
        {
          result = 1;
        }
      }

      else
      {
        result = 3;
      }

      if ((v147 & 0x80) != 0)
      {
        v151 = result;
        operator delete(v164);
        result = v151;
      }

      if (!v148)
      {
        operations_research::sat::ValidateCpModel(this[1][1], 0, v145, &v164, v146);
        v152 = v166;
        v153 = v166;
        if ((v166 & 0x80u) != 0)
        {
          v152 = v165;
        }

        if (v152)
        {
          v154 = this[2];
          if (*v154 == 1)
          {
            *__p = "Error while validating mapping_model model: ";
            *&__p[8] = 44;
            v155 = &v164;
            if ((v166 & 0x80u) != 0)
            {
              v155 = v164;
            }

            v167.n128_u64[0] = v155;
            v167.n128_u64[1] = v152;
            absl::lts_20240722::StrCat(__p, &v167, &v158);
            operations_research::SolverLogger::LogInfo(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 12773, &v158);
            if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v158.__r_.__value_.__l.__data_);
            }

            result = 1;
            v153 = v166;
          }

          else
          {
            result = 1;
          }
        }

        else
        {
          result = 0;
        }

        if ((v153 & 0x80) != 0)
        {
          v156 = result;
          operator delete(v164);
          result = v156;
        }
      }

      v157 = result;
      if (v159 >= 2)
      {
        operator delete((v160 - (BYTE8(v159) & 1) - 8));
        result = v157;
      }

      if (v161[0])
      {
        v161[1] = v161[0];
        operator delete(v161[0]);
        result = v157;
      }

      if (v162 >= 2)
      {
        operator delete((v163 - (BYTE8(v162) & 1) - 8));
        result = v157;
      }

      goto LABEL_57;
    }

    v111 = (*this)[1] - **this;
    std::vector<int>::vector[abi:ne200100](__p, (v111 >> 2));
    v112 = *__p;
    v113 = *&__p[8];
    if (*__p != *&__p[8])
    {
      v114 = *&__p[8] - *__p - 4;
      if (v114 < 0x1C)
      {
        LODWORD(v115) = 0;
        v116 = *__p;
        do
        {
LABEL_226:
          *v116++ = v115;
          LODWORD(v115) = v115 + 1;
        }

        while (v116 != v113);
        goto LABEL_227;
      }

      v117 = (v114 >> 2) + 1;
      v115 = v117 & 0x7FFFFFFFFFFFFFF8;
      v116 = (*__p + 4 * (v117 & 0x7FFFFFFFFFFFFFF8));
      v118 = xmmword_23CE38660;
      v119 = (*__p + 16);
      v120.i64[0] = 0x400000004;
      v120.i64[1] = 0x400000004;
      v121.i64[0] = 0x800000008;
      v121.i64[1] = 0x800000008;
      v122 = v117 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v119[-1] = v118;
        *v119 = vaddq_s32(v118, v120);
        v118 = vaddq_s32(v118, v121);
        v119 += 2;
        v122 -= 8;
      }

      while (v122);
      if (v117 != v115)
      {
        goto LABEL_226;
      }
    }

LABEL_227:
    std::shuffle[abi:ne200100]<std::__wrap_iter<int *>,operations_research::sat::ModelRandomGenerator &>(v112, v113, this[1][51]);
    v123 = *this[1];
    v124 = *(v123 + 32);
    if (v124 >= 1)
    {
      v125 = 0;
      v126 = v161[0];
      v127 = *__p;
      do
      {
        v128 = v126[v125];
        if (v128 != -1)
        {
          v126[v125] = *(v127 + 4 * v128);
          v124 = *(v123 + 32);
        }

        ++v125;
      }

      while (v125 < v124);
    }

    std::vector<int>::vector[abi:ne200100](&v167, (v111 >> 2));
    v129 = *this;
    v130 = **this;
    if ((v111 >> 2) < 1)
    {
      if (!v130)
      {
LABEL_238:
        v109 = v167;
        *v129 = v167;
        v129[2] = v168[0];
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        v110 = this[1];
        goto LABEL_241;
      }
    }

    else
    {
      v131 = *__p;
      v132 = v167.n128_u64[0];
      v133 = (v111 >> 2) & 0x7FFFFFFF;
      v134 = **this;
      do
      {
        v136 = *v134++;
        v135 = v136;
        v137 = *v131++;
        *(v132 + 4 * v137) = v135;
        --v133;
      }

      while (v133);
    }

    v129[1] = v130;
    operator delete(v130);
    *v129 = 0;
    v129[1] = 0;
    v129[2] = 0;
    goto LABEL_238;
  }

  v30 = 0;
  while (1)
  {
    v33 = operations_research::TimeLimit::LimitReached(this[3]);
    v27 = this[1];
    if (v33)
    {
      goto LABEL_118;
    }

    __p[23] = 19;
    strcpy(__p, "presolve: iteration");
    operations_research::sat::PresolveContext::UpdateRuleStats(v27, __p, 1, v31, v32);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v34 = this[1][3];
    operations_research::sat::CpModelPresolver::PresolveToFixPoint(this);
    v27 = this[1];
    if ((v27[49].__begin_ & 1) == 0)
    {
      break;
    }

LABEL_87:
    if (v27[16].__end_[189] >= 1 && (v27[17].__end_ & 1) == 0)
    {
      v51 = operations_research::TimeLimit::LimitReached(this[3]);
      v27 = this[1];
      if ((v51 & 1) == 0 && (v27->__end_cap_.__value_ & 1) == 0)
      {
        operations_research::sat::DetectAndExploitSymmetriesInPresolve(v27, v50);
        v27 = this[1];
      }
    }

    if (*(v27[16].__end_ + 571) == 1)
    {
      if (operations_research::TimeLimit::LimitReached(this[3]))
      {
        v27 = this[1];
      }

      else
      {
        v52 = operations_research::sat::CpModelPresolver::PresolvePureSatPart(this);
        v27 = this[1];
        if ((v52 & 1) == 0)
        {
          operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v27, "Proven Infeasible during SAT presolve", 37);
          if (*this[2] != 1)
          {
            goto LABEL_33;
          }

          goto LABEL_222;
        }
      }
    }

    if (!v30 && (v27[17].__end_ & 1) == 0)
    {
      v53 = *(v27->__begin_ + 14);
      if (v53 >= 1)
      {
        v54 = 8;
        do
        {
          v55 = *this[1];
          v57 = *(v55 + 48);
          v56 = (v55 + 48);
          v58 = v57 + v54 - 1;
          if (v57)
          {
            v56 = v58;
          }

          if (*(*v56 + 15) == 12)
          {
            operations_research::sat::CpModelPresolver::ExtractAtMostOneFromLinear(this, *v56, v35);
          }

          v54 += 8;
          --v53;
        }

        while (v53);
        v27 = this[1];
      }

      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v27);
      v27 = this[1];
    }

    if (v27[16].__end_[147] < 1)
    {
      operations_research::sat::CpModelPresolver::TransformIntoMaxCliques(this);
    }

    else if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0)
    {
      operations_research::sat::CpModelPresolver::Probe(this);
    }

    operations_research::sat::CpModelPresolver::ProcessAtMostOneAndLinear(this);
    operations_research::sat::CpModelPresolver::DetectDuplicateConstraints(this);
    operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(this);
    operations_research::sat::CpModelPresolver::DetectDifferentVariables(this);
    operations_research::sat::CpModelPresolver::ProcessSetPPC(this);
    v27 = this[1];
    if (*(v27[16].__end_ + 815) == 1)
    {
      operations_research::sat::CpModelPresolver::FindAlmostIdenticalLinearConstraints(this);
      *__p = 0;
      *&__p[8] = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0;
      v174 = xmmword_23CE306D0;
      v175 = xmmword_23CE306D0;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v185 = xmmword_23CE306D0;
      v186 = xmmword_23CE306D0;
      operations_research::sat::ActivityBoundHelper::AddAllAtMostOnes(__p, *this[1]);
      operations_research::sat::CpModelPresolver::FindBigAtMostOneAndLinearOverlap(this, __p);
      operations_research::sat::CpModelPresolver::FindBigVerticalLinearOverlap(this, __p);
      operations_research::sat::CpModelPresolver::FindBigHorizontalLinearOverlap(this, __p);
      operations_research::sat::ActivityBoundHelper::~ActivityBoundHelper(__p);
      v27 = this[1];
    }

    if (LOBYTE(v27[17].__end_) == 1)
    {
      if (*this[2] != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_174;
    }

    if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0)
    {
      operations_research::sat::CpModelPresolver::MergeClauses(this);
    }

    operations_research::sat::CpModelPresolver::ConvertToBoolAnd(this);
    operations_research::sat::CpModelPresolver::PresolveToFixPoint(this);
    v27 = this[1];
    if (v27[1].__begin_ != v34 && ++v30 < v27[16].__end_[164])
    {
      continue;
    }

    goto LABEL_118;
  }

  operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(this);
  operations_research::sat::ExpandCpModel(this[1], v36);
  v27 = this[1];
  if (LOBYTE(v27[17].__end_) == 1)
  {
    if (*this[2] != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_174;
  }

  v37 = v27->__begin_;
  v38 = *(v27->__begin_ + 14);
  if (v38 < 1)
  {
LABEL_80:
    v44 = v37[8];
    if (v44 >= 1)
    {
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = this[1];
        if (*(v47[84] + v46) <= 7uLL)
        {
          *__p = v45;
          v48 = v47[25];
          v49 = v48[v45 >> 6];
          if ((v49 & (1 << v45)) == 0)
          {
            v48[v45 >> 6] = v49 | (1 << v45);
            std::vector<int>::push_back[abi:ne200100]((v47 + 28), __p);
          }
        }

        ++v45;
        v46 += 32;
      }

      while (v44 != v45);
      v27 = this[1];
    }

    goto LABEL_87;
  }

  v39 = 0;
  v40 = 8;
  while (1)
  {
    v41 = (v27->__begin_ + 12);
    if (*v41)
    {
      v41 = *v41 + v40 - 1;
    }

    v42 = *(*v41 + 60);
    if (v42 == 29 || v42 == 26)
    {
      if (operations_research::sat::CpModelPresolver::PresolveOneConstraint(this, v39))
      {
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(this[1], v39);
      }

      v27 = this[1];
      if (LOBYTE(v27[17].__end_) == 1)
      {
        break;
      }
    }

    ++v39;
    v40 += 8;
    if (v38 == v39)
    {
      v37 = v27->__begin_;
      goto LABEL_80;
    }
  }

  if (*this[2] != 1)
  {
    goto LABEL_33;
  }

LABEL_174:
  operations_research::sat::PresolveContext::LogInfo(v27);
LABEL_33:
  result = 3;
LABEL_57:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CABFD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *a46, int a47, __int16 a48, char a49, char a50)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a18 >= 2)
  {
    operator delete((a20 - (a19 & 1) - 8));
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26 >= 2)
  {
    operator delete((a28 - (a27 & 1) - 8));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::CpModelPresolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  v4 = *(a2 + 400);
  *(a1 + 16) = *(a2 + 384);
  *(a1 + 24) = v4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = xmmword_23CE306D0;
  *(a1 + 136) = xmmword_23CE306D0;
  operations_research::sat::ConstraintProto::ConstraintProto(a1 + 168, 0);
  *(a1 + 232) = 0u;
  *(a1 + 400) = 50;
  *(a1 + 392) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  operations_research::sat::MaxBoundedSubsetSum::Reset((a1 + 400), 0);
  *(a1 + 504) = 50;
  *(a1 + 600) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  operations_research::sat::MaxBoundedSubsetSum::Reset((a1 + 504), 0);
  *(a1 + 608) = 50;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0;
  operations_research::sat::MaxBoundedSubsetSum::Reset((a1 + 608), 0);
  *(a1 + 712) = 50;
  *(a1 + 808) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  operations_research::sat::MaxBoundedSubsetSum::Reset((a1 + 712), 0);
  return a1;
}

void sub_23CAC0040(_Unwind_Exception *a1)
{
  v6 = *(v1 + 792);
  if (v6)
  {
    *(v1 + 800) = v6;
    operator delete(v6);
  }

  operations_research::sat::CpModelPresolver::CpModelPresolver((v1 + 768), (v1 + 744), (v1 + 608), v1);
  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum((v1 + 504));
  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(v2);
  v7 = *(v1 + 376);
  if (v7)
  {
    *(v1 + 384) = v7;
    operator delete(v7);
    v8 = *(v1 + 352);
    if (!v8)
    {
LABEL_5:
      v9 = *(v1 + 328);
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(v1 + 352);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 360) = v8;
  operator delete(v8);
  v9 = *(v1 + 328);
  if (!v9)
  {
LABEL_6:
    v10 = *(v1 + 304);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 336) = v9;
  operator delete(v9);
  v10 = *(v1 + 304);
  if (!v10)
  {
LABEL_7:
    v11 = *(v1 + 280);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 312) = v10;
  operator delete(v10);
  v11 = *(v1 + 280);
  if (!v11)
  {
LABEL_8:
    v12 = *(v1 + 256);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 288) = v11;
  operator delete(v11);
  v12 = *(v1 + 256);
  if (!v12)
  {
LABEL_9:
    v13 = *v4;
    if (!*v4)
    {
LABEL_11:
      operations_research::sat::ConstraintProto::~ConstraintProto((v1 + 168));
      if (*(v1 + 136) >= 2uLL)
      {
        operator delete((*(v1 + 152) - (*(v1 + 144) & 1) - 8));
        if (*(v1 + 104) < 2uLL)
        {
LABEL_21:
          v14 = *(v1 + 80);
          if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      else if (*(v1 + 104) < 2uLL)
      {
        goto LABEL_21;
      }

      operator delete((*(v1 + 120) - (*(v1 + 112) & 1) - 8));
      v14 = *(v1 + 80);
      if (!v14)
      {
LABEL_22:
        v15 = *(v1 + 56);
        if (!v15)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }

LABEL_27:
      *(v1 + 88) = v14;
      operator delete(v14);
      v15 = *(v1 + 56);
      if (!v15)
      {
LABEL_23:
        v16 = *v3;
        if (!*v3)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(v1 + 64) = v15;
      operator delete(v15);
      v16 = *v3;
      if (!*v3)
      {
LABEL_24:
        _Unwind_Resume(a1);
      }

LABEL_29:
      *(v1 + 40) = v16;
      operator delete(v16);
      _Unwind_Resume(a1);
    }

LABEL_10:
    *(v1 + 240) = v13;
    operator delete(v13);
    goto LABEL_11;
  }

LABEL_17:
  *(v1 + 264) = v12;
  operator delete(v12);
  v13 = *v4;
  if (!*v4)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

void operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(operations_research::sat::MaxBoundedSubsetSum *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

int *google::protobuf::RepeatedPtrField<operations_research::sat::IntegerVariableProto>::CopyFrom(int *result, int *a2)
{
  if (a2 != result)
  {
    if (result[2] >= 1)
    {
      v3 = result;
      v4 = a2;
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(result);
      result = v3;
      a2 = v4;
    }

    if (a2[2])
    {

      return google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(result, a2, google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  return result;
}

void operations_research::sat::ApplyVariableMapping(uint64_t *a1, operations_research::sat::PresolveContext *this, google::protobuf::Message *a3, __n128 a4)
{
  v4 = this;
  v112 = *MEMORY[0x277D85DE8];
  v6 = *(*this + 48);
  if (v6)
  {
    v7 = (v6 + 7);
  }

  else
  {
    v7 = (*this + 48);
  }

  v101 = *this;
  v8 = *(*this + 56);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      v10 = *v7;
      *&v109 = &unk_284F3E380;
      *(&v109 + 1) = a1;
      v111 = &v109;
      operations_research::sat::ApplyToAllVariableIndices(&v109, v10, a4);
      if (v111 == &v109)
      {
        (*(*v111 + 32))(v111);
      }

      else if (v111)
      {
        (*(*v111 + 40))();
      }

      *&v109 = &unk_284F3E380;
      *(&v109 + 1) = a1;
      v111 = &v109;
      operations_research::sat::ApplyToAllLiteralIndices(&v109, v10);
      if (v111 == &v109)
      {
        (*(*v111 + 32))(v111);
      }

      else if (v111)
      {
        (*(*v111 + 40))();
      }

      ++v7;
      v9 -= 8;
    }

    while (v9);
  }

  if (*(v101 + 16))
  {
    v11 = *(v101 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v11 + 24);
      v14 = *a1;
      v15 = 4 * v12;
      do
      {
        v16 = *v13;
        if (~*v13 <= *v13)
        {
          v17 = *v13;
        }

        else
        {
          v17 = ~v16;
        }

        v18 = *(v14 + 4 * v17);
        if (v18 < 0)
        {
          operations_research::sat::ApplyVariableMapping(v18);
        }

        *v13++ = v18 ^ (v16 >> 31);
        v15 -= 4;
      }

      while (v15);
    }
  }

  v19 = *(v101 + 24);
  if (v19)
  {
    v20 = *(v101 + 13);
    v21 = *a1;
    v22 = 4 * v19;
    do
    {
      v23 = *v20;
      if (~*v20 <= *v20)
      {
        v24 = *v20;
      }

      else
      {
        v24 = ~v23;
      }

      v25 = *(v21 + 4 * v24);
      if (v25 < 0)
      {
        operations_research::sat::ApplyVariableMapping(v25);
      }

      *v20++ = v25 ^ (v23 >> 31);
      v22 -= 4;
    }

    while (v22);
  }

  v27 = (v101 + 72);
  v26 = *(v101 + 9);
  v28 = v26 & 1;
  if (v26)
  {
    v29 = (v26 + 7);
  }

  else
  {
    v29 = (v101 + 72);
  }

  v30 = *(v101 + 20);
  if (!v30)
  {
    goto LABEL_69;
  }

  v31 = &v29[v30];
  do
  {
    v32 = *v29;
    v34 = (*v29 + 40);
    v33 = *v34;
    v35 = *v34 & 1;
    if (v35)
    {
      v36 = (v33 + 7);
    }

    else
    {
      v36 = (*v29 + 40);
    }

    v37 = *(v32 + 48);
    if (v37)
    {
      v38 = 0;
      v39 = 8 * v37;
      do
      {
        operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v109, 0, *v36);
        v40 = *(*a1 + 4 * *v111);
        if ((v40 & 0x80000000) == 0)
        {
          *v111 = v40;
          if (*v34)
          {
            v41 = (*v34 + 8 * v38 + 7);
          }

          else
          {
            v41 = v34;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(*v41, &v109);
          ++v38;
        }

        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v109);
        ++v36;
        v39 -= 8;
      }

      while (v39);
      LODWORD(v37) = *(v32 + 48);
      v33 = *(v32 + 40);
      v35 = v33 & 1;
    }

    else
    {
      v38 = 0;
    }

    v42 = v33 - 1;
    v43 = v37 - v38;
    if (v35)
    {
      v44 = (v42 + 8);
    }

    else
    {
      v44 = v34;
    }

    if (v43 >= 1)
    {
      if (!*(v32 + 56))
      {
        v45 = &v44[v38];
        v46 = (v37 - v38);
        do
        {
          google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v45++, this);
          --v46;
        }

        while (v46);
      }

      google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v34, v38, v43);
    }

    ++v29;
  }

  while (v29 != v31);
  v26 = *(v101 + 9);
  v30 = *(v101 + 20);
  v28 = v26 & 1;
  v47 = (v26 & 1) != 0 ? v26 + 7 : v101 + 72;
  if (v30)
  {
    v48 = 0;
    v49 = 8 * v30;
    do
    {
      this = *v47;
      if (*(*v47 + 48))
      {
        if (*v27)
        {
          v50 = (*v27 + 8 * v48 + 7);
        }

        else
        {
          v50 = (v101 + 72);
        }

        operations_research::sat::DecisionStrategyProto::CopyFrom(*v50, this);
        ++v48;
      }

      v47 += 8;
      v49 -= 8;
    }

    while (v49);
    LODWORD(v30) = *(v101 + 20);
    v26 = *(v101 + 9);
    v28 = v26 & 1;
  }

  else
  {
LABEL_69:
    v48 = 0;
  }

  v51 = v26 - 1;
  v52 = v30 - v48;
  if (v28)
  {
    v53 = (v51 + 8);
  }

  else
  {
    v53 = v101 + 72;
  }

  if (v52 >= 1)
  {
    if (!*(v101 + 11))
    {
      v54 = &v53[8 * v48];
      v55 = (v30 - v48);
      do
      {
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v54++, this);
        --v55;
      }

      while (v55);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v27, v48, v52);
  }

  v56 = *(v101 + 4);
  if ((v56 & 2) != 0)
  {
    v57 = *(v101 + 17);
    v109 = xmmword_23CE306D0;
    *(v101 + 4) = v56;
    v58 = *(*v4 + 32);
    *(v57 + 16) = 0;
    *(v57 + 40) = 0;
    if (v58 >= 1)
    {
      v100 = (v57 + 16);
      for (i = 0; i != v58; ++i)
      {
        if ((*(*(v4 + 57) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
        {
          v61 = *(*(v4 + 60) + 8 * i);
          if (v61 < operations_research::sat::PresolveContext::MinOf(v4, i))
          {
            v61 = operations_research::sat::PresolveContext::MinOf(v4, i);
          }

          if (v61 > operations_research::sat::PresolveContext::MaxOf(v4, i))
          {
            v61 = operations_research::sat::PresolveContext::MaxOf(v4, i);
          }

          operations_research::sat::PresolveContext::GetAffineRelation(v4, i, &__p);
          v62 = v107;
          v63 = v108;
          v105 = *(*a1 + 4 * __p);
          if ((v105 & 0x80000000) == 0)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v109, &v105, v102);
            if (v104)
            {
              v64 = v105;
              *v103 = v105;
              v66 = *(v57 + 16);
              v65 = *(v57 + 20);
              if (v66 == v65)
              {
                google::protobuf::RepeatedField<int>::Grow(v100, v65, (v65 + 1));
                v66 = *v100;
              }

              v67 = *(v57 + 24);
              *(v57 + 16) = v66 + 1;
              *(v67 + 4 * v66) = v64;
              v69 = *(v57 + 40);
              v68 = *(v57 + 44);
              if (v69 == v68)
              {
                google::protobuf::RepeatedField<long long>::Grow(v57 + 40, v68);
                v69 = *(v57 + 40);
              }

              v60 = *(v57 + 48);
              *(v57 + 40) = v69 + 1;
              *(v60 + 8 * v69) = (v61 - v63) / v62;
            }
          }
        }
      }

      if (v109 >= 2)
      {
        operator delete((v110 - (BYTE8(v109) & 1) - 8));
      }
    }
  }

  __p = 0;
  v107 = 0;
  v108 = 0;
  v70 = *a1;
  if (a1[1] != *a1)
  {
    v71 = 0;
    v72 = 0;
    v73 = (v101 + 24);
    do
    {
      v74 = *(v70 + 4 * v71);
      if ((v74 & 0x80000000) != 0)
      {
        goto LABEL_102;
      }

      v75 = __p;
      if (0x6DB6DB6DB6DB6DB7 * ((v107 - __p) >> 3) <= v74)
      {
        operations_research::sat::IntegerVariableProto::IntegerVariableProto(&v109, 0);
        v76 = v74 + 1;
        v77 = v107;
        v78 = 0x6DB6DB6DB6DB6DB7 * ((v107 - __p) >> 3);
        if (v76 <= v78)
        {
          if (v76 < v78)
          {
            v79 = __p + 56 * v76;
            if (v107 != v79)
            {
              do
              {
                operations_research::sat::IntegerVariableProto::~IntegerVariableProto((v77 - 56));
              }

              while (v77 != v79);
            }

            v107 = v79;
          }
        }

        else
        {
          std::vector<operations_research::sat::IntegerVariableProto>::__append(&__p, v76 - v78, &v109);
        }

        operations_research::sat::IntegerVariableProto::~IntegerVariableProto(&v109);
        v75 = __p;
      }

      v80 = &v75[56 * v74];
      v81 = (*v73 & 1) != 0 ? (*v73 + 8 * v71 + 7) : (v101 + 24);
      v82 = *v81;
      if (*v81 == v80)
      {
        goto LABEL_102;
      }

      v83 = *(v80 + 1);
      if (v83)
      {
        v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
        v84 = *(v82 + 1);
        if ((v84 & 1) == 0)
        {
LABEL_118:
          if (v83 != v84)
          {
            goto LABEL_119;
          }

          goto LABEL_101;
        }
      }

      else
      {
        v84 = *(v82 + 1);
        if ((v84 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      if (v83 != *(v84 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_119:
        google::protobuf::internal::GenericSwap(v80, v82, a3);
        goto LABEL_102;
      }

LABEL_101:
      operations_research::sat::IntegerVariableProto::InternalSwap(v80, v82);
LABEL_102:
      v71 = ++v72;
      v70 = *a1;
    }

    while (v72 < ((a1[1] - *a1) >> 2));
  }

  if (*(v101 + 8) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v101 + 6);
  }

  v85 = __p;
  v86 = v107;
  while (v85 != v86)
  {
    v87 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v101 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
    if (v85 == v87)
    {
      goto LABEL_127;
    }

    v89 = *(v87 + 1);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
      v90 = *(v85 + 1);
      if (v90)
      {
LABEL_135:
        if (v89 == *(v90 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_126:
          operations_research::sat::IntegerVariableProto::InternalSwap(v87, v85);
          goto LABEL_127;
        }

        goto LABEL_133;
      }
    }

    else
    {
      v90 = *(v85 + 1);
      if (v90)
      {
        goto LABEL_135;
      }
    }

    if (v89 == v90)
    {
      goto LABEL_126;
    }

LABEL_133:
    google::protobuf::internal::GenericSwap(v87, v85, v88);
LABEL_127:
    v85 = (v85 + 56);
  }

  v91 = *(v101 + 3);
  if (v91)
  {
    v92 = (v91 + 7);
  }

  else
  {
    v92 = v101 + 24;
  }

  v93 = *(v101 + 8);
  if (v93)
  {
    v94 = 8 * v93;
    do
    {
      v95 = *(*v92 + 16);
      if (v95 <= 0)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v95, 0, "v.domain_size() > 0");
      }

      v92 += 8;
      v94 -= 8;
    }

    while (v94);
  }

  v96 = __p;
  if (__p)
  {
    v97 = v107;
    v98 = __p;
    if (v107 != __p)
    {
      do
      {
        operations_research::sat::IntegerVariableProto::~IntegerVariableProto((v97 - 56));
      }

      while (v97 != v96);
      v98 = __p;
    }

    v107 = v96;
    operator delete(v98);
  }

  v99 = *MEMORY[0x277D85DE8];
}

void sub_23CAC0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_23CAC0CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<void ()(int *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CAC0CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<void ()(int *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CAC0CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::IntegerVariableProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CAC0CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(va);
  _Unwind_Resume(a1);
}

void sub_23CAC0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::IntegerVariableProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CAC0D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::IntegerVariableProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<operations_research::sat::IntegerVariableProto>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::IntegerVariableProto::~IntegerVariableProto((v3 - 56));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::sat::anonymous namespace::CopyObjectiveForDuplicateDetection(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpObjectiveProto *a2)
{
  operations_research::sat::ConstraintProto::ConstraintProto(this, 0);
  if (*(v4 + 60) == 12)
  {
    v5 = *(this + 6);
    if (v5 == a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
    *(this + 15) = 12;
    v6 = *(this + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v6);
    *(this + 6) = v5;
    if (v5 == a2)
    {
      goto LABEL_17;
    }
  }

  *(v5 + 16) = 0;
  v7 = *(a2 + 4);
  if (!v7)
  {
    goto LABEL_17;
  }

  if (*(v5 + 20) < v7)
  {
    v41 = v5;
    google::protobuf::RepeatedField<int>::Grow(v5 + 16, 0, v7);
    v8 = *(v41 + 16);
    v10 = *(v41 + 24);
    *(v41 + 16) = v8 + v7;
    if (v7 < 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(a2 + 4);
    v10 = *(v5 + 24);
    *(v5 + 16) = v7;
    if (v7 < 1)
    {
      goto LABEL_17;
    }
  }

  v11 = *(a2 + 3);
  v12 = (v10 + 4 * v8);
  if (v7 < 8)
  {
    goto LABEL_15;
  }

  v13 = 4 * v8 + v10;
  if ((v13 - v11) < 0x20)
  {
    goto LABEL_15;
  }

  v14 = v7;
  v15 = v7 & 0x7FFFFFF8;
  LODWORD(v7) = v7 - (v7 & 0x7FFFFFF8);
  v12 += v15;
  v16 = &v11[v15];
  v17 = (v11 + 4);
  v18 = (v13 + 16);
  v19 = v15;
  do
  {
    v20 = *v17;
    *(v18 - 1) = *(v17 - 1);
    *v18 = v20;
    v17 += 2;
    v18 += 2;
    v19 -= 8;
  }

  while (v19);
  v11 = v16;
  if (v15 != v14)
  {
LABEL_15:
    v21 = v7 + 1;
    do
    {
      v22 = *v11++;
      *v12++ = v22;
      --v21;
    }

    while (v21 > 1);
  }

LABEL_17:
  if (*(this + 15) == 12)
  {
    result = *(this + 6);
    if (result == a2)
    {
      return result;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
    *(this + 15) = 12;
    v24 = *(this + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v24);
    *(this + 6) = result;
    if (result == a2)
    {
      return result;
    }
  }

  *(result + 40) = 0;
  v25 = *(a2 + 10);
  if (!v25)
  {
    return result;
  }

  if (*(result + 44) < v25)
  {
    v42 = result;
    google::protobuf::RepeatedField<long long>::Grow(result + 40, 0);
    result = v42;
    v26 = *(v42 + 40);
    v28 = *(v42 + 48);
    *(v42 + 40) = v26 + v25;
    if (v25 < 1)
    {
      return result;
    }
  }

  else
  {
    v26 = 0;
    v27 = *(a2 + 10);
    v28 = *(result + 48);
    *(result + 40) = v25;
    if (v25 < 1)
    {
      return result;
    }
  }

  v29 = *(a2 + 6);
  v30 = (v28 + 8 * v26);
  if (v25 < 8)
  {
    goto LABEL_31;
  }

  v31 = 8 * v26 + v28;
  if ((v31 - v29) < 0x20)
  {
    goto LABEL_31;
  }

  v32 = v25;
  v33 = v25 & 0x7FFFFFFC;
  LODWORD(v25) = v25 - (v25 & 0x7FFFFFFC);
  v30 += v33;
  v34 = &v29[v33];
  v35 = (v29 + 2);
  v36 = (v31 + 16);
  v37 = v33;
  do
  {
    v38 = *v35;
    *(v36 - 1) = *(v35 - 1);
    *v36 = v38;
    v35 += 2;
    v36 += 2;
    v37 -= 4;
  }

  while (v37);
  v29 = v34;
  if (v33 != v32)
  {
LABEL_31:
    v39 = v25 + 1;
    do
    {
      v40 = *v29++;
      *v30++ = v40;
      --v39;
    }

    while (v39 > 1);
  }

  return result;
}

void absl::lts_20240722::log_internal::MakeCheckOpString<absl::lts_20240722::int128 const&,long long>(unint64_t *a1, uint64_t a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  absl::lts_20240722::operator<<(&v6, *a1, a1[1]);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91B0](v5, a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CAC11A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::BasicKnapsackSolver::~BasicKnapsackSolver(operations_research::sat::BasicKnapsackSolver *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = *(this + 9);
    if (v3 != v2)
    {
      v5 = *(this + 10);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 9);
    }

    *(this + 10) = v2;
    operator delete(v4);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  v10 = *this;
  if (*this)
  {
    v11 = *(this + 1);
    v12 = *this;
    if (v11 != v10)
    {
      v13 = *(this + 1);
      do
      {
        v14 = *(v13 - 24);
        v13 -= 24;
        if (v14)
        {
          operator delete(*(v11 - 16));
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = *this;
    }

    *(this + 1) = v10;
    operator delete(v12);
  }
}

void operations_research::sat::DiophantineSolution::~DiophantineSolution(operations_research::sat::DiophantineSolution *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = *(this + 8);
    v6 = *(this + 7);
    if (v5 != v4)
    {
      v7 = *(this + 8);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 7);
    }

    *(this + 8) = v4;
    operator delete(v6);
  }

  v10 = *(this + 4);
  if (v10)
  {
    *(this + 5) = v10;
    operator delete(v10);
  }

  v11 = *(this + 1);
  if (v11)
  {
    *(this + 2) = v11;
    operator delete(v11);
  }
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***std::vector<std::pair<std::string,long long>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::ActivityBoundHelper::~ActivityBoundHelper(operations_research::sat::ActivityBoundHelper *this)
{
  if (*(this + 40) >= 2uLL)
  {
    operator delete((*(this + 42) - (*(this + 41) & 1) - 8));
    if (*(this + 36) < 2uLL)
    {
LABEL_3:
      v2 = *(this + 33);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (*(this + 36) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(this + 38) - (*(this + 37) & 1) - 8));
  v2 = *(this + 33);
  if (v2)
  {
LABEL_4:
    *(this + 34) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(this + 30);
  if (v3)
  {
    *(this + 31) = v3;
    operator delete(v3);
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    *(this + 22) = v6;
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  if (*(this + 14) >= 2uLL)
  {
    operator delete((*(this + 16) - (*(this + 15) & 1) - 8));
    if (*(this + 10) < 2uLL)
    {
LABEL_17:
      v8 = *(this + 7);
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if (*(this + 10) < 2uLL)
  {
    goto LABEL_17;
  }

  operator delete((*(this + 12) - (*(this + 11) & 1) - 8));
  v8 = *(this + 7);
  if (v8)
  {
LABEL_18:
    *(this + 8) = v8;
    operator delete(v8);
  }

LABEL_19:
  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    v11 = *(this + 2);
    v12 = *(this + 1);
    if (v11 != v10)
    {
      v13 = *(this + 2);
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 16) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = *(this + 1);
    }

    *(this + 2) = v10;
    operator delete(v12);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::destroy_slots(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (*a1 > 6uLL)
  {
    v11 = a1[1];
    if (v11 >= 2)
    {
      v12 = v11 >> 1;
      do
      {
        v13 = *v2 & 0x8080808080808080;
        if (v13 != 0x8080808080808080)
        {
          v14 = v13 ^ 0x8080808080808080;
          do
          {
            v15 = (4 * __clz(__rbit64(v14))) & 0x1E0;
            v16 = v1 + v15;
            v17 = *(v1 + v15 + 8);
            if (v17)
            {
              v18 = *(v16 + 16);
              v19 = *(v1 + v15 + 8);
              if (v18 != v17)
              {
                do
                {
                  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v18 - 80));
                }

                while (v18 != v17);
                v19 = *(v16 + 8);
              }

              *(v16 + 16) = v17;
              operator delete(v19);
            }

            --v12;
            v14 &= v14 - 1;
          }

          while (v14);
        }

        ++v2;
        v1 += 256;
      }

      while (v12);
    }
  }

  else
  {
    v3 = *(v2 + *a1) & 0x8080808080808080;
    if (v3 != 0x8080808080808080)
    {
      v4 = v1 - 32;
      v5 = v3 ^ 0x8080808080808080;
      do
      {
        v6 = (4 * __clz(__rbit64(v5))) & 0x1E0;
        v7 = v4 + v6;
        v8 = *(v4 + v6 + 8);
        if (v8)
        {
          v9 = *(v7 + 16);
          v10 = *(v4 + v6 + 8);
          if (v9 != v8)
          {
            do
            {
              operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v9 - 80));
            }

            while (v9 != v8);
            v10 = *(v7 + 8);
          }

          *(v7 + 16) = v8;
          operator delete(v10);
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }
}

void *std::__function::__value_func<void ()(operations_research::sat::Literal)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CAC19C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t operations_research::sat::SatPresolver::SatPresolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 144) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  operations_research::sat::SatParameters::SatParameters((a1 + 480), 0);
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = a3;
  return a1;
}

void sub_23CAC1A8C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 448);
  if (v4)
  {
    *(v1 + 456) = v4;
    operator delete(v4);
    v5 = *(v1 + 416);
    if (!v5)
    {
LABEL_3:
      std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 392));
      v6 = *(v1 + 352);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v1 + 416);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 424) = v5;
  operator delete(v5);
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 392));
  v6 = *(v1 + 352);
  if (!v6)
  {
LABEL_4:
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 328));
    std::deque<int>::~deque[abi:ne200100](v1 + 280);
    v7 = *(v1 + 256);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 360) = v6;
  operator delete(v6);
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 328));
  std::deque<int>::~deque[abi:ne200100](v1 + 280);
  v7 = *(v1 + 256);
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 232);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v7);
  v8 = *(v1 + 232);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 208);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 240) = v8;
  operator delete(v8);
  v9 = *(v1 + 208);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 184);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 216) = v9;
  operator delete(v9);
  v10 = *(v1 + 184);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 160);
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(v1 + 192) = v10;
  operator delete(v10);
  v11 = *(v1 + 160);
  if (!v11)
  {
LABEL_10:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v2);
    operations_research::sat::SatPresolver::SatPresolver((v1 + 112), v1, v1 + 56, (v1 + 32));
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v1 + 168) = v11;
  operator delete(v11);
  goto LABEL_10;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

uint64_t std::deque<operations_research::sat::SatPresolver::BvaPqElement>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      do
      {
        v7 -= 8;
      }

      while (v7 != v8);
      *(a1 + 16) = v7;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::SatPresolver::~SatPresolver(operations_research::sat::SatPresolver *this)
{
  operations_research::sat::SatParameters::~SatParameters((this + 480));
  v2 = *(this + 56);
  if (v2)
  {
    *(this + 57) = v2;
    operator delete(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    *(this + 53) = v3;
    operator delete(v3);
  }

  v4 = *(this + 49);
  if (v4)
  {
    v5 = *(this + 50);
    v6 = *(this + 49);
    if (v5 != v4)
    {
      v7 = *(this + 50);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 49);
    }

    *(this + 50) = v4;
    operator delete(v6);
  }

  v10 = *(this + 44);
  if (v10)
  {
    *(this + 45) = v10;
    operator delete(v10);
  }

  v11 = *(this + 41);
  if (v11)
  {
    v12 = *(this + 42);
    v13 = *(this + 41);
    if (v12 != v11)
    {
      v14 = *(this + 42);
      do
      {
        v16 = *(v14 - 24);
        v14 -= 24;
        v15 = v16;
        if (v16)
        {
          *(v12 - 16) = v15;
          operator delete(v15);
        }

        v12 = v14;
      }

      while (v14 != v11);
      v13 = *(this + 41);
    }

    *(this + 42) = v11;
    operator delete(v13);
  }

  std::deque<int>::~deque[abi:ne200100](this + 280);
  v17 = *(this + 32);
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 29);
  if (v18)
  {
    *(this + 30) = v18;
    operator delete(v18);
  }

  v19 = *(this + 26);
  if (v19)
  {
    *(this + 27) = v19;
    operator delete(v19);
  }

  v20 = *(this + 23);
  if (v20)
  {
    *(this + 24) = v20;
    operator delete(v20);
  }

  v21 = *(this + 20);
  if (v21)
  {
    *(this + 21) = v21;
    operator delete(v21);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(this + 17);
  v22 = *(this + 14);
  if (v22)
  {
    *(this + 15) = v22;
    operator delete(v22);
  }

  std::deque<operations_research::sat::SatPresolver::BvaPqElement>::~deque[abi:ne200100](this + 56);
  v23 = *(this + 4);
  if (v23)
  {
    *(this + 5) = v23;
    operator delete(v23);
  }

  v24 = *this;
  if (*this)
  {
    *(this + 1) = v24;
    operator delete(v24);
  }
}

void std::vector<absl::lts_20240722::Span<operations_research::sat::Literal const>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 3;
    if (v6 >> 3 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v5);
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 16 * a2;
      bzero(v12, 16 * a2);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,std::pair<long long,long long>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,std::pair<long long,long long>>>>::try_emplace_impl<std::pair<int,int> const&>@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  _X10 = result[2];
  __asm { PRFM            #4, [X10] }

  v9 = *a2;
  v10 = a2[1];
  v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9))) + v10;
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = *result;
  v14 = vdup_n_s8(v12 & 0x7F);
  v15 = ((v12 >> 7) ^ (_X10 >> 12)) & *result;
  v16 = *(_X10 + v15);
  v17 = vceq_s8(v16, v14);
  if (v17)
  {
LABEL_2:
    while (1)
    {
      v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v13;
      v19 = (result[3] + 24 * v18);
      if (*v19 == v9 && v19[1] == v10)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    *a3 = _X10 + v18;
    *(a3 + 8) = v19;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v21 = vceq_s8(v16, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v3 += 8;
      v15 = (v3 + v15) & v13;
      v16 = *(_X10 + v15);
      v17 = vceq_s8(v16, v14);
      if (v17)
      {
        goto LABEL_2;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v12, (v15 + (__clz(__rbit64(v21)) >> 3)) & v13, v3, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,std::pair<long long,long long>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,std::pair<long long,long long>>>>::GetPolicyFunctions(void)::value);
    v25 = (v22[3] + 24 * result);
    *a3 = result + v22[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
    *v25 = *a2;
    v25[1] = 0;
    v25[2] = 0;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,std::pair<long long,long long>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,std::pair<long long,long long>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,std::pair<long long,long long>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,std::pair<long long,long long>>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

void operations_research::sat::VarDomination::~VarDomination(operations_research::sat::VarDomination *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 8);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 7);
  *(this + 7) = 0;
  if (v11)
  {
    v12 = *(v11 + 72);
    if (v12)
    {
      *(v11 + 80) = v12;
      operator delete(v12);
    }

    v13 = *(v11 + 48);
    if (v13)
    {
      *(v11 + 56) = v13;
      operator delete(v13);
    }

    v14 = *(v11 + 24);
    if (v14)
    {
      *(v11 + 32) = v14;
      operator delete(v14);
    }

    v15 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v15;
      operator delete(v15);
    }

    MEMORY[0x23EED9460](v11, 0x10C40F9E379B3);
  }

  v16 = *(this + 4);
  if (v16)
  {
    *(this + 5) = v16;
    operator delete(v16);
  }

  v17 = *(this + 1);
  if (v17)
  {
    *(this + 2) = v17;
    operator delete(v17);
  }
}

void operations_research::sat::CpModelPresolver::~CpModelPresolver(operations_research::sat::CpModelPresolver *this)
{
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 93);
  if (v4)
  {
    *(this + 94) = v4;
    operator delete(v4);
  }

  v5 = *(this + 86);
  if (v5)
  {
    *(this + 87) = v5;
    operator delete(v5);
  }

  v6 = *(this + 83);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 80);
  if (v7)
  {
    *(this + 81) = v7;
    operator delete(v7);
  }

  v8 = *(this + 73);
  if (v8)
  {
    *(this + 74) = v8;
    operator delete(v8);
  }

  v9 = *(this + 70);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 67);
  if (v10)
  {
    *(this + 68) = v10;
    operator delete(v10);
  }

  v11 = *(this + 60);
  if (v11)
  {
    *(this + 61) = v11;
    operator delete(v11);
  }

  v12 = *(this + 57);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 54);
  if (v13)
  {
    *(this + 55) = v13;
    operator delete(v13);
  }

  v14 = *(this + 47);
  if (v14)
  {
    *(this + 48) = v14;
    operator delete(v14);
  }

  v15 = *(this + 44);
  if (v15)
  {
    *(this + 45) = v15;
    operator delete(v15);
  }

  v16 = *(this + 41);
  if (v16)
  {
    *(this + 42) = v16;
    operator delete(v16);
  }

  v17 = *(this + 38);
  if (v17)
  {
    *(this + 39) = v17;
    operator delete(v17);
  }

  v18 = *(this + 35);
  if (v18)
  {
    *(this + 36) = v18;
    operator delete(v18);
  }

  v19 = *(this + 32);
  if (v19)
  {
    *(this + 33) = v19;
    operator delete(v19);
  }

  v20 = *(this + 29);
  if (v20)
  {
    *(this + 30) = v20;
    operator delete(v20);
  }

  operations_research::sat::ConstraintProto::~ConstraintProto((this + 168));
  if (*(this + 17) >= 2uLL)
  {
    operator delete((*(this + 19) - (*(this + 18) & 1) - 8));
    if (*(this + 13) < 2uLL)
    {
LABEL_41:
      v21 = *(this + 10);
      if (!v21)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if (*(this + 13) < 2uLL)
  {
    goto LABEL_41;
  }

  operator delete((*(this + 15) - (*(this + 14) & 1) - 8));
  v21 = *(this + 10);
  if (v21)
  {
LABEL_42:
    *(this + 11) = v21;
    operator delete(v21);
  }

LABEL_43:
  v22 = *(this + 7);
  if (v22)
  {
    *(this + 8) = v22;
    operator delete(v22);
  }

  v23 = *(this + 4);
  if (v23)
  {
    *(this + 5) = v23;
    operator delete(v23);
  }
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<int *>::emplace_back<int *&>(a1, &v11);
}

void sub_23CAC2A34(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<int *>::emplace_back<int *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<int *>::emplace_front<int *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void *operations_research::sat::Model::Delete<operations_research::sat::PostsolveClauses>::~Delete(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  *v1 = &unk_284F3DCC0;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    v4 = std::deque<std::vector<operations_research::sat::Literal>>::~deque[abi:ne200100](v2);
    MEMORY[0x23EED9460](v4, 0x1080C40BE8D5F09);
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::PostsolveClauses>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DCC0;
  a1[1] = 0;
  if (v1)
  {
    v2 = std::deque<std::vector<operations_research::sat::Literal>>::~deque[abi:ne200100](v1);
    MEMORY[0x23EED9460](v2, 0x1080C40BE8D5F09);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0>,void ()(int *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3DCF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0>,void ()(int *)>::operator()(uint64_t result, int **a2)
{
  v2 = *(**(result + 8) + 4 * **a2);
  **a2 = v2;
  if (v2 == -1)
  {
    std::__function::__func<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0>,void ()(int *)>::operator()();
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(void)::$_0>,void ()(int *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver22RemoveEmptyConstraintsEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver22RemoveEmptyConstraintsEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver22RemoveEmptyConstraintsEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver22RemoveEmptyConstraintsEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,false>(unint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
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
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = (v10 + 1);
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = (v90 + 1);
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v99 = *v86;
          v100 = *v9;
          if (*v86 < *v9)
          {
            v101 = 1;
            do
            {
              v9[v101] = v100;
              v100 = v9[v101 - 2];
              --v101;
            }

            while (v99 < v100);
            v9[v101] = v99;
          }

          v86 += 4;
          ++v9;
        }

        while (v86 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,google::protobuf::internal::RepeatedIterator<int>>(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
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

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *(v58 - 1);
          v58 -= 4;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *(v58 - 1);
            v58 -= 4;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
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
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *(v45 - 1);
          v45 -= 4;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *(v45 - 1);
          v45 -= 4;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = (v44 - 1);
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = (v49 - 1);
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>>(v10, v53);
      v10 = (v53 + 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = (v10 + 1);
      v80 = v10[1];
      v81 = (v10 + 2);
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= v83)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_158:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = (v10 + 1);
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_158;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v102 = *v81;
      v103 = *v79;
      if (v102 < v103)
      {
        v10[1] = v102;
        v10[2] = v103;
        v104 = *v10;
        if (v102 < *v10)
        {
          *v10 = v102;
          v10[1] = v104;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = (v10 + 1);
      v66 = v10[1];
      v68 = (v10 + 2);
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= v69)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_163;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_168;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_163;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_163:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_164;
          }

LABEL_168:
          LODWORD(v67) = v95;
LABEL_169:
          v105 = *(a2 - 1);
          if (v105 >= v67)
          {
            return result;
          }

          v10[3] = v105;
          *(a2 - 1) = v67;
          v106 = v10[2];
          v96 = v10[3];
          if (v96 >= v106)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v106;
          v107 = v10[1];
          if (v96 >= v107)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v107;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_173:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_168;
        }
      }

LABEL_164:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_169;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v108 = *(a2 - 1);
      if (v108 >= v76)
      {
        return result;
      }

      v10[1] = v108;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_173;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v14 = *a1;
      v15 = a1[1];
      v16 = *(a2 - 1);
      if (v15 < *a1)
      {
        if (v16 >= v15)
        {
          *a1 = v15;
          a1[1] = v14;
          v31 = *(a2 - 1);
          if (v31 >= v14)
          {
            return 1;
          }

          a1[1] = v31;
          *(a2 - 1) = v14;
          return 1;
        }

        else
        {
          *a1 = v16;
          *(a2 - 1) = v14;
          return 1;
        }
      }

      if (v16 >= v15)
      {
        return 1;
      }

      a1[1] = v16;
      *(a2 - 1) = v15;
      v30 = *a1;
      v29 = a1[1];
      if (v29 >= *a1)
      {
        return 1;
      }

LABEL_70:
      *a1 = v29;
      a1[1] = v30;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1[1];
      v5 = a1[2];
      v6 = *a1;
      if (v4 >= *a1)
      {
        if (v5 >= v4)
        {
          v9 = *a1;
          v6 = a1[1];
        }

        else
        {
          a1[1] = v5;
          a1[2] = v4;
          if (v5 < v6)
          {
            v7 = a1;
            v8 = a1 + 1;
            v9 = v5;
            v10 = v6;
            v11 = v4;
            goto LABEL_50;
          }

          v9 = v6;
          v6 = v5;
          v5 = v4;
        }
      }

      else
      {
        if (v5 < v4)
        {
          v7 = a1;
          v8 = a1 + 2;
          v9 = a1[2];
          v10 = a1[1];
          v11 = *a1;
LABEL_50:
          *v7 = v5;
          *v8 = v6;
          v6 = v10;
          v5 = v11;
          goto LABEL_61;
        }

        v7 = a1 + 1;
        v8 = a1 + 2;
        *a1 = v4;
        a1[1] = v6;
        v9 = v4;
        v10 = v5;
        v11 = v6;
        if (v5 < v6)
        {
          goto LABEL_50;
        }

        v9 = v4;
      }

LABEL_61:
      v43 = a1[3];
      if (v43 >= v5)
      {
        v5 = a1[3];
      }

      else
      {
        a1[2] = v43;
        a1[3] = v5;
        if (v43 < v6)
        {
          a1[1] = v43;
          a1[2] = v6;
          if (v43 < v9)
          {
            *a1 = v43;
            a1[1] = v9;
          }
        }
      }

      v44 = *(a2 - 1);
      if (v44 >= v5)
      {
        return 1;
      }

      a1[3] = v44;
      *(a2 - 1) = v5;
      v45 = a1[2];
      v29 = a1[3];
      if (v29 >= v45)
      {
        return 1;
      }

      a1[2] = v29;
      a1[3] = v45;
      v46 = a1[1];
      if (v29 >= v46)
      {
        return 1;
      }

      a1[1] = v29;
      a1[2] = v46;
      v30 = *a1;
      if (v29 >= *a1)
      {
        return 1;
      }

      goto LABEL_70;
    }

    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    if (v23 >= *a1)
    {
      if (v25 >= v23)
      {
        goto LABEL_55;
      }

      a1[1] = v25;
      a1[2] = v23;
      if (v25 >= v26)
      {
        goto LABEL_54;
      }

      v27 = a1;
      v28 = a1 + 1;
    }

    else if (v25 >= v23)
    {
      *a1 = v23;
      a1[1] = v26;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v23 = v26;
      if (v25 >= v26)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v27 = a1;
      v28 = a1 + 2;
      v23 = *a1;
    }

    *v27 = v25;
    *v28 = v26;
LABEL_54:
    v25 = v23;
LABEL_55:
    v39 = *(a2 - 1);
    if (v39 >= v25)
    {
      return 1;
    }

    *v24 = v39;
    *(a2 - 1) = v25;
    v40 = *v24;
    v41 = a1[1];
    if (v40 >= v41)
    {
      return 1;
    }

    a1[1] = v40;
    a1[2] = v41;
    v42 = *a1;
    if (v40 >= *a1)
    {
      return 1;
    }

    *a1 = v40;
    a1[1] = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v17 = a1 + 2;
    v18 = a1[2];
    v19 = a1 + 1;
    v20 = a1[1];
    v21 = *a1;
    if (v20 >= *a1)
    {
      if (v18 >= v20 || (a1[1] = v18, a1[2] = v20, v18 >= v21))
      {
LABEL_38:
        v32 = a1 + 3;
        if (a1 + 3 == a2)
        {
          return 1;
        }

        v33 = 0;
        for (i = 12; ; i += 4)
        {
          v35 = *v17;
          v17 = v32;
          v36 = *v32;
          if (v36 < v35)
          {
            break;
          }

LABEL_41:
          v32 = v17 + 1;
          if (v17 + 1 == a2)
          {
            return 1;
          }
        }

        v37 = i;
        do
        {
          *(a1 + v37) = v35;
          v38 = v37 - 4;
          if (v37 == 4)
          {
            *a1 = v36;
            if (++v33 != 8)
            {
              goto LABEL_41;
            }

            return v17 + 1 == a2;
          }

          v35 = *(a1 + v37 - 8);
          v37 -= 4;
        }

        while (v36 < v35);
        *(a1 + v38) = v36;
        if (++v33 != 8)
        {
          goto LABEL_41;
        }

        return v17 + 1 == a2;
      }

      v22 = a1;
    }

    else if (v18 >= v20)
    {
      *a1 = v20;
      a1[1] = v21;
      v22 = a1 + 1;
      v19 = a1 + 2;
      if (v18 >= v21)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v22 = a1;
      v19 = a1 + 2;
    }

    *v22 = v18;
    *v19 = v21;
    goto LABEL_38;
  }

  v12 = *(a2 - 1);
  v13 = *a1;
  if (v12 >= *a1)
  {
    return 1;
  }

  *a1 = v12;
  *(a2 - 1) = v13;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,google::protobuf::internal::RepeatedIterator<int>>(char *a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - a1;
  if (a2 == a1)
  {
    return v3;
  }

  v5 = v4 >> 2;
  if (v4 >> 2 >= 2)
  {
    v6 = ((v4 >> 2) - 2) >> 1;
    v7 = v6;
    do
    {
      v8 = 4 * v7;
      if (v6 >= (4 * v7) >> 2)
      {
        v9 = (v8 >> 1) | 1;
        v10 = &a1[4 * v9];
        if ((v8 >> 1) + 2 >= v5)
        {
          v11 = *v10;
          v13 = &a1[v8];
          v14 = *&a1[4 * v7];
          if (*v10 >= v14)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v11 = *v10;
          v12 = *(v10 + 1);
          if (*v10 <= v12)
          {
            v11 = *(v10 + 1);
          }

          if (*v10 < v12)
          {
            v10 += 4;
            v9 = (v8 >> 1) + 2;
          }

          v13 = &a1[v8];
          v14 = *&a1[4 * v7];
          if (v11 >= v14)
          {
LABEL_22:
            while (1)
            {
              *v13 = v11;
              v13 = v10;
              if (v6 < v9)
              {
                break;
              }

              v16 = (2 * v9) | 1;
              v10 = &a1[4 * v16];
              v9 = 2 * v9 + 2;
              if (v9 < v5)
              {
                v11 = *v10;
                v15 = *(v10 + 1);
                if (*v10 <= v15)
                {
                  v11 = *(v10 + 1);
                }

                if (*v10 >= v15)
                {
                  v9 = v16;
                }

                else
                {
                  v10 += 4;
                }

                if (v11 < v14)
                {
                  break;
                }
              }

              else
              {
                v11 = *v10;
                v9 = v16;
                if (*v10 < v14)
                {
                  break;
                }
              }
            }

            *v13 = v14;
          }
        }
      }

      v26 = v7-- <= 0;
    }

    while (!v26);
  }

  v3 = a2;
  if (a2 != a3)
  {
    if (v5 < 2)
    {
      v17 = *a1;
      v18 = a2;
      do
      {
        v19 = *v18;
        if (*v18 < v17)
        {
          *v18 = v17;
          *a1 = v19;
          v17 = v19;
        }

        v18 += 4;
      }

      while (v18 != a3);
LABEL_59:
      v3 = a3;
      goto LABEL_60;
    }

    v20 = a2;
    while (1)
    {
      v21 = *v20;
      if (*v20 < *a1)
      {
        *v20 = *a1;
        *a1 = v21;
        v22 = *(a1 + 1);
        if (v4 == 8)
        {
          v23 = a1 + 4;
          v24 = 1;
          if (v22 >= v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v25 = *(a1 + 2);
          v26 = v22 < v25;
          if (v22 <= v25)
          {
            v22 = *(a1 + 2);
          }

          if (v26)
          {
            v23 = a1 + 8;
          }

          else
          {
            v23 = a1 + 4;
          }

          if (v26)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if (v22 >= v21)
          {
LABEL_48:
            v27 = a1;
            while (1)
            {
              *v27 = v22;
              v27 = v23;
              if (((v5 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[4 * v29];
              v24 = 2 * v24 + 2;
              if (v24 < v5)
              {
                v22 = *v23;
                v28 = *(v23 + 1);
                if (*v23 <= v28)
                {
                  v22 = *(v23 + 1);
                }

                if (*v23 >= v28)
                {
                  v24 = v29;
                }

                else
                {
                  v23 += 4;
                }

                if (v22 < v21)
                {
                  break;
                }
              }

              else
              {
                v22 = *v23;
                v24 = v29;
                if (*v23 < v21)
                {
                  break;
                }
              }
            }

            *v27 = v21;
          }
        }
      }

      v20 += 4;
      if (v20 == a3)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (v5 >= 2)
  {
    do
    {
      v31 = 0;
      v32 = *a1;
      v33 = (v5 - 2) >> 1;
      v34 = a1;
      do
      {
        while (1)
        {
          v37 = &v34[4 * v31 + 4];
          v38 = (2 * v31) | 1;
          v31 = 2 * v31 + 2;
          if (v31 < v5)
          {
            break;
          }

          v31 = v38;
          *v34 = *v37;
          v34 = v37;
          if (v38 > v33)
          {
            goto LABEL_73;
          }
        }

        v35 = *v37;
        v36 = *(v37 + 1);
        if (*v37 <= v36)
        {
          v35 = *(v37 + 1);
        }

        if (*v37 >= v36)
        {
          v31 = v38;
        }

        else
        {
          v37 += 4;
        }

        *v34 = v35;
        v34 = v37;
      }

      while (v31 <= v33);
LABEL_73:
      a2 -= 4;
      if (v37 == a2)
      {
        *v37 = v32;
      }

      else
      {
        *v37 = *a2;
        *a2 = v32;
        v39 = (v37 - a1 + 4) >> 2;
        v26 = v39 < 2;
        v40 = v39 - 2;
        if (!v26)
        {
          v41 = v40 >> 1;
          v42 = &a1[4 * v41];
          v43 = *v42;
          v44 = *v37;
          if (*v42 < *v37)
          {
            do
            {
              *v37 = v43;
              v37 = v42;
              if (!v41)
              {
                break;
              }

              v41 = (v41 - 1) >> 1;
              v42 = &a1[4 * v41];
              v43 = *v42;
            }

            while (*v42 < v44);
            *v37 = v44;
          }
        }
      }

      v26 = v5-- <= 2;
    }

    while (!v26);
  }

  return v3;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *,false>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = *(v8 + 8);
      if (v82 < v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v84;
        *(v8 + 8) = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = *(v99 + 3);
            v102 = *(v99 + 1);
            v99 = v95;
            if (v101 < v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = v8 + v104;
                *(v105 + 16) = *(v8 + v104);
                *(v105 + 24) = *(v8 + v104 + 8);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_126;
                }

                v104 -= 16;
              }

              while (v101 < *(v105 - 8));
              v100 = v8 + v104 + 16;
LABEL_126:
              *v100 = v103;
              *(v100 + 8) = v101;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v143 = (v8 + 24);
        do
        {
          v144 = *(v7 + 24);
          v145 = *(v7 + 8);
          v7 = v95;
          if (v144 < v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 2) = *(v147 - 6);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 < *(v148 - 4));
            *(v147 - 2) = v146;
            *v147 = v144;
          }

          v95 = (v7 + 16);
          v143 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          v109 = 16 * v107;
          if (v106 >= (16 * v107) >> 4)
          {
            v110 = (v109 >> 3) | 1;
            v111 = v8 + 16 * v110;
            if ((v109 >> 3) + 2 < v9)
            {
              v108 = *(v111 + 8) < *(v111 + 24);
              v111 += 16 * v108;
              if (v108)
              {
                v110 = (v109 >> 3) + 2;
              }
            }

            v112 = v8 + v109;
            v113 = *(v111 + 8);
            v114 = *(v112 + 8);
            if (v113 >= v114)
            {
              v115 = *v112;
              do
              {
                v116 = v112;
                v112 = v111;
                *v116 = *v111;
                *(v116 + 8) = v113;
                if (v106 < v110)
                {
                  break;
                }

                v117 = (2 * v110) | 1;
                v111 = v8 + 16 * v117;
                v118 = 2 * v110 + 2;
                if (v118 < v9)
                {
                  result = *(v111 + 24);
                  v108 = *(v111 + 8) < result;
                  v111 += 16 * v108;
                  if (v108)
                  {
                    v117 = v118;
                  }
                }

                v113 = *(v111 + 8);
                v110 = v117;
              }

              while (v113 >= v114);
              *v112 = v115;
              *(v112 + 8) = v114;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v119 = 0;
          v120 = *v8;
          v121 = *(v8 + 8);
          v122 = v8;
          do
          {
            v126 = v122 + 16 * v119;
            v125 = v126 + 16;
            v127 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 < v9)
            {
              v123 = *(v126 + 24);
              result = *(v126 + 40);
              v124 = v126 + 32;
              if (v123 >= result)
              {
                v119 = v127;
              }

              else
              {
                v125 = v124;
              }
            }

            else
            {
              v119 = v127;
            }

            *v122 = *v125;
            *(v122 + 8) = *(v125 + 8);
            v122 = v125;
          }

          while (v119 <= ((v9 - 2) >> 1));
          if (v125 == a2 - 4)
          {
            *v125 = v120;
            *(v125 + 8) = v121;
          }

          else
          {
            *v125 = *(a2 - 4);
            *(v125 + 8) = *(a2 - 1);
            *(a2 - 4) = v120;
            *(a2 - 1) = v121;
            v128 = (v125 - v8 + 16) >> 4;
            v108 = v128 < 2;
            v129 = v128 - 2;
            if (!v108)
            {
              v130 = v129 >> 1;
              v131 = v8 + 16 * (v129 >> 1);
              v132 = *(v131 + 8);
              v133 = *(v125 + 8);
              if (v132 < v133)
              {
                v134 = *v125;
                do
                {
                  v135 = v125;
                  v125 = v131;
                  *v135 = *v131;
                  *(v135 + 8) = v132;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = v8 + 16 * v130;
                  v132 = *(v131 + 8);
                }

                while (v132 < v133);
                *v125 = v134;
                *(v125 + 8) = v133;
              }
            }
          }

          a2 -= 4;
          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *(v8 + 8);
      v16 = *(v10 + 8);
      if (v15 < v16)
      {
        v17 = *v10;
        if (v11 < v15)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v10 + 8) = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        *(v10 + 8) = v15;
        *(v8 + 8) = v16;
        v36 = *(a2 - 1);
        if (v36 < v16)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v8 + 8) = v36;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 >= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 4);
      *(a2 - 4) = v22;
      *(v8 + 8) = v11;
      *(a2 - 1) = v15;
      v23 = *(v8 + 8);
      v24 = *(v10 + 8);
      if (v23 >= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      *(v10 + 8) = v23;
      *(v8 + 8) = v24;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v37 = *v8;
      v38 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 24);
        v57 += 16;
      }

      while (v58 < v38);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 4;
          v64 = *(v63 - 1);
          v63 -= 4;
          if (v64 < v38)
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
        v8 = v59;
      }

      else
      {
        do
        {
          v61 = v60 - 4;
          v62 = *(v60 - 1);
          v60 -= 4;
        }

        while (v62 >= v38);
LABEL_72:
        v8 = v59;
        if (v59 < v61)
        {
          v65 = v61;
          do
          {
            v66 = *v8;
            *v8 = *v65;
            *v65 = v66;
            v67 = *(v8 + 8);
            *(v8 + 8) = *(v65 + 8);
            *(v65 + 8) = v67;
            do
            {
              v68 = *(v8 + 24);
              v8 += 16;
            }

            while (v68 < v38);
            do
            {
              v69 = *(v65 - 8);
              v65 -= 16;
            }

            while (v69 >= v38);
          }

          while (v8 < v65);
        }
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v37;
      *(v8 - 8) = v38;
      if (v59 < v61)
      {
        goto LABEL_83;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *>(v7, (v8 - 16));
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *>(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *,false>(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 >= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          *(v8 + 8) = v12;
          *(v10 + 8) = v13;
          v26 = *(a2 - 1);
          if (v26 >= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 8) = v26;
        }

        else
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v8 + 8) = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v27 = (v10 - 16);
      v28 = *(v10 - 8);
      v29 = *(v8 + 24);
      v30 = *(a2 - 3);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 8) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 8);
          v34 = *(v8 + 24);
          if (v33 < v34)
          {
            v35 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v35;
            *(v8 + 24) = v33;
            *(v10 - 8) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 >= v28)
        {
          *(v8 + 16) = *v27;
          *v27 = v31;
          *(v8 + 24) = v28;
          *(v10 - 8) = v29;
          v39 = *(a2 - 3);
          if (v39 >= v29)
          {
            goto LABEL_43;
          }

          *v27 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 8) = v39;
        }

        else
        {
          *(v8 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v8 + 24) = v30;
        }

        *(a2 - 3) = v29;
      }

LABEL_43:
      v40 = *(v10 + 24);
      v41 = *(v8 + 40);
      v42 = *(a2 - 5);
      if (v40 >= v41)
      {
        if (v42 < v40)
        {
          v44 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v44;
          *(v10 + 24) = v42;
          *(a2 - 5) = v40;
          v45 = *(v10 + 24);
          v46 = *(v8 + 40);
          if (v45 < v46)
          {
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v47;
            *(v8 + 40) = v45;
            *(v10 + 24) = v46;
          }
        }
      }

      else
      {
        v43 = *(v8 + 32);
        if (v42 >= v40)
        {
          *(v8 + 32) = *(v10 + 16);
          *(v10 + 16) = v43;
          *(v8 + 40) = v40;
          *(v10 + 24) = v41;
          v48 = *(a2 - 5);
          if (v48 >= v41)
          {
            goto LABEL_52;
          }

          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v10 + 24) = v48;
        }

        else
        {
          *(v8 + 32) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v8 + 40) = v42;
        }

        *(a2 - 5) = v41;
      }

LABEL_52:
      v49 = *(v10 + 8);
      v50 = *(v10 - 8);
      v51 = *(v10 + 24);
      if (v49 >= v50)
      {
        v52 = *v10;
        if (v51 >= v49)
        {
          v50 = *(v10 + 8);
        }

        else
        {
          v53 = *(v10 + 16);
          *v10 = v53;
          *(v10 + 16) = v52;
          *(v10 + 8) = v51;
          *(v10 + 24) = v49;
          if (v51 >= v50)
          {
            v50 = v51;
            v52 = v53;
          }

          else
          {
            v52 = *v27;
            *v27 = v53;
            *v10 = v52;
            *(v10 - 8) = v51;
            *(v10 + 8) = v50;
          }
        }
      }

      else
      {
        v52 = *v27;
        if (v51 >= v49)
        {
          *v27 = *v10;
          *v10 = v52;
          *(v10 - 8) = v49;
          *(v10 + 8) = v50;
          if (v51 < v50)
          {
            v54 = *(v10 + 16);
            *v10 = v54;
            *(v10 + 16) = v52;
            *(v10 + 8) = v51;
            *(v10 + 24) = v50;
            v50 = v51;
            v52 = v54;
          }
        }

        else
        {
          *v27 = *(v10 + 16);
          *(v10 + 16) = v52;
          *(v10 - 8) = v51;
          *(v10 + 24) = v50;
          v52 = *v10;
          v50 = v49;
        }
      }

      v55 = *v8;
      *v8 = v52;
      *v10 = v55;
      v56 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v10 + 8) = v56;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = *(v8 + 8);
      v37 = *v8;
      if (*(v8 - 8) < v38)
      {
        goto LABEL_64;
      }

      if (v38 >= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v38 >= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v38 >= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 4;
          v77 = *(v76 - 1);
          v76 -= 4;
        }

        while (v38 < v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v38 >= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 4;
        }

        while (v38 < v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v37;
      *(v8 - 8) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 >= v91)
      {
        if (v93 < v90)
        {
          v140 = *(v8 + 16);
          v141 = *(v8 + 32);
          *(v8 + 16) = v141;
          *(v8 + 32) = v140;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 < v91)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 16) = v142;
            goto LABEL_184;
          }

LABEL_185:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 < v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_183;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 < v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_183:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_184:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_185;
        }
      }

      v151 = *(a2 - 1);
      if (v151 < v93)
      {
        v152 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 4);
        *(a2 - 4) = v152;
        *(v8 + 40) = v151;
        *(a2 - 1) = v93;
        v153 = *(v8 + 40);
        v154 = *(v8 + 24);
        if (v153 < v154)
        {
          v155 = *(v8 + 16);
          v156 = *(v8 + 32);
          *(v8 + 16) = v156;
          *(v8 + 32) = v155;
          *(v8 + 24) = v153;
          *(v8 + 40) = v154;
          v157 = *(v8 + 8);
          if (v153 < v157)
          {
            v158 = *v8;
            *v8 = v156;
            *(v8 + 16) = v158;
            *(v8 + 8) = v153;
            *(v8 + 24) = v157;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 4);
    }

    goto LABEL_10;
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 >= v86)
  {
    if (v87 < v85)
    {
      v136 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v136;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v137 = *(v8 + 24);
      v138 = *(v8 + 8);
      if (v137 < v138)
      {
        v139 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v139;
        *(v8 + 8) = v137;
        *(v8 + 24) = v138;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 >= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v150 = *(a2 - 1);
      if (v150 >= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 24) = v150;
    }

    else
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}