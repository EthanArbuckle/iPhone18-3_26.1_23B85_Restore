void sub_23CA80898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, void *__p, void *a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a32);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a42);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v42 - 168));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(operations_research::sat::PresolveContext **this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (*(a3 + 15) == 12)
  {
    v5 = *(a3 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = *(a3 + 3);
      v8 = 4 * v5;
      do
      {
        LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this[1], *v7);
        if (LiteralRepresentative != *v7)
        {
          *v7 = LiteralRepresentative;
          v6 = 1;
        }

        ++v7;
        v8 -= 4;
      }

      while (v8);
      goto LABEL_12;
    }

LABEL_10:
    v6 = 0;
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *(this[1] + 81) + 24 * a2;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*v10 == v12)
    {
      v6 = 0;
LABEL_12:
      v15 = *MEMORY[0x277D85DE8];
      return v6 & 1;
    }

    while (1)
    {
      v13 = *v11;
      operations_research::sat::PresolveContext::GetAffineRelation(this[1], *v11, v19);
      if (LODWORD(v19[0]) != v13)
      {
        break;
      }

      if (++v11 == v12)
      {
        goto LABEL_10;
      }
    }

    v19[0] = &unk_284F3DD88;
    v19[1] = &v18;
    v19[2] = this;
    v20 = v19;
    operations_research::sat::ApplyToAllLiteralIndices(v19, a3);
    if (v20 == v19)
    {
      (*(*v20 + 32))(v20);
    }

    else if (v20)
    {
      (*(*v20 + 40))();
    }

    v6 = v18;
    v17 = *MEMORY[0x277D85DE8];
  }

  return v6 & 1;
}

void sub_23CA80C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(int *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::DivideLinearByGcd(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v6 = *(this + 1);
  if (*(v6 + 416))
  {
    goto LABEL_2;
  }

  if (*(a2 + 15) == 12)
  {
    v10 = *(a2 + 6);
    v11 = *(v10 + 16);
    if (v11 > 0)
    {
      v12 = 0;
      v7 = 0;
      v13 = *(v10 + 48);
      while (1)
      {
        v14 = *(v13 + 8 * v12);
        if (v14)
        {
          if (v14 < 0)
          {
            v14 = -v14;
          }

          v15 = v7;
          do
          {
            v7 = v14;
            v14 = v15 % v14;
            v15 = v7;
          }

          while (v14);
          if (v7 == 1)
          {
            break;
          }
        }

        if (++v12 == v11)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_2;
  }

  LODWORD(v11) = off_2810BEE58;
  if (off_2810BEE58 <= 0)
  {
    goto LABEL_2;
  }

  v16 = 0;
  v7 = 0;
  do
  {
    v17 = *(off_2810BEE78 + v16);
    if (v17)
    {
      if (v17 < 0)
      {
        v17 = -v17;
      }

      v18 = v7;
      do
      {
        v7 = v17;
        v17 = v18 % v17;
        v18 = v7;
      }

      while (v17);
      if (v7 == 1)
      {
        goto LABEL_2;
      }
    }

    ++v16;
  }

  while (v16 != off_2810BEE58);
LABEL_25:
  if (v7 < 2)
  {
LABEL_2:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v19 = this;
  v35 = 21;
  strcpy(__p, "linear: divide by GCD");
  operations_research::sat::PresolveContext::UpdateRuleStats(v6, __p, 1, a4, a5);
  if (v35 < 0)
  {
    operator delete(*__p);
  }

  v21 = 0;
  do
  {
    if (*(a2 + 15) == 12)
    {
      v22 = *(a2 + 6);
LABEL_30:
      v23 = v22;
      goto LABEL_31;
    }

    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v24 = *(a2 + 1);
    if (v24)
    {
      v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v24 & 0xFFFFFFFFFFFFFFFELL));
      *(a2 + 6) = v22;
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v24);
      *(a2 + 6) = v22;
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    *(*(v22 + 48) + 8 * v21) = v23[6][v21] / v7;
    ++v21;
  }

  while (v11 != v21);
  if (*(a2 + 15) == 12)
  {
    v25 = *(a2 + 6);
  }

  else
  {
    v25 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v25[9], *(v25 + 16), __p, v20);
  operations_research::Domain::InverseMultiplicationBy(__p, v7, v33);
  if (*(a2 + 15) == 12)
  {
    v26 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v27 = *(a2 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v27);
    *(a2 + 6) = v26;
  }

  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v33, v26);
  if (v33[0])
  {
    operator delete(v33[1]);
  }

  v31 = v19;
  if (*(a2 + 15) == 12)
  {
    v32 = *(*(a2 + 6) + 64);
    if (!v32)
    {
LABEL_52:
      LOBYTE(v7) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(v31, a2, v28, v29, v30);
    }
  }

  else
  {
    v32 = dword_2810BEE88;
    if (!dword_2810BEE88)
    {
      goto LABEL_52;
    }
  }

  if (__p[0])
  {
    operator delete(*&__p[8]);
  }

  if (v32)
  {
    goto LABEL_2;
  }

  return v7 & 1;
}

void sub_23CA80F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, void *__p, int a15, __int16 a16, char a17, char a18)
{
  if (a13)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::RemoveSingletonInLinear(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, __n128 a3)
{
  if (*(a2 + 15) != 12 || (*(*(this + 1) + 416) & 1) != 0)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v212 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v213 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v214 = 0;
  v6 = *(a2 + 6);
  v7 = *(v6 + 16);
  operations_research::Domain::FromFlatSpanOfIntervals(*(v6 + 72), *(v6 + 64), v211, a3);
  LODWORD(v206) = 0;
  v192 = v7;
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        v9 = *(a2 + 6);
      }

      v10 = v9[3];
      v11 = *(v10 + v8);
      if ((v11 & 0x80000000) != 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v198, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 2097);
        goto LABEL_311;
      }

      v3 = v9[6][v8];
      IsUniqueAndRemovable = operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), *(v10 + v8));
      if (v3 >= 0)
      {
        v13 = v3;
      }

      else
      {
        v13 = -v3;
      }

      if (v13 == 1 && IsUniqueAndRemovable)
      {
        LOBYTE(v203) = 0;
        operations_research::sat::PresolveContext::DomainOf(*(this + 1), v11, &v195);
        operations_research::Domain::MultiplicationBy(&v195, &v203, -v3, v198);
        if (v195)
        {
          operator delete(__p);
        }

        if (v203)
        {
          operations_research::Domain::AdditionWith(v211, v198, &v195, v15);
          if ((v195 >> 1) <= 100)
          {
            v16 = *(this + 1);
            operator new();
          }

          if (v195)
          {
            operator delete(__p);
          }
        }

        if (v198[0])
        {
          operator delete(v198[1]);
        }
      }

      v8 = v206 + 1;
      LODWORD(v206) = v8;
    }

    while (v8 < v7);
  }

  if (v214)
  {
LABEL_180:
    if (*(a2 + 4))
    {
      v120 = v213;
      v121 = *v212;
      v122 = v213[10];
      if (*v212 != v213 || v122 != 0)
      {
        v124 = 0;
        do
        {
          v125 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) == 12)
          {
            v125 = *(a2 + 6);
          }

          v126 = *(v125[3] + *&v121[4 * v124 + 12]);
          v127 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x91A);
          v128 = v127;
          if (*(v127 + 60) == 12)
          {
            v129 = *(v127 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v127);
            *(v128 + 60) = 12;
            v130 = *(v128 + 8);
            if (v130)
            {
              v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
            }

            v129 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v130);
            *(v128 + 48) = v129;
          }

          v132 = *(v129 + 16);
          v131 = *(v129 + 20);
          if (v132 == v131)
          {
            google::protobuf::RepeatedField<int>::Grow(v129 + 16, v131, (v131 + 1));
            v132 = *(v129 + 16);
          }

          v133 = *(v129 + 24);
          *(v129 + 16) = v132 + 1;
          *(v133 + 4 * v132) = v126;
          v135 = *(v129 + 40);
          v134 = *(v129 + 44);
          if (v135 == v134)
          {
            google::protobuf::RepeatedField<long long>::Grow(v129 + 40, v134);
            v135 = *(v129 + 40);
          }

          v136 = *(v129 + 48);
          *(v129 + 40) = v135 + 1;
          *(v136 + 8 * v135) = 1;
          operations_research::sat::PresolveContext::DomainOf(*(this + 1), v126, v198);
          operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v198, v129);
          if (v198[0])
          {
            operator delete(v198[1]);
          }

          if (v121[11])
          {
            if (++v124 == v121[10])
            {
              v137 = v121;
              while (1)
              {
                v138 = *v137;
                if (*(*v137 + 11))
                {
                  break;
                }

                v139 = v137[8];
                v137 = *v137;
                if (v139 != v138[10])
                {
                  v121 = v138;
                  v124 = v139;
                  break;
                }
              }
            }
          }

          else
          {
            v140 = &v121[8 * (v124 + 1) + 256];
            do
            {
              v121 = *v140;
              v141 = *(*v140 + 11);
              v140 = *v140 + 256;
            }

            while (!v141);
            v124 = 0;
          }
        }

        while (v121 != v120 || v124 != v122);
      }
    }

    v142 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x925);
    operations_research::sat::ConstraintProto::CopyFrom(v142, a2);
    LODWORD(v198[0]) = 0;
    if (v192 >= 1)
    {
      v143 = 0;
      while (1)
      {
        while (absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>>::count<int>(&v212, v198))
        {
          v144 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) == 12)
          {
            v144 = *(a2 + 6);
          }

          operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), *(v144[3] + SLODWORD(v198[0])));
          ++LODWORD(v198[0]);
          if (SLODWORD(v198[0]) >= v192)
          {
            goto LABEL_231;
          }
        }

        if (*(a2 + 15) == 12)
        {
          break;
        }

        operations_research::sat::ConstraintProto::clear_constraint(a2);
        *(a2 + 15) = 12;
        v146 = *(a2 + 1);
        if (v146)
        {
          v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
        }

        v145 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v146);
        *(a2 + 6) = v145;
        v147 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(a2 + 15) == 12)
        {
          goto LABEL_221;
        }

LABEL_222:
        *(*(v145 + 48) + 8 * v143) = v147[6][SLODWORD(v198[0])];
        if (*(a2 + 15) == 12)
        {
          v148 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 12;
          v149 = *(a2 + 1);
          if (v149)
          {
            v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
          }

          v148 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v149);
          *(a2 + 6) = v148;
          v150 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) != 12)
          {
            goto LABEL_228;
          }
        }

        v150 = v148;
LABEL_228:
        *(*(v148 + 24) + 4 * v143++) = *(v150[3] + SLODWORD(v198[0]));
        ++LODWORD(v198[0]);
        if (SLODWORD(v198[0]) >= v192)
        {
          goto LABEL_231;
        }
      }

      v145 = *(a2 + 6);
LABEL_221:
      v147 = v145;
      goto LABEL_222;
    }

    v143 = 0;
LABEL_231:
    if (*(a2 + 15) == 12)
    {
      v151 = *(a2 + 6);
      if (*(v151 + 16) <= v143)
      {
        goto LABEL_234;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 12;
      v154 = *(a2 + 1);
      if (v154)
      {
        v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v154);
      *(a2 + 6) = v151;
      if (*(v151 + 16) <= v143)
      {
LABEL_234:
        if (*(a2 + 15) == 12)
        {
          v152 = *(a2 + 6);
          if (*(v152 + 40) <= v143)
          {
LABEL_237:
            if (*(a2 + 15) == 12)
            {
              v153 = *(a2 + 6);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(a2);
              *(a2 + 15) = 12;
              v156 = *(a2 + 1);
              if (v156)
              {
                v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
              }

              v153 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v156);
              *(a2 + 6) = v153;
            }

            operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v211, v153);
            operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, a2, v157, v158, v159);
            LOBYTE(v3) = 1;
            goto LABEL_251;
          }
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 12;
          v155 = *(a2 + 1);
          if (v155)
          {
            v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
          }

          v152 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v155);
          *(a2 + 6) = v152;
          if (*(v152 + 40) <= v143)
          {
            goto LABEL_237;
          }
        }

        *(v152 + 40) = v143;
        goto LABEL_237;
      }
    }

    *(v151 + 16) = v143;
    goto LABEL_234;
  }

  if (*(a2 + 15) == 12)
  {
    v17 = *(a2 + 6);
    v18 = *(v17 + 4);
    if (!v18)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v17 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v18 = off_2810BEE58;
    if (!off_2810BEE58)
    {
      goto LABEL_37;
    }
  }

  v19 = 0;
  v20 = v17[3];
  v21 = 4 * v18;
  while (1)
  {
    LODWORD(v3) = *(v20 + v19);
    if ((v3 & 0x80000000) != 0 || !operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), *(v20 + v19)) && !operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), v3))
    {
      break;
    }

    ++v19;
    v21 -= 4;
    if (!v21)
    {
      goto LABEL_37;
    }
  }

  v18 = v19;
LABEL_37:
  if (v18 != v7)
  {
    goto LABEL_179;
  }

  v209 = 0uLL;
  v210 = 0;
  v206 = 0;
  v207 = 0;
  v208 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  if (v7 >= 1)
  {
    v22 = 0;
    while (1)
    {
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        v23 = *(a2 + 6);
      }

      v24 = *(v23[3] + v22);
      if ((v24 & 0x80000000) != 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v198, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 2149);
        goto LABEL_311;
      }

      operations_research::sat::PresolveContext::DomainOf(*(this + 1), v24, v198);
      v25 = *(&v209 + 1);
      if (*(&v209 + 1) >= v210)
      {
        *(&v209 + 1) = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(&v209, v198);
        if (v198[0])
        {
          operator delete(v198[1]);
          if (*(a2 + 15) != 12)
          {
LABEL_46:
            v26 = *(off_2810BEE78 + v22);
            v28 = v207;
            v27 = v208;
            if (v207 >= v208)
            {
              goto LABEL_51;
            }

            goto LABEL_47;
          }
        }

        else if (*(a2 + 15) != 12)
        {
          goto LABEL_46;
        }
      }

      else
      {
        **(&v209 + 1) = 0;
        *v25 = v198[0];
        *(v25 + 8) = *&v198[1];
        *(&v209 + 1) = v25 + 24;
        if (*(a2 + 15) != 12)
        {
          goto LABEL_46;
        }
      }

      v26 = *(*(*(a2 + 6) + 48) + 8 * v22);
      v28 = v207;
      v27 = v208;
      if (v207 >= v208)
      {
LABEL_51:
        v30 = v206;
        v31 = v28 - v206;
        v32 = (v28 - v206) >> 3;
        v33 = v32 + 1;
        if ((v32 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v34 = v27 - v206;
        if (v34 >> 2 > v33)
        {
          v33 = v34 >> 2;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          if (!(v35 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v36 = (v28 - v206) >> 3;
        v37 = (8 * v32);
        v38 = (8 * v32 - 8 * v36);
        *v37 = v26;
        v29 = (v37 + 1);
        memcpy(v38, v30, v31);
        v206 = v38;
        v207 = v29;
        v208 = 0;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_64;
      }

LABEL_47:
      *v28 = v26;
      v29 = v28 + 8;
LABEL_64:
      v7 = v192;
      v207 = v29;
      v39 = *(this + 1);
      v40 = v39[64];
      if (v40 > 1)
      {
        v42 = 0;
        _X10 = v39[66];
        __asm { PRFM            #4, [X10] }

        v48 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24));
        v49 = vdup_n_s8(v48 & 0x7F);
        v50 = ((v48 >> 7) ^ (_X10 >> 12)) & v40;
        v51 = *(_X10 + v50);
        v52 = vceq_s8(v51, v49);
        if (!v52)
        {
          goto LABEL_73;
        }

LABEL_70:
        v53 = v39[67];
        while (1)
        {
          v54 = (v50 + (__clz(__rbit64(v52)) >> 3)) & v40;
          if (*(v53 + 16 * v54) == v24)
          {
            break;
          }

          v52 &= ((v52 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v52)
          {
LABEL_73:
            while (!*&vceq_s8(v51, 0x8080808080808080))
            {
              v42 += 8;
              v50 = (v42 + v50) & v40;
              v51 = *(_X10 + v50);
              v52 = vceq_s8(v51, v49);
              if (v52)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_80;
          }
        }

        v41 = (v53 + 16 * v54);
        if (_X10 + v54)
        {
          goto LABEL_77;
        }

LABEL_80:
        v55 = 0;
        v57 = v204;
        v56 = v205;
        if (v204 < v205)
        {
          goto LABEL_40;
        }

LABEL_81:
        v58 = v203;
        v59 = v57 - v203;
        v60 = (v57 - v203) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v62 = v56 - v203;
        if (v62 >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v64 = (v57 - v203) >> 3;
        v65 = (8 * v60);
        v66 = (8 * v60 - 8 * v64);
        *v65 = v55;
        v67 = (v65 + 1);
        memcpy(v66, v58, v59);
        v203 = v66;
        v204 = v67;
        v205 = 0;
        if (v58)
        {
          operator delete(v58);
        }

        v7 = v192;
        v204 = v67;
        if (++v22 == v192)
        {
          break;
        }
      }

      else
      {
        if (v39[65] < 2uLL)
        {
          goto LABEL_80;
        }

        if (*(v39 + 132) != v24)
        {
          goto LABEL_80;
        }

        v41 = v39 + 66;
        if (!&absl::lts_20240722::container_internal::kSooControl)
        {
          goto LABEL_80;
        }

LABEL_77:
        v55 = v41[1];
        v57 = v204;
        v56 = v205;
        if (v204 >= v205)
        {
          goto LABEL_81;
        }

LABEL_40:
        *v57 = v55;
        v204 = v57 + 8;
        if (++v22 == v192)
        {
          break;
        }
      }
    }
  }

  v202 = 0u;
  *v200 = 0u;
  *v201 = 0u;
  v199 = 0u;
  memset(v198, 0, sizeof(v198));
  if (*(a2 + 15) == 12)
  {
    v68 = *(a2 + 6);
  }

  else
  {
    v68 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v68[9], *(v68 + 16), &v193, 0);
  operations_research::sat::BasicKnapsackSolver::Solve(v198, &v209, &v206, &v203, &v193, &v195);
  if (v193)
  {
    operator delete(v194[0]);
  }

  v69 = v195;
  if ((v195 & 1) == 0)
  {
    v77 = *(this + 1);
    operator new();
  }

  if (BYTE1(v195) != 1)
  {
    v78 = *(a2 + 4);
    if (v78 == 1)
    {
      v87 = **(a2 + 3);
    }

    else
    {
      if (!v78)
      {
        v79 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v193, "independent linear: solved by DP");
        operations_research::sat::PresolveContext::UpdateRuleStats(v79, &v193, 1, v80, v81);
        if (SHIBYTE(v194[1]) < 0)
        {
          operator delete(v193);
        }

        if (v7 >= 1)
        {
          v82 = 0;
          while (1)
          {
            v83 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(a2 + 15) == 12)
            {
              v83 = *(a2 + 6);
            }

            v84 = *(this + 1);
            v85 = *(v83[3] + v82);
            operations_research::Domain::Domain(&v193, *(__p + v82));
            v86 = operations_research::sat::PresolveContext::IntersectDomainWith(v84, v85, &v193, 0);
            if (v193)
            {
              operator delete(v194[0]);
            }

            if ((v86 & 1) == 0)
            {
              break;
            }

            if (v7 == ++v82)
            {
              goto LABEL_144;
            }
          }

          LOBYTE(v3) = 0;
          v76 = __p;
          if (__p)
          {
            goto LABEL_145;
          }

          goto LABEL_146;
        }

LABEL_144:
        operations_research::sat::ConstraintProto::Clear(a2);
        LOBYTE(v3) = 1;
        v76 = __p;
        if (!__p)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

      v87 = operations_research::sat::PresolveContext::NewBoolVar(*(this + 1));
      v88 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      google::protobuf::RepeatedField<int>::operator=(v88 + 4, a2 + 4);
      v89 = operations_research::sat::ConstraintProto::mutable_BOOL_or(v88);
      operations_research::sat::BoolArgumentProto::add_literals(v89, v87);
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    }

    if (v7 >= 1)
    {
      for (i = 0; i != v192; ++i)
      {
        v91 = (v209 + 24 * i);
        if (*(v203 + i) < 1)
        {
          v92 = operations_research::Domain::Max(v91);
        }

        else
        {
          v92 = operations_research::Domain::Min(v91);
        }

        v93 = *(__p + i);
        v94 = *(this + 1);
        v95 = *(a2 + 15);
        if (v92 == v93)
        {
          v96 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v95 == 12)
          {
            v96 = *(a2 + 6);
          }

          v97 = *(v96[3] + i);
          operations_research::Domain::Domain(&v193, v92);
          v98 = operations_research::sat::PresolveContext::IntersectDomainWith(v94, v97, &v193, 0);
          if (v193)
          {
            operator delete(v194[0]);
          }

          if ((v98 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if ((v87 & 0x80000000) != 0)
        {
          v100 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v95 == 12)
          {
            v100 = *(a2 + 6);
          }

          if (!operations_research::sat::PresolveContext::StoreAffineRelation(*(this + 1), *(v100[3] + i), ~v87, v92 - v93, v93, 0))
          {
LABEL_140:
            LOBYTE(v3) = 0;
            v7 = v192;
            v76 = __p;
            if (!__p)
            {
              goto LABEL_146;
            }

LABEL_145:
            v197 = v76;
            operator delete(v76);
            goto LABEL_146;
          }
        }

        else
        {
          v99 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v95 == 12)
          {
            v99 = *(a2 + 6);
          }

          if ((operations_research::sat::PresolveContext::StoreAffineRelation(*(this + 1), *(v99[3] + i), v87, v93 - v92, v92, 0) & 1) == 0)
          {
            goto LABEL_140;
          }
        }
      }
    }

    v101 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v193, "independent linear: with enforcement, but solved by DP");
    operations_research::sat::PresolveContext::UpdateRuleStats(v101, &v193, 1, v102, v103);
    v7 = v192;
    if (SHIBYTE(v194[1]) < 0)
    {
      operator delete(v193);
    }

    goto LABEL_144;
  }

  v70 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v193, "independent linear: no DP solution to simple constraint");
  operations_research::sat::PresolveContext::UpdateRuleStats(v70, &v193, 1, v71, v72);
  if (SHIBYTE(v194[1]) < 0)
  {
    operator delete(v193);
  }

  LOBYTE(v3) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v73, v74, v75);
  v76 = __p;
  if (__p)
  {
    goto LABEL_145;
  }

LABEL_146:
  v104 = v201[1];
  if (v201[1])
  {
    v105 = v202;
    v106 = v201[1];
    if (v202 != v201[1])
    {
      v107 = v202;
      do
      {
        v109 = *(v107 - 3);
        v107 -= 24;
        v108 = v109;
        if (v109)
        {
          *(v105 - 2) = v108;
          operator delete(v108);
        }

        v105 = v107;
      }

      while (v107 != v104);
      v106 = v201[1];
    }

    *&v202 = v104;
    operator delete(v106);
  }

  if (v200[0])
  {
    v200[1] = v200[0];
    operator delete(v200[0]);
  }

  if (v198[3])
  {
    *&v199 = v198[3];
    operator delete(v198[3]);
  }

  v110 = v198[0];
  if (v198[0])
  {
    v111 = v198[1];
    v112 = v198[0];
    if (v198[1] != v198[0])
    {
      v113 = v198[1];
      do
      {
        v114 = *(v113 - 24);
        v113 -= 3;
        if (v114)
        {
          operator delete(*(v111 - 2));
        }

        v111 = v113;
      }

      while (v113 != v110);
      v112 = v198[0];
    }

    v198[1] = v110;
    operator delete(v112);
  }

  if (v203)
  {
    v204 = v203;
    operator delete(v203);
  }

  if (v206)
  {
    v207 = v206;
    operator delete(v206);
  }

  v115 = v209;
  if (v209)
  {
    v116 = *(&v209 + 1);
    v117 = v209;
    if (*(&v209 + 1) != v209)
    {
      v118 = *(&v209 + 1);
      do
      {
        v119 = *(v118 - 24);
        v118 -= 24;
        if (v119)
        {
          operator delete(*(v116 - 16));
        }

        v116 = v118;
      }

      while (v118 != v115);
      v117 = v209;
    }

    *(&v209 + 1) = v115;
    operator delete(v117);
  }

  if (v69)
  {
    goto LABEL_251;
  }

LABEL_179:
  if (v214)
  {
    goto LABEL_180;
  }

  if (*(*(*(this + 1) + 392) + 680) >= 1 && !*(a2 + 4))
  {
    v161 = operations_research::Domain::Min(v211);
    if (v161 == operations_research::Domain::Max(v211))
    {
      if (v7 >= 1)
      {
        v162 = 0;
        while (1)
        {
          v163 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) == 12)
          {
            v163 = *(a2 + 6);
          }

          v164 = v163[3];
          v165 = *(v164 + v162);
          if ((v165 & 0x80000000) != 0)
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v198, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 2233);
LABEL_311:
            absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v198);
          }

          v166 = v163[6][v162];
          if (operations_research::sat::PresolveContext::VariableWithCostIsUnique(*(this + 1), *(v164 + v162)))
          {
            break;
          }

LABEL_261:
          if (++v162 == v7)
          {
            goto LABEL_308;
          }
        }

        v168 = *(this + 1);
        v169 = *(v168 + 64);
        if (v169 > 1)
        {
          v171 = 0;
          _X9 = *(v168 + 66);
          __asm { PRFM            #4, [X9] }

          v174 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v165) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v165));
          v175 = vdup_n_s8(v174 & 0x7F);
          v176 = ((v174 >> 7) ^ (_X9 >> 12)) & v169;
          v177 = *(_X9 + v176);
          v178 = vceq_s8(v177, v175);
          if (!v178)
          {
            goto LABEL_274;
          }

LABEL_271:
          v179 = *(v168 + 67);
          do
          {
            v180 = (v176 + (__clz(__rbit64(v178)) >> 3)) & v169;
            if (*(v179 + 16 * v180) == v165)
            {
              v169 = v179 + 16 * v180;
              v170 = (_X9 + v180);
              goto LABEL_279;
            }

            v178 &= ((v178 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v178);
LABEL_274:
          while (!*&vceq_s8(v177, 0x8080808080808080))
          {
            v171 += 8;
            v176 = (v171 + v176) & v169;
            v177 = *(_X9 + v176);
            v178 = vceq_s8(v177, v175);
            if (v178)
            {
              goto LABEL_271;
            }
          }
        }

        else
        {
          v169 = *(v168 + 65);
          if (v169 >= 2)
          {
            v169 = *(v168 + 132);
            if (v169 == v165)
            {
              v169 = v168 + 528;
              v170 = &absl::lts_20240722::container_internal::kSooControl;
              goto LABEL_279;
            }
          }
        }

        v170 = 0;
LABEL_279:
        if (!v170)
        {
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v167);
        }

        if (!v166)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, "coeff != 0");
        }

        v181 = *(v169 + 8);
        v182 = v181 % v166;
        if (v181 < 0)
        {
          v181 = -v181;
        }

        if (v182)
        {
          v183 = 0;
        }

        else
        {
          v183 = v181 == 1;
        }

        if (!v183)
        {
          goto LABEL_261;
        }

        LOBYTE(v206) = 0;
        operations_research::sat::PresolveContext::DomainOf(v168, v165, &v195);
        operations_research::Domain::MultiplicationBy(&v195, &v206, -v166, v198);
        if (v195)
        {
          operator delete(__p);
        }

        if ((v206 & 1) == 0)
        {
          v186 = 1;
          goto LABEL_298;
        }

        operations_research::Domain::AdditionWith(v211, v198, &v195, v184);
        if ((v195 >> 1) > 100 || (v185 = *(this + 1), (*(v185 + 65) & 0xFFFFFFFFFFFFFFFELL) != 2))
        {
LABEL_295:
          v186 = 1;
          if ((v195 & 1) == 0)
          {
            goto LABEL_298;
          }

          goto LABEL_296;
        }

        if (operations_research::sat::PresolveContext::RecomputeSingletonObjectiveDomain(v185))
        {
          if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v165))
          {
            goto LABEL_295;
          }

          v187 = operations_research::sat::PresolveContext::SubstituteVariableInObjective(*(this + 1), v165, v166, a2);
          v188 = *(this + 1);
          if ((v187 & 1) == 0)
          {
            v191 = *(v188 + 416);
            LOBYTE(v3) = v191 | v3;
            v186 = v191 ^ 1;
            if (v195)
            {
LABEL_296:
              operator delete(__p);
            }

LABEL_298:
            if (v198[0])
            {
              operator delete(v198[1]);
            }

            if ((v186 & 1) == 0)
            {
              goto LABEL_251;
            }

            goto LABEL_261;
          }

          std::string::basic_string[abi:ne200100]<0>(&v209, "linear: singleton column define objective.");
          operations_research::sat::PresolveContext::UpdateRuleStats(v188, &v209, 1, v189, v190);
          if (SHIBYTE(v210) < 0)
          {
            operator delete(v209);
          }

          operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v165);
          operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x8F4);
          operations_research::sat::ConstraintProto::Clear(a2);
        }

        v186 = 0;
        LOBYTE(v3) = 1;
        if (v195)
        {
          goto LABEL_296;
        }

        goto LABEL_298;
      }

LABEL_308:
      if (v214)
      {
        goto LABEL_180;
      }
    }
  }

  LOBYTE(v3) = 0;
LABEL_251:
  if (v211[0])
  {
    operator delete(v211[1]);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&v212);
  return v3 & 1;
}

void sub_23CA825E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15, char a16, char a17, char a18, void *__p, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (*(v39 - 161) < 0)
  {
    operator delete(*(v39 - 184));
    if (a18)
    {
LABEL_7:
      operator delete(__p);
      if ((a22 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (a18)
  {
    goto LABEL_7;
  }

  if ((a22 & 1) == 0)
  {
LABEL_9:
    if (*(v39 - 160))
    {
      operator delete(*(v39 - 152));
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear((v39 - 136));
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a23);
  goto LABEL_9;
}

unsigned int *google::protobuf::RepeatedField<int>::operator=(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    *result = 0;
    v2 = *a2;
    if (v2)
    {
      if (result[1] < v2)
      {
        v18 = a2;
        v19 = result;
        google::protobuf::RepeatedField<int>::Grow(result, 0, v2);
        a2 = v18;
        result = v19;
        v3 = *v19;
        v5 = *(v19 + 1);
        *v19 = v3 + v2;
        if (v2 < 1)
        {
          return result;
        }
      }

      else
      {
        v3 = 0;
        v4 = *a2;
        v5 = *(result + 1);
        *result = v2;
        if (v2 < 1)
        {
          return result;
        }
      }

      v6 = *(a2 + 1);
      v7 = (v5 + 4 * v3);
      if (v2 < 8)
      {
        goto LABEL_10;
      }

      v8 = 4 * v3 + v5;
      if ((v8 - v6) < 0x20)
      {
        goto LABEL_10;
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
LABEL_10:
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
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>>::count<int>(unsigned __int8 **a1, int *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
  do
  {
    if (*&v3[4 * v5 + 12] >= v2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_7:
  while (!v3[11])
  {
    v3 = *&v3[8 * v5 + 256];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_2;
    }

LABEL_6:
    LODWORD(v5) = 0;
  }

  while (1)
  {
    v6 = v3[10];
    if (v5 != v6)
    {
      break;
    }

    LODWORD(v5) = v3[8];
    v3 = *v3;
    if (v3[11])
    {
      v7 = a1[1];
      v12 = *(v7 + 10);
      v8 = v12;
      v10 = v12;
      v11 = v7;
      goto LABEL_32;
    }
  }

  v7 = a1[1];
  v8 = *(v7 + 10);
  v9 = v3 == v7 && v5 == v8;
  v10 = *(v7 + 10);
  v11 = a1[1];
  if (!v9)
  {
    if (v2 >= *&v3[4 * v5 + 12])
    {
      if (v3[11])
      {
        v8 = v5 + 1;
        if (v5 + 1 == v6)
        {
          v13 = v3;
          while (1)
          {
            v7 = *v13;
            if (*(*v13 + 11))
            {
              break;
            }

            v14 = v13[8];
            v13 = *v13;
            if (v14 != *(v7 + 10))
            {
              v8 = v14;
              goto LABEL_31;
            }
          }
        }

        v7 = v3;
      }

      else
      {
        v15 = &v3[8 * (v5 + 1) + 256];
        do
        {
          v7 = *v15;
          v16 = *(*v15 + 11);
          v15 = *v15 + 256;
        }

        while (!v16);
        v8 = 0;
      }
    }

    else
    {
      v8 = v5;
      v7 = v3;
    }

LABEL_31:
    v10 = v5;
    v11 = v3;
  }

LABEL_32:
  v18 = v7;
  v19 = v8;
  return absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>> const,int const&,int const*>::operator-(&v18, v11, v10);
}

uint64_t operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(operations_research::sat::PresolveContext **this, unsigned int a2, operations_research::sat::ConstraintProto *a3)
{
  v4 = *(a3 + 15);
  if (v4 == 12)
  {
    v5 = *(*(a3 + 6) + 16);
    if (v5 > 0)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (v6 != a2)
        {
          v8 = *(*(*(a3 + 6) + 48) + 8 * v6);
          if (v8)
          {
            if (v8 < 0)
            {
              v8 = -v8;
            }

            v9 = v7;
            do
            {
              v7 = v8;
              v8 = v9 % v8;
              v9 = v7;
            }

            while (v8);
          }

          if (v7 == 1)
          {
            return 0;
          }
        }

        if (++v6 == v5)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_34;
  }

  if (off_2810BEE58 < 1)
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  v10 = 0;
  v7 = 0;
  do
  {
    if (v10 != a2)
    {
      v11 = *(off_2810BEE78 + v10);
      if (v11)
      {
        if (v11 < 0)
        {
          v11 = -v11;
        }

        v12 = v7;
        do
        {
          v7 = v11;
          v11 = v12 % v11;
          v12 = v7;
        }

        while (v11);
      }

      if (v7 == 1)
      {
        return 0;
      }
    }

    ++v10;
  }

  while (v10 != off_2810BEE58);
LABEL_24:
  if (v7 < 2)
  {
LABEL_35:
    operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(v7);
  }

  if (v4 == 12)
  {
    v13 = *(a3 + 6);
    v14 = v13[3] + a2;
    v15 = v13[6][a2];
    if (!(v15 % v7))
    {
      return 0;
    }
  }

  else
  {
    v13 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v14 = (off_2810BEE60 + 4 * a2);
    v15 = *(off_2810BEE78 + a2);
    if (!(v15 % v7))
    {
      return 0;
    }
  }

  if (!operations_research::sat::PresolveContext::CanonicalizeAffineVariable(this[1], *v14, v15, v7, *v13[9]))
  {
    return 0;
  }

  return operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, a3, v17, v18, v19);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearEqualityWithModulo(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  if (*(a2 + 15) != 12)
  {
    return 0;
  }

  v2 = *(a2 + 6);
  if (*(v2 + 64) != 2)
  {
    return 0;
  }

  if (**(v2 + 72) != *(*(v2 + 72) + 8))
  {
    return 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  v38 = *(v2 + 16);
  if (v38 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v39 = 0;
  v40 = 0;
  v8 = 0;
  v9 = 0;
  v37 = a2;
  do
  {
    v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (*(a2 + 15) == 12)
    {
      v10 = *(a2 + 6);
    }

    v11 = v10[6][v4];
    if (v11 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = -v11;
    }

    v13 = v6 == 0;
    if (v12 < v5)
    {
      v13 = 1;
    }

    if (v12 == v5)
    {
      v14 = v6 + 1;
    }

    else
    {
      v14 = v6;
    }

    if (v13)
    {
      v7 = v4;
      v6 = 1;
    }

    else
    {
      v6 = v14;
    }

    if (v13)
    {
      v5 = v12;
    }

    if (v12)
    {
      v15 = v39;
      v16 = v39 >> 2;
      if (((v39 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v36 = v5;
      if (v39 >> 2 != -1)
      {
        if (!(((v39 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v16) = v4;
      v39 = 4 * v16 + 4;
      memcpy(0, 0, v15);
      v5 = v36;
      a2 = v37;
    }

    if (0xAAAAAAAAAAAAAAABLL * v12 + 0x2AAAAAAAAAAAAAAALL >= 0x5555555555555555)
    {
      v41 = v8;
      v17 = v9;
      v18 = v9 >> 2;
      if (((v9 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v9 >> 2 != -1)
      {
        if (!(((v9 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v19 = v5;
      v20 = a2;
      *(4 * v18) = v4;
      v21 = 4 * v18 + 4;
      memcpy(0, 0, v17);
      v8 = v41;
      a2 = v20;
      v5 = v19;
      v9 = v21;
    }

    if (0xCCCCCCCCCCCCCCCDLL * v12 + 0x1999999999999999 >= 0x3333333333333333)
    {
      v22 = v40 - v8;
      v23 = (v40 - v8) >> 2;
      v24 = v23 + 1;
      v42 = v8;
      if ((v23 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v8 >> 1 > v24)
      {
        v24 = -v8 >> 1;
      }

      if (-v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v25 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (v25)
      {
        if (!(v25 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v26 = v5;
      *(4 * v23) = v4;
      v40 = 4 * v23 + 4;
      memcpy(0, v42, v22);
      v8 = 0;
      a2 = v37;
      v5 = v26;
    }

    ++v4;
  }

  while (v38 != v4);
  if (v39 >> 2 == 1)
  {
    goto LABEL_64;
  }

  if (v39 >> 2 == 2)
  {
    if (v39)
    {
      v27 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        v27 = *(a2 + 6);
      }

      if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), *(v27[3] + MEMORY[0])))
      {
        operator new();
      }

      v33 = v39;
    }

    else
    {
      if (*(a2 + 15) == 12)
      {
        v28 = *(a2 + 6);
      }

      else
      {
        v28 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v29 = *v28[9];
      v30 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: only two odd Booleans in equality");
      operations_research::sat::PresolveContext::UpdateRuleStats(v30, __p, 1, v31, v32);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), MEMORY[0], MEMORY[4] ^ -(v29 & 1));
      v33 = v39;
      operator delete(0);
    }

    a2 = v37;
    if (v33 == 4)
    {
      goto LABEL_64;
    }
  }

  if (v9 == 4)
  {
LABEL_64:
    v7 = MEMORY[0];
    return operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(this, v7, a2);
  }

  if (v40 - v8 == 4)
  {
    v34 = operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(this, *v8, a2);
    operator delete(v8);
    return v34;
  }

  else
  {
    if (v6 == 1)
    {
      return operations_research::sat::CpModelPresolver::AddVarAffineRepresentativeFromLinearEquality(this, v7, a2);
    }

    return 0;
  }
}

void sub_23CA833F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *__p, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v28);
  if (v27)
  {
    operator delete(v27);
    if (!a13)
    {
LABEL_3:
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a13)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if (!v29)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) == 12)
  {
    v5 = *(a2 + 6);
  }

  else
  {
    v5 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v6 = *(v5 + 4);
  if (v6 != 1)
  {
    operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(v6);
  }

  v7 = *v5[3];
  if ((v7 & 0x80000000) != 0)
  {
    operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(v63);
  }

  operations_research::sat::PresolveContext::DomainOf(this[1], v7, v63);
  if (*(a2 + 15) == 12)
  {
    v9 = *(a2 + 6);
  }

  else
  {
    v9 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v9[9], *(v9 + 16), v57, v8);
  if (*(a2 + 15) == 12)
  {
    v10 = *(a2 + 6);
  }

  else
  {
    v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::InverseMultiplicationBy(v57, *v10[6], __p);
  operations_research::Domain::IntersectionWith(__p, v63, &v61);
  if (__p[0])
  {
    operator delete(*&__p[8]);
  }

  if (v57[0])
  {
    operator delete(v57[1]);
  }

  if (!operations_research::Domain::IsEmpty(&v61))
  {
    operations_research::sat::PresolveContext::DomainOf(this[1], v7, __p);
    v19 = v62;
    if ((v61 & 1) == 0)
    {
      v19 = &v62;
    }

    v20 = &__p[8];
    if (__p[0])
    {
      v20 = *&__p[8];
    }

    if ((((*__p >> 1) ^ (v61 >> 1)) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      v23 = &v19[2 * (v61 >> 1)];
      v24 = &v20[16 * (*__p >> 1)];
      if ((v61 & 0x1FFFFFFFFFFFFFFELL) == 0 || (*__p & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
LABEL_47:
        v21 = v20 == v24 && v19 == v23;
        if ((__p[0] & 1) == 0)
        {
LABEL_29:
          if (v21)
          {
            v22 = this[1];
            v60 = 20;
            strcpy(__p, "linear1: always true");
            operations_research::sat::PresolveContext::UpdateRuleStats(v22, __p, 1, v17, v18);
            if (v60 < 0)
            {
              operator delete(*__p);
            }

            operations_research::sat::ConstraintProto::Clear(a2);
            goto LABEL_33;
          }

          if (*(a2 + 15) == 12)
          {
            if (**(*(a2 + 6) + 48) == 1)
            {
LABEL_68:
              v32 = this[1];
              if (!*(a2 + 4))
              {
                operator new();
              }

              if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v7))
              {
                if (operations_research::Domain::Min(&v61) == 1)
                {
                  if (*(a2 + 15) == 4)
                  {
                    v33 = *(a2 + 6);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(a2);
                    *(a2 + 15) = 4;
                    v41 = *(a2 + 1);
                    if (v41)
                    {
                      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v41);
                    *(a2 + 6) = v33;
                  }

                  v43 = *(v33 + 4);
                  v42 = *(v33 + 5);
                  if (v43 == v42)
                  {
                    google::protobuf::RepeatedField<int>::Grow(v33 + 2, v42, (v42 + 1));
                    v43 = *(v33 + 4);
                  }

                  v44 = v33[3];
                  *(v33 + 4) = v43 + 1;
                  *(v44 + 4 * v43) = v7;
                  v2 = 1;
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_115;
                  }
                }

                else
                {
                  v39 = operations_research::Domain::Min(&v61);
                  if (v39)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v39, 0, "rhs.FixedValue() == 0");
                  }

                  if (*(a2 + 15) == 4)
                  {
                    v40 = *(a2 + 6);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(a2);
                    *(a2 + 15) = 4;
                    v51 = *(a2 + 1);
                    if (v51)
                    {
                      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v40 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v51);
                    *(a2 + 6) = v40;
                  }

                  v53 = *(v40 + 4);
                  v52 = *(v40 + 5);
                  if (v53 == v52)
                  {
                    google::protobuf::RepeatedField<int>::Grow(v40 + 2, v52, (v52 + 1));
                    v53 = *(v40 + 4);
                  }

                  v54 = v40[3];
                  *(v40 + 4) = v53 + 1;
                  *(v54 + 4 * v53) = ~v7;
                  v2 = 1;
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_115;
                  }
                }

LABEL_20:
                operator delete(v62);
                if ((v63[0] & 1) == 0)
                {
                  return v2 & 1;
                }

                goto LABEL_116;
              }

              if (*(a2 + 4) != 1)
              {
                goto LABEL_119;
              }

              v34 = **(a2 + 3);
              if (operations_research::Domain::IsFixed(&v61))
              {
                v35 = operations_research::Domain::Min(&v61);
                LODWORD(v57[0]) = 0;
                if (operations_research::sat::PresolveContext::HasVarValueEncoding(this[1], v7, v35, v57))
                {
                  if (v34 != LODWORD(v57[0]))
                  {
                    operations_research::sat::PresolveContext::AddImplication(this[1], v34, v57[0]);
                    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                    operations_research::sat::ConstraintProto::Clear(a2);
                    v36 = this[1];
                    std::string::basic_string[abi:ne200100]<0>(__p, "linear1: transformed to implication");
                    operations_research::sat::PresolveContext::UpdateRuleStats(v36, __p, 1, v37, v38);
                    if (v60 < 0)
                    {
                      operator delete(*__p);
                    }

LABEL_33:
                    v2 = 1;
                    if (v61)
                    {
                      goto LABEL_20;
                    }

                    goto LABEL_115;
                  }
                }

                else
                {
                  if (operations_research::sat::PresolveContext::StoreLiteralImpliesVarEqValue(this[1], v34, v7, v35))
                  {
                    operations_research::SparseBitset<int>::Set(this[1] + 136, v7);
                  }

                  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                }

LABEL_119:
                v2 = 0;
                if (v61)
                {
                  goto LABEL_20;
                }

                goto LABEL_115;
              }

              operations_research::Domain::Complement(&v61, v57);
              operations_research::Domain::IntersectionWith(v57, v63, __p);
              if (v57[0])
              {
                operator delete(v57[1]);
              }

              IsFixed = operations_research::Domain::IsFixed(__p);
              v46 = IsFixed;
              if (IsFixed)
              {
                v47 = operations_research::Domain::Min(__p);
                v56 = 0;
                if (operations_research::sat::PresolveContext::HasVarValueEncoding(this[1], v7, v47, &v56))
                {
                  if ((v56 ^ v34) != 0xFFFFFFFF)
                  {
                    operations_research::sat::PresolveContext::AddImplication(this[1], v34, ~v56);
                    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                    operations_research::sat::ConstraintProto::Clear(a2);
                    v48 = this[1];
                    std::string::basic_string[abi:ne200100]<0>(v57, "linear1: transformed to implication");
                    operations_research::sat::PresolveContext::UpdateRuleStats(v48, v57, 1, v49, v50);
                    if (v58 < 0)
                    {
                      operator delete(v57[0]);
                    }

                    v2 = 1;
                    goto LABEL_112;
                  }
                }

                else
                {
                  if (operations_research::sat::PresolveContext::StoreLiteralImpliesVarNEqValue(this[1], v34, v7, v47))
                  {
                    operations_research::SparseBitset<int>::Set(this[1] + 136, v7);
                  }

                  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
                }

                v2 = 0;
              }

LABEL_112:
              if (__p[0])
              {
                operator delete(*&__p[8]);
                if (!v46)
                {
                  goto LABEL_119;
                }
              }

              else if (!v46)
              {
                goto LABEL_119;
              }

              if (v61)
              {
                goto LABEL_20;
              }

              goto LABEL_115;
            }
          }

          else if (*off_2810BEE78 == 1)
          {
            goto LABEL_68;
          }

          v27 = this[1];
          strcpy(__p, "linear1: canonicalized");
          v60 = 22;
          operations_research::sat::PresolveContext::UpdateRuleStats(v27, __p, 1, v17, v18);
          if (v60 < 0)
          {
            operator delete(*__p);
            if (*(a2 + 15) == 12)
            {
LABEL_58:
              **(*(a2 + 6) + 48) = 1;
              if (*(a2 + 15) == 12)
              {
LABEL_59:
                v28 = *(a2 + 6);
LABEL_67:
                operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v61, v28);
                goto LABEL_68;
              }

LABEL_64:
              operations_research::sat::ConstraintProto::clear_constraint(a2);
              *(a2 + 15) = 12;
              v31 = *(a2 + 1);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v31);
              *(a2 + 6) = v28;
              goto LABEL_67;
            }
          }

          else if (*(a2 + 15) == 12)
          {
            goto LABEL_58;
          }

          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 12;
          v29 = *(a2 + 1);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v29);
          *(a2 + 6) = v30;
          **(v30 + 48) = 1;
          if (*(a2 + 15) == 12)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }

LABEL_28:
        operator delete(*&__p[8]);
        goto LABEL_29;
      }

      while (*v19 == *v20 && v19[1] == *(v20 + 1))
      {
        v19 += 2;
        v20 += 16;
        if (v19 == v23 || v20 == v24)
        {
          goto LABEL_47;
        }
      }
    }

    v21 = 0;
    if ((__p[0] & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v13 = this[1];
  v60 = 19;
  strcpy(__p, "linear1: infeasible");
  operations_research::sat::PresolveContext::UpdateRuleStats(v13, __p, 1, v11, v12);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  v2 = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v14, v15, v16);
  if (v61)
  {
    goto LABEL_20;
  }

LABEL_115:
  if (v63[0])
  {
LABEL_116:
    operator delete(v64);
  }

  return v2 & 1;
}

void sub_23CA83CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, int a12, __int16 a13, char a14, char a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, void *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a17);
  }

  if (a23)
  {
    operator delete(a24);
  }

  if (*(v24 - 72))
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::SparseBitset<int>::Set(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  v4 = *(v3 + 8 * v2);
  if ((v4 & (1 << a2)) == 0)
  {
    *(v3 + 8 * v2) = v4 | (1 << a2);
    std::vector<int>::push_back[abi:ne200100](a1 + 32, &v5);
  }
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearOfSizeTwo(operations_research::sat::PresolveContext **this, void (****a2)(operations_research::sat::LinearConstraintProto *__hidden this), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a2;
  if (*(a2 + 15) == 12)
  {
    v8 = a2[6];
  }

  else
  {
    v8 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v9 = v8[3];
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = v8[6];
  v14 = *v12;
  v13 = v12[1];
  if (*(v8 + 16) != 2 || (v15 = v8[9], v16 = *v15, *v15 != v15[1]))
  {
    if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v11))
    {
      v21 = v13;
      v13 = v14;
      v22 = v10;
      LODWORD(v10) = v11;
    }

    else
    {
      v21 = v14;
      v22 = v11;
      if (!operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v10))
      {
        goto LABEL_84;
      }
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

    if (*(v6 + 15) == 12)
    {
      v23 = v6[6];
    }

    else
    {
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(v23[9], *(v23 + 16), &v89, v20);
    operations_research::Domain::Domain(__p, -v13);
    operations_research::Domain::AdditionWith(&v89, __p, &v85, v24);
    operations_research::Domain::InverseMultiplicationBy(&v85, v21, &v87);
    if (v85)
    {
      operator delete(v86);
    }

    if (__p[0])
    {
      operator delete(*&__p[8]);
    }

    operations_research::Domain::InverseMultiplicationBy(&v89, v21, &v85);
    operations_research::sat::PresolveContext::DomainOf(this[1], v22, &v81);
    operations_research::Domain::IntersectionWith(&v81, &v87, __p);
    IsEmpty = operations_research::Domain::IsEmpty(__p);
    if (__p[0])
    {
      operator delete(*&__p[8]);
    }

    if (v81)
    {
      operator delete(v82);
    }

    operations_research::sat::PresolveContext::DomainOf(this[1], v22, &v81);
    operations_research::Domain::IntersectionWith(&v81, &v85, __p);
    v28 = operations_research::Domain::IsEmpty(__p);
    if (__p[0])
    {
      operator delete(*&__p[8]);
      if ((v81 & 1) == 0)
      {
LABEL_36:
        if (v28 && IsEmpty)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    else if ((v81 & 1) == 0)
    {
      goto LABEL_36;
    }

    operator delete(v82);
    if (v28 && IsEmpty)
    {
LABEL_37:
      v29 = this[1];
      v84 = 20;
      strcpy(__p, "linear2: infeasible.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v29, __p, 1, v26, v27);
      if (v84 < 0)
      {
        operator delete(*__p);
      }

      LOBYTE(v6) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v6, v30, v31, v32);
      if ((v85 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_57;
    }

LABEL_43:
    if (v28)
    {
      v33 = this[1];
      operator new();
    }

    if (IsEmpty)
    {
      v34 = this[1];
      operator new();
    }

    if (*(v6 + 4) || operations_research::sat::PresolveContext::CanBeUsedAsLiteral(this[1], v22))
    {
      v36 = this[1];
      operator new();
    }

    v59 = this[1];
    std::string::basic_string[abi:ne200100]<0>(__p, "linear2: contains a Boolean.");
    operations_research::sat::PresolveContext::UpdateRuleStats(v59, __p, 1, v60, v61);
    if (v84 < 0)
    {
      operator delete(*__p);
    }

    operations_research::sat::PresolveContext::DomainOf(this[1], v22, __p);
    if ((operations_research::Domain::IsIncludedIn(__p, &v87) & 1) == 0)
    {
      v62 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      operations_research::sat::BoolArgumentProto::add_literals(v62, v10);
      v63 = operations_research::sat::ConstraintProto::mutable_linear(v62);
      operations_research::sat::BoolArgumentProto::add_literals(v63, v22);
      v64 = operations_research::sat::ConstraintProto::mutable_linear(v62);
      operations_research::sat::LinearConstraintProto::add_coeffs(v64, 1);
      operations_research::Domain::IntersectionWith(&v87, __p, &v81);
      v65 = operations_research::sat::ConstraintProto::mutable_linear(v62);
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v81, v65);
      if (v81)
      {
        operator delete(v82);
      }
    }

    if ((operations_research::Domain::IsIncludedIn(__p, &v85) & 1) == 0)
    {
      v66 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      operations_research::sat::BoolArgumentProto::add_literals(v66, ~v10);
      v67 = operations_research::sat::ConstraintProto::mutable_linear(v66);
      operations_research::sat::BoolArgumentProto::add_literals(v67, v22);
      v68 = operations_research::sat::ConstraintProto::mutable_linear(v66);
      operations_research::sat::LinearConstraintProto::add_coeffs(v68, 1);
      operations_research::Domain::IntersectionWith(&v85, __p, &v81);
      v69 = operations_research::sat::ConstraintProto::mutable_linear(v66);
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v81, v69);
      if (v81)
      {
        operator delete(v82);
      }
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
    operations_research::sat::ConstraintProto::Clear(v6);
    if (__p[0])
    {
      operator delete(*&__p[8]);
    }

    LOBYTE(v6) = 1;
    if ((v85 & 1) == 0)
    {
LABEL_77:
      if ((v87 & 1) == 0)
      {
LABEL_78:
        if ((v89 & 1) == 0)
        {
          return v6 & 1;
        }

        goto LABEL_79;
      }

LABEL_58:
      operator delete(*(&v87 + 1));
      if ((v89 & 1) == 0)
      {
        return v6 & 1;
      }

LABEL_79:
      operator delete(*(&v89 + 1));
      return v6 & 1;
    }

LABEL_57:
    operator delete(v86);
    if ((v87 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_58;
  }

  if (!*(a2 + 4))
  {
    if (v14 == 1)
    {
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this[1], v11, v10, -v13, v16, 0))
      {
        goto LABEL_99;
      }
    }

    else if (v13 == 1)
    {
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this[1], v10, v11, -v14, v16, 0))
      {
        goto LABEL_99;
      }
    }

    else if (v14 == -1)
    {
      if (operations_research::sat::PresolveContext::StoreAffineRelation(this[1], v11, v10, v13, -v16, 0))
      {
        goto LABEL_99;
      }
    }

    else
    {
      v55 = this[1];
      if (v13 != -1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v89, "TODO linear2: ax + by = cte");
        operations_research::sat::PresolveContext::UpdateRuleStats(v55, &v89, 1, v56, v57);
        if (v90 < 0)
        {
          operator delete(v89);
        }

        goto LABEL_84;
      }

      if (operations_research::sat::PresolveContext::StoreAffineRelation(v55, v10, v11, v14, -v16, 0))
      {
LABEL_99:
        operations_research::sat::ConstraintProto::Clear(v6);
        LOBYTE(v6) = 1;
        return v6 & 1;
      }
    }

LABEL_84:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v79 = v12[1];
  v80 = v14;
  v77 = 0;
  v78 = v16;
  v76 = 0;
  if (!operations_research::sat::SolveDiophantineEquationOfSizeTwo(&v80, &v79, &v78, &v77, &v76, a6))
  {
    v35 = this[1];
    operator new();
  }

  operations_research::sat::PresolveContext::DomainOf(this[1], v11, __p);
  operations_research::Domain::Domain(&v81, -v77);
  operations_research::Domain::AdditionWith(__p, &v81, &v85, v17);
  operations_research::Domain::InverseMultiplicationBy(&v85, v79, &v87);
  operations_research::sat::PresolveContext::DomainOf(this[1], v10, v72);
  operations_research::Domain::Domain(v71, -v76);
  operations_research::Domain::AdditionWith(v72, v71, v74, v18);
  operations_research::Domain::InverseMultiplicationBy(v74, -v80, v75);
  operations_research::Domain::IntersectionWith(&v87, v75, &v89);
  if (v75[0])
  {
    operator delete(v75[1]);
    if ((v74[0] & 1) == 0)
    {
LABEL_10:
      if ((v71[0] & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_62;
    }
  }

  else if ((v74[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v74[1]);
  if ((v71[0] & 1) == 0)
  {
LABEL_11:
    if ((v72[0] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_62:
  operator delete(v71[1]);
  if ((v72[0] & 1) == 0)
  {
LABEL_12:
    if ((v87 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(v73);
  if ((v87 & 1) == 0)
  {
LABEL_13:
    if ((v85 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(*(&v87 + 1));
  if ((v85 & 1) == 0)
  {
LABEL_14:
    if ((v81 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(v86);
  if ((v81 & 1) == 0)
  {
LABEL_15:
    if ((__p[0] & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_66:
  operator delete(v82);
  if (__p[0])
  {
LABEL_16:
    operator delete(*&__p[8]);
  }

LABEL_17:
  if (operations_research::Domain::IsEmpty(&v89))
  {
    v19 = this[1];
    operator new();
  }

  if (operations_research::Domain::Size(&v89) == 1)
  {
    v37 = operations_research::Domain::Min(&v89);
    v38 = v77;
    v39 = v79;
    v40 = v80;
    v70 = v76;
    v41 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    google::protobuf::RepeatedField<int>::operator=(v41 + 4, v6 + 4);
    v42 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::BoolArgumentProto::add_literals(v42, v11);
    v43 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::LinearConstraintProto::add_coeffs(v43, 1);
    v44 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::LinearConstraintProto::add_domain(v44, v38 + v39 * v37);
    v45 = operations_research::sat::ConstraintProto::mutable_linear(v41);
    operations_research::sat::LinearConstraintProto::add_domain(v45, v38 + v39 * v37);
    v46 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    google::protobuf::RepeatedField<int>::operator=(v46 + 4, v6 + 4);
    v47 = operations_research::sat::ConstraintProto::mutable_linear(v46);
    operations_research::sat::BoolArgumentProto::add_literals(v47, v10);
    v48 = operations_research::sat::ConstraintProto::mutable_linear(v46);
    operations_research::sat::LinearConstraintProto::add_coeffs(v48, 1);
    v49 = operations_research::sat::ConstraintProto::mutable_linear(v46);
    operations_research::sat::LinearConstraintProto::add_domain(v49, v70 - v40 * v37);
    v50 = operations_research::sat::ConstraintProto::mutable_linear(v46);
    operations_research::sat::LinearConstraintProto::add_domain(v50, v70 - v40 * v37);
    v51 = this[1];
    std::string::basic_string[abi:ne200100]<0>(&v87, "linear2: implied ax + by = cte has only one solution");
    operations_research::sat::PresolveContext::UpdateRuleStats(v51, &v87, 1, v52, v53);
    if (v88 < 0)
    {
      operator delete(v87);
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(this[1]);
    operations_research::sat::ConstraintProto::Clear(v6);
    v54 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v54 = 1;
  }

  if (v89)
  {
    operator delete(*(&v89 + 1));
  }

  if (v54)
  {
    goto LABEL_84;
  }

  return v6 & 1;
}

void sub_23CA84F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, void *a31, void *__p, int a33, __int16 a34, char a35, char a36)
{
  if (a31)
  {
    operator delete(__p);
  }

  if (*(v36 - 168))
  {
    operator delete(*(v36 - 160));
  }

  if (*(v36 - 144))
  {
    operator delete(*(v36 - 136));
  }

  if (*(v36 - 120))
  {
    operator delete(*(v36 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveSmallLinear(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5, uint64_t *a6)
{
  if (*(a2 + 15) != 12)
  {
    return 0;
  }

  v7 = *(this + 1);
  if (*(v7 + 416))
  {
    return 0;
  }

  v9 = *(*(a2 + 6) + 16);
  if (v9 == 2)
  {

    return operations_research::sat::CpModelPresolver::PresolveLinearOfSizeTwo(this, a2, a3, a4, a5, a6);
  }

  else if (v9 == 1)
  {

    return operations_research::sat::CpModelPresolver::PresolveLinearOfSizeOne(this, a2);
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v10 = this;
    v20 = 13;
    strcpy(__p, "linear: empty");
    operations_research::sat::PresolveContext::UpdateRuleStats(v7, __p, 1, a4, a5);
    v13 = a2;
    if (v20 < 0)
    {
      operator delete(__p[0]);
      v13 = a2;
    }

    if (*(v13 + 15) == 12)
    {
      v14 = *(v13 + 6);
    }

    else
    {
      v14 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(v14[9], *(v14 + 16), __p, v12);
    if (operations_research::Domain::Contains(__p, 0))
    {
      operations_research::sat::ConstraintProto::Clear(a2);
      result = 1;
    }

    else
    {
      result = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(v10, a2, v15, v16, v17);
    }

    if (__p[0])
    {
      v18 = result;
      operator delete(__p[1]);
      return v18;
    }
  }

  return result;
}

void sub_23CA8533C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveDiophantine(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 15) == 12)
  {
    v2 = *(a2 + 6);
    if (*(v2 + 16) >= 2 && (*(*(this + 1) + 416) & 1) == 0 && *(v2 + 64) == 2 && **(v2 + 72) == *(*(v2 + 72) + 8))
    {
      operator new();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23CA862EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  operations_research::sat::DiophantineSolution::~DiophantineSolution(&a34);
  if (a24)
  {
    operator delete(a24);
  }

  operator delete(a23);
  _Unwind_Resume(a1);
}

void sub_23CA864CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(operations_research::sat::CpModelPresolver *this, unsigned int a2, operations_research::sat::ConstraintProto *a3, __n128 a4)
{
  if (*(a3 + 15) != 12)
  {
    return;
  }

  if (*(*(this + 1) + 416))
  {
    return;
  }

  v5 = a3;
  v6 = *(a3 + 6);
  if (*(v6 + 64) != 2)
  {
    return;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(v6 + 72), 2uLL, v166, a4);
  v8 = *(this + 38);
  *(this + 30) = *(this + 29);
  *(this + 39) = v8;
  v155 = (this + 304);
  v156 = (this + 328);
  *(this + 42) = *(this + 41);
  v157 = (this + 352);
  v153 = v5;
  v154 = (this + 232);
  *(this + 45) = *(this + 44);
  v9 = *(v6 + 16);
  if (v9 < 1)
  {
    v158 = 0;
    v12 = 0;
    v11 = 0;
    v21 = 1;
  }

  else
  {
    v150 = a2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v158 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(v6 + 48) + 8 * v10);
      if (v14 >= 0)
      {
        v15 = *(*(v6 + 48) + 8 * v10);
      }

      else
      {
        v15 = -v14;
      }

      v165 = v15;
      if (v14)
      {
        if (v13 <= v15)
        {
          v13 = v15;
        }

        v164 = 0;
        v163 = 0;
        v16 = *(this + 1);
        v17 = *(*(v6 + 24) + 4 * v10);
        if (v14 < 1)
        {
          v164 = -operations_research::sat::PresolveContext::MaxOf(v16, v17);
          v18 = -operations_research::sat::PresolveContext::MinOf(*(this + 1), *(*(v6 + 24) + 4 * v10));
          v163 = v18;
          v19 = v164;
          if (v164 == v18)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v164 = operations_research::sat::PresolveContext::MinOf(v16, v17);
          v18 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), *(*(v6 + 24) + 4 * v10));
          v163 = v18;
          v19 = v164;
          if (v164 == v18)
          {
            goto LABEL_23;
          }
        }

        v20 = v165;
        std::vector<long long>::push_back[abi:ne200100](v156, &v164);
        std::vector<long long>::push_back[abi:ne200100](v157, &v163);
        std::vector<long long>::push_back[abi:ne200100](v155, &v165);
        *&__p = v165;
        *(&__p + 1) = (v163 - v164) * v165;
        v161 = v10;
        std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](v154, &__p);
        v11 += v20 * v19;
        v12 += v20 * v18;
        v158 += *(*(this + 30) - 16);
      }

      ++v10;
    }

    while (v9 != v10);
    v21 = v13 < 2;
    a2 = v150;
    v5 = v153;
  }

  if (v11 > operations_research::Domain::Max(v166) || operations_research::Domain::Min(v166) > v12)
  {
LABEL_22:
    operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v5, v22, v23, v24);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
    goto LABEL_23;
  }

  v25 = operations_research::Domain::Max(v166);
  if (__OFSUB__(v25, v11))
  {
    v26 = (v25 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v25 - v11;
  }

  v27 = operations_research::Domain::Min(v166);
  if (__OFSUB__(v12, v27))
  {
    v28 = (v12 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = v12 - v27;
  }

  if (v26 >= v158 && v28 >= v158)
  {
    operations_research::sat::ConstraintProto::Clear(v5);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
    goto LABEL_23;
  }

  if (v21)
  {
    goto LABEL_23;
  }

  if (v28 < v158)
  {
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 400), v28);
    v29 = operations_research::Domain::Min(v166);
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 504), v29 + ~v11);
  }

  if (v26 < v158)
  {
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 608), v26);
    v30 = operations_research::Domain::Max(v166);
    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 712), v12 + ~v30);
  }

  std::stable_sort[abi:ne200100]<std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0>(*(this + 29), *(this + 30));
  *(this + 48) = *(this + 47);
  v35 = *(this + 29);
  v34 = *(this + 30);
  if (v34 == v35)
  {
LABEL_88:
    if ((v28 >= v158 || *(this + 53) >= *(this + 52)) && (v26 >= v158 || *(this + 79) >= *(this + 78)))
    {
LABEL_108:
      v84 = *(this + 47);
      v83 = *(this + 48);
      if ((v83 - v84) >= 0x19)
      {
        std::vector<long long>::resize(this + 47, 3uLL);
        v84 = *(this + 47);
        v83 = *(this + 48);
      }

      if (v84 == v83)
      {
        goto LABEL_23;
      }

      v152 = a2;
      v159 = v83;
      while (1)
      {
        while (1)
        {
          v85 = *v84;
          v165 = 0;
          v87 = *(this + 38);
          v86 = *(this + 39);
          v88 = *(this + 41);
          v89 = *(this + 42);
          v91 = *(this + 44);
          v90 = *(this + 45);
          v92 = operations_research::Domain::Max(v166);
          if (operations_research::sat::LinearInequalityCanBeReducedWithClosestMultiple(v85, v87, (v86 - v87) >> 3, v88, (v89 - v88) >> 3, v91, (v90 - v91) >> 3, v92, &v165))
          {
            break;
          }

          if (++v84 == v159)
          {
            goto LABEL_23;
          }
        }

        v164 = 0;
        v94 = *(this + 41);
        v93 = *(this + 42);
        v95 = *(this + 44);
        v96 = v93 - v94;
        if (v93 != v94)
        {
          if (v96 <= 7 || ((v96 - 1) <= 0x7FFFFFFE ? (v97 = (v96 - 1) >> 31 == 0) : (v97 = 0), !v97 || v94 < (v95 + v93 - v94) && v95 < v93))
          {
            v98 = 0;
            v99 = 0;
LABEL_124:
            v100 = v99 + 1;
            do
            {
              v101 = v94[v98];
              v94[v98] = v95[v98];
              v95[v98] = v101;
              v94[v98] = -v94[v98];
              v95[v98] = -v95[v98];
              v98 = v100++;
            }

            while (v96 > v98);
            goto LABEL_126;
          }

          v98 = (v93 - v94) & 0xFFFFFFFELL;
          v133 = v98;
          v134 = *(this + 44);
          v135 = *(this + 41);
          do
          {
            v136 = *v135;
            *v135++ = vnegq_s64(*v134);
            *v134++ = vnegq_s64(v136);
            v133 -= 2;
          }

          while (v133);
          v99 = v96 & 0xFFFFFFFE;
          if (v96 != v98)
          {
            goto LABEL_124;
          }
        }

LABEL_126:
        v103 = *(this + 38);
        v102 = *(this + 39);
        v104 = *(this + 45);
        v105 = operations_research::Domain::Min(v166);
        CanBeReducedWithClosestMultiple = operations_research::sat::LinearInequalityCanBeReducedWithClosestMultiple(v85, v103, (v102 - v103) >> 3, v94, v96, v95, (v104 - v95) >> 3, -v105, &v164);
        if (CanBeReducedWithClosestMultiple)
        {
          v107 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&__p, "linear: simplify using approximate gcd");
          operations_research::sat::PresolveContext::UpdateRuleStats(v107, &__p, 1, v108, v109);
          if (v162 < 0)
          {
            operator delete(__p);
          }

          v111 = operations_research::sat::ConstraintProto::mutable_linear(v153);
          if (*(v6 + 40) < 1)
          {
            v113 = 0;
          }

          else
          {
            v112 = 0;
            v113 = 0;
            do
            {
              v114 = operations_research::sat::ClosestMultiple(*(*(v6 + 48) + 8 * v112), v85, v110);
              if (v114 / v85)
              {
                *(*(v111 + 24) + 4 * v113) = *(*(v6 + 24) + 4 * v112);
                *(*(v111 + 48) + 8 * v113++) = v114 / v85;
              }

              ++v112;
            }

            while (v112 < *(v6 + 40));
          }

          if (*(v111 + 16) > v113)
          {
            *(v111 + 16) = v113;
          }

          if (*(v111 + 40) > v113)
          {
            *(v111 + 40) = v113;
          }

          operations_research::Domain::Domain(&__p, -v164, v165);
          if (operations_research::Domain::IsEmpty(&__p))
          {
            operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v153, v125, v126, v127);
          }

          else
          {
            operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&__p, v111);
          }

          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v152);
          if (__p)
          {
            operator delete(*(&__p + 1));
          }

          v118 = v159;
          goto LABEL_151;
        }

        v115 = *(this + 41);
        v116 = *(this + 42);
        v117 = v116 - v115;
        v118 = v159;
        if (v116 != v115)
        {
          v119 = v117 >> 3;
          v120 = *v157;
          if ((v117 >> 3) <= 7)
          {
            goto LABEL_136;
          }

          v122 = 0;
          v121 = 0;
          if ((v119 - 1) > 0x7FFFFFFE || (v119 - 1) >> 31)
          {
            goto LABEL_137;
          }

          if (v115 < v120->u64 + v117 && v120 < v116)
          {
LABEL_136:
            v121 = 0;
            v122 = 0;
LABEL_137:
            v123 = v122 + 1;
            do
            {
              v124 = *(v115 + 8 * v121);
              *(v115 + 8 * v121) = v120->i64[v121];
              v120->i64[v121] = v124;
              *(v115 + 8 * v121) = -*(v115 + 8 * v121);
              v120->i64[v121] = -v120->i64[v121];
              v121 = v123++;
            }

            while (v119 > v121);
            goto LABEL_151;
          }

          v121 = (v117 >> 3) & 0xFFFFFFFELL;
          v129 = v121;
          v130 = *v157;
          v131 = *(this + 41);
          do
          {
            v132 = *v131;
            *v131++ = vnegq_s64(*v130);
            *v130++ = vnegq_s64(v132);
            v129 -= 2;
          }

          while (v129);
          v122 = v119 & 0xFFFFFFFE;
          if (v119 != v121)
          {
            goto LABEL_137;
          }
        }

LABEL_151:
        ++v84;
        v128 = v84 == v118 || CanBeReducedWithClosestMultiple;
        if (v128)
        {
          goto LABEL_23;
        }
      }
    }

    v68 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "linear: reduce rhs with DP");
    operations_research::sat::PresolveContext::UpdateRuleStats(v68, &__p, 1, v69, v70);
    if (v162 < 0)
    {
      operator delete(__p);
      v71 = v11;
      if (v28 >= v158)
      {
LABEL_94:
        if (v26 >= v158)
        {
          goto LABEL_95;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v71 = v11;
      if (v28 >= v158)
      {
        goto LABEL_94;
      }
    }

    v71 = v12 - *(this + 53);
    if (v26 >= v158)
    {
LABEL_95:
      if (v71 > v12)
      {
        goto LABEL_22;
      }

      goto LABEL_106;
    }

LABEL_105:
    v12 = *(this + 79) + v11;
    if (v71 > v12)
    {
      goto LABEL_22;
    }

LABEL_106:
    operations_research::Domain::Domain(&__p, v71, v12);
    v82 = operations_research::sat::ConstraintProto::mutable_linear(v5);
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&__p, v82);
    if (__p)
    {
      operator delete(*(&__p + 1));
    }

    goto LABEL_108;
  }

  v146 = v28;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v149 = 0;
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 3);
  v40 = v158;
  v147 = v26;
  while (1)
  {
    v41 = (v35 + 24 * v36);
    v42 = *v41;
    if (*v41)
    {
      v43 = v37;
      v44 = *v41;
      do
      {
        v37 = v44;
        v44 = v43 % v44;
        v43 = v37;
      }

      while (v44);
    }

    v45 = v41[1];
    v46 = v40 - v45;
    v38 += v45 / v42;
    v148 = v41;
    v47 = v149 + 1;
    if (v39 <= v47 || v42 != *(v35 + 24 * v47))
    {
      break;
    }

    v40 -= v45;
    v26 = v147;
LABEL_43:
    v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 3);
    ++v149;
    v36 = v47;
    if (v39 <= v47)
    {
      goto LABEL_84;
    }
  }

  if (v42 >= 2 && (v147 >= v158 || (v42 & ((v147 % v42) >> 63)) + v147 % v42 >= v46))
  {
    if (v146 < v158 && (v42 & ((v146 % v42) >> 63)) + v146 % v42 < v46)
    {
      goto LABEL_57;
    }

    std::vector<long long>::push_back[abi:ne200100](this + 376, v41);
  }

  if (v146 >= v158)
  {
    v48 = v38;
    v57 = 0;
    v40 = v46;
    goto LABEL_68;
  }

  v42 = *v148;
LABEL_57:
  operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 400), v42, v38);
  operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 504), *v148, v38);
  v48 = v38;
  v49 = *(this + 53);
  v50 = (v49 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v40 = v46;
  v51 = __OFADD__(v49, v46);
  v52 = v49 + v46;
  if (v51)
  {
    v52 = v50;
  }

  v53 = *(this + 66);
  v54 = (v53 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v51 = __OFADD__(v53, v46);
  v55 = v53 + v46;
  if (v51)
  {
    v55 = v54;
  }

  v57 = v55 > *(this + 65) && v52 > *(this + 52);
LABEL_68:
  v26 = v147;
  if (v147 >= v158)
  {
    v66 = 0;
  }

  else
  {
    v145 = v57;
    v58 = v48;
    operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 608), *v148, v48);
    operations_research::sat::MaxBoundedSubsetSum::AddMultiples((this + 712), *v148, v58);
    v59 = *(this + 79);
    v60 = (v59 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v51 = __OFADD__(v59, v40);
    v61 = v59 + v40;
    if (v51)
    {
      v61 = v60;
    }

    v62 = *(this + 92);
    v63 = (v62 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v51 = __OFADD__(v62, v40);
    v64 = v62 + v40;
    if (v51)
    {
      v64 = v63;
    }

    v66 = v64 > *(this + 91) && v61 > *(this + 78);
    v26 = v147;
    v57 = v145;
  }

  if (v40)
  {
    if (v57 || v66)
    {
      v38 = 0;
      v35 = *(this + 29);
      v34 = *(this + 30);
      v47 = v149 + 1;
      goto LABEL_43;
    }

    v72 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "linear: remove irrelevant part");
    operations_research::sat::PresolveContext::UpdateRuleStats(v72, &__p, 1, v73, v74);
    if (v162 < 0)
    {
      operator delete(__p);
    }

    v151 = a2;
    *(this + 33) = *(this + 32);
    *(this + 36) = *(this + 35);
    if (v149 < 0)
    {
      v76 = 0;
      v75 = 0;
    }

    else
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      do
      {
        v78 = *(*v154 + 24 * v77 + 16);
        v79 = *(*v155 + 8 * v78);
        v80 = *(*v156 + 8 * v78);
        v81 = (*v157)->i64[v78];
        LODWORD(__p) = *(*(v6 + 24) + 4 * v78);
        std::vector<int>::push_back[abi:ne200100](this + 256, &__p);
        *&__p = *(*(v6 + 48) + 8 * v78);
        std::vector<long long>::push_back[abi:ne200100](this + 35, &__p);
        v75 += v80 * v79;
        v76 += v81 * v79;
        ++v77;
      }

      while (v77 <= v149);
    }

    v137 = operations_research::sat::ConstraintProto::mutable_linear(v153);
    google::protobuf::RepeatedField<int>::Assign<std::__wrap_iter<int *>>(v137 + 16, *(this + 32), *(this + 33));
    google::protobuf::RepeatedField<long long>::Assign<std::__wrap_iter<long long *>>(v137 + 40, *(this + 35), *(this + 36));
    v141 = v75;
    if (v146 < v158)
    {
      v141 = v76 - *(this + 53);
      if (v147 >= v158)
      {
LABEL_171:
        if (v141 > v76)
        {
LABEL_172:
          operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v153, v138, v139, v140);
LABEL_178:
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v151);
          goto LABEL_23;
        }

LABEL_175:
        operations_research::Domain::Domain(&__p, v141, v76);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&__p, v137);
        if (__p)
        {
          operator delete(*(&__p + 1));
        }

        operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, v153, v142, v143, v144);
        goto LABEL_178;
      }
    }

    else if (v147 >= v158)
    {
      goto LABEL_171;
    }

    v76 = *(this + 79) + v75;
    if (v141 > v76)
    {
      goto LABEL_172;
    }

    goto LABEL_175;
  }

LABEL_84:
  v67 = v37 >= 2;
  v5 = v153;
  v28 = v146;
  if (!v67)
  {
    goto LABEL_88;
  }

  if (operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, v153, v31, v32, v33))
  {
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
  }

LABEL_23:
  if (v166[0])
  {
    operator delete(v166[1]);
  }
}

void sub_23CA87140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *__p, int a25, __int16 a26, char a27, char a28)
{
  if (a23)
  {
    operator delete(__p);
  }

  if (*(v28 - 112))
  {
    operator delete(*(v28 - 104));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void std::stable_sort[abi:ne200100]<std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0>(char *a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 < 3073)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v3 = a1;
    v4 = a2;
    v5 = MEMORY[0x277D826F0];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    while (1)
    {
      v7 = operator new(24 * v6, v5);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_8;
      }
    }

    v10 = v7;
LABEL_8:
    a2 = v4;
    a1 = v3;
  }

  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(a1, a2, v2, v10, v6);
  if (v10)
  {

    operator delete(v10);
  }
}

void sub_23CA8742C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::RepeatedField<int>::Assign<std::__wrap_iter<int *>>(uint64_t result, char *a2, char *a3)
{
  *result = 0;
  v3 = (a3 - a2) >> 2;
  if (*(result + 4) < v3)
  {
    v18 = result;
    v19 = a2;
    v20 = a3;
    result = google::protobuf::RepeatedField<int>::Grow(result, 0, v3);
    a2 = v19;
    a3 = v20;
    v4 = *v18;
    v5 = *(v18 + 1);
    *v18 = v3;
    v6 = (v20 - v19);
    if (v20 == v19)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(result + 8);
    *result = v3;
    v6 = (a3 - a2);
    if (a3 == a2)
    {
      return result;
    }
  }

  v7 = (v5 + 4 * v4);
  v8 = (v6 - 4);
  if (v8 < 0x1C)
  {
    v9 = a2;
    goto LABEL_10;
  }

  v10 = 4 * v4 + v5;
  if ((v10 - a2) < 0x20)
  {
    v9 = a2;
    do
    {
LABEL_10:
      v17 = *v9++;
      *v7++ = v17;
    }

    while (v9 != a3);
    return result;
  }

  v11 = (v8 >> 2) + 1;
  v12 = 4 * (v11 & 0x7FFFFFFFFFFFFFF8);
  v7 = (v7 + v12);
  v9 = &a2[v12];
  v13 = (a2 + 16);
  v14 = (v10 + 16);
  v15 = v11 & 0x7FFFFFFFFFFFFFF8;
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
  if (v11 != (v11 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::Assign<std::__wrap_iter<long long *>>(uint64_t result, char *a2, char *a3)
{
  *result = 0;
  v3 = (a3 - a2) >> 3;
  if (*(result + 4) < v3)
  {
    v18 = result;
    v19 = a2;
    v20 = a3;
    result = google::protobuf::RepeatedField<long long>::Grow(result, 0);
    a2 = v19;
    a3 = v20;
    v4 = *v18;
    v5 = *(v18 + 1);
    *v18 = v3;
    v6 = (v20 - v19);
    if (v20 == v19)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(result + 8);
    *result = v3;
    v6 = (a3 - a2);
    if (a3 == a2)
    {
      return result;
    }
  }

  v7 = (v5 + 8 * v4);
  v8 = (v6 - 8);
  if (v8 < 0x38)
  {
    v9 = a2;
    goto LABEL_10;
  }

  v10 = 8 * v4 + v5;
  if ((v10 - a2) < 0x20)
  {
    v9 = a2;
    do
    {
LABEL_10:
      v17 = *v9++;
      *v7++ = v17;
    }

    while (v9 != a3);
    return result;
  }

  v11 = (v8 >> 3) + 1;
  v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
  v7 = (v7 + v12);
  v9 = &a2[v12];
  v13 = (a2 + 16);
  v14 = (v10 + 16);
  v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  if (v11 != (v11 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_10;
  }

  return result;
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 8 * a2;
  }
}

uint64_t operations_research::sat::CpModelPresolver::ProcessAtMostOneAndLinear(operations_research::TimeLimit **this)
{
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0)
  {
    v3 = this[1];
    if ((*(v3 + 416) & 1) == 0)
    {
      if (*(*(v3 + 49) + 792))
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_23CA87A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::ActivityBoundHelper::~ActivityBoundHelper(&a15);
  operations_research::sat::PresolveTimer::~PresolveTimer((v15 - 200));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::PresolveTimer::PresolveTimer(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = absl::lts_20240722::GetCurrentTimeNanos(a1);
  return a1;
}

void sub_23CA87AE8(_Unwind_Exception *a1)
{
  std::vector<std::string>::~vector[abi:ne200100]((v1 + 96));
  std::vector<std::pair<std::string,long long>>::~vector[abi:ne200100]((v1 + 72));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelPresolver::ProcessOneLinearWithAmo(operations_research::sat::CpModelPresolver *this, unsigned int a2, operations_research::sat::ConstraintProto *a3, operations_research::sat::ActivityBoundHelper *a4)
{
  if (*(a3 + 15) != 12 || *(*(a3 + 6) + 16) < 2)
  {
    return;
  }

  *(this + 5) = *(this + 4);
  v190 = this + 32;
  operations_research::sat::ConstraintProto::Clear((this + 168));
  operations_research::Domain::Domain(&v206, 0);
  if (*(a3 + 15) != 12)
  {
    v191 = a3;
    v189 = off_2810BEE58;
    if (off_2810BEE58 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v191 = a3;
  v189 = *(*(a3 + 6) + 16);
  if (v189 >= 1)
  {
LABEL_23:
    v19 = 0;
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      while (1)
      {
        v25 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v191 + 15) == 12)
        {
          v25 = *(v191 + 6);
        }

        v26 = *(v25[3] + v19);
        v27 = v25[6];
        v28 = v27[v19];
        v29 = v26 >= 0 ? v27[v19] : -v28;
        v30 = v26 ^ (v26 >> 31);
        if (!operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), v30))
        {
          break;
        }

        LODWORD(v204) = v30;
        v205.n128_u64[0] = v29;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v190, &v204);
        if (v28 >= 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = -v28;
        }

        if (v31 < v8)
        {
          v8 = v31;
        }

        if (v7 <= v31)
        {
          v7 = v31;
        }

        if (v189 == ++v19)
        {
          goto LABEL_6;
        }
      }

      operations_research::sat::PresolveContext::DomainOf(*(this + 1), v30, &v198);
      operations_research::Domain::ContinuousMultiplicationBy(&v198, v29, &v200);
      operations_research::Domain::AdditionWith(&v206, &v200, &v202, v32);
      operations_research::Domain::RelaxIfTooComplex(&v202, &v204);
      if (v206)
      {
        operator delete(v207.n128_u64[0]);
      }

      v206 = v204;
      v6 = v205;
      v207 = v205;
      v204 = 0;
      if (v202)
      {
        operator delete(*(&v202 + 1));
        if ((v200 & 1) == 0)
        {
LABEL_45:
          if ((v198 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }
      }

      else if ((v200 & 1) == 0)
      {
        goto LABEL_45;
      }

      operator delete(__p[0]);
      if ((v198 & 1) == 0)
      {
LABEL_46:
        if (*(this + 57) == 12)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

LABEL_50:
      operator delete(v199.n128_u64[0]);
      if (*(this + 57) == 12)
      {
LABEL_47:
        v33 = *(this + 27);
        goto LABEL_54;
      }

LABEL_51:
      operations_research::sat::ConstraintProto::clear_constraint((v190 + 136));
      *(this + 57) = 12;
      v34 = *(this + 22);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v34);
      *(this + 27) = v33;
LABEL_54:
      v36 = *(v33 + 16);
      v35 = *(v33 + 20);
      if (v36 == v35)
      {
        google::protobuf::RepeatedField<int>::Grow(v33 + 16, v35, (v35 + 1));
        v36 = *(v33 + 16);
      }

      v37 = *(v33 + 24);
      *(v33 + 16) = v36 + 1;
      *(v37 + 4 * v36) = v30;
      if (*(this + 57) != 12)
      {
        operations_research::sat::ConstraintProto::clear_constraint((v190 + 136));
        *(this + 57) = 12;
        v38 = *(this + 22);
        if (v38)
        {
          v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v38);
        *(this + 27) = v20;
        v22 = *(v20 + 40);
        v21 = *(v20 + 44);
        v23 = (v20 + 40);
        if (v22 != v21)
        {
          goto LABEL_25;
        }

LABEL_60:
        google::protobuf::RepeatedField<long long>::Grow(v23, v21);
        v22 = *v23;
        goto LABEL_25;
      }

      v20 = *(this + 27);
      v22 = *(v20 + 40);
      v21 = *(v20 + 44);
      v23 = (v20 + 40);
      if (v22 == v21)
      {
        goto LABEL_60;
      }

LABEL_25:
      v24 = *(v20 + 48);
      *(v20 + 40) = v22 + 1;
      *(v24 + 8 * v22) = v29;
      if (v189 == ++v19)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_5:
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  if (*(this + 4) == *(this + 5))
  {
    goto LABEL_67;
  }

  v9 = v191;
  v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  if (*(v191 + 15) == 12)
  {
    v10 = *(v191 + 6);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v10[9], *(v10 + 16), &v204, v6);
  operations_research::Domain::Domain(&v202, 0);
  v11 = v207.n128_u64[0];
  if ((v206 & 1) == 0)
  {
    v11 = &v207;
  }

  v12 = &v202 + 1;
  if (v202)
  {
    v12 = *(&v202 + 1);
  }

  if ((((v202 >> 1) ^ (v206 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_14;
  }

  v44 = &v11[v206 >> 1];
  v45 = &v12[2 * (v202 >> 1)];
  if ((v206 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v202 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    while (v11->n128_u64[0] == *v12 && v11->n128_u64[1] == v12[1])
    {
      ++v11;
      v12 += 2;
      if (v11 == v44 || v12 == v45)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_14;
  }

LABEL_79:
  if (v12 != v45 || v11 != v44 || (v204 & 0x1FFFFFFFELL) != 2)
  {
LABEL_14:
    if (v202)
    {
      operator delete(*(&v202 + 1));
    }

    goto LABEL_16;
  }

  if (v202)
  {
    operator delete(*(&v202 + 1));
  }

  if (v8 >= v7)
  {
    goto LABEL_16;
  }

  v48 = *(this + 4);
  v47 = *(this + 5);
  if (v48 == v47)
  {
    v50 = 0;
    goto LABEL_259;
  }

  v49 = v47 - v48 - 16;
  if (v49 <= 0xF)
  {
    v50 = 0;
    v51 = *(this + 4);
    do
    {
LABEL_258:
      v50 += *(v51 + 8) & (*(v51 + 8) >> 63);
      v51 += 16;
    }

    while (v51 != v47);
    goto LABEL_259;
  }

  v160 = 0;
  v161 = 0;
  v162 = (v49 >> 4) + 1;
  v51 = v48 + 16 * (v162 & 0x1FFFFFFFFFFFFFFELL);
  v163 = (v48 + 24);
  v164 = v162 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v165 = *(v163 - 2);
    v166 = *v163;
    v163 += 4;
    v160 += v165 & (v165 >> 63);
    v161 += v166 & (v166 >> 63);
    v164 -= 2;
  }

  while (v164);
  v50 = v161 + v160;
  if (v162 != (v162 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_258;
  }

LABEL_259:
  v167 = operations_research::Domain::Max(&v204) - v50;
  v168 = v50 >= operations_research::Domain::Min(&v204) && v7 <= v167;
  v9 = v191;
  if (v168)
  {
    v169 = *(this + 4);
    for (i = *(this + 5); v169 != i; v169 += 16)
    {
      v171 = *(v169 + 8);
      if (v171 + v8 <= v167)
      {
        if (v171 >= 1)
        {
          v172 = *v169;
        }

        else
        {
          v172 = ~*v169;
        }

        operator new();
      }
    }

    v9 = v191;
    if (operations_research::sat::ActivityBoundHelper::IsAmo(a4, 0, 0))
    {
      v173 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v202, "linear + amo: detect hidden AMO");
      operations_research::sat::PresolveContext::UpdateRuleStats(v173, &v202, 1, v174, v175);
      if (v203 < 0)
      {
        operator delete(v202);
      }

      if (v189 < 1)
      {
        v177 = 0;
LABEL_295:
        operations_research::Domain::Domain(&v202, v177, v177 + 1);
        v184 = operations_research::sat::ConstraintProto::mutable_linear(v191);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v202, v184);
        if (v202)
        {
          operator delete(*(&v202 + 1));
        }

        goto LABEL_65;
      }

      v176 = 0;
      v177 = 0;
      while (1)
      {
        while (*(v191 + 15) == 12)
        {
          v178 = *(v191 + 6);
          if ((*(*(v178 + 24) + 4 * v176) & 0x80000000) != 0)
          {
            goto LABEL_299;
          }

          v179 = *(v178 + 48);
          if (*(v179 + 8 * v176) <= 0)
          {
            goto LABEL_290;
          }

LABEL_277:
          *(v179 + 8 * v176++) = 1;
          if (v189 == v176)
          {
            goto LABEL_295;
          }
        }

        if ((*(off_2810BEE60 + v176) & 0x80000000) != 0)
        {
LABEL_299:
          v185 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v202, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 3411);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v185);
        }

        if (*(off_2810BEE78 + v176) >= 1)
        {
          operations_research::sat::ConstraintProto::clear_constraint(v191);
          *(v191 + 15) = 12;
          v180 = *(v191 + 1);
          if (v180)
          {
            v180 = *(v180 & 0xFFFFFFFFFFFFFFFELL);
          }

          v181 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v180);
          *(v191 + 6) = v181;
          v179 = *(v181 + 48);
          goto LABEL_277;
        }

        operations_research::sat::ConstraintProto::clear_constraint(v191);
        *(v191 + 15) = 12;
        v182 = *(v191 + 1);
        if (v182)
        {
          v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
        }

        v183 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v182);
        *(v191 + 6) = v183;
        v179 = *(v183 + 48);
LABEL_290:
        *(v179 + 8 * v176) = -1;
        --v177;
        if (v189 == ++v176)
        {
          goto LABEL_295;
        }
      }
    }
  }

LABEL_16:
  v13 = a4;
  v14 = operations_research::sat::ActivityBoundHelper::ComputeActivity(a4, 1, *(this + 4), (*(this + 5) - *(this + 4)) >> 4, this + 7);
  v15 = operations_research::sat::ActivityBoundHelper::ComputeActivity(a4, 0, *(this + 4), (*(this + 5) - *(this + 4)) >> 4, this + 10);
  operations_research::Domain::Domain(&v200, v14, v15);
  operations_research::Domain::AdditionWith(&v206, &v200, &v202, v16);
  if (v200)
  {
    operator delete(__p[0]);
  }

  operations_research::Domain::IntersectionWith(&v202, &v204, &v200);
  IsEmpty = operations_research::Domain::IsEmpty(&v200);
  if (v200)
  {
    operator delete(__p[0]);
  }

  if (IsEmpty)
  {
    v18 = *(this + 1);
    operator new();
  }

  if (operations_research::Domain::IsIncludedIn(&v202, &v204))
  {
    v43 = *(this + 1);
    operator new();
  }

  v186 = (v9 + 16);
  if (!*(v9 + 4))
  {
    v82 = *(this + 57) == 12 ? *(this + 27) : &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (*(v82 + 4))
    {
      operations_research::Domain::Domain(&v196, v14, v15);
      operations_research::Domain::Negation(&v196, &v198);
      operations_research::Domain::AdditionWith(&v204, &v198, &v200, v106);
      v107 = operations_research::sat::ConstraintProto::mutable_linear((v190 + 136));
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v200, v107);
      if (v200)
      {
        operator delete(__p[0]);
        if ((v198 & 1) == 0)
        {
LABEL_176:
          if ((v196 & 1) == 0)
          {
            goto LABEL_178;
          }

          goto LABEL_177;
        }
      }

      else if ((v198 & 1) == 0)
      {
        goto LABEL_176;
      }

      operator delete(v199.n128_u64[0]);
      if ((v196 & 1) == 0)
      {
LABEL_178:
        if ((operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(this, -1, (v190 + 136)) & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_89;
      }

LABEL_177:
      operator delete(v197);
      goto LABEL_178;
    }
  }

LABEL_89:
  v52 = *(this + 4);
  if (*(this + 5) == v52)
  {
    v55 = 0;
    v54 = 0;
    LODWORD(v73) = *v186;
    v74 = 1;
LABEL_152:
    if (v73)
    {
      if (*(v191 + 15) == 12)
      {
        v91 = *(v191 + 6);
      }

      else
      {
        v91 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      if ((operations_research::sat::ActivityBoundHelper::PresolveEnforcement(v13, v91[3], *(v91 + 4), v191, this + 17) & 1) == 0)
      {
        v103 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: infeasible enforcement");
        operations_research::sat::PresolveContext::UpdateRuleStats(v103, &v200, 1, v104, v105);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v200);
        }

        operations_research::sat::ConstraintProto::Clear(v191);
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        goto LABEL_63;
      }

      if (*v186 < v73)
      {
        v92 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: simplified enforcement list");
        operations_research::sat::PresolveContext::UpdateRuleStats(v92, &v200, 1, v93, v94);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v200);
        }

        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      }

      if (!v74)
      {
        v119 = *(this + 17);
        if (v119 > 1)
        {
          _X10 = *(this + 19);
          v147 = 0;
          do
          {
            v148 = 0;
            v149 = ~*v147;
            __asm { PRFM            #4, [X10] }

            v154 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v149) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v149));
            v155 = vdup_n_s8(v154 & 0x7F);
            v156 = ((_X10 >> 12) ^ (v154 >> 7)) & v119;
            v157 = *(_X10 + v156);
            v158 = vceq_s8(v157, v155);
            if (!v158)
            {
              goto LABEL_248;
            }

            do
            {
LABEL_246:
              if (*(*(this + 20) + 4 * ((v156 + (__clz(__rbit64(v158)) >> 3)) & v119)) == v149)
              {
                goto LABEL_253;
              }

              v158 &= ((v158 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v158);
LABEL_248:
            while (!*&vceq_s8(v157, 0x8080808080808080))
            {
              v148 += 8;
              v156 = (v148 + v156) & v119;
              v157 = *(_X10 + v156);
              v158 = vceq_s8(v157, v155);
              if (v158)
              {
                goto LABEL_246;
              }
            }

            ++v147;
          }

          while (v147 != v55);
        }

        else if (*(this + 18) >= 2uLL)
        {
          v120 = 0;
          while ((*v120 ^ *(this + 38)) != -1)
          {
            if (++v120 == v55)
            {
              goto LABEL_199;
            }
          }

LABEL_253:
          v159 = *(this + 1);
          operator new();
        }

LABEL_199:
        if (*v186 == 1 && !v74)
        {
          v121 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: added implications");
          operations_research::sat::PresolveContext::UpdateRuleStats(v121, &v200, 1, v122, v123);
          if (SHIBYTE(__p[1]) < 0)
          {
            operator delete(v200);
          }

          v124 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          google::protobuf::RepeatedField<int>::operator=((v124 + 16), v186);
          v125 = 0;
          do
          {
            v126 = *v125;
            LODWORD(v198) = *v125;
            if (*(v124 + 60) == 4)
            {
              v127 = *(v124 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v124);
              *(v124 + 60) = 4;
              v128 = *(v124 + 8);
              if (v128)
              {
                v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
              }

              v127 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v128);
              *(v124 + 48) = v127;
              v126 = v198;
            }

            v130 = *(v127 + 4);
            v129 = *(v127 + 5);
            if (v130 == v129)
            {
              google::protobuf::RepeatedField<int>::Grow(v127 + 2, v129, (v129 + 1));
              v130 = *(v127 + 4);
            }

            v131 = v127[3];
            *(v127 + 4) = v130 + 1;
            *(v131 + 4 * v130) = v126;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(this + 136, &v198, &v200);
            if (LOBYTE(__p[1]) == 1)
            {
              *__p[0] = v198;
            }

            ++v125;
          }

          while (v125 != v55);
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
        }
      }

      v95 = operations_research::sat::ConstraintProto::mutable_linear(v191);
      if (fixed > (v54 >> 2))
      {
        v98 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: fixed literal implied by enforcement");
        operations_research::sat::PresolveContext::UpdateRuleStats(v98, &v200, 1, v99, v100);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v200);
        }
      }

      if (fixed >= 1)
      {
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      }
    }

    v101 = v191;
    if (*(v191 + 15) == 12)
    {
      v102 = *(v191 + 6);
    }

    else
    {
      v102 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    v108 = *(v102 + 4);
    if (!v108)
    {
      v112 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: empty after processing");
      operations_research::sat::PresolveContext::UpdateRuleStats(v112, &v200, 1, v113, v114);
      if (SHIBYTE(__p[1]) < 0)
      {
        operator delete(v200);
      }

      operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v191, v115, v116, v117, v118);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      goto LABEL_63;
    }

    if (v189 != v108)
    {
      if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v191, v39, v40, v41, v42))
      {
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (*(v191 + 15) != 12)
        {
          goto LABEL_63;
        }
      }
    }

    if (!*v186)
    {
      goto LABEL_63;
    }

    *(this + 5) = *(this + 4);
    operations_research::Domain::Domain(&v200, 0);
    v110 = *(v191 + 15);
    if (v110 == 12)
    {
      v111 = *(v191 + 6);
    }

    else
    {
      v111 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    v132 = *(v111 + 4);
    if (v132 < 1)
    {
LABEL_232:
      if (v110 == 12)
      {
        v139 = *(v101 + 48);
      }

      else
      {
        v139 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v141 = *(this + 4);
      v140 = *(this + 5);
      operations_research::Domain::FromFlatSpanOfIntervals(v139[9], *(v139 + 16), &v198, v109);
      v142 = operations_research::sat::ActivityBoundHelper::RemoveEnforcementThatMakesConstraintTrivial(a4, v141, (v140 - v141) >> 4, &v200, &v198, v101);
      if (v198)
      {
        operator delete(v199.n128_u64[0]);
      }

      if (v142 >= 1)
      {
        v143 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v198, "linear + amo: removed enforcement literal");
        operations_research::sat::PresolveContext::UpdateRuleStats(v143, &v198, v142, v144, v145);
        if (v199.n128_i8[15] < 0)
        {
          operator delete(v198);
        }

        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      }

      if (v200)
      {
        operator delete(__p[0]);
      }

      goto LABEL_63;
    }

    v133 = 0;
    while (1)
    {
      v134 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v191 + 15) == 12)
      {
        v134 = *(v191 + 6);
      }

      v135 = v134[3];
      v136 = *(v135 + v133);
      if ((v136 & 0x80000000) != 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v198, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 3599);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v198);
      }

      v137 = v134[6][v133];
      if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), *(v135 + v133)))
      {
        LODWORD(v198) = v136;
        v199.n128_u64[0] = v137;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v190, &v198);
        goto LABEL_217;
      }

      operations_research::sat::PresolveContext::DomainOf(*(this + 1), v136, &v192);
      operations_research::Domain::ContinuousMultiplicationBy(&v192, v137, &v194);
      operations_research::Domain::AdditionWith(&v200, &v194, &v196, v138);
      operations_research::Domain::RelaxIfTooComplex(&v196, &v198);
      if (v200)
      {
        operator delete(__p[0]);
      }

      v200 = v198;
      v109 = v199;
      *__p = v199;
      v198 = 0;
      if (v196)
      {
        operator delete(v197);
        if ((v194 & 1) == 0)
        {
LABEL_226:
          if (v192)
          {
            goto LABEL_230;
          }

          goto LABEL_217;
        }
      }

      else if ((v194 & 1) == 0)
      {
        goto LABEL_226;
      }

      operator delete(v195);
      if (v192)
      {
LABEL_230:
        operator delete(v193);
      }

LABEL_217:
      if (v132 == ++v133)
      {
        v101 = v191;
        v110 = *(v191 + 15);
        goto LABEL_232;
      }
    }
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 1;
  do
  {
    v57 = 16 * v53;
    v58 = *(v52 + 16 * v53);
    operations_research::Domain::Domain(&v200, *(*(this + 7) + 16 * v53), *(*(this + 10) + 16 * v53));
    operations_research::Domain::AdditionWith(&v200, &v206, &v198, v59);
    operations_research::Domain::IntersectionWith(&v198, &v204, &v196);
    v60 = operations_research::Domain::IsEmpty(&v196);
    if (v196)
    {
      operator delete(v197);
    }

    if (v60)
    {
      v61 = v55;
      v62 = v55 >> 2;
      if (((v55 >> 2) + 1) >> 62)
      {
        goto LABEL_300;
      }

      if (v55 >> 2 != -1)
      {
        if (!(((v55 >> 2) + 1) >> 62))
        {
          operator new();
        }

LABEL_302:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v62) = v58;
      v55 = 4 * v62 + 4;
      memcpy(0, 0, v61);
    }

    else if (operations_research::Domain::IsIncludedIn(&v198, &v204))
    {
      v63 = v54;
      v64 = v54 >> 2;
      if ((v64 + 1) >> 62)
      {
LABEL_300:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v64 != -1)
      {
        if (!((v64 + 1) >> 62))
        {
          operator new();
        }

        goto LABEL_302;
      }

      MEMORY[0xFFFFFFFFFFFFFFFC] = v58;
      v54 = 0;
      memcpy(0, 0, v63);
    }

    operations_research::Domain::Domain(&v196, *(*(this + 7) + v57 + 8), *(*(this + 10) + v57 + 8));
    operations_research::Domain::AdditionWith(&v196, &v206, &v194, v65);
    operations_research::Domain::IntersectionWith(&v194, &v204, &v192);
    v66 = operations_research::Domain::IsEmpty(&v192);
    if (v192)
    {
      operator delete(v193);
    }

    if (v66)
    {
      v67 = ~v58;
      v69 = v55;
      v70 = v55 >> 2;
      if (((v55 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v55 >> 2 != -1)
      {
        if (!(((v55 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v70) = v67;
      v55 = 4 * v70 + 4;
      memcpy(0, 0, v69);
LABEL_126:
      if (v194)
      {
        goto LABEL_111;
      }

      goto LABEL_127;
    }

    if (!operations_research::Domain::IsIncludedIn(&v194, &v204))
    {
      goto LABEL_126;
    }

    v68 = ~v58;
    v71 = v54;
    v72 = v54 >> 2;
    if (((v54 >> 2) + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v54 >> 2 != -1)
    {
      if (!(((v54 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v72) = v68;
    v54 = 4 * v72 + 4;
    memcpy(0, 0, v71);
    if (v194)
    {
LABEL_111:
      operator delete(v195);
      if (v196)
      {
        goto LABEL_112;
      }

      goto LABEL_128;
    }

LABEL_127:
    if (v196)
    {
LABEL_112:
      operator delete(v197);
      if ((v198 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_113;
    }

LABEL_128:
    if ((v198 & 1) == 0)
    {
LABEL_129:
      if ((v200 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_130;
    }

LABEL_113:
    operator delete(v199.n128_u64[0]);
    if ((v200 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_130:
    operator delete(__p[0]);
LABEL_91:
    v53 = v56;
    v52 = *(this + 4);
    ++v56;
  }

  while (v53 < (*(this + 5) - v52) >> 4);
  LODWORD(v73) = *v186;
  v74 = v55 == 0;
  if (*v186 || !v55)
  {
    if (v54)
    {
      v83 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: extracted enforcement literal");
      operations_research::sat::PresolveContext::UpdateRuleStats(v83, &v200, v54 >> 2, v84, v85);
      if (SHIBYTE(__p[1]) < 0)
      {
        operator delete(v200);
      }

      v73 = *(v191 + 4);
      v86 = *(v191 + 5);
      for (j = 0; j != v54; ++j)
      {
        v88 = *j;
        if (v73 == v86)
        {
          google::protobuf::RepeatedField<int>::Grow(v186, v73, (v73 + 1));
          LODWORD(v73) = *(v191 + 4);
          v86 = *(v191 + 5);
        }

        v89 = v73;
        v90 = *(v191 + 3);
        v73 = (v73 + 1);
        *(v191 + 4) = v73;
        *(v90 + 4 * v89) = v88;
      }
    }

    v13 = a4;
    goto LABEL_152;
  }

  v75 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v200, "linear + amo: fixed literal");
  operations_research::sat::PresolveContext::UpdateRuleStats(v75, &v200, v55 >> 2, v76, v77);
  if (SHIBYTE(__p[1]) < 0)
  {
    operator delete(v200);
  }

  v78 = 0;
  while ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), *v78) & 1) != 0)
  {
    if (++v78 == v55)
    {
      operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v191, v79, v80, v81);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
      break;
    }
  }

LABEL_63:
  if (v202)
  {
    operator delete(*(&v202 + 1));
  }

LABEL_65:
  if (v204)
  {
    operator delete(v205.n128_u64[0]);
  }

LABEL_67:
  if (v206)
  {
    operator delete(v207.n128_u64[0]);
  }
}

void sub_23CA89314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, void *a27, void *a28, int a29, __int16 a30, char a31, char a32, void *a33, void *a34, int a35, __int16 a36, char a37, char a38)
{
  if (v38)
  {
    operator delete(v38);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (*(v39 - 160))
  {
    operator delete(*(v39 - 152));
  }

  if (*(v39 - 136))
  {
    operator delete(*(v39 - 128));
  }

  if (*(v39 - 112))
  {
    operator delete(*(v39 - 104));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PresolveTimer::AddCounter(void *a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[10];
    v5 = a1[11];
    if (v4 >= v5)
    {
      v8 = a1[9];
      v9 = (v4 - v8) >> 5;
      v10 = v9 + 1;
      if ((v9 + 1) >> 59)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 4 > v10)
      {
        v10 = v11 >> 4;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v12 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 32 * v9;
      *v13 = *a2;
      v14 = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(v13 + 16) = v14;
      *(v13 + 24) = a3;
      v7 = 32 * v9 + 32;
      v15 = a1[9];
      v16 = a1[10] - v15;
      v17 = v13 - v16;
      memcpy((v13 - v16), v15, v16);
      a1[9] = v17;
      a1[10] = v7;
      a1[11] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v6 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v6;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(v4 + 24) = a3;
      v7 = v4 + 32;
    }

    a1[10] = v7;
  }
}

uint64_t operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v223 = *MEMORY[0x277D85DE8];
  if (*(a3 + 15) == 12)
  {
    v4 = *(this + 1);
    if ((*(v4 + 416) & 1) == 0)
    {
      v9 = *(a3 + 6);
      v10 = *(v9 + 16);
      v11 = v10;
      v193 = v10;
      v191 = v10;
      if (v10 > 9)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        do
        {
          while (1)
          {
            v21 = *(*(v9 + 24) + 4 * v16);
            v22 = *(*(v9 + 48) + 8 * v16);
            if (v22 >= 1)
            {
              break;
            }

            v19 = operations_research::sat::PresolveContext::MaxOf(v4, v21);
            v17 += operations_research::sat::PresolveContext::MinOf(v4, v21) * v22;
            v18 += v19 * v22;
            if (v193 == ++v16)
            {
              goto LABEL_12;
            }
          }

          v23 = operations_research::sat::PresolveContext::MinOf(v4, v21);
          v17 += operations_research::sat::PresolveContext::MaxOf(v4, v21) * v22;
          v18 += v23 * v22;
          ++v16;
        }

        while (v193 != v16);
LABEL_12:
        if (v193 > 9)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v12 = v10 + 1;
        v14 = *(v4 + 56);
        v13 = *(v4 + 64);
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
        if (v11 + 1 <= v15)
        {
          if (v11 + 1 < v15)
          {
            v24 = v14 + 24 * v12;
            if (v13 != v24)
            {
              v25 = *(v4 + 64);
              do
              {
                v26 = *(v25 - 24);
                v25 -= 24;
                if (v26)
                {
                  operator delete(*(v13 - 16));
                }

                v13 = v25;
              }

              while (v25 != v24);
            }

            *(v4 + 64) = v24;
          }
        }

        else
        {
          std::vector<operations_research::Domain>::__append((v4 + 56), v11 + 1 - v15);
        }

        v28 = *(v4 + 80);
        v27 = *(v4 + 88);
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 3);
        if (v12 <= v29)
        {
          if (v12 < v29)
          {
            v30 = v28 + 24 * v12;
            if (v27 != v30)
            {
              v31 = *(v4 + 88);
              do
              {
                v32 = *(v31 - 24);
                v31 -= 24;
                if (v32)
                {
                  operator delete(*(v27 - 16));
                }

                v27 = v31;
              }

              while (v31 != v30);
            }

            *(v4 + 88) = v30;
          }
        }

        else
        {
          std::vector<operations_research::Domain>::__append((v4 + 80), v12 - v29);
        }

        operations_research::Domain::Domain(__p, 0);
        v33 = *(v4 + 80);
        if (v33 == __p)
        {
          operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(__p);
        }

        else
        {
          if (*v33)
          {
            operator delete(v33[1]);
          }

          *v33 = __p[0];
          *(v33 + 1) = *&__p[1];
        }

        operations_research::Domain::Domain(__p, 0);
        v34 = (*(v4 + 56) + 24 * v11);
        if (v34 == __p)
        {
          operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(__p);
        }

        else
        {
          if (*v34)
          {
            operator delete(v34[1]);
          }

          *v34 = __p[0];
          v20 = *&__p[1];
          *(v34 + 1) = *&__p[1];
        }

        if (v193 <= 0)
        {
          v17 = 0;
          v18 = 0;
LABEL_62:
          v44 = *(v4 + 80) + 24 * v11;
          v216 = 0;
          if (*v44 >= 2uLL)
          {
            if (*v44)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v216, v44);
            }

            else
            {
              v216 = *v44;
              v20 = *(v44 + 8);
              v217 = v20;
            }
          }

LABEL_66:
          if (*(a3 + 15) == 12)
          {
            v45 = *(a3 + 6);
          }

          else
          {
            v45 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          operations_research::Domain::FromFlatSpanOfIntervals(v45[9], *(v45 + 16), &v214, v20);
          if (operations_research::Domain::IsIncludedIn(&v216, &v214))
          {
            if (a2 != -1)
            {
              v48 = *(this + 1);
              HIBYTE(__p[2]) = 19;
              strcpy(__p, "linear: always true");
              operations_research::sat::PresolveContext::UpdateRuleStats(v48, __p, 1, v46, v47);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            operations_research::sat::ConstraintProto::Clear(a3);
            v5 = 1;
            goto LABEL_299;
          }

          operations_research::Domain::SimplifyUsingImpliedDomain(&v214, &v216, &v212);
          if (operations_research::Domain::IsEmpty(&v212))
          {
            v51 = *(this + 1);
            HIBYTE(__p[2]) = 18;
            strcpy(__p, "linear: infeasible");
            operations_research::sat::PresolveContext::UpdateRuleStats(v51, __p, 1, v49, v50);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            v5 = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a3, v52, v53, v54);
            if ((v212 & 1) == 0)
            {
LABEL_299:
              if (v214)
              {
                operator delete(v215);
                if ((v216 & 1) == 0)
                {
                  goto LABEL_4;
                }
              }

              else if ((v216 & 1) == 0)
              {
                goto LABEL_4;
              }

              operator delete(v217.n128_u64[0]);
              goto LABEL_4;
            }

LABEL_298:
            operator delete(v213);
            goto LABEL_299;
          }

          v55 = v213;
          if ((v212 & 1) == 0)
          {
            v55 = &v213;
          }

          v56 = &v215;
          if (v214)
          {
            v56 = v215;
          }

          if ((((v214 >> 1) ^ (v212 >> 1)) & 0xFFFFFFFFFFFFFFFLL) == 0)
          {
            v58 = &v55[2 * (v212 >> 1)];
            v59 = &v56[2 * (v214 >> 1)];
            if ((v212 & 0x1FFFFFFFFFFFFFFELL) == 0 || (v214 & 0x1FFFFFFFFFFFFFFELL) == 0)
            {
LABEL_95:
              v57 = v56 != v59 || v55 != v58;
              if (a2 == -1)
              {
                goto LABEL_105;
              }

              goto LABEL_102;
            }

            while (*v55 == *v56 && v55[1] == v56[1])
            {
              v55 += 2;
              v56 += 2;
              if (v55 == v58 || v56 == v59)
              {
                goto LABEL_95;
              }
            }
          }

          v57 = 1;
          if (a2 == -1)
          {
LABEL_105:
            if (*(a3 + 15) == 12)
            {
              v63 = *(a3 + 6);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(a3);
              *(a3 + 15) = 12;
              v64 = *(a3 + 1);
              if (v64)
              {
                v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
              }

              v63 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v64);
              *(a3 + 6) = v63;
            }

            operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v212, v63);
            if (*(a3 + 4) > 1)
            {
              v5 = 0;
              if ((v212 & 1) == 0)
              {
                goto LABEL_299;
              }

              goto LABEL_298;
            }

            v211 = 0;
            operations_research::Domain::Negation(&v212, &v209);
            operations_research::Domain::Domain(&v207, 0);
            v205 = 0;
            *&v203[1] = 0;
            v190 = 0;
            v69 = v193;
LABEL_114:
            while (2)
            {
              while (2)
              {
                while (2)
                {
                  while (2)
                  {
                    v70 = v69;
LABEL_115:
                    v69 = v70 - 1;
                    if (v70 - 1 < 0)
                    {
LABEL_283:
                      if (a2 == -1)
                      {
                        if (v211)
                        {
                          v184 = *(this + 1);
                          std::string::basic_string[abi:ne200100]<0>(__p, "linear: reduced variable domains in derived constraint");
                          operations_research::sat::PresolveContext::UpdateRuleStats(v184, __p, 1, v185, v186);
                          if (SHIBYTE(__p[2]) < 0)
                          {
                            operator delete(__p[0]);
                          }
                        }
                      }

                      else
                      {
                        if (v211)
                        {
                          v181 = *(this + 1);
                          std::string::basic_string[abi:ne200100]<0>(__p, "linear: reduced variable domains");
                          operations_research::sat::PresolveContext::UpdateRuleStats(v181, __p, 1, v182, v183);
                          if (SHIBYTE(__p[2]) < 0)
                          {
                            operator delete(__p[0]);
                          }
                        }

                        if (v190)
                        {
                          v188 = operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, a3, v65, v66, v67);
                          goto LABEL_293;
                        }
                      }

                      v188 = 0;
LABEL_293:
                      if (v203[1])
                      {
                        operator delete(v204);
                        if ((v205 & 1) == 0)
                        {
LABEL_295:
                          if ((v207 & 1) == 0)
                          {
                            goto LABEL_296;
                          }

                          goto LABEL_306;
                        }
                      }

                      else if ((v205 & 1) == 0)
                      {
                        goto LABEL_295;
                      }

                      operator delete(v206);
                      if ((v207 & 1) == 0)
                      {
LABEL_296:
                        v5 = v188;
                        if ((v209 & 1) == 0)
                        {
                          goto LABEL_297;
                        }

                        goto LABEL_307;
                      }

LABEL_306:
                      operator delete(v208);
                      v5 = v188;
                      if ((v209 & 1) == 0)
                      {
LABEL_297:
                        if ((v212 & 1) == 0)
                        {
                          goto LABEL_299;
                        }

                        goto LABEL_298;
                      }

LABEL_307:
                      operator delete(v210);
                      if ((v212 & 1) == 0)
                      {
                        goto LABEL_299;
                      }

                      goto LABEL_298;
                    }

                    while (1)
                    {
                      v71 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                      if (*(a3 + 15) == 12)
                      {
                        v71 = *(a3 + 6);
                      }

                      v72 = *(v71[3] + v69);
                      v203[0] = v72;
                      v73 = v71[6][v69];
                      if (v193 > 9)
                      {
                        v75 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v72);
                        v76 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v203[0]);
                        v77 = v75 * v73;
                        if (v73 >= 0)
                        {
                          v78 = v76 * v73;
                        }

                        else
                        {
                          v78 = v75 * v73;
                        }

                        if (v73 < 0)
                        {
                          v77 = v76 * v73;
                        }

                        operations_research::Domain::Domain(__p, v18 - v77, v17 - v78);
                      }

                      else
                      {
                        operations_research::Domain::AdditionWith(&v207, (*(v4 + 56) + 24 * v70), &v221, v68);
                        operations_research::Domain::RelaxIfTooComplex(&v221, __p);
                        if (v207)
                        {
                          operator delete(v208);
                        }

                        v207 = __p[0];
                        v74 = *&__p[1];
                        v208 = *&__p[1];
                        __p[0] = 0;
                        if (v221)
                        {
                          operator delete(v222.n128_u64[0]);
                        }

                        operations_research::Domain::AdditionWith((*(v4 + 80) + 24 * v69), &v207, __p, v74);
                      }

                      if (v203[1])
                      {
                        operator delete(v204);
                      }

                      *&v203[1] = __p[0];
                      v204 = *&__p[1];
                      operations_research::Domain::AdditionWith(&v203[1], &v209, &v221, *&__p[1]);
                      operations_research::Domain::InverseMultiplicationBy(&v221, -v73, __p);
                      if (v205)
                      {
                        operator delete(v206);
                      }

                      v205 = __p[0];
                      v206 = *&__p[1];
                      __p[0] = 0;
                      if (v221)
                      {
                        operator delete(v222.n128_u64[0]);
                      }

                      v79 = *(a3 + 4);
                      if (v79 == 1)
                      {
                        if ((v203[0] & 0x80000000) != 0)
                        {
                          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 3708);
                          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
                        }

                        if ((operations_research::Domain::IsIncludedIn((*(*(this + 1) + 424) + 24 * v203[0]), &v205) & 1) == 0)
                        {
                          v80 = *(this + 1);
                          v81 = **(a3 + 3);
                          v82 = v203[0];
                          v201 = 0;
                          if (v205 >= 2)
                          {
                            if (v205)
                            {
                              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v201, &v205);
                            }

                            else
                            {
                              v201 = v205;
                              v202 = v206;
                            }
                          }

                          operations_research::sat::DomainDeductions::AddDeduction(v80 + 248, v81, v82, &v201);
                          if (v201)
                          {
                            operator delete(v202);
                          }
                        }
                      }

                      else if (!v79 && (operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v203[0], &v205, &v211) & 1) == 0)
                      {
                        v188 = 1;
                        goto LABEL_293;
                      }

                      IsFixed = operations_research::sat::PresolveContext::IsFixed(*(this + 1), v203[0]);
                      v84 = a2 == -1 || IsFixed;
                      if (v84)
                      {
                        v190 |= IsFixed;
                        goto LABEL_114;
                      }

                      if (*(a3 + 4))
                      {
                        goto LABEL_114;
                      }

                      v85 = operations_research::Domain::Min(&v212);
                      if (v85 == operations_research::Domain::Max(&v212) || !operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), v203[0]))
                      {
                        break;
                      }

                      if (v73 > 0 == *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((*(this + 1) + 512), v203) < 1)
                      {
                        operations_research::sat::PresolveContext::DomainOf(*(this + 1), v203[0], __p);
                        if (__p[0])
                        {
                          operator delete(__p[1]);
                        }

                        if (!CanBeFixedToMax)
                        {
                          break;
                        }

                        v91 = operations_research::Domain::Max(&v212);
                        operations_research::Domain::Domain(__p, v91);
                      }

                      else
                      {
                        operations_research::sat::PresolveContext::DomainOf(*(this + 1), v203[0], __p);
                        if (__p[0])
                        {
                          operator delete(__p[1]);
                        }

                        if (!CanBeFixedToMin)
                        {
                          break;
                        }

                        v88 = operations_research::Domain::Min(&v212);
                        operations_research::Domain::Domain(__p, v88);
                      }

                      if (v212)
                      {
                        operator delete(v213);
                      }

                      v212 = __p[0];
                      v213 = *&__p[1];
                      v92 = *(this + 1);
                      std::string::basic_string[abi:ne200100]<0>(__p, "linear: tightened into equality");
                      operations_research::sat::PresolveContext::UpdateRuleStats(v92, __p, 1, v93, v94);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v95 = operations_research::sat::ConstraintProto::mutable_linear(a3);
                      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v212, v95);
                      operations_research::Domain::Negation(&v212, __p);
                      if (v209)
                      {
                        operator delete(v210);
                      }

                      v209 = __p[0];
                      v210 = *&__p[1];
                      operations_research::Domain::Domain(__p, 0);
                      if (v207)
                      {
                        operator delete(v208);
                      }

                      v207 = __p[0];
                      v68 = *&__p[1];
                      v208 = *&__p[1];
                      v69 = v193 - 1;
                      v70 = v193;
                      if (v193 - 1 < 0)
                      {
                        goto LABEL_283;
                      }
                    }

                    v96 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                    if (*(a3 + 15) == 12)
                    {
                      v96 = *(a3 + 6);
                    }

                    if (*(v96 + 4) < 3)
                    {
                      continue;
                    }

                    break;
                  }

                  v97 = operations_research::Domain::Min(&v212);
                  if (v97 != operations_research::Domain::Max(&v212))
                  {
                    continue;
                  }

                  break;
                }

                v98 = *(this + 1);
                v99 = v73 >= 0 ? v73 : -v73;
                if ((*(v98 + 16) & 1) != 0 || v99 != 1 || *(*(v98 + 392) + 680) < 1)
                {
                  continue;
                }

                break;
              }

              v100 = (*(v98 + 672) + 32 * v203[0]);
              LODWORD(__p[0]) = -1;
              v101 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::contains<int>(v100, __p);
              v102 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (*(a3 + 15) == 12)
              {
                v102 = *(a3 + 6);
              }

              v103 = (*(*(this + 1) + 672) + 32 * v203[0]);
              v104 = (v103[1] >> 1) - v101 - 1;
              if ((*(v102 + 4) - 1) * v104 > v104 + *(v102 + 4))
              {
                continue;
              }

              break;
            }

            v189 = v101;
            v198 = 0;
            v199 = 0;
            v200 = 0;
            v106 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin(v103);
            if (v106)
            {
              v107 = v105;
              do
              {
                v108 = *v107;
                LODWORD(__p[0]) = v108;
                if (v108 != -1)
                {
                  if (v108 == -2)
                  {
                    goto LABEL_261;
                  }

                  if (v108 != a2)
                  {
                    v109 = **(this + 1);
                    v111 = *(v109 + 48);
                    v110 = (v109 + 48);
                    v112 = (v111 + 8 * v108 + 7);
                    if ((v111 & 1) == 0)
                    {
                      v112 = v110;
                    }

                    v113 = *v112;
                    if (*(v113 + 60) != 12)
                    {
                      goto LABEL_261;
                    }

                    v114 = *(v113 + 16);
                    if (v114)
                    {
                      v115 = *(v113 + 24);
                      v116 = 4 * v114;
                      do
                      {
                        v117 = *v115;
                        if (~*v115 > *v115)
                        {
                          v117 = ~v117;
                        }

                        if (v117 == v203[0])
                        {
                          goto LABEL_261;
                        }

                        ++v115;
                        v116 -= 4;
                      }

                      while (v116);
                    }

                    std::vector<int>::push_back[abi:ne200100](&v198, __p);
                  }
                }

                v119 = *(v106 + 1);
                v106 = (v106 + 1);
                LOBYTE(v118) = v119;
                ++v107;
                if (v119 <= -2)
                {
                  do
                  {
                    v120 = __clz(__rbit64((*v106 | ~(*v106 >> 7)) & 0x101010101010101)) >> 3;
                    v106 = (v106 + v120);
                    v107 += v120;
                    v118 = *v106;
                  }

                  while (v118 < -1);
                }
              }

              while (v118 != 255);
            }

            operations_research::sat::PresolveContext::DomainOf(*(this + 1), v203[0], __p);
            v121 = operations_research::Domain::operator!=(__p, &v205);
            if (__p[0])
            {
              operator delete(__p[1]);
            }

            if (!v121)
            {
              goto LABEL_242;
            }

            v122 = v198;
            if (v199 - v198 != 4)
            {
              v134 = 1;
              goto LABEL_270;
            }

            v123 = **(this + 1);
            v125 = *(v123 + 48);
            v124 = (v123 + 48);
            v126 = v125 + 8 * *v198 + 7;
            if (v125)
            {
              v124 = v126;
            }

            v127 = *v124;
            if (*(v127 + 16))
            {
              goto LABEL_261;
            }

            v128 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(v127 + 60) == 12)
            {
              v128 = *(v127 + 48);
            }

            if (*(v128 + 4) > 100)
            {
              goto LABEL_261;
            }

            operations_research::Domain::FromFlatSpanOfIntervals(v128[9], *(v128 + 16), __p, v68);
            v129 = *(v128 + 4);
            if (v129 < 1)
            {
              goto LABEL_239;
            }

            v130 = 0;
            v187 = 0;
            while (1)
            {
              while (1)
              {
                v131 = *(v128[3] + v130);
                v132 = v128[6][v130];
                if (v131 != v203[0])
                {
                  break;
                }

                v187 += v132;
                if (++v130 >= v129)
                {
                  goto LABEL_231;
                }
              }

              operations_research::sat::PresolveContext::DomainOf(*(this + 1), v131, v195);
              operations_research::Domain::MultiplicationBy(v195, 0, -v132, &v197);
              operations_research::Domain::AdditionWith(__p, &v197, &v218, v133);
              operations_research::Domain::RelaxIfTooComplex(&v218, &v221);
              if (__p[0])
              {
                operator delete(__p[1]);
              }

              __p[0] = v221;
              v68 = v222;
              *&__p[1] = v222;
              v221 = 0;
              if (v218)
              {
                operator delete(v219);
                if (v197.__r_.__value_.__s.__data_[0])
                {
LABEL_228:
                  operator delete(v197.__r_.__value_.__l.__size_);
                  if ((v195[0] & 1) == 0)
                  {
                    goto LABEL_225;
                  }

LABEL_224:
                  operator delete(v196);
                  goto LABEL_225;
                }
              }

              else if (v197.__r_.__value_.__s.__data_[0])
              {
                goto LABEL_228;
              }

              if (v195[0])
              {
                goto LABEL_224;
              }

LABEL_225:
              v129 = *(v128 + 4);
              if (++v130 >= v129)
              {
LABEL_231:
                if (!v187)
                {
                  goto LABEL_239;
                }

                operations_research::Domain::InverseMultiplicationBy(__p, v187, &v221);
                if (__p[0])
                {
                  operator delete(__p[1]);
                }

                __p[0] = v221;
                *&__p[1] = v222;
                if (operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v203[0], __p, 0))
                {
                  if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v203[0]))
                  {
                    goto LABEL_239;
                  }

                  operations_research::Domain::IntersectionWith(&v205, __p, &v221);
                  operations_research::sat::PresolveContext::DomainOf(*(this + 1), v203[0], &v218);
                  v135 = operations_research::Domain::operator!=(&v221, &v218);
                  if (v218)
                  {
                    operator delete(v219);
                    if (v221)
                    {
                      goto LABEL_277;
                    }

LABEL_238:
                    if (v135)
                    {
                      goto LABEL_239;
                    }

LABEL_278:
                    v178 = *(this + 1);
                    std::string::basic_string[abi:ne200100]<0>(&v221, "linear: doubleton free");
                    operations_research::sat::PresolveContext::UpdateRuleStats(v178, &v221, 1, v179, v180);
                    if (v222.n128_i8[15] < 0)
                    {
                      operator delete(v221);
                    }

                    v137 = 0;
                    v136 = 1;
                    if (__p[0])
                    {
LABEL_240:
                      operator delete(__p[1]);
                    }
                  }

                  else
                  {
                    if ((v221 & 1) == 0)
                    {
                      goto LABEL_238;
                    }

LABEL_277:
                    operator delete(v222.n128_u64[0]);
                    if (!v135)
                    {
                      goto LABEL_278;
                    }

LABEL_239:
                    v136 = 0;
                    v137 = 7;
                    if (__p[0])
                    {
                      goto LABEL_240;
                    }
                  }
                }

                else
                {
                  v136 = 0;
                  v188 = 0;
                  v137 = 1;
                  if (__p[0])
                  {
                    goto LABEL_240;
                  }
                }

                if (v136)
                {
LABEL_242:
                  if (!v189 || (operations_research::sat::PresolveContext::SubstituteVariableInObjective(*(this + 1), v203[0], v73, a3) & 1) != 0)
                  {
                    operations_research::sat::ConstraintProto::ConstraintProto(__p, 0);
                    std::__sort<std::__less<int,int> &,int *>();
                    v140 = v198;
                    v139 = v199;
                    v141 = v198;
                    if (v198 == v199)
                    {
LABEL_257:
                      v164 = *(this + 1);
                      v221 = "linear: variable substitution ";
                      v222.n128_u64[0] = 30;
                      v165 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v141 - v140) >> 2, v220, v138);
                      v218 = v220;
                      v219 = (v165 - v220);
                      absl::lts_20240722::StrCat(&v221, &v218, &v197);
                      operations_research::sat::PresolveContext::UpdateRuleStats(v164, &v197, 1, v166, v167);
                      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v197.__r_.__value_.__l.__data_);
                      }

                      v168 = *(this + 1);
                      if (*(*(v168 + 84) + 32 * v203[0] + 8) >> 1 != 1)
                      {
                        absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(*(*(v168 + 84) + 32 * v203[0] + 8) >> 1, 1, "context_->VarToConstraints(var).size() == 1");
                      }

                      operations_research::sat::PresolveContext::MarkVariableAsRemoved(v168, v203[0]);
                      v169 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0xF6C);
                      operations_research::sat::ConstraintProto::CopyFrom(v169, a3);
                      v170 = operations_research::sat::ConstraintProto::mutable_linear(v169);
                      v171 = google::protobuf::RepeatedField<int>::at(v170 + 16, 0);
                      v172 = google::protobuf::RepeatedField<int>::at(v170 + 16, v69);
                      v173 = *v171;
                      *v171 = *v172;
                      *v172 = v173;
                      v174 = google::protobuf::RepeatedField<long long>::at(v170 + 40, 0);
                      v175 = google::protobuf::RepeatedField<long long>::at(v170 + 40, v69);
                      v176 = *v174;
                      *v174 = *v175;
                      *v175 = v176;
                      operations_research::sat::ConstraintProto::Clear(a3);
                      v137 = 1;
                      v188 = 1;
                    }

                    else
                    {
                      while (1)
                      {
                        v142 = **(this + 1);
                        v144 = *(v142 + 48);
                        v143 = (v142 + 48);
                        v145 = *v140;
                        v146 = v144 + 8 * v145 + 7;
                        if (v144)
                        {
                          v143 = v146;
                        }

                        operations_research::sat::ConstraintProto::CopyFrom(__p, *v143);
                        v148 = **(this + 1);
                        v150 = *(v148 + 48);
                        v149 = (v148 + 48);
                        v151 = v150 + 8 * v145 + 7;
                        if (v150)
                        {
                          v149 = v151;
                        }

                        v155 = operations_research::sat::SubstituteVariable(v203[0], v73, a3, *v149, v147);
                        v156 = **(this + 1);
                        v158 = *(v156 + 48);
                        v157 = (v156 + 48);
                        v159 = v158 + 8 * v145 + 7;
                        if (v158)
                        {
                          v157 = v159;
                        }

                        v160 = *v157;
                        if ((v155 & 1) == 0)
                        {
                          break;
                        }

                        v161 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                        if (*(v160 + 60) == 12)
                        {
                          v161 = *(v160 + 48);
                        }

                        v162 = operations_research::sat::PossibleIntegerOverflow(**(this + 1), v161[3], *(v161 + 4), v161[6], *(v161 + 10), 0);
                        v163 = *(this + 1);
                        if (v162)
                        {
                          v177 = (v163->__begin_ + 12);
                          if (*v177)
                          {
                            v177 = (*v177 + 8 * v145 + 7);
                          }

                          operations_research::sat::ConstraintProto::CopyFrom(*v177, __p);
                          goto LABEL_267;
                        }

                        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v163, v145);
                        if (++v140 == v139)
                        {
                          v140 = v198;
                          v141 = v199;
                          goto LABEL_257;
                        }
                      }

                      if (operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v160, v152, v153, v154))
                      {
                        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v145);
                      }

LABEL_267:
                      v137 = 7;
                    }

                    operations_research::sat::ConstraintProto::~ConstraintProto(__p);
                    goto LABEL_269;
                  }

LABEL_261:
                  v137 = 7;
                }

LABEL_269:
                v122 = v198;
                v134 = v137 == 7;
LABEL_270:
                if (v122)
                {
                  v199 = v122;
                  operator delete(v122);
                }

                v70 = v69;
                if (!v134)
                {
                  goto LABEL_293;
                }

                goto LABEL_115;
              }
            }
          }

LABEL_102:
          if (v57)
          {
            v62 = *(this + 1);
            strcpy(__p, "linear: simplified rhs");
            HIBYTE(__p[2]) = 22;
            operations_research::sat::PresolveContext::UpdateRuleStats(v62, __p, 1, v49, v50);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_105;
        }

        v35 = 0;
        v36 = 0;
        do
        {
          v37 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a3 + 15) == 12)
          {
            v37 = *(a3 + 6);
          }

          v38 = v37[6][v36];
          operations_research::sat::PresolveContext::DomainOf(*(this + 1), *(v37[3] + v36), &v221);
          operations_research::Domain::MultiplicationBy(&v221, 0, v38, __p);
          v40 = *(v4 + 56);
          if ((v40 + v35) == __p)
          {
            if (__p[0])
            {
              operator delete(__p[1]);
            }
          }

          else
          {
            if (*(v40 + v35))
            {
              operator delete(*(v40 + v35 + 8));
            }

            v41 = v40 + v35;
            *v41 = __p[0];
            v39 = *&__p[1];
            *(v41 + 8) = *&__p[1];
            __p[0] = 0;
          }

          if (v221)
          {
            operator delete(v222.n128_u64[0]);
          }

          operations_research::Domain::AdditionWith((*(v4 + 80) + v35), (*(v4 + 56) + v35), &v221, v39);
          v20 = operations_research::Domain::RelaxIfTooComplex(&v221, __p);
          v42 = *(v4 + 80);
          v43 = (v42 + v35 + 24);
          if (v43 == __p)
          {
            if (__p[0])
            {
              operator delete(__p[1]);
            }
          }

          else
          {
            if (*v43)
            {
              operator delete(*(v42 + v35 + 32));
            }

            *v43 = __p[0];
            v20 = *&__p[1];
            *(v42 + v35 + 32) = *&__p[1];
            __p[0] = 0;
          }

          if (v221)
          {
            operator delete(v222.n128_u64[0]);
          }

          v35 += 24;
          ++v36;
        }

        while (24 * v193 != v35);
        v18 = 0;
        v17 = 0;
        if (v193 > 9)
        {
LABEL_60:
          operations_research::Domain::Domain(&v216, v18, v17);
          goto LABEL_66;
        }
      }

      LODWORD(v11) = v191;
      goto LABEL_62;
    }
  }

  v5 = 0;
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void sub_23CA8ADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, void *a32, void *a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, char a41, void *a42, uint64_t a43, uint64_t a44, char a45, void *a46, uint64_t a47, char a48, void *a49, uint64_t a50, char a51, void *a52, uint64_t a53, char a54, void *a55, uint64_t a56, uint64_t a57, char a58, void *a59)
{
  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  if (a17)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a45)
  {
    operator delete(a46);
    if ((a48 & 1) == 0)
    {
LABEL_9:
      if ((a51 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if ((a48 & 1) == 0)
  {
    goto LABEL_9;
  }

  operator delete(a49);
  if ((a51 & 1) == 0)
  {
LABEL_10:
    if ((a54 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    operator delete(a55);
LABEL_16:
    if (a58)
    {
      operator delete(a59);
    }

    if (*(v59 - 240))
    {
      operator delete(*(v59 - 232));
    }

    if ((*(v59 - 216) & 1) == 0)
    {
      _Unwind_Resume(exception_object);
    }

    operator delete(*(v59 - 208));
    _Unwind_Resume(exception_object);
  }

LABEL_14:
  operator delete(a52);
  if ((a54 & 1) == 0)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t operations_research::sat::anonymous namespace::FixLiteralFromSet(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = *(a2 + 16);
  if (v4 < 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v5 = *(a2 + 24);
    v6 = *(a2 + 48);
    v7 = *a1;
    if (*a1 < 2)
    {
      if (a1[1] < 2)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(a2 + 16);
        goto LABEL_29;
      }

      v10 = 0;
      v9 = 0;
      v8 = 0;
      v36 = *(a2 + 48);
      v37 = *(a2 + 24);
      while (1)
      {
        v39 = *v37++;
        v38 = v39;
        v41 = *v36++;
        v40 = v41;
        v42 = *(a1 + 4);
        if (v42 == v38)
        {
          break;
        }

        if ((v38 ^ v42) == 0xFFFFFFFF)
        {
LABEL_28:
          v8 = (v8 + 1);
          if (!--v4)
          {
            goto LABEL_29;
          }
        }

        else
        {
          *(v5 + 4 * v10) = v38;
          *(v6 + 8 * v10++) = v40;
          if (!--v4)
          {
            goto LABEL_29;
          }
        }
      }

      v9 += v40;
      goto LABEL_28;
    }

    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    a3.n128_u16[0] = -32640;
    a3.n128_u8[2] = 0x80;
    a3.n128_u8[3] = 0x80;
    a3.n128_u8[4] = 0x80;
    a3.n128_u8[5] = 0x80;
    a3.n128_u8[6] = 0x80;
    a3.n128_u8[7] = 0x80;
    do
    {
LABEL_14:
      v15 = 0;
      v17 = *(v5 + 4 * v11);
      v18 = *(v6 + 8 * v11);
      _X1 = a1[2];
      __asm { PRFM            #4, [X1] }

      v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17));
      v16 = (_X1 >> 12) ^ (v25 >> 7);
      v26 = vdup_n_s8(v25 & 0x7F);
      v27 = a1[3];
      while (1)
      {
        v12 = v16 & v7;
        v13 = *(_X1 + v12);
        v14 = vceq_s8(v13, v26);
        if (v14)
        {
          break;
        }

LABEL_10:
        if (vceq_s8(v13, a3.n128_u64[0]))
        {
          v28 = 0;
          v29 = ~v17;
          __asm { PRFM            #4, [X1] }

          v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29));
          v32 = vdup_n_s8(v31 & 0x7F);
          v33 = ((_X1 >> 12) ^ (v31 >> 7)) & v7;
          v34 = *(_X1 + v33);
          v35 = vceq_s8(v34, v32);
          if (!v35)
          {
            goto LABEL_18;
          }

LABEL_16:
          while (*(v27 + 4 * ((v33 + (__clz(__rbit64(v35)) >> 3)) & v7)) != v29)
          {
            v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v35)
            {
LABEL_18:
              while (!*&vceq_s8(v34, a3.n128_u64[0]))
              {
                v28 += 8;
                v33 = (v28 + v33) & v7;
                v34 = *(_X1 + v33);
                v35 = vceq_s8(v34, v32);
                if (v35)
                {
                  goto LABEL_16;
                }
              }

              *(v5 + 4 * v10) = v17;
              *(v6 + 8 * v10++) = v18;
              if (++v11 != v4)
              {
                goto LABEL_14;
              }

              goto LABEL_29;
            }
          }

          goto LABEL_13;
        }

        v15 += 8;
        v16 = v15 + v12;
      }

      while (*(v27 + 4 * ((v12 + (__clz(__rbit64(v14)) >> 3)) & v7)) != v17)
      {
        v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      v9 += v18;
LABEL_13:
      v8 = (v8 + 1);
      ++v11;
    }

    while (v11 != v4);
  }

LABEL_29:
  if (*(a2 + 16) <= v10)
  {
    if (*(a2 + 40) <= v10)
    {
LABEL_31:
      if (!v9)
      {
        return v8;
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(a2 + 16) = v10;
    if (*(a2 + 40) <= v10)
    {
      goto LABEL_31;
    }
  }

  *(a2 + 40) = v10;
  if (!v9)
  {
    return v8;
  }

LABEL_35:
  operations_research::Domain::FromFlatSpanOfIntervals(*(a2 + 72), *(a2 + 64), v46, a3);
  operations_research::Domain::Domain(v45, -v9);
  operations_research::Domain::AdditionWith(v46, v45, v47, v43);
  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v47, a2);
  if ((v47[0] & 1) == 0)
  {
    if ((v45[0] & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    operator delete(v45[1]);
    if ((v46[0] & 1) == 0)
    {
      return v8;
    }

    goto LABEL_41;
  }

  operator delete(v47[1]);
  if (v45[0])
  {
    goto LABEL_40;
  }

LABEL_37:
  if ((v46[0] & 1) == 0)
  {
    return v8;
  }

LABEL_41:
  operator delete(v46[1]);
  return v8;
}

void sub_23CA8B42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *__p)
{
  if (a16)
  {
    operator delete(__p);
    if ((a10 & 1) == 0)
    {
LABEL_3:
      if ((a13 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a10 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((a13 & 1) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a14);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::Domain::operator!=(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = a1[1];
  v3 = a1 + 1;
  v4 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = v3;
  }

  v6 = *a2;
  v9 = a2[1];
  v7 = a2 + 1;
  v8 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = v7;
  }

  if ((((v6 >> 1) ^ (v2 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v11 = &v4[2 * (v2 >> 1)];
  v12 = &v8[2 * (v6 >> 1)];
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    while (*v4 == *v8 && v4[1] == v8[1])
    {
      v4 += 2;
      v8 += 2;
      if (v4 == v11 || v8 == v12)
      {
        return v8 != v12 || v4 != v11;
      }
    }

    return 1;
  }

  return v8 != v12 || v4 != v11;
}

uint64_t operations_research::sat::anonymous namespace::RhsCanBeFixedToMin(uint64_t this, operations_research::Domain *a2, const operations_research::Domain *a3, const operations_research::Domain *a4, const operations_research::Domain *a5)
{
  if (this >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = -this;
  }

  if (v5 != 1 || (*a2 & 0x1FFFFFFFELL) != 2)
  {
    return 0;
  }

  if (this == -1)
  {
    v14 = operations_research::Domain::Max(a3);
    v15 = v14 - operations_research::Domain::Max(a2);
    if (v15 > operations_research::Domain::Min(a4))
    {
      return 0;
    }
  }

  else
  {
    if (this != 1)
    {
      return 0;
    }

    v10 = operations_research::Domain::Max(a3);
    v11 = operations_research::Domain::Min(a2) + v10;
    if (v11 > operations_research::Domain::Min(a4))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t operations_research::sat::anonymous namespace::RhsCanBeFixedToMax(uint64_t this, operations_research::Domain *a2, const operations_research::Domain *a3, const operations_research::Domain *a4, const operations_research::Domain *a5)
{
  if (this >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = -this;
  }

  if (v5 != 1 || (*a2 & 0x1FFFFFFFELL) != 2)
  {
    return 0;
  }

  if (this == -1)
  {
    v14 = operations_research::Domain::Min(a3);
    v15 = v14 - operations_research::Domain::Min(a2);
    if (v15 < operations_research::Domain::Max(a4))
    {
      return 0;
    }
  }

  else
  {
    if (this != 1)
    {
      return 0;
    }

    v10 = operations_research::Domain::Min(a3);
    v11 = operations_research::Domain::Max(a2) + v10;
    if (v11 < operations_research::Domain::Max(a4))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t google::protobuf::RepeatedField<int>::at(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::RepeatedField<int>::at(a2);
  }

  if (*a1 <= a2)
  {
    google::protobuf::RepeatedField<int>::at(a2, *a1);
  }

  return *(a1 + 8) + 4 * a2;
}

uint64_t google::protobuf::RepeatedField<long long>::at(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::RepeatedField<int>::at(a2);
  }

  if (*a1 <= a2)
  {
    google::protobuf::RepeatedField<int>::at(a2, *a1);
  }

  return *(a1 + 8) + 8 * a2;
}

void operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(operations_research::sat::PresolveContext **this, BOOL a2, uint64_t a3, uint64_t a4, void (****a5)(operations_research::sat::LinearConstraintProto *__hidden this))
{
  v5 = a5;
  v6 = a4;
  if (*(a5 + 15) == 12)
  {
    v7 = a5[6];
    v8 = *(v7 + 4);
    v32 = a4 - a3;
    if (a4 - a3 < a3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v7 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v8 = off_2810BEE58;
    v32 = a4 - a3;
    if (a4 - a3 < a3)
    {
      goto LABEL_29;
    }
  }

  if (v8 < 1)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v31 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v17 = v7[6][v9];
      if (v17 >= 0)
      {
        v18 = v7[6][v9];
      }

      else
      {
        v18 = -v17;
      }

      if (v18 <= v32)
      {
        if (v17)
        {
          v19 = v18;
          do
          {
            v14 = v19;
            v19 = v11 % v19;
            v11 = v14;
          }

          while (v19);
        }

        else
        {
          v14 = v11;
        }

        if (v12 <= v18)
        {
          v12 = v18;
        }

        v15 = operations_research::sat::PresolveContext::MaxOf(this[1], *(v7[3] + v9));
        v16 = operations_research::sat::PresolveContext::MinOf(this[1], *(v7[3] + v9));
        v31 += v15 - v16;
        v10 += (v15 - v16) * v18;
        v11 = v14;
        v6 = a4;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  if (a3 <= 0)
  {
    operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(a3);
  }

  if (v12 < a3)
  {
    operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(a3, v12);
  }

  if (v10 <= v6)
  {
    v21 = this[1];
    operator new();
  }

  if (v6 / a3 == v6 / v12)
  {
    v20 = this[1];
    operator new();
  }

  v5 = a5;
  if (v11 >= 2)
  {
    v22 = this[1];
    operator new();
  }

LABEL_29:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v24 = *(v7[3] + i);
      v25 = v7[6][i];
      if (v25 < 0)
      {
        v25 = -v25;
      }

      if (v6 >= v25)
      {
        if (v25 > v32 && v6 > v25)
        {
          v28 = this[1];
          operator new();
        }
      }

      else if (!*(v5 + 4))
      {
        v26 = this[1];
        operator new();
      }
    }
  }
}

void sub_23CA8BFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, char a21, uint64_t a22)
{
  if (*(v22 - 81) < 0)
  {
    operator delete(*(v22 - 104));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ExtractEnforcementLiteralFromLinearConstraint(operations_research::sat::PresolveContext **this, unsigned int a2, operations_research::sat::ConstraintProto *a3)
{
  if (*(a3 + 15) == 12 && (*(this[1] + 416) & 1) == 0)
  {
    v3 = *(a3 + 6);
    v65 = *(v3 + 16);
    if (v65 >= 2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v12 = *(*(v3 + 24) + 4 * v4);
        v13 = *(v3 + 48);
        v14 = *(v13 + 8 * v4);
        if (v14 < 1)
        {
          if (v7 <= -v14)
          {
            v7 = -v14;
          }

          if (v8 >= -v14)
          {
            v8 = -v14;
          }

          v9 = operations_research::sat::PresolveContext::MaxOf(this[1], v12);
          v10 = operations_research::sat::PresolveContext::MinOf(this[1], v12);
        }

        else
        {
          if (v7 <= v14)
          {
            v7 = *(v13 + 8 * v4);
          }

          if (v14 < v8)
          {
            v8 = *(v13 + 8 * v4);
          }

          v9 = operations_research::sat::PresolveContext::MinOf(this[1], v12);
          v10 = operations_research::sat::PresolveContext::MaxOf(this[1], v12);
        }

        v5 += v9 * v14;
        v6 += v10 * v14;
        ++v4;
      }

      while (v65 != v4);
      v15 = this;
      if (v7 != 1)
      {
        v16 = *(a3 + 15);
        if (v16 == 12)
        {
          v17 = *(a3 + 6);
        }

        else
        {
          v17 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        v18 = v5;
        v19 = *(v17 + 16);
        v20 = v17[9];
        v21 = v20[v19 - 2] - v5;
        v22 = v20[1];
        v23 = v6 - v22;
        v24 = v7 + v8;
        if (v21 <= v6 - v22)
        {
          v25 = (v6 - v22);
        }

        else
        {
          v25 = v20[v19 - 2] - v5;
        }

        if (v24 >= v25 || v19 != 2 || v8 < 2 || v8 >= v7)
        {
LABEL_34:
          if (v16 == 12)
          {
            v29 = *(a3 + 6);
          }

          else
          {
            v29 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          operations_research::Domain::FromFlatSpanOfIntervals(v29[9], *(v29 + 16), v70, v11);
          v62 = operations_research::Domain::Min(v70);
          if (v6 > operations_research::Domain::Max(v70) != v5 >= v62)
          {
LABEL_104:
            if (v70[0])
            {
              operator delete(v70[1]);
            }

            return;
          }

          if (v5 < v62)
          {
            v30 = v21;
          }

          else
          {
            v30 = v23;
          }

          v31 = v30 / 2;
          if ((v30 & 0x8000000000000001) == 1)
          {
            ++v31;
          }

          if (v31 <= v30 - v8)
          {
            v31 = v30 - v8;
          }

          if ((v70[0] >> 1) > 1)
          {
            v31 = v30;
          }

          v59 = v31;
          v32 = this[1];
          if (*(*(v32 + 49) + 319) == 1)
          {
            v61 = *(v32 + 1176) ^ 1;
          }

          else
          {
            v61 = 0;
          }

          v37 = operations_research::sat::ConstraintProto::mutable_linear(a3);
          if (*(v3 + 16) < 1)
          {
            v39 = 0;
            v66 = 0;
          }

          else
          {
            v64 = v30;
            v66 = 0;
            v60 = v18;
            v38 = 0;
            v39 = 0;
            do
            {
              v42 = v37;
              v43 = *(*(v3 + 24) + 4 * v38);
              v44 = *(*(v3 + 48) + 8 * v38);
              v45 = v43 ^ (v44 >> 63);
              if (v44 >= 0)
              {
                v46 = *(*(v3 + 48) + 8 * v38);
              }

              else
              {
                v46 = -v44;
              }

              CanBeUsedAsLiteral = operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v15[1], v43 ^ (v44 >> 63));
              IsFixed = operations_research::sat::PresolveContext::IsFixed(v15[1], v45);
              v49 = v46 < v64 || IsFixed;
              if (v49 & 1) == 0 && ((v61 | CanBeUsedAsLiteral))
              {
                v50 = v15[1];
                if (CanBeUsedAsLiteral)
                {
                  operator new();
                }

                operator new();
              }

              v37 = v42;
              *(*(v42 + 24) + 4 * v39) = *(*(v42 + 24) + 4 * v38);
              if (v46 > v64)
              {
                v51 = v15[1];
                operator new();
              }

              v52 = *(*(v3 + 48) + 8 * v38);
              if (v52 >= 0)
              {
                v53 = *(*(v3 + 48) + 8 * v38);
              }

              else
              {
                v53 = -v52;
              }

              if (v46 > v59 && v46 < v64)
              {
                v55 = this[1];
                operator new();
              }

              if (v53 != v46)
              {
                v56 = this[1];
                if (v60 >= v62)
                {
                  v40 = operations_research::sat::PresolveContext::MaxOf(v56, v45);
                }

                else
                {
                  v40 = operations_research::sat::PresolveContext::MinOf(v56, v45);
                }

                v66 += v40 * (v53 - v46);
              }

              if (*(*(v3 + 48) + 8 * v38) > 0)
              {
                v41 = v53;
              }

              else
              {
                v41 = -v53;
              }

              *(*(v42 + 48) + 8 * v39++) = v41;
              v15 = this;
              ++v38;
            }

            while (v38 < *(v3 + 16));
          }

          if (*(v37 + 16) > v39)
          {
            *(v37 + 16) = v39;
          }

          if (*(v37 + 40) > v39)
          {
            *(v37 + 40) = v39;
          }

          operations_research::Domain::Domain(v68, v66);
          operations_research::Domain::AdditionWith(v70, v68, v69, v57);
          operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v69, v37);
          if (v69[0])
          {
            operator delete(v69[1]);
            if ((v68[0] & 1) == 0)
            {
LABEL_99:
              if (v39 != 1)
              {
                goto LABEL_104;
              }

LABEL_103:
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v15[1], a2);
              operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v15[1]);
              goto LABEL_104;
            }
          }

          else if ((v68[0] & 1) == 0)
          {
            goto LABEL_99;
          }

          operator delete(v68[1]);
          if (v39 != 1)
          {
            goto LABEL_104;
          }

          goto LABEL_103;
        }

        v33 = *v20;
        if (v5 < v33 || (v34 = v22 - v5, v24 <= v22 - v5))
        {
          if (v6 > v22)
          {
            goto LABEL_34;
          }

          v34 = v6 - v33;
          if (v24 <= v6 - v33)
          {
            goto LABEL_34;
          }

          v35 = this;
          v36 = 0;
        }

        else
        {
          v35 = this;
          v36 = 1;
        }

        operations_research::sat::CpModelPresolver::LowerThanCoeffStrengthening(v35, v36, v8, v34, a3);
      }
    }
  }
}

void sub_23CA8C85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p)
{
  if (*(v30 - 136))
  {
    operator delete(*(v30 - 128));
  }

  if (a29)
  {
    operator delete(__p);
  }

  if (*(v30 - 112))
  {
    operator delete(*(v30 - 104));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ExtractAtMostOneFromLinear(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, __n128 a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    goto LABEL_61;
  }

  if (*(a2 + 15) == 12)
  {
    v5 = *(a2 + 6);
  }

  else
  {
    v5 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v5[9], *(v5 + 16), v40, a3);
  if (*(a2 + 15) != 12)
  {
    v6 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v7 = off_2810BEE58;
    if (off_2810BEE58 < 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    v38 = 0;
    v39 = 0;
    do
    {
      v9 = *(v6[3] + v8);
      v10 = v6[6][v8];
      v11 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v9);
      v12 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v9);
      v13 = v11 * v10;
      if (v12 * v10 >= v11 * v10)
      {
        v14 = v11 * v10;
      }

      else
      {
        v14 = v12 * v10;
      }

      if (v13 <= v12 * v10)
      {
        v13 = v12 * v10;
      }

      v38 += v14;
      v39 += v13;
      ++v8;
    }

    while (v7 != v8);
    goto LABEL_17;
  }

  v6 = *(a2 + 6);
  v7 = *(v6 + 4);
  if (v7 >= 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v38 = 0;
  v39 = 0;
LABEL_17:
  v41 = 0x100000000;
  v15 = &v41;
  do
  {
    v37 = v15;
    v36 = *v15;
    if (v7 < 1)
    {
      v18 = 0;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      if (*v15)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *(v6[3] + v16);
          v20 = v6[6][v16];
          if (!operations_research::sat::PresolveContext::MinOf(*(this + 1), v19) && operations_research::sat::PresolveContext::MaxOf(*(this + 1), v19) == 1)
          {
            v21 = operations_research::Domain::Min(v40);
            v22 = v20 >= 0 ? v20 : -v20;
            if (v39 - 2 * v22 < v21)
            {
              operator new();
            }
          }

          ++v16;
        }

        while (v7 != v16);
      }

      else
      {
        v24 = 0;
        v18 = 0;
        do
        {
          v25 = *(v6[3] + v16);
          v26 = v6[6][v16];
          if (operations_research::sat::PresolveContext::MinOf(*(this + 1), v25) || operations_research::sat::PresolveContext::MaxOf(*(this + 1), v25) != 1 || ((v27 = operations_research::Domain::Max(v40), v26 >= 0) ? (v28 = v26) : (v28 = -v26), v38 + 2 * v28 <= v27))
          {
            v17 = v24;
          }

          else
          {
            if (v26 >= 1)
            {
              v29 = v25;
            }

            else
            {
              v29 = ~v25;
            }

            v30 = &v18[-v24];
            v31 = &v18[-v24] >> 2;
            v32 = v31 + 1;
            if ((v31 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (-v24 >> 1 > v32)
            {
              v32 = -v24 >> 1;
            }

            if (-v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v33 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              if (!(v33 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v17 = 0;
            v34 = (4 * v31);
            *v34 = v29;
            v18 = (v34 + 1);
            memcpy(0, v24, v30);
          }

          ++v16;
          v24 = v17;
        }

        while (v7 != v16);
      }
    }

    if ((v18 - v17) > 4)
    {
      v23 = *(this + 1);
      if (v36)
      {
        operator new();
      }

      operator new();
    }

    v15 = (v37 + 4);
  }

  while ((v37 + 4) != &v42);
  if (v40[0])
  {
    operator delete(v40[1]);
  }

LABEL_61:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_23CA8CEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    operator delete(v24);
  }

  if ((a23 & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a24);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) != 12 || (*(*(this + 1) + 416) & 1) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 6);
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    v9 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_204;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = *(*(v4 + 24) + 4 * v6);
    if ((v11 & 0x80000000) != 0)
    {
      operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(__p);
    }

    v12 = *(*(v4 + 48) + 8 * v6);
    if (!v12)
    {
      operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans();
    }

    if (operations_research::sat::PresolveContext::MinOf(*(this + 1), v11) || operations_research::sat::PresolveContext::MaxOf(*(this + 1), v11) != 1)
    {
      return 0;
    }

    if (v10 >= -v12)
    {
      v14 = -v12;
    }

    else
    {
      v14 = v10;
    }

    if (v12 >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v12 >= 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = -v12;
    }

    if (v12 >= 1)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v12 < 1)
    {
      v7 += v12;
    }

    else
    {
      v8 += v12;
    }

    if (v9 <= v16)
    {
      v9 = v16;
    }

    ++v6;
  }

  while (v5 != v6);
  if (v10 > v9)
  {
LABEL_204:
    operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(v10, v9);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(v4 + 72), *(v4 + 64), &v129, v13);
  if (!operations_research::Domain::Contains(&v129, v7) && v7 + v10 > operations_research::Domain::Max(&v129) || !operations_research::Domain::Contains(&v129, v8) && v8 - v10 < operations_research::Domain::Min(&v129))
  {
    v17 = *(this + 1);
    operator new();
  }

  operations_research::Domain::Domain(__p, v7, v8);
  IsIncludedIn = operations_research::Domain::IsIncludedIn(__p, &v129);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  if (IsIncludedIn)
  {
    v19 = *(this + 1);
    operator new();
  }

  v20 = v7 + v10;
  if (v7 + v10 <= operations_research::Domain::Max(&v129))
  {
    v34 = v8 - v10;
    if (v8 - v10 < operations_research::Domain::Min(&v129))
    {
      v35 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive reified and");
      operations_research::sat::PresolveContext::UpdateRuleStats(v35, __p, 1, v36, v37);
      if (v126 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
      v38 = 0;
      *(operations_research::sat::ConstraintProto::mutable_BOOL_and(a2) + 4) = 0;
      do
      {
        if (*(a2 + 15) == 4)
        {
          v39 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 4;
          v40 = *(a2 + 1);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v40);
          *(a2 + 6) = v39;
        }

        if (*(v128 + 8 * v38) >= 1)
        {
          v41 = *(v127 + 4 * v38);
        }

        else
        {
          v41 = ~*(v127 + 4 * v38);
        }

        v43 = *(v39 + 4);
        v42 = *(v39 + 5);
        if (v43 == v42)
        {
          google::protobuf::RepeatedField<int>::Grow(v39 + 2, v42, (v42 + 1));
          v43 = *(v39 + 4);
        }

        v44 = v39[3];
        *(v39 + 4) = v43 + 1;
        *(v44 + 4 * v43) = v41;
        ++v38;
      }

      while (v5 != v38);
      goto LABEL_54;
    }

    if (v20 < operations_research::Domain::Min(&v129))
    {
      goto LABEL_78;
    }

    v45 = (v130 + 8);
    if ((v129 & 1) == 0)
    {
      v45 = &v131;
    }

    if (*v45 >= v8)
    {
      v57 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive clause");
      operations_research::sat::PresolveContext::UpdateRuleStats(v57, __p, 1, v58, v59);
      if (v126 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
      v60 = 0;
      *(operations_research::sat::ConstraintProto::mutable_BOOL_or(a2) + 4) = 0;
      do
      {
        if (*(a2 + 15) == 3)
        {
          v64 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 3;
          v65 = *(a2 + 1);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v64 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v65);
          *(a2 + 6) = v64;
        }

        if (*(v128 + 8 * v60) >= 1)
        {
          v66 = *(v127 + 4 * v60);
        }

        else
        {
          v66 = ~*(v127 + 4 * v60);
        }

        v68 = *(v64 + 4);
        v67 = *(v64 + 5);
        if (v68 == v67)
        {
          google::protobuf::RepeatedField<int>::Grow(v64 + 2, v67, (v67 + 1));
          v68 = *(v64 + 4);
        }

        v69 = v64[3];
        *(v64 + 4) = v68 + 1;
        *(v69 + 4 * v68) = v66;
        ++v60;
      }

      while (v5 != v60);
    }

    else
    {
LABEL_78:
      if (v34 > operations_research::Domain::Max(&v129))
      {
        goto LABEL_79;
      }

      v46 = &v130;
      if (v129)
      {
        v46 = v130;
      }

      if (v46[2 * (v129 >> 1) - 2] > v7)
      {
LABEL_79:
        v47 = (a2 + 16);
        if (*(a2 + 4))
        {
          goto LABEL_103;
        }

        v123 = v7 + v9;
        if (v7 + v9 <= operations_research::Domain::Max(&v129) && v7 + 2 * v10 > operations_research::Domain::Max(&v129))
        {
          v48 = &v130;
          if (v129)
          {
            v48 = v130;
          }

          if (v48[2 * (v129 >> 1) - 2] <= v7)
          {
            v93 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive at most one");
            operations_research::sat::PresolveContext::UpdateRuleStats(v93, __p, 1, v94, v95);
            if (v126 < 0)
            {
              operator delete(__p[0]);
            }

            operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
            v96 = 0;
            *(operations_research::sat::ConstraintProto::mutable_at_most_one(a2) + 4) = 0;
            do
            {
              v97 = operations_research::sat::ConstraintProto::mutable_at_most_one(a2);
              if (*(v128 + 8 * v96) >= 1)
              {
                v98 = *(v127 + 4 * v96);
              }

              else
              {
                v98 = ~*(v127 + 4 * v96);
              }

              operations_research::sat::BoolArgumentProto::add_literals(v97, v98);
              ++v96;
            }

            while (v5 != v96);
            goto LABEL_105;
          }
        }

        if (*v47)
        {
          goto LABEL_103;
        }

        v49 = v8 - v9;
        if (v49 >= operations_research::Domain::Min(&v129) && v8 - 2 * v10 < operations_research::Domain::Min(&v129))
        {
          v50 = (v130 + 8);
          if ((v129 & 1) == 0)
          {
            v50 = &v131;
          }

          if (*v50 >= v8)
          {
            v99 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative at most one");
            operations_research::sat::PresolveContext::UpdateRuleStats(v99, __p, 1, v100, v101);
            if (v126 < 0)
            {
              operator delete(__p[0]);
            }

            operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
            v102 = 0;
            *(operations_research::sat::ConstraintProto::mutable_at_most_one(a2) + 4) = 0;
            do
            {
              v103 = operations_research::sat::ConstraintProto::mutable_at_most_one(a2);
              if (*(v128 + 8 * v102) <= 0)
              {
                v104 = *(v127 + 4 * v102);
              }

              else
              {
                v104 = ~*(v127 + 4 * v102);
              }

              operations_research::sat::BoolArgumentProto::add_literals(v103, v104);
              ++v102;
            }

            while (v5 != v102);
            goto LABEL_105;
          }
        }

        if (*v47)
        {
          goto LABEL_103;
        }

        if ((v129 & 0x1FFFFFFFELL) == 2 && v7 < operations_research::Domain::Min(&v129) && v20 >= operations_research::Domain::Min(&v129) && v7 + 2 * v10 > operations_research::Domain::Max(&v129) && v123 <= operations_research::Domain::Max(&v129))
        {
          v105 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "linear: positive equal one");
          operations_research::sat::PresolveContext::UpdateRuleStats(v105, __p, 1, v106, v107);
          if (v126 < 0)
          {
            operator delete(__p[0]);
          }

          v108 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v109 = v108;
          v110 = *(v108 + 8);
          if (v110)
          {
            v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set<>((v108 + 40), (*(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL), v110);
          for (i = 0; i != v5; ++i)
          {
            v112 = operations_research::sat::ConstraintProto::mutable_exactly_one(v109);
            if (*(*(v4 + 48) + 8 * i) >= 1)
            {
              v113 = *(*(v4 + 24) + 4 * i);
            }

            else
            {
              v113 = ~*(*(v4 + 24) + 4 * i);
            }

            operations_research::sat::BoolArgumentProto::add_literals(v112, v113);
          }
        }

        else
        {
          if (*v47 || (v129 & 0x1FFFFFFFELL) != 2 || v8 <= operations_research::Domain::Max(&v129) || v34 > operations_research::Domain::Max(&v129) || v8 - 2 * v10 >= operations_research::Domain::Min(&v129) || v49 < operations_research::Domain::Min(&v129))
          {
LABEL_103:
            if (v5 > 3)
            {
              result = 0;
              goto LABEL_107;
            }

            v52 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "linear: small Boolean expression");
            operations_research::sat::PresolveContext::UpdateRuleStats(v52, __p, 1, v53, v54);
            v55 = (a2 + 16);
            if (v126 < 0)
            {
              operator delete(__p[0]);
            }

            v56 = *(v4 + 16);
            if (v56 != 31)
            {
              v80 = 0;
              v81 = 1 << v56;
              do
              {
                v82 = 0;
                v83 = 0;
                do
                {
                  if ((v80 >> v82))
                  {
                    v83 += *(*(v4 + 48) + 8 * v82);
                  }

                  ++v82;
                }

                while (v5 != v82);
                if (!operations_research::Domain::Contains(&v129, v83))
                {
                  v84 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                  v85 = v84;
                  if (*(v84 + 60) == 3)
                  {
                    v86 = *(v84 + 48);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v84);
                    *(v85 + 60) = 3;
                    v87 = *(v85 + 8);
                    if (v87)
                    {
                      v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v86 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v87);
                    *(v85 + 48) = v86;
                  }

                  if (*v55)
                  {
                    google::protobuf::RepeatedField<int>::operator=((v85 + 16), v55);
                  }

                  for (j = 0; j != v5; ++j)
                  {
                    if ((v80 >> j))
                    {
                      v89 = ~*(*(v4 + 24) + 4 * j);
                    }

                    else
                    {
                      v89 = *(*(v4 + 24) + 4 * j);
                    }

                    v91 = *(v86 + 4);
                    v90 = *(v86 + 5);
                    if (v91 == v90)
                    {
                      google::protobuf::RepeatedField<int>::Grow(v86 + 2, v90, (v90 + 1));
                      v91 = *(v86 + 4);
                    }

                    v92 = v86[3];
                    *(v86 + 4) = v91 + 1;
                    *(v92 + 4 * v91) = v89;
                  }
                }

                ++v80;
              }

              while (v80 != v81);
            }

            goto LABEL_202;
          }

          v114 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative equal one");
          operations_research::sat::PresolveContext::UpdateRuleStats(v114, __p, 1, v115, v116);
          if (v126 < 0)
          {
            operator delete(__p[0]);
          }

          v117 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v118 = v117;
          v119 = *(v117 + 8);
          if (v119)
          {
            v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set<>((v117 + 40), (*(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL), v119);
          for (k = 0; k != v5; ++k)
          {
            v121 = operations_research::sat::ConstraintProto::mutable_exactly_one(v118);
            if (*(*(v4 + 48) + 8 * k) <= 0)
            {
              v122 = *(*(v4 + 24) + 4 * k);
            }

            else
            {
              v122 = ~*(*(v4 + 24) + 4 * k);
            }

            operations_research::sat::BoolArgumentProto::add_literals(v121, v122);
          }
        }

LABEL_202:
        operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
        operations_research::sat::ConstraintProto::Clear(a2);
        goto LABEL_106;
      }

      v70 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative clause");
      operations_research::sat::PresolveContext::UpdateRuleStats(v70, __p, 1, v71, v72);
      if (v126 < 0)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
      v73 = 0;
      *(operations_research::sat::ConstraintProto::mutable_BOOL_or(a2) + 4) = 0;
      do
      {
        if (*(a2 + 15) == 3)
        {
          v74 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 3;
          v75 = *(a2 + 1);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          v74 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v75);
          *(a2 + 6) = v74;
        }

        if (*(v128 + 8 * v73) <= 0)
        {
          v76 = *(v127 + 4 * v73);
        }

        else
        {
          v76 = ~*(v127 + 4 * v73);
        }

        v78 = *(v74 + 4);
        v77 = *(v74 + 5);
        if (v78 == v77)
        {
          google::protobuf::RepeatedField<int>::Grow(v74 + 2, v77, (v77 + 1));
          v78 = *(v74 + 4);
        }

        v79 = v74[3];
        *(v74 + 4) = v78 + 1;
        *(v79 + 4 * v78) = v76;
        ++v73;
      }

      while (v5 != v73);
    }

    operations_research::sat::CpModelPresolver::PresolveBoolOr(this, a2, v61, v62, v63);
    goto LABEL_105;
  }

  v21 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "linear: negative reified and");
  operations_research::sat::PresolveContext::UpdateRuleStats(v21, __p, 1, v22, v23);
  if (v126 < 0)
  {
    operator delete(__p[0]);
  }

  operations_research::sat::LinearConstraintProto::LinearConstraintProto(__p, 0, v4);
  v24 = 0;
  *(operations_research::sat::ConstraintProto::mutable_BOOL_and(a2) + 4) = 0;
  do
  {
    if (*(a2 + 15) == 4)
    {
      v28 = *(a2 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 4;
      v29 = *(a2 + 1);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v29);
      *(a2 + 6) = v28;
    }

    if (*(v128 + 8 * v24) <= 0)
    {
      v30 = *(v127 + 4 * v24);
    }

    else
    {
      v30 = ~*(v127 + 4 * v24);
    }

    v32 = *(v28 + 4);
    v31 = *(v28 + 5);
    if (v32 == v31)
    {
      google::protobuf::RepeatedField<int>::Grow(v28 + 2, v31, (v31 + 1));
      v32 = *(v28 + 4);
    }

    v33 = v28[3];
    *(v28 + 4) = v32 + 1;
    *(v33 + 4 * v32) = v30;
    ++v24;
  }

  while (v5 != v24);
LABEL_54:
  operations_research::sat::CpModelPresolver::PresolveBoolAnd(this, a2, v25, v26, v27);
LABEL_105:
  operations_research::sat::LinearConstraintProto::~LinearConstraintProto(__p);
LABEL_106:
  result = 1;
LABEL_107:
  if (v129)
  {
    v51 = result;
    operator delete(v130);
    return v51;
  }

  return result;
}

void sub_23CA8DCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveInterval(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v3 = *(this + 1);
  if (*(v3 + 416))
  {
    return 0;
  }

  if (*(a3 + 15) == 19)
  {
    v7 = *(a3 + 6);
    if (!*(a3 + 4))
    {
      goto LABEL_11;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a3);
    *(a3 + 15) = 19;
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v8);
    v7 = v9;
    *(a3 + 6) = v9;
    v3 = *(this + 1);
    if (!*(a3 + 4))
    {
      goto LABEL_11;
    }
  }

  if (operations_research::sat::PresolveContext::SizeMax(v3, a2) < 0)
  {
    v27 = *(this + 1);
    operator new();
  }

  if (*(a3 + 4))
  {
    goto LABEL_19;
  }

  v3 = *(this + 1);
LABEL_11:
  v28 = 0;
  if (*(v7 + 40))
  {
    v10 = *(v7 + 40);
  }

  else
  {
    v10 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  operations_research::Domain::Domain(v29, 0, 0x7FFFFFFFFFFFFFFFLL);
  v11 = operations_research::sat::PresolveContext::IntersectDomainWith(v3, v10, v29, &v28);
  if (v29[0])
  {
    operator delete(v29[1]);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (v28)
  {
    v12 = *(this + 1);
    operator new();
  }

LABEL_19:
  if (operations_research::sat::PresolveContext::ConstraintVariableGraphIsUpToDate(*(this + 1)))
  {
    v13 = *(this + 1);
    v14 = *(v13 + 768);
    if (a2 >= ((*(v13 + 776) - v14) >> 2) || !*(v14 + 4 * a2))
    {
      operator new();
    }
  }

  *(v7 + 16) |= 1u;
  v15 = *(v7 + 24);
  if (!v15)
  {
    v16 = *(v7 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v16);
    v15 = v17;
    *(v7 + 24) = v17;
  }

  v18 = operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a3 + 3), *(a3 + 4), v15);
  *(v7 + 16) |= 4u;
  v19 = *(v7 + 40);
  if (!v19)
  {
    v20 = *(v7 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v20);
    v19 = v21;
    *(v7 + 40) = v21;
  }

  v22 = v18 | operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a3 + 3), *(a3 + 4), v19);
  *(v7 + 16) |= 2u;
  v23 = *(v7 + 32);
  if (!v23)
  {
    v24 = *(v7 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v24);
    v23 = v25;
    *(v7 + 32) = v25;
  }

  return v22 | operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a3 + 3), *(a3 + 4), v23);
}

void sub_23CA8E1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v4 = *(a2 + 15);
  if (v4 == 18)
  {
    v5 = *(a2 + 6);
    v6 = *(v5 + 4);
    v47 = 0;
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = v5[3];
    v10 = 4 * v6;
    while (1)
    {
      v11 = *v9;
      v12 = *(this + 1);
      operations_research::Domain::Domain(__p, 0, v6 - 1);
      v13 = operations_research::sat::PresolveContext::IntersectDomainWith(v12, v11, __p, &v47);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      v9 = (v9 + 4);
      v10 -= 4;
      if (!v10)
      {
        v4 = *(a2 + 15);
        if (v4 == 18)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    if (dword_2810BFCF8 < 1)
    {
      return 0;
    }

    result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFCF0, dword_2810BFCF8);
    if (result)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 4645);
      v28 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
      goto LABEL_38;
    }

    return result;
  }

  v5 = &operations_research::sat::_InverseConstraintProto_default_instance_;
  v6 = dword_2810BECC0;
  v47 = 0;
  if (dword_2810BECC0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v4 != 18)
  {
LABEL_13:
    v7 = &operations_research::sat::_InverseConstraintProto_default_instance_;
    v8 = dword_2810BECD8;
    if (!dword_2810BECD8)
    {
      goto LABEL_20;
    }

LABEL_14:
    v14 = v7[6];
    v15 = 4 * v8;
    while (1)
    {
      v16 = *v14;
      v17 = *(this + 1);
      operations_research::Domain::Domain(__p, 0, v6 - 1);
      v18 = operations_research::sat::PresolveContext::IntersectDomainWith(v17, v16, __p, &v47);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 = (v14 + 4);
      v15 -= 4;
      if (!v15)
      {
        v4 = *(a2 + 15);
        goto LABEL_20;
      }
    }

    if (dword_2810BFD10 >= 1)
    {
      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFD08, dword_2810BFD10);
      if (!result)
      {
        return result;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 4651);
      v29 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
LABEL_38:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
    }

    return 0;
  }

LABEL_4:
  v7 = *(a2 + 6);
  v8 = *(v7 + 10);
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_20:
  v19 = xmmword_23CE306D0;
  *__p = xmmword_23CE306D0;
  v20 = &operations_research::sat::_InverseConstraintProto_default_instance_;
  if (v4 == 18)
  {
    v20 = *(a2 + 6);
  }

  v21 = *(v20 + 4);
  if (!v21)
  {
LABEL_29:
    *v43 = v19;
    if (v4 == 18)
    {
      v25 = *(a2 + 6);
      v26 = *(v25 + 10);
      if (!v26)
      {
LABEL_45:
        result = 0;
        v33 = 1;
        if (v43[0] < 2)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v25 = &operations_research::sat::_InverseConstraintProto_default_instance_;
      v26 = dword_2810BECD8;
      if (!dword_2810BECD8)
      {
        goto LABEL_45;
      }
    }

    v30 = v25[6];
    v31 = 4 * v26;
    while (1)
    {
      v32 = *v30;
      if (~*v30 > *v30)
      {
        v32 = ~v32;
      }

      v39 = v32;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v43, &v39, &v40);
      if ((v42 & 1) == 0)
      {
        break;
      }

      *v41 = v39;
      ++v30;
      v31 -= 4;
      if (!v31)
      {
        goto LABEL_45;
      }
    }

    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "inverse: duplicated variable", 28);
    v33 = 0;
    if (v43[0] < 2)
    {
      goto LABEL_50;
    }

LABEL_49:
    v34 = result;
    operator delete((v44 - (v43[1] & 1) - 8));
    result = v34;
    goto LABEL_50;
  }

  v22 = v20[3];
  v23 = 4 * v21;
  while (1)
  {
    v24 = *v22;
    if (~*v22 > *v22)
    {
      v24 = ~v24;
    }

    v40 = v24;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(__p, &v40, v43);
    if ((v44 & 1) == 0)
    {
      break;
    }

    *v43[1] = v40;
    ++v22;
    v23 -= 4;
    if (!v23)
    {
      v4 = *(a2 + 15);
      v19 = xmmword_23CE306D0;
      goto LABEL_29;
    }
  }

  result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "inverse: duplicated variable", 28);
  v33 = 0;
LABEL_50:
  if (__p[0] >= 2)
  {
    v35 = result;
    operator delete(&v46[-(__p[1] & 1) - 8]);
    result = v35;
  }

  if (v33)
  {
    __p[0] = this;
    LODWORD(__p[1]) = v6;
    v46 = &v47;
    if (*(a2 + 15) == 18)
    {
      v36 = *(a2 + 6);
      if ((operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(__p) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(__p) & 1) == 0)
    {
      return 0;
    }

    if (*(a2 + 15) == 18)
    {
      v37 = *(a2 + 6);
    }

    if (operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(__p))
    {
      if (v47)
      {
        v38 = *(this + 1);
        operator new();
      }
    }

    return 0;
  }

  return result;
}

void sub_23CA8E69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA8E6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA8E6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveInverse(operations_research::sat::ConstraintProto *)::$_0::operator()<google::protobuf::RepeatedField<int>,google::protobuf::RepeatedField<int>>(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(a1 + 2);
  if (v1)
  {
    if ((v1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return 1;
}

void sub_23CA8EF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *__p, uint64_t a24, void *a25)
{
  if (a22)
  {
    operator delete(__p);
    if (!a14)
    {
      goto LABEL_7;
    }
  }

  else if (!a14)
  {
LABEL_7:
    std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  operator delete(a14);
  goto LABEL_7;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveElement(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(this + 1);
  if (*(v5 + 416))
  {
    return 0;
  }

  v7 = this;
  if (*(a2 + 15) != 14)
  {
    v8 = &operations_research::sat::_ElementConstraintProto_default_instance_;
    v9 = dword_2810BED00;
    if (dword_2810BED00)
    {
      goto LABEL_4;
    }

LABEL_18:
    HIBYTE(__p[2]) = 20;
    strcpy(__p, "element: empty array");
    operations_research::sat::PresolveContext::UpdateRuleStats(v5, __p, 1, a4, a5);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(v7 + 1), &byte_23CE7F131, 0);
  }

  v8 = *(a2 + 6);
  v9 = *(v8 + 4);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*(a2 + 4))
  {
    return 0;
  }

  v10 = *(v8 + 9);
  v119 = *(v8 + 10);
  operations_research::Domain::Domain(__p, 0, v9 - 1);
  v11 = operations_research::sat::PresolveContext::IntersectDomainWith(v5, v10, __p, 0);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v119;
  if (~v119 > v119)
  {
    v12 = ~v119;
  }

  v117 = ~v10;
  v118 = v10;
  if (~v10 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = ~v10;
  }

  v114 = v12;
  v115 = v13;
  v116 = v7;
  if (v12 != v13)
  {
LABEL_68:
    __p[0] = 0;
    operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v10, &v132);
    operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v119, &v130);
    if (v132 > 1)
    {
      v42 = v132 & 1;
      v43 = &v132 + 1;
      v41 = *(&v132 + 1);
      if (v132)
      {
        v43 = *(&v132 + 1);
      }

      v40 = *v43;
    }

    else
    {
      v40 = 0;
      v41 = *(&v132 + 1);
      v42 = v132;
    }

    if (v42)
    {
      v44 = v41;
    }

    else
    {
      v44 = &v132 + 1;
    }

    if ((v132 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v45 = &v44[2 * (v132 >> 1)];
      while (1)
      {
        if (v40 < 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v40, 0, "value >= 0");
        }

        if (*(a2 + 15) == 14)
        {
          v46 = *(a2 + 6);
        }

        else
        {
          v46 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        }

        v47 = *(v46 + 4);
        if (v40 >= v47)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v40, v47, "value < ct->element().vars_size()");
        }

        v48 = *(v46[3] + v40);
        operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v48, &v127);
        if (v48 == v10)
        {
          break;
        }

        if (v48 == v117)
        {
          operations_research::Domain::Domain(v125, -v40);
          goto LABEL_91;
        }

        if (v48 == ~v119)
        {
          operations_research::Domain::Domain(v125, 0);
          goto LABEL_91;
        }

LABEL_94:
        operations_research::Domain::IntersectionWith(&v127, &v130, v125);
        IsEmpty = operations_research::Domain::IsEmpty(v125);
        if (v125[0])
        {
          operator delete(v126);
        }

        if (!IsEmpty)
        {
          operator new();
        }

        if (v127)
        {
          operator delete(v128);
        }

        if (v40 == v44[1])
        {
          v44 += 2;
          if (v44 != v45)
          {
            v40 = *v44;
          }
        }

        else
        {
          ++v40;
        }

        if (v44 == v45)
        {
          goto LABEL_103;
        }
      }

      operations_research::Domain::Domain(v125, v40);
LABEL_91:
      if (v127)
      {
        operator delete(v128);
      }

      v127 = *v125;
      v128 = v126;
      goto LABEL_94;
    }

LABEL_103:
    if (operations_research::Domain::Size(&v132))
    {
      v50 = *(v7 + 1);
      v123 = 0;
      v124 = 0;
      v122 = 0;
      operations_research::Domain::FromValues(&v122, &v127);
      v51 = operations_research::sat::PresolveContext::IntersectDomainWith(v50, v10, &v127, 0);
      if (v127)
      {
        operator delete(v128);
      }

      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_122;
      }

      v52 = *(v7 + 1);
      std::string::basic_string[abi:ne200100]<0>(&v127, "element: reduced index domain");
      operations_research::sat::PresolveContext::UpdateRuleStats(v52, &v127, 1, v53, v54);
      if (SHIBYTE(v128) < 0)
      {
        operator delete(v127);
      }
    }

    v125[0] = 0;
    if (operations_research::sat::PresolveContext::IntersectDomainWith(*(v7 + 1), v119, __p, v125))
    {
      if (v125[0])
      {
        v55 = *(v7 + 1);
        std::string::basic_string[abi:ne200100]<0>(&v127, "element: reduced target domain");
        operations_research::sat::PresolveContext::UpdateRuleStats(v55, &v127, 1, v56, v57);
        if (SHIBYTE(v128) < 0)
        {
          operator delete(v127);
        }
      }

      if (v130)
      {
        operator delete(*(&v130 + 1));
        if ((v132 & 1) == 0)
        {
LABEL_117:
          if ((__p[0] & 1) == 0)
          {
            goto LABEL_119;
          }

          goto LABEL_118;
        }
      }

      else if ((v132 & 1) == 0)
      {
        goto LABEL_117;
      }

      operator delete(*(&v132 + 1));
      if ((__p[0] & 1) == 0)
      {
LABEL_119:
        if (operations_research::sat::PresolveContext::IsFixed(*(v7 + 1), v10))
        {
          if (*(a2 + 15) == 14)
          {
            v58 = *(a2 + 6);
          }

          else
          {
            v58 = &operations_research::sat::_ElementConstraintProto_default_instance_;
          }

          v79 = *(v58[3] + operations_research::sat::PresolveContext::MinOf(*(v7 + 1), v10));
          if (v79 != v119)
          {
            v80 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v7 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v81 = operations_research::sat::ConstraintProto::mutable_linear(v80);
            operations_research::sat::BoolArgumentProto::add_literals(v81, v79);
            operations_research::sat::LinearConstraintProto::add_coeffs(v81, -1);
            operations_research::sat::BoolArgumentProto::add_literals(v81, v119);
            operations_research::sat::LinearConstraintProto::add_coeffs(v81, 1);
            operations_research::sat::LinearConstraintProto::add_domain(v81, 0);
            operations_research::sat::LinearConstraintProto::add_domain(v81, 0);
            operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v7 + 1));
          }

          v82 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "element: fixed index");
          operations_research::sat::PresolveContext::UpdateRuleStats(v82, __p, 1, v83, v84);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_167:
          operations_research::sat::ConstraintProto::Clear(a2);
          return 1;
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(v7 + 1), v119))
        {
          v59 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "element: one value array");
          operations_research::sat::PresolveContext::UpdateRuleStats(v59, __p, 1, v60, v61);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_167;
        }

        if (!operations_research::sat::PresolveContext::MinOf(*(v7 + 1), v10) && operations_research::sat::PresolveContext::MaxOf(*(v7 + 1), v10) == 1)
        {
          v63 = MEMORY[0];
          v62 = MEMORY[8];
          v64 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v7 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v65 = operations_research::sat::ConstraintProto::mutable_linear(v64);
          operations_research::sat::BoolArgumentProto::add_literals(v65, v119);
          operations_research::sat::LinearConstraintProto::add_coeffs(v65, 1);
          operations_research::sat::BoolArgumentProto::add_literals(v65, v10);
          operations_research::sat::LinearConstraintProto::add_coeffs(v65, v63 - v62);
          operations_research::sat::LinearConstraintProto::add_domain(v65, v63);
          operations_research::sat::LinearConstraintProto::add_domain(v65, v63);
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v7 + 1));
          v66 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "element: linearize constant element of size 2");
          operations_research::sat::PresolveContext::UpdateRuleStats(v66, __p, 1, v67, v68);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          operations_research::sat::ConstraintProto::Clear(a2);
          operator delete(0);
          return 1;
        }

        operations_research::sat::PresolveContext::GetAffineRelation(*(v7 + 1), v10, &v130);
        if (v130 == v10)
        {
LABEL_147:
          *__p = xmmword_23CE306D0;
          LODWORD(v132) = v115;
          v69 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::operator[]<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,(int *)0>(__p, &v132);
          ++*v69;
          LODWORD(v132) = v114;
          v70 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::operator[]<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,(int *)0>(__p, &v132);
          ++*v70;
          operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v10, &v127);
          v71 = v127 & 1;
          if (v127)
          {
            v72 = v128;
          }

          else
          {
            v72 = &v128;
          }

          if ((v127 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v73 = &v72[v127 >> 1];
            do
            {
              v74 = *v72;
              v75 = *(v72 + 1);
              if (*v72 <= v75)
              {
                v76 = v74 << 32;
                do
                {
                  v77 = &operations_research::sat::_ElementConstraintProto_default_instance_;
                  if (*(a2 + 15) == 14)
                  {
                    v77 = *(a2 + 6);
                  }

                  v78 = *(v77[3] + (v76 >> 30));
                  if (~v78 > v78)
                  {
                    v78 = ~v78;
                  }

                  *v125 = v78;
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__p, v125, &v132);
                  if (v133 == 1)
                  {
                    **(&v132 + 1) = *v125;
                  }

                  ++*(*(&v132 + 1) + 4);
                  ++v74;
                  v76 += 0x100000000;
                }

                while (v74 <= v75);
              }

              ++v72;
            }

            while (v72 != v73);
            v71 = v127 & 1;
          }

          if (v71)
          {
            operator delete(v128);
          }

          if (operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(v7 + 1), v10) && (LODWORD(v132) = v115, *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>>(__p, &v132) == 1))
          {
            v87 = *(v7 + 1);
            std::string::basic_string[abi:ne200100]<0>(&v132, "element: trivial target domain reduction");
            operations_research::sat::PresolveContext::UpdateRuleStats(v87, &v132, 1, v88, v89);
            if (v134 < 0)
            {
              operator delete(v132);
            }

            operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(v7 + 1), v10);
            v90 = 4952;
          }

          else
          {
            if (operations_research::sat::PresolveContext::IsFixed(*(v7 + 1), v119) || !operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(v7 + 1), v119) || (LODWORD(v132) = v114, *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>>(__p, &v132) != 1))
            {
              result = 0;
LABEL_213:
              if (__p[0] >= 2)
              {
                v113 = result;
                operator delete(__p[2] - (__p[1] & 1) - 8);
                return v113;
              }

              return result;
            }

            v110 = *(v7 + 1);
            std::string::basic_string[abi:ne200100]<0>(&v132, "element: trivial index domain reduction");
            operations_research::sat::PresolveContext::UpdateRuleStats(v110, &v132, 1, v111, v112);
            if (v134 < 0)
            {
              operator delete(v132);
            }

            operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(v7 + 1), v119);
            v90 = 4965;
          }

          operations_research::sat::PresolveContext::NewMappingConstraint(*(v7 + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, v90);
          operations_research::sat::ConstraintProto::Clear(a2);
          result = 1;
          goto LABEL_213;
        }

        operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v130, __p);
        v85 = operations_research::Domain::Size(__p);
        operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v10, &v132);
        v86 = operations_research::Domain::Size(&v132);
        if (v132)
        {
          operator delete(*(&v132 + 1));
          if ((__p[0] & 1) == 0)
          {
LABEL_172:
            if (v85 > v86)
            {
              return 1;
            }

            goto LABEL_184;
          }
        }

        else if ((__p[0] & 1) == 0)
        {
          goto LABEL_172;
        }

        operator delete(__p[1]);
        if (v85 > v86)
        {
          return 1;
        }

LABEL_184:
        v91 = v130;
        v92 = operations_research::sat::PresolveContext::MinOf(*(v7 + 1), v130);
        v93 = operations_research::sat::PresolveContext::MaxOf(*(v7 + 1), v91);
        v94 = v93;
        if (*(a2 + 15) == 14)
        {
          v95 = *(a2 + 6);
        }

        else
        {
          v95 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        }

        if (v92)
        {
          v96 = *(v7 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "TODO element: representative has bad domain");
          operations_research::sat::PresolveContext::UpdateRuleStats(v96, __p, 1, v97, v98);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else if ((v131 & 0x8000000000000000) == 0)
        {
          v99 = *(v95 + 4);
          if (v131 < v99)
          {
            v100 = v131 + *(&v130 + 1) * v93;
            if ((v100 & 0x8000000000000000) == 0 && v100 < v99)
            {
              v101 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v7 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              operations_research::sat::ConstraintProto::mutable_element(v101);
              v103 = v102;
              if ((v94 & 0x8000000000000000) == 0)
              {
                v104 = 0;
                do
                {
                  v105 = v131 + *(&v130 + 1) * v104;
                  if ((v105 & 0x8000000000000000) != 0)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v105, 0, "scaled_index >= 0");
                  }

                  if (v105 >= v99)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v105, v99, "scaled_index < array_size");
                  }

                  v106 = &operations_research::sat::_ElementConstraintProto_default_instance_;
                  if (*(a2 + 15) == 14)
                  {
                    v106 = *(a2 + 6);
                  }

                  operations_research::sat::BoolArgumentProto::add_literals(v103, *(v106[3] + v105));
                  ++v104;
                }

                while (v104 <= v94);
              }

              *(v103 + 36) = v91;
              *(v103 + 40) = v119;
              v107 = v116[1];
              if (*(&v130 + 1) == 1)
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "element: shifed index ");
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "element: scaled index");
              }

              operations_research::sat::PresolveContext::UpdateRuleStats(v107, __p, 1, v108, v109);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v116[1]);
              operations_research::sat::ConstraintProto::Clear(a2);
              return 1;
            }
          }
        }

        goto LABEL_147;
      }

LABEL_118:
      operator delete(__p[1]);
      goto LABEL_119;
    }

LABEL_122:
    if (v130)
    {
      operator delete(*(&v130 + 1));
      if ((v132 & 1) == 0)
      {
LABEL_124:
        if ((__p[0] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_128;
      }
    }

    else if ((v132 & 1) == 0)
    {
      goto LABEL_124;
    }

    operator delete(*(&v132 + 1));
    if ((__p[0] & 1) == 0)
    {
      return 1;
    }

LABEL_128:
    operator delete(__p[1]);
    return 1;
  }

  memset(__p, 0, 24);
  operations_research::sat::PresolveContext::DomainOf(*(v7 + 1), v10, &v132);
  if (v132 > 1)
  {
    v16 = v132 & 1;
    v18 = &v132 + 1;
    v15 = *(&v132 + 1);
    if (v132)
    {
      v18 = *(&v132 + 1);
    }

    v14 = *v18;
  }

  else
  {
    v14 = 0;
    v15 = *(&v132 + 1);
    v16 = v132;
  }

  if (v16)
  {
    v19 = v15;
  }

  else
  {
    v19 = &v132 + 1;
  }

  if ((v132 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v20 = &v19[2 * (v132 >> 1)];
    v120 = v20;
    do
    {
      v21 = &operations_research::sat::_ElementConstraintProto_default_instance_;
      if (*(a2 + 15) == 14)
      {
        v21 = *(a2 + 6);
      }

      if (v119 == v10)
      {
        v22 = v14;
      }

      else
      {
        v22 = -v14;
      }

      if (operations_research::sat::PresolveContext::DomainContains(*(v7 + 1), *(v21[3] + v14), v22))
      {
        v23 = __p[1];
        if (__p[1] >= __p[2])
        {
          v25 = __p[0];
          v26 = __p[1] - __p[0];
          v27 = (__p[1] - __p[0]) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v29 = __p[2] - __p[0];
          if ((__p[2] - __p[0]) >> 2 > v28)
          {
            v28 = v29 >> 2;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (!(v30 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v27) = v22;
          v24 = (8 * v27 + 8);
          memcpy(0, v25, v26);
          __p[0] = 0;
          __p[1] = v24;
          __p[2] = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v20 = v120;
        }

        else
        {
          *__p[1] = v22;
          v24 = v23 + 8;
        }

        __p[1] = v24;
        v10 = v118;
      }

      if (v14 == v19[1])
      {
        v19 += 2;
        if (v19 != v20)
        {
          v14 = *v19;
        }
      }

      else
      {
        ++v14;
      }
    }

    while (v19 != v20);
  }

  v32 = __p[0];
  v31 = __p[1];
  v33 = operations_research::Domain::Size(&v132) > (v31 - v32) >> 3;
  v7 = v116;
  if (!v33)
  {
LABEL_64:
    if (v132)
    {
      operator delete(*(&v132 + 1));
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_68;
  }

  v34 = v116[1];
  v35 = std::vector<long long>::vector[abi:ne200100](v129, __p);
  operations_research::Domain::FromValues(v35, &v130);
  v36 = operations_research::sat::PresolveContext::IntersectDomainWith(v34, v10, &v130, 0);
  if (v130)
  {
    operator delete(*(&v130 + 1));
  }

  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (v36)
  {
    v37 = v116[1];
    std::string::basic_string[abi:ne200100]<0>(&v130, "element: reduced index domain when target equals index");
    operations_research::sat::PresolveContext::UpdateRuleStats(v37, &v130, 1, v38, v39);
    if (SHIBYTE(v131) < 0)
    {
      operator delete(v130);
    }

    goto LABEL_64;
  }

  if (v132)
  {
    operator delete(*(&v132 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}