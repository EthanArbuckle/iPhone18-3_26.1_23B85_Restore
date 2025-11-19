void sub_21C436658(_Unwind_Exception *exception_object)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  _Unwind_Resume(exception_object);
}

void SKCEmitterNode::subclassRecomputeFlags(SKCEmitterNode *this)
{
  if (*(this + 244))
  {
    SKCNode::setFlags(this, 8, 1);
  }
}

void SKCEmitterNode::advanceSimulationTime(SKCEmitterNode *this, float a2)
{
  if (*(this + 988) == 1)
  {
    SKCEmitterNode::initializeSystem(this);
  }

  if (*(this + 560) == 1)
  {
    v4 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
    v5 = *(SKCParticleSystem::getSlice(v4, __p) + 16);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "deathTime");
    v7 = *(SKCParticleSystem::getSlice(v6, __p) + 16);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = *(*(this + 75) + 84); i; --i)
    {
      *v5 = *v5 - a2;
      ++v5;
      *v7 = *v7 - a2;
      ++v7;
    }
  }

  SKCEmitterNode::advanceSimulationTime(this, a2);
}

void sub_21C4367C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SKCEmitterNode::setBirthRate(SKCEmitterNode *this, float a2)
{
  v3 = *(this + 228);
  if (a2 > 3.4028e38)
  {
    a2 = 3.4028e38;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *(this + 228) = a2;
  if (a2 <= 0.0)
  {
    *(this + 89) = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 <= 0.0)
    {
      std::__list_imp<SKCRenderSortInfo *>::clear(this + 106);
    }

    v4 = *(this + 89);
    if (v4 == 1.79769313e308)
    {
      v5 = skCurrentTime();
      v6 = fminf(v5, INFINITY);
    }

    else
    {
      v6 = v4 - (1.0 / v3) + (1.0 / *(this + 228));
    }

    *(this + 89) = v6;
  }
}

void SKCEmitterNode::preSimulate(SKCEmitterNode *this, int a2, int a3, float a4)
{
  v175 = *MEMORY[0x277D85DE8];
  v8 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
  v9 = *(SKCParticleSystem::getSlice(v8, __p) + 16);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "deathTime");
  v11 = *(SKCParticleSystem::getSlice(v10, __p) + 16);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
  v13 = *(SKCParticleSystem::getSlice(v12, __p) + 16);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = a2;
  if (a3 >= 1)
  {
    v15 = (v9 + 4 * a2);
    v16 = (v11 + 4 * a2);
    v17 = a3;
    v18 = (v13 + 4 * a2);
    do
    {
      v19 = *v15++;
      v20 = v19;
      v21 = *v16++;
      *v18++ = fminf(fmaxf((a4 - v20) / (v21 - v20), 0.0), 1.0);
      --v17;
    }

    while (v17);
  }

  if (*(this + 244))
  {
    v22 = SKCNode::getScene(this);
    v23 = [v22 physicsWorld];

    v24 = [v23 aether];
    MEMORY[0x21CF0A090](v167, v24);
    if (v24)
    {
      v170 = 0;
      v171 = &v170;
      v172 = 0x3020000000;
      v173 = 0;
      v174 = 0;
      WeakRetained = objc_loadWeakRetained(this + 71);
      if (!WeakRetained)
      {
        WeakRetained = *(this + 1);
      }

      v133 = WeakRetained;
      v26 = [WeakRetained _backingNode];
      *(v171 + 2) = xmmword_21C4B84C0;
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = ___ZN14SKCEmitterNode11preSimulateEiif_block_invoke;
      v166[3] = &unk_27830FDA8;
      v166[4] = &v170;
      SKCNode::walkUp(v26, v166, 1);
      v132 = *(v171 + 2);
      v27 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "vel");
      v28 = *(SKCParticleSystem::getSlice(v27, __p) + 16);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "pos");
      v30 = *(SKCParticleSystem::getSlice(v29, __p) + 16);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      v31 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "accel");
      v32 = *(SKCParticleSystem::getSlice(v31, __p) + 16);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      v33 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
      v34 = *(SKCParticleSystem::getSlice(v33, __p) + 16);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      v35 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "override");
      Slice = SKCParticleSystem::getSlice(v35, __p);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      v37 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "outVel");
      v38 = SKCParticleSystem::getSlice(v37, __p);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      SKCDataSlice::resize(Slice, *(*(this + 75) + 80));
      SKCDataSlice::resize(v38, *(*(this + 75) + 80));
      v151 = -1;
      v39 = (v28 + 8 * v14);
      *&v152[4] = 0;
      *&v152[12] = 0;
      v153 = 1;
      v40 = (v30 + 8 * v14);
      v157 = 0;
      v158 = 1;
      v41 = (v32 + 8 * v14);
      v159 = 0;
      v160 = 0;
      v161 = 8;
      v162 = 0;
      v165 = 1065353216;
      __p[0] = 0;
      __p[1] = v40;
      v137 = 8;
      v138 = 0;
      v139 = 0;
      v140 = v39;
      v141 = 8;
      v142 = 0;
      v143 = 1065353216;
      v144 = *v134;
      v145 = 0;
      v146 = 1;
      *&v134[4] = 0uLL;
      v147 = 1065353216;
      v149 = 0;
      v148 = *v134;
      v150 = 1;
      v154 = v41;
      v155 = 8;
      v156 = 0;
      v163 = *(this + 91);
      v164 = v132;
      PKGet_INV_PTM_RATIO();
      v165 = v42;
      v43 = *(this + 244);
      *&v134[12] = 0;
      *&v134[4] = 0;
      v151 = v43;
      *v152 = *v134;
      *&v152[16] = 0;
      v153 = 1;
      v157 = *(Slice + 16) + v14;
      v158 = 1;
      v159 = 0;
      v160 = *(v38 + 16) + 8 * v14;
      v161 = 8;
      v162 = 0;
      PKCAether::Evaluator::evalFieldsVec2();
      v44 = (v34 + 4 * v14);
      if (*(this + 83))
      {
        v45 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(v134, "lifeRatio");
        v46 = *(SKCParticleSystem::getSlice(v45, v134) + 16);
        if (v135 < 0)
        {
          operator delete(*v134);
        }

        if (a3 >= 1)
        {
          v47 = (v46 + 4 * v14);
          v48 = a3;
          do
          {
            v49 = *v41;
            v50 = *v39;
            v51 = *v40;
            v52 = *v47;
            v53 = *v44;
            *v134 = 0;
            SKCKeyframeSequence::sample(*(this + 83), v52, v134);
            v54 = vmla_n_f32(v50, vmul_n_f32(v49, a4 - v53), *v134);
            *v41++ = 0;
            *v39++ = v54;
            *v40++ = vadd_f32(vmla_n_f32(v51, v54, a4 - v53), vmul_n_f32(vmul_f32(vsub_f32(v54, v50), 0x3F0000003F000000), a4 - v53));
            ++v47;
            ++v44;
            --v48;
          }

          while (v48);
        }
      }

      else if (a3 >= 1)
      {
        v69 = a3;
        do
        {
          v70 = *v40;
          v71 = *v44++;
          v72 = vmla_n_f32(*v39, *v41, a4 - v71);
          v73 = vmul_n_f32(vmul_f32(vsub_f32(v72, *v39), 0x3F0000003F000000), a4 - v71);
          *v41++ = 0;
          *v39++ = v72;
          *v40++ = vadd_f32(vmla_n_f32(v70, v72, a4 - v71), v73);
          --v69;
        }

        while (v69);
      }

      _Block_object_dispose(&v170, 8);
      goto LABEL_48;
    }
  }

  else
  {
    MEMORY[0x21CF0A090](v167, 0);
  }

  v55 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "vel");
  v56 = *(SKCParticleSystem::getSlice(v55, __p) + 16);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  v57 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "pos");
  v58 = *(SKCParticleSystem::getSlice(v57, __p) + 16);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  v59 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
  v60 = *(SKCParticleSystem::getSlice(v59, __p) + 16);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  if (a3 >= 1)
  {
    v61 = (v56 + 8 * v14);
    v62 = (v58 + 8 * v14);
    v63 = *(this + 904);
    v64 = a3;
    v65 = (v60 + 4 * v14);
    do
    {
      v66 = *v61;
      v67 = *v65++;
      v68 = vmul_n_f32(v63, a4 - v67);
      *v62 = vadd_f32(vmla_n_f32(*v62, *v61, a4 - v67), vmul_n_f32(vmul_f32(v68, 0x3F0000003F000000), a4 - v67));
      ++v62;
      *v61++ = vadd_f32(v66, v68);
      --v64;
    }

    while (v64);
  }

LABEL_48:
  v74 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "rot");
  v75 = (*(SKCParticleSystem::getSlice(v74, __p) + 16) + 4 * v14);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 81))
  {
    v76 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
    v77 = *(SKCParticleSystem::getSlice(v76, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v78 = (v77 + 4 * v14);
      v79 = a3;
      do
      {
        SKCKeyframeSequence::sample(*(this + 81), *v78++, v75++);
        --v79;
      }

      while (v79);
    }
  }

  else if ((*(this + 935) & 0x60) != 0)
  {
    v80 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
    v81 = *(SKCParticleSystem::getSlice(v80, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v82 = (v81 + 4 * v14);
      v83 = *(this + 233);
      v84 = a3;
      do
      {
        v85 = *v82++;
        *v75 = *v75 + (v83 * (a4 - v85));
        ++v75;
        --v84;
      }

      while (v84);
    }
  }

  v86 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v87 = (*(SKCParticleSystem::getSlice(v86, __p) + 16) + 4 * v14);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 82))
  {
    v88 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
    v89 = *(SKCParticleSystem::getSlice(v88, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v90 = (v89 + 4 * v14);
      v91 = a3;
      do
      {
        SKCKeyframeSequence::sample(*(this + 82), *v90++, v87++);
        --v91;
      }

      while (v91);
    }
  }

  else
  {
    v92 = *(this + 236);
    if ((LODWORD(v92) & 0x60000000) != 0)
    {
      v93 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
      v94 = *(SKCParticleSystem::getSlice(v93, __p) + 16);
      if (SHIBYTE(v137) < 0)
      {
        operator delete(__p[0]);
      }

      if (a3 >= 1)
      {
        v95 = (v94 + 4 * v14);
        v96 = a3;
        do
        {
          v97 = *v95++;
          *v87 = fmaxf(*v87 + (v92 * (a4 - v97)), 0.0);
          ++v87;
          --v96;
        }

        while (v96);
      }
    }
  }

  v98 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  v99 = (*(SKCParticleSystem::getSlice(v98, __p) + 16) + 4 * v14);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 80))
  {
    v100 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
    v101 = *(SKCParticleSystem::getSlice(v100, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v102 = (v101 + 4 * v14);
      v103 = a3;
      do
      {
        SKCKeyframeSequence::sample(*(this + 80), *v102++, v99++);
        --v103;
      }

      while (v103);
    }
  }

  else if ((*(this + 959) & 0x60) != 0)
  {
    v104 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
    v105 = *(SKCParticleSystem::getSlice(v104, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v106 = (v105 + 4 * v14);
      v107 = *(this + 239);
      v108 = a3;
      do
      {
        v109 = *v106++;
        *v99 = *v99 + (v107 * (a4 - v109));
        ++v99;
        --v108;
      }

      while (v108);
    }
  }

  v110 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "colorBlend");
  v111 = (*(SKCParticleSystem::getSlice(v110, __p) + 16) + 4 * v14);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 79))
  {
    v112 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
    v113 = *(SKCParticleSystem::getSlice(v112, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v114 = (v113 + 4 * v14);
      v115 = a3;
      do
      {
        SKCKeyframeSequence::sample(*(this + 79), *v114++, v111++);
        --v115;
      }

      while (v115);
    }
  }

  else if ((*(this + 843) & 0x60) != 0)
  {
    v116 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
    v117 = *(SKCParticleSystem::getSlice(v116, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v118 = (v117 + 4 * v14);
      v119 = *(this + 210);
      v120 = a3;
      do
      {
        v121 = *v118++;
        *v111 = *v111 + (v119 * (a4 - v121));
        ++v111;
        --v120;
      }

      while (v120);
    }
  }

  v122 = *(this + 75);
  std::string::basic_string[abi:ne200100]<0>(__p, "color");
  v123 = (*(SKCParticleSystem::getSlice(v122, __p) + 16) + 16 * v14);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 78))
  {
    v124 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
    v125 = *(SKCParticleSystem::getSlice(v124, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v126 = (v125 + 4 * v14);
      do
      {
        SKCKeyframeSequence::sample(*(this + 78), *v126++, v123->f32);
        ++v123;
        --a3;
      }

      while (a3);
    }
  }

  else if ((*(this + 819) & 0x60) != 0 || (*(this + 823) & 0x60) != 0 || (*(this + 827) & 0x60) != 0 || (*(this + 831) & 0x60) != 0)
  {
    v127 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
    v128 = *(SKCParticleSystem::getSlice(v127, __p) + 16);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3 >= 1)
    {
      v129 = (v128 + 4 * v14);
      v130 = *(this + 51);
      do
      {
        v131 = *v129++;
        *v123 = vmlaq_n_f32(*v123, v130, a4 - v131);
        ++v123;
        --a3;
      }

      while (a3);
    }
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  __p[0] = v167;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_21C43755C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  PKCAether::Evaluator::~Evaluator((v23 - 256));
  _Unwind_Resume(a1);
}

void SKCEmitterNode::recordPrevStartPosition(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 71);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(this + 71);
    v4 = [v3 _backingNode];

    v5.i64[1] = 0x3F80000000000000;
    if (v4 != this)
    {
      v5.i64[0] = this[109];
      SKCNode::convertPointFromNode(v4, this, v5);
    }
  }

  operator new();
}

float32x4_t ___ZN14SKCEmitterNode11preSimulateEiif_block_invoke(uint64_t a1, uint64_t *lpsrc, _BYTE *a3)
{
  v6 = *lpsrc;
  {
    *a3 = 1;
  }

  else
  {
    *v8.i64 = (*(v6 + 104))(lpsrc);
    v9 = *(*(a1 + 32) + 8);
    result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v9[4].f32)), v10, v9[4], 1), v11, *v9[4].f32, 2), v12, *v9[4].f32, 3);
    *v9[4].f32 = result;
  }

  return result;
}

void SKCEmitterNode::~SKCEmitterNode(SKCEmitterNode *this)
{
  SKCEmitterNode::~SKCEmitterNode(this);

  JUMPOUT(0x21CF0A160);
}

{
  *this = &unk_282E16E88;
  WeakRetained = objc_loadWeakRetained(this + 71);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    SKCNode::removeInternalChild([WeakRetained _backingNode], *(this + 74));
  }

  objc_storeWeak(this + 71, 0);
  *(this + 174) = 0;
  v4 = *(this + 74);
  if (v4 && *(v4 + 80) == this)
  {
    *(v4 + 80) = 0;
  }

  SKCNode::removeAllChildren(this);
  v5 = *(this + 73);
  *(this + 584) = 0u;

  *(this + 174) = 0;
  v6 = *(this + 79);
  if (v6)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v6);
    MEMORY[0x21CF0A160]();
    *(this + 79) = 0;
  }

  v7 = *(this + 78);
  if (v7)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v7);
    MEMORY[0x21CF0A160]();
    *(this + 78) = 0;
  }

  v8 = *(this + 82);
  if (v8)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v8);
    MEMORY[0x21CF0A160]();
    *(this + 82) = 0;
  }

  v9 = *(this + 83);
  if (v9)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v9);
    MEMORY[0x21CF0A160]();
    *(this + 83) = 0;
  }

  v10 = *(this + 84);
  if (v10)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v10);
    MEMORY[0x21CF0A160]();
    *(this + 84) = 0;
  }

  v11 = *(this + 81);
  if (v11)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v11);
    MEMORY[0x21CF0A160]();
    *(this + 81) = 0;
  }

  v12 = *(this + 80);
  if (v12)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(v12);
    MEMORY[0x21CF0A160]();
    *(this + 80) = 0;
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 125);

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 106);
  objc_destroyWeak(this + 71);

  SKCNode::~SKCNode(this);
}

void SKCEmitterNode::setPaused(float64x2_t *this, int a2)
{
  if (BYTE4(this[10].f64[1]) != a2)
  {
    SKCNode::setPaused(this, a2);
    v4 = skCurrentTime();
    if (a2)
    {
      this[45].f64[0] = v4;
    }

    else
    {
      v5 = v4 - this[45].f64[0];
      this[44] = vaddq_f64(this[44], vdupq_lane_s64(COERCE__INT64(v5), 0));
      if ((BYTE4(this[61].f64[1]) & 1) == 0)
      {
        v6 = *&this[37].f64[1];
        std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
        v7 = *(SKCParticleSystem::getSlice(v6, __p) + 16);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *&this[37].f64[1];
        std::string::basic_string[abi:ne200100]<0>(__p, "deathTime");
        v9 = *(SKCParticleSystem::getSlice(v8, __p) + 16);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        for (i = *(*&this[37].f64[1] + 84); i; --i)
        {
          *v7 = *v7 + v5;
          ++v7;
          *v9 = *v9 + v5;
          ++v9;
        }
      }
    }
  }
}

void sub_21C437A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double SKCShapeNode::getBoundingBox(SKCShapeNode *this)
{
  if (!*(this + 70))
  {
    goto LABEL_9;
  }

  v2 = *(this + 155);
  if (v2 <= 0.0 || *(this + 147) <= 0.0)
  {
    *&v6 = CGPathGetBoundingBox(*(this + 79));
  }

  else
  {
    if (*(this + 644) == 1)
    {
      v2 = v2 + ((*(this + 156) * 2.0) + 1.7);
    }

    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(*(this + 79), 0, v2, *(this + 153), *(this + 152), *(this + 154));
    BoundingBox = CGPathGetBoundingBox(CopyByStrokingPath);
    width = BoundingBox.size.width;
    x = BoundingBox.origin.x;
    height = BoundingBox.size.height;
    y = BoundingBox.origin.y;
    CGPathRelease(CopyByStrokingPath);
    v5 = height;
    v4 = y;
    v7 = width;
    v6 = x;
  }

  v27 = v7;
  v30 = v6;
  v21 = v5;
  v24 = v4;
  if (!CGRectIsEmpty(*&v6))
  {
    v9.f64[0] = v27;
    v9.f64[1] = v21;
    v10.f64[0] = v30;
    v10.f64[1] = v24;
    *&v11 = SKCBoundingBoxMake(vcvt_hight_f32_f64(vcvt_f32_f64(v10), v9));
    v22 = v12;
    v25 = v11;
    v28 = v14;
    v31 = v13;
    (*(*this + 104))(this);
    v19 = 0;
    v32[0] = v25;
    v32[1] = v22;
    v32[2] = v31;
    v32[3] = v28;
    do
    {
      *(&v33 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v32[v19])), v16, *&v32[v19], 1), v17, v32[v19], 2), v18, v32[v19], 3);
      ++v19;
    }

    while (v19 != 4);
    return *&v33;
  }

  else
  {
LABEL_9:
    *&result = SKCNode::getBoundingBox(this).n128_u64[0];
  }

  return result;
}

id SKCShapeNode::getBatchInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 4) = 0x300000000;
  *(a3 + 12) = 1;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 60) = 0u;
  if (*(a1 + 664) || *(a1 + 604) > 0.0 || (v6 = *(a1 + 680)) != 0)
  {
    LOBYTE(v6) = *(a1 + 560) != 0;
  }

  *a3 = v6;
  *(a3 + 4) = (**a1)(a1, a2);
  BackingBlendMode = SKBlendModeGetBackingBlendMode(*(a1 + 288));
  *(a3 + 8) = 3;
  *(a3 + 12) = BackingBlendMode;
  v8 = *(a1 + 656);
  if (v8)
  {
    [v8 _backingTexture];
    *(a3 + 32) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v9 = 512;
    if (!*(a1 + 656))
    {
      v9 = 480;
    }
  }

  else
  {
    *(a3 + 32) = *(a2 + 432);
    v9 = 480;
  }

  v10 = *(a2 + v9);
  *(a3 + 40) = 0;
  *(a3 + 48) = v10;
  *(a3 + 24) = *(a2 + 168);
  result = *(a1 + 672);
  *(a3 + 16) = result;
  return result;
}

void SKCShapeNode::subclassRecomputeFlags(id *this)
{
  if ((this[82] || [this[85] _usesTimeUniform]) && (*(this + 172) & 1) == 0 && (*(this + 171) & 0x60) != 0)
  {

    SKCNode::setFlags(this, 66, 1);
  }
}

uint64_t SKCShapeNode::_NEW_quadCount(SKCShapeNode *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24) - *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  v6 = v2 >> 3;
  v7 = v6 <= 1 ? 1 : v6;
  do
  {
    v5 = SKCShapeNode::_NEW_quadCount(this, v4++) + v5;
  }

  while (v7 != v4);
  if (!*(this + 82) && *(this + 147) <= 0.0 && !*(this + 84) || *(this + 155) <= 0.0)
  {
    return 0;
  }

  return v5;
}

uint64_t SKCShapeNode::getMaxBatchRenderElementCount(SKCShapeNode *this, SKCRenderInfo *a2)
{
  if (SKCShapeNode::shouldUseLocalStrokeBuffers(this, a2))
  {
    return 0;
  }

  else
  {
    return 4 * SKCShapeNode::_NEW_quadCount(this);
  }
}

void SKCShapeNode::addRenderOps(SKCShapeNode *this, unsigned int *a2, uint64_t *a3)
{
  if (!*(this + 83) && *(this + 151) <= 0.0 && !*(this + 85))
  {
    goto LABEL_89;
  }

  v6 = *(this + 70);
  if (!v6)
  {
    goto LABEL_89;
  }

  v9 = v6 + 16;
  v7 = *(v6 + 16);
  v8 = *(v9 + 8);
  v10 = v8 - v7;
  if (v8 != v7)
  {
    v11 = 0;
    v12 = v10 >> 3;
    v13 = 1;
    do
    {
      if (*(*v7 + 24) != *(*v7 + 16))
      {
        v11 += 3 * *(*v7 + 4) * *(this + 160);
      }

      v7 += 8;
    }

    while (v12 > v13++);
    if (v11)
    {
      v15 = (v11 + 6);
      v16 = *(this + 86);
      if (!v16 || *(v16 + 4) < v15)
      {
        SKCRenderer::getBackingContext(*(a2 + 13), __p);
        if (*(this + 86))
        {
          v17 = *(this + 87);
          *(this + 43) = 0u;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v19 = (*(*__p[0] + 16))(__p[0], 0, 4, v15);
          std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(__str, v19);
        }

        v18 = (*(*__p[0] + 16))(__p[0], 2, 4, 6);
        std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(__str, v18);
      }

      jet_buffer_pool::next_buffer(v16);
      jet_buffer_pool::next_buffer(*(this + 88));
      jet_buffer_pool::next_buffer(*(this + 90));
      v20 = *(this + 86);
      data = jet_buffer_pool::get_data(v20);
      jet_buffer_pool::get_element_size(v20);
      v22 = 0;
      v23 = 0;
      v24 = xmmword_21C4B9580;
      v25 = xmmword_21C4B9590;
      v26 = 6;
      *(&v27 + 1) = 0x3F80000000000000;
      do
      {
        v28 = *(*(*(this + 70) + 16) + 8 * v22);
        v29 = *(v28 + 4);
        v30 = vaddq_f32(*(a2 + 5), vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + 2), **(v28 + 16)), *(a2 + 3), *(*(v28 + 16) + 4)), 0, *(a2 + 4)));
        v25 = vminnmq_f32(v30, v25);
        v24 = vmaxnmq_f32(v30, v24);
        if (v29)
        {
          v31 = 0;
          v32 = v30;
          do
          {
            v33 = 0;
            v34 = *(v28 + 16);
            v35 = (v34 + 8 * (3 * v31));
            v36 = *v35;
            v37 = v35[1];
            v38 = (v34 + 8 * (3 * v31 + 1));
            v39 = *v38;
            v40 = v38[1];
            v41 = (v34 + 8 * (3 * v31 + 2));
            v42 = *(a2 + 2);
            v43 = *(a2 + 3);
            v44 = *(a2 + 4);
            v45 = *(a2 + 5);
            v47.i64[0] = vaddq_f32(v45, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v42, v36), v43, v37), 0, v44)).u64[0];
            v48.i64[0] = vaddq_f32(v45, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v42, v39), v43, v40), 0, v44)).u64[0];
            v49.i64[0] = vaddq_f32(v45, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v42, *v41), v43, v41[1]), 0, v44)).u64[0];
            v46 = (v34 + 8 * (3 * v31 + 3));
            v50.i64[0] = vaddq_f32(v45, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v42, *v46), v43, v46[1]), 0, v44)).u64[0];
            v47.i64[1] = 0x3F80000000000000;
            v48.i64[1] = 0x3F80000000000000;
            v49.i64[1] = 0x3F80000000000000;
            v50.i64[1] = 0x3F80000000000000;
            *__str = xmmword_21C4B8A70;
            *&__str[16] = xmmword_21C4B95A0;
            v175 = xmmword_21C4B95B0;
            v176 = xmmword_21C4B95C0;
            do
            {
              *&__p[v33 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*&__str[v33])), v48, *&__str[v33], 1), v49, *&__str[v33], 2), v50, *&__str[v33], 3);
              v33 += 16;
            }

            while (v33 != 64);
            v51 = *(this + 160);
            if (v51)
            {
              v52 = *__p;
              v53 = v169;
              v54 = v170;
              v55 = v171;
              v56 = 1;
              v57 = v51;
              do
              {
                v58 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v52, v53, v56 / v57), v54, (v56 / v57) * (v56 / v57)), v55, (v56 / v57) * ((v56 / v57) * (v56 / v57)));
                data[v26] = v30;
                v59 = v26 + 2;
                data[v26 + 1] = v32;
                v26 += 3;
                v25 = vminnmq_f32(v58, v25);
                v24 = vmaxnmq_f32(v58, v24);
                data[v59] = v58;
                ++v56;
                v32 = v58;
                --v51;
              }

              while (v51);
            }

            else
            {
              v58 = v32;
            }

            ++v31;
            v32 = v58;
          }

          while (v31 != v29);
        }

        v22 = ++v23;
      }

      while (v12 > v23);
      v60 = v26 - 6;
      *&v61 = v25.i64[0];
      *(&v61 + 1) = 0x3F80000000000000;
      *&v62 = v24.i64[0];
      *(&v62 + 1) = 0x3F80000000000000;
      *(&v63 + 1) = 0x3F80000000000000;
      *&v63 = __PAIR64__(v24.u32[1], v25.u32[0]);
      *data = v61;
      data[1] = v62;
      *&v27 = __PAIR64__(v25.u32[1], v24.u32[0]);
      data[2] = v63;
      data[3] = v61;
      data[4] = v27;
      data[5] = v62;
      jet_buffer_pool::commit_data(*(this + 86));
      v64 = *(this + 90);
      v65 = jet_buffer_pool::get_data(v64);
      jet_buffer_pool::get_element_size(v64);
      __asm { FMOV            V1.2S, #1.0 }

      *v65 = 0;
      v65[1] = _D1;
      v65[2] = 0x3F80000000000000;
      v65[3] = 0;
      v65[4] = 1065353216;
      v65[5] = _D1;
      jet_buffer_pool::commit_data(*(this + 90));
      v71 = *(this + 37);
      v71.i32[3] = 1.0;
      v167 = v71;
      v72 = *(this + 88);
      v73 = jet_buffer_pool::get_data(v72);
      jet_buffer_pool::get_element_size(v72);
      v74 = 0;
      v75 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v167, fminf(fmaxf((*(this + 151) * *(this + 81)) * *(a2 + 24), 0.0), 1.0)), vdupq_n_s32(0x437F0000u))));
      v76 = vuzp1_s8(v75, v75).u32[0];
      do
      {
        *(v73 + v74) = v76;
        v74 += 4;
      }

      while (v74 != 24);
      jet_buffer_pool::commit_data(*(this + 88));
      v77 = *a3;
      v78 = *(a2 + 17);
      LODWORD(__p[0]) = 31;
      v79 = *(v77 + 16);
      if (v79 >= *(v77 + 24))
      {
        v80 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v77 + 8, __p);
      }

      else
      {
        *v79 = &unk_282E15828;
        *(v79 + 8) = 31;
        *(v79 + 24) = 0;
        *(v79 + 32) = 0;
        *(v79 + 16) = 0;
        *(v79 + 64) = 0;
        v80 = v79 + 192;
        *(v79 + 96) = 0;
      }

      *(v77 + 16) = v80;
      *(v80 - 80) = v78;
      *(v80 - 64) = xmmword_21C4B8520;
      *(v80 - 48) = 0x2300000000;
      v81 = *a3;
      std::string::basic_string[abi:ne200100]<0>(__p, "a_position");
      current_buffer = jet_buffer_pool::get_current_buffer(*(this + 86));
      jet_command_buffer::set_vertex_buffer(v81, __p, current_buffer);
      if (v169.i8[7] < 0)
      {
        operator delete(__p[0]);
      }

      jet_command_buffer::use_depth_stencil_mode(*a3, *(a2 + 66));
      jet_command_buffer::set_stencil_reference_value(*a3, 1);
      jet_command_buffer::draw(*a3, 3, 0, 6);
      v83 = *(a2 + 83);
      ++*(v83 + 164);
      ++*(v83 + 148);
      jet_command_buffer::use_depth_stencil_mode(*a3, *(a2 + 66));
      jet_command_buffer::set_stencil_reference_value(*a3, 0);
      jet_command_buffer::draw(*a3, 3, 6, v60);
      v84 = *(a2 + 83);
      ++*(v84 + 164);
      *(v84 + 148) += v60 / 6;
      v86 = *(a2 + 21);
      v85 = *(a2 + 22);
      if (v85)
      {
        atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v87 = *(this + 85);
      if (v87)
      {
        [v87 _backingProgram];
        v89 = __p[0];
        v88 = __p[1];
        if (__p[0])
        {
          if (__p[1])
          {
            atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
          }

          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          v90 = 0;
          v85 = v88;
          v86 = v89;
LABEL_49:
          v91 = *a3;
          BackingBlendMode = SKBlendModeGetBackingBlendMode(*(this + 36));
          LODWORD(__p[0]) = 31;
          v93 = *(v91 + 16);
          if (v93 >= *(v91 + 24))
          {
            v94 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v91 + 8, __p);
          }

          else
          {
            *v93 = &unk_282E15828;
            *(v93 + 8) = 31;
            *(v93 + 24) = 0;
            *(v93 + 32) = 0;
            *(v93 + 16) = 0;
            *(v93 + 64) = 0;
            v94 = v93 + 192;
            *(v93 + 96) = 0;
          }

          *(v91 + 16) = v94;
          *(v94 - 80) = v86;
          *(v94 - 64) = BackingBlendMode;
          *(v94 - 60) = xmmword_21C4B9130;
          *(v94 - 44) = 35;
          jet_command_buffer::use_depth_stencil_mode(*a3, *(a2 + 70));
          jet_command_buffer::set_stencil_reference_value(*a3, 0);
          v95 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "a_position");
          v96 = jet_buffer_pool::get_current_buffer(*(this + 86));
          jet_command_buffer::set_vertex_buffer(v95, __p, v96);
          if (v169.i8[7] < 0)
          {
            operator delete(__p[0]);
          }

          v97 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "a_color");
          v98 = jet_buffer_pool::get_current_buffer(*(this + 88));
          jet_command_buffer::set_vertex_buffer(v97, __p, v98);
          if (v169.i8[7] < 0)
          {
            operator delete(__p[0]);
          }

          v99 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "a_tex_coord");
          v100 = jet_buffer_pool::get_current_buffer(*(this + 90));
          jet_command_buffer::set_vertex_buffer(v99, __p, v100);
          if (v169.i8[7] < 0)
          {
            operator delete(__p[0]);
          }

          v101 = *a3;
          if (*(this + 83))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
            v102 = *(this + 83);
            if (v102)
            {
              [v102 _backingTexture];
              v103 = *__str;
            }

            else
            {
              v103 = 0;
              *__str = 0uLL;
            }

            jet_command_buffer::set_fragment_texture(v101, __p, v103);
            if (*&__str[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&__str[8]);
            }

            if (v169.i8[7] < 0)
            {
              operator delete(__p[0]);
            }

            v105 = [*(this + 83) filteringMode];
            v104 = 116;
            if (v105 == 1)
            {
              v104 = 120;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
            jet_command_buffer::set_fragment_texture(v101, __p, *(a2 + 54));
            if (v169.i8[7] < 0)
            {
              operator delete(__p[0]);
            }

            v104 = 120;
          }

          v106 = *&a2[v104];
          v107 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
          jet_command_buffer::set_fragment_sampler(v107, __p, v106);
          if (v169.i8[7] < 0)
          {
            operator delete(__p[0]);
            if (v90)
            {
LABEL_85:
              jet_command_buffer::draw(*a3, 3, 0, 6);
              v118 = *(a2 + 83);
              ++*(v118 + 164);
              ++*(v118 + 148);
              jet_command_buffer::use_depth_stencil_mode(*a3, 0);
              if (v85)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v85);
              }

              if (v88)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v88);
              }

LABEL_89:
              if (!SKCShapeNode::shouldUseLocalStrokeBuffers(this, a2))
              {
                return;
              }

              v119 = 4 * SKCShapeNode::_NEW_quadCount(this);
              SKCRenderer::getBackingContext(*(a2 + 13), &v172);
              v120 = *(this + 92);
              if (!v120)
              {
                goto LABEL_98;
              }

              if (*(v120 + 4) < v119)
              {
                v121 = *(this + 93);
                v122 = 0uLL;
                *(this + 46) = 0u;
                if (v121)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v121);
                  v122 = 0uLL;
                }

                v123 = *(this + 95);
                *(this + 47) = v122;
                if (v123)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v123);
                }

                v124 = *(this + 97);
                *(this + 48) = 0u;
                if (v124)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v124);
                }

LABEL_98:
                v125 = (*(*v172 + 16))(v172, 2, 4, v119);
                std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(__p, v125);
              }

              jet_buffer_pool::next_buffer(v120);
              jet_buffer_pool::next_buffer(*(this + 94));
              jet_buffer_pool::next_buffer(*(this + 96));
              v126 = SKCShapeNode::_NEW_copyRenderPathData(this, a2, *(this + 84) != 0, 1);
              jet_buffer_pool::commit_data(*(this + 92));
              jet_buffer_pool::commit_data(*(this + 94));
              jet_buffer_pool::commit_data(*(this + 96));
              (*(*this + 24))(__p, this, a2);
              if (v126 < 1)
              {
                goto LABEL_166;
              }

              if (v169.i64[0])
              {
                [v169.i64[0] _backingProgram];
                v127 = *&__str[8];
                if (*__str)
                {
                  v128 = 0;
                  v169.i64[1] = *__str;
                  goto LABEL_105;
                }
              }

              else
              {
                v127 = 0;
              }

              v128 = 1;
LABEL_105:
              if (a2[144])
              {
                v129 = v169.i64[1];
                v130 = *a3;
                if (v169.i64[1] == *(a2 + 21))
                {
                  v129 = *(a2 + 23);
                  *__str = 31;
                  v131 = *(v130 + 16);
                  if (v131 >= *(v130 + 24))
                  {
                    v132 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v130 + 8, __str);
                  }

                  else
                  {
                    *v131 = &unk_282E15828;
                    *(v131 + 8) = 31;
                    *(v131 + 24) = 0;
                    *(v131 + 32) = 0;
                    *(v131 + 16) = 0;
                    *(v131 + 64) = 0;
                    v132 = v131 + 192;
                    *(v131 + 96) = 0;
                  }

                  *(v130 + 16) = v132;
                  v133 = 1;
                  goto LABEL_114;
                }
              }

              else
              {
                v130 = *a3;
                v129 = v169.i64[1];
              }

              v133 = HIDWORD(__p[1]);
              *__str = 31;
              v134 = *(v130 + 16);
              if (v134 >= *(v130 + 24))
              {
                v132 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v130 + 8, __str);
              }

              else
              {
                *v134 = &unk_282E15828;
                *(v134 + 8) = 31;
                *(v134 + 24) = 0;
                *(v134 + 32) = 0;
                *(v134 + 16) = 0;
                *(v134 + 64) = 0;
                v132 = v134 + 192;
                *(v134 + 96) = 0;
              }

              *(v130 + 16) = v132;
LABEL_114:
              *(v132 - 80) = v129;
              *(v132 - 64) = v133;
              *(v132 - 60) = xmmword_21C4B9130;
              *(v132 - 44) = 3;
              v135 = *a3;
              if (v170)
              {
                std::string::basic_string[abi:ne200100]<0>(__str, "u_texture");
                jet_command_buffer::set_fragment_texture(v135, __str, v170);
                if ((__str[23] & 0x80000000) != 0)
                {
                  operator delete(*__str);
                }

                v136 = *a3;
                if (v171)
                {
                  std::string::basic_string[abi:ne200100]<0>(__str, "u_texture");
                  jet_command_buffer::set_fragment_sampler(v136, __str, v171);
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(__str, "u_texture");
                  jet_command_buffer::set_fragment_sampler(v136, __str, *(a2 + 60));
                }
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(__str, "u_texture");
                jet_command_buffer::set_fragment_texture(v135, __str, *(a2 + 54));
                if ((__str[23] & 0x80000000) != 0)
                {
                  operator delete(*__str);
                }

                v137 = *a3;
                std::string::basic_string[abi:ne200100]<0>(__str, "u_texture");
                jet_command_buffer::set_fragment_sampler(v137, __str, *(a2 + 60));
              }

              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }

              if (*(&v170 + 1))
              {
                v138 = *a3;
                std::string::basic_string[abi:ne200100]<0>(__str, "u_texture2");
                jet_command_buffer::set_fragment_texture(v138, __str, *(&v170 + 1));
                if ((__str[23] & 0x80000000) != 0)
                {
                  operator delete(*__str);
                }

                v139 = *a3;
                if (*(&v171 + 1))
                {
                  std::string::basic_string[abi:ne200100]<0>(__str, "u_texture2");
                  jet_command_buffer::set_fragment_sampler(v139, __str, *(&v171 + 1));
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(__str, "u_texture2");
                  jet_command_buffer::set_fragment_sampler(v139, __str, *(a2 + 60));
                }

                if ((__str[23] & 0x80000000) != 0)
                {
                  operator delete(*__str);
                }
              }

              v140 = *a3;
              std::string::basic_string[abi:ne200100]<0>(__str, "a_position");
              v141 = jet_buffer_pool::get_current_buffer(*(this + 92));
              jet_command_buffer::set_vertex_buffer(v140, __str, v141);
              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }

              v142 = *a3;
              std::string::basic_string[abi:ne200100]<0>(__str, "a_color");
              v143 = jet_buffer_pool::get_current_buffer(*(this + 94));
              jet_command_buffer::set_vertex_buffer(v142, __str, v143);
              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }

              v144 = *a3;
              std::string::basic_string[abi:ne200100]<0>(__str, "a_tex_coord");
              v145 = jet_buffer_pool::get_current_buffer(*(this + 96));
              jet_command_buffer::set_vertex_buffer(v144, __str, v145);
              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
                if (v128)
                {
LABEL_153:
                  v155 = v126 >> 2;
                  v156 = 6 * (v126 >> 2);
                  if (v126 >> 3 >= 0x683)
                  {
                    v157 = v156 + 1;
                  }

                  else
                  {
                    v157 = 20000;
                  }

                  v158 = *(a2 + 52);
                  if (!v158 || *(v158 + 48) < v157)
                  {
                    v159 = (*(*v172 + 8))(v172, 4, 1, v157, 0);
                    std::shared_ptr<jet_buffer>::shared_ptr[abi:ne200100]<jet_buffer,0>(__str, v159);
                  }

                  std::vector<std::shared_ptr<jet_buffer>>::push_back[abi:ne200100](a2 + 84, a2 + 26);
                  v160 = *a3;
                  v161 = __p[1];
                  v162 = *(a2 + 52);
                  *__str = 4;
                  v163 = *(v160 + 16);
                  if (v163 >= *(v160 + 24))
                  {
                    v164 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v160 + 8, __str);
                  }

                  else
                  {
                    *v163 = &unk_282E15828;
                    *(v163 + 8) = 4;
                    *(v163 + 24) = 0;
                    *(v163 + 32) = 0;
                    *(v163 + 16) = 0;
                    *(v163 + 64) = 0;
                    v164 = v163 + 192;
                    *(v163 + 96) = 0;
                  }

                  *(v160 + 16) = v164;
                  *(v164 - 80) = v162;
                  *(v164 - 64) = v161;
                  *(v164 - 60) = 0;
                  *(v164 - 56) = v156;
                  v165 = *(a2 + 83);
                  v166 = v165[41];
                  v165[41] = v166 + 1;
                  v165[37] += v155;
                  if ((*(a2 + 581) & 0x10) != 0)
                  {
                    NSLog(&cfstr_SkcrendererPPa.isa, this, v165[42], v166, (SHIDWORD(__p[0]) / 4), v169.i64[1], v170, HIDWORD(__p[1]));
                  }

                  if (v127)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v127);
                  }

LABEL_166:

                  if (v173)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v173);
                  }

                  return;
                }
              }

              else if (v128)
              {
                goto LABEL_153;
              }

              v146 = *a3;
              if (v169.i64[0])
              {
                [v169.i64[0] _commandsForBatchOffset:*a2 count:v126];
                v147 = *__str;
              }

              else
              {
                v147 = 0;
                *__str = 0uLL;
              }

              jet_command_buffer::add_command_buffer(v146, v147);
              if (*&__str[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&__str[8]);
              }

              {
                SKCShapeNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime = skCurrentTime();
              }

              v148 = skCurrentTime();
              v149 = *&SKCShapeNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime;
              v150 = *a3;
              std::string::basic_string[abi:ne200100]<0>(__str, "u_time");
              v151 = v148 - v149;
              v152 = fmodf(v151, 43200.0);
              jet_command_buffer::set_fragment_constant_value(v150, __str, v152);
              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }

              v153 = *a3;
              std::string::basic_string[abi:ne200100]<0>(__str, "u_path_length");
              v154 = *(this + 162);
              if (v154 < 0.0)
              {
                v154 = 0.0;
              }

              jet_command_buffer::set_fragment_constant_value(v153, __str, v154);
              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }

              goto LABEL_153;
            }
          }

          else if (v90)
          {
            goto LABEL_85;
          }

          v108 = [*(this + 85) attributes];
          v109 = [v108 count];

          if (v109)
          {
            (*(*this + 40))(this, a2, *(this + 85), 6, 0);
          }

          v110 = *a3;
          v111 = *(this + 85);
          if (v111)
          {
            [v111 _commandsForBatchOffset:0 count:6];
            v112 = __p[0];
          }

          else
          {
            v112 = 0;
            __p[0] = 0;
            __p[1] = 0;
          }

          jet_command_buffer::add_command_buffer(v110, v112);
          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }

          {
            SKCShapeNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime = skCurrentTime();
          }

          v113 = skCurrentTime();
          v114 = *&SKCShapeNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime;
          v115 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "u_time");
          v116 = v113 - v114;
          v117 = fmodf(v116, 43200.0);
          jet_command_buffer::set_fragment_constant_value(v115, __p, v117);
          if (v169.i8[7] < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v88 = 0;
      }

      v90 = 1;
      goto LABEL_49;
    }
  }
}

void sub_21C4394A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

uint64_t jet_command_buffer::draw(uint64_t a1, int a2, int a3, int a4)
{
  v10 = 3;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v10);
  }

  else
  {
    *v8 = &unk_282E15828;
    *(v8 + 8) = 3;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 64) = 0;
    result = v8 + 192;
    *(v8 + 96) = 0;
  }

  *(a1 + 16) = result;
  *(result - 64) = a2;
  *(result - 60) = a3;
  *(result - 56) = a4;
  return result;
}

jet_command_buffer *jet_command_buffer::add_command_buffer(jet_command_buffer *this, jet_command_buffer *a2)
{
  if (a2)
  {
    return std::vector<jet_render_op>::__insert_with_size[abi:ne200100]<std::__wrap_iter<jet_render_op*>,std::__wrap_iter<jet_render_op*>>(this + 1, *(this + 2), *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 6));
  }

  return this;
}

uint64_t SKCShapeNode::_NEW_copyRenderPathData(SKCShapeNode *this, float32x4_t *a2, char a3, int a4)
{
  if (!*(this + 70))
  {
    return 0;
  }

  v8 = *(this + 155);
  v9 = *(this + 644);
  v10 = fmaxf(fminf(v8 * 1.5, 1.7), 1.3);
  if (!v9)
  {
    v10 = 0.0;
  }

  v11 = v10 / a2[8].f32[0];
  v137.i64[1] = a2;
  v143 = vrev64_s32(*(this + 608));
  v12 = (v8 * 0.5) + v11 * -0.66;
  v13 = fmaxf(v12, 0.1);
  v14 = *(this + 156);
  v150 = *(this + 154) * v8;
  v149 = v14 + v11;
  v147 = v9;
  v144 = *(this + 160);
  v15 = 1.0;
  v146 = v13 + v13;
  v145 = 1.0 / v144;
  v153 = *(this + 36);
  v154 = fminf(fmaxf(vmuls_lane_f32(a2[6].f32[0] * *(this + 81), v153, 3), 0.0), 1.0);
  v156 = 0;
  v16 = *(this + 82);
  if (v16)
  {
    [v16 pixelSize];
    v18 = v17;
    [*(this + 82) pixelSize];
    v15 = v18 / v19;
  }

  if (a4)
  {
    v20 = *(this + 92);
    data = jet_buffer_pool::get_data(v20);
    jet_buffer_pool::get_element_size(v20);
    v141 = data;
    v22 = *(this + 94);
    v23 = jet_buffer_pool::get_data(v22);
    jet_buffer_pool::get_element_size(v22);
    v139 = v23;
    v24 = *(this + 96);
    v25 = jet_buffer_pool::get_data(v24);
    jet_buffer_pool::get_element_size(v24);
    v26 = 0.0;
  }

  else
  {
    v25 = a2[1].i64[0];
    v28 = a2->i64[1];
    v141 = a2[1].i64[1];
    v139 = v28;
    v26 = a2->f32[0];
  }

  v140 = v25;
  v138 = v26;
  v151 = v15 * *(this + 155);
  v148 = a3;
  v29 = *(*(this + 70) + 24) - *(*(this + 70) + 16);
  if (!v29)
  {
    result = 0;
    *(this + 162) = 0;
    return result;
  }

  v126 = v26;
  v127 = a3;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v29 >> 3;
  v128 = vdupq_n_s32(0x437F0000u);
  do
  {
    v34 = *(*(*(this + 70) + 16) + 8 * v30);
    v35 = *(v34 + 4);
    if ((*(v34 + 1) & (v35 == 2)) != 0)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    if ((v36 + 1) > 3)
    {
      v37 = *(v34 + 1);
    }

    else
    {
      v37 = 0;
    }

    if (*(v34 + 24) != *(v34 + 16))
    {
      v137.i64[0] = v34;
      v142 = v36 + 1;
      if (v147)
      {
        v38 = 12;
      }

      else
      {
        v38 = 4;
      }

      v155 = v38;
      v152 = v37;
      calculateVectorsForCurve(&v137, 0, &v131, &v129);
      v157 = v131;
      v158 = v132;
      v40 = vmul_f32(*(&v131 + 8), *(&v131 + 8));
      v40.i32[0] = vadd_f32(v40, vdup_lane_s32(v40, 1)).u32[0];
      v41 = vrsqrte_f32(v40.u32[0]);
      v42 = vmul_f32(v41, vrsqrts_f32(v40.u32[0], vmul_f32(v41, v41)));
      *&v157 = **(v34 + 16);
      *(&v157 + 1) = vmul_f32(vmul_n_f32(vmul_n_f32(*(&v131 + 8), vmul_f32(v42, vrsqrts_f32(v40.u32[0], vmul_f32(v42, v42))).f32[0]), v146), 0x3F0000003F000000);
      if (v36)
      {
        v43 = 0;
        v44 = 3;
        do
        {
          addCurve(&v137, v43);
          if (v43 < (v36 - 1))
          {
            calculateVectorsForCurve(&v137, v43 + 1, &v135, &v133);
            addJoin(&v137, *(*(v34 + 16) + 8 * v44), *&v129, *(&v129 + 1), v130, *&v135, *(&v135 + 1), v136);
          }

          ++v43;
          v131 = v135;
          v132 = v136;
          v129 = v133;
          v130 = v134;
          v44 += 3;
        }

        while (v36 != v43);
        calculateVectorsForCurve(&v137, v36 - 1, &v131, &v129);
      }

      v159 = v129;
      v160 = v130;
      v45 = vmul_f32(*(&v129 + 8), *(&v129 + 8));
      v45.i32[0] = vadd_f32(v45, vdup_lane_s32(v45, 1)).u32[0];
      v46 = vrsqrte_f32(v45.u32[0]);
      v47 = vmul_f32(v46, vrsqrts_f32(v45.u32[0], vmul_f32(v46, v46)));
      v39.n128_u64[0] = vmul_f32(v47, vrsqrts_f32(v45.u32[0], vmul_f32(v47, v47)));
      v48 = vmul_n_f32(*(&v129 + 8), v39.n128_f32[0]);
      v39.n128_f32[0] = v146;
      v49 = COERCE_DOUBLE(vmul_f32(vmul_n_f32(v48, v146), 0x3F0000003F000000));
      *&v159 = *(*(v34 + 16) + 8 * (3 * v36));
      *(&v159 + 1) = v49;
      if (v37)
      {
        v50 = v157;
        if (v147 == 1)
        {
          v51 = vmul_f32(v158, v158);
          v51.i32[0] = vadd_f32(v51, vdup_lane_s32(v51, 1)).u32[0];
          v52 = vrsqrte_f32(v51.u32[0]);
          v53 = vmul_f32(v52, vrsqrts_f32(v51.u32[0], vmul_f32(v52, v52)));
          v54 = vmul_n_f32(vmul_n_f32(v158, vmul_f32(v53, vrsqrts_f32(v51.u32[0], vmul_f32(v53, v53))).f32[0]), v149 + (v146 * 0.5));
          v55 = vadd_f32(v158, *&v157);
          v56 = v153;
          v57 = v128;
          *(&v59 + 1) = 0x3F80000000000000;
          v58 = LODWORD(v138);
          v56.i32[3] = 1.0;
          *v56.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v56, v154), v128)));
          *(v141 + 16 * LODWORD(v138)) = v59;
          *(v139 + 4 * v58) = vuzp1_s8(*v56.f32, v55).u32[0];
          *(v140 + 8 * v58) = 0x3F80000000000000;
          *&v59 = vadd_f32(v54, *&v157);
          v60 = v153;
          v61 = LODWORD(v138);
          if (v148)
          {
            v62 = 0.0;
          }

          else
          {
            v62 = 1.0;
          }

          DWORD2(v59) = 0;
          *(&v59 + 3) = v62;
          v60.i32[3] = 1.0;
          *(v141 + 16 * (LODWORD(v138) + 1)) = v59;
          *(v139 + 4 * (v61 + 1)) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v60, 0), v128))), *&v59).u32[0];
          *(v140 + 8 * (v61 + 1)) = 0x3F80000000000000;
          *&v63 = vsub_f32(*&v157, v54);
          v64 = v153;
          v65 = LODWORD(v138);
          if (v148)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = 1.0;
          }

          DWORD2(v63) = 0;
          *(&v63 + 3) = v66;
          v64.i32[3] = 1.0;
          *(v141 + 16 * (LODWORD(v138) + 4)) = v63;
          v67 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v64, 0), v128)));
          *(v139 + 4 * (v65 + 4)) = vuzp1_s8(v67, v67).u32[0];
          *(v140 + 8 * (v65 + 4)) = 0;
          *&v68 = vsub_f32(*&v157, v158);
          v69 = v153;
          *(&v68 + 1) = 0x3F80000000000000;
          v69.i32[3] = 1.0;
          v70 = LODWORD(v138) + 5;
          *v69.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v69, v154), v128)));
          *(v141 + 16 * v70) = v68;
          *(v139 + 4 * v70) = vuzp1_s8(*v69.f32, *&v68).u32[0];
          *(v140 + 8 * v70) = 0;
          v50 = v157;
          v71 = 8;
        }

        else
        {
          v71 = 0;
          v57 = v128;
        }

        *&v72 = vsub_f32(v50, v158);
        v73 = v153;
        v74 = LODWORD(v138);
        if (v148)
        {
          v75 = 0.0;
        }

        else
        {
          v75 = 1.0;
        }

        DWORD2(v72) = 0;
        *(&v72 + 3) = v75;
        v73.i32[3] = 1.0;
        v76 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v73, v154), v57)));
        *(v141 + 16 * (LODWORD(v138) + v71)) = v72;
        *(v139 + 4 * (v74 + v71)) = vuzp1_s8(v76, *&v72).u32[0];
        *(v140 + 8 * (v74 + v71)) = 0;
        *&v77 = vadd_f32(*&v157, v158);
        v78 = v153;
        if (v148)
        {
          v79 = 0.0;
        }

        else
        {
          v79 = 1.0;
        }

        DWORD2(v77) = 0;
        *(&v77 + 3) = v79;
        v78.i32[3] = 1.0;
        v80 = LODWORD(v138) + v71 + 1;
        v81 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v78, v154), v57)));
        *(v141 + 16 * v80) = v77;
        *(v139 + 4 * v80) = vuzp1_s8(v81, *&v77).u32[0];
        *(v140 + 8 * v80) = 0x3F80000000000000;
        addJoin(&v137, **(v34 + 16), *&v159, *(&v159 + 1), v160, *&v157, *(&v157 + 1), v158);
        if (v147 == 1)
        {
          v82 = vmul_f32(v158, v158);
          v82.i32[0] = vadd_f32(v82, vdup_lane_s32(v82, 1)).u32[0];
          v83 = vrsqrte_f32(v82.u32[0]);
          v84 = vmul_f32(v83, vrsqrts_f32(v82.u32[0], vmul_f32(v83, v83)));
          v85 = vmul_n_f32(vmul_n_f32(v158, vmul_f32(v84, vrsqrts_f32(v82.u32[0], vmul_f32(v84, v84))).f32[0]), v149 + (v146 * 0.5));
          v86 = (v155 - 10);
          *&v87 = vadd_f32(*&v157, v85);
          v88 = *&v156;
          v89 = v153;
          v90 = LODWORD(v138);
          if (!v148)
          {
            v88 = 1.0;
          }

          DWORD2(v87) = 0;
          *(&v87 + 3) = v88;
          v89.i32[3] = 1.0;
          *(v141 + 16 * (LODWORD(v138) + v86)) = v87;
          *(v139 + 4 * (v90 + v86)) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v89, 0), v128))), v85).u32[0];
          *(v140 + 8 * (v90 + v86)) = 0x3F80000000000000;
          v91 = (v155 - 9);
          *&v92 = vadd_f32(*&v157, v158);
          v93 = *&v156;
          v94 = v153;
          v95 = LODWORD(v138);
          if (!v148)
          {
            v93 = 1.0;
          }

          DWORD2(v92) = 0;
          *(&v92 + 3) = v93;
          v94.i32[3] = 1.0;
          v96 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v94, v154), v128));
          *(v141 + 16 * (LODWORD(v138) + v91)) = v92;
          *(v139 + 4 * (v95 + v91)) = vuzp1_s8(vmovn_s32(v96), v85).u32[0];
          *(v140 + 8 * (v95 + v91)) = 0x3F80000000000000;
          v97 = (v155 - 6);
          *&v98 = vsub_f32(*&v157, v158);
          v99 = *&v156;
          v100 = v153;
          v101 = LODWORD(v138);
          if (!v148)
          {
            v99 = 1.0;
          }

          DWORD2(v98) = 0;
          *(&v98 + 3) = v99;
          v100.i32[3] = 1.0;
          v102 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v100, v154), v128)));
          *(v141 + 16 * (LODWORD(v138) + v97)) = v98;
          *(v139 + 4 * (v101 + v97)) = vuzp1_s8(v102, v85).u32[0];
          *(v140 + 8 * (v101 + v97)) = 0;
          v103 = (v155 - 5);
          *&v104 = vsub_f32(*&v157, v85);
          v105 = *&v156;
          v106 = v153;
          v107 = LODWORD(v138);
          if (!v148)
          {
            v105 = 1.0;
          }

          v108 = LODWORD(v138) + v103;
          DWORD2(v104) = 0;
          *(&v104 + 3) = v105;
          v106.i32[3] = 1.0;
          *(v141 + 16 * v108) = v104;
          *(v139 + 4 * (v107 + v103)) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v106, 0), v128))), *&v104).u32[0];
          *(v140 + 8 * v108) = 0;
        }

        v109 = (v155 - 2);
        *&v110 = vadd_f32(*&v157, v158);
        v111 = *&v156;
        v112 = v153;
        v113 = LODWORD(v138);
        if (!v148)
        {
          v111 = 1.0;
        }

        DWORD2(v110) = 0;
        *(&v110 + 3) = v111;
        v112.i32[3] = 1.0;
        v114 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v112, v154), v128));
        *(v141 + 16 * (LODWORD(v138) + v109)) = v110;
        *&v116 = vmovn_s32(v114);
        *(v139 + 4 * (v113 + v109)) = vuzp1_s8(*&v116, *&v116).u32[0];
        *(v140 + 8 * (v113 + v109)) = 0x3F80000000000000;
        v115 = (v155 - 1);
        *&v116 = vsub_f32(*&v157, v158);
        v117 = *&v156;
        v118 = v153;
        v119 = LODWORD(v138);
        if (!v148)
        {
          v117 = 1.0;
        }

        DWORD2(v116) = 0;
        *(&v116 + 3) = v117;
        v120 = LODWORD(v138) + v115;
        v118.i32[3] = 1.0;
        v121 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v118, v154), v128)));
        *(v141 + 16 * v120) = v116;
        *(v139 + 4 * (v119 + v115)) = vuzp1_s8(v121, *&v116).u32[0];
        *(v140 + 8 * v120) = 0;
      }

      else
      {
        addCaps(&v137, v49, v39, *&v47);
      }

      v31 += v155;
      LODWORD(v138) += v155;
    }

    v30 = ++v32;
  }

  while (v33 > v32);
  v122 = v141;
  *(this + 162) = v156;
  v123 = (v122 + 16 * LODWORD(v126));
  result = v31;
  if (v127)
  {
    if (v31)
    {
      v124 = 0;
      do
      {
        v125 = vaddq_f32(a2[5], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[2], COERCE_FLOAT(*v123[2 * v124].f32)), a2[3], v123[2 * v124], 1), a2[4], *v123[2 * v124].f32, 2));
        v125.i32[3] = HIDWORD(*v123[2 * v124].f32);
        *v123[2 * v124++].f32 = v125;
      }

      while (v31 != v124);
      return result;
    }

    return 0;
  }

  if (!v31)
  {
    return 0;
  }

  do
  {
    *v123->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[2], COERCE_FLOAT(*v123->f32)), a2[3], *v123, 1), a2[4], *v123->f32, 2), a2[5], *v123->f32, 3);
    v123 += 2;
    --v31;
  }

  while (v31);
  return result;
}

uint64_t SKCShapeNode::addBatchRenderElements(SKCShapeNode *this, SKCRenderInfo *a2)
{
  if (!*(this + 82) && *(this + 147) <= 0.0 && !*(this + 84) || *(this + 155) <= 0.0 || !*(this + 70) || SKCShapeNode::shouldUseLocalStrokeBuffers(this, a2))
  {
    return 0;
  }

  v5 = *(this + 84) != 0;

  return SKCShapeNode::_NEW_copyRenderPathData(this, a2, v5, 0);
}

float32x2_t sk_vector_rotate(double a1, float a2)
{
  cosval = __sincosf_stret(a2).__cosval;
  v3.f32[0] = -*(&a1 + 1);
  v3.f32[1] = cosval;
  return vmla_n_f32(vmul_f32(*&a1, v3), vext_s8(v3, *&a1, 4uLL), *&a1);
}

double sk_vert_write(void *a1, int a2, uint64_t a3, __n128 a4, double a5, float a6, float32x4_t a7, float a8, double a9, float a10)
{
  if (!a2)
  {
    a6 = 1.0;
  }

  v10 = *a1 + a3;
  a4.n128_u32[2] = 0;
  a4.n128_f32[3] = a6;
  a7.i32[3] = 1.0;
  *(a1[3] + 16 * v10) = a4;
  a4.n128_u64[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(a7, a8), vdupq_n_s32(0x437F0000u)))), a4.n128_u64[0]);
  *(a1[1] + 4 * v10) = a4.n128_u32[0];
  *(&a9 + 1) = a10;
  *(a1[2] + 8 * v10) = a9;
  return a4.n128_f64[0];
}

uint64_t SKCShapeNode::_NEW_quadCount(SKCShapeNode *this, unsigned int a2)
{
  v2 = *(*(*(this + 70) + 16) + 8 * a2);
  v3 = *(v2 + 4);
  v4 = *(v2 + 8);
  v5 = *(v2 + 1);
  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 3;
  }

  if ((v5 & (v3 == 2)) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3 + 1;
  }

  v8 = ((v7 + ~v4) & ~((v7 + ~v4) >> 31)) * *(this + 160);
  if (v7 <= 3)
  {
    v5 = 0;
  }

  v9 = v7 + v5;
  if (v9 <= 2)
  {
    v9 = 2;
  }

  v10 = v9 - 2;
  v11 = v8 + 2 * (v9 - 2) + 1;
  v12 = *(this + 152);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = (*(this + 155) + (*(this + 156) * 2.0)) * 0.14;
      v11 = (v11 + (v10 * ((ceilf(v13) * 2.0) + 2.0)));
    }

    else
    {
      v11 += 2 * v10;
    }
  }

  if (*(this + 153) == 1)
  {
    v14 = (*(this + 155) + (*(this + 156) * 2.0)) * 0.14;
    v11 = (v11 + (((ceilf(v14) * 2.0) + 2.0) * 2.0));
  }

  if (*(this + 644))
  {
    return (3 * v11);
  }

  else
  {
    return v11;
  }
}

uint64_t *getElementsForCurve(uint64_t *result, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result)
  {
    v6 = *result;
    if (*result)
    {
      if (*(v6 + 4) > a2)
      {
        v7 = *(v6 + 16);
        v8 = *(v7 + 24 * a2);
        v9 = *(v7 + 8 * (3 * a2 + 1));
        v10 = *(v7 + 8 * (3 * a2 + 2));
        v11 = *(v7 + 8 * (3 * a2 + 3));
LABEL_5:
        *a3 = v8;
        *a4 = v9;
        *a5 = v10;
        *a6 = v11;
        return result;
      }

      if (!a2)
      {
        v13 = v6 + 16;
        v12 = *(v6 + 16);
        if (*(v13 + 8) != v12)
        {
          v8 = *v12;
          v9 = *v12;
          v10 = *v12;
          v11 = *v12;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

uint64_t curveIsLinear(double a1, double a2, double a3, double a4)
{
  if ((COERCE_UNSIGNED_INT(fabsf((((*(&a3 + 1) - *(&a1 + 1)) * *&a2) + (*&a1 * (*(&a2 + 1) - *(&a3 + 1)))) + (*&a3 * (*(&a1 + 1) - *(&a2 + 1)))) + -0.002) & 0x80000000) != 0)
  {
    return COERCE_UNSIGNED_INT(fabsf(((*&a3 * (*(&a4 + 1) - *(&a2 + 1))) + (*&a2 * (*(&a3 + 1) - *(&a4 + 1)))) + (*&a4 * (*(&a2 + 1) - *(&a3 + 1)))) + -0.002) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t *calculateVectorsForCurve(uint64_t *result, unsigned int a2, float32x2_t *a3, float32x2_t *a4)
{
  v6 = result;
  if (!a2)
  {
    v7 = *(*result + 16);
    if (*(*result + 24) - v7 == 8)
    {
      v8 = *v7;
      *a3 = *v7;
      a3[1] = 1065353216;
      v9.i32[0] = 0;
      v9.f32[1] = *(result + 36) * 0.5;
      a3[2] = v9;
      *a4 = v8;
LABEL_12:
      a4[1] = a3[1];
      v50 = a3[2];
      goto LABEL_13;
    }
  }

  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  result = getElementsForCurve(result, a2, &v59, &v58, &v57, &v56);
  v10 = v59;
  v11 = v56;
  if ((COERCE_UNSIGNED_INT(fabsf((((*(&v57 + 1) - v59.f32[1]) * *&v58) + (v59.f32[0] * (*(&v58 + 1) - *(&v57 + 1)))) + (*&v57 * (v59.f32[1] - *(&v58 + 1)))) + -0.002) & 0x80000000) != 0 && (COERCE_UNSIGNED_INT(fabsf(((*&v57 * (v56.f32[1] - *(&v58 + 1))) + (*&v58 * (*(&v57 + 1) - v56.f32[1]))) + (v56.f32[0] * (*(&v58 + 1) - *(&v57 + 1)))) + -0.002) & 0x80000000) != 0)
  {
    v51 = vsub_f32(v56, v59);
    *a3 = v56;
    a3[1] = v51;
    v11.f32[0] = -*&v51.i32[1];
    v52 = vzip1_s32(v11, v51);
    v53 = vmul_f32(v52, v52);
    v53.i32[0] = vadd_f32(v53, vdup_lane_s32(v53, 1)).u32[0];
    v54 = vrsqrte_f32(v53.u32[0]);
    v55 = vmul_f32(v54, vrsqrts_f32(v53.u32[0], vmul_f32(v54, v54)));
    a3[2] = vmul_f32(vmul_n_f32(vmul_n_f32(v52, vmul_f32(v55, vrsqrts_f32(v53.u32[0], vmul_f32(v55, v55))).f32[0]), *(v6 + 36)), 0x3F0000003F000000);
    *a4 = v10;
    goto LABEL_12;
  }

  v12 = 0;
  v15.i64[1] = 0x3F80000000000000;
  v13.i64[1] = 0x3F80000000000000;
  *v13.f32 = v59;
  v14.i64[1] = 0x3F80000000000000;
  v14.i64[0] = v58;
  v15.i64[0] = v57;
  *v16.f32 = v56;
  v16.i64[1] = 0x3F80000000000000;
  v60 = xmmword_21C4B8A70;
  v61 = xmmword_21C4B95A0;
  v62 = xmmword_21C4B95B0;
  v63 = xmmword_21C4B95C0;
  do
  {
    *(&v64 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v60 + v12))), v14, *(&v60 + v12), 1), v15, *(&v60 + v12), 2), v16, *(&v60 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v17 = 0;
  v18 = v64;
  v19 = v65;
  v20 = v66;
  v21 = v67;
  v60 = xmmword_21C4B95A0;
  v61 = xmmword_21C4B95D0;
  v62 = xmmword_21C4B95E0;
  v63 = 0uLL;
  do
  {
    *(&v64 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v60 + v17))), v14, *(&v60 + v17), 1), v15, *(&v60 + v17), 2), v16, *(&v60 + v17), 3);
    v17 += 16;
  }

  while (v17 != 64);
  v22 = v66;
  v23 = v67;
  v24 = vaddq_f32(v64, v65);
  v25 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v64, 0, v65), 0, v66), 0, v67);
  *&v26 = vaddv_f32(*&vmulq_f32(v25, v25));
  v27 = vrsqrte_f32(v26);
  v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
  v29 = vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28)));
  *v25.f32 = vmul_n_f32(*v25.f32, *v29.i32);
  *v29.i32 = -v25.f32[1];
  *v25.f32 = vzip1_s32(v29, *v25.f32);
  v30 = vmul_f32(*v25.f32, *v25.f32);
  v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
  v31 = vrsqrte_f32(v30.u32[0]);
  v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
  a3[2] = vmul_f32(vmul_n_f32(vmul_n_f32(*v25.f32, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]), *(v6 + 36)), 0x3F0000003F000000);
  v33 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v18, v19, *(v6 + 35)), v20, *(v6 + 35) * *(v6 + 35)), v21, *(v6 + 35) * (*(v6 + 35) * *(v6 + 35))).u64[0];
  *a3 = v33;
  a3[1] = vsub_f32(v33, v10);
  v34 = 1.0 - *(v6 + 35);
  v35 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v18, v19, v34), v20, v34 * v34), v21, v34 * (v34 * v34)).u64[0];
  v36 = vsub_f32(v11, v35);
  v11.f32[0] = -*&v36.i32[1];
  v37 = vzip1_s32(v11, v36);
  v38 = vmul_f32(v37, v37);
  v38.i32[0] = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
  *a4 = v35;
  a4[1] = v36;
  v39 = vrsqrte_f32(v38.u32[0]);
  v40 = vmul_f32(v39, vrsqrts_f32(v38.u32[0], vmul_f32(v39, v39)));
  v41 = vmul_f32(vmul_n_f32(vmul_n_f32(v37, vmul_f32(v40, vrsqrts_f32(v38.u32[0], vmul_f32(v40, v40))).f32[0]), *(v6 + 36)), 0x3F0000003F000000);
  v42 = vaddq_f32(v23, vaddq_f32(v22, v24));
  v43 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v42, v42)));
  a4[2] = v41;
  v44 = vrsqrte_f32(v43);
  v45 = vmul_f32(v44, vrsqrts_f32(v43, vmul_f32(v44, v44)));
  v46 = vmul_n_f32(*v42.f32, vmul_f32(v45, vrsqrts_f32(v43, vmul_f32(v45, v45))).f32[0]);
  v42.f32[0] = -*&v46.i32[1];
  v47 = vzip1_s32(*v42.f32, v46);
  *v42.f32 = vmul_f32(v47, v47);
  v42.i32[0] = vadd_f32(*v42.f32, vdup_lane_s32(*v42.f32, 1)).u32[0];
  v48 = vrsqrte_f32(v42.u32[0]);
  v49 = vmul_f32(v48, vrsqrts_f32(v42.u32[0], vmul_f32(v48, v48)));
  v50 = vmul_f32(vmul_n_f32(vmul_n_f32(v47, vmul_f32(v49, vrsqrts_f32(v42.u32[0], vmul_f32(v49, v49))).f32[0]), *(v6 + 36)), 0x3F0000003F000000);
LABEL_13:
  a4[2] = v50;
  return result;
}

uint64_t *addCurve(float32x4_t *a1, unsigned int a2)
{
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  result = getElementsForCurve(a1, a2, &v122, &v121, &v120, &v119);
  v4 = 0;
  v6 = v121;
  v5 = v122;
  *v7.f32 = v122;
  v7.i64[1] = 0x3F80000000000000;
  v8.i64[0] = v121;
  v8.i64[1] = 0x3F80000000000000;
  v9 = v119;
  v10 = v120;
  v11.i64[0] = v120;
  v11.i64[1] = 0x3F80000000000000;
  *v12.f32 = v119;
  v12.i64[1] = 0x3F80000000000000;
  v13 = a1[9].u8[5];
  v123 = xmmword_21C4B8A70;
  v124 = xmmword_21C4B95A0;
  v125 = xmmword_21C4B95B0;
  v126 = xmmword_21C4B95C0;
  do
  {
    *(&v127 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(&v123 + v4))), v8, *(&v123 + v4), 1), v11, *(&v123 + v4), 2), v12, *(&v123 + v4), 3);
    v4 += 16;
  }

  while (v4 != 64);
  v14 = 0;
  v15 = v127;
  v16 = v128;
  v17 = v129;
  v18 = v130;
  v123 = xmmword_21C4B95A0;
  v124 = xmmword_21C4B95D0;
  v125 = xmmword_21C4B95E0;
  v126 = 0uLL;
  do
  {
    *(&v127 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(&v123 + v14))), v8, *(&v123 + v14), 1), v11, *(&v123 + v14), 2), v12, *(&v123 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v19 = v127;
  v20 = v128;
  v21 = v129;
  v22 = v130;
  v23 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v127, 0, v128), 0, v129), 0, v130);
  v24 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v23, v23)));
  v25 = vrsqrte_f32(v24);
  v26 = vmul_f32(v25, vrsqrts_f32(v24.u32[0], vmul_f32(v25, v25)));
  v27 = vmul_f32(v26, vrsqrts_f32(v24.u32[0], vmul_f32(v26, v26)));
  *v23.f32 = vmul_n_f32(*v23.f32, *v27.i32);
  *v27.i32 = -v23.f32[1];
  *v23.f32 = vzip1_s32(v27, *v23.f32);
  v28 = vmul_f32(*v23.f32, *v23.f32);
  v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
  v29 = vrsqrte_f32(v28.u32[0]);
  v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29)));
  v36 = vmul_n_f32(*v23.f32, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0]);
  v31 = a1[9].f32[0];
  v32 = vmul_f32(vmul_n_f32(v36, v31), 0x3F0000003F000000);
  v33 = a1[12].f32[0];
  v34 = a1[11];
  v35 = a1[12].u32[1];
  v37 = a1[12].f32[2];
  v36.i32[0] = a1[12].i32[3];
  v38 = a1[9].i8[4];
  if (v38)
  {
    v39 = vmul_f32(v32, v32);
    v39.i32[0] = vadd_f32(v39, vdup_lane_s32(v39, 1)).u32[0];
    v40 = vrsqrte_f32(v39.u32[0]);
    v41 = vmul_n_f32(vmul_n_f32(v32, vmul_f32(v40, vrsqrts_f32(v39.u32[0], vmul_f32(v40, v40))).f32[0]), a1[9].f32[2] + (v31 * 0.5));
    *&v42 = vadd_f32(v5, v41);
    if (v13)
    {
      v43 = a1[12].f32[2];
    }

    else
    {
      v43 = 1.0;
    }

    DWORD2(v42) = 0;
    *(&v42 + 3) = v43;
    v44 = a1[1].u32[0] + (v35 - 10);
    v34.i32[3] = 1.0;
    v45 = vdupq_n_s32(0x437F0000u);
    *(a1[2].i64[1] + 16 * v44) = v42;
    v46 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v34, 0), v45))), *v15.f32).u32[0];
    *(a1[1].i64[1] + 4 * v44) = v46;
    v47 = __PAIR64__(1.0, v36.u32[0]);
    *(a1[2].i64[0] + 8 * v44) = __PAIR64__(1.0, v36.u32[0]);
    *&v48 = vadd_f32(v5, v32);
    DWORD2(v48) = 0;
    *(&v48 + 3) = v43;
    v49 = a1[1].u32[0] + (v35 - 9);
    v50 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v34, v33), v45)));
    *(a1[2].i64[1] + 16 * v49) = v48;
    v51 = vuzp1_s8(v50, *v15.f32).u32[0];
    *(a1[1].i64[1] + 4 * v49) = v51;
    *(a1[2].i64[0] + 8 * v49) = __PAIR64__(1.0, v36.u32[0]);
    *&v53 = vsub_f32(v5, v32);
    v52 = a1[1].u32[0] + (v35 - 6);
    DWORD2(v53) = 0;
    *(&v53 + 3) = v43;
    *(a1[2].i64[1] + 16 * v52) = v53;
    *(a1[1].i64[1] + 4 * v52) = v51;
    v54 = v36.u32[0];
    *(a1[2].i64[0] + 8 * v52) = v36.u32[0];
    *&v55 = vsub_f32(v5, v41);
    DWORD2(v55) = 0;
    v56 = a1[1].u32[0] + (v35 - 5);
    *(&v55 + 3) = v43;
    *(a1[2].i64[1] + 16 * v56) = v55;
    *(a1[1].i64[1] + 4 * v56) = v46;
    *(a1[2].i64[0] + 8 * v56) = v36.u32[0];
  }

  else
  {
    *&v48 = vadd_f32(v5, v32);
    if (v13)
    {
      v57 = a1[12].f32[2];
    }

    else
    {
      v57 = 1.0;
    }

    DWORD2(v48) = 0;
    *(&v48 + 3) = v57;
    v34.i32[3] = 1.0;
    v58 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v34, v33), vdupq_n_s32(0x437F0000u)));
    LODWORD(v47) = a1[12].i32[3];
    HIDWORD(v47) = 1.0;
    *&v53 = vsub_f32(v5, v32);
    DWORD2(v53) = 0;
    v50 = vmovn_s32(v58);
    *(&v53 + 3) = v57;
    v54 = v47;
  }

  v59 = a1[1].u32[0] + (v35 - 2);
  *(a1[2].i64[1] + 16 * v59) = v48;
  v60 = vuzp1_s8(v50, *v15.f32).u32[0];
  *(a1[1].i64[1] + 4 * v59) = v60;
  *(a1[2].i64[0] + 8 * v59) = v47;
  v61 = a1[1].u32[0] + (v35 - 1);
  *(a1[2].i64[1] + 16 * v61) = v53;
  *(a1[1].i64[1] + 4 * v61) = v60;
  *(a1[2].i64[0] + 8 * v61) = v54;
  v62 = a1[8].u32[2];
  if ((COERCE_UNSIGNED_INT(fabsf(((*&v6 * (*(&v10 + 1) - v5.f32[1])) + (v5.f32[0] * (*(&v6 + 1) - *(&v10 + 1)))) + (*&v10 * (v5.f32[1] - *(&v6 + 1)))) + -0.002) & 0x80000000) != 0 && (COERCE_UNSIGNED_INT(fabsf(((*&v10 * (v9.f32[1] - *(&v6 + 1))) + (*&v6 * (*(&v10 + 1) - v9.f32[1]))) + (v9.f32[0] * (*(&v6 + 1) - *(&v10 + 1)))) + -0.002) & 0x80000000) != 0)
  {
    v118 = vsub_f32(v9, v5);
    v118.f32[0] = sqrtf(vaddv_f32(vmul_f32(v118, v118)));
    v80 = v118.f32[0] + v37;
    v81 = v36.f32[0] + (v118.f32[0] / a1[10].f32[0]);
  }

  else if (v62)
  {
    v63 = v62;
    v64 = 1;
    v65 = vuzp1_s8(v50, *v15.f32).u32[0];
    v66 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v34, 0), vdupq_n_s32(0x437F0000u)))), *v15.f32).u32[0];
    do
    {
      v67 = v64 / v63;
      v68 = v67 * (v67 * v67);
      v69 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v19, v20, v67), v21, v67 * v67), v22, v68);
      v70 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v69, v69)));
      v71 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v15, v16, v67), v17, v67 * v67), v18, v68).u64[0];
      v72 = vrsqrte_f32(v70);
      v73 = vrsqrts_f32(v70.u32[0], vmul_f32(v72, v72));
      v74 = vmul_n_f32(*v69.f32, vmul_f32(v72, v73).f32[0]);
      v73.f32[0] = -*&v74.i32[1];
      v75 = vzip1_s32(v73, v74);
      v76 = vmul_f32(v75, v75);
      v76.i32[0] = vadd_f32(v76, vdup_lane_s32(v76, 1)).u32[0];
      v77 = vrsqrte_f32(v76.u32[0]);
      v78 = vmul_f32(vmul_n_f32(vmul_n_f32(v75, vmul_f32(v77, vrsqrts_f32(v76.u32[0], vmul_f32(v77, v77))).f32[0]), v31), 0x3F0000003F000000);
      v79 = vsub_f32(v71, v5);
      v76.f32[0] = sqrtf(vaddv_f32(vmul_f32(v79, v79)));
      v80 = v37 + v76.f32[0];
      v81 = v36.f32[0] + (v76.f32[0] / a1[10].f32[0]);
      if (v38)
      {
        v82 = vmul_f32(v32, v32);
        v82.i32[0] = vadd_f32(v82, vdup_lane_s32(v82, 1)).u32[0];
        v83 = vrsqrte_f32(v82.u32[0]);
        v84 = vmul_n_f32(v32, vmul_f32(v83, vrsqrts_f32(v82.u32[0], vmul_f32(v83, v83))).f32[0]);
        v85 = a1[9].f32[2] + (v31 * 0.5);
        v86 = vmul_f32(v78, v78);
        v87 = vmul_n_f32(v84, v85);
        v84.i32[0] = vadd_f32(v86, vdup_lane_s32(v86, 1)).u32[0];
        v88 = vrsqrte_f32(v84.u32[0]);
        v89 = vmul_n_f32(v78, vmul_f32(v88, vrsqrts_f32(v84.u32[0], vmul_f32(v88, v88))).f32[0]);
        *&v90 = vadd_f32(v32, v5);
        if (v13)
        {
          v91 = v37;
        }

        else
        {
          v91 = 1.0;
        }

        v92 = a1[1].u32[0] + v35;
        DWORD2(v90) = 0;
        *(&v90 + 3) = v91;
        *(a1[2].i64[1] + 16 * v92) = v90;
        *(a1[1].i64[1] + 4 * v92) = v65;
        v93 = __PAIR64__(1.0, v36.u32[0]);
        *(a1[2].i64[0] + 8 * v92) = __PAIR64__(1.0, v36.u32[0]);
        v94 = vmul_n_f32(v89, v85);
        v95 = vadd_f32(v5, v87);
        DWORD2(v97) = 0;
        v96 = a1[1].u32[0] + (v35 + 1);
        *(&v97 + 3) = v91;
        *(a1[2].i64[1] + 16 * v96) = v97;
        *(a1[1].i64[1] + 4 * v96) = v66;
        *(a1[2].i64[0] + 8 * v96) = __PAIR64__(1.0, v36.u32[0]);
        *&v97 = vadd_f32(v71, v94);
        if (v13)
        {
          v98 = v80;
        }

        else
        {
          v98 = 1.0;
        }

        DWORD2(v97) = 0;
        v99 = a1[1].u32[0] + (v35 + 2);
        *(&v97 + 3) = v98;
        *(a1[2].i64[1] + 16 * v99) = v97;
        *(a1[1].i64[1] + 4 * v99) = v66;
        v100 = __PAIR64__(1.0, LODWORD(v81));
        *(a1[2].i64[0] + 8 * v99) = __PAIR64__(1.0, LODWORD(v81));
        *&v102 = vadd_f32(v71, v78);
        v101 = a1[1].u32[0] + (v35 + 3);
        DWORD2(v102) = 0;
        *(&v102 + 3) = v98;
        *(a1[2].i64[1] + 16 * v101) = v102;
        *(a1[1].i64[1] + 4 * v101) = v65;
        *(a1[2].i64[0] + 8 * v101) = __PAIR64__(1.0, LODWORD(v81));
        *&v103 = vsub_f32(v5, v87);
        v104 = a1[1].u32[0] + (v35 + 4);
        DWORD2(v103) = 0;
        *(&v103 + 3) = v91;
        *(a1[2].i64[1] + 16 * v104) = v103;
        *(a1[1].i64[1] + 4 * v104) = v66;
        v105 = v36.u32[0];
        *(a1[2].i64[0] + 8 * v104) = v36.u32[0];
        *&v107 = vsub_f32(v5, v32);
        DWORD2(v107) = 0;
        v106 = a1[1].u32[0] + (v35 + 5);
        *(&v107 + 3) = v91;
        *(a1[2].i64[1] + 16 * v106) = v107;
        *(a1[1].i64[1] + 4 * v106) = v65;
        *(a1[2].i64[0] + 8 * v106) = v36.u32[0];
        *&v109 = vsub_f32(v71, v78);
        DWORD2(v109) = 0;
        v108 = a1[1].u32[0] + (v35 + 6);
        *(&v109 + 3) = v98;
        *(a1[2].i64[1] + 16 * v108) = v109;
        *(a1[1].i64[1] + 4 * v108) = v65;
        v110 = LODWORD(v81);
        *(a1[2].i64[0] + 8 * v108) = LODWORD(v81);
        *&v111 = vsub_f32(v71, v94);
        v112 = a1[1].u32[0] + (v35 + 7);
        DWORD2(v111) = 0;
        *(&v111 + 3) = v98;
        *(a1[2].i64[1] + 16 * v112) = v111;
        *(a1[1].i64[1] + 4 * v112) = v66;
        *(a1[2].i64[0] + 8 * v112) = LODWORD(v81);
        v35 += 8;
        v36 = v93;
      }

      else
      {
        *&v107 = vsub_f32(v5, v32);
        if (!v13)
        {
          v37 = 1.0;
        }

        DWORD2(v107) = 0;
        *(&v107 + 3) = v37;
        v105 = v36.u32[0];
        *&v90 = vadd_f32(v32, v5);
        DWORD2(v90) = 0;
        *(&v90 + 3) = v37;
        v36.i32[1] = 1.0;
        *&v102 = vadd_f32(v71, v78);
        if (v13)
        {
          v113 = v80;
        }

        else
        {
          v113 = 1.0;
        }

        DWORD2(v102) = 0;
        *(&v102 + 3) = v113;
        v100 = __PAIR64__(1.0, LODWORD(v81));
        *&v109 = vsub_f32(v71, v78);
        DWORD2(v109) = 0;
        *(&v109 + 3) = v113;
        v110 = LODWORD(v81);
      }

      v114 = a1[1].u32[0] + v35;
      *(a1[2].i64[1] + 16 * v114) = v107;
      *(a1[1].i64[1] + 4 * v114) = v65;
      *(a1[2].i64[0] + 8 * v114) = v105;
      v115 = a1[1].u32[0] + (v35 + 1);
      *(a1[2].i64[1] + 16 * v115) = v90;
      *(a1[1].i64[1] + 4 * v115) = v65;
      *(a1[2].i64[0] + 8 * v115) = v36;
      v116 = a1[1].u32[0] + (v35 + 2);
      *(a1[2].i64[1] + 16 * v116) = v102;
      *(a1[1].i64[1] + 4 * v116) = v65;
      *(a1[2].i64[0] + 8 * v116) = v100;
      v117 = a1[1].u32[0] + (v35 + 3);
      *(a1[2].i64[1] + 16 * v117) = v109;
      *(a1[1].i64[1] + 4 * v117) = v65;
      *(a1[2].i64[0] + 8 * v117) = v110;
      v35 += 4;
      ++v64;
      v5 = v71;
      v32 = v78;
      v36.f32[0] = v81;
      v37 = v80;
      --v62;
    }

    while (v62);
  }

  else
  {
    v80 = v37;
    v81 = v36.f32[0];
  }

  a1[12].f32[2] = v80;
  a1[12].f32[3] = v81;
  a1[12].i32[1] = v35;
  return result;
}

void addJoin(float32x4_t *a1, float32x2_t a2, double a3, double a4, float32x2_t a5, double a6, double a7, float32x2_t a8)
{
  v13 = a1[12].u32[1];
  v14 = a1[12].f32[0];
  v15 = a1[11];
  v16 = a1[9].u8[5];
  v17 = a1[9].u8[4];
  v9.i32[0] = a1[9].i32[2];
  v18 = a1[12].f32[2];
  LODWORD(v8) = a1[12].i32[3];
  v19 = vmul_f32(*&a4, *&a4);
  v20 = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
  v21 = vrsqrte_f32(v20);
  v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
  v23 = vmul_n_f32(*&a4, vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).f32[0]);
  v24 = vmul_f32(*&a7, *&a7);
  v25 = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
  v26 = vrsqrte_f32(v25);
  v27 = vmul_f32(v26, vrsqrts_f32(v25, vmul_f32(v26, v26)));
  v28 = vrsqrts_f32(v25, vmul_f32(v27, v27));
  v29 = vmul_n_f32(*&a7, vmul_f32(v27, v28).f32[0]);
  v30 = vsub_f32(v23, v29);
  v31 = v30.i32[0] & 0x60000000;
  if ((v30.i32[0] & 0x60000000) == 0 && (v30.i32[1] & 0x60000000) == 0)
  {
    v167 = vadd_f32(a5, a2);
    __asm { FMOV            V6.2S, #1.0 }

    if (v17)
    {
      v169 = vmul_f32(a5, a5);
      v169.i32[0] = vadd_f32(v169, vdup_lane_s32(v169, 1)).u32[0];
      v170 = vrsqrte_f32(v169.u32[0]);
      a4 = COERCE_DOUBLE(vmul_f32(v170, vrsqrts_f32(v169.u32[0], vmul_f32(v170, v170))));
      v171 = vmul_n_f32(a5, vmul_f32(*&a4, vrsqrts_f32(v169.u32[0], vmul_f32(*&a4, *&a4))).f32[0]);
      *&v172 = vmla_n_f32(v167, v171, v9.f32[0]);
      v173 = vsub_f32(a2, a5);
      if (a1[9].i8[5])
      {
        LODWORD(a4) = a1[12].i32[2];
      }

      else
      {
        *&a4 = 1.0;
      }

      v174 = a1[1].u32[0] + (v13 - 10);
      DWORD2(v172) = 0;
      HIDWORD(v172) = LODWORD(a4);
      v15.i32[3] = 1.0;
      v175 = vdupq_n_s32(0x437F0000u);
      *(a1[2].i64[1] + 16 * v174) = v172;
      v176 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v15, 0), v175))), v167).u32[0];
      *(a1[1].i64[1] + 4 * v174) = v176;
      *&v177 = vmls_lane_f32(v173, v171, v9, 0);
      *(a1[2].i64[0] + 8 * v174) = __PAIR64__(HIDWORD(_D6), v8);
      *&v178 = v167;
      DWORD2(v178) = 0;
      HIDWORD(v178) = LODWORD(a4);
      v179 = a1[1].u32[0] + (v13 - 9);
      v180 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v15, v14), v175)));
      HIDWORD(v181) = HIDWORD(_D6);
      LODWORD(v181) = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v179) = v178;
      *v175.f32 = vuzp1_s8(v180, v167);
      *(a1[1].i64[1] + 4 * v179) = v175.i32[0];
      *(a1[2].i64[0] + 8 * v179) = v181;
      v182 = a1[1].u32[0] + (v13 - 6);
      *&v183 = v173;
      DWORD2(v183) = 0;
      HIDWORD(v183) = LODWORD(a4);
      LODWORD(v8) = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v182) = v183;
      *(a1[1].i64[1] + 4 * v182) = v175.i32[0];
      *(a1[2].i64[0] + 8 * v182) = v8;
      DWORD2(v177) = 0;
      HIDWORD(v177) = LODWORD(a4);
      v184 = a1[1].u32[0] + (v13 - 5);
      v175.i32[0] = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v184) = v177;
      *(a1[1].i64[1] + 4 * v184) = v176;
      *(a1[2].i64[0] + 8 * v184) = v175.i64[0];
      LODWORD(v8) = a1[12].i32[3];
    }

    else
    {
      *&v178 = v167;
      DWORD2(v178) = 0;
      if (a1[9].i8[5])
      {
        LODWORD(a4) = a1[12].i32[2];
      }

      else
      {
        *&a4 = 1.0;
      }

      HIDWORD(v178) = LODWORD(a4);
      v15.i32[3] = 1.0;
      v180 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v15, v14), vdupq_n_s32(0x437F0000u))));
      v173 = vsub_f32(a2, a5);
      *&v183 = v173;
      DWORD2(v183) = 0;
      HIDWORD(v183) = LODWORD(a4);
    }

    v304 = a1[1].u32[0] + (v13 - 2);
    *(a1[2].i64[1] + 16 * v304) = v178;
    v305 = vuzp1_s8(v180, v167).u32[0];
    *(a1[1].i64[1] + 4 * v304) = v305;
    LODWORD(_D6) = v8;
    *(a1[2].i64[0] + 8 * v304) = _D6;
    v306 = a1[1].u32[0] + (v13 - 1);
    LODWORD(_D6) = a1[12].i32[3];
    *(a1[2].i64[1] + 16 * v306) = v183;
    *(a1[1].i64[1] + 4 * v306) = v305;
    *(a1[2].i64[0] + 8 * v306) = _D6;
    if (v17)
    {
      v307 = vmul_f32(a5, a5);
      v307.i32[0] = vadd_f32(v307, vdup_lane_s32(v307, 1)).u32[0];
      v308 = vrsqrte_f32(v307.u32[0]);
      v309 = vmul_f32(v308, vrsqrts_f32(v307.u32[0], vmul_f32(v308, v308)));
      v310 = vmul_n_f32(a5, vmul_f32(v309, vrsqrts_f32(v307.u32[0], vmul_f32(v309, v309))).f32[0]);
      *&v311 = vmla_n_f32(v167, v310, v9.f32[0]);
      v312 = a1[1].u32[0] + v13;
      __asm { FMOV            V16.2S, #1.0 }

      HIDWORD(v314) = HIDWORD(_D16);
      LODWORD(v314) = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v312) = v178;
      v307.i32[0] = vuzp1_s8(v180, *&v311).u32[0];
      *(a1[1].i64[1] + 4 * v312) = v307.i32[0];
      *(a1[2].i64[0] + 8 * v312) = v314;
      DWORD2(v311) = 0;
      HIDWORD(v311) = LODWORD(a4);
      v315 = a1[1].u32[0] + (v13 + 1);
      LODWORD(_D16) = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v315) = v311;
      v167 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v15, 0), vdupq_n_s32(0x437F0000u)))), *&v311);
      *(a1[1].i64[1] + 4 * v315) = v167.i32[0];
      *&v316 = vmls_lane_f32(v173, v310, v9, 0);
      *(a1[2].i64[0] + 8 * v315) = _D16;
      v317 = a1[1].u32[0] + (v13 + 4);
      DWORD2(v316) = 0;
      HIDWORD(v316) = LODWORD(a4);
      LODWORD(a4) = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v317) = v316;
      *(a1[1].i64[1] + 4 * v317) = v167.i32[0];
      *(a1[2].i64[0] + 8 * v317) = a4;
      v318 = a1[1].u32[0] + (v13 + 5);
      v167.i32[0] = a1[12].i32[3];
      *(a1[2].i64[1] + 16 * v318) = v183;
      *(a1[1].i64[1] + 4 * v318) = v307.i32[0];
      *(a1[2].i64[0] + 8 * v318) = v167;
      LODWORD(v13) = v13 + 8;
    }

    v319 = a1[1].u32[0] + v13;
    v167.i32[0] = a1[12].i32[3];
    *(a1[2].i64[1] + 16 * v319) = v183;
    v320 = vuzp1_s8(v180, v167).u32[0];
    *(a1[1].i64[1] + 4 * v319) = v320;
    *(a1[2].i64[0] + 8 * v319) = v167;
    v321 = a1[1].u32[0] + (v13 + 1);
    __asm { FMOV            V0.2S, #1.0 }

    _D0.i32[0] = a1[12].i32[3];
    *(a1[2].i64[1] + 16 * v321) = v178;
    *(a1[1].i64[1] + 4 * v321) = v320;
    goto LABEL_101;
  }

  v33 = vaddv_f32(v19);
  v34 = vaddv_f32(v24);
  v35 = a1[8].i32[1];
  v860 = a2;
  if (!v35)
  {
    v800 = v30.i32[1];
    v804 = a1[11];
    v848 = a1[12].f32[0];
    v795 = v9;
    v870 = 0;
    v871 = 0;
    v115 = vadd_f32(a8, a2);
    v874 = *&v115;
    v875 = vneg_f32(*&a7);
    v810 = vadd_f32(a5, a2);
    v815 = a4;
    v872 = *&v810;
    v873 = a4;
    v116 = vsub_f32(a2, a8);
    v868 = v116;
    v869 = v875;
    v827 = vsub_f32(a2, a5);
    LODWORD(v834) = v8;
    v867[0] = v827;
    v867[1] = *&a4;
    sk_ray2::intersect(&v874, &v872, &v871 + 1, &v871);
    sk_ray2::intersect(&v868, v867, &v870 + 1, &v870);
    v865.i32[0] = 0;
    v863.i32[0] = 0;
    sk_ray2::intersect(&v874, &v872, &v865, &v863);
    v840 = vmla_n_f32(*&v874, v875, v865.f32[0]);
    v865.i32[0] = 0;
    v863.i32[0] = 0;
    sk_ray2::intersect(&v868, v867, &v865, &v863);
    v117 = vmla_n_f32(v868, v869, v865.f32[0]);
    v118 = (-*(&a7 + 1) * *&v815) + (*&a7 * *(&v815 + 1));
    if (v118 > 0.0)
    {
      v119 = vsub_f32(v840, v860);
      v120 = vsub_f32(v117, v827);
      v46 = sqrtf(vaddv_f32(vmul_f32(v120, v120))) <= sqrtf(v33);
      v121 = vsub_f32(v117, v116);
      v122 = sqrtf(vaddv_f32(vmul_f32(v121, v121)));
      v123 = sqrtf(v34);
      v124 = v46 && v122 <= v123;
      v125 = v117;
      if (!v124)
      {
        v117 = v827;
        v125 = v116;
      }

      v821 = v119;
      v828 = v125;
      v856 = v117;
      v865 = v115;
      v866 = vsub_f32(v810, v115);
      v863 = v860;
      v864 = v119;
      v861.i32[0] = 0;
      HIDWORD(v876) = 0;
      sk_ray2::intersect(&v865, &v863, &v861, &v876 + 1);
      v126 = a1[9].f32[3];
      v127 = vmul_f32(v821, v821);
      v128 = vadd_f32(v127, vdup_lane_s32(v127, 1));
      if (sqrtf(vaddv_f32(v127)) <= v126)
      {
        v403 = v804;
        if (v17)
        {
          *&v404 = v856;
          v405 = vsub_f32(v856, v860);
          v406 = vmul_f32(v405, v405);
          v406.i32[0] = vadd_f32(v406, vdup_lane_s32(v406, 1)).u32[0];
          v407 = vrsqrte_f32(v406.u32[0]);
          v408 = vmul_f32(v407, vrsqrts_f32(v406.u32[0], vmul_f32(v407, v407)));
          *&v409 = vmla_n_f32(v856, vmul_n_f32(v405, vmul_f32(v408, vrsqrts_f32(v406.u32[0], vmul_f32(v408, v408))).f32[0]), v795.f32[0]);
          v410 = vrsqrte_f32(v128.u32[0]);
          v411 = vmul_f32(v410, vrsqrts_f32(v128.u32[0], vmul_f32(v410, v410)));
          v128 = vmul_n_f32(v821, vmul_f32(v411, vrsqrts_f32(v128.u32[0], vmul_f32(v411, v411))).f32[0]);
          *&v412 = v840;
          *&v413 = vmla_n_f32(v840, v128, v795.f32[0]);
          if (v16)
          {
            v128.f32[0] = v18;
          }

          else
          {
            v128.f32[0] = 1.0;
          }

          v414 = a1[1].u32[0] + (v13 - 10);
          DWORD2(v413) = 0;
          HIDWORD(v413) = v128.i32[0];
          v403.i32[3] = 1.0;
          v415 = vdupq_n_s32(0x437F0000u);
          *(a1[2].i64[1] + 16 * v414) = v413;
          v416 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v403, 0), v415))), v128).u32[0];
          *(a1[1].i64[1] + 4 * v414) = v416;
          v417 = __PAIR64__(1.0, v834);
          *(a1[2].i64[0] + 8 * v414) = __PAIR64__(1.0, v834);
          v418 = a1[1].u32[0] + (v13 - 9);
          DWORD2(v412) = 0;
          HIDWORD(v412) = v128.i32[0];
          *(a1[2].i64[1] + 16 * v418) = v412;
          v419 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v403, v848), v415)));
          v415.i32[0] = vuzp1_s8(v419, v128).u32[0];
          *(a1[1].i64[1] + 4 * v418) = v415.i32[0];
          *(a1[2].i64[0] + 8 * v418) = __PAIR64__(1.0, v834);
          DWORD2(v404) = 0;
          v420 = a1[1].u32[0] + (v13 - 6);
          HIDWORD(v404) = v128.i32[0];
          *(a1[2].i64[1] + 16 * v420) = v404;
          *(a1[1].i64[1] + 4 * v420) = v415.i32[0];
          *(a1[2].i64[0] + 8 * v420) = v834;
          DWORD2(v409) = 0;
          v421 = a1[1].u32[0] + (v13 - 5);
          HIDWORD(v409) = v128.i32[0];
          *(a1[2].i64[1] + 16 * v421) = v409;
          *(a1[1].i64[1] + 4 * v421) = v416;
          *(a1[2].i64[0] + 8 * v421) = v834;
          v422 = a1[1].u32[0] + (v13 - 2);
          *(a1[2].i64[1] + 16 * v422) = v412;
          *(a1[1].i64[1] + 4 * v422) = v415.i32[0];
          *(a1[2].i64[0] + 8 * v422) = __PAIR64__(1.0, v834);
          v423 = a1[1].u32[0] + (v13 - 1);
          *(a1[2].i64[1] + 16 * v423) = v404;
          *(a1[1].i64[1] + 4 * v423) = v415.i32[0];
          *(a1[2].i64[0] + 8 * v423) = v834;
          v424 = a1[1].u32[0] + v13;
          *(a1[2].i64[1] + 16 * v424) = v412;
          *(a1[1].i64[1] + 4 * v424) = v415.i32[0];
          *(a1[2].i64[0] + 8 * v424) = __PAIR64__(1.0, v834);
          v425 = a1[1].u32[0] + (v13 + 1);
          *(a1[2].i64[1] + 16 * v425) = v413;
          *(a1[1].i64[1] + 4 * v425) = v416;
          *(a1[2].i64[0] + 8 * v425) = __PAIR64__(1.0, v834);
          v426 = a1[1].u32[0] + (v13 + 4);
          *(a1[2].i64[1] + 16 * v426) = v409;
          *(a1[1].i64[1] + 4 * v426) = v416;
          *(a1[2].i64[0] + 8 * v426) = v834;
          v427 = a1[1].u32[0] + (v13 + 5);
          *(a1[2].i64[1] + 16 * v427) = v404;
          *(a1[1].i64[1] + 4 * v427) = v415.i32[0];
          *(a1[2].i64[0] + 8 * v427) = v834;
          LODWORD(v13) = v13 + 8;
        }

        else
        {
          if (v16)
          {
            v128.f32[0] = v18;
          }

          else
          {
            v128.f32[0] = 1.0;
          }

          *&v412 = v840;
          DWORD2(v412) = 0;
          HIDWORD(v412) = v128.i32[0];
          v637 = a1[1].u32[0] + (v13 - 2);
          v403.i32[3] = 1.0;
          *(a1[2].i64[1] + 16 * v637) = v412;
          v419 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v403, v848), vdupq_n_s32(0x437F0000u))));
          v638 = vuzp1_s8(v419, v128).u32[0];
          *(a1[1].i64[1] + 4 * v637) = v638;
          v417 = __PAIR64__(1.0, v834);
          *(a1[2].i64[0] + 8 * v637) = __PAIR64__(1.0, v834);
          v639 = a1[1].u32[0] + (v13 - 1);
          *&v640 = v856;
          DWORD2(v640) = 0;
          HIDWORD(v640) = v128.i32[0];
          *(a1[2].i64[1] + 16 * v639) = v640;
          *(a1[1].i64[1] + 4 * v639) = v638;
          *(a1[2].i64[0] + 8 * v639) = v834;
        }

        v641 = a1[1].u32[0] + v13;
        *&v642 = v828;
        DWORD2(v642) = 0;
        HIDWORD(v642) = v128.i32[0];
        *(a1[2].i64[1] + 16 * v641) = v642;
        v643 = vuzp1_s8(v419, v128).u32[0];
        *(a1[1].i64[1] + 4 * v641) = v643;
        *(a1[2].i64[0] + 8 * v641) = v834;
        v644 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v644) = v412;
        *(a1[1].i64[1] + 4 * v644) = v643;
        *(a1[2].i64[0] + 8 * v644) = v417;
      }

      else
      {
        v129 = vsub_f32(vmla_n_f32(v865, v866, v861.f32[0]), v860);
        v130 = fmaxf(sqrtf(vaddv_f32(vmul_f32(v129, v129))), v126);
        v131 = vrsqrte_f32(v128.u32[0]);
        v132 = vmul_f32(v131, vrsqrts_f32(v128.u32[0], vmul_f32(v131, v131)));
        v133 = vmul_n_f32(v821, vmul_f32(v132, vrsqrts_f32(v128.u32[0], vmul_f32(v132, v132))).f32[0]);
        v134 = vmla_n_f32(v860, v133, v130);
        v133.f32[0] = -v821.f32[1];
        v863 = v134;
        v864 = vzip1_s32(v133, v821);
        v861 = v134;
        v862 = vneg_f32(v864);
        v876 = 0;
        sk_ray2::intersect(&v863, &v872, &v876 + 1, &v876);
        *&v135 = vmla_n_f32(v863, v864, *(&v876 + 1));
        *&v139 = vsub_f32(*&v135, v860);
        v136 = vmul_f32(*&v139, *&v139);
        v136.i32[0] = vadd_f32(v136, vdup_lane_s32(v136, 1)).u32[0];
        v137 = vrsqrte_f32(v136.u32[0]);
        v138 = vmul_f32(v137, vrsqrts_f32(v136.u32[0], vmul_f32(v137, v137)));
        *&v139 = vmul_n_f32(*&v139, vmul_f32(v138, vrsqrts_f32(v136.u32[0], vmul_f32(v138, v138))).f32[0]);
        v140 = vdup_lane_s32(v795, 0);
        v141 = vmla_n_f32(*&v135, *&v139, v795.f32[0]);
        v816 = v141;
        if (v17)
        {
          *&v142 = v856;
          v143 = vsub_f32(v856, v860);
          v144 = vmul_f32(v143, v143);
          v144.i32[0] = vadd_f32(v144, vdup_lane_s32(v144, 1)).u32[0];
          v145 = vrsqrte_f32(v144.u32[0]);
          v146 = vmul_f32(v145, vrsqrts_f32(v144.u32[0], vmul_f32(v145, v145)));
          *&v139 = vmla_f32(v856, v140, vmul_n_f32(v143, vmul_f32(v146, vrsqrts_f32(v144.u32[0], vmul_f32(v146, v146))).f32[0]));
          if (v16)
          {
            v147 = v18;
          }

          else
          {
            v147 = 1.0;
          }

          v148 = a1[1].u32[0] + (v13 - 10);
          *&v149 = v141;
          DWORD2(v149) = 0;
          *(&v149 + 3) = v147;
          v150 = v804;
          v150.i32[3] = 1.0;
          v151 = vdupq_n_s32(0x437F0000u);
          *(a1[2].i64[1] + 16 * v148) = v149;
          LODWORD(v149) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v150, 0), v151))), *&v139).u32[0];
          *(a1[1].i64[1] + 4 * v148) = v149;
          v152 = v834;
          v153 = __PAIR64__(1.0, v834);
          *(a1[2].i64[0] + 8 * v148) = __PAIR64__(1.0, v834);
          v154 = a1[1].u32[0] + (v13 - 9);
          DWORD2(v135) = 0;
          *(&v135 + 3) = v147;
          v805 = v150;
          *(a1[2].i64[1] + 16 * v154) = v135;
          v155 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v150, v848), v151)));
          v156 = vuzp1_s8(v155, *&v139).u32[0];
          *(a1[1].i64[1] + 4 * v154) = v156;
          *(a1[2].i64[0] + 8 * v154) = __PAIR64__(1.0, v834);
          DWORD2(v142) = 0;
          v157 = a1[1].u32[0] + (v13 - 6);
          *(&v142 + 3) = v147;
          *(a1[2].i64[1] + 16 * v157) = v142;
          *(a1[1].i64[1] + 4 * v157) = v156;
          *(a1[2].i64[0] + 8 * v157) = v834;
          DWORD2(v139) = 0;
          v158 = a1[1].u32[0] + (v13 - 5);
          v857 = v147;
          *(&v139 + 3) = v147;
          *(a1[2].i64[1] + 16 * v158) = v139;
          *(a1[1].i64[1] + 4 * v158) = v149;
          *(a1[2].i64[0] + 8 * v158) = v834;
        }

        else
        {
          LODWORD(v139) = 1.0;
          if (v16)
          {
            v568 = v18;
          }

          else
          {
            v568 = 1.0;
          }

          DWORD2(v135) = 0;
          *(&v135 + 3) = v568;
          v569 = v804;
          v569.i32[3] = 1.0;
          v805 = v569;
          *&v142 = v856;
          v155 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v569, v848), vdupq_n_s32(0x437F0000u))));
          v152 = v834;
          v153 = __PAIR64__(1.0, v834);
          DWORD2(v142) = 0;
          v857 = v568;
          *(&v142 + 3) = v568;
        }

        v853 = v153;
        v570 = a1[1].u32[0] + (v13 - 2);
        v814 = v135;
        *(a1[2].i64[1] + 16 * v570) = v135;
        v571 = vuzp1_s8(v155, *&v139).u32[0];
        *(a1[1].i64[1] + 4 * v570) = v571;
        *(a1[2].i64[0] + 8 * v570) = v153;
        v572 = a1[1].u32[0] + (v13 - 1);
        *(a1[2].i64[1] + 16 * v572) = v142;
        *(a1[1].i64[1] + 4 * v572) = v571;
        v573 = v571;
        v838 = v152;
        v845 = v571;
        *(a1[2].i64[0] + 8 * v572) = v152;
        v574 = a1[1].u32[0] + v13;
        *&v575 = v828;
        DWORD2(v575) = 0;
        *(&v575 + 3) = v857;
        v825 = v575;
        *(a1[2].i64[1] + 16 * v574) = v575;
        *(a1[1].i64[1] + 4 * v574) = v573;
        *(a1[2].i64[0] + 8 * v574) = v152;
        v876 = 0;
        sk_ray2::intersect(&v863, &v872, &v876 + 1, &v876);
        *&v576 = vmla_n_f32(v863, v864, *(&v876 + 1));
        v577 = a1[1].u32[0] + (v13 + 1);
        DWORD2(v576) = 0;
        *(&v576 + 3) = v857;
        *(a1[2].i64[1] + 16 * v577) = v576;
        *(a1[1].i64[1] + 4 * v577) = v845;
        *(a1[2].i64[0] + 8 * v577) = v853;
        v876 = 0;
        sk_ray2::intersect(&v861, &v874, &v876 + 1, &v876);
        *&v578 = vmla_n_f32(v861, v862, *(&v876 + 1));
        v579 = a1[1].u32[0] + (v13 + 2);
        DWORD2(v578) = 0;
        *(&v578 + 3) = v857;
        *(a1[2].i64[1] + 16 * v579) = v578;
        *(a1[1].i64[1] + 4 * v579) = v845;
        *(a1[2].i64[0] + 8 * v579) = v853;
        v876 = 0;
        sk_ray2::intersect(&v861, &v874, &v876 + 1, &v876);
        *&v580 = vmla_n_f32(v861, v862, *(&v876 + 1));
        v581 = a1[1].u32[0] + (v13 + 3);
        DWORD2(v580) = 0;
        *(&v580 + 3) = v857;
        *(a1[2].i64[1] + 16 * v581) = v580;
        *(a1[1].i64[1] + 4 * v581) = v845;
        *(a1[2].i64[0] + 8 * v581) = v853;
        v876 = 0;
        sk_ray2::intersect(&v861, &v874, &v876 + 1, &v876);
        *&v582 = vmla_n_f32(v861, v862, *(&v876 + 1));
        if (v17)
        {
          v583 = vsub_f32(*&v582, v860);
          v584 = vmul_f32(v583, v583);
          v584.i32[0] = vadd_f32(v584, vdup_lane_s32(v584, 1)).u32[0];
          v585 = vrsqrte_f32(v584.u32[0]);
          v586 = vmul_f32(v585, vrsqrts_f32(v584.u32[0], vmul_f32(v585, v585)));
          v587 = vmul_n_f32(v583, vmul_f32(v586, vrsqrts_f32(v584.u32[0], vmul_f32(v586, v586))).f32[0]);
          v588 = vsub_f32(v828, v860);
          v589 = vmul_f32(v588, v588);
          v589.i32[0] = vadd_f32(v589, vdup_lane_s32(v589, 1)).u32[0];
          *&v590 = vmla_f32(*&v582, v140, v587);
          v591 = vrsqrte_f32(v589.u32[0]);
          v592 = vmul_f32(v591, vrsqrts_f32(v589.u32[0], vmul_f32(v591, v591)));
          v593 = a1[1].u32[0] + (v13 + 4);
          *&v594 = v816;
          *(a1[2].i64[1] + 16 * v593) = v814;
          LODWORD(v595) = vmul_f32(v592, vrsqrts_f32(v589.u32[0], vmul_f32(v592, v592))).u32[0];
          v592.i32[0] = vuzp1_s8(v155, *&v582).u32[0];
          *(a1[1].i64[1] + 4 * v593) = v592.i32[0];
          *(a1[2].i64[0] + 8 * v593) = v853;
          DWORD2(v594) = 0;
          v596 = a1[1].u32[0] + (v13 + 5);
          *(&v594 + 3) = v857;
          *(a1[2].i64[1] + 16 * v596) = v594;
          v589.i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v805, 0), vdupq_n_s32(0x437F0000u)))), *&v582).u32[0];
          *(a1[1].i64[1] + 4 * v596) = v589.i32[0];
          *(a1[2].i64[0] + 8 * v596) = v853;
          v597 = a1[1].u32[0] + (v13 + 6);
          DWORD2(v590) = 0;
          *(&v590 + 3) = v857;
          *(a1[2].i64[1] + 16 * v597) = v590;
          *(a1[1].i64[1] + 4 * v597) = v589.i32[0];
          *(a1[2].i64[0] + 8 * v597) = v853;
          DWORD2(v582) = 0;
          v598 = a1[1].u32[0] + (v13 + 7);
          *(&v582 + 3) = v857;
          *(a1[2].i64[1] + 16 * v598) = v582;
          *(a1[1].i64[1] + 4 * v598) = v592.i32[0];
          *(a1[2].i64[0] + 8 * v598) = v853;
          v599 = a1[1].u32[0] + (v13 + 8);
          *(a1[2].i64[1] + 16 * v599) = v582;
          *(a1[1].i64[1] + 4 * v599) = v592.i32[0];
          *(a1[2].i64[0] + 8 * v599) = v853;
          v600 = a1[1].u32[0] + (v13 + 9);
          *(a1[2].i64[1] + 16 * v600) = v590;
          *(a1[1].i64[1] + 4 * v600) = v589.i32[0];
          *(a1[2].i64[0] + 8 * v600) = v853;
          *&v601 = vmla_f32(v828, v140, vmul_n_f32(v588, v595));
          v602 = a1[1].u32[0] + (v13 + 12);
          DWORD2(v601) = 0;
          *(&v601 + 3) = v857;
          *(a1[2].i64[1] + 16 * v602) = v601;
          *(a1[1].i64[1] + 4 * v602) = v589.i32[0];
          v603 = v838;
          *(a1[2].i64[0] + 8 * v602) = v838;
          v604 = a1[1].u32[0] + (v13 + 13);
          *(a1[2].i64[1] + 16 * v604) = v825;
          *(a1[1].i64[1] + 4 * v604) = v592.i32[0];
          *(a1[2].i64[0] + 8 * v604) = v838;
          LODWORD(v13) = v13 + 16;
          v605 = v853;
        }

        else
        {
          DWORD2(v582) = 0;
          v605 = v853;
          *(&v582 + 3) = v857;
          LODWORD(v13) = v13 + 4;
          v603 = v838;
        }

        v645 = a1[1].u32[0] + v13;
        *(a1[2].i64[1] + 16 * v645) = v825;
        v646 = vuzp1_s8(v155, *&v582).u32[0];
        *(a1[1].i64[1] + 4 * v645) = v646;
        *(a1[2].i64[0] + 8 * v645) = v603;
        v647 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v647) = v582;
        *(a1[1].i64[1] + 4 * v647) = v646;
        *(a1[2].i64[0] + 8 * v647) = v605;
      }

      goto LABEL_206;
    }

    *&v223 = v827;
    v224 = v840;
    if (v118 >= 0.0)
    {
      v428 = v804;
      if (v31)
      {
        v429 = 0;
      }

      else
      {
        v429 = (v800 & 0x60000000) == 0;
      }

      if (!v429)
      {
        v430 = vmul_n_f32(v23, a1[9].f32[3]);
        *&v431 = vadd_f32(v115, v430);
        *&v432 = vadd_f32(v116, v430);
        if (v17)
        {
          v433 = vmul_f32(a8, a8);
          v433.i32[0] = vadd_f32(v433, vdup_lane_s32(v433, 1)).u32[0];
          v434 = vrsqrte_f32(v433.u32[0]);
          v435 = vmul_f32(v434, vrsqrts_f32(v433.u32[0], vmul_f32(v434, v434)));
          v436 = vmul_n_f32(a8, vmul_f32(v435, vrsqrts_f32(v433.u32[0], vmul_f32(v435, v435))).f32[0]);
          *&v437 = vmla_n_f32(*&v431, v436, v795.f32[0]);
          if (v16)
          {
            v438 = v18;
          }

          else
          {
            v438 = 1.0;
          }

          v439 = a1[1].u32[0] + (v13 - 10);
          DWORD2(v437) = 0;
          *(&v437 + 3) = v438;
          v428.i32[3] = 1.0;
          v440 = vdupq_n_s32(0x437F0000u);
          *(a1[2].i64[1] + 16 * v439) = v437;
          v441 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v428, 0), v440))), *&v431).u32[0];
          *(a1[1].i64[1] + 4 * v439) = v441;
          _D2 = __PAIR64__(1.0, v834);
          *(a1[2].i64[0] + 8 * v439) = __PAIR64__(1.0, v834);
          v442 = a1[1].u32[0] + (v13 - 9);
          DWORD2(v431) = 0;
          *(&v431 + 3) = v438;
          v443 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v428, v848), v440)));
          *(a1[2].i64[1] + 16 * v442) = v431;
          v444 = vuzp1_s8(v443, *&v431).u32[0];
          *(a1[1].i64[1] + 4 * v442) = v444;
          *(a1[2].i64[0] + 8 * v442) = __PAIR64__(1.0, v834);
          *&v445 = vmla_n_f32(*&v432, v436, v795.f32[0]);
          *&v447 = v432;
          DWORD2(v447) = 0;
          v446 = a1[1].u32[0] + (v13 - 6);
          *(&v447 + 3) = v438;
          *(a1[2].i64[1] + 16 * v446) = v447;
          *(a1[1].i64[1] + 4 * v446) = v444;
          *(a1[2].i64[0] + 8 * v446) = v834;
          DWORD2(v445) = 0;
          v448 = a1[1].u32[0] + (v13 - 5);
          *(&v445 + 3) = v438;
          *(a1[2].i64[1] + 16 * v448) = v445;
          *(a1[1].i64[1] + 4 * v448) = v441;
          *(a1[2].i64[0] + 8 * v448) = v834;
          v449 = a1[1].u32[0] + (v13 - 2);
          *(a1[2].i64[1] + 16 * v449) = v431;
          *(a1[1].i64[1] + 4 * v449) = v444;
          *(a1[2].i64[0] + 8 * v449) = __PAIR64__(1.0, v834);
          v450 = a1[1].u32[0] + (v13 - 1);
          *(a1[2].i64[1] + 16 * v450) = v447;
          *(a1[1].i64[1] + 4 * v450) = v444;
          *(a1[2].i64[0] + 8 * v450) = v834;
          v451 = a1[1].u32[0] + v13;
          *(a1[2].i64[1] + 16 * v451) = v431;
          *(a1[1].i64[1] + 4 * v451) = v444;
          *(a1[2].i64[0] + 8 * v451) = __PAIR64__(1.0, v834);
          v452 = a1[1].u32[0] + (v13 + 1);
          *(a1[2].i64[1] + 16 * v452) = v437;
          *(a1[1].i64[1] + 4 * v452) = v441;
          *(a1[2].i64[0] + 8 * v452) = __PAIR64__(1.0, v834);
          *&v453 = vmls_lane_f32(*&v432, v436, v795, 0);
          v454 = a1[1].u32[0] + (v13 + 4);
          DWORD2(v453) = 0;
          *(&v453 + 3) = v438;
          *(a1[2].i64[1] + 16 * v454) = v453;
          *(a1[1].i64[1] + 4 * v454) = v441;
          *(a1[2].i64[0] + 8 * v454) = v834;
          v455 = a1[1].u32[0] + (v13 + 5);
          *(a1[2].i64[1] + 16 * v455) = v447;
          *(a1[1].i64[1] + 4 * v455) = v444;
          *(a1[2].i64[0] + 8 * v455) = v834;
          LODWORD(v13) = v13 + 8;
        }

        else
        {
          if (v16)
          {
            v692 = v18;
          }

          else
          {
            v692 = 1.0;
          }

          DWORD2(v431) = 0;
          *(&v431 + 3) = v692;
          v693 = a1[1].u32[0] + (v13 - 2);
          v428.i32[3] = 1.0;
          *(a1[2].i64[1] + 16 * v693) = v431;
          v443 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v428, v848), vdupq_n_s32(0x437F0000u))));
          v694 = vuzp1_s8(v443, *&v431).u32[0];
          *(a1[1].i64[1] + 4 * v693) = v694;
          _D2 = __PAIR64__(1.0, v834);
          *(a1[2].i64[0] + 8 * v693) = __PAIR64__(1.0, v834);
          v695 = a1[1].u32[0] + (v13 - 1);
          DWORD2(v432) = 0;
          *(&v432 + 3) = v692;
          *(a1[2].i64[1] + 16 * v695) = v432;
          *(a1[1].i64[1] + 4 * v695) = v694;
          *(a1[2].i64[0] + 8 * v695) = v834;
          v447 = v432;
        }

        v696 = a1[1].u32[0] + v13;
        *(a1[2].i64[1] + 16 * v696) = v447;
        v161 = vuzp1_s8(v443, *&v431).u32[0];
        *(a1[1].i64[1] + 4 * v696) = v161;
        *(a1[2].i64[0] + 8 * v696) = v834;
        v165 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v165) = v431;
        goto LABEL_50;
      }

      if (v17)
      {
        v753 = vmul_f32(a5, a5);
        v753.i32[0] = vadd_f32(v753, vdup_lane_s32(v753, 1)).u32[0];
        v754 = vrsqrte_f32(v753.u32[0]);
        v755 = vmul_f32(v754, vrsqrts_f32(v753.u32[0], vmul_f32(v754, v754)));
        v756 = vmul_n_f32(a5, vmul_f32(v755, vrsqrts_f32(v753.u32[0], vmul_f32(v755, v755))).f32[0]);
        *&v757 = vmls_lane_f32(v827, v756, v795, 0);
        *&v758 = v810;
        *&v759 = vmla_n_f32(v810, v756, v795.f32[0]);
        if (v16)
        {
          v760 = v18;
        }

        else
        {
          v760 = 1.0;
        }

        v761 = a1[1].u32[0] + (v13 - 10);
        DWORD2(v759) = 0;
        *(&v759 + 3) = v760;
        v428.i32[3] = 1.0;
        v762 = vdupq_n_s32(0x437F0000u);
        *(a1[2].i64[1] + 16 * v761) = v759;
        v763 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v428, 0), v762)));
        v764 = vuzp1_s8(v763, v763).u32[0];
        *(a1[1].i64[1] + 4 * v761) = v764;
        _D0 = __PAIR64__(1.0, v834);
        *(a1[2].i64[0] + 8 * v761) = __PAIR64__(1.0, v834);
        v765 = a1[1].u32[0] + (v13 - 9);
        DWORD2(v758) = 0;
        *(&v758 + 3) = v760;
        *(a1[2].i64[1] + 16 * v765) = v758;
        v766 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v428, v848), v762)));
        v762.i32[0] = vuzp1_s8(v766, __PAIR64__(1.0, v834)).u32[0];
        *(a1[1].i64[1] + 4 * v765) = v762.i32[0];
        *(a1[2].i64[0] + 8 * v765) = __PAIR64__(1.0, v834);
        DWORD2(v223) = 0;
        v767 = a1[1].u32[0] + (v13 - 6);
        *(&v223 + 3) = v760;
        *(a1[2].i64[1] + 16 * v767) = v223;
        *(a1[1].i64[1] + 4 * v767) = v762.i32[0];
        *(a1[2].i64[0] + 8 * v767) = v834;
        DWORD2(v757) = 0;
        v768 = a1[1].u32[0] + (v13 - 5);
        *(&v757 + 3) = v760;
        *(a1[2].i64[1] + 16 * v768) = v757;
        *(a1[1].i64[1] + 4 * v768) = v764;
        *(a1[2].i64[0] + 8 * v768) = v834;
        v769 = a1[1].u32[0] + (v13 - 2);
        *(a1[2].i64[1] + 16 * v769) = v758;
        *(a1[1].i64[1] + 4 * v769) = v762.i32[0];
        *(a1[2].i64[0] + 8 * v769) = __PAIR64__(1.0, v834);
        v770 = a1[1].u32[0] + (v13 - 1);
        *(a1[2].i64[1] + 16 * v770) = v223;
        *(a1[1].i64[1] + 4 * v770) = v762.i32[0];
        *(a1[2].i64[0] + 8 * v770) = v834;
        v771 = a1[1].u32[0] + v13;
        *(a1[2].i64[1] + 16 * v771) = v758;
        *(a1[1].i64[1] + 4 * v771) = v762.i32[0];
        *(a1[2].i64[0] + 8 * v771) = __PAIR64__(1.0, v834);
        v772 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v772) = v759;
        *(a1[1].i64[1] + 4 * v772) = v764;
        *(a1[2].i64[0] + 8 * v772) = __PAIR64__(1.0, v834);
        v773 = a1[1].u32[0] + (v13 + 4);
        *(a1[2].i64[1] + 16 * v773) = v757;
        *(a1[1].i64[1] + 4 * v773) = v764;
        *(a1[2].i64[0] + 8 * v773) = v834;
        v774 = a1[1].u32[0] + (v13 + 5);
        *(a1[2].i64[1] + 16 * v774) = v223;
        *(a1[1].i64[1] + 4 * v774) = v762.i32[0];
        *(a1[2].i64[0] + 8 * v774) = v834;
        LODWORD(v13) = v13 + 8;
      }

      else
      {
        if (v16)
        {
          v775 = v18;
        }

        else
        {
          v775 = 1.0;
        }

        *&v758 = v810;
        DWORD2(v758) = 0;
        *(&v758 + 3) = v775;
        v776 = a1[1].u32[0] + (v13 - 2);
        v428.i32[3] = 1.0;
        v777 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v428, v848), vdupq_n_s32(0x437F0000u)));
        *(a1[2].i64[1] + 16 * v776) = v758;
        v766 = vmovn_s32(v777);
        v778 = vuzp1_s8(v766, *v777.i8).u32[0];
        *(a1[1].i64[1] + 4 * v776) = v778;
        _D0 = __PAIR64__(1.0, v834);
        *(a1[2].i64[0] + 8 * v776) = __PAIR64__(1.0, v834);
        v779 = a1[1].u32[0] + (v13 - 1);
        DWORD2(v223) = 0;
        *(&v223 + 3) = v775;
        *(a1[2].i64[1] + 16 * v779) = v223;
        *(a1[1].i64[1] + 4 * v779) = v778;
        *(a1[2].i64[0] + 8 * v779) = v834;
      }

      v780 = a1[1].u32[0] + v13;
      *(a1[2].i64[1] + 16 * v780) = v223;
      v744 = vuzp1_s8(v766, _D0).u32[0];
      *(a1[1].i64[1] + 4 * v780) = v744;
      *(a1[2].i64[0] + 8 * v780) = v834;
      v321 = a1[1].u32[0] + (v13 + 1);
      *(a1[2].i64[1] + 16 * v321) = v758;
    }

    else
    {
      v858 = v117;
      v225 = vsub_f32(v117, v860);
      v226 = vsub_f32(v840, v827);
      v46 = sqrtf(vaddv_f32(vmul_f32(v226, v226))) <= sqrtf(v33);
      v227 = vsub_f32(v840, v116);
      v228 = sqrtf(vaddv_f32(vmul_f32(v227, v227)));
      v229 = sqrtf(v34);
      v230 = v46 && v228 <= v229;
      v231 = v840;
      if (!v230)
      {
        v224 = v115;
        v231 = v810;
      }

      v822 = v231;
      v829 = v225;
      v842 = v224;
      v865 = v116;
      v866 = vsub_f32(*&v223, v116);
      v863 = v860;
      v864 = v225;
      v861.i32[0] = 0;
      HIDWORD(v876) = 0;
      sk_ray2::intersect(&v865, &v863, &v861, &v876 + 1);
      v232 = a1[9].f32[3];
      v233 = vmul_f32(v829, v829);
      v234 = vadd_f32(v233, vdup_lane_s32(v233, 1)).u32[0];
      if (sqrtf(vaddv_f32(v233)) > v232)
      {
        v235 = vsub_f32(vmla_n_f32(v865, v866, v861.f32[0]), v860);
        v236 = fmaxf(sqrtf(vaddv_f32(vmul_f32(v235, v235))), v232);
        v237 = vrsqrte_f32(v234);
        v238 = vmul_f32(v237, vrsqrts_f32(v234, vmul_f32(v237, v237)));
        v239 = vmul_n_f32(v829, vmul_f32(v238, vrsqrts_f32(v234, vmul_f32(v238, v238))).f32[0]);
        v240 = vmla_n_f32(v860, v239, v236);
        v239.f32[0] = -v829.f32[1];
        v863 = v240;
        v864 = vzip1_s32(v239, v829);
        v861 = v240;
        v862 = vneg_f32(v864);
        *&v241 = sk_ray2::intersection(&v863, v867);
        v242 = vdup_lane_s32(v795, 0);
        v243 = vsub_f32(*&v241, v860);
        v244 = vmul_f32(v243, v243);
        v244.i32[0] = vadd_f32(v244, vdup_lane_s32(v244, 1)).u32[0];
        v245 = vrsqrte_f32(v244.u32[0]);
        v246 = vmul_f32(v245, vrsqrts_f32(v244.u32[0], vmul_f32(v245, v245)));
        v247 = vmul_n_f32(v243, vmul_f32(v246, vrsqrts_f32(v244.u32[0], vmul_f32(v246, v246))).f32[0]);
        v248 = vmla_n_f32(*&v241, v247, v795.f32[0]);
        v811 = v241;
        v817 = v248;
        if (v17)
        {
          *&v249 = v822;
          v250 = vsub_f32(v822, v860);
          v251 = vmul_f32(v250, v250);
          v251.i32[0] = vadd_f32(v251, vdup_lane_s32(v251, 1)).u32[0];
          v252 = vrsqrte_f32(v251.u32[0]);
          v253 = vmul_f32(v252, vrsqrts_f32(v251.u32[0], vmul_f32(v252, v252)));
          *&v254 = vmla_f32(v822, v242, vmul_n_f32(v250, vmul_f32(v253, vrsqrts_f32(v251.u32[0], vmul_f32(v253, v253))).f32[0]));
          if (v16)
          {
            v255 = v18;
          }

          else
          {
            v255 = 1.0;
          }

          DWORD2(v254) = 0;
          *(&v254 + 3) = v255;
          v256 = a1[1].u32[0] + (v13 - 10);
          v257 = v804;
          v257.i32[3] = 1.0;
          v258 = vdupq_n_s32(0x437F0000u);
          v259 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v257, 0), v258)));
          *(a1[2].i64[1] + 16 * v256) = v254;
          v247 = vuzp1_s8(v259, v259);
          *(a1[1].i64[1] + 4 * v256) = v247.i32[0];
          *(a1[2].i64[0] + 8 * v256) = __PAIR64__(1.0, v834);
          DWORD2(v249) = 0;
          *(&v249 + 3) = v255;
          v260 = a1[1].u32[0] + (v13 - 9);
          v808 = v257;
          v261 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v257, v848), v258)));
          *(a1[2].i64[1] + 16 * v260) = v249;
          v262 = vuzp1_s8(v261, v247).u32[0];
          *(a1[1].i64[1] + 4 * v260) = v262;
          v830 = __PAIR64__(1.0, v834);
          *(a1[2].i64[0] + 8 * v260) = __PAIR64__(1.0, v834);
          v263 = a1[1].u32[0] + (v13 - 6);
          DWORD2(v241) = 0;
          *(&v241 + 3) = v255;
          *(a1[2].i64[1] + 16 * v263) = v241;
          *(a1[1].i64[1] + 4 * v263) = v262;
          *(a1[2].i64[0] + 8 * v263) = v834;
          *&v264 = v248;
          DWORD2(v264) = 0;
          v265 = a1[1].u32[0] + (v13 - 5);
          v859 = v255;
          *(&v264 + 3) = v255;
          *(a1[2].i64[1] + 16 * v265) = v264;
          *(a1[1].i64[1] + 4 * v265) = v247.i32[0];
          v834 = v834;
          *(a1[2].i64[0] + 8 * v265) = v834;
        }

        else
        {
          v247.i32[0] = 1.0;
          if (v16)
          {
            v699 = v18;
          }

          else
          {
            v699 = 1.0;
          }

          *&v249 = v822;
          DWORD2(v249) = 0;
          v859 = v699;
          *(&v249 + 3) = v699;
          v700 = v804;
          v700.i32[3] = 1.0;
          v808 = v700;
          v261 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v700, v848), vdupq_n_s32(0x437F0000u))));
          v830 = __PAIR64__(1.0, v834);
          v834 = v834;
        }

        v701 = a1[1].u32[0] + (v13 - 2);
        *(a1[2].i64[1] + 16 * v701) = v249;
        v854 = vuzp1_s8(v261, v247).u32[0];
        *(a1[1].i64[1] + 4 * v701) = v854;
        *(a1[2].i64[0] + 8 * v701) = v830;
        *&v702 = sk_ray2::intersection(&v863, v867);
        DWORD2(v702) = 0;
        v703 = a1[1].u32[0] + (v13 - 1);
        *(&v702 + 3) = v859;
        *(a1[2].i64[1] + 16 * v703) = v702;
        *(a1[1].i64[1] + 4 * v703) = v854;
        *&v702 = v842;
        *(a1[2].i64[0] + 8 * v703) = v834;
        v704 = a1[1].u32[0] + v13;
        DWORD2(v702) = 0;
        *(&v702 + 3) = v859;
        v826 = v702;
        *(a1[2].i64[1] + 16 * v704) = v702;
        *(a1[1].i64[1] + 4 * v704) = v854;
        *(a1[2].i64[0] + 8 * v704) = v830;
        *&v705 = sk_ray2::intersection(&v863, v867);
        v706 = a1[1].u32[0] + (v13 + 1);
        DWORD2(v705) = 0;
        *(&v705 + 3) = v859;
        *(a1[2].i64[1] + 16 * v706) = v705;
        *(a1[1].i64[1] + 4 * v706) = v854;
        *(a1[2].i64[0] + 8 * v706) = v834;
        *&v707 = sk_ray2::intersection(&v861, &v868);
        v708 = a1[1].u32[0] + (v13 + 2);
        DWORD2(v707) = 0;
        *(&v707 + 3) = v859;
        *(a1[2].i64[1] + 16 * v708) = v707;
        *(a1[1].i64[1] + 4 * v708) = v854;
        *(a1[2].i64[0] + 8 * v708) = v834;
        *&v709 = sk_ray2::intersection(&v861, &v868);
        v710 = a1[1].u32[0] + (v13 + 3);
        DWORD2(v709) = 0;
        *(&v709 + 3) = v859;
        *(a1[2].i64[1] + 16 * v710) = v709;
        *(a1[1].i64[1] + 4 * v710) = v854;
        *(a1[2].i64[0] + 8 * v710) = v834;
        v711 = v13 + 4;
        *&v712 = sk_ray2::intersection(&v861, &v868);
        if (v17)
        {
          v713 = vsub_f32(v842, v860);
          v714 = vmul_f32(v713, v713);
          v714.i32[0] = vadd_f32(v714, vdup_lane_s32(v714, 1)).u32[0];
          v715 = vrsqrte_f32(v714.u32[0]);
          v716 = vmul_f32(v715, vrsqrts_f32(v714.u32[0], vmul_f32(v715, v715)));
          v714.i32[0] = vmul_f32(v716, vrsqrts_f32(v714.u32[0], vmul_f32(v716, v716))).u32[0];
          v717 = vsub_f32(*&v712, v860);
          v718 = vmul_f32(v717, v717);
          v718.i32[0] = vadd_f32(v718, vdup_lane_s32(v718, 1)).u32[0];
          v719 = vmul_n_f32(v713, v714.f32[0]);
          v720 = vrsqrte_f32(v718.u32[0]);
          v721 = vmul_f32(v720, vrsqrts_f32(v718.u32[0], vmul_f32(v720, v720)));
          v722 = vmul_n_f32(v717, vmul_f32(v721, vrsqrts_f32(v718.u32[0], vmul_f32(v721, v721))).f32[0]);
          *&v723 = v811;
          *&v724 = v817;
          DWORD2(v723) = 0;
          v725 = a1[1].u32[0] + v711;
          *(&v723 + 3) = v859;
          *(a1[2].i64[1] + 16 * v725) = v723;
          LODWORD(v723) = vuzp1_s8(v261, *&v712).u32[0];
          *(a1[1].i64[1] + 4 * v725) = v723;
          *(a1[2].i64[0] + 8 * v725) = v834;
          *(&v724 + 1) = __PAIR64__(LODWORD(v859), 0);
          v726 = a1[1].u32[0] + (v13 + 5);
          *(a1[2].i64[1] + 16 * v726) = v724;
          v718.i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v808, 0), vdupq_n_s32(0x437F0000u)))), *&v712).u32[0];
          *(a1[1].i64[1] + 4 * v726) = v718.i32[0];
          *&v727 = vmla_f32(*&v712, v242, v722);
          *(a1[2].i64[0] + 8 * v726) = v834;
          v728 = a1[1].u32[0] + (v13 + 6);
          *(&v727 + 1) = __PAIR64__(LODWORD(v859), 0);
          *(a1[2].i64[1] + 16 * v728) = v727;
          *(a1[1].i64[1] + 4 * v728) = v718.i32[0];
          *(a1[2].i64[0] + 8 * v728) = v834;
          *(&v712 + 1) = __PAIR64__(LODWORD(v859), 0);
          v729 = a1[1].u32[0] + (v13 + 7);
          *(a1[2].i64[1] + 16 * v729) = v712;
          *(a1[1].i64[1] + 4 * v729) = v723;
          *(a1[2].i64[0] + 8 * v729) = v834;
          v730 = a1[1].u32[0] + (v13 + 8);
          *(a1[2].i64[1] + 16 * v730) = v826;
          *(a1[1].i64[1] + 4 * v730) = v723;
          *(a1[2].i64[0] + 8 * v730) = v830;
          *&v731 = vmla_f32(v842, v242, v719);
          v732 = a1[1].u32[0] + (v13 + 9);
          *(&v731 + 1) = __PAIR64__(LODWORD(v859), 0);
          *(a1[2].i64[1] + 16 * v732) = v731;
          *(a1[1].i64[1] + 4 * v732) = v718.i32[0];
          *(a1[2].i64[0] + 8 * v732) = v830;
          v733 = a1[1].u32[0] + (v13 + 12);
          *(a1[2].i64[1] + 16 * v733) = v727;
          *(a1[1].i64[1] + 4 * v733) = v718.i32[0];
          *(a1[2].i64[0] + 8 * v733) = v834;
          v734 = a1[1].u32[0] + (v13 + 13);
          *(a1[2].i64[1] + 16 * v734) = v712;
          *(a1[1].i64[1] + 4 * v734) = v723;
          *(a1[2].i64[0] + 8 * v734) = v834;
          v711 = v13 + 16;
        }

        *&v735 = sk_ray2::intersection(&v861, &v868);
        DWORD2(v735) = 0;
        *(&v735 + 3) = v859;
        v736 = a1[1].u32[0] + v711;
        *(a1[2].i64[1] + 16 * v736) = v735;
        LODWORD(v735) = vuzp1_s8(v261, *&v735).u32[0];
        *(a1[1].i64[1] + 4 * v736) = v735;
        *(a1[2].i64[0] + 8 * v736) = v834;
        v737 = a1[1].u32[0] + (v711 + 1);
        *(a1[2].i64[1] + 16 * v737) = v826;
        *(a1[1].i64[1] + 4 * v737) = v735;
        *(a1[2].i64[0] + 8 * v737) = v830;
        LODWORD(v13) = v711;
        goto LABEL_206;
      }

      v606 = v804;
      if (v17)
      {
        v607 = vrsqrte_f32(v234);
        v608 = vmul_f32(v607, vrsqrts_f32(v234, vmul_f32(v607, v607)));
        LODWORD(v609) = vmul_f32(v608, vrsqrts_f32(v234, vmul_f32(v608, v608))).u32[0];
        *&v610 = v858;
        *&v611 = v822;
        v612 = vsub_f32(v822, v860);
        v613 = vmul_f32(v612, v612);
        v613.i32[0] = vadd_f32(v613, vdup_lane_s32(v613, 1)).u32[0];
        v614 = vrsqrte_f32(v613.u32[0]);
        v615 = vmul_f32(v614, vrsqrts_f32(v613.u32[0], vmul_f32(v614, v614)));
        *&v616 = vmla_n_f32(v822, vmul_n_f32(v612, vmul_f32(v615, vrsqrts_f32(v613.u32[0], vmul_f32(v615, v615))).f32[0]), v795.f32[0]);
        if (v16)
        {
          v617 = v18;
        }

        else
        {
          v617 = 1.0;
        }

        DWORD2(v616) = 0;
        v618 = a1[1].u32[0] + (v13 - 10);
        *(&v616 + 3) = v617;
        v606.i32[3] = 1.0;
        *(a1[2].i64[1] + 16 * v618) = v616;
        _D0 = __PAIR64__(1.0, v834);
        v619 = vdupq_n_s32(0x437F0000u);
        v620 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v606, 0), v619))), __PAIR64__(1.0, v834)).u32[0];
        *(a1[1].i64[1] + 4 * v618) = v620;
        *(a1[2].i64[0] + 8 * v618) = __PAIR64__(1.0, v834);
        v621 = a1[1].u32[0] + (v13 - 9);
        DWORD2(v611) = 0;
        *(&v611 + 3) = v617;
        v622 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v606, v848), v619)));
        *(a1[2].i64[1] + 16 * v621) = v611;
        v623 = vuzp1_s8(v622, __PAIR64__(1.0, v834)).u32[0];
        *(a1[1].i64[1] + 4 * v621) = v623;
        *(a1[2].i64[0] + 8 * v621) = __PAIR64__(1.0, v834);
        v624 = a1[1].u32[0] + (v13 - 6);
        DWORD2(v610) = 0;
        *(&v610 + 3) = v617;
        *(a1[2].i64[1] + 16 * v624) = v610;
        *(a1[1].i64[1] + 4 * v624) = v623;
        *(a1[2].i64[0] + 8 * v624) = v834;
        *&v625 = vmla_n_f32(v858, vmul_n_f32(v829, v609), v795.f32[0]);
        v626 = a1[1].u32[0] + (v13 - 5);
        DWORD2(v625) = 0;
        *(&v625 + 3) = v617;
        *(a1[2].i64[1] + 16 * v626) = v625;
        *(a1[1].i64[1] + 4 * v626) = v620;
        *(a1[2].i64[0] + 8 * v626) = v834;
        v627 = a1[1].u32[0] + (v13 - 2);
        *(a1[2].i64[1] + 16 * v627) = v611;
        *(a1[1].i64[1] + 4 * v627) = v623;
        *(a1[2].i64[0] + 8 * v627) = __PAIR64__(1.0, v834);
        v628 = a1[1].u32[0] + (v13 - 1);
        *(a1[2].i64[1] + 16 * v628) = v610;
        *(a1[1].i64[1] + 4 * v628) = v623;
        *(a1[2].i64[0] + 8 * v628) = v834;
        *&v633 = v842;
        v629 = vsub_f32(v842, v860);
        *v619.f32 = vmul_f32(v629, v629);
        v619.i32[0] = vadd_f32(*v619.f32, vdup_lane_s32(*v619.f32, 1)).u32[0];
        v630 = vrsqrte_f32(v619.u32[0]);
        v631 = vmul_f32(v630, vrsqrts_f32(v619.u32[0], vmul_f32(v630, v630)));
        DWORD2(v633) = 0;
        v632 = a1[1].u32[0] + v13;
        *(&v633 + 3) = v617;
        *(a1[2].i64[1] + 16 * v632) = v633;
        *(a1[1].i64[1] + 4 * v632) = v623;
        *(a1[2].i64[0] + 8 * v632) = __PAIR64__(1.0, v834);
        *v619.f32 = vmla_n_f32(v842, vmul_n_f32(v629, vmul_f32(v631, vrsqrts_f32(v619.u32[0], vmul_f32(v631, v631))).f32[0]), v795.f32[0]);
        v634 = a1[1].u32[0] + (v13 + 1);
        v619.i32[2] = 0;
        v619.f32[3] = v617;
        *(a1[2].i64[1] + 16 * v634) = v619;
        *(a1[1].i64[1] + 4 * v634) = v620;
        *(a1[2].i64[0] + 8 * v634) = __PAIR64__(1.0, v834);
        v635 = a1[1].u32[0] + (v13 + 4);
        *(a1[2].i64[1] + 16 * v635) = v625;
        *(a1[1].i64[1] + 4 * v635) = v620;
        *(a1[2].i64[0] + 8 * v635) = v834;
        v636 = a1[1].u32[0] + (v13 + 5);
        *(a1[2].i64[1] + 16 * v636) = v610;
        *(a1[1].i64[1] + 4 * v636) = v623;
        *(a1[2].i64[0] + 8 * v636) = v834;
        LODWORD(v13) = v13 + 8;
      }

      else
      {
        if (v16)
        {
          v738 = v18;
        }

        else
        {
          v738 = 1.0;
        }

        v739 = a1[1].u32[0] + (v13 - 2);
        *&v740 = v822;
        DWORD2(v740) = 0;
        *(&v740 + 3) = v738;
        v606.i32[3] = 1.0;
        v741 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v606, v848), vdupq_n_s32(0x437F0000u)));
        v622 = vmovn_s32(v741);
        *(a1[2].i64[1] + 16 * v739) = v740;
        LODWORD(v740) = vuzp1_s8(v622, *v741.i8).u32[0];
        *(a1[1].i64[1] + 4 * v739) = v740;
        _D0 = __PAIR64__(1.0, v834);
        *(a1[2].i64[0] + 8 * v739) = __PAIR64__(1.0, v834);
        *&v610 = v858;
        DWORD2(v610) = 0;
        v742 = a1[1].u32[0] + (v13 - 1);
        *(&v610 + 3) = v738;
        *(a1[2].i64[1] + 16 * v742) = v610;
        *(a1[1].i64[1] + 4 * v742) = v740;
        *(a1[2].i64[0] + 8 * v742) = v834;
        *&v633 = v842;
        DWORD2(v633) = 0;
        *(&v633 + 3) = v738;
      }

      v743 = a1[1].u32[0] + v13;
      *(a1[2].i64[1] + 16 * v743) = v610;
      v744 = vuzp1_s8(v622, _D0).u32[0];
      *(a1[1].i64[1] + 4 * v743) = v744;
      *(a1[2].i64[0] + 8 * v743) = v834;
      v321 = a1[1].u32[0] + (v13 + 1);
      *(a1[2].i64[1] + 16 * v321) = v633;
    }

    *(a1[1].i64[1] + 4 * v321) = v744;
LABEL_101:
    *(a1[2].i64[0] + 8 * v321) = _D0;
    goto LABEL_206;
  }

  v36 = a1[10].f32[0];
  if (v35 == 1)
  {
    v77 = (-*(&a7 + 1) * *&a4) + (*&a7 * *(&a4 + 1));
    if (v77 > 0.0)
    {
      v839 = a1[12].f32[2];
      v847 = a1[12].f32[0];
      v794 = a1[9].f32[2];
      v802 = a1[11];
      v78 = COERCE_DOUBLE(vsub_f32(a2, a8));
      v874 = v78;
      v875 = vneg_f32(*&a7);
      v79 = COERCE_DOUBLE(vsub_f32(a2, a5));
      v872 = v79;
      v873 = a4;
      v868.i32[0] = 0;
      v867[0].i32[0] = 0;
      LODWORD(v833) = v8;
      sk_ray2::intersect(&v874, &v872, &v868, v867);
      *&v80 = v833;
      v81 = COERCE_DOUBLE(vmla_n_f32(*&v874, v875, v868.f32[0]));
      v82 = vsub_f32(*&v81, *&v79);
      v46 = sqrtf(vaddv_f32(vmul_f32(v82, v82))) <= sqrtf(v33);
      v83 = vsub_f32(*&v81, *&v78);
      v84 = sqrtf(vaddv_f32(vmul_f32(v83, v83)));
      v85 = sqrtf(v34);
      v86 = v46 && v84 <= v85;
      if (v86)
      {
        *&v87 = v81;
      }

      else
      {
        *&v87 = v78;
      }

      if (v86)
      {
        *&v88 = v81;
      }

      else
      {
        *&v88 = v79;
      }

      v89 = vsub_f32(*&v88, v860);
      v90 = v833 - fabsf(vaddv_f32(vmul_f32(v23, v89)) / v36);
      v91 = vsub_f32(*&v87, v860);
      v92 = vmul_f32(v29, v91);
      v92.f32[0] = v833 + fabsf(vaddv_f32(v92) / v36);
      *&v93 = vadd_f32(a5, v860);
      if (v17)
      {
        v94 = vmul_f32(a5, a5);
        v94.i32[0] = vadd_f32(v94, vdup_lane_s32(v94, 1)).u32[0];
        v95 = vrsqrte_f32(v94.u32[0]);
        v96 = vmul_f32(v95, vrsqrts_f32(v94.u32[0], vmul_f32(v95, v95)));
        v97 = vmul_n_f32(a5, vmul_f32(v96, vrsqrts_f32(v94.u32[0], vmul_f32(v96, v96))).f32[0]);
        *&v98 = vmla_n_f32(*&v93, v97, v794);
        v99 = vmul_f32(v89, v89);
        v99.i32[0] = vadd_f32(v99, vdup_lane_s32(v99, 1)).u32[0];
        v100 = vrsqrte_f32(v99.u32[0]);
        v101 = vmul_f32(v100, vrsqrts_f32(v99.u32[0], vmul_f32(v100, v100)));
        v102 = vmul_n_f32(v89, vmul_f32(v101, vrsqrts_f32(v99.u32[0], vmul_f32(v101, v101))).f32[0]);
        if (v16)
        {
          v103 = v839;
        }

        else
        {
          v103 = 1.0;
        }

        v104 = a1[1].u32[0] + (v13 - 10);
        DWORD2(v98) = 0;
        *(&v98 + 3) = v103;
        v105 = v802;
        v105.i32[3] = 1.0;
        v106 = vdupq_n_s32(0x437F0000u);
        *(a1[2].i64[1] + 16 * v104) = v98;
        v107 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v105, 0), v106))), v92).u32[0];
        *(a1[1].i64[1] + 4 * v104) = v107;
        __asm { FMOV            V16.2S, #1.0 }

        *&_D16 = v833;
        *(a1[2].i64[0] + 8 * v104) = _D16;
        v109 = a1[1].u32[0] + (v13 - 9);
        DWORD2(v93) = 0;
        *(&v93 + 3) = v103;
        v803 = v105;
        v110 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v105, v847), v106)));
        *(a1[2].i64[1] + 16 * v109) = v93;
        v106.i32[0] = vuzp1_s8(v110, v92).u32[0];
        *(a1[1].i64[1] + 4 * v109) = v106.i32[0];
        *(a1[2].i64[0] + 8 * v109) = _D16;
        *&v111 = vmla_n_f32(*&v88, v102, v794);
        v112 = a1[1].u32[0] + (v13 - 6);
        DWORD2(v88) = 0;
        *(&v88 + 3) = v103;
        *(a1[2].i64[1] + 16 * v112) = v88;
        *(a1[1].i64[1] + 4 * v112) = v106.i32[0];
        v113 = LODWORD(v90);
        *(a1[2].i64[0] + 8 * v112) = LODWORD(v90);
        DWORD2(v111) = 0;
        v114 = a1[1].u32[0] + (v13 - 5);
        *(&v111 + 3) = v103;
        *(a1[2].i64[1] + 16 * v114) = v111;
        *(a1[1].i64[1] + 4 * v114) = v107;
        *(a1[2].i64[0] + 8 * v114) = LODWORD(v90);
      }

      else
      {
        if (v16)
        {
          v103 = v839;
        }

        else
        {
          v103 = 1.0;
        }

        DWORD2(v93) = 0;
        *(&v93 + 3) = v103;
        v323 = v802;
        v323.i32[3] = 1.0;
        v803 = v323;
        v324 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v323, v847), vdupq_n_s32(0x437F0000u)));
        DWORD2(v88) = 0;
        *(&v88 + 3) = v103;
        v113 = LODWORD(v90);
        v325 = vmul_f32(a5, a5);
        v110 = vmovn_s32(v324);
        v324.i32[0] = vadd_f32(v325, vdup_lane_s32(v325, 1)).u32[0];
        v326 = vrsqrte_f32(v324.u32[0]);
        v327 = vmul_f32(v326, vrsqrts_f32(v324.u32[0], vmul_f32(v326, v326)));
        v97 = vmul_n_f32(a5, vmul_f32(v327, vrsqrts_f32(v324.u32[0], vmul_f32(v327, v327))).f32[0]);
      }

      v328 = a1[1].u32[0] + (v13 - 2);
      *(a1[2].i64[1] + 16 * v328) = v93;
      v329 = vuzp1_s8(v110, v92).u32[0];
      *(a1[1].i64[1] + 4 * v328) = v329;
      v330 = __PAIR64__(1.0, LODWORD(v833));
      *(a1[2].i64[0] + 8 * v328) = __PAIR64__(1.0, LODWORD(v833));
      v331 = a1[1].u32[0] + (v13 - 1);
      *(a1[2].i64[1] + 16 * v331) = v88;
      *(a1[1].i64[1] + 4 * v331) = v329;
      *(a1[2].i64[0] + 8 * v331) = v113;
      *&v332 = v860;
      DWORD2(v332) = 0;
      v333 = a1[1].u32[0] + v13;
      *(&v332 + 3) = v103;
      *(a1[2].i64[1] + 16 * v333) = v332;
      *(a1[1].i64[1] + 4 * v333) = v329;
      HIDWORD(v80) = 0.5;
      *(a1[2].i64[0] + 8 * v333) = v80;
      v334 = a1[1].u32[0] + (v13 + 1);
      *(a1[2].i64[1] + 16 * v334) = v88;
      *(a1[1].i64[1] + 4 * v334) = v329;
      *(a1[2].i64[0] + 8 * v334) = v113;
      v335 = a1[1].u32[0] + (v13 + 2);
      *(a1[2].i64[1] + 16 * v335) = v93;
      *(a1[1].i64[1] + 4 * v335) = v329;
      *(a1[2].i64[0] + 8 * v335) = __PAIR64__(1.0, LODWORD(v833));
      v336 = a1[1].u32[0] + (v13 + 3);
      *(a1[2].i64[1] + 16 * v336) = v93;
      *(a1[1].i64[1] + 4 * v336) = v329;
      *(a1[2].i64[0] + 8 * v336) = __PAIR64__(1.0, LODWORD(v833));
      v337 = a1[1].u32[0] + (v13 + 4);
      v818 = v332;
      *(a1[2].i64[1] + 16 * v337) = v332;
      *(a1[1].i64[1] + 4 * v337) = v329;
      v837 = v80;
      *(a1[2].i64[0] + 8 * v337) = v80;
      v338 = a1[1].u32[0] + (v13 + 5);
      v785 = v87;
      DWORD2(v87) = 0;
      *(&v87 + 3) = v103;
      *(a1[2].i64[1] + 16 * v338) = v87;
      *(a1[1].i64[1] + 4 * v338) = v329;
      v789 = v92.u32[0];
      v791 = v87;
      *(a1[2].i64[0] + 8 * v338) = v92.u32[0];
      *&v339 = vadd_f32(a8, v860);
      v783 = v339;
      DWORD2(v339) = 0;
      v340 = a1[1].u32[0] + (v13 + 6);
      v823 = v103;
      v831 = v330;
      *(&v339 + 3) = v103;
      *(a1[2].i64[1] + 16 * v340) = v339;
      *(a1[1].i64[1] + 4 * v340) = v329;
      *(a1[2].i64[0] + 8 * v340) = v330;
      v341 = a1[1].u32[0] + (v13 + 7);
      v787 = v339;
      *(a1[2].i64[1] + 16 * v341) = v339;
      *(a1[1].i64[1] + 4 * v341) = v329;
      *(a1[2].i64[0] + 8 * v341) = v330;
      v342 = v13 + 8;
      *&v339 = vmul_f32(a8, a8);
      LODWORD(v339) = vadd_f32(*&v339, vdup_lane_s32(*&v339, 1)).u32[0];
      v343 = vrsqrte_f32(v339);
      v344 = vmul_f32(v343, vrsqrts_f32(v339, vmul_f32(v343, v343)));
      v345 = vmul_n_f32(a8, vmul_f32(v344, vrsqrts_f32(v339, vmul_f32(v344, v344))).f32[0]);
      v346 = acosf(vaddv_f32(vmul_f32(v345, v97)));
      v347 = (a1[9].f32[0] + (a1[9].f32[2] * 2.0)) * 0.14;
      v348 = (((ceilf(v347) * 2.0) + 1.0) * (v346 / 3.14159265) + 1.0);
      if (v348 < 1)
      {
        LODWORD(v13) = v13 + 8;
        if (v17)
        {
LABEL_112:
          *&v378 = vmla_n_f32(v783, v345, v794);
          v379 = vmul_f32(v91, v91);
          v379.i32[0] = vadd_f32(v379, vdup_lane_s32(v379, 1)).u32[0];
          v380 = vrsqrte_f32(v379.u32[0]);
          v381 = vmul_f32(v380, vrsqrts_f32(v379.u32[0], vmul_f32(v380, v380)));
          v382 = vmul_n_f32(v91, vmul_f32(v381, vrsqrts_f32(v379.u32[0], vmul_f32(v381, v381))).f32[0]);
          v383 = a1[1].u32[0] + v13;
          v384 = v787;
          *(a1[2].i64[1] + 16 * v383) = v787;
          v381.i32[0] = vuzp1_s8(v110, v382).u32[0];
          *(a1[1].i64[1] + 4 * v383) = v381.i32[0];
          v385 = v831;
          *(a1[2].i64[0] + 8 * v383) = v831;
          v386 = a1[1].u32[0] + (v13 + 1);
          DWORD2(v378) = 0;
          *(&v378 + 3) = v823;
          *(a1[2].i64[1] + 16 * v386) = v378;
          v387 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v803, 0), vdupq_n_s32(0x437F0000u)))), v382).u32[0];
          *(a1[1].i64[1] + 4 * v386) = v387;
          *(a1[2].i64[0] + 8 * v386) = v831;
          *&v388 = vmla_n_f32(v785, v382, v794);
          v389 = a1[1].u32[0] + (v13 + 4);
          DWORD2(v388) = 0;
          *(&v388 + 3) = v823;
          *(a1[2].i64[1] + 16 * v389) = v388;
          *(a1[1].i64[1] + 4 * v389) = v387;
          v391 = v789;
          v390 = v791;
          *(a1[2].i64[0] + 8 * v389) = v789;
          v392 = a1[1].u32[0] + (v13 + 5);
          *(a1[2].i64[1] + 16 * v392) = v791;
          *(a1[1].i64[1] + 4 * v392) = v381.i32[0];
          *(a1[2].i64[0] + 8 * v392) = v789;
          LODWORD(v13) = v13 + 8;
LABEL_144:
          v502 = a1[1].u32[0] + v13;
          *(a1[2].i64[1] + 16 * v502) = v390;
          v503 = vuzp1_s8(v110, *&v390).u32[0];
          *(a1[1].i64[1] + 4 * v502) = v503;
          *(a1[2].i64[0] + 8 * v502) = v391;
          v504 = a1[1].u32[0] + (v13 + 1);
          *(a1[2].i64[1] + 16 * v504) = v384;
          *(a1[1].i64[1] + 4 * v504) = v503;
          *(a1[2].i64[0] + 8 * v504) = v385;
          goto LABEL_206;
        }
      }

      else
      {
        v349 = 0;
        v350 = v348;
        v851 = -a8.f32[1];
        v351 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v803, 0), vdupq_n_s32(0x437F0000u))));
        v352 = vdup_lane_s32(a8, 0);
        v812 = vuzp1_s8(v110, v351).u32[0];
        v798 = vuzp1_s8(v351, v351).u32[0];
        do
        {
          v353 = __sincosf_stret((v346 * v349) / v350);
          v843 = vadd_f32(vmla_f32(vmul_f32(__PAIR64__(a8.u32[1], LODWORD(v353.__sinval)), __PAIR64__(LODWORD(v353.__cosval), LODWORD(v851))), vext_s8(__PAIR64__(LODWORD(v353.__cosval), LODWORD(v851)), __PAIR64__(a8.u32[1], LODWORD(v353.__sinval)), 4uLL), v352), v860);
          v354 = __sincosf_stret((v346 * ++v349) / v350);
          v355 = a1[1].u32[0] + v342;
          *&v356 = v843;
          DWORD2(v356) = 0;
          *(&v356 + 3) = v823;
          *(a1[2].i64[1] + 16 * v355) = v356;
          *(a1[1].i64[1] + 4 * v355) = v812;
          v357 = vadd_f32(vmla_f32(vmul_f32(__PAIR64__(a8.u32[1], LODWORD(v354.__sinval)), __PAIR64__(LODWORD(v354.__cosval), LODWORD(v851))), vext_s8(__PAIR64__(LODWORD(v354.__cosval), LODWORD(v851)), __PAIR64__(a8.u32[1], LODWORD(v354.__sinval)), 4uLL), v352), v860);
          *(a1[2].i64[0] + 8 * v355) = v831;
          v358 = a1[1].u32[0] + (v342 + 1);
          *&v359 = v357;
          *(&v359 + 1) = __PAIR64__(LODWORD(v823), 0);
          *(a1[2].i64[1] + 16 * v358) = v359;
          *(a1[1].i64[1] + 4 * v358) = v812;
          *(a1[2].i64[0] + 8 * v358) = v831;
          v360 = a1[1].u32[0] + (v342 + 2);
          *(a1[2].i64[1] + 16 * v360) = v818;
          *(a1[1].i64[1] + 4 * v360) = v812;
          *(a1[2].i64[0] + 8 * v360) = v837;
          v361 = a1[1].u32[0] + (v342 + 3);
          *(a1[2].i64[1] + 16 * v361) = v818;
          *(a1[1].i64[1] + 4 * v361) = v812;
          *(a1[2].i64[0] + 8 * v361) = v837;
          LODWORD(v13) = v342 + 4;
          if (a1[9].i8[4] == 1)
          {
            v362 = vsub_f32(v843, v860);
            v363 = vmul_f32(v362, v362);
            v363.i32[0] = vadd_f32(v363, vdup_lane_s32(v363, 1)).u32[0];
            v364 = vrsqrte_f32(v363.u32[0]);
            v365 = vmul_f32(v364, vrsqrts_f32(v363.u32[0], vmul_f32(v364, v364)));
            v366 = vmul_n_f32(v362, vmul_f32(v365, vrsqrts_f32(v363.u32[0], vmul_f32(v365, v365))).f32[0]);
            v367 = vsub_f32(v357, v860);
            v368 = vmul_f32(v367, v367);
            v368.i32[0] = vadd_f32(v368, vdup_lane_s32(v368, 1)).u32[0];
            v369 = vrsqrte_f32(v368.u32[0]);
            v370 = vmul_f32(v369, vrsqrts_f32(v368.u32[0], vmul_f32(v369, v369)));
            v371 = a1[9].f32[2];
            *&v372 = vmla_n_f32(v357, vmul_n_f32(v367, vmul_f32(v370, vrsqrts_f32(v368.u32[0], vmul_f32(v370, v370))).f32[0]), v371);
            v373 = a1[1].u32[0] + v13;
            *(a1[2].i64[1] + 16 * v373) = v356;
            *(a1[1].i64[1] + 4 * v373) = v812;
            *(a1[2].i64[0] + 8 * v373) = v831;
            v374 = a1[1].u32[0] + (v342 + 5);
            *(a1[2].i64[1] + 16 * v374) = v359;
            *(a1[1].i64[1] + 4 * v374) = v812;
            *(a1[2].i64[0] + 8 * v374) = v831;
            DWORD2(v372) = 0;
            v375 = a1[1].u32[0] + (v342 + 6);
            *(&v372 + 3) = v823;
            *(a1[2].i64[1] + 16 * v375) = v372;
            *(a1[1].i64[1] + 4 * v375) = v798;
            *(a1[2].i64[0] + 8 * v375) = v831;
            *&v376 = vmla_n_f32(v843, v366, v371);
            v377 = a1[1].u32[0] + (v342 + 7);
            DWORD2(v376) = 0;
            *(&v376 + 3) = v823;
            *(a1[2].i64[1] + 16 * v377) = v376;
            *(a1[1].i64[1] + 4 * v377) = v798;
            *(a1[2].i64[0] + 8 * v377) = v831;
            LODWORD(v13) = v342 + 8;
          }

          v342 = v13;
        }

        while (v348 != v349);
        if (v17)
        {
          goto LABEL_112;
        }
      }

      v385 = v831;
      v391 = v789;
      v390 = v791;
      v384 = v787;
      goto LABEL_144;
    }

    if (v77 >= 0.0)
    {
      if (v31)
      {
        v393 = 0;
      }

      else
      {
        v393 = (v30.i32[1] & 0x60000000) == 0;
      }

      if (v393)
      {
        *&v745 = vadd_f32(a5, a2);
        if (a1[9].i8[5])
        {
          v746 = a1[12].f32[2];
        }

        else
        {
          v746 = 1.0;
        }

        DWORD2(v745) = 0;
        *(&v745 + 3) = v746;
        v15.i32[3] = 1.0;
        v747 = a1[1].u32[0] + (v13 - 2);
        *(a1[2].i64[1] + 16 * v747) = v745;
        v748 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v15, v14), vdupq_n_s32(0x437F0000u)))), *&v745).u32[0];
        *(a1[1].i64[1] + 4 * v747) = v748;
        *(a1[2].i64[0] + 8 * v747) = __PAIR64__(1.0, v8);
        *&v749 = vsub_f32(a2, a5);
        v750 = a1[1].u32[0] + (v13 - 1);
        DWORD2(v749) = 0;
        *(&v749 + 3) = v746;
        *(a1[2].i64[1] + 16 * v750) = v749;
        *(a1[1].i64[1] + 4 * v750) = v748;
        *(a1[2].i64[0] + 8 * v750) = v8;
        v751 = a1[1].u32[0] + v13;
        *(a1[2].i64[1] + 16 * v751) = v749;
        *(a1[1].i64[1] + 4 * v751) = v748;
        *(a1[2].i64[0] + 8 * v751) = v8;
        v752 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v752) = v745;
        *(a1[1].i64[1] + 4 * v752) = v748;
        *(a1[2].i64[0] + 8 * v752) = __PAIR64__(1.0, v8);
      }

      else
      {
        v394 = vmul_n_f32(v23, a1[9].f32[3]);
        *&v395 = vadd_f32(vadd_f32(a8, a2), v394);
        if (a1[9].i8[5])
        {
          v396 = a1[12].f32[2];
        }

        else
        {
          v396 = 1.0;
        }

        DWORD2(v395) = 0;
        *(&v395 + 3) = v396;
        v15.i32[3] = 1.0;
        v397 = a1[1].u32[0] + (v13 - 2);
        *(a1[2].i64[1] + 16 * v397) = v395;
        v398 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v15, v14), vdupq_n_s32(0x437F0000u)))), *&v395).u32[0];
        *(a1[1].i64[1] + 4 * v397) = v398;
        *(a1[2].i64[0] + 8 * v397) = __PAIR64__(1.0, v8);
        *&v399 = vadd_f32(vsub_f32(a2, a8), v394);
        v400 = a1[1].u32[0] + (v13 - 1);
        DWORD2(v399) = 0;
        *(&v399 + 3) = v396;
        *(a1[2].i64[1] + 16 * v400) = v399;
        *(a1[1].i64[1] + 4 * v400) = v398;
        *(a1[2].i64[0] + 8 * v400) = v8;
        v401 = a1[1].u32[0] + v13;
        *(a1[2].i64[1] + 16 * v401) = v399;
        *(a1[1].i64[1] + 4 * v401) = v398;
        *(a1[2].i64[0] + 8 * v401) = v8;
        v402 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v402) = v395;
        *(a1[1].i64[1] + 4 * v402) = v398;
        *(a1[2].i64[0] + 8 * v402) = __PAIR64__(1.0, v8);
      }

      goto LABEL_206;
    }

    v841 = a1[12].f32[2];
    v849 = a1[12].f32[0];
    v796 = v9;
    v806 = a1[11];
    v185 = COERCE_DOUBLE(vadd_f32(a8, a2));
    v874 = v185;
    v875 = vneg_f32(*&a7);
    v186 = COERCE_DOUBLE(vadd_f32(a5, a2));
    v872 = v186;
    v873 = a4;
    v868.i32[0] = 0;
    v867[0].i32[0] = 0;
    LODWORD(v835) = v8;
    sk_ray2::intersect(&v874, &v872, &v868, v867);
    *&v187 = v860;
    *&v188 = v835;
    v189 = COERCE_DOUBLE(vmla_n_f32(*&v874, v875, v868.f32[0]));
    *&v190 = vsub_f32(v860, a5);
    v191 = vsub_f32(*&v189, *&v190);
    v46 = sqrtf(vaddv_f32(vmul_f32(v191, v191))) <= sqrtf(v33);
    *&v192 = vsub_f32(v860, a8);
    v193 = vsub_f32(*&v189, *&v192);
    v194 = sqrtf(vaddv_f32(vmul_f32(v193, v193)));
    v195 = sqrtf(v34);
    v196 = v46 && v194 <= v195;
    if (v196)
    {
      *&v197 = v189;
    }

    else
    {
      *&v197 = v185;
    }

    if (v196)
    {
      *&v198 = v189;
    }

    else
    {
      *&v198 = v186;
    }

    v199 = vsub_f32(*&v198, v860);
    v200 = v835 - fabsf(vaddv_f32(vmul_f32(v23, v199)) / v36);
    v201 = vsub_f32(*&v197, v860);
    *&v202 = v835 + fabsf(vaddv_f32(vmul_f32(v29, v201)) / v36);
    if (v17)
    {
      v203 = vmul_f32(v199, v199);
      v203.i32[0] = vadd_f32(v203, vdup_lane_s32(v203, 1)).u32[0];
      v204 = vrsqrte_f32(v203.u32[0]);
      v205 = vmul_f32(v204, vrsqrts_f32(v203.u32[0], vmul_f32(v204, v204)));
      *&v206 = vmla_n_f32(*&v198, vmul_n_f32(v199, vmul_f32(v205, vrsqrts_f32(v203.u32[0], vmul_f32(v205, v205))).f32[0]), v796.f32[0]);
      v207 = vmul_f32(a5, a5);
      v207.i32[0] = vadd_f32(v207, vdup_lane_s32(v207, 1)).u32[0];
      v208 = vrsqrte_f32(v207.u32[0]);
      v209 = vmul_f32(v208, vrsqrts_f32(v207.u32[0], vmul_f32(v208, v208)));
      v210 = vdup_lane_s32(vmul_f32(v209, vrsqrts_f32(v207.u32[0], vmul_f32(v209, v209))), 0);
      v211 = vmul_f32(a5, vneg_f32(v210));
      if (v16)
      {
        v212 = v841;
      }

      else
      {
        v212 = 1.0;
      }

      DWORD2(v206) = 0;
      v213 = a1[1].u32[0] + (v13 - 10);
      *(&v206 + 3) = v212;
      v214 = v806;
      v214.i32[3] = 1.0;
      v215 = vdupq_n_s32(0x437F0000u);
      *(a1[2].i64[1] + 16 * v213) = v206;
      v216 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v214, 0), v215))), *&v190).u32[0];
      *(a1[1].i64[1] + 4 * v213) = v216;
      __asm { FMOV            V6.2S, #1.0 }

      *&_D6 = v835;
      *(a1[2].i64[0] + 8 * v213) = _D6;
      DWORD2(v198) = 0;
      v218 = a1[1].u32[0] + (v13 - 9);
      *(&v198 + 3) = v212;
      v807 = v214;
      v219 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v214, v849), v215)));
      *(a1[2].i64[1] + 16 * v218) = v198;
      v215.i32[0] = vuzp1_s8(v219, *&v190).u32[0];
      *(a1[1].i64[1] + 4 * v218) = v215.i32[0];
      *(a1[2].i64[0] + 8 * v218) = _D6;
      *&v220 = vmla_n_f32(*&v190, v211, v796.f32[0]);
      v221 = a1[1].u32[0] + (v13 - 6);
      DWORD2(v190) = 0;
      *(&v190 + 3) = v212;
      *(a1[2].i64[1] + 16 * v221) = v190;
      *(a1[1].i64[1] + 4 * v221) = v215.i32[0];
      *(a1[2].i64[0] + 8 * v221) = LODWORD(v200);
      DWORD2(v220) = 0;
      v222 = a1[1].u32[0] + (v13 - 5);
      *(&v220 + 3) = v212;
      *(a1[2].i64[1] + 16 * v222) = v220;
      *(a1[1].i64[1] + 4 * v222) = v216;
      *(a1[2].i64[0] + 8 * v222) = LODWORD(v200);
    }

    else
    {
      if (v16)
      {
        v212 = v841;
      }

      else
      {
        v212 = 1.0;
      }

      DWORD2(v198) = 0;
      *(&v198 + 3) = v212;
      v505 = v806;
      v505.i32[3] = 1.0;
      v807 = v505;
      DWORD2(v190) = 0;
      v219 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v505, v849), vdupq_n_s32(0x437F0000u))));
      *(&v190 + 3) = v212;
      v506 = vmul_f32(a5, a5);
      v506.i32[0] = vadd_f32(v506, vdup_lane_s32(v506, 1)).u32[0];
      *v505.f32 = vrsqrte_f32(v506.u32[0]);
      *v505.f32 = vmul_f32(*v505.f32, vrsqrts_f32(v506.u32[0], vmul_f32(*v505.f32, *v505.f32)));
      v210 = vdup_lane_s32(vmul_f32(*v505.f32, vrsqrts_f32(v506.u32[0], vmul_f32(*v505.f32, *v505.f32))), 0);
    }

    v507 = a1[1].u32[0] + (v13 - 2);
    *(a1[2].i64[1] + 16 * v507) = v198;
    v508 = vuzp1_s8(v219, *&v190).u32[0];
    *(a1[1].i64[1] + 4 * v507) = v508;
    __asm { FMOV            V5.2S, #1.0 }

    *&_D5 = v200;
    *(a1[2].i64[0] + 8 * v507) = _D5;
    v510 = a1[1].u32[0] + (v13 - 1);
    *(a1[2].i64[1] + 16 * v510) = v190;
    *(a1[1].i64[1] + 4 * v510) = v508;
    *(a1[2].i64[0] + 8 * v510) = LODWORD(v835);
    v511 = a1[1].u32[0] + v13;
    DWORD2(v187) = 0;
    *(&v187 + 3) = v212;
    *(a1[2].i64[1] + 16 * v511) = v187;
    *(a1[1].i64[1] + 4 * v511) = v508;
    HIDWORD(v188) = 0.5;
    *(a1[2].i64[0] + 8 * v511) = v188;
    v512 = a1[1].u32[0] + (v13 + 1);
    *(a1[2].i64[1] + 16 * v512) = v198;
    *(a1[1].i64[1] + 4 * v512) = v508;
    *(a1[2].i64[0] + 8 * v512) = _D5;
    v513 = a1[1].u32[0] + (v13 + 2);
    *(a1[2].i64[1] + 16 * v513) = v190;
    *(a1[1].i64[1] + 4 * v513) = v508;
    *(a1[2].i64[0] + 8 * v513) = LODWORD(v835);
    v514 = a1[1].u32[0] + (v13 + 3);
    *(a1[2].i64[1] + 16 * v514) = v190;
    *(a1[1].i64[1] + 4 * v514) = v508;
    *(a1[2].i64[0] + 8 * v514) = LODWORD(v835);
    v515 = a1[1].u32[0] + (v13 + 4);
    v813 = v188;
    v819 = v187;
    *(a1[2].i64[1] + 16 * v515) = v187;
    *(a1[1].i64[1] + 4 * v515) = v508;
    *(a1[2].i64[0] + 8 * v515) = v188;
    v516 = a1[1].u32[0] + (v13 + 5);
    v781 = v197;
    v782 = v202;
    DWORD2(v197) = 0;
    *(&v197 + 3) = v212;
    *(a1[2].i64[1] + 16 * v516) = v197;
    *(a1[1].i64[1] + 4 * v516) = v508;
    HIDWORD(v202) = 1.0;
    v788 = v202;
    v790 = v197;
    *(a1[2].i64[0] + 8 * v516) = v202;
    v784 = v192;
    DWORD2(v192) = 0;
    v517 = a1[1].u32[0] + (v13 + 6);
    v824 = v212;
    *(&v192 + 3) = v212;
    *(a1[2].i64[1] + 16 * v517) = v192;
    *(a1[1].i64[1] + 4 * v517) = v508;
    *(a1[2].i64[0] + 8 * v517) = LODWORD(v835);
    v518 = a1[1].u32[0] + (v13 + 7);
    v786 = v192;
    *(a1[2].i64[1] + 16 * v518) = v192;
    *(a1[1].i64[1] + 4 * v518) = v508;
    *(a1[2].i64[0] + 8 * v518) = LODWORD(v835);
    v519 = vmul_f32(a8, a8);
    v519.i32[0] = vadd_f32(v519, vdup_lane_s32(v519, 1)).u32[0];
    v520 = v13 + 8;
    v521 = vrsqrte_f32(v519.u32[0]);
    v522 = vmul_f32(v521, vrsqrts_f32(v519.u32[0], vmul_f32(v521, v521)));
    v523 = vmul_n_f32(a8, vmul_f32(v522, vrsqrts_f32(v519.u32[0], vmul_f32(v522, v522))).f32[0]);
    v524.f32[0] = acosf(vaddv_f32(vmul_f32(v523, vmul_f32(a5, v210))));
    v525 = (a1[9].f32[0] + (a1[9].f32[2] * 2.0)) * 0.14;
    v526 = (((ceilf(v525) * 2.0) + 1.0) * (v524.f32[0] / 3.14159265) + 1.0);
    if (v526 < 1)
    {
      LODWORD(v13) = v13 + 8;
      if (v17)
      {
LABEL_155:
        v556 = vmul_f32(v201, v201);
        v556.i32[0] = vadd_f32(v556, vdup_lane_s32(v556, 1)).u32[0];
        v557 = vrsqrte_f32(v556.u32[0]);
        v558 = vmul_f32(v557, vrsqrts_f32(v556.u32[0], vmul_f32(v557, v557)));
        v559 = vmul_n_f32(v201, vmul_f32(v558, vrsqrts_f32(v556.u32[0], vmul_f32(v558, v558))).f32[0]);
        *&v560 = vmla_n_f32(v781, v559, v796.f32[0]);
        v561 = a1[1].u32[0] + v13;
        v562 = v790;
        *(a1[2].i64[1] + 16 * v561) = v790;
        v524 = vuzp1_s8(v219, v559);
        *(a1[1].i64[1] + 4 * v561) = v524.i32[0];
        *&v563 = vmls_lane_f32(v784, v523, v796, 0);
        *(a1[2].i64[0] + 8 * v561) = __PAIR64__(1.0, LODWORD(v835));
        v564 = a1[1].u32[0] + (v13 + 1);
        DWORD2(v560) = 0;
        *(&v560 + 3) = v824;
        *(a1[2].i64[1] + 16 * v564) = v560;
        v558.i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v807, 0), vdupq_n_s32(0x437F0000u)))), v524).u32[0];
        *(a1[1].i64[1] + 4 * v564) = v558.i32[0];
        *(a1[2].i64[0] + 8 * v564) = __PAIR64__(1.0, LODWORD(v835));
        v565 = a1[1].u32[0] + (v13 + 4);
        *(&v563 + 1) = __PAIR64__(LODWORD(v824), 0);
        *(a1[2].i64[1] + 16 * v565) = v563;
        *(a1[1].i64[1] + 4 * v565) = v558.i32[0];
        *(a1[2].i64[0] + 8 * v565) = v782;
        v566 = a1[1].u32[0] + (v13 + 5);
        v567 = v786;
        _D2 = v788;
        *(a1[2].i64[1] + 16 * v566) = v786;
        *(a1[1].i64[1] + 4 * v566) = v524.i32[0];
        *(a1[2].i64[0] + 8 * v566) = v782;
        LODWORD(v13) = v13 + 8;
LABEL_189:
        v697 = a1[1].u32[0] + v13;
        *(a1[2].i64[1] + 16 * v697) = v567;
        v698 = vuzp1_s8(v219, v524).u32[0];
        *(a1[1].i64[1] + 4 * v697) = v698;
        *(a1[2].i64[0] + 8 * v697) = LODWORD(v835);
        v165 = a1[1].u32[0] + (v13 + 1);
        *(a1[2].i64[1] + 16 * v165) = v562;
        *(a1[1].i64[1] + 4 * v165) = v698;
        goto LABEL_51;
      }
    }

    else
    {
      v527 = 0;
      v528 = -v524.f32[0];
      v529 = v526;
      v852 = -a8.f32[1];
      v530 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v807, 0), vdupq_n_s32(0x437F0000u))));
      v531 = vdup_lane_s32(a8, 0);
      v799 = vuzp1_s8(v219, v530).u32[0];
      v792 = vuzp1_s8(v530, v530);
      do
      {
        v532 = __sincosf_stret((v528 * v527) / v529);
        v844 = vsub_f32(v860, vmla_f32(vmul_f32(__PAIR64__(a8.u32[1], LODWORD(v532.__sinval)), __PAIR64__(LODWORD(v532.__cosval), LODWORD(v852))), vext_s8(__PAIR64__(LODWORD(v532.__cosval), LODWORD(v852)), __PAIR64__(a8.u32[1], LODWORD(v532.__sinval)), 4uLL), v531));
        v533 = __sincosf_stret((v528 * ++v527) / v529);
        v534 = a1[1].u32[0] + v520;
        *&v535 = v844;
        DWORD2(v535) = 0;
        *(&v535 + 3) = v824;
        *(a1[2].i64[1] + 16 * v534) = v535;
        *(a1[1].i64[1] + 4 * v534) = v799;
        v524 = vsub_f32(v860, vmla_f32(vmul_f32(__PAIR64__(a8.u32[1], LODWORD(v533.__sinval)), __PAIR64__(LODWORD(v533.__cosval), LODWORD(v852))), vext_s8(__PAIR64__(LODWORD(v533.__cosval), LODWORD(v852)), __PAIR64__(a8.u32[1], LODWORD(v533.__sinval)), 4uLL), v531));
        *(a1[2].i64[0] + 8 * v534) = LODWORD(v835);
        v536 = a1[1].u32[0] + (v520 + 1);
        *&v537 = v524;
        *(&v537 + 1) = __PAIR64__(LODWORD(v824), 0);
        *(a1[2].i64[1] + 16 * v536) = v537;
        *(a1[1].i64[1] + 4 * v536) = v799;
        *(a1[2].i64[0] + 8 * v536) = LODWORD(v835);
        v538 = a1[1].u32[0] + (v520 + 2);
        *(a1[2].i64[1] + 16 * v538) = v819;
        *(a1[1].i64[1] + 4 * v538) = v799;
        *(a1[2].i64[0] + 8 * v538) = v813;
        v539 = a1[1].u32[0] + (v520 + 3);
        *(a1[2].i64[1] + 16 * v539) = v819;
        *(a1[1].i64[1] + 4 * v539) = v799;
        *(a1[2].i64[0] + 8 * v539) = v813;
        LODWORD(v13) = v520 + 4;
        if (a1[9].i8[4] == 1)
        {
          v540 = vsub_f32(v844, v860);
          v541 = vmul_f32(v540, v540);
          v541.i32[0] = vadd_f32(v541, vdup_lane_s32(v541, 1)).u32[0];
          v542 = vrsqrte_f32(v541.u32[0]);
          v543 = vmul_f32(v542, vrsqrts_f32(v541.u32[0], vmul_f32(v542, v542)));
          v544 = vmul_n_f32(v540, vmul_f32(v543, vrsqrts_f32(v541.u32[0], vmul_f32(v543, v543))).f32[0]);
          v545 = vsub_f32(v524, v860);
          v546 = vmul_f32(v545, v545);
          v546.i32[0] = vadd_f32(v546, vdup_lane_s32(v546, 1)).u32[0];
          v547 = vrsqrte_f32(v546.u32[0]);
          v548 = vmul_f32(v547, vrsqrts_f32(v546.u32[0], vmul_f32(v547, v547)));
          v549 = a1[9].f32[2];
          *&v550 = vmla_n_f32(v524, vmul_n_f32(v545, vmul_f32(v548, vrsqrts_f32(v546.u32[0], vmul_f32(v548, v548))).f32[0]), v549);
          v551 = a1[1].u32[0] + v13;
          *(a1[2].i64[1] + 16 * v551) = v535;
          *(a1[1].i64[1] + 4 * v551) = v799;
          *(a1[2].i64[0] + 8 * v551) = LODWORD(v835);
          v552 = a1[1].u32[0] + (v520 + 5);
          *(a1[2].i64[1] + 16 * v552) = v537;
          *(a1[1].i64[1] + 4 * v552) = v799;
          *(a1[2].i64[0] + 8 * v552) = LODWORD(v835);
          DWORD2(v550) = 0;
          v553 = a1[1].u32[0] + (v520 + 6);
          *(&v550 + 3) = v824;
          *(a1[2].i64[1] + 16 * v553) = v550;
          v524 = v792;
          *(a1[1].i64[1] + 4 * v553) = v792.i32[0];
          *(a1[2].i64[0] + 8 * v553) = LODWORD(v835);
          *&v554 = vmla_n_f32(v844, v544, v549);
          v555 = a1[1].u32[0] + (v520 + 7);
          DWORD2(v554) = 0;
          *(&v554 + 3) = v824;
          *(a1[2].i64[1] + 16 * v555) = v554;
          *(a1[1].i64[1] + 4 * v555) = v792.i32[0];
          *(a1[2].i64[0] + 8 * v555) = LODWORD(v835);
          LODWORD(v13) = v520 + 8;
        }

        v520 = v13;
      }

      while (v526 != v527);
      if (v17)
      {
        goto LABEL_155;
      }
    }

    _D2 = v788;
    v562 = v790;
    v567 = v786;
    goto LABEL_189;
  }

  if (v35 != 2)
  {
    *&v159 = vadd_f32(a5, a2);
    if (a1[9].i8[5])
    {
      v19.i32[0] = a1[12].i32[2];
    }

    else
    {
      v19.f32[0] = 1.0;
    }

    v160 = a1[1].u32[0] + (v13 - 2);
    DWORD2(v159) = 0;
    HIDWORD(v159) = v19.i32[0];
    v15.i32[3] = 1.0;
    *(a1[2].i64[1] + 16 * v160) = v159;
    v161 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v15, v14), vdupq_n_s32(0x437F0000u)))), v19).u32[0];
    *(a1[1].i64[1] + 4 * v160) = v161;
    __asm { FMOV            V2.2S, #1.0 }

    *(a1[2].i64[0] + 8 * v160) = __PAIR64__(HIDWORD(_D2), v8);
    *&v162 = vsub_f32(a2, a5);
    v163 = a1[1].u32[0] + (v13 - 1);
    DWORD2(v162) = 0;
    HIDWORD(v162) = v19.i32[0];
    v28.i32[0] = a1[12].i32[3];
    *(a1[2].i64[1] + 16 * v163) = v162;
    *(a1[1].i64[1] + 4 * v163) = v161;
    *(a1[2].i64[0] + 8 * v163) = v28;
    *&v162 = vsub_f32(a2, a8);
    v164 = a1[1].u32[0] + v13;
    DWORD2(v162) = 0;
    HIDWORD(v162) = v19.i32[0];
    v28.i32[0] = a1[12].i32[3];
    *(a1[2].i64[1] + 16 * v164) = v162;
    *(a1[1].i64[1] + 4 * v164) = v161;
    *(a1[2].i64[0] + 8 * v164) = v28;
    *&v162 = vadd_f32(a8, a2);
    v165 = a1[1].u32[0] + (v13 + 1);
    DWORD2(v162) = 0;
    HIDWORD(v162) = v19.i32[0];
    LODWORD(_D2) = a1[12].i32[3];
    *(a1[2].i64[1] + 16 * v165) = v162;
LABEL_50:
    *(a1[1].i64[1] + 4 * v165) = v161;
LABEL_51:
    *(a1[2].i64[0] + 8 * v165) = _D2;
LABEL_206:
    v691 = v13 + 4;
    goto LABEL_207;
  }

  if (((-*(&a7 + 1) * *&a4) + (*&a7 * *(&a4 + 1))) >= 0.0)
  {
    v850 = a1[12].f32[0];
    v797 = a1[9].f32[2];
    v809 = a1[11];
    v836 = a1[12].f32[3];
    v266 = vsub_f32(a2, a8);
    v874 = *&v266;
    v875 = vneg_f32(*&a7);
    v267 = vsub_f32(a2, a5);
    v872 = *&v267;
    v873 = a4;
    v868.i32[0] = 0;
    v867[0].i32[0] = 0;
    sk_ray2::intersect(&v874, &v872, &v868, v867);
    *&v268 = vmla_n_f32(*&v874, v875, v868.f32[0]);
    v269 = vsub_f32(*&v268, v267);
    v46 = sqrtf(vaddv_f32(vmul_f32(v269, v269))) <= sqrtf(v33);
    v270 = vsub_f32(*&v268, v266);
    v271 = sqrtf(vaddv_f32(vmul_f32(v270, v270)));
    v272 = sqrtf(v34);
    v273 = v46 && v271 <= v272;
    *&v274 = v268;
    if (!v273)
    {
      *&v268 = v266;
      *&v274 = v267;
    }

    v275 = vadd_f32(a5, v860);
    v276 = vadd_f32(a8, v860);
    v277 = vsub_f32(vmla_f32(*&v274, 0x4000000040000000, a5), v275);
    v280 = vsub_f32(vmla_f32(*&v268, 0x4000000040000000, a8), v276);
    v278 = sqrtf(vaddv_f32(vmul_f32(v280, v280))) / v36;
    *&v279 = v836;
    v280.f32[0] = v836 - (sqrtf(vaddv_f32(vmul_f32(v277, v277))) / v36);
    v281 = v836 + v278;
    v282 = v809;
    if (v17)
    {
      v283 = vmul_f32(a5, a5);
      v283.i32[0] = vadd_f32(v283, vdup_lane_s32(v283, 1)).u32[0];
      v284 = vrsqrte_f32(v283.u32[0]);
      v285 = vmul_f32(v284, vrsqrts_f32(v283.u32[0], vmul_f32(v284, v284)));
      *&v286 = vmla_n_f32(v275, vmul_n_f32(a5, vmul_f32(v285, vrsqrts_f32(v283.u32[0], vmul_f32(v285, v285))).f32[0]), v797);
      v287 = vsub_f32(*&v274, v860);
      v288 = vmul_f32(v287, v287);
      v288.i32[0] = vadd_f32(v288, vdup_lane_s32(v288, 1)).u32[0];
      v289 = vrsqrte_f32(v288.u32[0]);
      v290 = vmul_f32(v289, vrsqrts_f32(v288.u32[0], vmul_f32(v289, v289)));
      LODWORD(v291) = vmul_f32(v290, vrsqrts_f32(v288.u32[0], vmul_f32(v290, v290))).u32[0];
      if (v16)
      {
        v292 = v18;
      }

      else
      {
        v292 = 1.0;
      }

      DWORD2(v286) = 0;
      *(&v286 + 3) = v292;
      v293 = a1[1].u32[0] + (v13 - 10);
      v282.i32[3] = 1.0;
      v294 = vdupq_n_s32(0x437F0000u);
      *(a1[2].i64[1] + 16 * v293) = v286;
      v295 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v282, 0), v294))), *&v268).u32[0];
      *(a1[1].i64[1] + 4 * v293) = v295;
      __asm { FMOV            V20.2S, #1.0 }

      *&_D20 = v836;
      *(a1[2].i64[0] + 8 * v293) = _D20;
      v297 = vmul_n_f32(v287, v291);
      *&v299 = v275;
      DWORD2(v299) = 0;
      v298 = a1[1].u32[0] + (v13 - 9);
      *(&v299 + 3) = v292;
      v300 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v282, v850), v294)));
      *(a1[2].i64[1] + 16 * v298) = v299;
      v294.i32[0] = vuzp1_s8(v300, *&v268).u32[0];
      *(a1[1].i64[1] + 4 * v298) = v294.i32[0];
      *(a1[2].i64[0] + 8 * v298) = _D20;
      *&v301 = vmla_n_f32(*&v274, v297, v797);
      v302 = a1[1].u32[0] + (v13 - 6);
      DWORD2(v274) = 0;
      *(&v274 + 3) = v292;
      *(a1[2].i64[1] + 16 * v302) = v274;
      *(a1[1].i64[1] + 4 * v302) = v294.i32[0];
      *(a1[2].i64[0] + 8 * v302) = v280.u32[0];
      DWORD2(v301) = 0;
      v303 = a1[1].u32[0] + (v13 - 5);
      *(&v301 + 3) = v292;
      *(a1[2].i64[1] + 16 * v303) = v301;
      *(a1[1].i64[1] + 4 * v303) = v295;
      *(a1[2].i64[0] + 8 * v303) = v280.u32[0];
    }

    else
    {
      if (v16)
      {
        v292 = v18;
      }

      else
      {
        v292 = 1.0;
      }

      *&v299 = v275;
      DWORD2(v299) = 0;
      *(&v299 + 3) = v292;
      v282.i32[3] = 1.0;
      v300 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v282, v850), vdupq_n_s32(0x437F0000u))));
      DWORD2(v274) = 0;
      *(&v274 + 3) = v292;
    }

    v456 = a1[1].u32[0] + (v13 - 2);
    *(a1[2].i64[1] + 16 * v456) = v299;
    v457 = vuzp1_s8(v300, *&v268).u32[0];
    *(a1[1].i64[1] + 4 * v456) = v457;
    *(a1[2].i64[0] + 8 * v456) = __PAIR64__(1.0, LODWORD(v836));
    v458 = a1[1].u32[0] + (v13 - 1);
    *(a1[2].i64[1] + 16 * v458) = v274;
    *(a1[1].i64[1] + 4 * v458) = v457;
    v459 = v280.u32[0];
    *(a1[2].i64[0] + 8 * v458) = v280.u32[0];
    v460 = a1[1].u32[0] + v13;
    *(a1[2].i64[1] + 16 * v460) = v274;
    *(a1[1].i64[1] + 4 * v460) = v457;
    *(a1[2].i64[0] + 8 * v460) = v280.u32[0];
    v461 = a1[1].u32[0] + (v13 + 1);
    *(a1[2].i64[1] + 16 * v461) = v299;
    *(a1[1].i64[1] + 4 * v461) = v457;
    *(a1[2].i64[0] + 8 * v461) = __PAIR64__(1.0, LODWORD(v836));
    *&v462 = v860;
    DWORD2(v462) = 0;
    v463 = a1[1].u32[0] + (v13 + 2);
    *(&v462 + 3) = v292;
    *(a1[2].i64[1] + 16 * v463) = v462;
    *(a1[1].i64[1] + 4 * v463) = v457;
    HIDWORD(v279) = 0.5;
    *(a1[2].i64[0] + 8 * v463) = v279;
    v464 = a1[1].u32[0] + (v13 + 3);
    *(a1[2].i64[1] + 16 * v464) = v462;
    *(a1[1].i64[1] + 4 * v464) = v457;
    *(a1[2].i64[0] + 8 * v464) = v279;
    v465 = a1[1].u32[0] + (v13 + 4);
    *(a1[2].i64[1] + 16 * v465) = v462;
    *(a1[1].i64[1] + 4 * v465) = v457;
    *(a1[2].i64[0] + 8 * v465) = v279;
    v466 = a1[1].u32[0] + (v13 + 5);
    *(a1[2].i64[1] + 16 * v466) = v299;
    *(a1[1].i64[1] + 4 * v466) = v457;
    *(a1[2].i64[0] + 8 * v466) = __PAIR64__(1.0, LODWORD(v836));
    v467 = a1[1].u32[0] + (v13 + 6);
    *&v468 = v276;
    DWORD2(v468) = 0;
    *(&v468 + 3) = v292;
    *(a1[2].i64[1] + 16 * v467) = v468;
    *(a1[1].i64[1] + 4 * v467) = v457;
    *(a1[2].i64[0] + 8 * v467) = __PAIR64__(1.0, LODWORD(v836));
    v469 = a1[1].u32[0] + (v13 + 7);
    *(a1[2].i64[1] + 16 * v469) = v468;
    *(a1[1].i64[1] + 4 * v469) = v457;
    *(a1[2].i64[0] + 8 * v469) = __PAIR64__(1.0, LODWORD(v836));
    v470 = a1[1].u32[0] + (v13 + 8);
    *(a1[2].i64[1] + 16 * v470) = v462;
    *(a1[1].i64[1] + 4 * v470) = v457;
    *(a1[2].i64[0] + 8 * v470) = v279;
    v471 = a1[1].u32[0] + (v13 + 9);
    *(a1[2].i64[1] + 16 * v471) = v468;
    *(a1[1].i64[1] + 4 * v471) = v457;
    *(a1[2].i64[0] + 8 * v471) = __PAIR64__(1.0, LODWORD(v836));
    v472 = a1[1].u32[0] + (v13 + 10);
    *&v473 = v268;
    DWORD2(v473) = 0;
    *(&v473 + 3) = v292;
    *(a1[2].i64[1] + 16 * v472) = v473;
    *(a1[1].i64[1] + 4 * v472) = v457;
    v474 = LODWORD(v281);
    *(a1[2].i64[0] + 8 * v472) = LODWORD(v281);
    v475 = a1[1].u32[0] + (v13 + 11);
    *(a1[2].i64[1] + 16 * v475) = v473;
    *(a1[1].i64[1] + 4 * v475) = v457;
    *(a1[2].i64[0] + 8 * v475) = LODWORD(v281);
    v476 = v13 + 12;
    if (v17)
    {
      v477 = vmul_f32(a5, a5);
      v477.i32[0] = vadd_f32(v477, vdup_lane_s32(v477, 1)).u32[0];
      v478 = vrsqrte_f32(v477.u32[0]);
      v479 = vmul_f32(v478, vrsqrts_f32(v477.u32[0], vmul_f32(v478, v478)));
      v480 = vmul_n_f32(a5, vmul_f32(v479, vrsqrts_f32(v477.u32[0], vmul_f32(v479, v479))).f32[0]);
      v481 = vmul_f32(a8, a8);
      *&v482 = vmla_n_f32(v275, v480, v797);
      v480.i32[0] = vadd_f32(v481, vdup_lane_s32(v481, 1)).u32[0];
      v483 = vrsqrte_f32(v480.u32[0]);
      v484 = vmul_f32(v483, vrsqrts_f32(v480.u32[0], vmul_f32(v483, v483)));
      v485 = vmul_n_f32(a8, vmul_f32(v484, vrsqrts_f32(v480.u32[0], vmul_f32(v484, v484))).f32[0]);
      v486 = a1[1].u32[0] + v476;
      *(a1[2].i64[1] + 16 * v486) = v299;
      v480.i32[0] = vuzp1_s8(v300, *&v268).u32[0];
      *(a1[1].i64[1] + 4 * v486) = v480.i32[0];
      *(a1[2].i64[0] + 8 * v486) = __PAIR64__(1.0, LODWORD(v836));
      *&v487 = vmla_n_f32(v276, v485, v797);
      v488 = a1[1].u32[0] + (v13 + 13);
      DWORD2(v482) = 0;
      *(&v482 + 3) = v292;
      *(a1[2].i64[1] + 16 * v488) = v482;
      LODWORD(v482) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v282, 0), vdupq_n_s32(0x437F0000u)))), *&v268).u32[0];
      *(a1[1].i64[1] + 4 * v488) = v482;
      *(a1[2].i64[0] + 8 * v488) = __PAIR64__(1.0, LODWORD(v836));
      DWORD2(v487) = 0;
      v489 = a1[1].u32[0] + (v13 + 14);
      *(&v487 + 3) = v292;
      *(a1[2].i64[1] + 16 * v489) = v487;
      *(a1[1].i64[1] + 4 * v489) = v482;
      v280.i32[1] = 1.0;
      *(a1[2].i64[0] + 8 * v489) = v280;
      v490 = a1[1].u32[0] + (v13 + 15);
      *(a1[2].i64[1] + 16 * v490) = v468;
      *(a1[1].i64[1] + 4 * v490) = v480.i32[0];
      *(a1[2].i64[0] + 8 * v490) = v280;
      v491 = vsub_f32(*&v268, v860);
      v492 = vmul_f32(v491, v491);
      v492.i32[0] = vadd_f32(v492, vdup_lane_s32(v492, 1)).u32[0];
      v493 = vrsqrte_f32(v492.u32[0]);
      v494 = vmul_f32(v493, vrsqrts_f32(v492.u32[0], vmul_f32(v493, v493)));
      v495 = a1[1].u32[0] + (v13 + 16);
      *(a1[2].i64[1] + 16 * v495) = v468;
      *(a1[1].i64[1] + 4 * v495) = v480.i32[0];
      *(a1[2].i64[0] + 8 * v495) = __PAIR64__(1.0, LODWORD(v836));
      v496 = a1[1].u32[0] + (v13 + 17);
      *(a1[2].i64[1] + 16 * v496) = v487;
      *(a1[1].i64[1] + 4 * v496) = v482;
      *(a1[2].i64[0] + 8 * v496) = __PAIR64__(1.0, LODWORD(v836));
      *&v268 = vmla_n_f32(*&v268, vmul_n_f32(v491, vmul_f32(v494, vrsqrts_f32(v492.u32[0], vmul_f32(v494, v494))).f32[0]), v797);
      v497 = a1[1].u32[0] + (v13 + 20);
      DWORD2(v268) = 0;
      *(&v268 + 3) = v292;
      *(a1[2].i64[1] + 16 * v497) = v268;
      *(a1[1].i64[1] + 4 * v497) = v482;
      *(a1[2].i64[0] + 8 * v497) = v459;
      v498 = a1[1].u32[0] + (v13 + 21);
      *(a1[2].i64[1] + 16 * v498) = v473;
      *(a1[1].i64[1] + 4 * v498) = v480.i32[0];
      *(a1[2].i64[0] + 8 * v498) = v459;
      v476 = v13 + 24;
    }

    v499 = a1[1].u32[0] + v476;
    *(a1[2].i64[1] + 16 * v499) = v473;
    v500 = vuzp1_s8(v300, *&v268).u32[0];
    *(a1[1].i64[1] + 4 * v499) = v500;
    *(a1[2].i64[0] + 8 * v499) = v474;
    v501 = a1[1].u32[0] + (v476 + 1);
    *(a1[2].i64[1] + 16 * v501) = v468;
    *(a1[1].i64[1] + 4 * v501) = v500;
    *(a1[2].i64[0] + 8 * v501) = __PAIR64__(1.0, LODWORD(v836));
  }

  else
  {
    v846 = a1[12].f32[0];
    v793 = a1[9].f32[2];
    v801 = a1[11];
    v832 = a1[12].f32[3];
    v37 = vadd_f32(a8, a2);
    v874 = *&v37;
    v875 = vneg_f32(*&a7);
    v38 = vadd_f32(a5, a2);
    v872 = *&v38;
    v873 = a4;
    v868.i32[0] = 0;
    v867[0].i32[0] = 0;
    sk_ray2::intersect(&v874, &v872, &v868, v867);
    v39 = vmla_n_f32(*&v874, v875, v868.f32[0]);
    v40 = vsub_f32(v860, a5);
    *&v42 = vsub_f32(v39, v40);
    v41 = sqrtf(vaddv_f32(vmul_f32(*&v42, *&v42)));
    *&v42 = vsub_f32(v860, a8);
    v46 = v41 <= sqrtf(v33);
    v43 = vsub_f32(v39, *&v42);
    v44 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
    v45 = sqrtf(v34);
    v46 = v46 && v44 <= v45;
    *&v47 = v39;
    if (!v46)
    {
      v39 = v37;
      *&v47 = v38;
    }

    v48 = vsub_f32(vmls_f32(*&v47, 0x4000000040000000, a5), v40);
    v49 = vsub_f32(vmls_f32(v39, 0x4000000040000000, a8), *&v42);
    *&v50 = v832;
    v51 = v832 - (sqrtf(vaddv_f32(vmul_f32(v48, v48))) / v36);
    v52 = v832 + (sqrtf(vaddv_f32(vmul_f32(v49, v49))) / v36);
    v53 = v801;
    if (v17)
    {
      v54 = vsub_f32(*&v47, v860);
      v55 = vmul_f32(v54, v54);
      v55.i32[0] = vadd_f32(v55, vdup_lane_s32(v55, 1)).u32[0];
      v56 = vrsqrte_f32(v55.u32[0]);
      v57 = vmul_f32(v56, vrsqrts_f32(v55.u32[0], vmul_f32(v56, v56)));
      *&v58 = vmla_n_f32(*&v47, vmul_n_f32(v54, vmul_f32(v57, vrsqrts_f32(v55.u32[0], vmul_f32(v57, v57))).f32[0]), v793);
      v59 = vmul_f32(a5, a5);
      v59.i32[0] = vadd_f32(v59, vdup_lane_s32(v59, 1)).u32[0];
      v60 = vrsqrte_f32(v59.u32[0]);
      v61 = vmul_f32(v60, vrsqrts_f32(v59.u32[0], vmul_f32(v60, v60)));
      *&v62 = vmla_n_f32(v40, vmul_f32(a5, vneg_f32(vdup_lane_s32(vmul_f32(v61, vrsqrts_f32(v59.u32[0], vmul_f32(v61, v61))), 0))), v793);
      if (v16)
      {
        v63 = v18;
      }

      else
      {
        v63 = 1.0;
      }

      v64 = a1[1].u32[0] + (v13 - 10);
      DWORD2(v58) = 0;
      *(&v58 + 3) = v63;
      v53.i32[3] = 1.0;
      v65 = vdupq_n_s32(0x437F0000u);
      *(a1[2].i64[1] + 16 * v64) = v58;
      v66 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v53, 0), v65))), *&v42).u32[0];
      *(a1[1].i64[1] + 4 * v64) = v66;
      __asm { FMOV            V19.2S, #1.0 }

      *&_D19 = v832;
      *(a1[2].i64[0] + 8 * v64) = _D19;
      v71 = a1[1].u32[0] + (v13 - 9);
      DWORD2(v47) = 0;
      *(&v47 + 3) = v63;
      v72 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v53, v846), v65)));
      *(a1[2].i64[1] + 16 * v71) = v47;
      v73 = vuzp1_s8(v72, *&v42).u32[0];
      *(a1[1].i64[1] + 4 * v71) = v73;
      *(a1[2].i64[0] + 8 * v71) = _D19;
      v74 = a1[1].u32[0] + (v13 - 6);
      *&v75 = v40;
      DWORD2(v75) = 0;
      *(&v75 + 3) = v63;
      *(a1[2].i64[1] + 16 * v74) = v75;
      *(a1[1].i64[1] + 4 * v74) = v73;
      *(a1[2].i64[0] + 8 * v74) = LODWORD(v51);
      DWORD2(v62) = 0;
      v76 = a1[1].u32[0] + (v13 - 5);
      *(&v62 + 3) = v63;
      *(a1[2].i64[1] + 16 * v76) = v62;
      *(a1[1].i64[1] + 4 * v76) = v66;
      *(a1[2].i64[0] + 8 * v76) = LODWORD(v51);
    }

    else
    {
      if (v16)
      {
        v63 = v18;
      }

      else
      {
        v63 = 1.0;
      }

      DWORD2(v47) = 0;
      *(&v47 + 3) = v63;
      v53.i32[3] = 1.0;
      v72 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v53, v846), vdupq_n_s32(0x437F0000u))));
      *&v75 = v40;
      DWORD2(v75) = 0;
      *(&v75 + 3) = v63;
    }

    v648 = a1[1].u32[0] + (v13 - 2);
    *(a1[2].i64[1] + 16 * v648) = v47;
    v649 = vuzp1_s8(v72, *&v42).u32[0];
    *(a1[1].i64[1] + 4 * v648) = v649;
    v650 = __PAIR64__(1.0, LODWORD(v51));
    *(a1[2].i64[0] + 8 * v648) = __PAIR64__(1.0, LODWORD(v51));
    v651 = a1[1].u32[0] + (v13 - 1);
    *(a1[2].i64[1] + 16 * v651) = v75;
    *(a1[1].i64[1] + 4 * v651) = v649;
    *(a1[2].i64[0] + 8 * v651) = LODWORD(v832);
    v652 = a1[1].u32[0] + v13;
    *(a1[2].i64[1] + 16 * v652) = v75;
    *(a1[1].i64[1] + 4 * v652) = v649;
    *(a1[2].i64[0] + 8 * v652) = LODWORD(v832);
    v653 = a1[1].u32[0] + (v13 + 1);
    *(a1[2].i64[1] + 16 * v653) = v47;
    *(a1[1].i64[1] + 4 * v653) = v649;
    *(a1[2].i64[0] + 8 * v653) = __PAIR64__(1.0, LODWORD(v51));
    *&v654 = v860;
    DWORD2(v654) = 0;
    v655 = a1[1].u32[0] + (v13 + 2);
    *(&v654 + 3) = v63;
    *(a1[2].i64[1] + 16 * v655) = v654;
    *(a1[1].i64[1] + 4 * v655) = v649;
    HIDWORD(v50) = 0.5;
    *(a1[2].i64[0] + 8 * v655) = v50;
    v656 = a1[1].u32[0] + (v13 + 3);
    *(a1[2].i64[1] + 16 * v656) = v654;
    *(a1[1].i64[1] + 4 * v656) = v649;
    *(a1[2].i64[0] + 8 * v656) = v50;
    v657 = a1[1].u32[0] + (v13 + 4);
    *(a1[2].i64[1] + 16 * v657) = v654;
    *(a1[1].i64[1] + 4 * v657) = v649;
    *(a1[2].i64[0] + 8 * v657) = v50;
    v658 = a1[1].u32[0] + (v13 + 5);
    *(a1[2].i64[1] + 16 * v658) = v75;
    *(a1[1].i64[1] + 4 * v658) = v649;
    *(a1[2].i64[0] + 8 * v658) = LODWORD(v832);
    v659 = a1[1].u32[0] + (v13 + 6);
    *&v660 = v42;
    DWORD2(v660) = 0;
    *(&v660 + 3) = v63;
    *(a1[2].i64[1] + 16 * v659) = v660;
    *(a1[1].i64[1] + 4 * v659) = v649;
    *(a1[2].i64[0] + 8 * v659) = LODWORD(v832);
    v661 = a1[1].u32[0] + (v13 + 7);
    *(a1[2].i64[1] + 16 * v661) = v660;
    *(a1[1].i64[1] + 4 * v661) = v649;
    *(a1[2].i64[0] + 8 * v661) = LODWORD(v832);
    v662 = a1[1].u32[0] + (v13 + 8);
    *(a1[2].i64[1] + 16 * v662) = v654;
    *(a1[1].i64[1] + 4 * v662) = v649;
    *(a1[2].i64[0] + 8 * v662) = v50;
    v663 = a1[1].u32[0] + (v13 + 9);
    *(a1[2].i64[1] + 16 * v663) = v660;
    *(a1[1].i64[1] + 4 * v663) = v649;
    *(a1[2].i64[0] + 8 * v663) = LODWORD(v832);
    v664 = a1[1].u32[0] + (v13 + 10);
    *&v665 = v39;
    DWORD2(v665) = 0;
    *(&v665 + 3) = v63;
    *(a1[2].i64[1] + 16 * v664) = v665;
    *(a1[1].i64[1] + 4 * v664) = v649;
    __asm { FMOV            V20.2S, #1.0 }

    *&_D20 = v52;
    *(a1[2].i64[0] + 8 * v664) = _D20;
    v667 = a1[1].u32[0] + (v13 + 11);
    *(a1[2].i64[1] + 16 * v667) = v665;
    *(a1[1].i64[1] + 4 * v667) = v649;
    *(a1[2].i64[0] + 8 * v667) = _D20;
    v476 = v13 + 12;
    if (v17)
    {
      v668 = vmul_f32(a5, a5);
      v668.i32[0] = vadd_f32(v668, vdup_lane_s32(v668, 1)).u32[0];
      v669 = vrsqrte_f32(v668.u32[0]);
      v670 = vmul_f32(v669, vrsqrts_f32(v668.u32[0], vmul_f32(v669, v669)));
      *&v671 = vmla_n_f32(v40, vmul_f32(a5, vneg_f32(vdup_lane_s32(vmul_f32(v670, vrsqrts_f32(v668.u32[0], vmul_f32(v670, v670))), 0))), v793);
      v672 = vmul_f32(a8, a8);
      v672.i32[0] = vadd_f32(v672, vdup_lane_s32(v672, 1)).u32[0];
      v673 = vrsqrte_f32(v672.u32[0]);
      v674 = vmul_f32(v673, vrsqrts_f32(v672.u32[0], vmul_f32(v673, v673)));
      *&v42 = vmla_n_f32(*&v42, vmul_f32(a8, vneg_f32(vdup_lane_s32(vmul_f32(v674, vrsqrts_f32(v672.u32[0], vmul_f32(v674, v674))), 0))), v793);
      v675 = a1[1].u32[0] + v476;
      DWORD2(v671) = 0;
      *(&v671 + 3) = v63;
      *(a1[2].i64[1] + 16 * v675) = v671;
      LODWORD(v671) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v53, 0), vdupq_n_s32(0x437F0000u)))), *&v42).u32[0];
      *(a1[1].i64[1] + 4 * v675) = v671;
      *(a1[2].i64[0] + 8 * v675) = LODWORD(v832);
      v676 = a1[1].u32[0] + (v13 + 13);
      *(a1[2].i64[1] + 16 * v676) = v75;
      v672.i32[0] = vuzp1_s8(v72, *&v42).u32[0];
      *(a1[1].i64[1] + 4 * v676) = v672.i32[0];
      *(a1[2].i64[0] + 8 * v676) = LODWORD(v832);
      v677 = a1[1].u32[0] + (v13 + 14);
      *(a1[2].i64[1] + 16 * v677) = v660;
      *(a1[1].i64[1] + 4 * v677) = v672.i32[0];
      *(a1[2].i64[0] + 8 * v677) = LODWORD(v51);
      v678 = a1[1].u32[0] + (v13 + 15);
      DWORD2(v42) = 0;
      *(&v42 + 3) = v63;
      *(a1[2].i64[1] + 16 * v678) = v42;
      *(a1[1].i64[1] + 4 * v678) = v671;
      *(a1[2].i64[0] + 8 * v678) = LODWORD(v51);
      v679 = vsub_f32(v39, v860);
      v680 = vmul_f32(v679, v679);
      v680.i32[0] = vadd_f32(v680, vdup_lane_s32(v680, 1)).u32[0];
      v681 = vrsqrte_f32(v680.u32[0]);
      v682 = vmul_f32(v681, vrsqrts_f32(v680.u32[0], vmul_f32(v681, v681)));
      v683 = a1[1].u32[0] + (v13 + 16);
      *(a1[2].i64[1] + 16 * v683) = v665;
      *(a1[1].i64[1] + 4 * v683) = v672.i32[0];
      *(a1[2].i64[0] + 8 * v683) = v650;
      *&v684 = vmla_n_f32(v39, vmul_n_f32(v679, vmul_f32(v682, vrsqrts_f32(v680.u32[0], vmul_f32(v682, v682))).f32[0]), v793);
      v685 = a1[1].u32[0] + (v13 + 17);
      DWORD2(v684) = 0;
      *(&v684 + 3) = v63;
      *(a1[2].i64[1] + 16 * v685) = v684;
      *(a1[1].i64[1] + 4 * v685) = v671;
      *(a1[2].i64[0] + 8 * v685) = v650;
      v686 = a1[1].u32[0] + (v13 + 20);
      *(a1[2].i64[1] + 16 * v686) = v42;
      *(a1[1].i64[1] + 4 * v686) = v671;
      *(a1[2].i64[0] + 8 * v686) = LODWORD(v832);
      v687 = a1[1].u32[0] + (v13 + 21);
      *(a1[2].i64[1] + 16 * v687) = v660;
      *(a1[1].i64[1] + 4 * v687) = v672.i32[0];
      *(a1[2].i64[0] + 8 * v687) = LODWORD(v832);
      v476 = v13 + 24;
    }

    v688 = a1[1].u32[0] + v476;
    *(a1[2].i64[1] + 16 * v688) = v660;
    v689 = vuzp1_s8(v72, *&v42).u32[0];
    *(a1[1].i64[1] + 4 * v688) = v689;
    *(a1[2].i64[0] + 8 * v688) = LODWORD(v832);
    v690 = a1[1].u32[0] + (v476 + 1);
    *(a1[2].i64[1] + 16 * v690) = v665;
    *(a1[1].i64[1] + 4 * v690) = v689;
    *(a1[2].i64[0] + 8 * v690) = _D20;
  }

  v691 = v476 + 4;
LABEL_207:
  a1[12].i32[1] = v691;
}

float32x2_t sk_ray2::intersection(float32x2_t *a1, float32x2_t *a2)
{
  v4 = 0;
  sk_ray2::intersect(a1, a2, &v4 + 1, &v4);
  return vmla_n_f32(*a1, a1[1], *(&v4 + 1));
}

BOOL sk_ray2::intersect(float32x2_t *a1, float32x2_t *a2, float *a3, float *a4)
{
  v4 = a2[1];
  v5 = vmul_f32(v4, v4);
  v6 = vadd_f32(v5, vdup_lane_s32(v5, 1));
  v7 = vrsqrte_f32(v6.u32[0]);
  v8 = vmul_f32(v7, vrsqrts_f32(v6.u32[0], vmul_f32(v7, v7)));
  v9 = vmul_n_f32(v4, vmul_f32(v8, vrsqrts_f32(v6.u32[0], vmul_f32(v8, v8))).f32[0]);
  v10 = a1[1];
  v11 = vmul_f32(v10, v10);
  v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vrsqrte_f32(v12.u32[0]);
  v14 = vmul_f32(v13, vrsqrts_f32(v12.u32[0], vmul_f32(v13, v13)));
  v15 = vmul_n_f32(v10, vmul_f32(v14, vrsqrts_f32(v12.u32[0], vmul_f32(v14, v14))).f32[0]);
  v16 = (-v9.f32[1] * v15.f32[0]) + (v9.f32[0] * v15.f32[1]);
  v17 = vsub_f32(*a2, *a1);
  v18 = (-v10.f32[1] * v4.f32[0]) + (v10.f32[0] * v4.f32[1]);
  v19 = ((v17.f32[0] * v4.f32[1]) - (v17.f32[1] * v4.f32[0])) / v18;
  v20 = ((v17.f32[0] * v10.f32[1]) - (v17.f32[1] * v10.f32[0])) / v18;
  v21 = (LODWORD(v18) & 0x60000000) == 0;
  v22 = 0.0;
  if (v21)
  {
    v20 = 0.0;
  }

  else
  {
    v22 = v19;
  }

  if ((LODWORD(v16) & 0x60000000) == 0)
  {
    if ((COERCE_UNSIGNED_INT((v17.f32[0] * v10.f32[1]) - (v17.f32[1] * v10.f32[0])) & 0x60000000) != 0)
    {
      v23 = 0;
      *a3 = 0.0;
      *a4 = 0.0;
      return v23;
    }

    v26 = vmul_f32(v10, v17);
    v27 = vsub_f32(*a1, *a2);
    if (vaddv_f32(v26) < 0.0 || (v28 = vadd_f32(v26, vdup_lane_s32(v26, 1)), (vmvn_s8(vcge_f32(v12, v28)).u8[0] & 1) != 0))
    {
      v23 = 0;
      v31 = vmul_f32(v4, v27);
      v32 = vadd_f32(v31, vdup_lane_s32(v31, 1));
      if (v32.f32[0] < 0.0 || (vmvn_s8(vcge_f32(v6, v32)).u8[0] & 1) != 0)
      {
        return v23;
      }

      LODWORD(v33) = vdiv_f32(v32, v6).u32[0];
      v34 = vmla_n_f32(v17, v4, v33);
      *a3 = sqrtf(vaddv_f32(vmul_f32(v34, v34))) / sqrtf(vaddv_f32(v11));
      *a4 = v33;
    }

    else
    {
      LODWORD(v29) = vdiv_f32(v28, v12).u32[0];
      v30 = vmla_n_f32(v27, v10, v29);
      *a3 = v29;
      *a4 = sqrtf(vaddv_f32(vmul_f32(v30, v30))) / sqrtf(vaddv_f32(v5));
    }

    return 1;
  }

  *a3 = v22;
  *a4 = v20;
  if (v22 >= 0.0 && v22 <= 1.0)
  {
    return 1;
  }

  return v20 <= 1.0 && v20 >= 0.0;
}

__n128 addCaps(uint64_t a1, double a2, __n128 a3, double a4)
{
  *&v5 = *(a1 + 208);
  v6 = *(a1 + 224);
  v253 = *(a1 + 232);
  v250 = *(a1 + 248);
  v7 = *(a1 + 192);
  v8 = *(a1 + 176);
  v9 = *(a1 + 196);
  v10 = *(a1 + 148);
  v11 = *(a1 + 149);
  LODWORD(a4) = *(a1 + 152);
  v12 = *(a1 + 144);
  v249 = *(a1 + 160);
  a3.n128_u32[0] = *(a1 + 204);
  v240 = a3;
  v13 = *(a1 + 200);
  v14 = *(a1 + 128);
  switch(v14)
  {
    case 2:
      v82 = *(a1 + 216);
      v83 = *(a1 + 240);
      *&v84 = vsub_f32(vadd_f32(*&v5, v6), v82);
      if (v10)
      {
        v85 = vmul_f32(v6, v6);
        v85.i32[0] = vadd_f32(v85, vdup_lane_s32(v85, 1)).u32[0];
        v86 = vrsqrte_f32(v85.u32[0]);
        v87 = vmul_f32(v86, vrsqrts_f32(v85.u32[0], vmul_f32(v86, v86)));
        v88 = vmul_n_f32(v6, vmul_f32(v87, vrsqrts_f32(v85.u32[0], vmul_f32(v87, v87))).f32[0]);
        v89 = (v12 * -0.5) / v249;
        if (*(a1 + 149))
        {
          v90 = 0.0;
        }

        else
        {
          v90 = 1.0;
        }

        DWORD2(v84) = 0;
        *(&v84 + 3) = v90;
        v8.i32[3] = 1.0;
        v91 = *(a1 + 16);
        v92 = vdupq_n_s32(0x437F0000u);
        v93 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v8, v7), v92)));
        *(*(a1 + 40) + 16 * v91) = v84;
        v94 = vuzp1_s8(v93, *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v91) = v94;
        v95 = __PAIR64__(1.0, LODWORD(v89));
        v96 = vmul_n_f32(v88, *&a4 + (v12 * 0.5));
        *(*(a1 + 32) + 8 * v91) = __PAIR64__(1.0, LODWORD(v89));
        *&v97 = vsub_f32(vadd_f32(*&v5, v96), v82);
        v98 = *(a1 + 16) + 1;
        DWORD2(v97) = 0;
        *(&v97 + 3) = v90;
        *(*(a1 + 40) + 16 * v98) = v97;
        LODWORD(v97) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v8, 0), v92))), *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v98) = v97;
        *(*(a1 + 32) + 8 * v98) = __PAIR64__(1.0, LODWORD(v89));
        *&v99 = vsub_f32(vsub_f32(*&v5, v96), v82);
        v100 = *(a1 + 16) + 4;
        DWORD2(v99) = 0;
        *(&v99 + 3) = v90;
        *(*(a1 + 40) + 16 * v100) = v99;
        *(*(a1 + 24) + 4 * v100) = v97;
        *(*(a1 + 32) + 8 * v100) = LODWORD(v89);
        *&v102 = vsub_f32(vsub_f32(*&v5, v6), v82);
        v101 = *(a1 + 16) + 5;
        DWORD2(v102) = 0;
        *(&v102 + 3) = v90;
        *(*(a1 + 40) + 16 * v101) = v102;
        *(*(a1 + 24) + 4 * v101) = v94;
        *(*(a1 + 32) + 8 * v101) = LODWORD(v89);
        v103 = 8;
      }

      else
      {
        v103 = 0;
        v191 = vdupq_n_s32(0x437F0000u);
        *&v102 = vsub_f32(vsub_f32(*&v5, v6), v82);
        *&v95 = (v12 * -0.5) / v249;
        v192 = 0.0;
        DWORD2(v102) = 0;
        if (!*(a1 + 149))
        {
          v192 = 1.0;
        }

        *(&v102 + 3) = v192;
        v8.i32[3] = 1.0;
        v93 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v8, v7), v191)));
        v89 = (v12 * -0.5) / v249;
        DWORD2(v84) = 0;
        *(&v84 + 3) = v192;
        HIDWORD(v95) = 1.0;
      }

      v193 = *(a1 + 16) + v103;
      *(*(a1 + 40) + 16 * v193) = v102;
      v194 = vuzp1_s8(v93, *v8.f32).u32[0];
      *(*(a1 + 24) + 4 * v193) = v194;
      v195 = (a1 + 32);
      *(*(a1 + 32) + 8 * v193) = LODWORD(v89);
      v196 = *(a1 + 16) + (v103 | 1);
      *(*(a1 + 40) + 16 * v196) = v84;
      *(*(a1 + 24) + 4 * v196) = v194;
      *(*(a1 + 32) + 8 * v196) = v95;
      if (v10)
      {
        v197 = vmul_f32(v250, v250);
        v197.i32[0] = vadd_f32(v197, vdup_lane_s32(v197, 1)).u32[0];
        v198 = vrsqrte_f32(v197.u32[0]);
        v199 = vmul_f32(v198, vrsqrts_f32(v197.u32[0], vmul_f32(v198, v198)));
        v200 = vmul_n_f32(vmul_n_f32(v250, vmul_f32(v199, vrsqrts_f32(v197.u32[0], vmul_f32(v199, v199))).f32[0]), *&a4 + (v12 * 0.5));
        v201 = v9 - 10;
        *&v202 = vadd_f32(v83, vadd_f32(v253, v200));
        v203 = v240.n128_f32[0] + ((v12 * 0.5) / v249);
        v204 = *(a1 + 16);
        if (v11)
        {
          v205 = v13;
        }

        else
        {
          v205 = 1.0;
        }

        DWORD2(v202) = 0;
        *(&v202 + 3) = v205;
        v206 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v8, 0), vdupq_n_s32(0x437F0000u))));
        *(*(a1 + 40) + 16 * (v204 + v201)) = v202;
        v207 = vuzp1_s8(v206, v206).u32[0];
        *(*(a1 + 24) + 4 * (v204 + v201)) = v207;
        v208 = __PAIR64__(1.0, LODWORD(v203));
        *(*(a1 + 32) + 8 * (v204 + v201)) = __PAIR64__(1.0, LODWORD(v203));
        *&v210 = vadd_f32(v83, vadd_f32(v253, v250));
        v209 = *(a1 + 16) + (v9 - 9);
        DWORD2(v210) = 0;
        *(&v210 + 3) = v205;
        *(*(a1 + 40) + 16 * v209) = v210;
        v211 = vuzp1_s8(v93, *&v210).u32[0];
        *(*(a1 + 24) + 4 * v209) = v211;
        *(*(a1 + 32) + 8 * v209) = __PAIR64__(1.0, LODWORD(v203));
        *&v213 = vadd_f32(v83, vsub_f32(v253, v250));
        v212 = *(a1 + 16) + (v9 - 6);
        DWORD2(v213) = 0;
        *(&v213 + 3) = v205;
        *(*(a1 + 40) + 16 * v212) = v213;
        *(*(a1 + 24) + 4 * v212) = v211;
        *(*(a1 + 32) + 8 * v212) = LODWORD(v203);
        *&v214 = vadd_f32(v83, vsub_f32(v253, v200));
        DWORD2(v214) = 0;
        v215 = *(a1 + 16) + (v9 - 5);
        *(&v214 + 3) = v205;
        *(*(a1 + 40) + 16 * v215) = v214;
        *(*(a1 + 24) + 4 * v215) = v207;
        *(*(a1 + 32) + 8 * v215) = LODWORD(v203);
      }

      else
      {
        *&v210 = vadd_f32(v83, vadd_f32(v253, v250));
        if (v11)
        {
          v216 = v13;
        }

        else
        {
          v216 = 1.0;
        }

        DWORD2(v210) = 0;
        *(&v210 + 3) = v216;
        v203 = v240.n128_f32[0] + ((v12 * 0.5) / v249);
        *&v208 = v203;
        HIDWORD(v208) = 1.0;
        *&v213 = vadd_f32(v83, vsub_f32(v253, v250));
        DWORD2(v213) = 0;
        *(&v213 + 3) = v216;
      }

      v217 = *(a1 + 16) + (v9 - 2);
      *(*(a1 + 40) + 16 * v217) = v210;
      v218 = vuzp1_s8(v93, *&v210).u32[0];
      *(*(a1 + 24) + 4 * v217) = v218;
      *(*(a1 + 32) + 8 * v217) = v208;
      v219 = *(a1 + 16) + (v9 - 1);
      *(*(a1 + 40) + 16 * v219) = v213;
      *(*(a1 + 24) + 4 * v219) = v218;
      goto LABEL_63;
    case 1:
      if (*(a1 + 148))
      {
        v48 = vmul_f32(v6, v6);
        v48.i32[0] = vadd_f32(v48, vdup_lane_s32(v48, 1)).u32[0];
        v49 = vrsqrte_f32(v48.u32[0]);
        v50 = vmul_f32(v49, vrsqrts_f32(v48.u32[0], vmul_f32(v49, v49)));
        v51 = vmul_n_f32(v6, vmul_f32(v50, vrsqrts_f32(v48.u32[0], vmul_f32(v50, v50))).f32[0]);
        *&v52 = vadd_f32(*&v5, v6);
        v53 = *(a1 + 16);
        if (*(a1 + 149))
        {
          v54 = 0.0;
        }

        else
        {
          v54 = 1.0;
        }

        DWORD2(v52) = 0;
        *(&v52 + 3) = v54;
        v8.i32[3] = 1.0;
        v55 = vmulq_n_f32(v8, v7);
        v56 = vdupq_n_s32(0x437F0000u);
        v57 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v55, v56)));
        *(*(a1 + 40) + 16 * v53) = v52;
        v58 = vuzp1_s8(v57, *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v53) = v58;
        v59 = *&a4 + (v12 * 0.5);
        *(*(a1 + 32) + 8 * v53) = 0x3F80000000000000;
        v60 = vmul_n_f32(v51, v59);
        *&v61 = vadd_f32(*&v5, v60);
        v62 = *(a1 + 16) + 1;
        DWORD2(v61) = 0;
        *(&v61 + 3) = v54;
        *(*(a1 + 40) + 16 * v62) = v61;
        v63 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v8, 0), v56))), *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v62) = v63;
        *(*(a1 + 32) + 8 * v62) = 0x3F80000000000000;
        *&v64 = vsub_f32(*&v5, v60);
        v65 = *(a1 + 16) + 4;
        DWORD2(v64) = 0;
        *(&v64 + 3) = v54;
        *(*(a1 + 40) + 16 * v65) = v64;
        *(*(a1 + 24) + 4 * v65) = v63;
        *(*(a1 + 32) + 8 * v65) = 0;
        *&v61 = vsub_f32(*&v5, v6);
        v66 = *(a1 + 16) + 5;
        DWORD2(v61) = 0;
        *(&v61 + 3) = v54;
        *(*(a1 + 40) + 16 * v66) = v61;
        *(*(a1 + 24) + 4 * v66) = v58;
        *(*(a1 + 32) + 8 * v66) = 0;
        v67 = *(a1 + 16) + 8;
        *(*(a1 + 40) + 16 * v67) = v61;
        *(*(a1 + 24) + 4 * v67) = v58;
        *(*(a1 + 32) + 8 * v67) = 0;
        v68 = *(a1 + 16) + 9;
        *(*(a1 + 40) + 16 * v68) = v52;
        *(*(a1 + 24) + 4 * v68) = v58;
        *(*(a1 + 32) + 8 * v68) = 0x3F80000000000000;
        v69 = vmul_f32(v250, v250);
        v69.i32[0] = vadd_f32(v69, vdup_lane_s32(v69, 1)).u32[0];
        v70 = vrsqrte_f32(v69.u32[0]);
        v71 = vmul_f32(v70, vrsqrts_f32(v69.u32[0], vmul_f32(v70, v70)));
        v72 = vmul_n_f32(vmul_n_f32(v250, vmul_f32(v71, vrsqrts_f32(v69.u32[0], vmul_f32(v71, v71))).f32[0]), v59);
        *&v73 = vadd_f32(v253, v72);
        if (v11)
        {
          v74 = v13;
        }

        else
        {
          v74 = 1.0;
        }

        DWORD2(v73) = 0;
        v75 = *(a1 + 16) + (v9 - 10);
        *(&v73 + 3) = v74;
        *(*(a1 + 40) + 16 * v75) = v73;
        *(*(a1 + 24) + 4 * v75) = v63;
        *(*(a1 + 32) + 8 * v75) = 0x3F80000000000000;
        *&v77 = vadd_f32(v253, v250);
        DWORD2(v77) = 0;
        v76 = *(a1 + 16) + (v9 - 9);
        *(&v77 + 3) = v74;
        *(*(a1 + 40) + 16 * v76) = v77;
        *(*(a1 + 24) + 4 * v76) = v58;
        *(*(a1 + 32) + 8 * v76) = 0x3F80000000000000;
        *&v79 = vsub_f32(v253, v250);
        DWORD2(v79) = 0;
        v78 = *(a1 + 16) + (v9 - 6);
        *(&v79 + 3) = v74;
        *(*(a1 + 40) + 16 * v78) = v79;
        *(*(a1 + 24) + 4 * v78) = v58;
        *(*(a1 + 32) + 8 * v78) = 0;
        *&v80 = vsub_f32(v253, v72);
        DWORD2(v80) = 0;
        v81 = *(a1 + 16) + (v9 - 5);
        v239 = v74;
        *(&v80 + 3) = v74;
        *(*(a1 + 40) + 16 * v81) = v80;
        *(*(a1 + 24) + 4 * v81) = v63;
        *(*(a1 + 32) + 8 * v81) = 0;
      }

      else
      {
        *&v104 = vsub_f32(*&v5, v6);
        v105 = *(a1 + 16);
        v106 = 1.0;
        v107 = 0.0;
        if (!*(a1 + 149))
        {
          v107 = 1.0;
        }

        DWORD2(v104) = 0;
        *(&v104 + 3) = v107;
        v8.i32[3] = 1.0;
        v57 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v8, v7), vdupq_n_s32(0x437F0000u))));
        *(*(a1 + 40) + 16 * v105) = v104;
        v108 = vuzp1_s8(v57, *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v105) = v108;
        *(*(a1 + 32) + 8 * v105) = 0;
        *&v109 = vadd_f32(*&v5, v6);
        v110 = *(a1 + 16) + 1;
        DWORD2(v109) = 0;
        *(&v109 + 3) = v107;
        *(*(a1 + 40) + 16 * v110) = v109;
        *(*(a1 + 24) + 4 * v110) = v108;
        *(*(a1 + 32) + 8 * v110) = 0x3F80000000000000;
        *&v77 = vadd_f32(v253, v250);
        if (v11)
        {
          v106 = v13;
        }

        DWORD2(v77) = 0;
        *(&v77 + 3) = v106;
        *&v79 = vsub_f32(v253, v250);
        DWORD2(v79) = 0;
        v239 = v106;
        *(&v79 + 3) = v106;
      }

      v111 = *(a1 + 16) + (v9 - 2);
      *(*(a1 + 40) + 16 * v111) = v77;
      v112 = vuzp1_s8(v57, *v8.f32).u32[0];
      *(*(a1 + 24) + 4 * v111) = v112;
      *(*(a1 + 32) + 8 * v111) = __PAIR64__(1.0, v240.n128_u32[0]);
      v113 = *(a1 + 16) + (v9 - 1);
      *(*(a1 + 40) + 16 * v113) = v79;
      *(*(a1 + 24) + 4 * v113) = v112;
      *(*(a1 + 32) + 8 * v113) = v240.n128_u32[0];
      v114 = (v12 + (*(a1 + 152) * 2.0)) * 0.14;
      v115 = ((ceilf(v114) * 2.0) + 2.0);
      if (v115 >= 1)
      {
        v236 = v12;
        v246 = v115;
        v244 = -v6.f32[1];
        v116 = 0.0;
        if (!v11)
        {
          v116 = 1.0;
        }

        v251 = v5;
        DWORD2(v5) = 0;
        v237 = v116;
        *(&v5 + 3) = v116;
        v234 = v5;
        v235 = vdup_lane_s32(*&a4, 0);
        v117 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v8, 0), vdupq_n_s32(0x437F0000u))));
        v248 = v6.i32[1];
        v118 = vdup_lane_s32(v6, 0);
        v119 = 0x3F80000000000000;
        v120 = 0.0;
        v121 = 1;
        v232 = vuzp1_s8(v57, v117).u32[0];
        v229 = v117;
        v230 = v57;
        v231 = vuzp1_s8(v117, v117).u32[0];
        v122 = v115;
        do
        {
          v123 = v120 * 3.14159265 / v246 + 1.57079633;
          v124 = v121 * 3.14159265 / v246 + 1.57079633;
          v125 = v123 + -1.57079633;
          v126 = __sincosf_stret(v125);
          v242 = vadd_f32(v251, vmla_f32(vmul_f32(__PAIR64__(v248, LODWORD(v126.__sinval)), __PAIR64__(LODWORD(v126.__cosval), LODWORD(v244))), vext_s8(__PAIR64__(LODWORD(v126.__cosval), LODWORD(v244)), __PAIR64__(v248, LODWORD(v126.__sinval)), 4uLL), v118));
          v127 = v124 + -1.57079633;
          v128 = __sincosf_stret(v127);
          v241 = vadd_f32(v251, vmla_f32(vmul_f32(__PAIR64__(v248, LODWORD(v128.__sinval)), __PAIR64__(LODWORD(v128.__cosval), LODWORD(v244))), vext_s8(__PAIR64__(LODWORD(v128.__cosval), LODWORD(v244)), __PAIR64__(v248, LODWORD(v128.__sinval)), 4uLL), v118));
          v129 = __sincosf_stret(v124);
          *&v130 = (((v236 * v129.__cosval) * 0.5) / v249) + 0.0;
          *(&v130 + 1) = (v129.__sinval + 1.0) * 0.5;
          *&v132 = v242;
          DWORD2(v132) = 0;
          v131 = *(a1 + 16) + v9;
          *(&v132 + 3) = v237;
          *(*(a1 + 40) + 16 * v131) = v132;
          *(*(a1 + 24) + 4 * v131) = v232;
          *(*(a1 + 32) + 8 * v131) = v119;
          v133 = *(a1 + 16) + (v9 + 1);
          *&v134 = v241;
          *(&v134 + 1) = __PAIR64__(LODWORD(v237), 0);
          *(*(a1 + 40) + 16 * v133) = v134;
          *(*(a1 + 24) + 4 * v133) = v232;
          *(*(a1 + 32) + 8 * v133) = v130;
          v135 = *(a1 + 16) + (v9 + 2);
          *(*(a1 + 40) + 16 * v135) = v234;
          *(*(a1 + 24) + 4 * v135) = v232;
          *(*(a1 + 32) + 8 * v135) = 0x3F00000000000000;
          v136 = *(a1 + 16) + (v9 + 3);
          *(*(a1 + 40) + 16 * v136) = v234;
          *(*(a1 + 24) + 4 * v136) = v232;
          *(*(a1 + 32) + 8 * v136) = 0x3F00000000000000;
          v137 = v9 + 4;
          if (v10)
          {
            v138 = vsub_f32(v242, v251);
            v139 = vmul_f32(v138, v138);
            v139.i32[0] = vadd_f32(v139, vdup_lane_s32(v139, 1)).u32[0];
            v140 = vrsqrte_f32(v139.u32[0]);
            v141 = vmul_f32(v140, vrsqrts_f32(v139.u32[0], vmul_f32(v140, v140)));
            v142 = vmul_n_f32(v138, vmul_f32(v141, vrsqrts_f32(v139.u32[0], vmul_f32(v141, v141))).f32[0]);
            v143 = vsub_f32(v241, v251);
            v144 = vmul_f32(v143, v143);
            v144.i32[0] = vadd_f32(v144, vdup_lane_s32(v144, 1)).u32[0];
            v145 = vrsqrte_f32(v144.u32[0]);
            v146 = vmul_f32(v145, vrsqrts_f32(v144.u32[0], vmul_f32(v145, v145)));
            *&v147 = vmla_f32(v241, v235, vmul_n_f32(v143, vmul_f32(v146, vrsqrts_f32(v144.u32[0], vmul_f32(v146, v146))).f32[0]));
            v148 = *(a1 + 16) + v137;
            *(*(a1 + 40) + 16 * v148) = v132;
            *(*(a1 + 24) + 4 * v148) = v232;
            *(*(a1 + 32) + 8 * v148) = v119;
            v149 = *(a1 + 16) + (v9 + 5);
            *(*(a1 + 40) + 16 * v149) = v134;
            *(*(a1 + 24) + 4 * v149) = v232;
            *(*(a1 + 32) + 8 * v149) = v130;
            DWORD2(v147) = 0;
            v150 = *(a1 + 16) + (v9 + 6);
            *(&v147 + 3) = v237;
            *(*(a1 + 40) + 16 * v150) = v147;
            *(*(a1 + 24) + 4 * v150) = v231;
            *(*(a1 + 32) + 8 * v150) = v130;
            *&v151 = vmla_f32(v242, v235, v142);
            v152 = *(a1 + 16) + (v9 + 7);
            *(&v151 + 1) = __PAIR64__(LODWORD(v237), 0);
            *(*(a1 + 40) + 16 * v152) = v151;
            *(*(a1 + 24) + 4 * v152) = v231;
            *(*(a1 + 32) + 8 * v152) = v119;
            v137 = v9 + 8;
          }

          v120 = v120 + 1.0;
          ++v121;
          v9 = v137;
          v119 = v130;
          --v122;
        }

        while (v122);
        __asm { FMOV            V3.2S, #1.0 }

        LODWORD(_D3) = v240.n128_u32[0];
        *&v157 = v253;
        DWORD2(v157) = 0;
        *(&v157 + 3) = v239;
        v243 = v157;
        v158 = 0.0;
        v159 = 1;
        v238 = vuzp1_s8(v230, v230).u32[0];
        v233 = vuzp1_s8(v229, v229).u32[0];
        do
        {
          v252 = _D3;
          v160 = v158 * 3.14159265 / v246 + 1.57079633;
          v161 = v159 * 3.14159265 / v246 + 1.57079633;
          v162 = v160 + -1.57079633;
          v163 = __sincosf_stret(v162);
          v164.f32[0] = (v250.f32[1] * v163.__sinval) + (v250.f32[0] * v163.__cosval);
          v164.f32[1] = (v250.f32[1] * v163.__cosval) - (v250.f32[0] * v163.__sinval);
          v247 = vadd_f32(v253, v164);
          v165 = v161 + -1.57079633;
          v166 = __sincosf_stret(v165);
          v167.f32[0] = (v250.f32[1] * v166.__sinval) + (v250.f32[0] * v166.__cosval);
          v167.f32[1] = (v250.f32[1] * v166.__cosval) - (v250.f32[0] * v166.__sinval);
          v245 = vadd_f32(v253, v167);
          v168 = __sincosf_stret(v161);
          *&v169 = v240.n128_f32[0] - (((v236 * v168.__cosval) * 0.5) / v249);
          *(&v169 + 1) = (v168.__sinval + 1.0) * 0.5;
          *&v171 = v247;
          DWORD2(v171) = 0;
          v170 = *(a1 + 16) + v137;
          *(&v171 + 3) = v239;
          *(*(a1 + 40) + 16 * v170) = v171;
          *(*(a1 + 24) + 4 * v170) = v238;
          *(*(a1 + 32) + 8 * v170) = v252;
          v172 = *(a1 + 16) + (v137 + 1);
          *&v173 = v245;
          *(&v173 + 1) = __PAIR64__(LODWORD(v239), 0);
          *(*(a1 + 40) + 16 * v172) = v173;
          *(*(a1 + 24) + 4 * v172) = v238;
          *(*(a1 + 32) + 8 * v172) = v169;
          v174 = *(a1 + 16) + (v137 + 2);
          *(*(a1 + 40) + 16 * v174) = v243;
          *(*(a1 + 24) + 4 * v174) = v238;
          *(*(a1 + 32) + 8 * v174) = __PAIR64__(0.5, v240.n128_u32[0]);
          v175 = *(a1 + 16) + (v137 + 3);
          *(*(a1 + 40) + 16 * v175) = v243;
          *(*(a1 + 24) + 4 * v175) = v238;
          *(*(a1 + 32) + 8 * v175) = __PAIR64__(0.5, v240.n128_u32[0]);
          v9 = v137 + 4;
          if (v10)
          {
            v176 = vsub_f32(v247, v253);
            v177 = vmul_f32(v176, v176);
            v177.i32[0] = vadd_f32(v177, vdup_lane_s32(v177, 1)).u32[0];
            v178 = vrsqrte_f32(v177.u32[0]);
            v179 = vmul_f32(v178, vrsqrts_f32(v177.u32[0], vmul_f32(v178, v178)));
            v180 = vmul_n_f32(v176, vmul_f32(v179, vrsqrts_f32(v177.u32[0], vmul_f32(v179, v179))).f32[0]);
            v181 = vsub_f32(v245, v253);
            v182 = vmul_f32(v181, v181);
            v182.i32[0] = vadd_f32(v182, vdup_lane_s32(v182, 1)).u32[0];
            v183 = vrsqrte_f32(v182.u32[0]);
            v184 = vmul_f32(v183, vrsqrts_f32(v182.u32[0], vmul_f32(v183, v183)));
            *&v185 = vmla_f32(v245, v235, vmul_n_f32(v181, vmul_f32(v184, vrsqrts_f32(v182.u32[0], vmul_f32(v184, v184))).f32[0]));
            v186 = *(a1 + 16) + v9;
            *(*(a1 + 40) + 16 * v186) = v171;
            *(*(a1 + 24) + 4 * v186) = v238;
            *(*(a1 + 32) + 8 * v186) = v252;
            v187 = *(a1 + 16) + (v137 + 5);
            *(*(a1 + 40) + 16 * v187) = v173;
            *(*(a1 + 24) + 4 * v187) = v238;
            *(*(a1 + 32) + 8 * v187) = v169;
            DWORD2(v185) = 0;
            v188 = *(a1 + 16) + (v137 + 6);
            *(&v185 + 3) = v239;
            *(*(a1 + 40) + 16 * v188) = v185;
            *(*(a1 + 24) + 4 * v188) = v233;
            *(*(a1 + 32) + 8 * v188) = v169;
            *&v189 = vmla_f32(v247, v235, v180);
            v190 = *(a1 + 16) + (v137 + 7);
            *(&v189 + 1) = __PAIR64__(LODWORD(v239), 0);
            *(*(a1 + 40) + 16 * v190) = v189;
            *(*(a1 + 24) + 4 * v190) = v233;
            *(*(a1 + 32) + 8 * v190) = v252;
            v9 = v137 + 8;
          }

          v158 = v158 + 1.0;
          ++v159;
          v137 = v9;
          _D3 = v169;
          --v115;
        }

        while (v115);
      }

      break;
    case 0:
      if (*(a1 + 148))
      {
        v15 = vmul_f32(v6, v6);
        v15.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
        v16 = vrsqrte_f32(v15.u32[0]);
        v17 = vmul_f32(v16, vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)));
        v18 = vmul_n_f32(v6, vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).f32[0]);
        *&v19 = vadd_f32(*&v5, v6);
        v20 = *(a1 + 16);
        _ZF = v11 == 0;
        if (*(a1 + 149))
        {
          v22 = 0.0;
        }

        else
        {
          v22 = 1.0;
        }

        DWORD2(v19) = 0;
        *(&v19 + 3) = v22;
        v8.i32[3] = 1.0;
        v23 = vdupq_n_s32(0x437F0000u);
        v24 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v8, v7), v23)));
        *(*(a1 + 40) + 16 * v20) = v19;
        v25 = vuzp1_s8(v24, *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v20) = v25;
        v26 = *&a4 + (v12 * 0.5);
        *(*(a1 + 32) + 8 * v20) = 0x3F80000000000000;
        v27 = vmul_n_f32(v18, v26);
        *&v28 = vadd_f32(*&v5, v27);
        v29 = *(a1 + 16) + 1;
        DWORD2(v28) = 0;
        *(&v28 + 3) = v22;
        *v8.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_f32(v8, 0), v23)));
        *(*(a1 + 40) + 16 * v29) = v28;
        *v8.f32 = vuzp1_s8(*v8.f32, *v8.f32);
        *(*(a1 + 24) + 4 * v29) = v8.i32[0];
        *(*(a1 + 32) + 8 * v29) = 0x3F80000000000000;
        *&v30 = vsub_f32(*&v5, v27);
        v31 = *(a1 + 16) + 4;
        DWORD2(v30) = 0;
        *(&v30 + 3) = v22;
        *(*(a1 + 40) + 16 * v31) = v30;
        *(*(a1 + 24) + 4 * v31) = v8.i32[0];
        *(*(a1 + 32) + 8 * v31) = 0;
        *v23.f32 = vsub_f32(*&v5, v6);
        v32 = *(a1 + 16) + 5;
        v23.i32[2] = 0;
        v23.f32[3] = v22;
        *(*(a1 + 40) + 16 * v32) = v23;
        *(*(a1 + 24) + 4 * v32) = v25;
        *(*(a1 + 32) + 8 * v32) = 0;
        v33 = *(a1 + 16) + 8;
        *(*(a1 + 40) + 16 * v33) = v23;
        *(*(a1 + 24) + 4 * v33) = v25;
        *(*(a1 + 32) + 8 * v33) = 0;
        v34 = *(a1 + 16) + 9;
        *(*(a1 + 40) + 16 * v34) = v19;
        *(*(a1 + 24) + 4 * v34) = v25;
        *(*(a1 + 32) + 8 * v34) = 0x3F80000000000000;
        v35 = vmul_f32(v250, v250);
        v35.i32[0] = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
        v36 = vrsqrte_f32(v35.u32[0]);
        v37 = vmul_f32(v36, vrsqrts_f32(v35.u32[0], vmul_f32(v36, v36)));
        v38 = vmul_n_f32(vmul_n_f32(v250, vmul_f32(v37, vrsqrts_f32(v35.u32[0], vmul_f32(v37, v37))).f32[0]), v26);
        *&v39 = vadd_f32(v253, v38);
        if (_ZF)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = v13;
        }

        DWORD2(v39) = 0;
        v41 = *(a1 + 16) + (v9 - 10);
        *(&v39 + 3) = v40;
        *(*(a1 + 40) + 16 * v41) = v39;
        *(*(a1 + 24) + 4 * v41) = v8.i32[0];
        *(*(a1 + 32) + 8 * v41) = 0x3F80000000000000;
        *&v43 = vadd_f32(v253, v250);
        DWORD2(v43) = 0;
        v42 = *(a1 + 16) + (v9 - 9);
        *(&v43 + 3) = v40;
        *(*(a1 + 40) + 16 * v42) = v43;
        *(*(a1 + 24) + 4 * v42) = v25;
        *(*(a1 + 32) + 8 * v42) = 0x3F80000000000000;
        *&v45 = vsub_f32(v253, v250);
        DWORD2(v45) = 0;
        v44 = *(a1 + 16) + (v9 - 6);
        *(&v45 + 3) = v40;
        *(*(a1 + 40) + 16 * v44) = v45;
        *(*(a1 + 24) + 4 * v44) = v25;
        *(*(a1 + 32) + 8 * v44) = 0;
        *&v46 = vsub_f32(v253, v38);
        DWORD2(v46) = 0;
        v47 = *(a1 + 16) + (v9 - 5);
        *(&v46 + 3) = v40;
        *(*(a1 + 40) + 16 * v47) = v46;
        *(*(a1 + 24) + 4 * v47) = v8.i32[0];
        *(*(a1 + 32) + 8 * v47) = 0;
      }

      else
      {
        *&v220 = vsub_f32(*&v5, v6);
        v221 = *(a1 + 16);
        v222 = v11 == 0;
        if (*(a1 + 149))
        {
          v223 = 0.0;
        }

        else
        {
          v223 = 1.0;
        }

        DWORD2(v220) = 0;
        *(&v220 + 3) = v223;
        v8.i32[3] = 1.0;
        v8 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v8, v7), vdupq_n_s32(0x437F0000u)));
        v24 = vmovn_s32(v8);
        *(*(a1 + 40) + 16 * v221) = v220;
        v8.i32[0] = vuzp1_s8(v24, *v8.f32).u32[0];
        *(*(a1 + 24) + 4 * v221) = v8.i32[0];
        *(*(a1 + 32) + 8 * v221) = 0;
        *&v224 = vadd_f32(*&v5, v6);
        v225 = *(a1 + 16) + 1;
        DWORD2(v224) = 0;
        *(&v224 + 3) = v223;
        *(*(a1 + 40) + 16 * v225) = v224;
        *(*(a1 + 24) + 4 * v225) = v8.i32[0];
        v8.i32[1] = 1065353216;
        *(*(a1 + 32) + 8 * v225) = 0x3F80000000000000;
        *&v43 = vadd_f32(v253, v250);
        if (v222)
        {
          v8.f32[0] = 1.0;
        }

        else
        {
          v8.f32[0] = v13;
        }

        DWORD2(v43) = 0;
        HIDWORD(v43) = v8.i32[0];
        *&v45 = vsub_f32(v253, v250);
        DWORD2(v45) = 0;
        HIDWORD(v45) = v8.i32[0];
      }

      v226 = *(a1 + 16) + (v9 - 2);
      *(*(a1 + 40) + 16 * v226) = v43;
      v227 = vuzp1_s8(v24, *v8.f32).u32[0];
      *(*(a1 + 24) + 4 * v226) = v227;
      v195 = (a1 + 32);
      *(*(a1 + 32) + 8 * v226) = __PAIR64__(1.0, v240.n128_u32[0]);
      v219 = *(a1 + 16) + (v9 - 1);
      *(*(a1 + 40) + 16 * v219) = v45;
      *(*(a1 + 24) + 4 * v219) = v227;
      v203 = v240.n128_f32[0];
LABEL_63:
      *(*v195 + 8 * v219) = LODWORD(v203);
      break;
  }

  *(a1 + 196) = v9;
  result = v240;
  *(a1 + 204) = v240.n128_u32[0];
  return result;
}

BOOL SKCShapeNode::canAppendToCurrentBatch(SKBlendMode *this, SKCRenderInfo *a2)
{
  if (SKCShapeNode::shouldUseLocalStrokeBuffers(this, a2))
  {
    return 0;
  }

  if (*(a2 + 148) != 3)
  {
    return 0;
  }

  v4 = *(a2 + 149);
  if (v4 != SKBlendModeGetBackingBlendMode(this[36]) || *(a2 + 76) != *(a2 + 21) || *(a2 + 75) != *(this + 84) || *(a2 + 163))
  {
    return 0;
  }

  v5 = *(this + 82);
  if (v5)
  {
    [v5 _backingTexture];
    v6 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v6 = *(a2 + 54);
  }

  if (*(a2 + 77) != v6)
  {
    return 0;
  }

  v8 = 512;
  if (!*(this + 82))
  {
    v8 = 480;
  }

  return *(a2 + 79) == *(a2 + v8);
}

void SKCShapeNode::~SKCShapeNode(SKCShapeNode *this)
{
  SKCShapeNode::~SKCShapeNode(this);

  JUMPOUT(0x21CF0A160);
}

{
  *this = &unk_282E16F88;
  v2 = *(this + 70);
  if (v2)
  {
    SKCompositeBezierPath::~SKCompositeBezierPath(v2);
    MEMORY[0x21CF0A160]();
    *(this + 70) = 0;
  }

  v3 = *(this + 79);
  if (v3)
  {
    CGPathRelease(v3);
    *(this + 79) = 0;
  }

  v4 = *(this + 97);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 95);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 93);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 91);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 89);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 87);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SKCNode::~SKCNode(this);
}

char *std::vector<jet_render_op>::__insert_with_size[abi:ne200100]<std::__wrap_iter<jet_render_op*>,std::__wrap_iter<jet_render_op*>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 6)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 6)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<jet_render_op>::__move_range(a1, a2, a1[1], a2 + 192 * a5);
        v17 = a3 + (v18 << 6);
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*,jet_render_op*,jet_render_op*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<jet_render_op>::__move_range(a1, v5, v10, &v5[192 * a5]);
        v17 = v16 + a3;
      }

      std::__copy_impl::operator()[abi:ne200100]<jet_render_op *,jet_render_op *,jet_render_op *>(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 6);
    if (v12 > 0x155555555555555)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 6);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xAAAAAAAAAAAAAALL)
    {
      v15 = 0x155555555555555;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<jet_render_op>>(a1, v15);
    }

    v20 = 0;
    v21 = v13 >> 6 << 6;
    v22 = v21;
    v23 = 0;
    std::__split_buffer<jet_render_op>::__construct_at_end_with_size<std::__wrap_iter<jet_render_op*>>(&v20, a3, a5);
    v5 = std::vector<jet_render_op>::__swap_out_circular_buffer(a1, &v20, v5);
    std::__split_buffer<jet_render_op>::~__split_buffer(&v20);
  }

  return v5;
}

uint64_t std::vector<jet_render_op>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = v6 + v10;
      *v11 = &unk_282E15828;
      v12 = v7 + v10;
      *(v11 + 8) = *(v7 + v10 + 8);
      if (*(v7 + v10 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((v11 + 16), *(v12 + 16), *(v12 + 24));
      }

      else
      {
        v13 = *(v12 + 16);
        *(v11 + 32) = *(v12 + 32);
        *(v11 + 16) = v13;
      }

      std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](v6 + v10 + 40, v7 + v10 + 40);
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6 + v10 + 72, v7 + v10 + 72);
      v14 = (v6 + v10);
      v14[7] = *(v7 + v10 + 112);
      v15 = *(v7 + v10 + 128);
      v16 = *(v7 + v10 + 144);
      v17 = *(v7 + v10 + 176);
      v14[10] = *(v7 + v10 + 160);
      v14[11] = v17;
      v14[8] = v15;
      v14[9] = v16;
      v10 += 192;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<jet_render_op *,jet_render_op *,jet_render_op *>(&v19, a2, v7, v6);
}

uint64_t std::__split_buffer<jet_render_op>::__construct_at_end_with_size<std::__wrap_iter<jet_render_op*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 192 * a3;
    v8 = 192 * a3;
    do
    {
      v9 = v4 + v6;
      *v9 = &unk_282E15828;
      v10 = a2 + v6;
      *(v9 + 8) = *(a2 + v6 + 8);
      if (*(a2 + v6 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((v9 + 16), *(v10 + 16), *(v10 + 24));
      }

      else
      {
        v11 = *(v10 + 16);
        *(v9 + 32) = *(v10 + 32);
        *(v9 + 16) = v11;
      }

      std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](v4 + v6 + 40, a2 + v6 + 40);
      result = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4 + v6 + 72, a2 + v6 + 72);
      v12 = (v4 + v6);
      v12[7] = *(a2 + v6 + 112);
      v13 = *(a2 + v6 + 128);
      v14 = *(a2 + v6 + 144);
      v15 = *(a2 + v6 + 176);
      v12[10] = *(a2 + v6 + 160);
      v12[11] = v15;
      v12[8] = v13;
      v12[9] = v14;
      v6 += 192;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = *(result + 16);
  }

  *(v3 + 16) = v7;
  return result;
}

uint64_t std::vector<jet_render_op>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*,jet_render_op*,jet_render_op*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *v8 = &unk_282E15828;
      v9 = a2 + v7;
      *(v8 + 8) = *(a2 + v7 + 8);
      if (*(a2 + v7 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((v8 + 16), *(v9 + 16), *(v9 + 24));
      }

      else
      {
        v10 = *(v9 + 16);
        *(v8 + 32) = *(v9 + 32);
        *(v8 + 16) = v10;
      }

      std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](a4 + v7 + 40, a2 + v7 + 40);
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a4 + v7 + 72, a2 + v7 + 72);
      v11 = (a4 + v7);
      v11[7] = *(a2 + v7 + 112);
      v12 = *(a2 + v7 + 128);
      v13 = *(a2 + v7 + 144);
      v14 = *(a2 + v7 + 176);
      v11[10] = *(a2 + v7 + 160);
      v11[11] = v14;
      v11[8] = v12;
      v11[9] = v13;
      v7 += 192;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_21C44143C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 192;
    v5 = -v2;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 -= 24;
      (*v8)(v6);
      v4 -= 192;
      v6 = v7;
      v5 += 192;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<jet_render_op *,jet_render_op *,jet_render_op *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(a4 + v7 - 184) = *(a3 + v7 - 184);
      std::string::operator=((a4 + v7 - 176), (a3 + v7 - 176));
      std::function<void ()(jet_context *)>::operator=((a4 + v7 - 152), a3 + v7 - 152);
      std::function<void ()(void)>::operator=((a4 + v7 - 120), a3 + v7 - 120);
      *(v8 - 80) = *(a3 + v7 - 80);
      v9 = *(a3 + v7 - 16);
      v11 = *(a3 + v7 - 64);
      v10 = *(a3 + v7 - 48);
      *(v8 - 32) = *(a3 + v7 - 32);
      *(v8 - 16) = v9;
      *(v8 - 64) = v11;
      *(v8 - 48) = v10;
      v7 -= 192;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void *std::function<void ()(jet_context *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(jet_context *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(jet_context *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<void ()(jet_context *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_21C4418B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_21C441B14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<jet_render_op *,jet_render_op *,jet_render_op *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = (a4 + v7);
    *(a4 + v7 + 8) = *(a2 + v7 + 8);
    std::string::operator=((a4 + v7 + 16), (a2 + v7 + 16));
    std::function<void ()(jet_context *)>::operator=((a4 + v7 + 40), a2 + v7 + 40);
    std::function<void ()(void)>::operator=((a4 + v7 + 72), a2 + v7 + 72);
    v8[7] = *(a2 + v7 + 112);
    v9 = *(a2 + v7 + 176);
    v11 = *(a2 + v7 + 128);
    v10 = *(a2 + v7 + 144);
    v8[10] = *(a2 + v7 + 160);
    v8[11] = v9;
    v8[8] = v11;
    v8[9] = v10;
    v7 += 192;
  }

  while (a2 + v7 != v6);
  return v6;
}

void SKCompositeBezierPath::~SKCompositeBezierPath(SKCompositeBezierPath *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          *(v4 + 24) = v5;
          operator delete(v5);
        }

        MEMORY[0x21CF0A160](v4, 0x1020C40DCFC4CEALL);
        v2 = *(this + 3);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 2);
  }

  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void sub_21C44636C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, int a13, char a14, void *a15)
{
  if (a14)
  {
  }

  if (!v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_21C4490E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C449C00(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_21C44A664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SKDisplayLink;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21C44AE10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44B740(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44B9B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44BDFC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44C074(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44C4BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44C93C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44D20C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44DA1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C44DC94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C4512C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21C4514D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _removeChild(SKNode *a1, SKNode *a2, SKScene *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [(SKNode *)v5 parent];

  if (v7 == v11)
  {
    v8 = [(SKScene *)v6 _pkPhysicsWorld];
    SKCNode::removeChild([(SKNode *)v11 _backingNode], [(SKNode *)v5 _backingNode]);
    if (([v8 hasBodies] & 1) != 0 || (objc_msgSend(v8, "hasFields") & 1) != 0 || -[SKScene _hasConstraints](v6, "_hasConstraints") || (-[SKScene avAudioEnvironmentNode](v6, "avAudioEnvironmentNode"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      _unhookPhysicsAndConstraints(v5, v6);
    }

    v10 = [NSClassFromString(&cfstr_Uifocussystem.isa) focusSystemForEnvironment:v11];
    [v10 _focusEnvironmentWillDisappear:v5];
  }
}

void sub_21C451DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_21C452694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

BOOL SKNodeNameMatches(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@".*"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 name];
    v7 = [v6 rangeOfString:v3 options:1032];
    v9 = v8;

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v10 = [v4 name];
      if (v9 == [v10 length])
      {
        v11 = [v4 name];
        v5 = [v11 length] != 0;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

void sub_21C452BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void **a30)
{
  std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__tree<SKNode * {__strong}>::destroy(&a16, a17);
  a16 = &a27;
  std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

uint64_t std::vector<Token>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Token>::__emplace_back_slow_path<Token>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v3 + 8) = v4;
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

void sub_21C453708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  STACK[0x220] = &STACK[0x200];
  std::vector<UITouch * {__strong}>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);

  _Unwind_Resume(a1);
}

id std::vector<SKNode * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<UITouch * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<UITouch * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_21C453984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UITouch * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_21C4551F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<SKCRenderSortInfo *>::clear(va);
  _Unwind_Resume(a1);
}

void sub_21C455540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SKNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _unhookPhysicsAndConstraints(SKNode *a1, SKScene *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(SKNode *)v3 physicsBody];
  v6 = [(SKScene *)v4 _pkPhysicsWorld];
  v7 = v6;
  if (v5)
  {
    [v6 removeBody:v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v3;
    v9 = [(SKNode *)v8 field];

    if (v9)
    {
      v10 = [(SKNode *)v8 field];
      [v7 removeField:v10];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SKNode *)v3 _connectToScene:0];
  }

  v11 = [(SKNode *)v3 constraints];
  v12 = v11;
  if (v11 && [v11 count])
  {
    [(SKScene *)v4 _removeConstraintsForNode:v3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(SKNode *)v3 _backingNode];
    WeakRetained = objc_loadWeakRetained((v13 + 568));
    v15 = WeakRetained;
    if (WeakRetained)
    {
      SKCNode::removeInternalChild([WeakRetained _backingNode], *(v13 + 592));
    }
  }

  if ([(SKNode *)v3 hasChildren])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZL28_unhookPhysicsAndConstraintsP6SKNodeP7SKScene_block_invoke;
    v16[3] = &unk_27830FF98;
    v16[4] = v7;
    v16[5] = v4;
    [(SKNode *)v3 enumerateChildNodesWithName:@".//SKNode" usingBlock:v16];
  }
}

void ___ZL28_unhookPhysicsAndConstraintsP6SKNodeP7SKScene_block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 physicsBody];
  if (v3)
  {
    [*(a1 + 32) removeBody:v3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v13;
    v5 = [v4 field];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v4 field];
      [v6 removeField:v7];
    }
  }

  v8 = [v13 constraints];
  v9 = v8;
  if (v8 && [v8 count])
  {
    [*(a1 + 40) _removeConstraintsForNode:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v13 _backingNode];
    WeakRetained = objc_loadWeakRetained((v10 + 568));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      SKCNode::removeInternalChild([WeakRetained _backingNode], *(v10 + 592));
    }
  }
}

void Token::Token(Token *this, NSString *a2)
{
  v3 = a2;
  *this = 3;
  v4 = v3;
  *(this + 1) = v4;
  if (NSClassFromString(v4))
  {
    *this = 4;
  }

  if ([(NSString *)v4 containsString:@"*"]|| [(NSString *)v4 containsString:@"?"])
  {
    v5 = [(NSString *)v4 stringByReplacingOccurrencesOfString:@"*" withString:@".*"];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"?" withString:@".?"];

    objc_storeStrong(this + 1, v6);
    v4 = v6;
  }
}

void std::vector<Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<Token>::__emplace_back_slow_path<Token>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Token>>(a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v10;
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Token>,Token*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<Token>::~__split_buffer(&v15);
  return v14;
}

void sub_21C45A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Token>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Token>,Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v6 += 16;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 16;
    }
  }
}

uint64_t std::__split_buffer<Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<SKNode * {__strong}>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<SKNode * {__strong}>::destroy(a1, *a2);
    std::__tree<SKNode * {__strong}>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Token>>(a1, a2);
  }

  std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
}

void *std::__tree<SKNode * {__strong}>::__emplace_unique_key_args<SKNode * {__strong},SKNode * const {__strong}&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<SKNode * {__strong},void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<SKNode * {__strong},void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<Token const*>,std::__wrap_iter<Token const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void SKCParticleManager::SKCParticleManager(SKCParticleManager *this)
{
  *(this + 3) = 0;
  *(this + 2) = 0;
  *this = &unk_282E170A8;
  *(this + 1) = this + 16;
}

uint64_t SKCParticleManager::update(uint64_t this, float a2)
{
  v2 = *(this + 8);
  v3 = (this + 16);
  if (v2 != (this + 16))
  {
    do
    {
      this = (**v2[4])(v2[4], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

void SKCParticleManager::compact(SKCParticleManager *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 != this + 16)
  {
    do
    {
      SKCParticleSystem::compact(*(v1 + 4));
      v3 = *(v1 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v1 + 2);
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void SKCParticleManager::enumerateParticleSystems(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != v4)
  {
    do
    {
      v8[2](v8, v3[4]);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }
}

void SKCParticleManager::~SKCParticleManager(SKCParticleManager *this)
{
  *this = &unk_282E170A8;
  v2 = this + 8;
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(v3 + 4);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(v2, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v4;
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(v2, 0);
}

{
  SKCParticleManager::~SKCParticleManager(this);

  JUMPOUT(0x21CF0A160);
}

void *std::__tree<SKCParticleSystem *>::__emplace_unique_key_args<SKCParticleSystem *,SKCParticleSystem * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<SKCParticleSystem *>::__erase_unique<SKCParticleSystem *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<SKCParticleSystem *>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<SKCParticleSystem *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_21C45B354(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_21C45D17C(_Unwind_Exception *a1)
{
  v8 = v3;

  _Unwind_Resume(a1);
}

void SKC3DNode::SKC3DNode(SKC3DNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E170D8;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 0u;
  *(v1 + 616) = 0;
  *(v1 + 618) = 1;
}

void SKC3DNode::~SKC3DNode(id *this)
{

  SKCNode::~SKCNode(this);
}

{
  SKC3DNode::~SKC3DNode(this);

  JUMPOUT(0x21CF0A160);
}

void SKC3DNode::getBatchInfo(SKC3DNode *this@<X0>, SKCRenderInfo *a2@<X1>, uint64_t a3@<X8>)
{
  SKC3DNode::ensureRenderer(this, a2);
  *a3 = 0;
  *(a3 + 4) = 0x300000000;
  *(a3 + 12) = 1;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 60) = 0u;
  if ((*(a2 + 581) & 2) == 0)
  {
    *a3 = 1;
  }
}

void SKC3DNode::ensureRenderer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 560))
  {
    v4 = NSClassFromString(&cfstr_Scnrenderer.isa);
    SKCRenderer::getBackingContext(*(a2 + 104), &v15);
    v5 = (*(*v15 + 136))(v15);
    v6 = v15;
    v7 = v16;
    if (v5 == 1)
    {
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v6 + 360))(v6);
      v9 = [(objc_class *)v4 performSelector:sel_rendererWithDevice_options_ withObject:v8 withObject:0];
    }

    else
    {
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v6 + 360))(v6);
      v9 = [(objc_class *)v4 performSelector:sel_rendererWithContext_options_ withObject:v8 withObject:0];
    }

    v10 = *(a1 + 560);
    *(a1 + 560) = v9;

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    [*(a1 + 560) setScene:*(a1 + 584)];
    v11 = [*(a1 + 560) pointOfView];
    [v11 position];
    *(a1 + 568) = v12;
    *(a1 + 572) = v13;
    *(a1 + 576) = v14;

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void sub_21C45E320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

BOOL SKC3DNode::getNeedsCustomRenderOps(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 580);
  if ((v2 & 0x200) == 0)
  {
    SKC3DNode::ensureRenderer(a1, a2);
  }

  return (v2 & 0x200) == 0;
}

double SKC3DNode::getBoundingBox(float32x4_t *this)
{
  (*(this->i64[0] + 104))(this);
  v6 = 0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = this[21];
  v7.i64[0] = vmulq_f32(vsubq_f32(v7, this[22]), v8).u64[0];
  v9 = *algn_21C4B92D0;
  v7.i64[1] = *(&SKCBoundingBoxEmpty + 1);
  *&v9 = 0.5 * v8.f32[0];
  v10 = vmuls_lane_f32(0.5, *v8.f32, 1);
  v11 = xmmword_21C4B92E0;
  *(&v11 + 1) = v10;
  v13[0] = v7;
  v13[1] = v9;
  v13[2] = v11;
  v13[3] = unk_21C4B92F0;
  do
  {
    *(&v14 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(v13[v6])), v3, *&v13[v6], 1), v4, v13[v6], 2), v5, v13[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return *&v14;
}

void SKC3DNode::subclassRecomputeFlags(id *this)
{
  if ((*(this + 172) & 1) == 0)
  {
    if (this[73])
    {
      [this[70] nextFrameTime];
      if (v2 != INFINITY)
      {

        SKCNode::setFlags(this, 66, 1);
      }
    }
  }
}

void SKC3DNode::addRenderOps(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 581) & 2) == 0)
  {
    operator new();
  }
}

void sub_21C45E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(jet_context *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *jet_command_buffer::custom_block(uint64_t a1, uint64_t a2)
{
  v7 = 13;
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 24))
  {
    v5 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v7);
  }

  else
  {
    *v4 = &unk_282E15828;
    *(v4 + 8) = 13;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    *(v4 + 64) = 0;
    v5 = v4 + 192;
    *(v4 + 96) = 0;
  }

  *(a1 + 16) = v5;
  return std::function<void ()(jet_context *)>::operator=((v5 - 152), a2);
}

void SKC3DNode::renderCallback(id *a1, jet_context_OpenGL *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, double a7, float32x2_t a8)
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = a1[70];
  if (v9)
  {
    [v9 setPlaying:*(a1 + 616)];
    [a1[70] setLoops:*(a1 + 617)];
    [a1[70] setSceneTime:*(a1 + 74)];
    [a1[70] setPointOfView:a1[76]];
    [a1[70] setAutoenablesDefaultLighting:*(a1 + 618)];
    *v12.i64 = (*(*a1 + 15))(a1);
    v50 = v13;
    v51 = v12;
    v52 = v15;
    v53 = v14;
    v62.columns[0] = v12;
    v62.columns[1] = v13;
    v62.columns[2] = v14;
    v62.columns[3] = v15;
    (*(*a1 + 14))(a1);
    v20 = 0;
    params.columns[0] = v51;
    params.columns[1] = v50;
    params.columns[2] = v53;
    params.columns[3] = v52;
    do
    {
      v63.columns[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*&params.columns[v20])), v17, *params.columns[v20].f32, 1), v18, params.columns[v20], 2), v19, params.columns[v20], 3);
      ++v20;
    }

    while (v20 != 4);
    v21 = 0;
    params = v63;
    do
    {
      v63.columns[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*&params.columns[v21])), a4, *params.columns[v21].f32, 1), a5, params.columns[v21], 2), a6, params.columns[v21], 3);
      ++v21;
    }

    while (v21 != 4);
    v62 = v63;
    AABB = SKCBoundingBoxGetAABB(&v62);
    (*(*a2 + 136))(a2);
    __asm { FMOV            V0.2S, #1.0 }

    v56 = vmul_f32(vmul_f32(vadd_f32(*AABB.f32, _D0), a8), 0x3F0000003F000000);
    v58 = vmul_f32(vmul_f32(*&vextq_s8(AABB, AABB, 8uLL), a8), 0x3F0000003F000000);
    if (v27 == 1)
    {
      v61 = (*(*a2 + 384))(a2);
      v28 = (*(*a2 + 392))(a2);
      v29 = [v28 colorAttachments];
      v30 = [v29 objectAtIndexedSubscript:0];
      v31 = [v30 texture];
      v32 = [v31 height];

      v63.columns[0] = 0uLL;
      v33 = [v28 colorAttachments];
      v34 = [v33 objectAtIndexedSubscript:0];
      v35 = [v34 texture];
      v63.columns[1].i64[0] = [v35 width];
      v36 = [v28 colorAttachments];
      v37 = [v36 objectAtIndexedSubscript:0];
      v38 = [v37 texture];
      v63.columns[1].i64[1] = [v38 height];
      [v61 setScissorRect:&v63];

      v39 = a1[70];
      v40 = CACurrentMediaTime();
      v41 = (*(*a2 + 384))(a2);
      v42 = (*(*a2 + 368))(a2);
      [v39 renderAtTime:v41 viewport:v28 encoder:v42 passDescriptor:v40 commandQueue:{v56.f32[0], ((v32 - v56.f32[1]) - v58.f32[1]), v58.f32[0], v58.f32[1]}];

      v63.columns[0] = 0uLL;
      v43 = [v28 colorAttachments];
      v44 = [v43 objectAtIndexedSubscript:0];
      v45 = [v44 texture];
      *v63.columns[1].i64 = [v45 width];
      v46 = [v28 colorAttachments];
      v47 = [v46 objectAtIndexedSubscript:0];
      v48 = [v47 texture];
      *&v63.columns[1].i64[1] = [v48 height];
      v63.columns[2] = 0uLL;
      [v61 setViewport:&v63];

      [v61 setFrontFacingWinding:0];
      [v61 setCullMode:0];
    }

    else
    {
      v49 = (*(*a2 + 360))(a2);
      glContextUse::glContextUse(&v63, v49);

      glGetIntegerv(0xBA2u, &params);
      glViewport(v56.f32[0], v56.f32[1], v58.f32[0], v58.f32[1]);
      glDisable(0xC11u);
      [a1[70] render];
      jet_context_OpenGL::synchronize_OpenGL_state(a2);
      glViewport(params.columns[0].i32[0], params.columns[0].i32[1], params.columns[0].i32[2], params.columns[0].i32[3]);
      glContextUse::~glContextUse(&v63);
    }
  }
}

__n128 std::__function::__func<SKC3DNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::$_0,std::allocator<SKC3DNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::$_0>,void ()(jet_context *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_282E171D8;
  v2 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v2;
  result = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  *(a2 + 48) = result;
  *(a2 + 64) = v4;
  return result;
}

uint64_t std::__function::__func<SKC3DNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::$_0,std::allocator<SKC3DNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::$_0>,void ()(jet_context *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

void SKCVideoNode::SKCVideoNode(SKCVideoNode *this)
{
  SKCNode::SKCNode(this);
  *v2 = &unk_282E17268;
  *(v2 + 560) = 1;
  *(this + 71) = objc_alloc_init(MEMORY[0x277CE6598]);
  *(this + 72) = 0;
  *(this + 146) = 1065353216;
  *(this + 588) = 1;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 82) = 0;
  *(this + 83) = this + 664;
  *(this + 84) = this + 664;
  *(this + 85) = 0;
  *(this + 87) = 0;
  *(this + 86) = 0;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("frameUpdateQueue", v3);
  v5 = *(this + 87);
  *(this + 87) = v4;

  std::list<__CVBuffer *>::list(v6, 2);
  std::list<__CVBuffer *>::__move_assign(this + 83, v6);
  std::__list_imp<SKCRenderSortInfo *>::clear(v6);
  *(this + 86) = *(this + 84);
}

void sub_21C4606BC(_Unwind_Exception *a1)
{
  std::__list_imp<SKCRenderSortInfo *>::clear(v2);

  v4 = *(v1 + 616);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 600);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SKCNode::~SKCNode(v1);
  _Unwind_Resume(a1);
}

void SKCVideoNode::setPlaybackRate(SKCVideoNode *this, float a2)
{
  *(this + 146) = a2;
  v3 = *(this + 71);
  if (v3 && (*(this + 172) & 1) == 0)
  {
    [v3 setRate:?];
    SKCNode::setDirty(this);

    SKCNode::recomputeFlags(this, 1);
  }
}

double SKCVideoNode::getBatchInfo@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *&result = 0x300000004;
  *(a1 + 4) = 0x300000004;
  *a1 = 1;
  return result;
}

double SKCVideoNode::getBoundingBox(float32x4_t *this)
{
  (*(this->i64[0] + 104))(this);
  v6 = 0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = this[21];
  v7.i64[0] = vmulq_f32(vsubq_f32(v7, this[22]), v8).u64[0];
  v9 = *algn_21C4B92D0;
  v7.i64[1] = *(&SKCBoundingBoxEmpty + 1);
  *&v9 = 0.5 * v8.f32[0];
  v10 = vmuls_lane_f32(0.5, *v8.f32, 1);
  v11 = xmmword_21C4B92E0;
  *(&v11 + 1) = v10;
  v13[0] = v7;
  v13[1] = v9;
  v13[2] = v11;
  v13[3] = unk_21C4B92F0;
  do
  {
    *(&v14 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(v13[v6])), v3, *&v13[v6], 1), v4, v13[v6], 2), v5, v13[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return *&v14;
}

void SKCVideoNode::addRenderOps(uint64_t a1, float32x4_t *a2, uint64_t *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 696);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN12SKCVideoNode12addRenderOpsEP13SKCRenderInfoRKNSt3__110shared_ptrI18jet_command_bufferEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(v6, block);
  if (*(a1 + 592))
  {
    v7 = 0;
    __asm { FMOV            V2.4S, #1.0 }

    v13 = *(a1 + 336);
    v14 = *(a1 + 352);
    v13.i64[1] = *(&_Q2 + 1);
    v14.i64[1] = 0;
    v44[0] = xmmword_21C4B9840;
    v44[1] = unk_21C4B9850;
    v44[2] = xmmword_21C4B9860;
    v44[3] = unk_21C4B9870;
    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    do
    {
      v19 = vmulq_f32(v13, vsubq_f32(v44[v7], v14));
      v44[v7++] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v19.f32[0]), v16, *v19.f32, 1), v17, v19, 2), v18, v19, 3);
    }

    while (v7 != 4);
    v20 = 0;
    v21 = a2->i32[0] >> 2;
    v22 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(*(a1 + 304), fminf(fmaxf(vmuls_lane_f32(a2[6].f32[0], *(a1 + 304), 3) * *(a1 + 324), 0.0), 1.0)), vdupq_n_s32(0x437F0000u))));
    v23 = vuzp1_s8(v22, v22).u32[0];
    do
    {
      *(a2[1].i64[1] + 16 * (v20 + a2->i32[0])) = v44[v20];
      *(a2[1].i64[0] + 8 * (v20 + a2->i32[0])) = qword_21C4B9820[v20];
      *(a2->i64[1] + 4 * (v20++ + a2->i32[0])) = v23;
    }

    while (v20 != 4);
    v24 = *a3;
    if (*(a1 + 608))
    {
      v25 = a2[17].i64[1];
      LODWORD(__p.__r_.__value_.__l.__data_) = 31;
      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24))
      {
        v27 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v24 + 8, &__p);
      }

      else
      {
        *v26 = &unk_282E15828;
        *(v26 + 8) = 31;
        *(v26 + 24) = 0;
        *(v26 + 32) = 0;
        *(v26 + 16) = 0;
        *(v26 + 64) = 0;
        v27 = v26 + 192;
        *(v26 + 96) = 0;
      }

      *(v24 + 16) = v27;
      *(v27 - 80) = v25;
      *(v27 - 64) = xmmword_21C4B8530;
      *(v27 - 48) = 0x30000000FLL;
      v31 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
      jet_command_buffer::set_fragment_texture(v31, &__p, *(a1 + 608));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v28 = a2[10].i64[1];
      LODWORD(__p.__r_.__value_.__l.__data_) = 31;
      v29 = *(v24 + 16);
      if (v29 >= *(v24 + 24))
      {
        v30 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v24 + 8, &__p);
      }

      else
      {
        *v29 = &unk_282E15828;
        *(v29 + 8) = 31;
        *(v29 + 24) = 0;
        *(v29 + 32) = 0;
        *(v29 + 16) = 0;
        *(v29 + 64) = 0;
        v30 = v29 + 192;
        *(v29 + 96) = 0;
      }

      *(v24 + 16) = v30;
      *(v30 - 80) = v28;
      *(v30 - 64) = xmmword_21C4B8530;
      *(v30 - 48) = 0x30000000FLL;
    }

    v32 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
    jet_command_buffer::set_vertex_buffer(v32, &__p, a2[20].i64[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v33 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_color");
    jet_command_buffer::set_vertex_buffer(v33, &__p, a2[21].i64[0]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v34 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_tex_coord");
    jet_command_buffer::set_vertex_buffer(v34, &__p, a2[21].i64[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v35 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_texture(v35, &__p, *(a1 + 592));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v36 = *a3;
    v37 = a2[25].i64[0];
    LODWORD(__p.__r_.__value_.__l.__data_) = 4;
    v38 = *(v36 + 16);
    if (v38 >= *(v36 + 24))
    {
      v39 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v36 + 8, &__p);
    }

    else
    {
      *v38 = &unk_282E15828;
      *(v38 + 8) = 4;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0;
      *(v38 + 16) = 0;
      *(v38 + 64) = 0;
      v39 = v38 + 192;
      *(v38 + 96) = 0;
    }

    *(v36 + 16) = v39;
    *(v39 - 80) = v37;
    *(v39 - 64) = 3;
    *(v39 - 60) = 6 * v21;
    *(v39 - 56) = 6;
    v40 = a2[41].i64[1];
    v41 = 6 * v21 + 6;
    if (v40[43] > v41)
    {
      v41 = v40[43];
    }

    v40[43] = v41;
    ++v40[41];
    ++v40[37];
    a2->i32[0] += 4;
  }
}

void sub_21C460D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SKCVideoNode::updateVideoFrame(SKCVideoNode *this, SKCRenderInfo *a2)
{
  SKCRenderer::getBackingContext(*(a2 + 13), &v8);
  *(this + 588) = (*(*v8 + 136))(v8) == 1;
  v3 = *(this + 82);
  if (v3)
  {
    *(this + 82) = 0;
    v4 = *(*(this + 86) + 8);
    *(this + 86) = v4;
    if (v4 == (this + 664))
    {
      v4 = *(this + 84);
      *(this + 86) = v4;
    }

    v5 = v4[2];
    if (v5)
    {
      CVPixelBufferRelease(v5);
      v4 = *(this + 86);
    }

    v4[2] = v3;
    v6 = v9;
    v7[0] = v8;
    v7[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SKCVideoNode::updateVideoFrame_api(this, v3, v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_21C460E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SKCVideoNode::updateVideoFrame_api(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  if (*(a1 + 560) == 1)
  {
    *&v9 = Width;
    *(&v9 + 1) = Height;
    v31 = v9;
    SKCNode::setSize(a1, &v31);
  }

  if (*a3)
  {
    v10 = __dynamic_cast(*a3, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
    if (v10)
    {
      v11 = v10;
      v12 = *(a3 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = (a1 + 640);
      v14 = *(a1 + 640);
      v15 = MEMORY[0x277CBECE8];
      if (v14 || ((*(*v11 + 360))(v11), v16 = objc_claimAutoreleasedReturnValue(), CVMetalTextureCacheCreate(*v15, 0, v16, 0, (a1 + 640)), v16, (v14 = *v13) != 0))
      {
        CVMetalTextureCacheFlush(v14, 0);
        if (PlaneCount)
        {
          v17 = MTLPixelFormatR8Unorm;
        }

        else
        {
          v17 = MTLPixelFormatBGRA8Unorm;
        }

        textureOut = 0;
        image = 0;
        v18 = *v15;
        if (!CVMetalTextureCacheCreateTextureFromImage(*v15, *v13, pixelBuffer, 0, v17, Width, Height, 0, &image))
        {
          if (*(a1 + 592))
          {
            v19 = *(a1 + 600);
            *(a1 + 592) = 0u;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }
          }

          v20 = *(a1 + 624);
          if (v20)
          {
            CFRelease(v20);
          }

          v21 = image;
          *(a1 + 624) = image;
          v22 = CVMetalTextureGetTexture(v21);
          v23 = (*(*v11 + 408))(v11, v22);
          std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v31, v23);
        }

        if (PlaneCount && !CVMetalTextureCacheCreateTextureFromImage(v18, *v13, pixelBuffer, 0, MTLPixelFormatRG8Unorm, Width >> 1, Height >> 1, 1uLL, &textureOut))
        {
          if (*(a1 + 608))
          {
            v24 = *(a1 + 616);
            *(a1 + 608) = 0u;
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }
          }

          v25 = *(a1 + 632);
          if (v25)
          {
            CFRelease(v25);
          }

          v26 = textureOut;
          *(a1 + 632) = textureOut;
          v27 = CVMetalTextureGetTexture(v26);
          v28 = (*(*v11 + 408))(v11, v27);
          std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v31, v28);
        }
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }
}

void sub_21C461200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SKCVideoNode::setNextVideoFrame(SKCVideoNode *this, CVPixelBufferRef texture)
{
  v3 = *(this + 82);
  if (v3 != texture)
  {
    if (v3)
    {
      CVPixelBufferRelease(v3);
      *(this + 82) = 0;
    }

    if (texture)
    {
      *(this + 82) = CVPixelBufferRetain(texture);

      SKCNode::setFlags(this, 66, 1);
    }
  }
}

void SKCVideoNode::checkForVideoFrame(SKCVideoNode *this, double a2)
{
  v4 = *(this + 71);
  if (v4)
  {
    v5 = [v4 currentItem];
    v6 = *(this + 72);
    if (v6 != v5)
    {
      if (*(this + 81))
      {
        [v6 removeOutput:?];
        v7 = *(this + 81);
        *(this + 81) = 0;
      }

      objc_storeStrong(this + 72, v5);
    }

    if (v5 && !*(this + 81))
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      [v8 setObject:&unk_282E2D528 forKey:*MEMORY[0x277CC4E30]];
      if (*(this + 588) == 1)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v8 setObject:v9 forKey:@"MetalCompatibility"];
      }

      else
      {
        v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v8 setObject:v9 forKey:@"OpenGLESCompatibility"];
      }

      v10 = [objc_alloc(MEMORY[0x277CE65D0]) initWithPixelBufferAttributes:v8];
      v11 = *(this + 81);
      *(this + 81) = v10;

      [v5 addOutput:*(this + 81)];
    }
  }

  v12 = *(this + 81);
  if (v12)
  {
    v18 = 0uLL;
    v19 = 0;
    [v12 itemTimeForHostTime:a2];
    v13 = *(this + 81);
    v16 = v18;
    v17 = v19;
    if ([v13 hasNewPixelBufferForItemTime:&v16])
    {
      if (!*(this + 82))
      {
        v14 = *(this + 81);
        v16 = v18;
        v17 = v19;
        v15 = [v14 copyPixelBufferForItemTime:&v16 itemTimeForDisplay:0];
        if (v15)
        {
          *(this + 82) = v15;
          SKCNode::setFlags(this, 66, 1);
        }
      }
    }
  }
}

void SKCVideoNode::update(NSObject **this, double a2, float a3)
{
  SKCNode::update(this, a2, 1.0);
  v5 = this[87];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN12SKCVideoNode6updateEdf_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = this;
  *&v6[5] = a2;
  dispatch_async(v5, v6);
}

BOOL SKCVideoNode::getNeedsUpdate(SKCVideoNode *this)
{
  if (SKCNode::getNeedsUpdate(this))
  {
    return 1;
  }

  if (*(this + 172))
  {
    return 0;
  }

  return (*(this + 171) & 0x60) != 0;
}

void SKCVideoNode::loadAVAsset(SKCVideoNode *this, AVAsset *a2)
{
  v2 = *(this + 71);
  v3 = [MEMORY[0x277CE65B0] playerItemWithAsset:a2];
  [v2 replaceCurrentItemWithPlayerItem:?];
}

void SKCVideoNode::~SKCVideoNode(SKCVideoNode *this)
{
  *this = &unk_282E17268;
  [*(this + 71) setRate:0.0];
  v2 = *(this + 71);
  *(this + 71) = 0;

  v3 = *(this + 87);
  *(this + 87) = 0;

  v4 = *(this + 78);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 79);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 80);
  if (v6)
  {
    CVMetalTextureCacheFlush(v6, 0);
    CFRelease(*(this + 80));
  }

  for (i = *(this + 84); i != (this + 664); i = *(i + 8))
  {
    CVPixelBufferRelease(*(i + 16));
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 83);
  v8 = *(this + 82);
  if (v8)
  {
    CVPixelBufferRelease(v8);
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 83);
  v9 = *(this + 77);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 75);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCVideoNode::~SKCVideoNode(this);

  JUMPOUT(0x21CF0A160);
}

void *std::list<__CVBuffer *>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void *std::list<__CVBuffer *>::__move_assign(uint64_t *a1, void *a2)
{
  result = std::__list_imp<SKCRenderSortInfo *>::clear(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

uint64_t _SKStartCollectingPerformanceStatisticsForPid(int a1)
{
  v18 = a1;
  v1 = CSSymbolicatorCreateWithPid();
  v3 = v2;
  if (CSIsNull())
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x4012000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = "";
  v16 = 0;
  v17 = 0;
  CSSymbolicatorForeachSymbolWithMangledNameAtTime();
  v5 = v11[6];
  v6 = v11[7];
  if (CSIsNull() || (CSSymbolicatorGetTask(), (mapped_memory_cache_for_task = create_mapped_memory_cache_for_task()) == 0))
  {
    CSRelease();
    v4 = 0;
  }

  else
  {
    if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      _SKStartCollectingPerformanceStatisticsForPid_cold_1();
    }

    v19 = &v18;
    v8 = std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(qword_27CDDD170, &v18);
    v8[3] = v1;
    v8[4] = v3;
    v8[5] = v5;
    v8[6] = v6;
    v4 = 1;
    v8[7] = mapped_memory_cache_for_task;
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_21C462F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t _SKStopCollectingPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    _SKStopCollectingPerformanceStatisticsForPid_cold_1();
  }

  std::unordered_map<int,SKPerformanceDataMapping>::unordered_map(v3, qword_27CDDD170);
  v1 = std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::find<int>(v3, &v4);
  if (v1)
  {
    destroy_mapped_memory_cache();
    v1[5] = 0;
    v1[6] = 0;
    v1[7] = 0;
    CSRelease();
    v1[3] = 0;
    v1[4] = 0;
    std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::erase(v3, v1);
  }

  std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::~__hash_table(v3);
  return 1;
}

uint64_t *_SKGetPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    _SKStopCollectingPerformanceStatisticsForPid_cold_1();
  }

  std::unordered_map<int,SKPerformanceDataMapping>::unordered_map(v3, qword_27CDDD170);
  v1 = std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::find<int>(v3, &v4);
  if (v1)
  {
    if (CSSymbolGetRange())
    {
      clear_mapped_memory();
      v1 = 0;
      mapped_memory_read();
    }

    else
    {
      v1 = 0;
    }
  }

  std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::~__hash_table(v3);

  return v1;
}

void sub_21C4634D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = v5;

  std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void _perfUpdateStatistics(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1 && a2)
  {
    v6 = *(a2 + 40);
    v7 = 1;
    if (v6 >= 2)
    {
      v8 = *(a2 + 8) - *(a2 + 24);
      if (v8 > 0.0)
      {
        v7 = ((v6 - 1) / v8);
      }
    }

    v9 = (byte_27CDDD331 & 1) == 0;
    if (qword_27CDDD138)
    {
      v10 = *&dword_27CDDD148 / qword_27CDDD138;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 40);
    _skPerformanceData[0] = 1;
    v13 = *(a1 + 156);
    v14 = &_skPerformanceData[48 * ((byte_27CDDD331 & 1) == 0)];
    *(v14 + 1) = v13;
    *(v14 + 2) = v7;
    v15 = (v14 + 4);
    v35 = v5;
    v16 = [v5 preferredFramesPerSecond];
    v17 = v11 / v12 * 1000.0;
    v15[11] = v16;
    v18 = v10 + v17;
    v15[2] = v18;
    v19 = qword_27CDDD0C0;
    v20 = 0.0;
    v21 = 0.0;
    if (qword_27CDDD0C0)
    {
      v21 = *&dword_27CDDD0D0 / qword_27CDDD0C0;
    }

    v15[4] = v21;
    v22 = qword_27CDDD0D8;
    v5 = v35;
    if (qword_27CDDD0D8)
    {
      v20 = *&dword_27CDDD0E8 / qword_27CDDD0D8;
    }

    v15[5] = v20;
    v23 = 0.0;
    v24 = 0.0;
    if (qword_27CDDD120)
    {
      v24 = *&dword_27CDDD130 / qword_27CDDD120;
    }

    v15[7] = v24;
    v25 = qword_27CDDD0F0;
    if (qword_27CDDD0F0)
    {
      v23 = *&dword_27CDDD100 / qword_27CDDD0F0;
    }

    v26 = v23 - v24;
    v15[6] = v26;
    v27 = 0.0;
    v28 = 0.0;
    if (qword_27CDDD108)
    {
      v28 = *&dword_27CDDD118 / qword_27CDDD108;
    }

    v15[8] = v28;
    if (_performanceFrame)
    {
      v27 = *&dword_27CDDD0B8 / _performanceFrame;
    }

    v29 = 0.0;
    v30 = 0.0;
    if (v25)
    {
      v30 = *&dword_27CDDD100 / v25;
    }

    if (v19)
    {
      v29 = *&dword_27CDDD0D0 / v19;
    }

    v31 = v30 + v29;
    v32 = 0.0;
    v33 = 0.0;
    if (v22)
    {
      v33 = *&dword_27CDDD0E8 / v22;
    }

    v34 = v27 - (v31 + v33);
    v15[3] = v34;
    v15[9] = v10;
    if (qword_27CDDD150)
    {
      v32 = *&dword_27CDDD160 / qword_27CDDD150;
    }

    v15[10] = v32;
    if ((v18 - (v20 + (v26 + (v21 + (v28 + v34))))) >= 0.0)
    {
      byte_27CDDD331 = v9;
    }

    _performanceFrame = 0;
    dword_27CDDD0B8 = 0;
    qword_27CDDD0C0 = 0;
    dword_27CDDD0D0 = 0;
    qword_27CDDD0D8 = 0;
    dword_27CDDD0E8 = 0;
    qword_27CDDD0F0 = 0;
    dword_27CDDD100 = 0;
    qword_27CDDD120 = 0;
    dword_27CDDD130 = 0;
    qword_27CDDD108 = 0;
    dword_27CDDD118 = 0;
    qword_27CDDD138 = 0;
    dword_27CDDD148 = 0;
    qword_27CDDD150 = 0;
    dword_27CDDD160 = 0;
  }
}

float _perfEndClientUpdate(double a1)
{
  v1 = (a1 - *&qword_27CDDD0B0) * 1000.0;
  result = *&dword_27CDDD0B8 + fmaxf(v1, 0.0);
  dword_27CDDD0B8 = LODWORD(result);
  ++_performanceFrame;
  return result;
}

float _perfEndPhysics(double a1)
{
  v1 = (a1 - *&qword_27CDDD0C8) * 1000.0;
  result = *&dword_27CDDD0D0 + fmaxf(v1, 0.0);
  dword_27CDDD0D0 = LODWORD(result);
  ++qword_27CDDD0C0;
  return result;
}

float _perfEndConstraints(double a1)
{
  v1 = (a1 - *&qword_27CDDD0E0) * 1000.0;
  result = *&dword_27CDDD0E8 + fmaxf(v1, 0.0);
  dword_27CDDD0E8 = LODWORD(result);
  ++qword_27CDDD0D8;
  return result;
}

float _perfEndActions(double a1)
{
  v1 = (a1 - *&qword_27CDDD0F8) * 1000.0;
  result = *&dword_27CDDD100 + fmaxf(v1, 0.0);
  dword_27CDDD100 = LODWORD(result);
  ++qword_27CDDD0F0;
  ++qword_27CDDD120;
  return result;
}

float _perfEndEmitters(double a1)
{
  v1 = (a1 - *&qword_27CDDD128) * 1000.0;
  result = *&dword_27CDDD130 + fmaxf(v1, 0.0);
  dword_27CDDD130 = LODWORD(result);
  return result;
}