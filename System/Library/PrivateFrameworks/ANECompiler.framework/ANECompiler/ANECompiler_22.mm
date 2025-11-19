void sub_23CA1D3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, char a56, uint64_t a57, uint64_t a58, unint64_t a59, char a60, uint64_t a61, uint64_t a62, void *a63)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&STACK[0x2A0]);
  std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100](&STACK[0x2F0]);
  if (STACK[0x288])
  {
    operator delete(STACK[0x290]);
  }

  if (a55 >= 2)
  {
    operator delete((a57 - (a56 & 1) - 8));
    if (a59 < 2)
    {
LABEL_5:
      if (a63 < 2)
      {
LABEL_10:
        _Unwind_Resume(a1);
      }

LABEL_9:
      operator delete((a65 - (a64 & 1) - 8));
      goto LABEL_10;
    }
  }

  else if (a59 < 2)
  {
    goto LABEL_5;
  }

  operator delete((a61 - (a60 & 1) - 8));
  if (a63 < 2)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t operations_research::sat::anonymous namespace::ExpandComplexLinearConstraint(uint64_t this, uint64_t a2, operations_research::sat::ConstraintProto *a3, operations_research::sat::PresolveContext *a4, __n128 a5)
{
  v6 = a2;
  v7 = *(a2 + 60);
  if (v7 == 12)
  {
    v8 = *(a2 + 48);
    if (*(v8 + 16) < 3)
    {
      return this;
    }
  }

  else
  {
    v8 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (dword_2810BEE88 < 3)
    {
      return this;
    }
  }

  if (*(v8 + 4) != 1)
  {
    if (*(*(a3 + 49) + 318) == 1)
    {
      if (v7 == 12)
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v9[9], *(v9 + 16), &v84, a5);
      v20 = operations_research::sat::PresolveContext::NewIntVar(a3, &v84);
      if (*(v6 + 60) == 12)
      {
        v21 = *(v6 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v6);
        *(v6 + 60) = 12;
        v22 = *(v6 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v22);
        *(v6 + 48) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 20);
      if (v24 == v23)
      {
        google::protobuf::RepeatedField<int>::Grow(v21 + 16, v23, (v23 + 1));
        v24 = *(v21 + 16);
      }

      v25 = *(v21 + 24);
      *(v21 + 16) = v24 + 1;
      *(v25 + 4 * v24) = v20;
      if (*(v6 + 60) == 12)
      {
        v26 = *(v6 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v6);
        *(v6 + 60) = 12;
        v27 = *(v6 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v27);
        *(v6 + 48) = v26;
      }

      v29 = *(v26 + 40);
      v28 = *(v26 + 44);
      if (v29 == v28)
      {
        google::protobuf::RepeatedField<long long>::Grow(v26 + 40, v28);
        v29 = *(v26 + 40);
      }

      v30 = *(v26 + 48);
      *(v26 + 40) = v29 + 1;
      *(v30 + 8 * v29) = -1;
      if (*(v6 + 60) == 12)
      {
        *(*(v6 + 48) + 64) = 0;
        if (*(v6 + 60) == 12)
        {
LABEL_36:
          v31 = *(v6 + 48);
          goto LABEL_43;
        }
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v6);
        *(v6 + 60) = 12;
        v32 = *(v6 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v32);
        *(v6 + 48) = v33;
        *(v33 + 64) = 0;
        if (*(v6 + 60) == 12)
        {
          goto LABEL_36;
        }
      }

      operations_research::sat::ConstraintProto::clear_constraint(v6);
      *(v6 + 60) = 12;
      v34 = *(v6 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v34);
      *(v6 + 48) = v31;
LABEL_43:
      v36 = *(v31 + 64);
      v35 = *(v31 + 68);
      if (v36 == v35)
      {
        google::protobuf::RepeatedField<long long>::Grow(v31 + 64, v35);
        v36 = *(v31 + 64);
      }

      v37 = *(v31 + 72);
      *(v31 + 64) = v36 + 1;
      *(v37 + 8 * v36) = 0;
      if (*(v6 + 60) == 12)
      {
        v38 = *(v6 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v6);
        *(v6 + 60) = 12;
        v39 = *(v6 + 8);
        if (v39)
        {
          v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
        }

        v38 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v39);
        *(v6 + 48) = v38;
      }

      v41 = *(v38 + 64);
      v40 = *(v38 + 68);
      v42 = (v38 + 64);
      if (v41 == v40)
      {
        google::protobuf::RepeatedField<long long>::Grow(v38 + 64, v40);
        v78 = *v42;
        v79 = *(v38 + 72);
        *(v38 + 64) = *v42 + 1;
        *(v79 + 8 * v78) = 0;
        if ((v84 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v43 = *(v38 + 72);
        *(v38 + 64) = v41 + 1;
        *(v43 + 8 * v41) = 0;
        if ((v84 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      v44 = __p[0];
      goto LABEL_109;
    }

    if (!*(a2 + 16))
    {
      if (v7 == 12)
      {
        if (*(*(a2 + 48) + 64) != 4)
        {
          goto LABEL_12;
        }

LABEL_57:
        LODWORD(v17) = operations_research::sat::PresolveContext::NewBoolVar(a3);
        v12 = 0;
LABEL_58:
        v47 = *(v6 + 16);
        if (v47)
        {
          if ((v47 & 0x80000000) == 0)
          {
            v48 = *(v6 + 24);
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v46 = v17;
        goto LABEL_62;
      }

      if (dword_2810BEE88 == 4)
      {
        goto LABEL_57;
      }
    }

LABEL_12:
    v10 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v11 = v10;
    if (*(v10 + 60) == 3)
    {
      v12 = *(v10 + 48);
      v13 = *(v6 + 16);
      if (v13)
      {
        goto LABEL_14;
      }

LABEL_55:
      v46 = 0;
LABEL_62:
      v49 = 0;
      *&v81[8] = 0;
      v50 = 0;
      *(v6 + 16) = 0;
      v80 = v46;
      *v81 = ~v46;
      v83 = v6;
      while (1)
      {
        if (*(v6 + 60) == 12)
        {
          v51 = *(v6 + 48);
          if (v50 >= *(v51 + 64))
          {
            goto LABEL_107;
          }

          v52 = *(v51 + 72);
          v53 = *(v52 + 8 * v50);
          v54 = *(v52 + 8 * (v50 + 1));
          if (v12)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v50 >= dword_2810BEE88)
          {
LABEL_107:
            operations_research::sat::ConstraintProto::Clear(v6);
            if (*&v81[4])
            {
              v44 = *&v81[4];
LABEL_109:
              operator delete(v44);
            }

LABEL_110:
            operator new();
          }

          v53 = *(off_2810BEE90 + v50);
          v54 = *(off_2810BEE90 + v50 + 1);
          if (v12)
          {
LABEL_67:
            v55 = operations_research::sat::PresolveContext::NewBoolVar(a3);
            v56 = v55;
            v58 = *(v12 + 4);
            v57 = *(v12 + 5);
            if (v58 == v57)
            {
              google::protobuf::RepeatedField<int>::Grow(v12 + 2, v57, (v57 + 1));
              v65 = *(v12 + 4);
              v66 = v12[3];
              *(v12 + 4) = v65 + 1;
              *(v66 + 4 * v65) = v56;
            }

            else
            {
              v59 = v12[3];
              *(v12 + 4) = v58 + 1;
              *(v59 + 4 * v58) = v55;
            }

            v67 = v49 - *&v81[4];
            v68 = (v49 - *&v81[4]) >> 2;
            v69 = v68 + 1;
            if ((v68 + 1) >> 62)
            {
LABEL_116:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (-*&v81[4] >> 1 > v69)
            {
              v69 = -*&v81[4] >> 1;
            }

            if (-*&v81[4] >= 0x7FFFFFFFFFFFFFFCuLL)
            {
              v70 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              if (!(v70 >> 62))
              {
                operator new();
              }

              goto LABEL_117;
            }

            v71 = (4 * v68);
            *v71 = v56;
            v49 = v71 + 1;
            memcpy(0, *&v81[4], v67);
            if (*&v81[4])
            {
              operator delete(*&v81[4]);
            }

            goto LABEL_97;
          }
        }

        if (v50)
        {
          v56 = *v81;
          goto LABEL_98;
        }

        v60 = v49 - *&v81[4];
        v61 = (v49 - *&v81[4]) >> 2;
        v62 = v61 + 1;
        if ((v61 + 1) >> 62)
        {
          goto LABEL_116;
        }

        if (-*&v81[4] >> 1 > v62)
        {
          v62 = -*&v81[4] >> 1;
        }

        if (-*&v81[4] >= 0x7FFFFFFFFFFFFFFCuLL)
        {
          v63 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v62;
        }

        if (v63)
        {
          if (!(v63 >> 62))
          {
            operator new();
          }

LABEL_117:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v64 = (4 * v61);
        *v64 = v80;
        v49 = v64 + 1;
        memcpy(0, *&v81[4], v60);
        if (*&v81[4])
        {
          operator delete(*&v81[4]);
        }

        v56 = v80;
LABEL_97:
        *&v81[4] = 0;
LABEL_98:
        v72 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        operations_research::sat::ConstraintProto::CopyFrom(v72, v83);
        v74 = *(v72 + 16);
        v73 = *(v72 + 20);
        if (v74 == v73)
        {
          google::protobuf::RepeatedField<int>::Grow(v72 + 16, v73, (v73 + 1));
          v74 = *(v72 + 16);
        }

        v75 = *(v72 + 24);
        *(v72 + 16) = v74 + 1;
        *(v75 + 4 * v74) = v56;
        operations_research::Domain::Domain(&v84, v53, v54);
        v6 = v83;
        if (*(v72 + 60) == 12)
        {
          v76 = *(v72 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v72);
          *(v72 + 60) = 12;
          v77 = *(v72 + 8);
          if (v77)
          {
            v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
          }

          v76 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v77);
          *(v72 + 48) = v76;
        }

        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v84, v76);
        if (v84)
        {
          operator delete(__p[0]);
        }

        v50 += 2;
      }
    }

    operations_research::sat::ConstraintProto::clear_constraint(v10);
    *(v11 + 60) = 3;
    v45 = *(v11 + 8);
    if (v45)
    {
      v12 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v45 & 0xFFFFFFFFFFFFFFFELL));
      *(v11 + 48) = v12;
      v13 = *(v6 + 16);
      if (!v13)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v12 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v45);
      *(v11 + 48) = v12;
      v13 = *(v6 + 16);
      if (!v13)
      {
        goto LABEL_55;
      }
    }

LABEL_14:
    v14 = *(v6 + 24);
    v15 = *(v12 + 4);
    v16 = *(v12 + 5);
    v17 = 4 * v13;
    do
    {
      v18 = *v14;
      if (v15 == v16)
      {
        google::protobuf::RepeatedField<int>::Grow(v12 + 2, v15, (v15 + 1));
        LODWORD(v15) = *(v12 + 4);
        v16 = *(v12 + 5);
      }

      v19 = v12[3];
      *(v12 + 4) = v15 + 1;
      *(v19 + 4 * v15) = ~v18;
      ++v14;
      v15 = (v15 + 1);
      v17 -= 4;
    }

    while (v17);
    goto LABEL_58;
  }

  return this;
}

void sub_23CA1ECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    if (!a13)
    {
      goto LABEL_7;
    }
  }

  else if (!a13)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

  operator delete(a13);
  goto LABEL_7;
}

void operations_research::sat::anonymous namespace::ExpandAutomaton(operations_research::sat::_anonymous_namespace_ *this, operations_research::sat::ConstraintProto *a2, operations_research::sat::PresolveContext *a3)
{
  if (*(this + 15) == 17)
  {
    v5 = *(this + 6);
    if (*(v5 + 112))
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = *(v5 + 16);
    if (v11)
    {
      v12 = *(v5 + 24);
      v13 = 8 * v11;
      do
      {
        if (*(v5 + 136) == *v12)
        {
          operator new();
        }

        ++v12;
        v13 -= 8;
      }

      while (v13);
    }

    v14 = "automaton: empty with an initial state not in the final states.";
    v15 = a2;
    v16 = 63;
    goto LABEL_16;
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 17;
  v10 = *(this + 1);
  if (v10)
  {
    v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AutomatonConstraintProto>(v10);
  *(this + 6) = v5;
  if (!*(v5 + 112))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!*(v5 + 88))
  {
    v14 = "automaton: non-empty with no transition.";
    v15 = a2;
    v16 = 40;
LABEL_16:

    operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v15, v14, v16);
    return;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  operations_research::sat::PropagateAutomaton(v5, a2, &v39, &v36);
  *__p = xmmword_23CE306D0;
  v32 = xmmword_23CE306D0;
  v30 = xmmword_23CE306D0;
  v29 = 0;
  v8 = *(v5 + 112);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *(v5 + 120);
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v29)
  {
    operator new();
  }

  v28[23] = 19;
  strcpy(v28, "automaton: expanded");
  operations_research::sat::PresolveContext::UpdateRuleStats(a2, v28, 1, v6, v7);
  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  operations_research::sat::ConstraintProto::Clear(this);
  if (v30 >= 2)
  {
    operator delete((v31 - (BYTE8(v30) & 1) - 8));
    if (v32 < 2)
    {
      goto LABEL_33;
    }

LABEL_27:
    operator delete((v33 - (BYTE8(v32) & 1) - 8));
    if (__p[0] < 2)
    {
      goto LABEL_34;
    }

LABEL_28:
    operator delete((v35 - (__p[1] & 1) - 8));
    v17 = v36;
    if (v36)
    {
      goto LABEL_35;
    }

LABEL_29:
    v18 = v39;
    if (!v39)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v32 >= 2)
  {
    goto LABEL_27;
  }

LABEL_33:
  if (__p[0] >= 2)
  {
    goto LABEL_28;
  }

LABEL_34:
  v17 = v36;
  if (!v36)
  {
    goto LABEL_29;
  }

LABEL_35:
  v19 = v37;
  v20 = v17;
  if (v37 != v17)
  {
    v21 = v37;
    do
    {
      v22 = *(v21 - 32);
      v21 -= 32;
      if (v22 >= 2)
      {
        operator delete((*(v19 - 16) - (*(v19 - 24) & 1) - 8));
      }

      v19 = v21;
    }

    while (v21 != v17);
    v20 = v36;
  }

  v37 = v17;
  operator delete(v20);
  v18 = v39;
  if (v39)
  {
LABEL_42:
    v23 = v40;
    v24 = v18;
    if (v40 != v18)
    {
      v25 = v40;
      do
      {
        v26 = *(v25 - 32);
        v25 -= 32;
        if (v26 >= 2)
        {
          operator delete((*(v23 - 16) - (*(v23 - 24) & 1) - 8));
        }

        v23 = v25;
      }

      while (v25 != v18);
      v24 = v39;
    }

    v40 = v18;
    operator delete(v24);
  }
}

void sub_23CA21DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    operator delete(a67);
    v72 = a70;
    if (!a70)
    {
LABEL_3:
      v73 = STACK[0x200];
      if (!STACK[0x200])
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v72 = a70;
    if (!a70)
    {
      goto LABEL_3;
    }
  }

  operator delete(v72);
  v73 = STACK[0x200];
  if (!STACK[0x200])
  {
LABEL_5:
    if (a30)
    {
      operator delete(a30);
      if (STACK[0x220] < 2)
      {
LABEL_7:
        if (STACK[0x240] < 2)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

    else if (STACK[0x220] < 2)
    {
      goto LABEL_7;
    }

    operator delete((STACK[0x230] - (STACK[0x228] & 1) - 8));
    if (STACK[0x240] < 2)
    {
LABEL_8:
      if (STACK[0x260] < 2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_13:
    operator delete((STACK[0x250] - (STACK[0x248] & 1) - 8));
    if (STACK[0x260] < 2)
    {
LABEL_10:
      std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100]((v70 - 248));
      std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100]((v70 - 224));
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete((STACK[0x270] - (STACK[0x268] & 1) - 8));
    goto LABEL_10;
  }

LABEL_4:
  operator delete(v73);
  goto LABEL_5;
}

void operations_research::sat::anonymous namespace::ExpandPositiveTable(operations_research::sat::_anonymous_namespace_ *this, operations_research::sat::ConstraintProto *a2, operations_research::sat::PresolveContext *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 15) == 16)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = &operations_research::sat::_TableConstraintProto_default_instance_;
  }

  v4 = *(v3 + 10);
  v5 = v3[3];
  if ((v3[2] & 0x80000000) == 0)
  {
    operator new();
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void sub_23CA25F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(v49 - 256);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(v49 - 224);
  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100](&a32);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a35);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

operations_research::sat::ConstraintProto *operations_research::sat::FinalExpansionForLinearConstraint(operations_research::sat::ConstraintProto *this, operations_research::sat::PresolveContext *a2, __n128 a3, uint64_t a4, operations_research::sat::PresolveContext *a5)
{
  if ((*(*(this + 49) + 317) & 1) == 0)
  {
    v5 = this;
    if ((*(this + 416) & 1) == 0)
    {
      v6 = *this;
      if (*(*this + 56) >= 1)
      {
        v7 = 0;
        v8 = 8;
        do
        {
          v9 = v6 + 48;
          v10 = *(v6 + 48);
          if (v10)
          {
            v9 = v10 + v8 - 1;
          }

          v11 = *v9;
          if (*(*v9 + 60) == 12 && *(*(v11 + 48) + 64) >= 3)
          {
            v6 = *v5;
          }

          ++v7;
          v8 += 8;
        }

        while (v7 < *(v6 + 56));
      }
    }
  }

  return this;
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(uint64_t *a1, unint64_t a2)
{
  *&result = 1;
  *a1 = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(a1, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

void *operations_research::sat::ConstraintProto::mutable_BOOL_or(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 3)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 3;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

uint64_t operations_research::sat::BoolArgumentProto::add_literals(uint64_t this, int a2)
{
  v2 = (this + 16);
  v3 = *(this + 16);
  v4 = v3;
  if (v3 == HIDWORD(v3))
  {
    v6 = this;
    v7 = a2;
    google::protobuf::RepeatedField<int>::Grow(this + 16, HIDWORD(v3), (HIDWORD(v3) + 1));
    this = v6;
    a2 = v7;
    v4 = *v2;
  }

  v5 = *(this + 24);
  *(this + 16) = v4 + 1;
  *(v5 + 4 * v4) = a2;
  return this;
}

uint64_t operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(uint64_t *a1, uint64_t a2)
{
  *(a2 + 64) = 0;
  v2 = (a2 + 64);
  v3 = *a1;
  v4 = *a1 >> 1;
  if (*(a2 + 68) < v4)
  {
    v21 = a2;
    google::protobuf::RepeatedField<long long>::Grow(a2 + 64, 0);
    a2 = v21;
    v4 = *a1 >> 1;
    result = (a1 + 1);
    if (*a1)
    {
      v8 = a1[1];
    }

    else
    {
      v8 = a1 + 1;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }
  }

  else
  {
    v7 = a1[1];
    result = (a1 + 1);
    v6 = v7;
    if (v3)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }
  }

  v9 = &v8[2 * v4];
  v10 = *(a2 + 64);
  do
  {
    while (1)
    {
      v11 = *v8;
      v12 = *(a2 + 68);
      if (v10 == v12)
      {
        v16 = a2;
        result = google::protobuf::RepeatedField<long long>::Grow(v2, v10);
        a2 = v16;
        LODWORD(v10) = *(v16 + 64);
        v12 = *(v16 + 68);
      }

      v13 = *(a2 + 72);
      v14 = v10 + 1;
      *(a2 + 64) = v10 + 1;
      *(v13 + 8 * v10) = v11;
      v15 = v8[1];
      if (v10 + 1 == v12)
      {
        break;
      }

      v10 = (v10 + 2);
      *v2 = v10;
      *(v13 + 8 * v14) = v15;
      v8 += 2;
      if (v8 == v9)
      {
        return result;
      }
    }

    v17 = a2;
    result = google::protobuf::RepeatedField<long long>::Grow(v2, v12);
    a2 = v17;
    v18 = *(v17 + 64);
    v19 = *(v17 + 72);
    v10 = (v18 + 1);
    *v2 = v10;
    *(v19 + 8 * v18) = v15;
    v8 += 2;
  }

  while (v8 != v9);
  return result;
}

uint64_t operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 384);
  if (*v4 == 1)
  {
    v10[0] = "INFEASIBLE: '";
    v10[1] = 13;
    v9[0] = a2;
    v9[1] = a3;
    v8[0] = "'";
    v8[1] = 1;
    absl::lts_20240722::StrCat(v10, v9, v8, &__p);
    operations_research::SolverLogger::LogInfo(v4, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.h", 273, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(a1 + 416) = 1;
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23CA26808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::find_or_prepare_insert<std::pair<int,int>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 12 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 12 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  if (v5)
  {
    *&v7 = *(a1 + 16);
    DWORD2(v7) = *(a1 + 24);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,false,true,4ul>(&v7, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

void operations_research::sat::anonymous namespace::ExpandIntProdWithBoolean(operations_research::sat::_anonymous_namespace_ *this, operations_research::sat *a2, const operations_research::sat::LinearExpressionProto *a3, const operations_research::sat::LinearExpressionProto *a4, operations_research::sat::PresolveContext *a5)
{
  v8 = this;
  v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v11 = v9;
  v12 = (v9 + 16);
  v13.n128_u64[0] = *(v9 + 16);
  v14 = v13.n128_u32[0];
  if (v13.n128_u32[0] == v13.n128_u32[1])
  {
    google::protobuf::RepeatedField<int>::Grow(v9 + 16, v13.n128_u32[1], v13.n128_u32[1] + 1);
    v14 = *v12;
  }

  v15 = *(v11 + 24);
  *(v11 + 16) = v14 + 1;
  *(v15 + 4 * v14) = v8;
  if (*(v11 + 60) == 12)
  {
    v16 = *(v11 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v11);
    *(v11 + 60) = 12;
    v17 = *(v11 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v17);
    *(v11 + 48) = v16;
  }

  v19 = *(v16 + 64);
  v18 = *(v16 + 68);
  v20 = (v16 + 64);
  if (v19 == v18)
  {
    v58 = v16;
    google::protobuf::RepeatedField<long long>::Grow(v16 + 64, v18);
    v16 = v58;
    v19 = *v20;
  }

  v21 = *(v16 + 72);
  *(v16 + 64) = v19 + 1;
  *(v21 + 8 * v19) = 0;
  if (*(v11 + 60) == 12)
  {
    v22 = *(v11 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v11);
    *(v11 + 60) = 12;
    v23 = *(v11 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v23);
    *(v11 + 48) = v22;
  }

  v25 = *(v22 + 64);
  v24 = *(v22 + 68);
  v26 = (v22 + 64);
  if (v25 == v24)
  {
    v59 = v22;
    google::protobuf::RepeatedField<long long>::Grow(v22 + 64, v24);
    v22 = v59;
    v25 = *v26;
  }

  v27 = *(v22 + 72);
  *(v22 + 64) = v25 + 1;
  *(v27 + 8 * v25) = 0;
  if (*(v11 + 60) != 12)
  {
    operations_research::sat::ConstraintProto::clear_constraint(v11);
    *(v11 + 60) = 12;
    v32 = *(v11 + 8);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v32);
    *(v11 + 48) = v33;
    operations_research::sat::AddLinearExpressionToLinearConstraint(a2, 1, v33, v34, v35);
    if (*(v11 + 60) != 12)
    {
      goto LABEL_19;
    }

LABEL_25:
    v31 = *(v11 + 48);
    goto LABEL_26;
  }

  operations_research::sat::AddLinearExpressionToLinearConstraint(a2, 1, *(v11 + 48), v10, v13);
  if (*(v11 + 60) == 12)
  {
    goto LABEL_25;
  }

LABEL_19:
  operations_research::sat::ConstraintProto::clear_constraint(v11);
  *(v11 + 60) = 12;
  v30 = *(v11 + 8);
  if (v30)
  {
    v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
  }

  v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v30);
  *(v11 + 48) = v31;
LABEL_26:
  operations_research::sat::AddLinearExpressionToLinearConstraint(a3, 0xFFFFFFFFFFFFFFFFLL, v31, v28, v29);
  v36 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v38 = v36;
  v39 = ~v8;
  v40 = (v36 + 16);
  v41.n128_u64[0] = *(v36 + 16);
  v42 = v41.n128_u32[0];
  if (v41.n128_u32[0] == v41.n128_u32[1])
  {
    google::protobuf::RepeatedField<int>::Grow(v36 + 16, v41.n128_u32[1], v41.n128_u32[1] + 1);
    v42 = *v40;
  }

  v43 = *(v38 + 24);
  *(v38 + 16) = v42 + 1;
  *(v43 + 4 * v42) = v39;
  if (*(v38 + 60) == 12)
  {
    v44 = *(v38 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v38);
    *(v38 + 60) = 12;
    v45 = *(v38 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v45);
    *(v38 + 48) = v44;
  }

  v47 = *(v44 + 64);
  v46 = *(v44 + 68);
  v48 = (v44 + 64);
  if (v47 == v46)
  {
    v60 = v44;
    google::protobuf::RepeatedField<long long>::Grow(v44 + 64, v46);
    v44 = v60;
    v47 = *v48;
  }

  v49 = *(v44 + 72);
  *(v44 + 64) = v47 + 1;
  *(v49 + 8 * v47) = 0;
  if (*(v38 + 60) == 12)
  {
    v50 = *(v38 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v38);
    *(v38 + 60) = 12;
    v51 = *(v38 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v51);
    *(v38 + 48) = v50;
  }

  v53 = *(v50 + 64);
  v52 = *(v50 + 68);
  v54 = (v50 + 64);
  if (v53 == v52)
  {
    v61 = v50;
    google::protobuf::RepeatedField<long long>::Grow(v50 + 64, v52);
    v50 = v61;
    v53 = *v54;
  }

  v55 = *(v50 + 72);
  *(v50 + 64) = v53 + 1;
  *(v55 + 8 * v53) = 0;
  if (*(v38 + 60) == 12)
  {
    v56 = *(v38 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v38);
    *(v38 + 60) = 12;
    v57 = *(v38 + 8);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v57);
    *(v38 + 48) = v56;
  }

  operations_research::sat::AddLinearExpressionToLinearConstraint(a3, 1, v56, v37, v41);
}

void *std::deque<operations_research::sat::LinearExpressionProto>::__append_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<operations_research::sat::LinearExpressionProto const>>(void *result, const operations_research::sat::LinearExpressionProto **a2, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 51 * ((v7 - v6) >> 3) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    result = std::deque<operations_research::sat::LinearExpressionProto>::__add_back_capacity(result, a3 - v11);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v12 = (v6 + 8 * (v10 / 0x33));
  if (v7 != v6)
  {
    v13 = *v12 + 80 * (v10 % 0x33);
    v14 = v13;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_12:
    v16 = (v6 + 8 * (v10 / 0x33));
    if (v13 != v14)
    {
      goto LABEL_15;
    }

    return result;
  }

  v13 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_8:
  v15 = a3 - 0x3333333333333333 * ((v14 - *v12) >> 4);
  if (v15 < 1)
  {
    v17 = 50 - v15;
    v18 = ((v17 * 0x5F5F5F5F5F5F5F5FLL) >> 64) - v17;
    v16 = &v12[(v18 >> 5) + (v18 >> 63)];
    v14 = *v16 + 80 * (51 * (v17 / 51) - v17) + 4000;
    if (v13 != v14)
    {
      do
      {
LABEL_15:
        v19 = v14;
        if (v12 != v16)
        {
          v19 = *v12 + 4080;
        }

        if (v13 == v19)
        {
          v5[5] = v9;
          if (v12 == v16)
          {
            return result;
          }
        }

        else
        {
          v20 = 0;
          result = v13;
          do
          {
            result = (operations_research::sat::LinearExpressionProto::LinearExpressionProto(result, 0, *a2++) + 80);
            v20 -= 80;
          }

          while (result != v19);
          v9 = v5[5] - 0x3333333333333333 * ((v19 - v13) >> 4);
          v5[5] = v9;
          if (v12 == v16)
          {
            return result;
          }
        }

        v21 = v12[1];
        ++v12;
        v13 = v21;
      }

      while (v21 != v14);
    }
  }

  else
  {
    v16 = &v12[v15 / 0x33uLL];
    v14 = *v16 + 80 * (v15 % 0x33uLL);
    if (v13 != v14)
    {
      goto LABEL_15;
    }
  }

  return result;
}

void *std::deque<operations_research::sat::LinearExpressionProto>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x33)
  {
    v5 = v4 / 0x33 + 1;
  }

  else
  {
    v5 = v4 / 0x33;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x33)
  {
    v7 = v6 / 0x33;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x33)
  {
    for (result[4] = v6 - 51 * v7; v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 51 * v7; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  return result;
}

void sub_23CA27B38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<operations_research::sat::LinearExpressionProto>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x33;
  v3 = v1 - 51;
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
  return std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v11);
}

void sub_23CA27F18(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<operations_research::sat::LinearExpressionProto>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x33];
    v6 = (*v5 + 80 * (v4 % 0x33));
    v7 = v2[(*(a1 + 40) + v4) / 0x33] + 80 * ((*(a1 + 40) + v4) % 0x33);
    if (v6 != v7)
    {
      do
      {
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v6);
        v6 = (v8 + 80);
        if (v6 - *v5 == 4080)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 25;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 51;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      do
      {
        v13 -= 8;
      }

      while (v13 != v14);
      *(a1 + 16) = v13;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::BoolArgumentProto *>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::BoolArgumentProto *>>>::find_or_prepare_insert<long long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::BoolArgumentProto *>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::BoolArgumentProto *>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::BoolArgumentProto *>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::BoolArgumentProto *>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::BoolArgumentProto *>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::BoolArgumentProto *>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = a1[3];
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v8, a1);
}

uint64_t operations_research::sat::anonymous namespace::ExpandInverse(operations_research::sat::ConstraintProto *,operations_research::sat::PresolveContext *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) < 1)
  {
    return 1;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = 0;
  while (2)
  {
    *(*(v5 + 16) + 8) = **(v5 + 16);
    operations_research::sat::PresolveContext::DomainOf(*v5, *(*(v4 + 8) + 4 * v6), &v41);
    if (v41 <= 1)
    {
      goto LABEL_46;
    }

    v7 = ((v41 & 1) != 0 ? v42[0] : v42);
    v8 = *v7;
    v9 = ((v41 & 1) != 0 ? v42[0] : v42);
    if ((v41 & 0x1FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_46;
    }

    v10 = 0;
    v11 = &v9[2 * (v41 >> 1)];
    do
    {
      operations_research::sat::PresolveContext::DomainOf(*v5, *(*(v3 + 8) + 4 * v8), &v39);
      v12 = operations_research::Domain::Contains(&v39, v6);
      if (v39)
      {
        operator delete(__p);
      }

      if (v12)
      {
        v13 = *(v5 + 16);
        v15 = *(v13 + 8);
        v14 = *(v13 + 16);
        if (v15 >= v14)
        {
          v16 = v6;
          v17 = v10;
          v18 = *v13;
          v19 = v15 - *v13;
          v20 = v19 >> 3;
          v21 = (v19 >> 3) + 1;
          if (v21 >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v22 = v14 - v18;
          if (v22 >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v20) = v8;
          v24 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          *v13 = 0;
          *(v13 + 8) = v24;
          *(v13 + 16) = 0;
          if (v18)
          {
            operator delete(v18);
          }

          v10 = v17;
          v6 = v16;
          v5 = a1;
          v3 = a3;
          *(v13 + 8) = v24;
          if (v8 != v9[1])
          {
LABEL_13:
            ++v8;
            continue;
          }
        }

        else
        {
          *v15 = v8;
          *(v13 + 8) = v15 + 1;
          if (v8 != v9[1])
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v10 = 1;
        if (v8 != v9[1])
        {
          goto LABEL_13;
        }
      }

      v9 += 2;
      if (v9 != v11)
      {
        v8 = *v9;
      }
    }

    while (v9 != v11);
    v4 = a2;
    if ((v10 & 1) == 0)
    {
      goto LABEL_46;
    }

    v25 = *v5;
    v26 = *(*(a2 + 8) + 4 * v6);
    v27 = *(v5 + 16);
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v29 = *v27;
    v28 = v27[1];
    if (v28 != v29)
    {
      if (((v28 - v29) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    operations_research::Domain::FromValues(&v36, &v39);
    v30 = operations_research::sat::PresolveContext::IntersectDomainWith(v25, v26, &v39, 0);
    if (v39)
    {
      operator delete(__p);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v30)
    {
LABEL_46:
      if (v41)
      {
        operator delete(v42[0]);
      }

      if (++v6 >= *(v5 + 8))
      {
        return 1;
      }

      continue;
    }

    break;
  }

  if (dword_27E25CB70 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_ZZZZN19operations_research3sat12_GLOBAL__N_113ExpandInverseEPNS0_15ConstraintProtoEPNS0_15PresolveContextEENK3__0clIN6google8protobuf13RepeatedFieldIiEESB_EEDaRKT_RKT0_ENKUlvE_clEvE4site, dword_27E25CB70))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 429);
    v32 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v39, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v39);
  }

  if (v41)
  {
    operator delete(v42[0]);
  }

  return 0;
}

void sub_23CA28964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *__p)
{
  if (a20)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::AddImplyInReachableValues(int a1, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  std::__sort<std::__less<long long,long long> &,long long *>();
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v12 = v10 + 1;
    while (v12 != v11)
    {
      v13 = *(v12 - 1);
      v14 = *v12++;
      if (v13 == v14)
      {
        v15 = v12 - 2;
        while (v12 != v11)
        {
          v16 = v13;
          v13 = *v12;
          if (v16 != *v12)
          {
            v15[1] = v13;
            ++v15;
          }

          ++v12;
        }

        if (v15 + 1 != v11)
        {
          v11 = v15 + 1;
          a2[1] = v15 + 1;
        }

        break;
      }
    }
  }

  v17 = v11 - v10;
  v18 = a3[1];
  if (v17 != v18 >> 1)
  {
    if (v17 > v18 >> 2)
    {
      if (v11 - v10 == 56)
      {
        v52 = 8;
      }

      else
      {
        v52 = (v17 - 1) / 7 + v17;
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(v82, v52);
      while (v10 != v11)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(v82, v10, v85);
        if (v87 == 1)
        {
          *v86 = *v10;
        }

        ++v10;
      }

      v53 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v54 = v53;
      v56 = *(v53 + 16);
      v55 = *(v53 + 20);
      v57 = (v53 + 16);
      if (v56 == v55)
      {
        google::protobuf::RepeatedField<int>::Grow(v53 + 16, v55, (v55 + 1));
        v56 = *v57;
      }

      v58 = *(v54 + 24);
      *(v54 + 16) = v56 + 1;
      *(v58 + 4 * v56) = a1;
      if (*(v54 + 60) == 4)
      {
        v59 = *(v54 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v54);
        *(v54 + 60) = 4;
        v60 = *(v54 + 8);
        if (v60)
        {
          v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
        }

        v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v60);
        *(v54 + 48) = v59;
      }

      if (a3[1] >= 2)
      {
        v61 = a3 + 2;
        if (*a3 >= 2)
        {
          v62 = a3[2];
          v61 = a3[3];
          if (*v62 <= -2)
          {
            do
            {
              v63 = __clz(__rbit64((*v62 | ~(*v62 >> 7)) & 0x101010101010101)) >> 3;
              v62 = (v62 + v63);
              v61 += 2 * v63;
            }

            while (*v62 < -1);
          }
        }

        else
        {
          v62 = &absl::lts_20240722::container_internal::kSooControl;
        }

        do
        {
          v64 = *v61;
          v65 = *(v61 + 2);
          if (v82[0] > 1uLL)
          {
            v73 = 0;
            _X11 = v83;
            __asm { PRFM            #4, [X11] }

            v76 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v64) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v64));
            v77 = vdup_n_s8(v76 & 0x7F);
            v78 = ((v76 >> 7) ^ (v83 >> 12)) & v82[0];
            v79 = *(v83 + v78);
            v80 = vceq_s8(v79, v77);
            if (!v80)
            {
              goto LABEL_77;
            }

LABEL_75:
            while (*(v84 + 8 * ((v78 + (__clz(__rbit64(v80)) >> 3)) & v82[0])) != v64)
            {
              v80 &= ((v80 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v80)
              {
LABEL_77:
                while (!*&vceq_s8(v79, 0x8080808080808080))
                {
                  v73 += 8;
                  v78 = (v73 + v78) & v82[0];
                  v79 = *(v83 + v78);
                  v80 = vceq_s8(v79, v77);
                  if (v80)
                  {
                    goto LABEL_75;
                  }
                }

                goto LABEL_67;
              }
            }
          }

          else if (v82[1] < 2uLL || v83 != v64)
          {
LABEL_67:
            v68 = *(v59 + 4);
            v67 = *(v59 + 5);
            if (v68 == v67)
            {
              v81 = v59;
              google::protobuf::RepeatedField<int>::Grow(v59 + 2, v67, (v67 + 1));
              v59 = v81;
              v68 = *(v81 + 4);
            }

            v69 = v59[3];
            *(v59 + 4) = v68 + 1;
            *(v69 + 4 * v68) = ~v65;
          }

          v71 = *(v62 + 1);
          v62 = (v62 + 1);
          LOBYTE(v70) = v71;
          v61 += 2;
          if (v71 <= -2)
          {
            do
            {
              v72 = __clz(__rbit64((*v62 | ~(*v62 >> 7)) & 0x101010101010101)) >> 3;
              v62 = (v62 + v72);
              v61 += 2 * v72;
              v70 = *v62;
            }

            while (v70 < -1);
          }
        }

        while (v70 != 255);
      }
    }

    else
    {
      v19 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v20 = v19;
      v21 = (v19 + 16);
      v22 = *(v19 + 16);
      v23 = HIDWORD(v22);
      v24 = v22;
      if (v22 == HIDWORD(v22))
      {
        google::protobuf::RepeatedField<int>::Grow(v19 + 16, HIDWORD(v22), (HIDWORD(v22) + 1));
        v24 = *v21;
      }

      v25 = *(v20 + 24);
      *(v20 + 16) = v24 + 1;
      *(v25 + 4 * v24) = a1;
      if (*(v20 + 60) == 3)
      {
        v26 = *(v20 + 48);
        v27 = *a2;
        v28 = a2[1];
        if (v27 == v28)
        {
          return;
        }
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v20);
        *(v20 + 60) = 3;
        v29 = *(v20 + 8);
        if (v29)
        {
          v26 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v29 & 0xFFFFFFFFFFFFFFFELL));
          *(v20 + 48) = v26;
          v27 = *a2;
          v28 = a2[1];
          if (v27 == v28)
          {
            return;
          }
        }

        else
        {
          v26 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v29);
          *(v20 + 48) = v26;
          v27 = *a2;
          v28 = a2[1];
          if (v27 == v28)
          {
            return;
          }
        }
      }

      v30 = a3 + 2;
      do
      {
        v31 = *v27;
        v32 = *a3;
        if (*a3 > 1)
        {
          v33 = 0;
          _X10 = *v30;
          __asm { PRFM            #4, [X10] }

          v39 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31));
          v40 = vdup_n_s8(v39 & 0x7F);
          v41 = ((v39 >> 7) ^ (*v30 >> 12)) & v32;
          v42 = *(*v30 + v41);
          v43 = vceq_s8(v42, v40);
          if (!v43)
          {
            goto LABEL_29;
          }

LABEL_26:
          v44 = a3[3];
          while (1)
          {
            v45 = (v41 + (__clz(__rbit64(v43)) >> 3)) & v32;
            if (*(v44 + 16 * v45) == v31)
            {
              break;
            }

            v43 &= ((v43 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v43)
            {
LABEL_29:
              while (!*&vceq_s8(v42, 0x8080808080808080))
              {
                v33 += 8;
                v41 = (v33 + v41) & v32;
                v42 = *(_X10 + v41);
                v43 = vceq_s8(v42, v40);
                if (v43)
                {
                  goto LABEL_26;
                }
              }

LABEL_84:
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v23);
            }
          }

          v31 = (v44 + 16 * v45);
          if (!(_X10 + v45))
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (a3[1] < 2)
          {
            goto LABEL_84;
          }

          if (*v30 == v31)
          {
            v31 = a3 + 2;
            v46 = &absl::lts_20240722::container_internal::kSooControl;
          }

          else
          {
            v46 = 0;
          }

          if (!v46)
          {
            goto LABEL_84;
          }
        }

        v47 = *(v31 + 2);
        v48 = v26[2];
        v23 = HIDWORD(v48);
        v49 = v48;
        if (v48 == HIDWORD(v48))
        {
          v51 = v26;
          google::protobuf::RepeatedField<int>::Grow(v26 + 2, HIDWORD(v48), (HIDWORD(v48) + 1));
          v26 = v51;
          v49 = *(v51 + 4);
        }

        v50 = v26[3];
        *(v26 + 4) = v49 + 1;
        *(v50 + 4 * v49) = v47;
        ++v27;
      }

      while (v27 != v28);
    }
  }
}

void sub_23CA29080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10 >= 2)
  {
    operator delete((a12 - (a11 & 1) - 8));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::LinkLiteralsAndValues(void *a1, uint64_t *a2, uint64_t *a3, operations_research::sat::PresolveContext *a4)
{
  v6 = (a1[1] - *a1) >> 2;
  v8 = *a2;
  v7 = a2[1];
  v9 = (v7 - *a2) >> 3;
  if (v6 != v9)
  {
  }

  __p = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  v64 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  v65 = 0;
  if (v7 != v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = a3 + 2;
    do
    {
      v15 = *a3;
      if (*a3 > 1)
      {
        v16 = 0;
        _X9 = a3[2];
        __asm { PRFM            #4, [X9] }

        v22 = *(v8 + 8 * v12);
        v23 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v22) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v22));
        v24 = (v23 >> 7) ^ (_X9 >> 12);
        v25 = vdup_n_s8(v23 & 0x7F);
        v26 = a3[3];
        v27 = v24 & v15;
        v28 = *(_X9 + v27);
        v29 = vceq_s8(v28, v25);
        if (!v29)
        {
          goto LABEL_10;
        }

LABEL_8:
        while (1)
        {
          v30 = (v27 + (__clz(__rbit64(v29)) >> 3)) & v15;
          if (*(v26 + 16 * v30) == v22)
          {
            break;
          }

          v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v29)
          {
LABEL_10:
            while (!*&vceq_s8(v28, 0x8080808080808080))
            {
              v16 += 8;
              v27 = (v16 + v27) & v15;
              v28 = *(_X9 + v27);
              v29 = vceq_s8(v28, v25);
              if (v29)
              {
                goto LABEL_8;
              }
            }

LABEL_59:
            absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v9);
          }
        }

        v31 = (v26 + 16 * v30);
        if (!(_X9 + v30))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (a3[1] < 2)
        {
          goto LABEL_59;
        }

        v31 = *v14;
        if (*v14 == *(v8 + 8 * v12))
        {
          v31 = v14;
          v32 = &absl::lts_20240722::container_internal::kSooControl;
        }

        else
        {
          v32 = 0;
        }

        if (!v32)
        {
          goto LABEL_59;
        }
      }

      v33 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(&__p, v31 + 2);
      std::vector<int>::push_back[abi:ne200100](v33, (*a1 + 4 * v12));
      v12 = ++v13;
      v8 = *a2;
    }

    while (v13 < ((a2[1] - *a2) >> 3));
    v34 = v64;
    v35 = *__p;
    v61 = v64[10];
    if (*__p != v64 || v64[10] != 0)
    {
      v37 = 0;
      do
      {
        v38 = &v35[32 * v37];
        v39 = *(v38 + 3);
        v40 = *(v38 + 4);
        if (v39 == v40)
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v62, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 759);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v62);
        }

        if (v40 - v39 == 4)
        {
          operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(a4, *(v38 + 4), *v39);
        }

        else
        {
          v44 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v45 = v44;
          if (*(v44 + 60) == 3)
          {
            v46 = *(v44 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v44);
            *(v45 + 60) = 3;
            v49 = *(v45 + 8);
            if (v49)
            {
              v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
            }

            v46 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v49);
            *(v45 + 48) = v46;
          }

          v50 = *(v38 + 4);
          v52 = *(v46 + 4);
          v51 = *(v46 + 5);
          v53 = (v46 + 2);
          if (v52 == v51)
          {
            google::protobuf::RepeatedField<int>::Grow(v46 + 2, v51, (v51 + 1));
            v52 = *v53;
          }

          v54 = v46[3];
          *(v46 + 4) = v52 + 1;
          *(v54 + 4 * v52) = ~v50;
          v56 = *(v38 + 3);
          for (i = *(v38 + 4); v56 != i; ++v56)
          {
            v57 = *v56;
            v59 = *(v46 + 4);
            v58 = *(v46 + 5);
            if (v59 == v58)
            {
              google::protobuf::RepeatedField<int>::Grow(v46 + 2, v58, (v58 + 1));
              v59 = *v53;
            }

            v60 = v46[3];
            *(v46 + 4) = v59 + 1;
            *(v60 + 4 * v59) = v57;
            operations_research::sat::PresolveContext::AddImplication(a4, v57, *(v38 + 4));
          }
        }

        if (v35[11])
        {
          if (++v37 == v35[10])
          {
            v41 = v35;
            while (1)
            {
              v42 = *v41;
              if (*(*v41 + 11))
              {
                break;
              }

              v43 = v41[8];
              v41 = *v41;
              if (v43 != v42[10])
              {
                v35 = v42;
                v37 = v43;
                break;
              }
            }
          }
        }

        else
        {
          v47 = &v35[8 * (v37 + 1) + 240];
          do
          {
            v35 = *v47;
            v48 = *(*v47 + 11);
            v47 = *v47 + 240;
          }

          while (!v48);
          v37 = 0;
        }
      }

      while (v35 != v34 || v37 != v61);
    }
  }

  if (v65)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(__p);
  }
}

void sub_23CA29508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void sub_23CA2951C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void sub_23CA29530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void sub_23CA29544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void sub_23CA29558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void sub_23CA2956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void **std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v6 = *(v5 - 4);
        v5 -= 32;
        if (v6 >= 2)
        {
          operator delete((*(v3 - 2) - (*(v3 - 3) & 1) - 8));
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::anonymous namespace::ExpandAutomaton(operations_research::sat::ConstraintProto *,operations_research::sat::PresolveContext *)::UniqueDetector>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::anonymous namespace::ExpandAutomaton(operations_research::sat::ConstraintProto *,operations_research::sat::PresolveContext *)::UniqueDetector>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,true,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::TransferRelocatable<24ul>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  result = *(a3 + 8);
  *(a2 + 1) = result;
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::raw_hash_set(uint64_t *a1, unint64_t *a2)
{
  v4 = a2[1] >> 1;
  if (v4 == 7)
  {
    v5 = 8;
  }

  else
  {
    v5 = (v4 - 1) / 7 + v4;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::raw_hash_set(a1, v5);
  v6 = a2[1];
  if (v6 >= 2)
  {
    if (v6 > 3)
    {
      v10 = v6 >> 1;
      v11 = *a1;
      if (*a1 > 8)
      {
        v24 = *a2;
        v27 = a2 + 2;
        v25 = a2[2];
        v26 = v27[1];
        if (v24 >= 7)
        {
          v47 = v6 >> 1;
          do
          {
            v48 = *v25 & 0x8080808080808080;
            if (v48 != 0x8080808080808080)
            {
              v49 = v48 ^ 0x8080808080808080;
              do
              {
                v50 = __clz(__rbit64(v49)) >> 3;
                v51 = v26 + 16 * v50;
                first_non = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v51) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v51)));
                v53 = *(v25 + v50);
                v54 = a1[2];
                *(v54 + first_non) = v53;
                *(v54 + (*a1 & (first_non - 7)) + (*a1 & 7)) = v53;
                v55 = a1[3] + 16 * first_non;
                *v55 = *v51;
                *(v55 + 8) = *(v51 + 8);
                --v47;
                v49 &= v49 - 1;
              }

              while (v49);
            }

            ++v25;
            v26 += 128;
          }

          while (v47);
        }

        else
        {
          v28 = *(v25 + v24) & 0x8080808080808080;
          if (v28 != 0x8080808080808080)
          {
            v29 = v25 - 1;
            v30 = v26 - 16;
            v31 = v28 ^ 0x8080808080808080;
            do
            {
              v32 = __clz(__rbit64(v31)) >> 3;
              v33 = v30 + 16 * v32;
              v34 = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v33) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v33)));
              v35 = v29[v32];
              v36 = a1[2];
              *(v36 + v34) = v35;
              *(v36 + (*a1 & (v34 - 7)) + (*a1 & 7)) = v35;
              v37 = a1[3] + 16 * v34;
              *v37 = *v33;
              *(v37 + 8) = *(v33 + 8);
              v31 &= v31 - 1;
            }

            while (v31);
          }
        }
      }

      else
      {
        v12 = (a1[2] >> 12) | 1;
        v14 = a2[2];
        v13 = a2[3];
        if (*a2 >= 7)
        {
          v40 = *a1;
          do
          {
            v41 = *v14 & 0x8080808080808080;
            if (v41 != 0x8080808080808080)
            {
              v42 = v41 ^ 0x8080808080808080;
              do
              {
                v43 = __clz(__rbit64(v42)) >> 3;
                v44 = v13 + 16 * v43;
                LOBYTE(v43) = *(v14 + v43);
                v40 = (v40 + v12) & v11;
                v45 = a1[2];
                *(v45 + v40) = v43;
                *(v45 + (v11 & (v40 - 7)) + (v11 & 7)) = v43;
                v46 = a1[3] + 16 * v40;
                *v46 = *v44;
                *(v46 + 8) = *(v44 + 8);
                --v10;
                v42 &= v42 - 1;
              }

              while (v42);
            }

            ++v14;
            v13 += 128;
          }

          while (v10);
        }

        else
        {
          v15 = *(v14 + *a2) & 0x8080808080808080;
          if (v15 != 0x8080808080808080)
          {
            v16 = v14 - 1;
            v17 = v13 - 16;
            v18 = v15 ^ 0x8080808080808080;
            v19 = *a1;
            do
            {
              v20 = __clz(__rbit64(v18)) >> 3;
              v21 = v17 + 16 * v20;
              v19 = (v19 + v12) & v11;
              LOBYTE(v20) = v16[v20];
              v22 = a1[2];
              *(v22 + v19) = v20;
              *(v22 + (v11 & (v19 - 7)) + (v11 & 7)) = v20;
              v23 = a1[3] + 16 * v19;
              *v23 = *v21;
              *(v23 + 8) = *(v21 + 8);
              v18 &= v18 - 1;
            }

            while (v18);
          }
        }
      }

      v38 = a1[2];
      a1[1] = v6 & 0xFFFFFFFFFFFFFFFELL | a1[1] & 1;
      *(v38 - 8) -= v6 >> 1;
    }

    else
    {
      a1[1] = 2;
      v7 = a2 + 2;
      if (*a2 >= 2)
      {
        v8 = a2[2];
        v7 = a2[3];
        if (*v8 <= -2)
        {
          do
          {
            v9 = __clz(__rbit64((*v8 | ~(*v8 >> 7)) & 0x101010101010101)) >> 3;
            v8 = (v8 + v9);
            v7 += 2 * v9;
          }

          while (*v8 < -1);
        }
      }

      a1[2] = *v7;
      *(a1 + 6) = *(v7 + 2);
    }
  }

  return a1;
}

void sub_23CA29DB4(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operator delete((v1[2] - (v1[1] & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::raw_hash_set(uint64_t *a1, unint64_t a2)
{
  *&result = 1;
  *a1 = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::resize_impl(a1, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v10 = a1[1];
      if (v10 >= 2)
      {
        v12 = v10 >> 1;
        do
        {
          v13 = *v4 & 0x8080808080808080;
          if (v13 != 0x8080808080808080)
          {
            v14 = v13 ^ 0x8080808080808080;
            do
            {
              v15 = v3 + ((4 * __clz(__rbit64(v14))) & 0x1E0);
              v16 = *(v15 + 8);
              if (v16)
              {
                *(v15 + 16) = v16;
                operator delete(v16);
              }

              --v12;
              v14 &= v14 - 1;
            }

            while (v14);
          }

          ++v4;
          v3 += 256;
        }

        while (v12);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

uint64_t absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(unsigned __int8 **a1, _DWORD *a2)
{
  v13 = a2;
  if (!a1[2])
  {
    operator new();
  }

  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  v6 = (v3 + 16);
  do
  {
    v7 = *v6;
    v6 += 8;
    if (v7 >= v2)
    {
      goto LABEL_9;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_9:
  while (!v3[11])
  {
    v3 = *&v3[8 * v5 + 240];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v5) = 0;
  }

  v8 = v5;
  v9 = v5;
  v10 = v3;
  while (v9 == v10[10])
  {
    v9 = v10[8];
    v10 = *v10;
    if (v10[11])
    {
      goto LABEL_17;
    }
  }

  if (v2 >= *&v10[32 * v9 + 16])
  {
    return &v10[32 * v9 + 24];
  }

LABEL_17:
  v10 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, v3, v8, &std::piecewise_construct, &v13);
  LOBYTE(v9) = v11;
  return &v10[32 * v9 + 24];
}

uint64_t absl::lts_20240722::btree_map<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD **a5)
{
  i = a2;
  v26 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] != v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *&a2[8 * a3 + 240];
  for (i = v8; !v8[11]; i = v8)
  {
    v8 = *&v8[8 * v8[10] + 240];
  }

  LODWORD(v26) = v8[10];
  v7 = v8[11];
  if (!v8[11])
  {
    v7 = 7;
  }

  if (v8[10] == v7)
  {
LABEL_9:
    if (v7 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v9 = i;
  v10 = v26;
  v11 = v26;
  v12 = i[10];
  if (v12 > v26)
  {
    v13 = (v12 - v26);
    v10 = v26;
    if ((v13 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v14 = &i[32 * v26 + 16 + 32 * v13];
      v15 = 32 * v26 - 32 * v12;
      v16 = v14;
      do
      {
        v17 = *(v16 - 8);
        v16 -= 32;
        *v14 = v17;
        *(v14 + 8) = *(v14 - 24);
        *(v14 + 3) = *(v14 - 1);
        *(v14 - 3) = 0;
        *(v14 - 2) = 0;
        *(v14 - 1) = 0;
        v14 = v16;
        v15 += 32;
      }

      while (v15);
      LODWORD(v12) = v9[10];
    }
  }

  v18 = &v9[32 * v10];
  *(v18 + 4) = **a5;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  *(v18 + 3) = 0;
  v19 = v12 + 1;
  v9[10] = v12 + 1;
  if (!v9[11])
  {
    v20 = v11 + 1;
    if (v20 < v19)
    {
      v21 = v9 + 240;
      do
      {
        v22 = *&v21[8 * (v19 - 1)];
        *&v21[8 * v19] = v22;
        *(v22 + 8) = v19;
      }

      while (v20 < --v19);
    }
  }

  ++*(a1 + 16);
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 240);
    v7 = v6[10];
    if (v7 <= 6)
    {
      v8 = *(a2 + 8);
      v9 = (7 - v7) >> (v8 < 7) <= 1u ? 1 : (7 - v7) >> (v8 < 7);
      v10 = (v9 + v7);
      if (v8 >= v9 || v10 <= 6)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
        v13 = *(a2 + 8) - v9;
        *(a2 + 2) = v13;
        if (v13 >= 0)
        {
          return result;
        }

        v24 = v13 + v6[10] + 1;
LABEL_30:
        *(a2 + 2) = v24;
        *a2 = v6;
        return result;
      }
    }
  }

  v14 = *(v4 + 10);
  if (v5 >= v14 || (v6 = *(v4 + 8 * (v5 + 1) + 240), v15 = v6[10], v15 > 6) || ((v16 = *(a2 + 2), (7 - v15) >> (v16 > 0) <= 1u) ? (v17 = 1) : (v17 = (7 - v15) >> (v16 > 0)), (v18 = (v17 + v15), (v3[10] - v17) < v16) ? (v19 = v18 > 6) : (v19 = 0), v19))
  {
    if (v14 == 7)
    {
      v25 = v4;
      v26 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_or_split(a1, &v25);
      v3 = *a2;
      v22 = **a2;
    }

    v23 = v3[8] + 1;
    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 240));
  v20 = *(a2 + 2);
  v21 = (*a2)[10];
  if (v20 > v21)
  {
    v24 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(_BYTE *__p)
{
  v1 = __p;
  if (__p[11])
  {
    if (__p[10])
    {
      v2 = 32 * __p[10];
      v3 = __p + 32;
      do
      {
        v4 = *(v3 - 1);
        if (v4)
        {
          *v3 = v4;
          operator delete(v4);
        }

        v3 += 4;
        v2 -= 32;
      }

      while (v2);
    }

    goto LABEL_12;
  }

  if (!__p[10])
  {
LABEL_12:

    operator delete(v1);
    return;
  }

  v5 = *__p;
  do
  {
    v1 = v1[30];
  }

  while (!*(v1 + 11));
  v6 = *(v1 + 8);
  v7 = *v1;
  v8 = v7[v6 + 30];
  if (v8[11])
  {
    goto LABEL_16;
  }

  do
  {
LABEL_18:
    v8 = *(v8 + 30);
  }

  while (!v8[11]);
  v6 = v8[8];
  v7 = *v8;
  v9 = v8[10];
  if (!v8[10])
  {
    goto LABEL_24;
  }

LABEL_20:
  v10 = 32 * v9;
  v11 = v8 + 32;
  do
  {
    v12 = *(v11 - 1);
    if (v12)
    {
      *v11 = v12;
      operator delete(v12);
    }

    v11 += 4;
    v10 -= 32;
  }

  while (v10);
LABEL_24:
  while (1)
  {
    operator delete(v8);
    v13 = *(v7 + 10);
    if (v6 >= v13)
    {
      break;
    }

    v8 = v7[++v6 + 30];
    if (!v8[11])
    {
      goto LABEL_18;
    }

LABEL_16:
    v9 = v8[10];
    if (v8[10])
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v14 = *(v7 + 8);
    v15 = *v7;
    if (v13)
    {
      v16 = 32 * v13;
      v17 = v7 + 4;
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          *v17 = v18;
          operator delete(v18);
        }

        v17 += 4;
        v16 -= 32;
      }

      while (v16);
    }

    operator delete(v7);
    if (v15 == v5)
    {
      break;
    }

    v13 = v15[10];
    v7 = v15;
    if (v14 < v13)
    {
      v7 = v15;
      v6 = v14 + 1;
      v8 = *&v15[8 * v6 + 240];
      if (v8[11])
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_right_to_left(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result + 32 * *(result + 10);
  v4 = *result + 32 * *(result + 8);
  *(v3 + 16) = *(v4 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 24) = *(v4 + 24);
  *(v3 + 40) = *(v4 + 40);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = (a2 - 1);
  v6 = a3 + 16;
  v7 = a3 + 16 + 32 * v5;
  if ((v5 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v8 = (result + 32 * *(result + 10) + 72);
    do
    {
      *(v8 - 6) = *v6;
      *(v8 - 1) = 0;
      *v8 = 0;
      *(v8 - 2) = 0;
      *(v8 - 1) = *(v6 + 8);
      *v8 = *(v6 + 24);
      v8 += 4;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
    }

    while (v6 != v7);
  }

  v9 = *result + 32 * *(result + 8);
  *(v9 + 16) = *v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 24) = 0;
  *(v9 + 24) = *(v7 + 8);
  *(v9 + 40) = *(v7 + 24);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  v10 = *(a3 + 10);
  v11 = a2;
  if (((v10 - a2) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v12 = 0;
    v13 = 32 * v10 - 32 * a2;
    v14 = a3 + 32 * a2;
    do
    {
      v15 = a3 + v12;
      v16 = (v14 + v12);
      *(v15 + 16) = *(v14 + v12 + 16);
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 24) = 0;
      *(v15 + 24) = *(v14 + v12 + 24);
      *(v15 + 40) = *(v14 + v12 + 40);
      v16[4] = 0;
      v16[5] = 0;
      v16[3] = 0;
      v12 += 32;
    }

    while (v13 != v12);
  }

  if (!*(result + 11))
  {
    if (a2)
    {
      v17 = (a3 + 240);
      v18 = 1;
      do
      {
        v19 = *(result + 10) + v18;
        v20 = *v17++;
        *(result + 240 + 8 * v19) = v20;
        *(v20 + 8) = v19;
        *v20 = result;
        ++v18;
        --v11;
      }

      while (v11);
    }

    if (*(a3 + 10) >= a2)
    {
      v21 = 0;
      v22 = a3 + 240;
      do
      {
        v23 = *(v22 + 8 * (v21 + a2));
        *(v22 + 8 * v21) = v23;
        *(v23 + 8) = v21;
        *v23 = a3;
        ++v21;
      }

      while ((*(a3 + 10) - a2) >= v21);
    }
  }

  *(result + 10) += a2;
  *(a3 + 10) -= a2;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3 + 16;
  if (*(a3 + 10))
  {
    v4 = 0;
    v5 = 32 * *(a3 + 10);
    v6 = a3 + 32 * a2;
    v7 = a3;
    do
    {
      v8 = (v6 + v5);
      v9 = (v7 + v5);
      *(v8 - 4) = *(v7 + v5 - 16);
      *v8 = 0;
      v8[1] = 0;
      *(v8 - 1) = 0;
      *(v8 - 1) = *(v7 + v5 - 8);
      v8[1] = *(v7 + v5 + 8);
      *(v9 - 1) = 0;
      *v9 = 0;
      v9[1] = 0;
      v6 -= 32;
      v7 -= 32;
      v4 += 32;
    }

    while (v5 != v4);
  }

  v10 = a2 - 1;
  v11 = 32 * v10;
  v12 = v3 + 32 * v10;
  v13 = *result + 32 * *(result + 8);
  *v12 = *(v13 + 16);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 8) = 0;
  *(v12 + 8) = *(v13 + 24);
  *(v12 + 24) = *(v13 + 40);
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v14 = *(result + 10);
  v15 = result + 16;
  if ((v10 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v15 + 32 * (v14 - v10);
    v17 = v16 + v11;
    do
    {
      *v3 = *v16;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 8) = 0;
      *(v3 + 8) = *(v16 + 8);
      *(v3 + 24) = *(v16 + 24);
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v16 += 32;
      v3 += 32;
    }

    while (v16 != v17);
    LODWORD(v14) = *(result + 10);
  }

  v18 = *result + 32 * *(result + 8);
  v19 = v15 + 32 * (v14 - a2);
  *(v18 + 16) = *v19;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 24) = 0;
  *(v18 + 24) = *(v19 + 8);
  *(v18 + 40) = *(v19 + 24);
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 8) = 0;
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v20 = a3 + 240;
      v21 = (*(a3 + 10) + 1);
      do
      {
        v22 = *(v20 + 8 * (v21 - 1));
        *(v20 + 8 * (v21 - 1 + a2)) = v22;
        *(v22 + 8) = v21 - 1 + a2;
        *v22 = a3;
        --v21;
      }

      while (v21);
    }

    if (a2)
    {
      v23 = 0;
      if ((a2 + 1) <= 2u)
      {
        v24 = 2;
      }

      else
      {
        v24 = (a2 + 1);
      }

      v25 = v24 - 1;
      do
      {
        v26 = *(result + 240 + 8 * (v23 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v23 + 240) = v26;
        *(v26 + 8) = v23;
        *v26 = a3;
        ++v23;
      }

      while (v25 != v23);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v5) = 0;
  }

  else if (a2)
  {
    v5 = a1[10] >> 1;
  }

  else
  {
    LOBYTE(v5) = a1[10] - 1;
  }

  *(a3 + 10) = v5;
  v6 = a1[10] - v5;
  a1[10] = v6;
  v7 = a1 + 16;
  if (*(a3 + 10))
  {
    v8 = &v7[32 * v6];
    v9 = &v8[32 * *(a3 + 10)];
    v10 = a3 + 16;
    do
    {
      *v10 = *v8;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 8) = 0;
      *(v10 + 8) = *(v8 + 8);
      *(v10 + 24) = *(v8 + 3);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      v8 += 32;
      v10 += 32;
    }

    while (v8 != v9);
    v6 = a1[10];
  }

  v11 = v6 - 1;
  a1[10] = v6 - 1;
  v12 = *a1;
  v13 = a1[8];
  v14 = &v7[32 * v11];
  v15 = *(*a1 + 10);
  v16 = v15 - v13;
  if (v15 > v13 && (v16 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v12 + 32 * v13 + 16 + 32 * v16;
    v18 = 32 * v13 - 32 * v15;
    v19 = v17;
    do
    {
      v20 = *(v19 - 32);
      v19 -= 32;
      *v17 = v20;
      *(v17 + 8) = *(v17 - 24);
      *(v17 + 24) = *(v17 - 8);
      *(v17 - 24) = 0;
      *(v17 - 16) = 0;
      *(v17 - 8) = 0;
      v17 = v19;
      v18 += 32;
    }

    while (v18);
  }

  v21 = v12 + 32 * v13;
  *(v21 + 16) = *v14;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0;
  *(v21 + 24) = *(v14 + 8);
  *(v21 + 40) = *(v14 + 3);
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v22 = (*(v12 + 10))++ + 1;
  if (!*(v12 + 11))
  {
    v23 = v13 + 1;
    if (v23 < v22)
    {
      v24 = v12 + 240;
      do
      {
        v25 = *(v24 + 8 * (v22 - 1));
        *(v24 + 8 * v22) = v25;
        *(v25 + 8) = v22;
      }

      while (v23 < --v22);
    }
  }

  v27 = &v7[32 * a1[10]];
  v28 = *(v27 + 1);
  if (v28)
  {
    *(v27 + 2) = v28;
    operator delete(v28);
  }

  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v29 = a1[11];
  if (!a1[11])
  {
    v30 = a1[10];
    do
    {
      v31 = *&a1[8 * ++v30 + 240];
      *(a3 + 240 + 8 * v29) = v31;
      *(v31 + 8) = v29;
      *v31 = a3;
      ++v29;
    }

    while (*(a3 + 10) >= v29);
  }
}

void ***std::__exception_guard_exceptions<std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v7 = *(v6 - 4);
          v6 -= 32;
          if (v7 >= 2)
          {
            operator delete((*(v4 - 2) - (*(v4 - 3) & 1) - 8));
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *std::vector<long long>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::iterator,0>(void *result, void *a2, uint64_t a3, void *a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a4)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v7 = *(v5 + 1);
      v5 = (v5 + 1);
      LOBYTE(v6) = v7;
      if (v7 <= -2)
      {
        do
        {
          v5 = (v5 + (__clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3));
          v6 = *v5;
        }

        while (v6 < -1);
      }

      ++v4;
      if (v6 == 255)
      {
        v5 = 0;
      }
    }

    while (v5 != a4);
    if (v4)
    {
      if (!(v4 >> 61))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

void sub_23CA2AF48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int **operations_research::sat::anonymous namespace::AddSizeTwoTable(std::vector<int> const&,std::vector<std::vector<long long>> const&,std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>> const&,operations_research::sat::PresolveContext *)::$_0::operator()(int **result, int a2, int **a3, unsigned int a4)
{
  v5 = a3[1] - *a3;
  if (a4 == v5 >> 2)
  {
    return result;
  }

  v6 = result;
  v7 = *result;
  if (v5 == 4)
  {
    result = operations_research::sat::PresolveContext::AddImplication(v7, a2, **a3);
    v8 = 3;
LABEL_19:
    ++*v6[v8];
    return result;
  }

  v11 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v7 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v12 = v11;
  if (*(v11 + 60) != 3)
  {
    operations_research::sat::ConstraintProto::clear_constraint(v11);
    *(v12 + 60) = 3;
    v24 = *(v12 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v24);
    *(v12 + 48) = result;
    v13 = a3;
    v14 = *a3;
    v15 = a3[1];
    v16 = a2;
    if (*a3 != v15)
    {
      goto LABEL_6;
    }

LABEL_14:
    v22 = *(result + 4);
    v18 = *(result + 5);
    goto LABEL_15;
  }

  result = *(v11 + 48);
  v13 = a3;
  v14 = *a3;
  v15 = a3[1];
  v16 = a2;
  if (*a3 == v15)
  {
    goto LABEL_14;
  }

LABEL_6:
  v17 = *(result + 4);
  v18 = *(result + 5);
  v19 = (result + 2);
  do
  {
    v20 = *v14;
    if (v17 == v18)
    {
      v23 = result;
      google::protobuf::RepeatedField<int>::Grow(v19, v17, (v17 + 1));
      result = v23;
      v16 = a2;
      v13 = a3;
      LODWORD(v17) = *(v23 + 4);
      v18 = *(v23 + 5);
    }

    v21 = result[3];
    v22 = (v17 + 1);
    *(result + 4) = v22;
    v21[v17] = v20;
    ++v14;
    v17 = v22;
  }

  while (v14 != v15);
LABEL_15:
  v25 = ~v16;
  if (v22 == v18)
  {
    v27 = result;
    google::protobuf::RepeatedField<int>::Grow(result + 2, v22, (v22 + 1));
    result = v27;
    v13 = a3;
    LODWORD(v22) = *(v27 + 4);
  }

  v26 = result[3];
  *(result + 4) = v22 + 1;
  v26[v22] = v25;
  ++*v6[1];
  if ((a4 + (a4 >> 31)) >> 1 < (v13[1] - *v13))
  {
    v8 = 2;
    goto LABEL_19;
  }

  return result;
}

char *std::vector<long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long long *>,std::__wrap_iter<long long *>>(uint64_t a1, char *__src, char *a3, unint64_t a4, uint64_t a5)
{
  v5 = __src;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v47 = (__src - v11);
    v48 = 8 * ((__src - v11) >> 3);
    v49 = v48;
    if ((a5 & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_43;
    }

    v49 = (v48 + 8 * a5);
    v50 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - a3) >= 0x20)
    {
      v60 = v50 + 1;
      v61 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v51 = (v48 + 8 * v61);
      v52 = &a3[8 * v61];
      v62 = (a3 + 16);
      v63 = (v48 + 16);
      v64 = v61;
      do
      {
        v65 = *v62;
        *(v63 - 1) = *(v62 - 1);
        *v63 = v65;
        v62 += 2;
        v63 += 2;
        v64 -= 4;
      }

      while (v64);
      if (v60 == v61)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v51 = v48;
      v52 = a3;
    }

    do
    {
      v53 = *v52;
      v52 += 8;
      *v51 = v53;
      v51 += 8;
    }

    while (v51 != v49);
LABEL_43:
    v54 = *(a1 + 8) - __src;
    memcpy(v49, __src, v54);
    v55 = &v49[v54];
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __src;
  v16 = (v10 - __src) >> 3;
  if (v16 < a5)
  {
    v17 = a4 - &a3[v15];
    if (a4 != &a3[v15])
    {
      v18 = a5;
      v19 = a4;
      memmove(*(a1 + 8), &a3[v15], a4 - &a3[v15]);
      a4 = v19;
      a5 = v18;
    }

    v20 = (v10 + v17);
    *(a1 + 8) = v10 + v17;
    if (v16 < 1)
    {
      return v5;
    }

    v21 = 8 * a5;
    v22 = &v5[8 * a5];
    v23 = &v20[-8 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &a3[v21] + 8;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &a3[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_65;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_65;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - a3 + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_65:
        do
        {
          v33 = *v23;
          v23 += 8;
          *v26 = v33;
          v26 += 8;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[8 * a5], v5, v20 - v22);
    }

    if (v10 == v5)
    {
      return v5;
    }

LABEL_50:
    memmove(v5, a3, v15);
    return v5;
  }

  v15 = 8 * a5;
  v34 = &__src[8 * a5];
  v35 = (v10 - 8 * a5);
  if (v35 >= v10)
  {
    v39 = *(a1 + 8);
  }

  else
  {
    v36 = v35 + 1;
    if (v10 > (v35 + 1))
    {
      v36 = *(a1 + 8);
    }

    v37 = v36 + v15 + ~v10;
    v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
    v39 = *(a1 + 8);
    if (v38)
    {
      goto LABEL_66;
    }

    v40 = (v37 >> 3) + 1;
    v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
    v35 = (v35 + v41);
    v39 = (v10 + v41);
    v42 = (v10 + 16);
    v43 = (v10 + 16 - v15);
    v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = *v43;
      *(v42 - 1) = *(v43 - 1);
      *v42 = v45;
      v42 += 2;
      v43 += 2;
      v44 -= 4;
    }

    while (v44);
    if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_66:
      do
      {
        v46 = *v35++;
        *v39++ = v46;
      }

      while (v35 < v10);
    }
  }

  *(a1 + 8) = v39;
  if (v10 != v34)
  {
    memmove(&__src[8 * a5], __src, v10 - v34);
  }

  if (v15)
  {
    goto LABEL_50;
  }

  return v5;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v10;
        v11 = a2 - v10;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3uLL:

              return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v10, v10 + 3, a2 - 3);
            case 4uLL:

              return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v10, v10 + 3, v10 + 6, a2 - 3);
            case 5uLL:

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v30 = *(a2 - 3);
            v31 = *(a2 - 2);
            v32 = *v10;
            v33 = *(v10 + 1);
            if ((v33 - *v10) >> 3 >= (v31 - v30) >> 3)
            {
              v34 = (v31 - v30) >> 3;
            }

            else
            {
              v34 = (v33 - *v10) >> 3;
            }

            v35 = *v10;
            v36 = *(a2 - 3);
            if ((v34 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              v37 = 8 * v34;
              v35 = *v10;
              v36 = *(a2 - 3);
              v38 = (v30 + 8 * v34);
              while (*v36 == *v35)
              {
                ++v36;
                ++v35;
                v37 -= 8;
                if (!v37)
                {
                  v36 = v38;
                  break;
                }
              }
            }

            if (v35 != v33 && (v36 == v31 || *v36 < *v35))
            {
              *v10 = v30;
              *(a2 - 3) = v32;
              v39 = *(v10 + 1);
              *(v10 + 1) = *(a2 - 2);
              *(a2 - 2) = v39;
              v40 = *(v10 + 2);
              *(v10 + 2) = *(a2 - 1);
              *(a2 - 1) = v40;
            }

            return result;
          }
        }

        if (v11 <= 575)
        {
          if (a5)
          {

            return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(v10, a2);
          }

          else
          {

            return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(v10, a2);
          }
        }

        if (!a4)
        {
          if (v10 != a2)
          {
            v41 = (v12 - 2) >> 1;
            v42 = v41 + 1;
            v43 = &v10[24 * v41];
            do
            {
              std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(v10, a3, 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3), v43);
              v43 -= 24;
              --v42;
            }

            while (v42);
            v44 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
            do
            {
              result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<long long> *>(v10, a2, a3, v44);
              a2 -= 24;
            }

            while (v44-- > 2);
          }

          return result;
        }

        v13 = v12 >> 1;
        v14 = &v9[24 * (v12 >> 1)];
        if (v11 < 0xC01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v14, v9, a2 - 3);
          --a4;
          if (a5)
          {
            break;
          }
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v9, v14, a2 - 3);
          v15 = 24 * v13;
          v16 = &v9[24 * v13 - 24];
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v9 + 3, v16, a2 - 6);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v9 + 6, &v9[v15 + 24], a2 - 9);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(v16, v14, &v9[v15 + 24]);
          v17 = *v9;
          *v9 = *v14;
          *v14 = v17;
          v18 = *(v9 + 1);
          *(v9 + 1) = *(v14 + 1);
          *(v14 + 1) = v18;
          v19 = *(v9 + 2);
          *(v9 + 2) = *(v14 + 2);
          *(v14 + 2) = v19;
          --a4;
          if (a5)
          {
            break;
          }
        }

        v20 = *(v9 - 3);
        v21 = *(v9 - 2);
        v22 = *v9;
        v23 = *(v9 + 1);
        v24 = v21 - v20;
        if ((v23 - *v9) >> 3 < v24)
        {
          v24 = (v23 - *v9) >> 3;
        }

        if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v25 = 8 * v24;
          v26 = &v20[v24];
          while (*v20 == *v22)
          {
            ++v20;
            ++v22;
            v25 -= 8;
            if (!v25)
            {
              v20 = v26;
              break;
            }
          }
        }

        if (v22 != v23 && (v20 == v21 || *v20 < *v22))
        {
          break;
        }

        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<long long> *,std::__less<void,void> &>(v9, a2);
        v10 = result;
        a5 = 0;
      }

      v27 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<long long> *,std::__less<void,void> &>(v9, a2);
      if ((v28 & 1) == 0)
      {
        goto LABEL_29;
      }

      v29 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(v9, v27);
      v10 = v27 + 24;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(v27 + 3, a2);
      if (result)
      {
        break;
      }

      if (!v29)
      {
LABEL_29:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,false>(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v27 + 24;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 - *a2) >> 3;
  if ((v6 - *a1) >> 3 >= v7)
  {
    v8 = (v4 - *a2) >> 3;
  }

  else
  {
    v8 = (v6 - *a1) >> 3;
  }

  v9 = *a1;
  v10 = *a2;
  if ((v8 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 8 * v8;
    v9 = *a1;
    v10 = *a2;
    v12 = &v3[v8];
    while (*v10 == *v9)
    {
      ++v10;
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        v10 = v12;
        break;
      }
    }
  }

  if (v9 != v6 && (v10 == v4 || *v10 < *v9))
  {
    v13 = *a3;
    v14 = a3[1];
    if (v7 >= (v14 - *a3) >> 3)
    {
      v15 = (v14 - *a3) >> 3;
    }

    else
    {
      v15 = (v4 - *a2) >> 3;
    }

    v16 = *a2;
    v17 = *a3;
    if ((v15 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = 8 * v15;
      v16 = *a2;
      v17 = *a3;
      v19 = &v13[v15];
      while (*v17 == *v16)
      {
        ++v17;
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          v17 = v19;
          break;
        }
      }
    }

    if (v16 == v4 || v17 != v14 && *v17 >= *v16)
    {
      *a1 = v3;
      *a2 = v5;
      v43 = a1[1];
      a1[1] = a2[1];
      a2[1] = v43;
      v21 = a2 + 2;
      v44 = a1[2];
      a1[2] = a2[2];
      a2[2] = v44;
      v45 = *a3;
      v46 = a3[1];
      v47 = *a2;
      v48 = a2[1];
      if ((v48 - *a2) >> 3 >= (v46 - *a3) >> 3)
      {
        v49 = (v46 - *a3) >> 3;
      }

      else
      {
        v49 = (v48 - *a2) >> 3;
      }

      v50 = *a2;
      v51 = *a3;
      if ((v49 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v52 = 8 * v49;
        v50 = *a2;
        v51 = *a3;
        v53 = &v45[v49];
        while (*v51 == *v50)
        {
          ++v51;
          ++v50;
          v52 -= 8;
          if (!v52)
          {
            v51 = v53;
            break;
          }
        }
      }

      if (v50 == v48 || v51 != v46 && *v51 >= *v50)
      {
        return 1;
      }

      *a2 = v45;
      *a3 = v47;
      v54 = a2[1];
      a2[1] = a3[1];
      a3[1] = v54;
    }

    else
    {
      *a1 = v13;
      *a3 = v5;
      v20 = a1[1];
      a1[1] = a3[1];
      a3[1] = v20;
      v21 = a1 + 2;
    }

    v31 = a3 + 2;
    goto LABEL_61;
  }

  v22 = *a3;
  v23 = a3[1];
  if (v7 >= (v23 - *a3) >> 3)
  {
    v24 = (v23 - *a3) >> 3;
  }

  else
  {
    v24 = (v4 - *a2) >> 3;
  }

  v25 = *a2;
  v26 = *a3;
  if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = 8 * v24;
    v25 = *a2;
    v26 = *a3;
    v28 = &v22[v24];
    while (*v26 == *v25)
    {
      ++v26;
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        v26 = v28;
        break;
      }
    }
  }

  if (v25 == v4 || v26 != v23 && *v26 >= *v25)
  {
    return 0;
  }

  *a2 = v22;
  *a3 = v3;
  v29 = a2[1];
  a2[1] = a3[1];
  a3[1] = v29;
  v31 = a2 + 2;
  v30 = a2[2];
  a2[2] = a3[2];
  a3[2] = v30;
  v32 = *a2;
  v33 = a2[1];
  v34 = *a1;
  v35 = a1[1];
  if ((v35 - *a1) >> 3 >= (v33 - *a2) >> 3)
  {
    v36 = (v33 - *a2) >> 3;
  }

  else
  {
    v36 = (v35 - *a1) >> 3;
  }

  v37 = *a1;
  v38 = *a2;
  if ((v36 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v39 = 8 * v36;
    v37 = *a1;
    v38 = *a2;
    v40 = &v32[v36];
    while (*v38 == *v37)
    {
      ++v38;
      ++v37;
      v39 -= 8;
      if (!v39)
      {
        v38 = v40;
        break;
      }
    }
  }

  if (v37 != v35 && (v38 == v33 || *v38 < *v37))
  {
    *a1 = v32;
    *a2 = v34;
    v41 = a1[1];
    a1[1] = a2[1];
    a2[1] = v41;
    v21 = a1 + 2;
LABEL_61:
    v55 = *v21;
    *v21 = *v31;
    *v31 = v55;
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(void *a1, void *a2, void *a3, void *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(a1, a2, a3);
  v9 = *a4;
  v10 = a4[1];
  v11 = *a3;
  v12 = a3[1];
  if ((v12 - *a3) >> 3 >= (v10 - *a4) >> 3)
  {
    v13 = (v10 - *a4) >> 3;
  }

  else
  {
    v13 = (v12 - *a3) >> 3;
  }

  v14 = *a3;
  v15 = *a4;
  if ((v13 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 8 * v13;
    v14 = *a3;
    v15 = *a4;
    v17 = &v9[v13];
    while (*v15 == *v14)
    {
      ++v15;
      ++v14;
      v16 -= 8;
      if (!v16)
      {
        v15 = v17;
        break;
      }
    }
  }

  if (v14 != v12 && (v15 == v10 || *v15 < *v14))
  {
    *a3 = v9;
    *a4 = v11;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = a3[2];
    a3[2] = a4[2];
    a4[2] = v19;
    v20 = *a3;
    v21 = a3[1];
    v22 = *a2;
    v23 = a2[1];
    if ((v23 - *a2) >> 3 >= (v21 - *a3) >> 3)
    {
      v24 = (v21 - *a3) >> 3;
    }

    else
    {
      v24 = (v23 - *a2) >> 3;
    }

    v25 = *a2;
    v26 = *a3;
    if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = 8 * v24;
      v25 = *a2;
      v26 = *a3;
      v28 = &v20[v24];
      while (*v26 == *v25)
      {
        ++v26;
        ++v25;
        v27 -= 8;
        if (!v27)
        {
          v26 = v28;
          break;
        }
      }
    }

    if (v25 != v23 && (v26 == v21 || *v26 < *v25))
    {
      *a2 = v20;
      *a3 = v22;
      v29 = a2[1];
      a2[1] = a3[1];
      a3[1] = v29;
      v30 = a2[2];
      a2[2] = a3[2];
      a3[2] = v30;
      v31 = *a2;
      v32 = a2[1];
      v33 = *a1;
      v34 = a1[1];
      if ((v34 - *a1) >> 3 >= (v32 - *a2) >> 3)
      {
        v35 = (v32 - *a2) >> 3;
      }

      else
      {
        v35 = (v34 - *a1) >> 3;
      }

      v36 = *a1;
      v37 = *a2;
      if ((v35 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v38 = 8 * v35;
        v36 = *a1;
        v37 = *a2;
        v39 = &v31[v35];
        while (*v37 == *v36)
        {
          ++v37;
          ++v36;
          v38 -= 8;
          if (!v38)
          {
            v37 = v39;
            break;
          }
        }
      }

      if (v36 != v34 && (v37 == v32 || *v37 < *v36))
      {
        *a1 = v31;
        *a2 = v33;
        v40 = a1[1];
        a1[1] = a2[1];
        a2[1] = v40;
        v41 = a1[2];
        a1[2] = a2[2];
        a2[2] = v41;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = a5[1];
  v13 = *a4;
  v14 = a4[1];
  if ((v14 - *a4) >> 3 >= (v12 - *a5) >> 3)
  {
    v15 = (v12 - *a5) >> 3;
  }

  else
  {
    v15 = (v14 - *a4) >> 3;
  }

  v16 = *a4;
  v17 = *a5;
  if ((v15 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 8 * v15;
    v16 = *a4;
    v17 = *a5;
    v19 = &v11[v15];
    while (*v17 == *v16)
    {
      ++v17;
      ++v16;
      v18 -= 8;
      if (!v18)
      {
        v17 = v19;
        break;
      }
    }
  }

  if (v16 != v14 && (v17 == v12 || *v17 < *v16))
  {
    *a4 = v11;
    *a5 = v13;
    v20 = a4[1];
    a4[1] = a5[1];
    a5[1] = v20;
    v21 = a4[2];
    a4[2] = a5[2];
    a5[2] = v21;
    v22 = *a4;
    v23 = a4[1];
    v24 = *a3;
    v25 = a3[1];
    if ((v25 - *a3) >> 3 >= (v23 - *a4) >> 3)
    {
      v26 = (v23 - *a4) >> 3;
    }

    else
    {
      v26 = (v25 - *a3) >> 3;
    }

    v27 = *a3;
    v28 = *a4;
    if ((v26 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v29 = 8 * v26;
      v27 = *a3;
      v28 = *a4;
      v30 = &v22[v26];
      while (*v28 == *v27)
      {
        ++v28;
        ++v27;
        v29 -= 8;
        if (!v29)
        {
          v28 = v30;
          break;
        }
      }
    }

    if (v27 != v25 && (v28 == v23 || *v28 < *v27))
    {
      *a3 = v22;
      *a4 = v24;
      v31 = a3[1];
      a3[1] = a4[1];
      a4[1] = v31;
      v32 = a3[2];
      a3[2] = a4[2];
      a4[2] = v32;
      v33 = *a3;
      v34 = a3[1];
      v35 = *a2;
      v36 = a2[1];
      if ((v36 - *a2) >> 3 >= (v34 - *a3) >> 3)
      {
        v37 = (v34 - *a3) >> 3;
      }

      else
      {
        v37 = (v36 - *a2) >> 3;
      }

      v38 = *a2;
      v39 = *a3;
      if ((v37 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v40 = 8 * v37;
        v38 = *a2;
        v39 = *a3;
        v41 = &v33[v37];
        while (*v39 == *v38)
        {
          ++v39;
          ++v38;
          v40 -= 8;
          if (!v40)
          {
            v39 = v41;
            break;
          }
        }
      }

      if (v38 != v36 && (v39 == v34 || *v39 < *v38))
      {
        *a2 = v33;
        *a3 = v35;
        v42 = a2[1];
        a2[1] = a3[1];
        a3[1] = v42;
        v43 = a2[2];
        a2[2] = a3[2];
        a3[2] = v43;
        v44 = *a2;
        v45 = a2[1];
        v46 = *a1;
        v47 = a1[1];
        if ((v47 - *a1) >> 3 >= (v45 - *a2) >> 3)
        {
          v48 = (v45 - *a2) >> 3;
        }

        else
        {
          v48 = (v47 - *a1) >> 3;
        }

        v49 = *a1;
        v50 = *a2;
        if ((v48 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v51 = 8 * v48;
          v49 = *a1;
          v50 = *a2;
          v52 = &v44[v48];
          while (*v50 == *v49)
          {
            ++v50;
            ++v49;
            v51 -= 8;
            if (!v51)
            {
              v50 = v52;
              break;
            }
          }
        }

        if (v49 != v47 && (v50 == v45 || *v50 < *v49))
        {
          *a1 = v44;
          *a2 = v46;
          v53 = a1[1];
          a1[1] = a2[1];
          a2[1] = v53;
          v54 = a1[2];
          a1[2] = a2[2];
          a2[2] = v54;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = result;
      do
      {
        v5 = v3;
        v3 = v2;
        v6 = v5[3];
        v7 = v5[4];
        v9 = *v5;
        v8 = v5[1];
        v10 = v7 - v6;
        if ((v8 - *v5) >> 3 >= v10)
        {
          v11 = v7 - v6;
        }

        else
        {
          v11 = (v8 - *v5) >> 3;
        }

        v12 = *v5;
        v13 = v5[3];
        if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v14 = 8 * v11;
          v12 = *v5;
          v13 = v5[3];
          v15 = &v6[v11];
          while (*v13 == *v12)
          {
            ++v13;
            ++v12;
            v14 -= 8;
            if (!v14)
            {
              v13 = v15;
              break;
            }
          }
        }

        if (v12 != v8 && (v13 == v7 || *v13 < *v12))
        {
          v16 = v5[5];
          *v3 = 0;
          v3[1] = 0;
          v3[2] = 0;
          v5[3] = v9;
          *(v3 + 1) = *(v5 + 1);
          *v5 = 0;
          v5[1] = 0;
          v5[2] = 0;
          v4 = result;
          if (v5 != result)
          {
            do
            {
              v18 = *(v5 - 3);
              v19 = *(v5 - 2);
              v17 = v5 - 3;
              if ((v19 - v18) >> 3 >= v10)
              {
                v20 = v7 - v6;
              }

              else
              {
                v20 = (v19 - v18) >> 3;
              }

              v21 = *(v5 - 3);
              v22 = v6;
              if ((v20 & 0x1FFFFFFFFFFFFFFFLL) != 0)
              {
                v23 = 8 * v20;
                v21 = *(v5 - 3);
                v22 = v6;
                v24 = &v6[v20];
                while (*v22 == *v21)
                {
                  ++v22;
                  ++v21;
                  v23 -= 8;
                  if (!v23)
                  {
                    v22 = v24;
                    break;
                  }
                }
              }

              if (v21 == v19 || v22 != v7 && *v22 >= *v21)
              {
                v4 = v5;
                goto LABEL_5;
              }

              *v5 = v18;
              *(v5 + 1) = *(v5 - 1);
              *v17 = 0;
              *(v5 - 2) = 0;
              *(v5 - 1) = 0;
              v5 -= 3;
            }

            while (v17 != result);
            v4 = result;
          }

LABEL_5:
          *v4 = v6;
          v4[1] = v7;
          v4[2] = v16;
        }

        v2 = v3 + 3;
      }

      while (v3 + 3 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(void *result, void *a2)
{
  if (result != a2)
  {
    while (result + 3 != a2)
    {
      v2 = result;
      result += 3;
      v3 = v2[3];
      v4 = v2[4];
      v5 = *v2;
      v6 = v2[1];
      v7 = v4 - v3;
      if ((v6 - *v2) >> 3 >= v7)
      {
        v8 = v4 - v3;
      }

      else
      {
        v8 = (v6 - *v2) >> 3;
      }

      v9 = *v2;
      v10 = v2[3];
      if ((v8 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = 8 * v8;
        v9 = *v2;
        v10 = v2[3];
        v12 = &v3[v8];
        while (*v10 == *v9)
        {
          ++v10;
          ++v9;
          v11 -= 8;
          if (!v11)
          {
            v10 = v12;
            break;
          }
        }
      }

      if (v9 != v6 && (v10 == v4 || *v10 < *v9))
      {
        v13 = v2[5];
        *result = 0;
        result[1] = 0;
        v14 = result;
        result[2] = 0;
        do
        {
          v15 = v14;
          v14 = v2;
          *v15 = v5;
          *(v15 + 1) = *(v2 + 1);
          *v2 = 0;
          v2[1] = 0;
          v2[2] = 0;
          v16 = *(v2 - 3);
          v2 -= 3;
          v5 = v16;
          v17 = *(v14 - 2);
          v18 = v17 - v16;
          if (v18 >= v7)
          {
            v19 = v4 - v3;
          }

          else
          {
            v19 = v18;
          }

          v20 = v5;
          v21 = v3;
          if ((v19 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v22 = 8 * v19;
            v20 = v5;
            v21 = v3;
            v23 = &v3[v19];
            while (*v21 == *v20)
            {
              ++v21;
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                v21 = v23;
                break;
              }
            }
          }
        }

        while (v20 != v17 && (v21 == v4 || *v21 < *v20));
        *v14 = v3;
        v14[1] = v4;
        v14[2] = v13;
      }
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<long long> *,std::__less<void,void> &>(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = *(a2 - 3);
  v6 = *(a2 - 2);
  v7 = (*(&v3 + 1) - v3) >> 3;
  if (v6 - v5 >= v7)
  {
    v8 = (*(&v3 + 1) - v3) >> 3;
  }

  else
  {
    v8 = v6 - v5;
  }

  v9 = *(a2 - 3);
  v10 = v3;
  if ((v8 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 8 * v8;
    v9 = *(a2 - 3);
    v10 = v3;
    v12 = (v3 + 8 * v8);
    while (*v10 == *v9)
    {
      ++v10;
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        v10 = v12;
        break;
      }
    }
  }

  if (v9 != v6 && (v10 == *(&v3 + 1) || *v10 < *v9))
  {
    v13 = a1;
    while (1)
    {
      while (1)
      {
        v14 = v13[3];
        v15 = v13[4];
        v13 += 3;
        v16 = v15 - v14 >= v7 ? (*(&v3 + 1) - v3) >> 3 : v15 - v14;
        if ((v16 & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          break;
        }

        v17 = 8 * v16;
        v18 = v3;
        v19 = (v3 + 8 * v16);
        while (*v18 == *v14)
        {
          ++v18;
          ++v14;
          v17 -= 8;
          if (!v17)
          {
            v18 = v19;
            break;
          }
        }

        if (v14 != v15)
        {
          goto LABEL_24;
        }
      }

      v18 = v3;
      if (v14 != v15)
      {
LABEL_24:
        if (v18 == *(&v3 + 1) || *v18 < *v14)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v13 = a1 + 3;
  if (a1 + 3 >= a2)
  {
LABEL_43:
    if (v13 >= a2)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v20 = a1;
  while (1)
  {
    v21 = v20[3];
    v22 = v20[4];
    v20 = v13;
    v23 = v22 - v21 >= v7 ? (*(&v3 + 1) - v3) >> 3 : v22 - v21;
    if ((v23 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = 8 * v23;
      v25 = v3;
      v26 = (v3 + 8 * v23);
      while (*v25 == *v21)
      {
        ++v25;
        ++v21;
        v24 -= 8;
        if (!v24)
        {
          v25 = v26;
          break;
        }
      }

      if (v21 == v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v3;
      if (v21 == v22)
      {
        goto LABEL_29;
      }
    }

    if (v25 == *(&v3 + 1))
    {
      break;
    }

    if (*v25 < *v21)
    {
      goto LABEL_43;
    }

LABEL_29:
    v13 += 3;
    if (v20 + 3 >= a2)
    {
      goto LABEL_43;
    }
  }

  if (v13 < a2)
  {
    while (1)
    {
LABEL_49:
      v27 = v6 - v5 >= v7 ? (*(&v3 + 1) - v3) >> 3 : v6 - v5;
      if ((v27 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v28 = 8 * v27;
        v29 = v3;
        v30 = (v3 + 8 * v27);
        while (*v29 == *v5)
        {
          ++v29;
          ++v5;
          v28 -= 8;
          if (!v28)
          {
            v29 = v30;
            break;
          }
        }
      }

      else
      {
        v29 = v3;
      }

      v31 = a2 - 3;
      if (v5 == v6 || v29 != *(&v3 + 1) && *v29 >= *v5)
      {
        break;
      }

      v5 = *(a2 - 6);
      v6 = *(a2 - 5);
      a2 -= 3;
    }

    a2 -= 3;
    if (v13 < v31)
    {
      goto LABEL_62;
    }

    goto LABEL_88;
  }

LABEL_44:
  if (v13 >= a2)
  {
    goto LABEL_88;
  }

LABEL_62:
  v32 = *v13;
  v33 = *a2;
  do
  {
    *v13 = v33;
    *a2 = v32;
    v34 = v13[1];
    v13[1] = a2[1];
    a2[1] = v34;
    v35 = v13[2];
    v13[2] = a2[2];
    a2[2] = v35;
    do
    {
      v32 = v13[3];
      v36 = v13[4];
      v13 += 3;
      if (v36 - v32 >= v7)
      {
        v37 = (*(&v3 + 1) - v3) >> 3;
      }

      else
      {
        v37 = v36 - v32;
      }

      v38 = v32;
      v39 = v3;
      if ((v37 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v40 = 8 * v37;
        v38 = v32;
        v39 = v3;
        v41 = (v3 + 8 * v37);
        while (*v39 == *v38)
        {
          ++v39;
          ++v38;
          v40 -= 8;
          if (!v40)
          {
            v39 = v41;
            break;
          }
        }
      }
    }

    while (v38 == v36 || v39 != *(&v3 + 1) && *v39 >= *v38);
    do
    {
      v33 = *(a2 - 3);
      v42 = *(a2 - 2);
      a2 -= 3;
      if (v42 - v33 >= v7)
      {
        v43 = (*(&v3 + 1) - v3) >> 3;
      }

      else
      {
        v43 = v42 - v33;
      }

      v44 = v33;
      v45 = v3;
      if ((v43 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v46 = 8 * v43;
        v44 = v33;
        v45 = v3;
        v47 = (v3 + 8 * v43);
        while (*v45 == *v44)
        {
          ++v45;
          ++v44;
          v46 -= 8;
          if (!v46)
          {
            v45 = v47;
            break;
          }
        }
      }
    }

    while (v44 != v42 && (v45 == *(&v3 + 1) || *v45 < *v44));
  }

  while (v13 < a2);
LABEL_88:
  v48 = (v13 - 3);
  if (v13 - 3 == a1)
  {
    v50 = *v48;
    if (*v48)
    {
      *(v13 - 2) = v50;
      v53 = v3;
      operator delete(v50);
      v3 = v53;
    }
  }

  else
  {
    v49 = *a1;
    if (*a1)
    {
      a1[1] = v49;
      v52 = v3;
      operator delete(v49);
      v3 = v52;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v13 - 3);
    a1[2] = *(v13 - 1);
  }

  *(v13 - 3) = v3;
  *(v13 - 1) = v4;
  return v13;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<long long> *,std::__less<void,void> &>(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = (*(&v4 + 1) - v4) >> 3;
  v7 = a1;
  do
  {
    v8 = v7;
    v9 = v7[3];
    v10 = v7[4];
    v7 += 3;
    if (v6 >= v10 - v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = (*(&v4 + 1) - v4) >> 3;
    }

    v12 = v4;
    v13 = v9;
    if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 8 * v11;
      v12 = v4;
      v13 = v9;
      v15 = &v9[v11];
      while (*v13 == *v12)
      {
        ++v13;
        ++v12;
        v14 -= 8;
        if (!v14)
        {
          v13 = v15;
          break;
        }
      }
    }
  }

  while (v12 != *(&v4 + 1) && (v13 == v10 || *v13 < *v12));
  if (v8 != a1)
  {
    while (1)
    {
      while (1)
      {
        v16 = *(a2 - 3);
        v17 = *(a2 - 2);
        a2 -= 3;
        v18 = v6 >= v17 - v16 ? v17 - v16 : (*(&v4 + 1) - v4) >> 3;
        if ((v18 & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          break;
        }

        v19 = 8 * v18;
        v20 = v4;
        v21 = &v16[v18];
        while (*v16 == *v20)
        {
          ++v16;
          ++v20;
          v19 -= 8;
          if (!v19)
          {
            v16 = v21;
            break;
          }
        }

        if (v20 != *(&v4 + 1))
        {
          goto LABEL_25;
        }
      }

      v20 = v4;
      if (v4 != *(&v4 + 1))
      {
LABEL_25:
        if (v16 == v17 || *v16 < *v20)
        {
          goto LABEL_47;
        }
      }
    }
  }

LABEL_46:
  if (v7 < a2)
  {
    while (1)
    {
      v22 = *(a2 - 3);
      v23 = *(a2 - 2);
      a2 -= 3;
      if (v6 >= v23 - v22)
      {
        v24 = v23 - v22;
      }

      else
      {
        v24 = (*(&v4 + 1) - v4) >> 3;
      }

      if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = 8 * v24;
        v26 = v4;
        v27 = &v22[v24];
        while (*v22 == *v26)
        {
          ++v22;
          ++v26;
          v25 -= 8;
          if (!v25)
          {
            v22 = v27;
            break;
          }
        }

        if (v26 == *(&v4 + 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v26 = v4;
        if (v4 == *(&v4 + 1))
        {
          goto LABEL_46;
        }
      }

      if (v22 != v23 && *v22 >= *v26 && v7 < a2)
      {
        continue;
      }

      break;
    }
  }

LABEL_47:
  if (v7 >= a2)
  {
    v30 = v7;
  }

  else
  {
    v29 = *a2;
    v30 = v7;
    v31 = a2;
    do
    {
      *v30 = v29;
      *v31 = v9;
      v32 = v30[1];
      v30[1] = v31[1];
      v31[1] = v32;
      v33 = v30[2];
      v30[2] = v31[2];
      v31[2] = v33;
      do
      {
        v9 = v30[3];
        v34 = v30[4];
        v30 += 3;
        if (v6 >= v34 - v9)
        {
          v35 = v34 - v9;
        }

        else
        {
          v35 = (*(&v4 + 1) - v4) >> 3;
        }

        v36 = v4;
        v37 = v9;
        if ((v35 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = 8 * v35;
          v36 = v4;
          v37 = v9;
          v39 = &v9[v35];
          while (*v37 == *v36)
          {
            ++v37;
            ++v36;
            v38 -= 8;
            if (!v38)
            {
              v37 = v39;
              break;
            }
          }
        }
      }

      while (v36 != *(&v4 + 1) && (v37 == v34 || *v37 < *v36));
      do
      {
        v29 = *(v31 - 3);
        v40 = *(v31 - 2);
        v31 -= 3;
        if (v6 >= v40 - v29)
        {
          v41 = v40 - v29;
        }

        else
        {
          v41 = (*(&v4 + 1) - v4) >> 3;
        }

        v42 = v4;
        v43 = v29;
        if ((v41 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v44 = 8 * v41;
          v42 = v4;
          v43 = v29;
          v45 = &v29[v41];
          while (*v43 == *v42)
          {
            ++v43;
            ++v42;
            v44 -= 8;
            if (!v44)
            {
              v43 = v45;
              break;
            }
          }
        }
      }

      while (v42 == *(&v4 + 1) || v43 != v40 && *v43 >= *v42);
    }

    while (v30 < v31);
  }

  v46 = *a1;
  if (v30 - 3 == a1)
  {
    if (v46)
    {
      *(v30 - 2) = v46;
      v49 = v4;
      operator delete(v46);
      v4 = v49;
    }
  }

  else
  {
    if (v46)
    {
      a1[1] = v46;
      v48 = v4;
      operator delete(v46);
      v4 = v48;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v30 - 3);
    a1[2] = *(v30 - 1);
  }

  *(v30 - 3) = v4;
  *(v30 - 1) = v5;
  return v30 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }

    goto LABEL_22;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_22:
    v15 = a1 + 6;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,0>(a1, a1 + 3, a1 + 6);
    v18 = a1 + 9;
    if (a1 + 9 == a2)
    {
      return 1;
    }

    v19 = 0;
    while (1)
    {
      v21 = *v18;
      v22 = v18[1];
      v24 = *v15;
      v23 = v15[1];
      v25 = (v22 - *v18) >> 3;
      if ((v23 - *v15) >> 3 >= v25)
      {
        v26 = (v22 - *v18) >> 3;
      }

      else
      {
        v26 = (v23 - *v15) >> 3;
      }

      v27 = *v15;
      v28 = *v18;
      if ((v26 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v29 = 8 * v26;
        v27 = *v15;
        v28 = *v18;
        v30 = &v21[v26];
        while (*v28 == *v27)
        {
          ++v28;
          ++v27;
          v29 -= 8;
          if (!v29)
          {
            v28 = v30;
            break;
          }
        }
      }

      if (v27 != v23 && (v28 == v22 || *v28 < *v27))
      {
        v31 = v18[2];
        v18[1] = 0;
        v18[2] = 0;
        *v18 = v24;
        *(v18 + 1) = *(v15 + 1);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v20 = a1;
        if (v15 != a1)
        {
          do
          {
            v33 = *(v15 - 3);
            v34 = *(v15 - 2);
            v32 = v15 - 3;
            if ((v34 - v33) >> 3 >= v25)
            {
              v35 = v25;
            }

            else
            {
              v35 = (v34 - v33) >> 3;
            }

            v36 = *(v15 - 3);
            v37 = v21;
            if ((v35 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              v38 = 8 * v35;
              v36 = *(v15 - 3);
              v37 = v21;
              v39 = &v21[v35];
              while (*v37 == *v36)
              {
                ++v37;
                ++v36;
                v38 -= 8;
                if (!v38)
                {
                  v37 = v39;
                  break;
                }
              }
            }

            if (v36 == v34 || v37 != v22 && *v37 >= *v36)
            {
              v20 = v15;
              goto LABEL_25;
            }

            *v15 = v33;
            *(v15 + 1) = *(v15 - 1);
            *v32 = 0;
            *(v15 - 2) = 0;
            *(v15 - 1) = 0;
            v15 -= 3;
          }

          while (v32 != a1);
          v20 = a1;
        }

LABEL_25:
        *v20 = v21;
        v20[1] = v22;
        v20[2] = v31;
        if (++v19 == 8)
        {
          return v18 + 3 == a2;
        }
      }

      v15 = v18;
      v18 += 3;
      if (v18 == a2)
      {
        return 1;
      }
    }
  }

  v4 = *(a2 - 3);
  v5 = *(a2 - 2);
  v6 = *a1;
  v7 = a1[1];
  if ((v7 - *a1) >> 3 >= (v5 - v4) >> 3)
  {
    v8 = (v5 - v4) >> 3;
  }

  else
  {
    v8 = (v7 - *a1) >> 3;
  }

  v9 = *a1;
  v10 = *(a2 - 3);
  if ((v8 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 8 * v8;
    v9 = *a1;
    v10 = *(a2 - 3);
    v12 = (v4 + 8 * v8);
    while (*v10 == *v9)
    {
      ++v10;
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        v10 = v12;
        break;
      }
    }
  }

  if (v9 == v7 || v10 != v5 && *v10 >= *v9)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 3) = v6;
  v13 = a1[1];
  a1[1] = *(a2 - 2);
  *(a2 - 2) = v13;
  v14 = a1[2];
  a1[2] = *(a2 - 1);
  *(a2 - 1) = v14;
  return 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
  v6 = result + 24 * v5;
  if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
  {
    v7 = *(v6 + 24);
    v8 = *v6;
    v9 = *(v6 + 8);
    v10 = *(v6 + 32);
    v11 = (v9 - *v6) >> 3;
    if (v10 - v7 < v11)
    {
      v11 = v10 - v7;
    }

    if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 8 * v11;
      v13 = &v8[v11];
      while (*v8 == *v7)
      {
        ++v8;
        ++v7;
        v12 -= 8;
        if (!v12)
        {
          v8 = v13;
          break;
        }
      }
    }

    if (v7 != v10 && (v8 == v9 || *v8 < *v7))
    {
      v6 += 24;
      v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
    }
  }

  v14 = *v6;
  v15 = *(v6 + 8);
  v16 = *a4;
  v17 = a4[1];
  v18 = (v17 - *a4) >> 3;
  if (v18 >= (v15 - *v6) >> 3)
  {
    v19 = (v15 - *v6) >> 3;
  }

  else
  {
    v19 = (v17 - *a4) >> 3;
  }

  if ((v19 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = 8 * v19;
    v21 = *a4;
    v22 = &v14[v19];
    while (*v14 == *v21)
    {
      ++v14;
      ++v21;
      v20 -= 8;
      if (!v20)
      {
        v14 = v22;
        break;
      }
    }

    if (v21 == v17)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v21 = *a4;
  if (v16 != v17)
  {
LABEL_26:
    if (v14 == v15 || *v14 < *v21)
    {
      return result;
    }
  }

LABEL_28:
  v23 = a4[2];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v24 = *(v6 + 16);
  *a4 = *v6;
  a4[2] = v24;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (v4 < v5)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v26 = v6;
    v27 = 2 * v5;
    v5 = (2 * v5) | 1;
    v6 = result + 24 * v5;
    v28 = v27 + 2;
    if (v28 < a3)
    {
      v29 = *(v6 + 24);
      v30 = *v6;
      v31 = *(v6 + 8);
      v32 = *(v6 + 32);
      v33 = (v31 - *v6) >> 3;
      if (v32 - v29 < v33)
      {
        v33 = v32 - v29;
      }

      if ((v33 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v34 = 8 * v33;
        v35 = &v30[v33];
        while (*v30 == *v29)
        {
          ++v30;
          ++v29;
          v34 -= 8;
          if (!v34)
          {
            v30 = v35;
            break;
          }
        }
      }

      if (v29 != v32 && (v30 == v31 || *v30 < *v29))
      {
        v6 += 24;
        v5 = v28;
      }
    }

    v37 = *v6;
    v36 = *(v6 + 8);
    v38 = v18 >= (v36 - *v6) >> 3 ? (v36 - *v6) >> 3 : v18;
    if ((v38 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      break;
    }

    v40 = v16;
    if (v16 != v17)
    {
      goto LABEL_54;
    }

LABEL_30:
    v25 = *(v6 + 16);
    *v26 = *v6;
    *(v26 + 16) = v25;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    if (v4 < v5)
    {
      goto LABEL_57;
    }
  }

  v39 = 8 * v38;
  v40 = v16;
  v41 = &v37[v38];
  while (*v37 == *v40)
  {
    ++v37;
    ++v40;
    v39 -= 8;
    if (!v39)
    {
      v37 = v41;
      break;
    }
  }

  if (v40 == v17)
  {
    goto LABEL_30;
  }

LABEL_54:
  if (v37 != v36 && *v37 >= *v40)
  {
    goto LABEL_30;
  }

  v6 = v26;
LABEL_57:
  *v6 = v16;
  *(v6 + 8) = v17;
  *(v6 + 16) = v23;
  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<long long> *>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = 0;
    v6 = *result;
    v7 = result[1];
    v8 = result[2];
    result[1] = 0;
    result[2] = 0;
    v9 = result;
    *result = 0;
    do
    {
      v11 = v9;
      v12 = &v9[3 * v5];
      v9 = v12 + 3;
      v13 = 2 * v5;
      v5 = (2 * v5) | 1;
      v14 = v13 + 2;
      if (v14 < a4)
      {
        v17 = v12[6];
        v16 = v12 + 6;
        v15 = v17;
        v18 = *(v16 - 3);
        v19 = *(v16 - 2);
        v20 = v16[1];
        v21 = v19 - v18;
        v22 = v20 - v17;
        if (v22 < v21)
        {
          v21 = v22;
        }

        if ((v21 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = 8 * v21;
          v24 = &v18[v21];
          while (*v18 == *v15)
          {
            ++v18;
            ++v15;
            v23 -= 8;
            if (!v23)
            {
              v18 = v24;
              break;
            }
          }
        }

        if (v15 != v20 && (v18 == v19 || *v18 < *v15))
        {
          v9 = v16;
          v5 = v14;
        }
      }

      v10 = v9[2];
      *v11 = *v9;
      v11[2] = v10;
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
    }

    while (v5 <= ((a4 - 2) >> 1));
    if (v9 == (a2 - 24))
    {
      *v9 = v6;
      v9[1] = v7;
      v9[2] = v8;
    }

    else
    {
      v25 = *(a2 - 8);
      *v9 = *(a2 - 24);
      v9[2] = v25;
      *(a2 - 24) = v6;
      *(a2 - 16) = v7;
      *(a2 - 8) = v8;

      return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(result, (v9 + 3), a3, 0xAAAAAAAAAAAAAAABLL * (v9 + 3 - result));
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 24 * (v4 >> 1);
  v7 = *(a2 - 24);
  v8 = *(a2 - 16);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = v8 - v7;
  if (v11 >= (v10 - *v6) >> 3)
  {
    v12 = (v10 - *v6) >> 3;
  }

  else
  {
    v12 = v8 - v7;
  }

  if ((v12 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v14 = *(a2 - 24);
    if (v7 == v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  v13 = 8 * v12;
  v14 = *(a2 - 24);
  v15 = &v9[v12];
  while (*v9 == *v14)
  {
    ++v9;
    ++v14;
    v13 -= 8;
    if (!v13)
    {
      v9 = v15;
      break;
    }
  }

  if (v14 != v8)
  {
LABEL_13:
    if (v9 == v10 || *v9 < *v14)
    {
      v16 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v17 = *(v6 + 16);
      *(a2 - 24) = *v6;
      *(a2 - 8) = v17;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      if (v4 >= 2)
      {
        while (1)
        {
          v20 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v18 = result + 24 * v5;
          v22 = *v18;
          v21 = *(v18 + 8);
          v23 = v11 >= (v21 - *v18) >> 3 ? (v21 - *v18) >> 3 : v8 - v7;
          if ((v23 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v24 = 8 * v23;
            v25 = v7;
            v26 = &v22[v23];
            while (*v22 == *v25)
            {
              ++v22;
              ++v25;
              v24 -= 8;
              if (!v24)
              {
                v22 = v26;
                break;
              }
            }
          }

          else
          {
            v25 = v7;
          }

          if (v25 == v8 || v22 != v21 && *v22 >= *v25)
          {
            break;
          }

          v19 = *(v18 + 16);
          *v6 = *v18;
          *(v6 + 16) = v19;
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          v6 = result + 24 * v5;
          if (v20 < 2)
          {
            goto LABEL_17;
          }
        }
      }

      v18 = v6;
LABEL_17:
      *v18 = v7;
      *(v18 + 8) = v8;
      *(v18 + 16) = v16;
    }
  }

  return result;
}

void ***std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v11 = *(v10 - 24);
              v10 -= 3;
              if (v11)
              {
                operator delete(*(v9 - 2));
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v6 = *(v5 - 24);
        v5 -= 3;
        if (v6)
        {
          operator delete(*(v3 - 2));
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::__emplace_back_slow_path<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3) + 1;
  if (v5 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *a2 = 0;
  v9 = v8 + 24;
  v10 = v8 - v4;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v10;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v3);
    do
    {
      if (*v2)
      {
        operator delete(v2[1]);
      }

      v2 += 3;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,false>(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, a2 - 3, a1))
        {
          v24 = *a1;
          *a1 = *(a2 - 3);
          *(a2 - 3) = v24;
          v25 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 2);
          *(a2 - 2) = v25;
          v26 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 1);
          *(a2 - 1) = v26;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, a1 + 48, (a2 - 3), a3);
      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, (a2 - 3), a3);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(a1, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(a1, a2, a3);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v27 = (v13 - 2) >> 1;
        v28 = v27 + 1;
        v29 = (a1 + 24 * v27);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(a1, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3), v29);
          v29 -= 3;
          --v28;
        }

        while (v28);
        v30 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(a1, a2, a3, v30);
          a2 -= 3;
        }

        while (v30-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (a1 + 24 * (v13 >> 1));
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(v15, a1, (a2 - 3), a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, v15, (a2 - 3), a3);
      v16 = 24 * v14;
      v17 = 24 * v14 + a1 - 24;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1 + 24, v17, (a2 - 6), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1 + 48, a1 + 24 + v16, (a2 - 9), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(v17, v15, a1 + 24 + v16, a3);
      v18 = *a1;
      *a1 = *v15;
      *v15 = v18;
      v19 = *(a1 + 8);
      *(a1 + 8) = v15[1];
      v15[1] = v19;
      v20 = *(a1 + 16);
      *(a1 + 16) = v15[2];
      v15[2] = v20;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, (a1 - 24), a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::__less<void,void> &>(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v21 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::__less<void,void> &>(a1, a2, a3);
    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

    v23 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(a1, v21, a3);
    v9 = v21 + 3;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>((v21 + 3), a2, a3))
    {
      a4 = -v11;
      a2 = v21;
      if (v23)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v23)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,false>(a1, v21, a3, -v11, a5 & 1);
      v9 = v21 + 3;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, (a2 - 3), a3);
}

uint64_t std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v8 = *v5;
      v9 = v5 + 1;
      if (*v5)
      {
        v9 = v5[1];
      }

      v10 = *v3;
      v11 = v3 + 1;
      if (*v3)
      {
        v11 = v3[1];
      }

      v12 = (4 * v10) >> 3;
      if (v12 >= (4 * v8) >> 3)
      {
        v12 = (4 * v8) >> 3;
      }

      v13 = 8 * v12;
      v14 = v11;
      v15 = v9;
      if ((v12 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v16 = 8 * v12;
        v14 = v11;
        v15 = v9;
        while (*v15 == *v14)
        {
          ++v15;
          ++v14;
          v16 -= 8;
          if (!v16)
          {
            v15 = &v9[v12];
            break;
          }
        }
      }

      v17 = (v9 + ((4 * v8) & 0xFFFFFFFFFFFFFFF8));
      v18 = (v11 + ((4 * v10) & 0xFFFFFFFFFFFFFFF8));
      if (v14 != v18 && (v15 == v17 || *v15 < *v14))
      {
        break;
      }

      if ((v12 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = &v11[v12];
        while (*v11 == *v9)
        {
          ++v11;
          ++v9;
          v13 -= 8;
          if (!v13)
          {
            v11 = v19;
            break;
          }
        }
      }

      if (v9 == v17)
      {
        v3 += 3;
        if (v3 == v4)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == v18)
        {
          return 0;
        }

        result = 0;
        v3 += 3;
        if (v3 == v4 || *v11 < *v9)
        {
          return result;
        }
      }

      v5 += 3;
    }

    while (v5 != v6);
  }

  return 1;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a4, a2, a1);
  result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a4, a3, a2);
  if (v8)
  {
    v11 = (a1 + 16);
    v10 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v10;
      v12 = *(a1 + 8);
      *(a1 + 8) = *(a3 + 8);
LABEL_9:
      *(a3 + 8) = v12;
      v16 = (a3 + 16);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v10;
    v19 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v19;
    v11 = (a2 + 16);
    v20 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v20;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a4, a3, a2))
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      v12 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    v14 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v14;
    v16 = (a2 + 16);
    v15 = *(a2 + 16);
    *(a2 + 16) = *(a3 + 16);
    *(a3 + 16) = v15;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a4, a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      *a2 = v17;
      v18 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v18;
      v11 = (a1 + 16);
LABEL_10:
      v22 = *v11;
      *v11 = *v16;
      *v16 = v22;
    }
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a2, a3, a5);
  result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a5, a4, a3);
  if (result)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v12;
    v13 = *(a3 + 16);
    *(a3 + 16) = *(a4 + 16);
    *(a4 + 16) = v13;
    result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a5, a3, a2);
    if (result)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v15;
      v16 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v16;
      result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a5, a2, a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
        v18 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v18;
        v19 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a2 + 16) = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a2, a3, a4, a6);
  result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a6, a5, a4);
  if (result)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v14;
    v15 = *(a4 + 16);
    *(a4 + 16) = *(a5 + 16);
    *(a5 + 16) = v15;
    result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a6, a4, a3);
    if (result)
    {
      v16 = *a3;
      *a3 = *a4;
      *a4 = v16;
      v17 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v17;
      v18 = *(a3 + 16);
      *(a3 + 16) = *(a4 + 16);
      *(a4 + 16) = v18;
      result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a6, a3, a2);
      if (result)
      {
        v19 = *a2;
        *a2 = *a3;
        *a3 = v19;
        v20 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v20;
        v21 = *(a2 + 16);
        *(a2 + 16) = *(a3 + 16);
        *(a3 + 16) = v21;
        result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a6, a2, a1);
        if (result)
        {
          v22 = *a1;
          *a1 = *a2;
          *a2 = v22;
          v23 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v23;
          v24 = *(a1 + 16);
          *(a1 + 16) = *(a2 + 16);
          *(a2 + 16) = v24;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(uint64_t result, uint64_t **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 24);
    if ((result + 24) != a2)
    {
      v7 = result;
      do
      {
        v9 = v5;
        result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, v5, v7);
        if (result)
        {
          v10 = *(v7 + 3);
          v11 = v7[5];
          *v9 = 0;
          v9[1] = 0;
          v9[2] = 0;
          v12 = v7[2];
          *(v7 + 3) = *v7;
          v9[2] = v12;
          *v7 = 0;
          v7[1] = 0;
          v7[2] = 0;
          v8 = v4;
          if (v7 != v4)
          {
            v13 = v7;
            do
            {
              v15 = *(v13 - 3);
              v16 = *(v13 - 2);
              v13 -= 3;
              if (v15 == v16)
              {
LABEL_4:
                v8 = v7;
                goto LABEL_5;
              }

              if (v10 != *(&v10 + 1))
              {
                for (i = v10; i != *(&v10 + 1); i += 3)
                {
                  v18 = *i;
                  v19 = i + 1;
                  if (*i)
                  {
                    v19 = i[1];
                  }

                  v20 = *v15;
                  v21 = v15 + 1;
                  if (*v15)
                  {
                    v21 = v15[1];
                  }

                  result = (4 * v20) >> 3;
                  if (result >= (4 * v18) >> 3)
                  {
                    result = (4 * v18) >> 3;
                  }

                  v22 = 8 * result;
                  v23 = v21;
                  v24 = v19;
                  if ((result & 0x1FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v25 = 8 * result;
                    v23 = v21;
                    v24 = v19;
                    while (*v24 == *v23)
                    {
                      ++v24;
                      ++v23;
                      v25 -= 8;
                      if (!v25)
                      {
                        v24 = &v19[result];
                        break;
                      }
                    }
                  }

                  v26 = (v19 + ((4 * v18) & 0xFFFFFFFFFFFFFFF8));
                  v27 = (v21 + ((4 * v20) & 0xFFFFFFFFFFFFFFF8));
                  if (v23 != v27 && (v24 == v26 || *v24 < *v23))
                  {
                    break;
                  }

                  if ((result & 0x1FFFFFFFFFFFFFFFLL) != 0)
                  {
                    result = &v21[result];
                    while (*v21 == *v19)
                    {
                      ++v21;
                      ++v19;
                      v22 -= 8;
                      if (!v22)
                      {
                        v21 = result;
                        break;
                      }
                    }
                  }

                  if (v19 == v26)
                  {
                    v15 += 3;
                    if (v15 == v16)
                    {
                      goto LABEL_4;
                    }
                  }

                  else
                  {
                    if (v21 == v27)
                    {
                      goto LABEL_4;
                    }

                    v15 += 3;
                    if (v15 == v16 || *v21 < *v19)
                    {
                      goto LABEL_4;
                    }
                  }
                }
              }

              v14 = *(v7 - 1);
              *v7 = *(v7 - 3);
              v7[2] = v14;
              *v13 = 0;
              v13[1] = 0;
              v13[2] = 0;
              v7 = v13;
            }

            while (v13 != v4);
            v8 = v4;
          }

LABEL_5:
          *v8 = v10;
          v8[2] = v11;
        }

        v5 = v9 + 3;
        v7 = v9;
      }

      while (v9 + 3 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(uint64_t result, uint64_t **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 24);
    if ((result + 24) != a2)
    {
      do
      {
        v7 = v5;
        result = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, v5, v4);
        if (result)
        {
          v8 = *v7;
          v9 = v4[4];
          v10 = v4[5];
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v11 = v4[2];
          *v7 = *v4;
          v7[2] = v11;
          v4[1] = 0;
          v4[2] = 0;
          *v4 = 0;
          while (1)
          {
            v13 = *(v4 - 3);
            v14 = *(v4 - 2);
            if (v13 == v14)
            {
              break;
            }

            v15 = v4;
            v4 -= 3;
            if (v8 != v9)
            {
              for (i = v8; i != v9; i += 3)
              {
                v17 = *i;
                v18 = i + 1;
                if (*i)
                {
                  v18 = i[1];
                }

                v19 = *v13;
                v20 = v13 + 1;
                if (*v13)
                {
                  v20 = v13[1];
                }

                result = (4 * v19) >> 3;
                if (result >= (4 * v17) >> 3)
                {
                  result = (4 * v17) >> 3;
                }

                v21 = 8 * result;
                v22 = v20;
                v23 = v18;
                if ((result & 0x1FFFFFFFFFFFFFFFLL) != 0)
                {
                  v24 = 8 * result;
                  v22 = v20;
                  v23 = v18;
                  while (*v23 == *v22)
                  {
                    ++v23;
                    ++v22;
                    v24 -= 8;
                    if (!v24)
                    {
                      v23 = &v18[result];
                      break;
                    }
                  }
                }

                v25 = (v18 + ((4 * v17) & 0xFFFFFFFFFFFFFFF8));
                v26 = (v20 + ((4 * v19) & 0xFFFFFFFFFFFFFFF8));
                if (v22 != v26 && (v23 == v25 || *v23 < *v22))
                {
                  break;
                }

                if ((result & 0x1FFFFFFFFFFFFFFFLL) != 0)
                {
                  result = &v20[result];
                  while (*v20 == *v18)
                  {
                    ++v20;
                    ++v18;
                    v21 -= 8;
                    if (!v21)
                    {
                      v20 = result;
                      break;
                    }
                  }
                }

                if (v18 == v25)
                {
                  v13 += 3;
                  if (v13 == v14)
                  {
                    goto LABEL_4;
                  }
                }

                else if (v20 == v26 || (v13 += 3, v13 == v14) || *v20 < *v18)
                {
LABEL_4:
                  v4 = v15;
                  goto LABEL_5;
                }
              }
            }

            v12 = v4[2];
            *v15 = *v4;
            v15[2] = v12;
            *v4 = 0;
            v4[1] = 0;
            v4[2] = 0;
          }

LABEL_5:
          *v4 = v8;
          v4[1] = v9;
          v4[2] = v10;
        }

        v5 = v7 + 3;
        v4 = v7;
      }

      while (v7 + 3 != a2);
    }
  }

  return result;
}

uint64_t **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::__less<void,void> &>(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v59 = *a1;
  v60 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, &v59, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while ((std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, &v59, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, &v59, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while ((std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, &v59, v4) & 1) != 0);
  }

  if (v6 < v4)
  {
    v9 = *v6;
    v10 = *v4;
    do
    {
      *v6 = v10;
      *v4 = v9;
      v11 = v6[1];
      v6[1] = *(v4 + 8);
      *(v4 + 8) = v11;
      v12 = v6[2];
      v6[2] = *(v4 + 16);
      *(v4 + 16) = v12;
      if (v59 == *(&v59 + 1))
      {
        do
        {
          v9 = v6[3];
          v13 = v6[4];
          v6 += 3;
        }

        while (v9 == v13);
      }

      else
      {
        do
        {
LABEL_19:
          v9 = v6[3];
          v16 = v6[4];
          v6 += 3;
        }

        while (v9 == v16);
        v17 = v9;
        for (i = v59; i != *(&v59 + 1); i += 3)
        {
          v19 = *i;
          v20 = i + 1;
          if (*i)
          {
            v20 = i[1];
          }

          v21 = *v17;
          v22 = v17 + 1;
          if (*v17)
          {
            v22 = v17[1];
          }

          v23 = (4 * v21) >> 3;
          if (v23 >= (4 * v19) >> 3)
          {
            v23 = (4 * v19) >> 3;
          }

          v24 = 8 * v23;
          v25 = v22;
          v26 = v20;
          if ((v23 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v27 = 8 * v23;
            v25 = v22;
            v26 = v20;
            while (*v26 == *v25)
            {
              ++v26;
              ++v25;
              v27 -= 8;
              if (!v27)
              {
                v26 = &v20[v23];
                break;
              }
            }
          }

          v28 = (v20 + ((4 * v19) & 0xFFFFFFFFFFFFFFF8));
          v29 = (v22 + ((4 * v21) & 0xFFFFFFFFFFFFFFF8));
          if (v25 != v29 && (v26 == v28 || *v26 < *v25))
          {
            break;
          }

          if ((v23 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v30 = &v22[v23];
            while (*v22 == *v20)
            {
              ++v22;
              ++v20;
              v24 -= 8;
              if (!v24)
              {
                v22 = v30;
                break;
              }
            }
          }

          if (v20 == v28)
          {
            v17 += 3;
            if (v17 == v16)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v22 == v29)
            {
              goto LABEL_19;
            }

            v31 = *v22;
            v32 = *v20;
            v17 += 3;
            if (v17 == v16 || v31 < v32)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v10 = *(v4 - 24);
      v14 = *(v4 - 16);
      v4 -= 24;
      if (v10 != v14)
      {
        if (v59 == *(&v59 + 1))
        {
          do
          {
            v10 = *(v4 - 24);
            v15 = *(v4 - 16);
            v4 -= 24;
          }

          while (v10 != v15);
        }

        else
        {
          do
          {
            v33 = v10;
            v34 = v59;
            do
            {
              v35 = *v34;
              v36 = v34 + 1;
              if (*v34)
              {
                v36 = v34[1];
              }

              v37 = *v33;
              v38 = v33 + 1;
              if (*v33)
              {
                v38 = v33[1];
              }

              v39 = (4 * v37) >> 3;
              if (v39 >= (4 * v35) >> 3)
              {
                v39 = (4 * v35) >> 3;
              }

              v40 = 8 * v39;
              v41 = v38;
              v42 = v36;
              if ((v39 & 0x1FFFFFFFFFFFFFFFLL) != 0)
              {
                v43 = 8 * v39;
                v41 = v38;
                v42 = v36;
                while (*v42 == *v41)
                {
                  ++v42;
                  ++v41;
                  v43 -= 8;
                  if (!v43)
                  {
                    v42 = &v36[v39];
                    break;
                  }
                }
              }

              v44 = (v36 + ((4 * v35) & 0xFFFFFFFFFFFFFFF8));
              v45 = (v38 + ((4 * v37) & 0xFFFFFFFFFFFFFFF8));
              if (v41 != v45 && (v42 == v44 || *v42 < *v41))
              {
                break;
              }

              if ((v39 & 0x1FFFFFFFFFFFFFFFLL) != 0)
              {
                v46 = &v38[v39];
                while (*v38 == *v36)
                {
                  ++v38;
                  ++v36;
                  v40 -= 8;
                  if (!v40)
                  {
                    v38 = v46;
                    break;
                  }
                }
              }

              if (v36 == v44)
              {
                v33 += 3;
                if (v33 == v14)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                if (v38 == v45)
                {
                  goto LABEL_12;
                }

                v33 += 3;
                if (v33 == v14 || *v38 < *v36)
                {
                  goto LABEL_12;
                }
              }

              v34 += 3;
            }

            while (v34 != *(&v59 + 1));
            v10 = *(v4 - 24);
            v14 = *(v4 - 16);
            v4 -= 24;
          }

          while (v10 != v14);
        }
      }

LABEL_12:
      ;
    }

    while (v6 < v4);
  }

  v47 = v6 - 3;
  if (v6 - 3 != a1)
  {
    v48 = *a1;
    if (*a1)
    {
      v49 = a1[1];
      v50 = *a1;
      if (v49 != v48)
      {
        v51 = a1[1];
        do
        {
          v52 = *(v51 - 24);
          v51 -= 3;
          if (v52)
          {
            operator delete(*(v49 - 2));
          }

          v49 = v51;
        }

        while (v51 != v48);
        v50 = *a1;
      }

      a1[1] = v48;
      operator delete(v50);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v6 - 3);
    a1[2] = *(v6 - 1);
LABEL_93:
    *v47 = 0;
    *(v6 - 2) = 0;
    *(v6 - 1) = 0;
    goto LABEL_94;
  }

  v53 = *v47;
  if (*v47)
  {
    v54 = *(v6 - 2);
    v55 = *v47;
    if (v54 != v53)
    {
      v56 = *(v6 - 2);
      do
      {
        v57 = *(v56 - 24);
        v56 -= 3;
        if (v57)
        {
          operator delete(*(v54 - 2));
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = *v47;
    }

    *(v6 - 2) = v53;
    operator delete(v55);
    goto LABEL_93;
  }

LABEL_94:
  *(v6 - 3) = v59;
  *(v6 - 1) = v60;
  return v6;
}

uint64_t **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::__less<void,void> &>(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v57 = *a1;
  v58 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  do
  {
    v7 = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, &a1[v6 + 3], &v57);
    v6 += 3;
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 3)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while ((std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, a2, &v57) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, a2, &v57));
  }

  if (v8 >= a2)
  {
    v11 = &a1[v6];
    goto LABEL_69;
  }

  v9 = *v8;
  v10 = *a2;
  v11 = &a1[v6];
  v12 = a2;
  while (2)
  {
    *v11 = v10;
    *v12 = v9;
    v13 = v11[1];
    v11[1] = v12[1];
    v12[1] = v13;
    v14 = v11[2];
    v11[2] = v12[2];
    v12[2] = v14;
    do
    {
LABEL_12:
      v9 = v11[3];
      v15 = v11[4];
      v11 += 3;
    }

    while (v9 == v15);
    v16 = v57;
    v17 = v9;
    while (1)
    {
      v18 = *v17;
      v19 = v17 + 1;
      if (*v17)
      {
        v19 = v17[1];
      }

      v20 = *v16;
      v21 = v16 + 1;
      if (*v16)
      {
        v21 = v16[1];
      }

      v22 = (4 * v20) >> 3;
      if (v22 >= (4 * v18) >> 3)
      {
        v22 = (4 * v18) >> 3;
      }

      v23 = 8 * v22;
      v24 = v21;
      v25 = v19;
      if ((v22 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = 8 * v22;
        v24 = v21;
        v25 = v19;
        while (*v25 == *v24)
        {
          ++v25;
          ++v24;
          v26 -= 8;
          if (!v26)
          {
            v25 = &v19[v22];
            break;
          }
        }
      }

      v27 = (v19 + ((4 * v18) & 0xFFFFFFFFFFFFFFF8));
      v28 = (v21 + ((4 * v20) & 0xFFFFFFFFFFFFFFF8));
      if (v24 != v28 && (v25 == v27 || *v25 < *v24))
      {
        goto LABEL_12;
      }

      if ((v22 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v29 = &v21[v22];
        while (*v21 == *v19)
        {
          ++v21;
          ++v19;
          v23 -= 8;
          if (!v23)
          {
            v21 = v29;
            break;
          }
        }
      }

      if (v19 == v27)
      {
        v16 += 3;
        if (v16 == *(&v57 + 1))
        {
          break;
        }

        goto LABEL_15;
      }

      if (v21 == v28)
      {
        break;
      }

      v16 += 3;
      if (v16 == *(&v57 + 1) || *v21 < *v19)
      {
        break;
      }

LABEL_15:
      v17 += 3;
      if (v17 == v15)
      {
        goto LABEL_12;
      }
    }

LABEL_66:
    v10 = *(v12 - 3);
    v44 = *(v12 - 2);
    v12 -= 3;
    if (v10 != v44)
    {
      v30 = v57;
      for (i = v10; i != v44; i += 3)
      {
        v32 = *i;
        v33 = i + 1;
        if (*i)
        {
          v33 = i[1];
        }

        v34 = *v30;
        v35 = v30 + 1;
        if (*v30)
        {
          v35 = v30[1];
        }

        v36 = (4 * v34) >> 3;
        if (v36 >= (4 * v32) >> 3)
        {
          v36 = (4 * v32) >> 3;
        }

        v37 = 8 * v36;
        v38 = v35;
        v39 = v33;
        if ((v36 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = 8 * v36;
          v38 = v35;
          v39 = v33;
          while (*v39 == *v38)
          {
            ++v39;
            ++v38;
            v40 -= 8;
            if (!v40)
            {
              v39 = &v33[v36];
              break;
            }
          }
        }

        v41 = (v33 + ((4 * v32) & 0xFFFFFFFFFFFFFFF8));
        v42 = (v35 + ((4 * v34) & 0xFFFFFFFFFFFFFFF8));
        if (v38 != v42 && (v39 == v41 || *v39 < *v38))
        {
          break;
        }

        if ((v36 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v43 = &v35[v36];
          while (*v35 == *v33)
          {
            ++v35;
            ++v33;
            v37 -= 8;
            if (!v37)
            {
              v35 = v43;
              break;
            }
          }
        }

        if (v33 == v41)
        {
          v30 += 3;
          if (v30 == *(&v57 + 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v35 == v42)
          {
            goto LABEL_66;
          }

          v30 += 3;
          if (v30 == *(&v57 + 1) || *v35 < *v33)
          {
            goto LABEL_66;
          }
        }
      }
    }

    if (v11 < v12)
    {
      continue;
    }

    break;
  }

LABEL_69:
  v45 = v11 - 3;
  if (v11 - 3 != a1)
  {
    v46 = *a1;
    if (*a1)
    {
      v47 = a1[1];
      v48 = *a1;
      if (v47 != v46)
      {
        v49 = a1[1];
        do
        {
          v50 = *(v49 - 24);
          v49 -= 3;
          if (v50)
          {
            operator delete(*(v47 - 2));
          }

          v47 = v49;
        }

        while (v49 != v46);
        v48 = *a1;
      }

      a1[1] = v46;
      operator delete(v48);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v11 - 3);
    a1[2] = *(v11 - 1);
    goto LABEL_87;
  }

  v51 = *v45;
  if (*v45)
  {
    v52 = *(v11 - 2);
    v53 = *v45;
    if (v52 != v51)
    {
      v54 = *(v11 - 2);
      do
      {
        v55 = *(v54 - 24);
        v54 -= 3;
        if (v55)
        {
          operator delete(*(v52 - 2));
        }

        v52 = v54;
      }

      while (v54 != v51);
      v53 = *v45;
    }

    *(v11 - 2) = v51;
    operator delete(v53);
LABEL_87:
    *v45 = 0;
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
  }

  *(v11 - 3) = v57;
  *(v11 - 1) = v58;
  return v11 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, a2 - 24, a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, a1 + 48, a2 - 24, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v11 = (a1 + 48);
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,0>(a1, a1 + 24, a1 + 48, a3);
    v12 = a1 + 72;
    if (a1 + 72 == a2)
    {
      return 1;
    }

    v13 = 0;
    while (1)
    {
      if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, v12, v11))
      {
        v15 = 0;
        v26 = *v12;
        v27 = *(v12 + 16);
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        *v12 = 0;
        v16 = v12;
        do
        {
          v14 = v11;
          if (v15)
          {
            v17 = *(v16 + 8);
            v18 = v15;
            if (v17 != v15)
            {
              v19 = *(v16 + 8);
              do
              {
                v20 = *(v19 - 24);
                v19 -= 3;
                if (v20)
                {
                  operator delete(*(v17 - 2));
                }

                v17 = v19;
              }

              while (v19 != v15);
              v18 = *v16;
            }

            *(v16 + 8) = v15;
            operator delete(v18);
            *v16 = 0;
            *(v16 + 8) = 0;
            *(v16 + 16) = 0;
          }

          *v16 = *v14;
          *(v16 + 16) = *(v14 + 16);
          *v14 = 0;
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
          if (v14 == a1)
          {
            v14 = a1;
            goto LABEL_15;
          }

          v11 = (v14 - 24);
          v21 = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, &v26, (v14 - 24));
          v15 = *v14;
          v16 = v14;
        }

        while ((v21 & 1) != 0);
        if (v15)
        {
          v22 = *(v14 + 8);
          v23 = *v14;
          if (v22 != v15)
          {
            v24 = *(v14 + 8);
            do
            {
              v25 = *(v24 - 24);
              v24 -= 3;
              if (v25)
              {
                operator delete(*(v22 - 2));
              }

              v22 = v24;
            }

            while (v24 != v15);
            v23 = *v14;
          }

          *(v14 + 8) = v15;
          operator delete(v23);
          *v14 = 0;
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
        }

LABEL_15:
        *v14 = v26;
        *(v14 + 16) = v27;
        if (++v13 == 8)
        {
          return v12 + 24 == a2;
        }
      }

      v11 = v12;
      v12 += 24;
      if (v12 == a2)
      {
        return 1;
      }
    }
  }

  if (!std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, (a2 - 24), a1))
  {
    return 1;
  }

  v8 = *a1;
  *a1 = *(a2 - 24);
  *(a2 - 24) = v8;
  v9 = *(a1 + 8);
  *(a1 + 8) = *(a2 - 16);
  *(a2 - 16) = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = *(a2 - 8);
  *(a2 - 8) = v10;
  return 1;
}

double std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v10 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 24 * v10);
      v12 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a2, (a1 + 24 * v10), v11 + 3))
      {
        v11 += 3;
        v10 = v12;
      }

      if ((std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a2, v11, v5) & 1) == 0)
      {
        v14 = 0;
        v26 = *v5;
        v27 = v5[2];
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        while (1)
        {
          v15 = v11;
          if (v14)
          {
            v16 = v5[1];
            v17 = v14;
            if (v16 != v14)
            {
              v18 = v5[1];
              do
              {
                v19 = *(v18 - 24);
                v18 -= 3;
                if (v19)
                {
                  operator delete(*(v16 - 2));
                }

                v16 = v18;
              }

              while (v18 != v14);
              v17 = *v5;
            }

            v5[1] = v14;
            operator delete(v17);
            *v5 = 0;
            v5[1] = 0;
            v5[2] = 0;
          }

          *v5 = *v15;
          v5[2] = v15[2];
          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
          if (v7 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v11 = (a1 + 24 * v20);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v20;
          }

          else if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a2, (a1 + 24 * v20), v11 + 3))
          {
            v11 += 3;
          }

          else
          {
            v10 = v20;
          }

          v21 = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a2, v11, &v26);
          v14 = *v15;
          v5 = v15;
          if (v21)
          {
            if (v14)
            {
              v22 = v15[1];
              v23 = *v15;
              if (v22 != v14)
              {
                v24 = v15[1];
                do
                {
                  v25 = *(v24 - 24);
                  v24 -= 3;
                  if (v25)
                  {
                    operator delete(*(v22 - 2));
                  }

                  v22 = v24;
                }

                while (v24 != v14);
                v23 = *v15;
              }

              v15[1] = v14;
              operator delete(v23);
              *v15 = 0;
              v15[1] = 0;
              v15[2] = 0;
            }

            break;
          }
        }

        result = *&v26;
        *v15 = v26;
        v15[2] = v27;
      }
    }
  }

  return result;
}

__n128 std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = 0;
    *__p = *a1;
    v24 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v8 = (a4 - 2) >> 1;
    v9 = a1;
    do
    {
      v11 = v9;
      v12 = &v9[3 * v7];
      v9 = v12 + 3;
      v13 = 2 * v7;
      v7 = (2 * v7) | 1;
      v14 = v13 + 2;
      if (v13 + 2 < a4)
      {
        v15 = v12 + 6;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, v12 + 3, v12 + 6))
        {
          v9 = v15;
          v7 = v14;
        }

        v16 = *v11;
        if (*v11)
        {
          v17 = v11[1];
          v10 = *v11;
          if (v17 != v16)
          {
            v18 = v11[1];
            do
            {
              v19 = *(v18 - 24);
              v18 -= 3;
              if (v19)
              {
                operator delete(*(v17 - 2));
              }

              v17 = v18;
            }

            while (v18 != v16);
            v10 = *v11;
          }

          v11[1] = v16;
          operator delete(v10);
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
        }
      }

      *v11 = *v9;
      v11[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
    }

    while (v7 <= v8);
    if (v9 == (a2 - 24))
    {
      result = *__p;
      *v9 = *__p;
      v9[2] = v24;
    }

    else
    {
      v20 = *(a2 - 8);
      *v9 = *(a2 - 24);
      v9[2] = v20;
      *(a2 - 24) = *__p;
      *(a2 - 8) = v24;
      result.n128_f64[0] = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(a1, (v9 + 3), a3, 0xAAAAAAAAAAAAAAABLL * ((v9 - a1 + 24) >> 3));
    }
  }

  return result;
}

void sub_23CA2F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA2F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 24 * v7);
    v9 = (a2 - 24);
    if (std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, v8, (a2 - 24)))
    {
      v11 = 0;
      v22 = *(a2 - 24);
      v23 = *(a2 - 8);
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      while (1)
      {
        v12 = v8;
        if (v11)
        {
          v13 = v9[1];
          v14 = v11;
          if (v13 != v11)
          {
            v15 = v9[1];
            do
            {
              v16 = *(v15 - 24);
              v15 -= 3;
              if (v16)
              {
                operator delete(*(v13 - 2));
              }

              v13 = v15;
            }

            while (v15 != v11);
            v14 = *v9;
          }

          v9[1] = v11;
          operator delete(v14);
          *v9 = 0;
          v9[1] = 0;
          v9[2] = 0;
        }

        *v9 = *v12;
        v9[2] = v12[2];
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        v17 = std::__less<void,void>::operator()[abi:ne200100]<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>>(a3, v8, &v22);
        v11 = *v12;
        v9 = v12;
        if ((v17 & 1) == 0)
        {
          if (v11)
          {
            v18 = v12[1];
            v19 = *v12;
            if (v18 != v11)
            {
              v20 = v12[1];
              do
              {
                v21 = *(v20 - 24);
                v20 -= 3;
                if (v21)
                {
                  operator delete(*(v18 - 2));
                }

                v18 = v20;
              }

              while (v20 != v11);
              v19 = *v12;
            }

            v12[1] = v11;
            operator delete(v19);
            *v12 = 0;
            v12[1] = 0;
            v12[2] = 0;
          }

          break;
        }
      }

      result = *&v22;
      *v12 = v22;
      v12[2] = v23;
    }
  }

  return result;
}

uint64_t std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::__emplace_back_slow_path<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>> const&>(void ***a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = (8 * (a1[1] - *a1));
  *v6 = 0;
  v7 = *a2;
  if (*a2 < 2)
  {
LABEL_13:
    v8 = (v6 + 3);
    v9 = *a1;
    v10 = a1[1];
    v11 = (v6 + *a1 - v10);
    if (v10 == *a1)
    {
      goto LABEL_14;
    }

LABEL_18:
    v13 = v9;
    v14 = v11;
    do
    {
      *v14 = 0;
      *v14 = *v13;
      *(v14 + 1) = *(v13 + 1);
      *v13 = 0;
      v13 += 3;
      v14 += 3;
    }

    while (v13 != v10);
    do
    {
      if (*v9)
      {
        operator delete(v9[1]);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
    *a1 = v11;
    a1[1] = v8;
    a1[2] = 0;
    if (v9)
    {
      goto LABEL_15;
    }

    return v8;
  }

  if ((v7 & 1) == 0)
  {
    *v6 = v7;
    *(24 * v2 + 8) = *(a2 + 1);
    goto LABEL_13;
  }

  absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::InitFrom((24 * v2), a2);
  v8 = 24 * v2 + 24;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v6 + *a1 - v10);
  if (v10 != *a1)
  {
    goto LABEL_18;
  }

LABEL_14:
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
LABEL_15:
    operator delete(v9);
  }

  return v8;
}

void sub_23CA2FBB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*v2)
  {
    operator delete(*(v2 + 8));
  }

  std::__split_buffer<operations_research::Domain>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *absl::lts_20240722::inlined_vector_internal::Storage<long long,2ul,std::allocator<long long>>::InitFrom(void *a1, void *a2)
{
  v4 = *a2 >> 1;
  if (*a2)
  {
    if (!(*a2 >> 62))
    {
      if (v4 > 4)
      {
        v5 = *a2 >> 1;
      }

      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 8 * v4);
  *a1 = *a2;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), a2 - 2);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), (v9 + 32));
        v26 = *(a2 - 2);
        v27 = *(v9 + 32);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return result;
          }

          v29 = *(a2 - 2);
          v28 = *(v9 + 40);
          if (v29 >= v28)
          {
            return result;
          }
        }

        else
        {
          v28 = *(v9 + 40);
          v29 = *(a2 - 2);
        }

        *(v9 + 32) = v26;
        *(a2 - 2) = v27;
        *(v9 + 40) = v29;
        *(a2 - 2) = v28;
        v30 = *(v9 + 32);
        v31 = *(v9 + 16);
        if (v30 >= v31)
        {
          if (v31 < v30)
          {
            return result;
          }

          v33 = *(v9 + 40);
          v32 = *(v9 + 24);
          if (v33 >= v32)
          {
            return result;
          }
        }

        else
        {
          v32 = *(v9 + 24);
          v33 = *(v9 + 40);
        }

        *(v9 + 16) = v30;
        *(v9 + 32) = v31;
        *(v9 + 24) = v33;
        *(v9 + 40) = v32;
        v34 = *v9;
        if (v30 >= *v9)
        {
          if (v34 < v30)
          {
            return result;
          }

          v35 = *(v9 + 8);
          if (v33 >= v35)
          {
            return result;
          }
        }

        else
        {
          v35 = *(v9 + 8);
        }

        *v9 = v30;
        *(v9 + 16) = v34;
        *(v9 + 8) = v33;
        *(v9 + 24) = v35;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v36 = (v9 + 16);
      v38 = v9 == a2 || v36 == a2;
      if (a5)
      {
        if (v38)
        {
          return result;
        }

        v39 = 0;
        v40 = v9;
LABEL_56:
        v42 = v40;
        v40 = v36;
        v43 = *(v42 + 16);
        v44 = *v42;
        if (v43 >= *v42)
        {
          if (v44 < v43)
          {
            goto LABEL_55;
          }

          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
          if (v45 >= v46)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
        }

        *(v42 + 16) = v44;
        *(v40 + 8) = v46;
        v41 = v9;
        if (v42 == v9)
        {
          goto LABEL_54;
        }

        v47 = v39;
        while (1)
        {
          v50 = *(v9 + v47 - 16);
          if (v43 < v50)
          {
            v48 = *(v9 + v47 - 8);
          }

          else
          {
            if (v50 < v43)
            {
              v41 = v9 + v47;
LABEL_54:
              *v41 = v43;
              *(v41 + 8) = v45;
LABEL_55:
              v36 = (v40 + 16);
              v39 += 16;
              if ((v40 + 16) == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v48 = *(v9 + v47 - 8);
            if (v45 >= v48)
            {
              v41 = v42;
              goto LABEL_54;
            }
          }

          v42 -= 16;
          v49 = v9 + v47;
          *v49 = v50;
          *(v49 + 8) = v48;
          v47 -= 16;
          if (!v47)
          {
            v41 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v38)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v56 = v8;
        v8 = v36;
        v57 = *(v56 + 16);
        v58 = *v56;
        if (v57 < *v56)
        {
          break;
        }

        if (v58 >= v57)
        {
          v59 = *(v56 + 24);
          if (v59 < *(v56 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v36 = (v8 + 16);
        if ((v8 + 16) == a2)
        {
          return result;
        }
      }

      v59 = *(v56 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v58;
        *(j + 16) = *j;
        v58 = *(j - 24);
        if (v57 >= v58 && (v58 < v57 || v59 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v57;
      *j = v59;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v51 = (v12 - 2) >> 1;
        v52 = v51 + 1;
        v53 = (v9 + 16 * v51);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v9, a3, (a2 - v9) >> 4, v53);
          v53 -= 2;
          --v52;
        }

        while (v52);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,int> *>(v9, a2, a3, v12);
          a2 -= 2;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 16 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v8, (v8 + 16 * (v12 >> 1)), a2 - 2);
      v15 = 16 * v13;
      v16 = (16 * v13 + v8 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 16), v16, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 32), (v8 + 16 + v15), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v16, v14, (v8 + 16 + v15));
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      LODWORD(v17) = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v17;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v8 - 16);
    if (v18 >= *v8 && (*v8 < v18 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v8, v19);
    v9 = v19 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v19 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = v19 + 16;
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v22 = *(a2 - 2);
  v23 = *v9;
  if (v22 < *v9)
  {
    v24 = *(v9 + 8);
    v25 = *(a2 - 2);
LABEL_30:
    *v9 = v22;
    *(a2 - 2) = v23;
    *(v9 + 8) = v25;
    *(a2 - 2) = v24;
    return result;
  }

  if (v23 >= v22)
  {
    v25 = *(a2 - 2);
    v24 = *(v9 + 8);
    if (v25 < v24)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 2) < *(a1 + 2))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 2);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;
      *(a3 + 2) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 2);
      v16 = *(a2 + 2);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 2);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 2);
    *(a1 + 2) = v16;
    *(a2 + 2) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 2);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 2);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 2) = v19;
    result = 1;
    *(a3 + 2) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 2);
    v11 = *(a3 + 2);
LABEL_9:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 2) = v11;
    *(a3 + 2) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 2);
      v15 = *(a2 + 2);
LABEL_11:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 2) = v15;
      result = 1;
      *(a2 + 2) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 2);
      v14 = *(a1 + 2);
      if (v15 < v14)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v3 < v9)
  {
    return 0;
  }

  v11 = *(a3 + 2);
  v10 = *(a2 + 2);
  if (v11 < v10)
  {
    goto LABEL_9;
  }

  return 0;
}