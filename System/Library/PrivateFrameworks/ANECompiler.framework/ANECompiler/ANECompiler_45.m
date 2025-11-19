uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<operations_research::sat::DiffnCtEvent>,operations_research::sat::DiffnCtEvent*,operations_research::sat::DiffnCtEvent*,operations_research::sat::DiffnCtEvent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v8 = *(v5 + 16);
      v9 = *(v5 + 32);
      v10 = *(v5 + 48);
      *(a4 + 64) = *(v5 + 64);
      *(a4 + 32) = v9;
      *(a4 + 48) = v10;
      *(a4 + 16) = v8;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      v12 = *(v5 + 72);
      v11 = *(v5 + 80);
      if (v11 != v12)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v6 = *(v5 + 96);
      v7 = *(v5 + 112);
      *(a4 + 127) = *(v5 + 127);
      *(a4 + 96) = v6;
      *(a4 + 112) = v7;
      v5 += 136;
      a4 += 136;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CB6F0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 80) = v12;
    operator delete(v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnCtEvent>,operations_research::sat::DiffnCtEvent*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnCtEvent>,operations_research::sat::DiffnCtEvent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 136;
    }
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::DiffnCtEvent>::__emplace_back_slow_path<operations_research::sat::DiffnCtEvent const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v4 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v6;
  v7 = *(a2 + 72);
  *(v5 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v8;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v9 = *(a2 + 80);
  if (v9 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v10;
  *(v5 + 127) = *(a2 + 127);
  v11 = *a1;
  v12 = a1[1];
  v13 = v5 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v5 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v18 = v14[8];
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v17;
      *(v15 + 16) = v16;
      *(v15 + 64) = v18;
      *(v15 + 72) = 0;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 72) = *(v14 + 9);
      *(v15 + 88) = v14[11];
      v14[9] = 0;
      v14[10] = 0;
      v14[11] = 0;
      v19 = *(v14 + 6);
      v20 = *(v14 + 7);
      *(v15 + 127) = *(v14 + 127);
      *(v15 + 96) = v19;
      *(v15 + 112) = v20;
      v14 += 17;
      v15 += 136;
    }

    while (v14 != v12);
    do
    {
      v21 = v11[9];
      if (v21)
      {
        v11[10] = v21;
        operator delete(v21);
      }

      v11 += 17;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v5 + 136;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v5 + 136;
}

void sub_23CB6F37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  std::__split_buffer<operations_research::sat::DiffnCtEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::DiffnCtEvent>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 136;
        *(a1 + 16) = v2 - 136;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 136;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v178 = (a2 - 272);
    v179 = (a2 - 136);
    v177 = (a2 - 408);
    v7 = a1;
    v185 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0xF0F0F0F0F0F0F0F1 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), v179);
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 136, a1 + 272, v179);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 136, a1 + 272, a1 + 408, v179);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 16) < *(a1 + 120))
              {
                v248 = *a1;
                v280 = *(a1 + 64);
                v264 = *(a1 + 32);
                v272 = *(a1 + 48);
                v256 = *(a1 + 16);
                v79 = *(a1 + 72);
                v80 = *(a1 + 88);
                *(a1 + 72) = 0;
                *(a1 + 80) = 0;
                *(a1 + 88) = 0;
                v211 = *(a1 + 96);
                *v219 = *(a1 + 112);
                *&v219[15] = *(a1 + 127);
                v81 = *(a2 - 104);
                v82 = *(a2 - 88);
                v83 = *(a2 - 120);
                *(a1 + 64) = *(a2 - 72);
                *(a1 + 32) = v81;
                *(a1 + 48) = v82;
                *(a1 + 16) = v83;
                *a1 = *(a2 - 136);
                *(a1 + 72) = *(a2 - 64);
                *(a1 + 88) = *(a2 - 48);
                *(a2 - 56) = 0;
                *(a2 - 48) = 0;
                *(a2 - 64) = 0;
                v84 = *(a2 - 40);
                v85 = *(a2 - 24);
                *(a1 + 127) = *(a2 - 9);
                *(a1 + 96) = v84;
                *(a1 + 112) = v85;
                *(a2 - 136) = v248;
                *(a2 - 120) = v256;
                *(a2 - 72) = v280;
                *(a2 - 88) = v272;
                *(a2 - 104) = v264;
                v86 = *(a2 - 64);
                if (v86)
                {
                  *(a2 - 56) = v86;
                  v190 = v79;
                  operator delete(v86);
                  v79 = v190;
                }

                *(a2 - 64) = v79;
                *(a2 - 48) = v80;
                *(a2 - 9) = *&v219[15];
                *(a2 - 40) = v211;
                *(a2 - 24) = *v219;
              }

              return;
            }
          }

          if (v8 <= 3263)
          {
            v87 = a1 + 136;
            v89 = a1 == a2 || v87 == a2;
            if (a4)
            {
              if (!v89)
              {
                v90 = 0;
                v91 = a1;
                do
                {
                  v92 = v87;
                  if (*(v91 + 256) < *(v91 + 120))
                  {
                    v249 = *v87;
                    v281 = *(v87 + 64);
                    v265 = *(v87 + 32);
                    v273 = *(v87 + 48);
                    v257 = *(v87 + 16);
                    v93 = *(v91 + 208);
                    v191 = *(v91 + 216);
                    *(v91 + 216) = 0;
                    *(v91 + 224) = 0;
                    *(v91 + 208) = 0;
                    v220 = *(v91 + 248);
                    v212 = *(v91 + 232);
                    v94 = *(v91 + 256);
                    v239 = *(v91 + 266);
                    v235 = *(v91 + 264);
                    v95 = v90;
                    while (1)
                    {
                      v96 = v95;
                      v97 = a1 + v95;
                      v98 = *(a1 + v95);
                      *(v97 + 152) = *(a1 + v95 + 16);
                      v99 = *(a1 + v95 + 48);
                      *(v97 + 168) = *(a1 + v95 + 32);
                      *(v97 + 184) = v99;
                      *(v97 + 200) = *(a1 + v95 + 64);
                      *(v97 + 136) = v98;
                      v100 = *(a1 + v95 + 208);
                      if (v100)
                      {
                        *(v97 + 216) = v100;
                        operator delete(v100);
                        *(v97 + 216) = 0;
                        *(v97 + 224) = 0;
                      }

                      *(v97 + 208) = *(v97 + 72);
                      *(v97 + 224) = *(v97 + 88);
                      *(v97 + 80) = 0;
                      *(v97 + 88) = 0;
                      *(v97 + 72) = 0;
                      v101 = *(v97 + 112);
                      *(v97 + 232) = *(v97 + 96);
                      *(v97 + 248) = v101;
                      *(v97 + 263) = *(v97 + 127);
                      if (!v96)
                      {
                        break;
                      }

                      v95 = v96 - 136;
                      if (v94 >= *(a1 + v96 - 16))
                      {
                        v102 = a1 + v96;
                        goto LABEL_103;
                      }
                    }

                    v102 = a1;
LABEL_103:
                    v103 = a1 + v96;
                    *v102 = v249;
                    *(v102 + 64) = v281;
                    *(v102 + 32) = v265;
                    *(v102 + 48) = v273;
                    *(v102 + 16) = v257;
                    v104 = *(v103 + 72);
                    if (v104)
                    {
                      *(v102 + 80) = v104;
                      operator delete(v104);
                      *(v103 + 80) = 0;
                      *(v103 + 88) = 0;
                    }

                    *(v103 + 72) = v93;
                    *(v102 + 80) = v191;
                    *(v103 + 112) = v220;
                    *(v103 + 96) = v212;
                    *(v102 + 120) = v94;
                    *(v102 + 128) = v235;
                    *(v102 + 130) = v239;
                    a2 = v185;
                  }

                  v87 = v92 + 136;
                  v90 += 136;
                  v91 = v92;
                }

                while (v92 + 136 != a2);
              }
            }

            else if (!v89)
            {
              do
              {
                v167 = v87;
                if (*(a1 + 256) < *(a1 + 120))
                {
                  v252 = *v87;
                  v284 = *(v87 + 64);
                  v268 = *(v87 + 32);
                  v276 = *(v87 + 48);
                  v260 = *(v87 + 16);
                  v195 = *(a1 + 208);
                  v168 = *(a1 + 224);
                  *(a1 + 216) = 0;
                  *(a1 + 224) = 0;
                  *(a1 + 208) = 0;
                  v223 = *(a1 + 248);
                  v215 = *(a1 + 232);
                  v169 = *(a1 + 256);
                  v241 = *(a1 + 266);
                  v238 = *(a1 + 264);
                  v170 = v87;
                  do
                  {
                    v173 = *(v170 - 120);
                    v174 = *(v170 - 88);
                    *(v170 + 32) = *(v170 - 104);
                    *(v170 + 48) = v174;
                    *(v170 + 64) = *(v170 - 72);
                    *v170 = *(v170 - 136);
                    *(v170 + 16) = v173;
                    v175 = *(v170 + 72);
                    if (v175)
                    {
                      *(v170 + 80) = v175;
                      operator delete(v175);
                      *(v170 + 80) = 0;
                      *(v170 + 88) = 0;
                    }

                    *(v170 + 72) = *(v170 - 64);
                    *(v170 + 88) = *(v170 - 48);
                    *(v170 - 56) = 0;
                    *(v170 - 48) = 0;
                    *(v170 - 64) = 0;
                    v171 = *(v170 - 24);
                    *(v170 + 96) = *(v170 - 40);
                    *(v170 + 112) = v171;
                    *(v170 + 127) = *(v170 - 9);
                    v172 = *(v170 - 152);
                    v170 -= 136;
                  }

                  while (v169 < v172);
                  *v170 = v252;
                  *(v170 + 64) = v284;
                  *(v170 + 32) = v268;
                  *(v170 + 48) = v276;
                  *(v170 + 16) = v260;
                  v176 = *(v170 + 72);
                  if (v176)
                  {
                    *(v170 + 80) = v176;
                    operator delete(v176);
                  }

                  *(v170 + 72) = v195;
                  *(v170 + 88) = v168;
                  *(v170 + 112) = v223;
                  *(v170 + 96) = v215;
                  *(v170 + 120) = v169;
                  *(v170 + 130) = v241;
                  *(v170 + 128) = v238;
                }

                v87 = v167 + 136;
                a1 = v167;
              }

              while (v167 + 136 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v105 = v10 >> 1;
              v106 = v10 >> 1;
              do
              {
                v107 = v106;
                v108 = 17 * v106;
                v109 = 0xF0F0F0F0F0F0F0F1 * ((136 * v106) >> 3);
                if (v105 >= v109)
                {
                  v110 = 2 * v109;
                  v111 = (2 * v109) | 1;
                  v112 = a1 + 136 * v111;
                  v113 = v110 + 2;
                  if (v113 < v9 && *(v112 + 120) < *(v112 + 256))
                  {
                    v112 += 136;
                    v111 = v113;
                  }

                  v114 = a1 + 8 * v108;
                  v115 = *(v114 + 120);
                  if (*(v112 + 120) >= v115)
                  {
                    v250 = *v114;
                    v282 = *(v114 + 64);
                    v266 = *(v114 + 32);
                    v274 = *(v114 + 48);
                    v258 = *(v114 + 16);
                    v192 = *(v114 + 72);
                    v183 = *(v114 + 88);
                    *(v114 + 80) = 0;
                    *(v114 + 88) = 0;
                    *(v114 + 72) = 0;
                    v221 = *(v114 + 112);
                    v213 = *(v114 + 96);
                    v240 = *(v114 + 130);
                    v236 = *(v114 + 128);
                    do
                    {
                      v116 = v114;
                      v114 = v112;
                      *v116 = *v112;
                      v117 = *(v112 + 16);
                      v118 = *(v112 + 32);
                      v119 = *(v112 + 48);
                      *(v116 + 64) = *(v112 + 64);
                      *(v116 + 32) = v118;
                      *(v116 + 48) = v119;
                      *(v116 + 16) = v117;
                      v120 = *(v116 + 72);
                      if (v120)
                      {
                        *(v116 + 80) = v120;
                        operator delete(v120);
                        *(v116 + 72) = 0;
                        *(v116 + 80) = 0;
                        *(v116 + 88) = 0;
                      }

                      *(v116 + 72) = *(v114 + 72);
                      *(v116 + 88) = *(v114 + 88);
                      *(v114 + 72) = 0;
                      *(v114 + 80) = 0;
                      *(v114 + 88) = 0;
                      v121 = *(v114 + 96);
                      v122 = *(v114 + 112);
                      *(v116 + 127) = *(v114 + 127);
                      *(v116 + 96) = v121;
                      *(v116 + 112) = v122;
                      if (v105 < v111)
                      {
                        break;
                      }

                      v123 = 2 * v111;
                      v111 = (2 * v111) | 1;
                      v112 = a1 + 136 * v111;
                      v124 = v123 + 2;
                      if (v124 < v9 && *(v112 + 120) < *(v112 + 256))
                      {
                        v112 += 136;
                        v111 = v124;
                      }
                    }

                    while (*(v112 + 120) >= v115);
                    *v114 = v250;
                    *(v114 + 64) = v282;
                    *(v114 + 32) = v266;
                    *(v114 + 48) = v274;
                    *(v114 + 16) = v258;
                    v125 = *(v114 + 72);
                    if (v125)
                    {
                      *(v114 + 80) = v125;
                      operator delete(v125);
                    }

                    *(v114 + 72) = v192;
                    *(v114 + 88) = v183;
                    *(v114 + 96) = v213;
                    *(v114 + 112) = v221;
                    *(v114 + 120) = v115;
                    *(v114 + 128) = v236;
                    *(v114 + 130) = v240;
                  }
                }

                v106 = v107 - 1;
              }

              while (v107);
              v126 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 3);
              v127 = v185;
              do
              {
                v129 = 0;
                v214 = *a1;
                v232 = *(a1 + 64);
                v226 = *(a1 + 32);
                v229 = *(a1 + 48);
                v222 = *(a1 + 16);
                v130 = *(a1 + 80);
                v186 = v130;
                v193 = *(a1 + 72);
                v184 = *(a1 + 88);
                *(a1 + 80) = 0;
                *(a1 + 88) = 0;
                *(a1 + 72) = 0;
                *&v244[15] = *(a1 + 127);
                *v244 = *(a1 + 112);
                v131 = a1;
                v237 = *(a1 + 96);
                do
                {
                  v135 = v131 + 136 * v129;
                  v136 = v135 + 136;
                  if (2 * v129 + 2 >= v126)
                  {
                    v129 = (2 * v129) | 1;
                  }

                  else
                  {
                    v137 = *(v135 + 256);
                    v138 = *(v135 + 392);
                    v139 = v135 + 272;
                    if (v137 >= v138)
                    {
                      v129 = (2 * v129) | 1;
                    }

                    else
                    {
                      v136 = v139;
                      v129 = 2 * v129 + 2;
                    }
                  }

                  *v131 = *v136;
                  v140 = *(v136 + 16);
                  v141 = *(v136 + 32);
                  v142 = *(v136 + 48);
                  *(v131 + 64) = *(v136 + 64);
                  *(v131 + 32) = v141;
                  *(v131 + 48) = v142;
                  *(v131 + 16) = v140;
                  v143 = *(v131 + 72);
                  if (v143)
                  {
                    *(v131 + 80) = v143;
                    operator delete(v143);
                    *(v131 + 72) = 0;
                    *(v131 + 80) = 0;
                    *(v131 + 88) = 0;
                  }

                  v132 = (v136 + 72);
                  *(v131 + 72) = *(v136 + 72);
                  *(v131 + 88) = *(v136 + 88);
                  *(v136 + 72) = 0;
                  *(v136 + 80) = 0;
                  *(v136 + 88) = 0;
                  v133 = *(v136 + 96);
                  v134 = *(v136 + 112);
                  *(v131 + 127) = *(v136 + 127);
                  *(v131 + 96) = v133;
                  *(v131 + 112) = v134;
                  v131 = v136;
                }

                while (v129 <= ((v126 - 2) >> 1));
                v144 = (v127 - 136);
                if (v136 == (v127 - 136))
                {
                  *v136 = v214;
                  *(v136 + 64) = v232;
                  *(v136 + 32) = v226;
                  *(v136 + 48) = v229;
                  *(v136 + 16) = v222;
                  v166 = *(v136 + 72);
                  if (v166)
                  {
                    *(v136 + 80) = v166;
                    operator delete(v166);
                  }

                  *(v136 + 72) = v193;
                  *(v136 + 80) = v186;
                  *(v136 + 88) = v184;
                  *(v136 + 127) = *&v244[15];
                  *(v136 + 112) = *v244;
                  *(v136 + 96) = v237;
                }

                else
                {
                  *v136 = *(v127 - 136);
                  v145 = *(v127 - 120);
                  v146 = *(v127 - 104);
                  v147 = *(v127 - 88);
                  *(v136 + 64) = *(v127 - 9);
                  *(v136 + 32) = v146;
                  *(v136 + 48) = v147;
                  *(v136 + 16) = v145;
                  v148 = *(v136 + 72);
                  if (v148)
                  {
                    *(v136 + 80) = v148;
                    operator delete(v148);
                    *v132 = 0;
                    *(v136 + 80) = 0;
                    *(v136 + 88) = 0;
                  }

                  *(v136 + 72) = *(v127 - 4);
                  *(v136 + 88) = *(v127 - 6);
                  *(v127 - 8) = 0;
                  *(v127 - 7) = 0;
                  *(v127 - 6) = 0;
                  v149 = *(v127 - 40);
                  v150 = *(v127 - 24);
                  *(v136 + 127) = *(v127 - 9);
                  *(v136 + 112) = v150;
                  *(v136 + 96) = v149;
                  *(v127 - 9) = v232;
                  *(v127 - 104) = v226;
                  *(v127 - 88) = v229;
                  *(v127 - 120) = v222;
                  *v144 = v214;
                  v151 = *(v127 - 8);
                  if (v151)
                  {
                    *(v127 - 7) = v151;
                    operator delete(v151);
                  }

                  v152 = v127 - 40;
                  *(v127 - 8) = v193;
                  *(v127 - 7) = v186;
                  *(v127 - 6) = v184;
                  *(v152 + 31) = *&v244[15];
                  *v152 = v237;
                  *(v152 + 1) = *v244;
                  v153 = v136 + 136 - a1;
                  if (v153 >= 137)
                  {
                    v154 = (-2 - 0xF0F0F0F0F0F0F0FLL * (v153 >> 3)) >> 1;
                    v155 = a1 + 136 * v154;
                    v156 = *(v136 + 120);
                    if (*(v155 + 120) < v156)
                    {
                      v251 = *v136;
                      v283 = *(v136 + 64);
                      v267 = *(v136 + 32);
                      v275 = *(v136 + 48);
                      v259 = *(v136 + 16);
                      v194 = *(v136 + 72);
                      v157 = *(v136 + 88);
                      *(v136 + 80) = 0;
                      *(v136 + 88) = 0;
                      *v132 = 0;
                      v207 = *(v136 + 112);
                      v204 = *(v136 + 96);
                      v201 = *(v136 + 130);
                      v198 = *(v136 + 128);
                      do
                      {
                        v158 = v155;
                        *v136 = *v155;
                        v159 = *(v155 + 16);
                        v160 = *(v155 + 32);
                        v161 = *(v155 + 48);
                        *(v136 + 64) = *(v155 + 64);
                        *(v136 + 32) = v160;
                        *(v136 + 48) = v161;
                        *(v136 + 16) = v159;
                        v162 = *(v136 + 72);
                        if (v162)
                        {
                          *(v136 + 80) = v162;
                          operator delete(v162);
                          *(v136 + 72) = 0;
                          *(v136 + 80) = 0;
                          *(v136 + 88) = 0;
                        }

                        *(v136 + 72) = *(v158 + 72);
                        *(v136 + 88) = *(v158 + 88);
                        *(v158 + 72) = 0;
                        *(v158 + 80) = 0;
                        *(v158 + 88) = 0;
                        v163 = *(v158 + 96);
                        v164 = *(v158 + 112);
                        *(v136 + 127) = *(v158 + 127);
                        *(v136 + 96) = v163;
                        *(v136 + 112) = v164;
                        if (!v154)
                        {
                          break;
                        }

                        v154 = (v154 - 1) >> 1;
                        v155 = a1 + 136 * v154;
                        v136 = v158;
                      }

                      while (*(v155 + 120) < v156);
                      *v158 = v251;
                      *(v158 + 64) = v283;
                      *(v158 + 32) = v267;
                      *(v158 + 48) = v275;
                      *(v158 + 16) = v259;
                      v165 = *(v158 + 72);
                      if (v165)
                      {
                        *(v158 + 80) = v165;
                        operator delete(v165);
                      }

                      *(v158 + 72) = v194;
                      *(v158 + 88) = v157;
                      *(v158 + 96) = v204;
                      *(v158 + 112) = v207;
                      *(v158 + 120) = v156;
                      *(v158 + 128) = v198;
                      *(v158 + 130) = v201;
                    }
                  }
                }

                v128 = v126-- <= 2;
                v127 = v144;
              }

              while (!v128);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 136 * (v9 >> 1);
          if (v8 < 0x4401)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(v12, a1, v179);
            --a3;
            if (a4)
            {
              goto LABEL_21;
            }
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, v12, v179);
            v13 = 136 * v11;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 136), (v13 + a1 - 136), v178);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 272), (a1 + 136 + v13), v177);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>((v13 + a1 - 136), v12, (a1 + 136 + v13));
            v245 = *a1;
            v277 = *(a1 + 64);
            v261 = *(a1 + 32);
            v269 = *(a1 + 48);
            v253 = *(a1 + 16);
            v14 = *(a1 + 72);
            v15 = *(a1 + 88);
            *(a1 + 72) = 0;
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
            v208 = *(a1 + 96);
            *v216 = *(a1 + 112);
            *&v216[15] = *(a1 + 127);
            v17 = *(v12 + 32);
            v16 = *(v12 + 48);
            v18 = *(v12 + 16);
            *(a1 + 64) = *(v12 + 64);
            *(a1 + 32) = v17;
            *(a1 + 48) = v16;
            *(a1 + 16) = v18;
            *a1 = *v12;
            *(a1 + 72) = *(v12 + 72);
            *(a1 + 88) = *(v12 + 88);
            *(v12 + 80) = 0;
            *(v12 + 88) = 0;
            *(v12 + 72) = 0;
            v19 = *(v12 + 96);
            v20 = *(v12 + 112);
            *(a1 + 127) = *(v12 + 127);
            *(a1 + 96) = v19;
            *(a1 + 112) = v20;
            *v12 = v245;
            *(v12 + 64) = v277;
            *(v12 + 32) = v261;
            *(v12 + 48) = v269;
            *(v12 + 16) = v253;
            v21 = *(v12 + 72);
            if (v21)
            {
              *(v12 + 80) = v21;
              v187 = v14;
              operator delete(v21);
              v14 = v187;
            }

            *(v12 + 72) = v14;
            *(v12 + 88) = v15;
            *(v12 + 127) = *&v216[15];
            *(v12 + 96) = v208;
            *(v12 + 112) = *v216;
            --a3;
            if (a4)
            {
LABEL_21:
              v22 = *(a1 + 120);
              break;
            }
          }

          v22 = *(a1 + 120);
          if (*(a1 - 16) < v22)
          {
            break;
          }

          v209 = *a1;
          v230 = *(a1 + 64);
          v224 = *(a1 + 32);
          v227 = *(a1 + 48);
          v217 = *(a1 + 16);
          v181 = *(a1 + 72);
          v23 = *(a1 + 88);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          v205 = *(a1 + 112);
          v202 = *(a1 + 96);
          v24 = *(a1 + 120);
          v196 = *(a1 + 128);
          v199 = *(a1 + 130);
          if (v24 >= *(a2 - 16))
          {
            v56 = a1 + 136;
            do
            {
              v7 = v56;
              if (v56 >= a2)
              {
                break;
              }

              v57 = *(v56 + 120);
              v56 += 136;
            }

            while (v24 >= v57);
          }

          else
          {
            v25 = a1;
            do
            {
              v7 = v25 + 136;
              v26 = *(v25 + 256);
              v25 += 136;
            }

            while (v24 >= v26);
          }

          v58 = a2;
          if (v7 < a2)
          {
            v59 = a2;
            do
            {
              v58 = v59 - 136;
              v60 = *(v59 - 16);
              v59 -= 136;
            }

            while (v24 < v60);
          }

          while (v7 < v58)
          {
            v247 = *v7;
            v279 = *(v7 + 64);
            v263 = *(v7 + 32);
            v271 = *(v7 + 48);
            v255 = *(v7 + 16);
            v61 = *(v7 + 72);
            v62 = *(v7 + 88);
            *(v7 + 72) = 0;
            *(v7 + 80) = 0;
            *(v7 + 88) = 0;
            *v243 = *(v7 + 112);
            *&v243[15] = *(v7 + 127);
            v234 = *(v7 + 96);
            v64 = *(v58 + 32);
            v63 = *(v58 + 48);
            v65 = *(v58 + 16);
            *(v7 + 64) = *(v58 + 64);
            *(v7 + 32) = v64;
            *(v7 + 48) = v63;
            *(v7 + 16) = v65;
            *v7 = *v58;
            *(v7 + 72) = *(v58 + 72);
            *(v7 + 88) = *(v58 + 88);
            *(v58 + 72) = 0;
            *(v58 + 80) = 0;
            *(v58 + 88) = 0;
            v66 = *(v58 + 96);
            v67 = *(v58 + 112);
            *(v7 + 127) = *(v58 + 127);
            *(v7 + 96) = v66;
            *(v7 + 112) = v67;
            *v58 = v247;
            *(v58 + 64) = v279;
            *(v58 + 32) = v263;
            *(v58 + 48) = v271;
            *(v58 + 16) = v255;
            v68 = *(v58 + 72);
            if (v68)
            {
              *(v58 + 80) = v68;
              v189 = v61;
              operator delete(v68);
              v61 = v189;
            }

            *(v58 + 72) = v61;
            *(v58 + 88) = v62;
            *(v58 + 96) = v234;
            *(v58 + 112) = *v243;
            *(v58 + 127) = *&v243[15];
            do
            {
              v69 = *(v7 + 256);
              v7 += 136;
            }

            while (v24 >= v69);
            do
            {
              v70 = *(v58 - 16);
              v58 -= 136;
            }

            while (v24 < v70);
          }

          v71 = (v7 - 136);
          if (v7 - 136 != a1)
          {
            *a1 = *v71;
            v72 = *(v7 - 120);
            v73 = *(v7 - 104);
            v74 = *(v7 - 88);
            *(a1 + 64) = *(v7 - 72);
            *(a1 + 32) = v73;
            *(a1 + 48) = v74;
            *(a1 + 16) = v72;
            v75 = *(a1 + 72);
            if (v75)
            {
              *(a1 + 80) = v75;
              operator delete(v75);
              *(a1 + 72) = 0;
              *(a1 + 80) = 0;
              *(a1 + 88) = 0;
            }

            *(a1 + 72) = *(v7 - 64);
            *(a1 + 88) = *(v7 - 48);
            *(v7 - 64) = 0;
            *(v7 - 56) = 0;
            *(v7 - 48) = 0;
            v76 = *(v7 - 40);
            v77 = *(v7 - 24);
            *(a1 + 127) = *(v7 - 9);
            *(a1 + 96) = v76;
            *(a1 + 112) = v77;
          }

          *v71 = v209;
          *(v7 - 72) = v230;
          *(v7 - 104) = v224;
          *(v7 - 88) = v227;
          *(v7 - 120) = v217;
          v78 = *(v7 - 64);
          if (v78)
          {
            *(v7 - 56) = v78;
            operator delete(v78);
          }

          a4 = 0;
          *(v7 - 64) = v181;
          *(v7 - 48) = v23;
          *(v7 - 24) = v205;
          *(v7 - 40) = v202;
          *(v7 - 16) = v24;
          *(v7 - 6) = v199;
          *(v7 - 8) = v196;
        }

        v27 = 0;
        v210 = *a1;
        v231 = *(a1 + 64);
        v225 = *(a1 + 32);
        v228 = *(a1 + 48);
        v218 = *(a1 + 16);
        v182 = *(a1 + 72);
        v28 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v206 = *(a1 + 112);
        v203 = *(a1 + 96);
        v200 = *(a1 + 130);
        v197 = *(a1 + 128);
        do
        {
          v29 = *(a1 + v27 + 256);
          v27 += 136;
        }

        while (v29 < v22);
        v30 = a1 + v27;
        v31 = v185;
        if (v27 == 136)
        {
          v34 = v185;
          while (v30 < v34)
          {
            v32 = v34 - 136;
            v35 = *(v34 - 16);
            v34 -= 136;
            if (v35 < v22)
            {
              goto LABEL_30;
            }
          }

          v32 = v34;
          v7 = v30;
        }

        else
        {
          do
          {
            v32 = v31 - 136;
            v33 = *(v31 - 16);
            v31 -= 136;
          }

          while (v33 >= v22);
LABEL_30:
          v7 = v30;
          if (v30 < v32)
          {
            v36 = v32;
            do
            {
              v246 = *v7;
              v278 = *(v7 + 64);
              v262 = *(v7 + 32);
              v270 = *(v7 + 48);
              v254 = *(v7 + 16);
              v37 = *(v7 + 72);
              v38 = *(v7 + 88);
              *(v7 + 72) = 0;
              *(v7 + 80) = 0;
              *(v7 + 88) = 0;
              *v242 = *(v7 + 112);
              *&v242[15] = *(v7 + 127);
              v233 = *(v7 + 96);
              v40 = *(v36 + 32);
              v39 = *(v36 + 48);
              v41 = *(v36 + 16);
              *(v7 + 64) = *(v36 + 64);
              *(v7 + 32) = v40;
              *(v7 + 48) = v39;
              *(v7 + 16) = v41;
              *v7 = *v36;
              *(v7 + 72) = *(v36 + 72);
              *(v7 + 88) = *(v36 + 88);
              *(v36 + 72) = 0;
              *(v36 + 80) = 0;
              *(v36 + 88) = 0;
              v42 = *(v36 + 96);
              v43 = *(v36 + 112);
              *(v7 + 127) = *(v36 + 127);
              *(v7 + 96) = v42;
              *(v7 + 112) = v43;
              *v36 = v246;
              *(v36 + 64) = v278;
              *(v36 + 32) = v262;
              *(v36 + 48) = v270;
              *(v36 + 16) = v254;
              v44 = *(v36 + 72);
              if (v44)
              {
                *(v36 + 80) = v44;
                v188 = v37;
                operator delete(v44);
                v37 = v188;
              }

              *(v36 + 72) = v37;
              *(v36 + 88) = v38;
              *(v36 + 96) = v233;
              *(v36 + 112) = *v242;
              *(v36 + 127) = *&v242[15];
              do
              {
                v45 = *(v7 + 256);
                v7 += 136;
              }

              while (v45 < v22);
              do
              {
                v46 = *(v36 - 16);
                v36 -= 136;
              }

              while (v46 >= v22);
            }

            while (v7 < v36);
          }
        }

        v47 = (v7 - 136);
        if (v7 - 136 != a1)
        {
          *a1 = *v47;
          v48 = *(v7 - 120);
          v49 = *(v7 - 104);
          v50 = *(v7 - 88);
          *(a1 + 64) = *(v7 - 72);
          *(a1 + 32) = v49;
          *(a1 + 48) = v50;
          *(a1 + 16) = v48;
          v51 = *(a1 + 72);
          if (v51)
          {
            *(a1 + 80) = v51;
            operator delete(v51);
            *(a1 + 72) = 0;
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
          }

          *(a1 + 72) = *(v7 - 64);
          *(a1 + 88) = *(v7 - 48);
          *(v7 - 64) = 0;
          *(v7 - 56) = 0;
          *(v7 - 48) = 0;
          v52 = *(v7 - 40);
          v53 = *(v7 - 24);
          *(a1 + 127) = *(v7 - 9);
          *(a1 + 96) = v52;
          *(a1 + 112) = v53;
        }

        *v47 = v210;
        *(v7 - 72) = v231;
        *(v7 - 104) = v225;
        *(v7 - 88) = v228;
        *(v7 - 120) = v218;
        v54 = *(v7 - 64);
        if (v54)
        {
          *(v7 - 56) = v54;
          operator delete(v54);
        }

        *(v7 - 64) = v182;
        *(v7 - 48) = v28;
        *(v7 - 24) = v206;
        *(v7 - 40) = v203;
        *(v7 - 16) = v22;
        *(v7 - 6) = v200;
        *(v7 - 8) = v197;
        a2 = v185;
        if (v30 >= v32)
        {
          break;
        }

LABEL_47:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,false>(a1, v7 - 136, a3, a4 & 1);
        a4 = 0;
      }

      v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*>(a1, v7 - 136);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*>(v7, v185))
      {
        break;
      }

      if ((v55 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    a2 = v7 - 136;
    if ((v55 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  result.n128_u64[0] = *(a2 + 15);
  v6 = *(a3 + 15);
  if (result.n128_f64[0] >= *(a1 + 15))
  {
    if (v6 < result.n128_f64[0])
    {
      v72 = a2[2];
      v77 = a2[3];
      v82 = *(a2 + 8);
      v62 = *a2;
      v67 = a2[1];
      v15 = a2 + 9;
      v16 = *(a2 + 72);
      v17 = *(a2 + 11);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *&v58[15] = *(a2 + 127);
      v54 = a2[6];
      *v58 = a2[7];
      *a2 = *a3;
      v18 = a3[1];
      v19 = a3[2];
      v20 = a3[3];
      *(a2 + 8) = *(a3 + 8);
      a2[2] = v19;
      a2[3] = v20;
      a2[1] = v18;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 11) = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      v21 = a3[6];
      v22 = a3[7];
      *(a2 + 127) = *(a3 + 127);
      a2[6] = v21;
      a2[7] = v22;
      a3[2] = v72;
      a3[3] = v77;
      *(a3 + 8) = v82;
      *a3 = v62;
      a3[1] = v67;
      v23 = *(a3 + 9);
      if (v23)
      {
        *(a3 + 10) = v23;
        v24 = a1;
        v51 = v16;
        operator delete(v23);
        v16 = v51;
        a1 = v24;
      }

      *(a3 + 72) = v16;
      *(a3 + 11) = v17;
      result.n128_u64[1] = *(&v54 + 1);
      a3[6] = v54;
      a3[7] = *v58;
      *(a3 + 127) = *&v58[15];
      result.n128_u64[0] = *(a2 + 15);
      if (result.n128_f64[0] < *(a1 + 15))
      {
        v73 = a1[2];
        v78 = a1[3];
        v83 = *(a1 + 8);
        v63 = *a1;
        v68 = a1[1];
        v25 = *(a1 + 72);
        v26 = *(a1 + 11);
        *(a1 + 9) = 0;
        *(a1 + 10) = 0;
        *(a1 + 11) = 0;
        *&v59[15] = *(a1 + 127);
        v55 = a1[6];
        *v59 = a1[7];
        *a1 = *a2;
        v27 = a2[1];
        v28 = a2[2];
        v29 = a2[3];
        *(a1 + 8) = *(a2 + 8);
        a1[2] = v28;
        a1[3] = v29;
        a1[1] = v27;
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 11) = *(a2 + 11);
        *v15 = 0;
        *(a2 + 10) = 0;
        *(a2 + 11) = 0;
        v30 = a2[6];
        v31 = a2[7];
        *(a1 + 127) = *(a2 + 127);
        a1[6] = v30;
        a1[7] = v31;
        a2[2] = v73;
        a2[3] = v78;
        *(a2 + 8) = v83;
        *a2 = v63;
        a2[1] = v68;
        v32 = *(a2 + 9);
        if (v32)
        {
          *(a2 + 10) = v32;
          v52 = v25;
          operator delete(v32);
          v25 = v52;
        }

        *(a2 + 72) = v25;
        *(a2 + 11) = v26;
        result = v55;
        a2[6] = v55;
        a2[7] = *v59;
        *(a2 + 127) = *&v59[15];
      }
    }
  }

  else
  {
    if (v6 < result.n128_f64[0])
    {
      v71 = a1[2];
      v76 = a1[3];
      v81 = *(a1 + 8);
      v61 = *a1;
      v66 = a1[1];
      v7 = *(a1 + 72);
      v8 = *(a1 + 11);
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      *(a1 + 9) = 0;
      *&v57[15] = *(a1 + 127);
      v53 = a1[6];
      *v57 = a1[7];
      *a1 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      v11 = a3[3];
      *(a1 + 8) = *(a3 + 8);
      a1[2] = v10;
      a1[3] = v11;
      a1[1] = v9;
      *(a1 + 72) = *(a3 + 72);
      *(a1 + 11) = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      v12 = a3[6];
      v13 = a3[7];
      *(a1 + 127) = *(a3 + 127);
      a1[6] = v12;
      a1[7] = v13;
      a3[2] = v71;
      a3[3] = v76;
      *(a3 + 8) = v81;
      *a3 = v61;
      a3[1] = v66;
      v14 = *(a3 + 9);
      if (v14)
      {
        *(a3 + 10) = v14;
        v50 = v7;
        operator delete(v14);
        v7 = v50;
      }

      *(a3 + 72) = v7;
      *(a3 + 11) = v8;
LABEL_20:
      result = v53;
      a3[6] = v53;
      a3[7] = *v57;
      *(a3 + 127) = *&v57[15];
      return result;
    }

    v74 = a1[2];
    v79 = a1[3];
    v33 = *(a1 + 9);
    v84 = *(a1 + 8);
    v64 = *a1;
    v69 = a1[1];
    v34 = *(a1 + 10);
    v35 = *(a1 + 11);
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    *(a1 + 9) = 0;
    *a1 = *a2;
    v36 = a2[1];
    v37 = a2[3];
    v38 = *(a2 + 8);
    a1[2] = a2[2];
    a1[3] = v37;
    v39 = a1[6];
    v40 = a1[7];
    *&v60[15] = *(a1 + 127);
    *(a1 + 8) = v38;
    a1[1] = v36;
    v56 = v39;
    *v60 = v40;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v41 = a2[6];
    v42 = a2[7];
    *(a1 + 127) = *(a2 + 127);
    a1[6] = v41;
    a1[7] = v42;
    a2[2] = v74;
    a2[3] = v79;
    *(a2 + 8) = v84;
    *a2 = v64;
    a2[1] = v69;
    v43 = *(a2 + 9);
    if (v43)
    {
      *(a2 + 10) = v43;
      operator delete(v43);
    }

    *(a2 + 9) = v33;
    *(a2 + 10) = v34;
    *(a2 + 11) = v35;
    result.n128_u64[1] = *(&v56 + 1);
    a2[6] = v56;
    a2[7] = *v60;
    *(a2 + 127) = *&v60[15];
    result.n128_u64[0] = *(a3 + 15);
    if (result.n128_f64[0] < *(a2 + 15))
    {
      v75 = a2[2];
      v80 = a2[3];
      v85 = *(a2 + 8);
      v65 = *a2;
      v70 = a2[1];
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *(a2 + 9) = 0;
      *&v57[15] = *(a2 + 127);
      v53 = a2[6];
      *v57 = a2[7];
      *a2 = *a3;
      v44 = a3[1];
      v45 = a3[2];
      v46 = a3[3];
      *(a2 + 8) = *(a3 + 8);
      a2[2] = v45;
      a2[3] = v46;
      a2[1] = v44;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 11) = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      v47 = a3[6];
      v48 = a3[7];
      *(a2 + 127) = *(a3 + 127);
      a2[6] = v47;
      a2[7] = v48;
      a3[2] = v75;
      a3[3] = v80;
      *(a3 + 8) = v85;
      *a3 = v65;
      a3[1] = v70;
      v49 = *(a3 + 9);
      if (v49)
      {
        *(a3 + 10) = v49;
        operator delete(v49);
      }

      *(a3 + 9) = v33;
      *(a3 + 10) = v34;
      *(a3 + 11) = v35;
      goto LABEL_20;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3);
  result.n128_u64[0] = *(a4 + 120);
  if (result.n128_f64[0] < *(a3 + 120))
  {
    v48 = *(a3 + 32);
    v51 = *(a3 + 48);
    v54 = *(a3 + 64);
    v42 = *a3;
    v45 = *(a3 + 16);
    v9 = *(a3 + 72);
    v10 = *(a3 + 88);
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *&v39[15] = *(a3 + 127);
    v36 = *(a3 + 96);
    *v39 = *(a3 + 112);
    *a3 = *a4;
    v11 = *(a4 + 16);
    v12 = *(a4 + 32);
    v13 = *(a4 + 48);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 32) = v12;
    *(a3 + 48) = v13;
    *(a3 + 16) = v11;
    *(a3 + 72) = *(a4 + 72);
    *(a3 + 88) = *(a4 + 88);
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    v14 = *(a4 + 96);
    v15 = *(a4 + 112);
    *(a3 + 127) = *(a4 + 127);
    *(a3 + 96) = v14;
    *(a3 + 112) = v15;
    *(a4 + 32) = v48;
    *(a4 + 48) = v51;
    *(a4 + 64) = v54;
    *a4 = v42;
    *(a4 + 16) = v45;
    v16 = *(a4 + 72);
    if (v16)
    {
      *(a4 + 80) = v16;
      v33 = v9;
      operator delete(v16);
      v9 = v33;
    }

    *(a4 + 72) = v9;
    *(a4 + 88) = v10;
    result.n128_u64[1] = *(&v36 + 1);
    *(a4 + 96) = v36;
    *(a4 + 112) = *v39;
    *(a4 + 127) = *&v39[15];
    result.n128_u64[0] = *(a3 + 120);
    if (result.n128_f64[0] < *(a2 + 120))
    {
      v49 = *(a2 + 32);
      v52 = *(a2 + 48);
      v55 = *(a2 + 64);
      v43 = *a2;
      v46 = *(a2 + 16);
      v17 = *(a2 + 72);
      v18 = *(a2 + 88);
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *&v40[15] = *(a2 + 127);
      v37 = *(a2 + 96);
      *v40 = *(a2 + 112);
      *a2 = *a3;
      v19 = *(a3 + 16);
      v20 = *(a3 + 32);
      v21 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 32) = v20;
      *(a2 + 48) = v21;
      *(a2 + 16) = v19;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 88) = *(a3 + 88);
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      v22 = *(a3 + 96);
      v23 = *(a3 + 112);
      *(a2 + 127) = *(a3 + 127);
      *(a2 + 96) = v22;
      *(a2 + 112) = v23;
      *(a3 + 32) = v49;
      *(a3 + 48) = v52;
      *(a3 + 64) = v55;
      *a3 = v43;
      *(a3 + 16) = v46;
      v24 = *(a3 + 72);
      if (v24)
      {
        *(a3 + 80) = v24;
        v34 = v17;
        operator delete(v24);
        v17 = v34;
      }

      *(a3 + 72) = v17;
      *(a3 + 88) = v18;
      result.n128_u64[1] = *(&v37 + 1);
      *(a3 + 96) = v37;
      *(a3 + 112) = *v40;
      *(a3 + 127) = *&v40[15];
      result.n128_u64[0] = *(a2 + 120);
      if (result.n128_f64[0] < *(a1 + 120))
      {
        v50 = *(a1 + 32);
        v53 = *(a1 + 48);
        v56 = *(a1 + 64);
        v44 = *a1;
        v47 = *(a1 + 16);
        v25 = *(a1 + 72);
        v26 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *&v41[15] = *(a1 + 127);
        v38 = *(a1 + 96);
        *v41 = *(a1 + 112);
        *a1 = *a2;
        v27 = *(a2 + 16);
        v28 = *(a2 + 32);
        v29 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 32) = v28;
        *(a1 + 48) = v29;
        *(a1 + 16) = v27;
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        v30 = *(a2 + 96);
        v31 = *(a2 + 112);
        *(a1 + 127) = *(a2 + 127);
        *(a1 + 96) = v30;
        *(a1 + 112) = v31;
        *(a2 + 32) = v50;
        *(a2 + 48) = v53;
        *(a2 + 64) = v56;
        *a2 = v44;
        *(a2 + 16) = v47;
        v32 = *(a2 + 72);
        if (v32)
        {
          *(a2 + 80) = v32;
          v35 = v25;
          operator delete(v32);
          v25 = v35;
        }

        *(a2 + 72) = v25;
        *(a2 + 88) = v26;
        result = v38;
        *(a2 + 96) = v38;
        *(a2 + 112) = *v41;
        *(a2 + 127) = *&v41[15];
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3, a4);
  result.n128_u64[0] = *(a5 + 120);
  if (result.n128_f64[0] < *(a4 + 120))
  {
    v63 = *(a4 + 32);
    v67 = *(a4 + 48);
    v71 = *(a4 + 64);
    v55 = *a4;
    v59 = *(a4 + 16);
    v11 = *(a4 + 72);
    v12 = *(a4 + 88);
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    *&v51[15] = *(a4 + 127);
    v47 = *(a4 + 96);
    *v51 = *(a4 + 112);
    *a4 = *a5;
    v13 = *(a5 + 16);
    v14 = *(a5 + 32);
    v15 = *(a5 + 48);
    *(a4 + 64) = *(a5 + 64);
    *(a4 + 32) = v14;
    *(a4 + 48) = v15;
    *(a4 + 16) = v13;
    *(a4 + 72) = *(a5 + 72);
    *(a4 + 88) = *(a5 + 88);
    *(a5 + 72) = 0;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    v16 = *(a5 + 96);
    v17 = *(a5 + 112);
    *(a4 + 127) = *(a5 + 127);
    *(a4 + 96) = v16;
    *(a4 + 112) = v17;
    *(a5 + 32) = v63;
    *(a5 + 48) = v67;
    *(a5 + 64) = v71;
    *a5 = v55;
    *(a5 + 16) = v59;
    v18 = *(a5 + 72);
    if (v18)
    {
      *(a5 + 80) = v18;
      v43 = v11;
      operator delete(v18);
      v11 = v43;
    }

    *(a5 + 72) = v11;
    *(a5 + 88) = v12;
    result.n128_u64[1] = *(&v47 + 1);
    *(a5 + 96) = v47;
    *(a5 + 112) = *v51;
    *(a5 + 127) = *&v51[15];
    result.n128_u64[0] = *(a4 + 120);
    if (result.n128_f64[0] < *(a3 + 120))
    {
      v64 = *(a3 + 32);
      v68 = *(a3 + 48);
      v72 = *(a3 + 64);
      v56 = *a3;
      v60 = *(a3 + 16);
      v19 = *(a3 + 72);
      v20 = *(a3 + 88);
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *&v52[15] = *(a3 + 127);
      v48 = *(a3 + 96);
      *v52 = *(a3 + 112);
      *a3 = *a4;
      v21 = *(a4 + 16);
      v22 = *(a4 + 32);
      v23 = *(a4 + 48);
      *(a3 + 64) = *(a4 + 64);
      *(a3 + 32) = v22;
      *(a3 + 48) = v23;
      *(a3 + 16) = v21;
      *(a3 + 72) = *(a4 + 72);
      *(a3 + 88) = *(a4 + 88);
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      v24 = *(a4 + 96);
      v25 = *(a4 + 112);
      *(a3 + 127) = *(a4 + 127);
      *(a3 + 96) = v24;
      *(a3 + 112) = v25;
      *(a4 + 32) = v64;
      *(a4 + 48) = v68;
      *(a4 + 64) = v72;
      *a4 = v56;
      *(a4 + 16) = v60;
      v26 = *(a4 + 72);
      if (v26)
      {
        *(a4 + 80) = v26;
        v44 = v19;
        operator delete(v26);
        v19 = v44;
      }

      *(a4 + 72) = v19;
      *(a4 + 88) = v20;
      result.n128_u64[1] = *(&v48 + 1);
      *(a4 + 96) = v48;
      *(a4 + 112) = *v52;
      *(a4 + 127) = *&v52[15];
      result.n128_u64[0] = *(a3 + 120);
      if (result.n128_f64[0] < *(a2 + 120))
      {
        v65 = *(a2 + 32);
        v69 = *(a2 + 48);
        v73 = *(a2 + 64);
        v57 = *a2;
        v61 = *(a2 + 16);
        v27 = *(a2 + 72);
        v28 = *(a2 + 88);
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *&v53[15] = *(a2 + 127);
        v49 = *(a2 + 96);
        *v53 = *(a2 + 112);
        *a2 = *a3;
        v29 = *(a3 + 16);
        v30 = *(a3 + 32);
        v31 = *(a3 + 48);
        *(a2 + 64) = *(a3 + 64);
        *(a2 + 32) = v30;
        *(a2 + 48) = v31;
        *(a2 + 16) = v29;
        *(a2 + 72) = *(a3 + 72);
        *(a2 + 88) = *(a3 + 88);
        *(a3 + 72) = 0;
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        v32 = *(a3 + 96);
        v33 = *(a3 + 112);
        *(a2 + 127) = *(a3 + 127);
        *(a2 + 96) = v32;
        *(a2 + 112) = v33;
        *(a3 + 32) = v65;
        *(a3 + 48) = v69;
        *(a3 + 64) = v73;
        *a3 = v57;
        *(a3 + 16) = v61;
        v34 = *(a3 + 72);
        if (v34)
        {
          *(a3 + 80) = v34;
          v45 = v27;
          operator delete(v34);
          v27 = v45;
        }

        *(a3 + 72) = v27;
        *(a3 + 88) = v28;
        result.n128_u64[1] = *(&v49 + 1);
        *(a3 + 96) = v49;
        *(a3 + 112) = *v53;
        *(a3 + 127) = *&v53[15];
        result.n128_u64[0] = *(a2 + 120);
        if (result.n128_f64[0] < *(a1 + 120))
        {
          v66 = *(a1 + 32);
          v70 = *(a1 + 48);
          v74 = *(a1 + 64);
          v58 = *a1;
          v62 = *(a1 + 16);
          v35 = *(a1 + 72);
          v36 = *(a1 + 88);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *&v54[15] = *(a1 + 127);
          v50 = *(a1 + 96);
          *v54 = *(a1 + 112);
          *a1 = *a2;
          v37 = *(a2 + 16);
          v38 = *(a2 + 32);
          v39 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v38;
          *(a1 + 48) = v39;
          *(a1 + 16) = v37;
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
          *(a2 + 72) = 0;
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          v40 = *(a2 + 96);
          v41 = *(a2 + 112);
          *(a1 + 127) = *(a2 + 127);
          *(a1 + 96) = v40;
          *(a1 + 112) = v41;
          *(a2 + 32) = v66;
          *(a2 + 48) = v70;
          *(a2 + 64) = v74;
          *a2 = v58;
          *(a2 + 16) = v62;
          v42 = *(a2 + 72);
          if (v42)
          {
            *(a2 + 80) = v42;
            v46 = v35;
            operator delete(v42);
            v35 = v46;
          }

          *(a2 + 72) = v35;
          *(a2 + 88) = v36;
          result = v50;
          *(a2 + 96) = v50;
          *(a2 + 112) = *v54;
          *(a2 + 127) = *&v54[15];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a2 - 136));
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 136, a1 + 272, a2 - 136);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 136, a1 + 272, a1 + 408, a2 - 136);
        v5 = 1;
        return v5 & 1;
    }

LABEL_14:
    v15 = a1 + 272;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272));
    v17 = a1 + 408;
    if (a1 + 408 == a2)
    {
LABEL_29:
      v34 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = *(v17 + 120);
        if (v20 < *(v15 + 120))
        {
          v49 = *(v17 + 32);
          v51 = *(v17 + 48);
          v21 = *(v17 + 72);
          v53 = *(v17 + 64);
          v45 = *v17;
          v47 = *(v17 + 16);
          v22 = *(v17 + 96);
          v37 = *(v17 + 80);
          *(v17 + 72) = 0;
          *(v17 + 80) = 0;
          *(v17 + 88) = 0;
          v43 = *(v17 + 112);
          v41 = v22;
          v39 = *(v17 + 130);
          v23 = v18;
          v38 = *(v17 + 128);
          while (1)
          {
            v24 = v23;
            v25 = a1 + v23;
            v26 = (a1 + v23 + 408);
            v27 = *(v25 + 320);
            v26[2] = *(v25 + 304);
            v26[3] = v27;
            *(v25 + 472) = *(v25 + 336);
            v28 = *(v25 + 288);
            *v26 = *(v25 + 272);
            v26[1] = v28;
            v29 = *(v25 + 480);
            if (v29)
            {
              *(v25 + 488) = v29;
              operator delete(v29);
              *(v25 + 488) = 0;
              *(v25 + 496) = 0;
            }

            *(v25 + 480) = *(v25 + 344);
            *(v25 + 496) = *(v25 + 360);
            *(v25 + 352) = 0;
            *(v25 + 360) = 0;
            *(v25 + 344) = 0;
            v30 = *(v25 + 384);
            *(v25 + 504) = *(v25 + 368);
            *(v25 + 520) = v30;
            v16 = *(v25 + 399);
            *(v25 + 535) = v16;
            if (v24 == -272)
            {
              break;
            }

            v23 = v24 - 136;
            if (v20 >= *(a1 + v24 + 256))
            {
              v31 = a1 + v23 + 408;
              goto LABEL_26;
            }
          }

          v31 = a1;
LABEL_26:
          v32 = a1 + v24;
          *(v31 + 64) = v53;
          *(v31 + 32) = v49;
          *(v31 + 48) = v51;
          *v31 = v45;
          *(v31 + 16) = v47;
          v33 = *(v32 + 344);
          if (v33)
          {
            *(v31 + 80) = v33;
            operator delete(v33);
            *(v32 + 352) = 0;
            *(v32 + 360) = 0;
          }

          *(v32 + 344) = v21;
          *(v31 + 80) = v37;
          *(v32 + 368) = v41;
          *(v32 + 384) = v43;
          *(v31 + 120) = v20;
          *(v31 + 128) = v38;
          ++v19;
          *(v31 + 130) = v39;
          if (v19 == 8)
          {
            break;
          }
        }

        v15 = v17;
        v18 += 136;
        v17 += 136;
        if (v17 == a2)
        {
          goto LABEL_29;
        }
      }

      v34 = 0;
      LOBYTE(v16) = v17 + 136 == a2;
    }

    v5 = v34 | v16;
    return v5 & 1;
  }

  if (v4 < 2)
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 16) >= *(a1 + 120))
  {
    goto LABEL_3;
  }

  v48 = *(a1 + 32);
  v50 = *(a1 + 48);
  v52 = *(a1 + 64);
  v44 = *a1;
  v46 = *(a1 + 16);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *&v42[15] = *(a1 + 127);
  v40 = *(a1 + 96);
  *v42 = *(a1 + 112);
  *a1 = *(a2 - 136);
  v8 = *(a2 - 120);
  v9 = *(a2 - 104);
  v10 = *(a2 - 88);
  *(a1 + 64) = *(a2 - 72);
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 16) = v8;
  *(a1 + 72) = *(a2 - 64);
  *(a1 + 88) = *(a2 - 48);
  *(a2 - 64) = 0;
  *(a2 - 56) = 0;
  *(a2 - 48) = 0;
  v11 = (a2 - 40);
  v12 = *(a2 - 40);
  v13 = *(a2 - 24);
  *(a1 + 127) = *(a2 - 9);
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  *(a2 - 120) = v46;
  *(a2 - 104) = v48;
  *(a2 - 88) = v50;
  *(a2 - 72) = v52;
  *(a2 - 136) = v44;
  v14 = *(a2 - 64);
  if (v14)
  {
    *(a2 - 56) = v14;
    v36 = v6;
    operator delete(v14);
    v6 = v36;
  }

  *(a2 - 64) = v6;
  *(a2 - 48) = v7;
  *v11 = v40;
  *(a2 - 24) = *v42;
  *(a2 - 9) = *&v42[15];
  v5 = 1;
  return v5 & 1;
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40D70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1) || !operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1))
  {
    return 0;
  }

  v4 = (*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3;
  v5 = -1431655765 * v4;
  if (0xAAAAAAAB00000000 * v4)
  {
    if (((0xAAAAAAAB00000000 * v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    v8 = 16;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9[19] + 4 * v6);
      if (v10 == -1 || (v11 = *(v9[19] + 4 * v6), ((*(*(v9[3] + 24) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
      {
        v12 = *(a1 + 8);
        v13 = *(v9[29] + 8 * v6) * *(v12[29] + 8 * v6);
        *(8 * v6) = v13;
        if (v13)
        {
          *(v8 - 16) = *(v12[30] + 8 * v6);
          *(v8 - 8) = -*(v12[33] + 8 * v6);
          *v8 = *(v9[30] + 8 * v6);
          *(v8 + 8) = -*(v9[33] + 8 * v6);
          operator new();
        }
      }

      ++v6;
      v8 += 32;
    }

    while (v7 != v6);
  }

  return 1;
}

void sub_23CB71A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    if (!v21)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  if (!v22)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::string_view,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *)#1}::operator()(uint64_t a1, const void *a2, unint64_t a3, void *a4, void *a5)
{
  v5 = a3;
  v7 = 0uLL;
  memset(v50, 0, 24);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = v9[1];
  if ((v10 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a2;
    v13 = *(v8 + 272);
    v14 = *v9;
    v15 = 4 * v10;
    do
    {
      v16 = *v14;
      v17 = a4[29];
      v40[0] = *(a4[30] + 8 * v16);
      v18 = a4[31];
      v40[1] = -*(a4[32] + 8 * v16);
      v40[2] = *(v18 + 8 * v16);
      v40[3] = -*(a4[33] + 8 * v16);
      v19 = *(v17 + 8 * v16);
      v40[4] = v19;
      v41 = 0u;
      v42 = 0u;
      __p = 0u;
      v44 = 0;
      LODWORD(v45) = -1;
      *(&v45 + 1) = 0;
      v46 = 0;
      v48 = 0;
      v49 = 0;
      v20 = a4[13] + 24 * v16;
      v21 = *(v20 + 16);
      v45 = *v20;
      v46 = v21;
      if (v45 == -1)
      {
        v24 = v46;
        if (v46 < 0x8000000000000003)
        {
          v24 = -INFINITY;
        }

        if (v46 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v24 = INFINITY;
        }
      }

      else
      {
        v22 = *(&v45 + 1);
        v23 = -INFINITY;
        if (*(&v45 + 1) < 0x8000000000000003)
        {
          v22 = -INFINITY;
        }

        if (*(&v45 + 1) > 0x7FFFFFFFFFFFFFFDLL)
        {
          v22 = INFINITY;
        }

        if (v46 >= 0x8000000000000003)
        {
          v23 = v46;
        }

        if (v46 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v23 = INFINITY;
        }

        v24 = v23 + v22 * *(*v13 + 8 * v45);
      }

      v47 = v24;
      v25 = a5[29];
      *&v41 = *(a5[30] + 8 * v16);
      *(&v41 + 1) = -*(a5[33] + 8 * v16);
      *&v42 = *(v25 + 8 * v16);
      *(&v42 + 1) = v42 * v19;
      operations_research::sat::ProductDecomposer::TryToDecompose(*a1, (a4[16] + 24 * v16), (a5[16] + 24 * v16), &v38);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      __p = v38;
      v44 = v39;
      std::vector<operations_research::sat::DiffnCtEvent>::push_back[abi:ne200100](v50, v40);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      ++v14;
      v15 -= 4;
    }

    while (v15);
    v26 = *&v50[0];
    v7 = *(v50 + 8);
    v8 = *(a1 + 8);
    a2 = v33;
    v5 = a3;
  }

  else
  {
    v26 = 0;
  }

  v36 = v26;
  v35 = v7;
  v37 = v7;
  memset(v50, 0, 24);
  operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(a2, v5, &v36, 0, 0, *(a1 + 16), v8);
  if (v26)
  {
    for (i = v35; i != v26; i -= 136)
    {
      v28 = *(i - 8);
      if (v28)
      {
        *(i - 7) = v28;
        operator delete(v28);
      }
    }

    operator delete(v26);
  }

  v29 = *&v50[0];
  if (*&v50[0])
  {
    v30 = *(&v50[0] + 1);
    v31 = *&v50[0];
    if (*(&v50[0] + 1) != *&v50[0])
    {
      do
      {
        v32 = *(v30 - 64);
        if (v32)
        {
          *(v30 - 56) = v32;
          operator delete(v32);
        }

        v30 -= 136;
      }

      while (v30 != v29);
      v31 = *&v50[0];
    }

    *(&v50[0] + 1) = v29;
    operator delete(v31);
  }
}

void sub_23CB71E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100](va);
  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100]((v6 - 120));
  _Unwind_Resume(a1);
}

void sub_23CB71E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100]((v31 - 120));
  _Unwind_Resume(a1);
}

void operations_research::sat::GetOverlappingRectangleComponents(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a4 && a4 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = v9 + 1;
      v12 = v9++;
      do
      {
        if (v9 < a4)
        {
          v13 = (a3 + 4 * v9);
          v14 = (a4 & 0x7FFFFFFF) - v9;
          do
          {
            v15 = (a1 + 32 * *(a3 + 4 * v12));
            v16 = *v13;
            v17 = (a1 + 32 * v16);
            if (*v15 < v17[1] && *v17 < v15[1] && v15[2] < v17[3] && v17[2] < v15[3])
            {
              v18 = *(a3 + 4 * v9);
              *(a3 + 4 * v9++) = v16;
              *v13 = v18;
            }

            ++v13;
            --v14;
          }

          while (v14);
        }

        ++v12;
      }

      while (v12 < v9);
      if (v9 > v11)
      {
        v19 = v10;
        v20 = a4 - v10;
        if (a4 < v10)
        {
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("pos > size()", a2);
        }

        v21 = v9 - v10;
        v22 = a3 + 4 * v19;
        if (v20 < v21)
        {
          v21 = v20;
        }

        *&v23 = v22;
        *(&v23 + 1) = v21;
        std::vector<absl::lts_20240722::Span<int>>::push_back[abi:ne200100](a5, &v23);
      }
    }

    while (v9 < a4);
  }
}

void sub_23CB7205C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<absl::lts_20240722::Span<int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void operations_research::sat::ConstructOverlappingSets(char a1, uint64_t a2, void **a3, __n128 a4)
{
  v4 = a3;
  v8 = *a3;
  v7 = a3[1];
  if (v7 != *a3)
  {
    v9 = a3[1];
    do
    {
      v11 = *(v9 - 3);
      v9 -= 24;
      v10 = v11;
      if (v11)
      {
        *(v7 - 2) = v10;
        operator delete(v10);
      }

      v7 = v9;
    }

    while (v9 != v8);
  }

  v4[1] = v8;
  if ((a1 & 1) == 0)
  {
    v12 = *(a2 + 8);
    v13 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v12[-*a2] >> 3));
    if (v12 == *a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,false>(*a2, v12, &v67, v14, 1, a4);
  }

  v67 = -1;
  v68 = vdupq_n_s64(0x7FFFFFFFFFFFFFFEuLL);
  std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a2, &v67);
  v15 = *a2;
  v16 = -1431655765 * ((*(a2 + 8) - *a2) >> 3);
  if (v16 < 1)
  {
    return;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v20 = v15->n128_i64[3 * v18 + 1];
    if (v19 > v20)
    {
      goto LABEL_54;
    }

    v21 = v4[1];
    v22 = v4[2];
    v65 = v20;
    v63 = v16;
    if (v21 >= v22)
    {
      v50 = *v4;
      v51 = v21 - *v4;
      v52 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 3) + 1;
      if (v52 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v53 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v50) >> 3);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x555555555555555)
      {
        v54 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        if (v54 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_65:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v55 = v17;
      v56 = (8 * (v51 >> 3));
      v23 = v56 + 3;
      v57 = v56 - v51;
      *v56 = 0;
      v56[1] = 0;
      v56[2] = 0;
      memcpy(v56 - v51, v50, v51);
      *v4 = v57;
      v4[1] = v23;
      v4[2] = 0;
      if (v50)
      {
        operator delete(v50);
      }

      v17 = v55;
      v20 = v65;
      v4[1] = v23;
      v24 = v18 - v55;
      if (v18 <= v55)
      {
LABEL_49:
        v19 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_50;
      }
    }

    else
    {
      v23 = v21 + 3;
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      v4[1] = v21 + 3;
      v24 = v18 - v17;
      if (v18 <= v17)
      {
        goto LABEL_49;
      }
    }

    v25 = 6 * v17;
    v19 = 0x7FFFFFFFFFFFFFFELL;
    v64 = a2;
    do
    {
      while (1)
      {
        v26 = v4[1];
        v27 = *a2;
        v29 = *(v26 - 2);
        v28 = *(v26 - 1);
        if (v29 < v28)
        {
          break;
        }

        v33 = *(v26 - 3);
        v34 = v29 - v33;
        v35 = (v29 - v33) >> 2;
        v36 = v35 + 1;
        if ((v35 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v37 = v4;
        v38 = v28 - v33;
        if (v38 >> 1 > v36)
        {
          v36 = v38 >> 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v39 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v36;
        }

        v66 = v17;
        if (v39)
        {
          if (!(v39 >> 62))
          {
            operator new();
          }

          goto LABEL_65;
        }

        v40 = v35;
        v41 = (4 * v35);
        v42 = v27->n128_u32[v25];
        v43 = &v41[-v40];
        *v41 = v42;
        v44 = v41 + 1;
        memcpy(v43, v33, v34);
        *(v26 - 3) = v43;
        *(v26 - 2) = v44;
        *(v26 - 1) = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v4 = v37;
        a2 = v64;
        v20 = v65;
        v17 = v66;
        *(v26 - 2) = v44;
        v30 = *v64;
        v31 = *v64 + v25 * 4;
        v32 = *(v31 + 16);
        if (v32 > v65)
        {
          goto LABEL_17;
        }

LABEL_35:
        v45 = v30 + 24 * v17;
        v46 = (v17 + 1);
        v47 = *(v45 + 2);
        v48 = *v45;
        v49 = *(v31 + 16);
        *v45 = *v31;
        *(v45 + 2) = v49;
        *v31 = v48;
        *(v31 + 16) = v47;
        v17 = v46;
        v25 += 6;
        if (!--v24)
        {
          goto LABEL_36;
        }
      }

      *v29 = v27->n128_u32[v25];
      *(v26 - 2) = v29 + 4;
      v30 = *a2;
      v31 = *a2 + v25 * 4;
      v32 = *(v31 + 16);
      if (v32 <= v20)
      {
        goto LABEL_35;
      }

LABEL_17:
      if (v32 < v19)
      {
        v19 = v32;
      }

      v25 += 6;
      --v24;
    }

    while (v24);
LABEL_36:
    v23 = v4[1];
LABEL_50:
    v58 = *(v23 - 3);
    v59 = v23 - 3;
    v16 = v63;
    if (*(v23 - 2) - v58 == 4)
    {
      if (v58)
      {
        *(v23 - 2) = v58;
        v60 = v17;
        operator delete(v58);
        v20 = v65;
        v17 = v60;
      }

      v4[1] = v59;
    }

LABEL_54:
    v15 = *a2;
    if (v18 + 1 > v16)
    {
      v61 = v18 + 1;
    }

    else
    {
      v61 = v16;
    }

    v62 = v61 - 1;
    do
    {
      if (v62 == v18)
      {
        return;
      }

      if (v15[1].n128_u64[3 * v18] < v19)
      {
        v19 = v15[1].n128_i64[3 * v18];
      }

      ++v18;
    }

    while (v15->n128_u64[3 * v18 + 1] == v20);
  }

  while (v18 < v16);
}

char *operations_research::sat::GetOverlappingIntervalComponents(__int128 **a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = a2[1];
    do
    {
      v8 = *(v6 - 24);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v4 - 16) = v7;
        operator delete(v7);
      }

      v4 = v6;
    }

    while (v6 != v5);
  }

  a2[1] = v5;
  v9 = *a1;
  v10 = a1[1];
  result = *a1;
  if (*a1 != v10)
  {
    if (v10 - result == 24)
    {
      v12 = *result;
      operator new();
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,false>(result, v10, &v15, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3)), 1);
    v13 = *(*a1 + 2);
    v14 = **a1;
    operator new();
  }

  return result;
}

void operations_research::sat::AppendPairwiseRestrictions(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v6 = 0;
    LODWORD(v7) = 1;
    v8 = 2;
    do
    {
      v9 = v6;
      v6 = v7;
      v10 = v7;
      if (a2 > v7)
      {
        v11 = a1 + 72 * v9;
        v12 = v8;
        v7 = v7;
        do
        {
          v7 = v12++;
        }

        while (a2 > v7);
      }

      LODWORD(v7) = v10 + 1;
      ++v8;
    }

    while (a2 > v10 + 1);
  }
}

void operations_research::sat::anonymous namespace::AppendPairwiseRestriction(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = (v5 <= v3) | (2 * (v4 <= v6)) | (4 * (v10 <= v7)) | (8 * (v8 <= v9));
  if ((v11 & (v11 - 1)) == 0)
  {
    if (v11 <= 1)
    {
      if (!v11)
      {
        v16 = *a2;
        LODWORD(v18) = *a1;
        HIDWORD(v18) = v16;
        v19 = 0;
        std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](a3, &v18);
        return;
      }

      if (v11 == 1 && (v5 > *(a2 + 1) || v3 < *(a1 + 32)))
      {
        v12 = *a2;
        LODWORD(v18) = *a1;
        HIDWORD(v18) = v12;
        v13 = 3;
        goto LABEL_22;
      }
    }

    else if (v11 == 2)
    {
      if (v4 > *(a1 + 8) || v6 < *(a2 + 4))
      {
        v14 = *a2;
        LODWORD(v18) = *a1;
        HIDWORD(v18) = v14;
        v13 = 4;
        goto LABEL_22;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 != 8 || v8 <= *(a1 + 40) && v9 >= *(a2 + 8))
        {
          return;
        }

        v17 = *a2;
        LODWORD(v18) = *a1;
        HIDWORD(v18) = v17;
        v13 = 2;
LABEL_22:
        v19 = v13;
        std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](a3, &v18);
        return;
      }

      if (v10 > *(a2 + 5) || v7 < *(a1 + 64))
      {
        v15 = *a2;
        LODWORD(v18) = *a1;
        HIDWORD(v18) = v15;
        v13 = 1;
        goto LABEL_22;
      }
    }
  }
}

void operations_research::sat::AppendPairwiseRestrictions(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 && a4)
  {
    v10 = 0;
    for (i = 0; i < a2; v10 = ++i)
    {
      v12 = 0;
      v13 = a1 + 72 * v10;
      v14 = 1;
      do
      {
        v12 = v14++;
      }

      while (a4 > v12);
    }
  }
}

uint64_t operations_research::sat::CapacityProfile::Clear(uint64_t this)
{
  *(this + 8) = *this;
  *(this + 24) = 0;
  return this;
}

void operations_research::sat::CapacityProfile::AddRectangle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    v15 = v5;
    v16 = v6;
    v8 = *(a1 + 24);
    v11 = a2;
    v12.i64[0] = a4;
    v12.i64[1] = a5;
    v13 = 0;
    v14 = v8;
    std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](a1, &v11);
    v10 = *(a1 + 24);
    v11 = a3;
    v12 = vdupq_n_s64(0x8000000000000002);
    v13 = 1;
    v14 = v10;
    std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](a1, &v11);
    ++*(a1 + 24);
  }
}

void std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
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

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t operations_research::sat::CapacityProfile::GetBoundingArea(operations_research::sat::CapacityProfile *this, __n128 a2)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = 126 - 2 * __clz(&v4[-v3] >> 5);
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,false>(v3, v4, &v93, v6, 1, a2);
  operations_research::IntegerPriorityQueue<operations_research::sat::CapacityProfile::QueueElement,std::less<operations_research::sat::CapacityProfile::QueueElement>>::IntegerPriorityQueue(&v93, *(this + 6));
  operations_research::IntegerPriorityQueue<operations_research::sat::CapacityProfile::QueueElement,std::less<operations_research::sat::CapacityProfile::QueueElement>>::IntegerPriorityQueue(&v88, *(this + 6));
  v10 = *this;
  v9 = *(this + 1);
  if (v9 != *this)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0x8000000000000002;
    while (1)
    {
      v17 = *(v10 + 32 * v11);
      v18 = v12;
      while (v18 < (v9 - v10) >> 5)
      {
        v21 = v10 + 32 * v18;
        if (*v21 != v17)
        {
          break;
        }

        v22 = *(v21 + 24);
        if (v22 != 1)
        {
          if (!v22)
          {
            v23 = *(v21 + 28);
            v24 = -*(v21 + 8);
            v25 = v93 + 1;
            v93 = v25;
            if (v25 >= 2)
            {
              while (1)
              {
                v26 = v25 >> 1;
                v27 = (v94 + 16 * (v25 >> 1));
                v28 = v27[1];
                if (v28 >= v24)
                {
                  break;
                }

                v29 = *v27;
                v30 = v94 + 16 * v25;
                *v30 = v29;
                v30[1] = v28;
                *(v96 + v29) = v25;
                v31 = v25 > 3;
                v25 >>= 1;
                if (!v31)
                {
                  goto LABEL_34;
                }
              }
            }

            v26 = v25;
LABEL_34:
            v7 = v7 & 0xFFFFFFFF00000000 | v23;
            v48 = (v94 + 16 * v26);
            *v48 = v7;
            v48[1] = v24;
            *(v96 + v23) = v26;
            v49 = *(v21 + 28);
            v50 = *(v21 + 16);
            v51 = v88 + 1;
            v88 = v51;
            if (v51 >= 2)
            {
              while (1)
              {
                LODWORD(v19) = v51 >> 1;
                v52 = (v89 + 16 * (v51 >> 1));
                v53 = v52[1];
                if (v53 >= v50)
                {
                  break;
                }

                v54 = *v52;
                v55 = v89 + 16 * v51;
                *v55 = v54;
                v55[1] = v53;
                *(__p + v54) = v51;
                v31 = v51 > 3;
                v51 >>= 1;
                if (!v31)
                {
                  goto LABEL_39;
                }
              }
            }

            LODWORD(v19) = v51;
LABEL_39:
            v8 = v8 & 0xFFFFFFFF00000000 | v49;
            v20 = (v89 + 16 * v19);
            *v20 = v8;
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        v32 = *(v21 + 28);
        v33 = *(v96 + v32);
        *(v96 + v32) = 0;
        v34 = v93;
        v35 = --v93;
        if (v33 != v34)
        {
          v36 = v94;
          v37 = *(v94 + v34);
          v38 = v33;
          v39 = *(v94 + 2 * v34 + 1);
          if (v39 >= *(v94 + 2 * v33 + 1))
          {
            if (v33 >= 2)
            {
              while (1)
              {
                v40 = v33 >> 1;
                v36 = v94;
                v56 = (v94 + 16 * v40);
                v57 = v56[1];
                if (v57 >= v39)
                {
                  break;
                }

                v58 = *v56;
                v59 = v94 + 16 * v33;
                *v59 = v58;
                v59[1] = v57;
                *(v96 + v58) = v33;
                v31 = v33 > 3;
                v33 = v33 >> 1;
                if (!v31)
                {
                  v36 = v94;
                  v38 = v40;
                  goto LABEL_46;
                }
              }

              v38 = v33;
            }

            LODWORD(v40) = v33;
LABEL_46:
            v60 = &v36[16 * v38];
          }

          else
          {
            LODWORD(v40) = 2 * v33;
            v41 = 2 * v33;
            if (2 * v33 < v35)
            {
              do
              {
                v40 = v41 | 1;
                v36 = v94;
                v44 = v94 + 16 * v41;
                v45 = *(v44 + 1);
                v46 = v94 + 16 * v40;
                v47 = *(v46 + 1);
                if (v45 < v47)
                {
                  if (v39 >= v47)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v39 >= v45)
                  {
                    goto LABEL_50;
                  }

                  v46 = v94 + 16 * v41;
                  v47 = *(v44 + 1);
                  LODWORD(v40) = v41;
                }

                v42 = *v46;
                v43 = v94 + 16 * v33;
                *v43 = *v46;
                v43[1] = v47;
                *(v96 + v42) = v33;
                v41 = 2 * v40;
                v33 = v40;
              }

              while (2 * v40 < v35);
              v36 = v94;
              v33 = v40;
              LODWORD(v40) = 2 * v40;
              if (v41 <= v35)
              {
                goto LABEL_48;
              }

LABEL_50:
              LODWORD(v40) = v33;
              v60 = &v36[16 * v33];
            }

            else
            {
              if (v40 > v35)
              {
                goto LABEL_50;
              }

LABEL_48:
              v61 = &v36[16 * v40];
              v62 = *(v61 + 1);
              if (v39 >= v62)
              {
                goto LABEL_50;
              }

              v63 = *v61;
              v64 = &v36[16 * v33];
              *v64 = *v61;
              *(v64 + 1) = v62;
              *(v96 + v63) = v33;
              v60 = v94 + 16 * v40;
            }
          }

          *v60 = v37;
          *(v96 + v37) = v40;
        }

        v65 = *(v21 + 28);
        v66 = *(__p + v65);
        *(__p + v65) = 0;
        v67 = v88;
        v68 = --v88;
        if (v66 != v67)
        {
          v69 = v66;
          v70 = v89;
          v71 = (v89 + 16 * v67);
          v49 = *v71;
          v50 = v71[1];
          if (v50 >= *(v89 + 2 * v66 + 1))
          {
            if (v66 >= 2)
            {
              while (1)
              {
                v19 = v66 >> 1;
                v70 = v89;
                v79 = (v89 + 16 * v19);
                v80 = v79[1];
                if (v80 >= v50)
                {
                  break;
                }

                v81 = *v79;
                v82 = v89 + 16 * v66;
                *v82 = v81;
                v82[1] = v80;
                *(__p + v81) = v66;
                v31 = v66 > 3;
                v66 = v66 >> 1;
                if (!v31)
                {
                  v70 = v89;
                  v69 = v19;
                  goto LABEL_68;
                }
              }

              v69 = v66;
            }

            LODWORD(v19) = v66;
LABEL_68:
            v20 = &v70[16 * v69];
          }

          else
          {
            LODWORD(v19) = 2 * v66;
            v72 = 2 * v66;
            if (2 * v66 < v68)
            {
              do
              {
                v19 = v72 | 1;
                v70 = v89;
                v75 = v89 + 16 * v72;
                v76 = *(v75 + 1);
                v77 = v89 + 16 * v19;
                v78 = *(v77 + 1);
                if (v76 < v78)
                {
                  if (v50 >= v78)
                  {
                    goto LABEL_11;
                  }
                }

                else
                {
                  if (v50 >= v76)
                  {
                    goto LABEL_11;
                  }

                  v77 = v89 + 16 * v72;
                  v78 = *(v75 + 1);
                  LODWORD(v19) = v72;
                }

                v73 = *v77;
                v74 = v89 + 16 * v66;
                *v74 = *v77;
                v74[1] = v78;
                *(__p + v73) = v66;
                v72 = 2 * v19;
                v66 = v19;
              }

              while (2 * v19 < v68);
              v70 = v89;
              v66 = v19;
              LODWORD(v19) = 2 * v19;
              if (v72 <= v68)
              {
                goto LABEL_70;
              }

LABEL_11:
              LODWORD(v19) = v66;
              v20 = &v70[16 * v66];
            }

            else
            {
              if (v19 > v68)
              {
                goto LABEL_11;
              }

LABEL_70:
              v83 = &v70[16 * v19];
              v84 = *(v83 + 1);
              if (v50 >= v84)
              {
                goto LABEL_11;
              }

              v85 = *v83;
              v86 = &v70[16 * v66];
              *v86 = v85;
              *(v86 + 1) = v84;
              *(__p + v85) = v66;
              v20 = (v89 + 16 * v19);
            }
          }

          *v20 = v49;
LABEL_13:
          v20[1] = v50;
          *(__p + v49) = v19;
        }

LABEL_14:
        v18 = ++v12;
        v10 = *this;
        v9 = *(this + 1);
      }

      if (v88)
      {
        v16 = *(v94 + 3) + *(v89 + 3);
      }

      else
      {
        v16 = 0;
      }

      v13 += (v17 - v15) * v14;
      v11 = v12;
      v15 = v17;
      v14 = v16;
      if (v12 >= ((v9 - v10) >> 5))
      {
        goto LABEL_73;
      }
    }
  }

  v13 = 0;
LABEL_73:
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  return v13;
}

void sub_23CB7352C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::ProbingRectangle::ProbingRectangle(uint64_t result, void *a2)
{
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 96) = a2;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 160) = xmmword_23CE306D0;
  *(result + 192) = xmmword_23CE306D0;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  v2 = a2[1];
  if (*a2 != v2)
  {
    if (!((0xB6DB6DB6DB6DB6DCLL * ((v2 - *a2) >> 3)) >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CB73D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  if (*(v9 + 192) >= 2uLL)
  {
    operator delete((*(v9 + 208) - (*(v9 + 200) & 1) - 8));
    if (*(v9 + 160) < 2uLL)
    {
LABEL_3:
      v11 = *(v9 + 72);
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(v9 + 160) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(v9 + 176) - (*(v9 + 168) & 1) - 8));
  v11 = *(v9 + 72);
  if (!v11)
  {
LABEL_4:
    v12 = *v10;
    if (!*v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v9 + 80) = v11;
  operator delete(v11);
  v12 = *v10;
  if (!*v10)
  {
LABEL_5:
    v13 = *(v9 + 24);
    v14 = a1;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v9 + 56) = v12;
  operator delete(v12);
  v13 = *(v9 + 24);
  v14 = a1;
  if (!v13)
  {
LABEL_6:
    v15 = *v9;
    if (!*v9)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v9 + 32) = v13;
  operator delete(v13);
  v15 = *v9;
  if (!*v9)
  {
LABEL_7:
    _Unwind_Resume(v14);
  }

LABEL_13:
  *(v9 + 8) = v15;
  operator delete(v15);
  _Unwind_Resume(v14);
}

void std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void std::vector<operations_research::sat::ProbingRectangle::PointsForCoordinate>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
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

uint64_t operations_research::sat::ProbingRectangle::Reset(int64x2_t *this)
{
  v4 = this[10].u64[0];
  i64 = this[10].i64;
  v3 = v4;
  v5 = -1431655765 * ((*(i64 - 13) - *(i64 - 14)) >> 3);
  *(i64 - 5) = v5 - 1;
  *(i64 - 28) = 0;
  v6 = -1431655765 * ((*(i64 - 10) - *(i64 - 11)) >> 3);
  *(i64 - 8) = v6 - 1;
  *(i64 - 1) = v5 - 2;
  *(i64 - 12) = 0x100000001;
  *(i64 - 4) = v6 - 2;
  *(i64 - 6) = *(i64 - 7);
  if (v4 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(i64, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v3 < 0x80, 1u);
    v7 = this[12].i64;
    v8 = this[12].u64[0];
    if (v8 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    this[10].i64[1] = 0;
    v7 = this[12].i64;
    v8 = this[12].u64[0];
    if (v8 > 1)
    {
LABEL_3:
      absl::lts_20240722::container_internal::ClearBackingArray(v7, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v8 < 0x80, 1u);
      goto LABEL_6;
    }
  }

  this[12].i64[1] = 0;
LABEL_6:
  this[18] = 0u;
  this[19] = 0u;
  this[16] = 0u;
  this[17] = 0u;
  this[14] = 0u;
  this[15] = 0u;
  operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)1>(this);
  operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)2>(this);
  operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)3>(this);

  return operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)0>(this);
}

uint64_t operations_research::sat::ProbingRectangle::CacheShrinkDeltaEnergy(uint64_t this, uint64_t a2)
{
  v2 = *(this + 48);
  v4 = *(this + 128);
  v3 = *(this + 132);
  v5 = *(v2 + 24 * v3);
  v6 = *(v2 + 24 * *(this + 140));
  v7 = *(this + 72);
  v8 = *(v7 + 24 * *(this + 136));
  v9 = *(v7 + 24 * v4);
  if (a2)
  {
    v10 = *(this + 152);
    if (v4 <= v10)
    {
      *(this + 304) = 0;
      *(this + 288) = 0;
      return this;
    }

    v11 = *(v7 + 24 * v10);
    v12 = *(v7 + 24 * *(this + 144));
    v77 = v11 - v8;
    v76 = v9 - v12;
    v13 = (this + 256);
    v14 = (this + 272);
    v74 = (this + 304);
    v75 = (this + 288);
    v15 = v6;
    v16 = v5;
  }

  else
  {
    v17 = *(this + 156);
    if (v17 <= v3)
    {
      *(this + 296) = 0;
      *(this + 312) = 0;
      return this;
    }

    v16 = *(v2 + 24 * *(this + 148));
    v15 = *(v2 + 24 * v17);
    v77 = v16 - v5;
    v76 = v6 - v15;
    v14 = (this + 264);
    v13 = (this + 280);
    v74 = (this + 296);
    v75 = (this + 312);
    v12 = v9;
    v11 = v8;
  }

  v18 = *v13;
  v72 = *v13;
  v73 = *v14;
  v19 = this + 32 * a2;
  if (*(v19 + 168) < 2uLL)
  {
    v27 = 0;
    v26 = 0;
  }

  else
  {
    v79 = v8;
    v20 = v19 + 160;
    v21 = (v19 + 160);
    v23 = *v21;
    v22 = (v21 + 2);
    if (v23 >= 2)
    {
      v24 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (*v24 <= -2)
      {
        do
        {
          v25 = __clz(__rbit64((*v24 | ~(*v24 >> 7)) & 0x101010101010101)) >> 3;
          v24 = (v24 + v25);
          v22 += v25;
        }

        while (*v24 < -1);
      }
    }

    else
    {
      v24 = &absl::lts_20240722::container_internal::kSooControl;
    }

    v26 = 0;
    v27 = 0;
    v78 = **(this + 96);
    v80 = v6;
    v81 = v5;
    do
    {
      v28 = (v78 + 56 * *v22);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[5];
      v32 = v28[6];
      v33 = v31 + v30;
      if (v31 + v30 >= v6)
      {
        v34 = v6;
      }

      else
      {
        v34 = v31 + v30;
      }

      if (v30 <= v5)
      {
        v35 = v5;
      }

      else
      {
        v35 = v28[1];
      }

      v36 = v34 - v35;
      if (v6 >= v29)
      {
        v37 = v28[2];
      }

      else
      {
        v37 = v6;
      }

      v38 = v29 - v31;
      if (v38 <= v5)
      {
        v39 = v5;
      }

      else
      {
        v39 = v38;
      }

      if (v37 - v39 < v36)
      {
        v36 = v37 - v39;
      }

      v40 = v28[3];
      v41 = v28[4];
      v42 = v32 + v40;
      if (v32 + v40 >= v9)
      {
        v43 = v9;
      }

      else
      {
        v43 = v32 + v40;
      }

      if (v40 <= v79)
      {
        v44 = v79;
      }

      else
      {
        v44 = v40;
      }

      if (v9 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v9;
      }

      v46 = v41 - v32;
      v47 = a2;
      if (v46 <= v79)
      {
        v48 = v79;
      }

      else
      {
        v48 = v46;
      }

      v49 = v45 - v48;
      if (v45 - v48 >= v43 - v44)
      {
        v49 = v43 - v44;
      }

      if (v40 <= v11)
      {
        v40 = v11;
      }

      v50 = v43 - v40;
      if (v46 <= v11)
      {
        v51 = v11;
      }

      else
      {
        v51 = v46;
      }

      v52 = v45 - v51;
      if (v52 >= v50)
      {
        v52 = v50;
      }

      if (v42 >= v12)
      {
        v53 = v12;
      }

      else
      {
        v53 = v42;
      }

      v54 = v53 - v44;
      if (v12 >= v41)
      {
        v55 = v41;
      }

      else
      {
        v55 = v12;
      }

      v56 = v55 - v48;
      if (v56 < v54)
      {
        v54 = v56;
      }

      if (v30 <= v16)
      {
        v57 = v16;
      }

      else
      {
        v57 = v30;
      }

      v58 = v34 - v57;
      if (v38 <= v16)
      {
        v59 = v16;
      }

      else
      {
        v59 = v38;
      }

      v60 = v37 - v59;
      if (v60 >= v58)
      {
        v60 = v58;
      }

      if (v33 >= v15)
      {
        v61 = v15;
      }

      else
      {
        v61 = v33;
      }

      this = v61 - v35;
      if (v15 >= v29)
      {
        v62 = v29;
      }

      else
      {
        v62 = v15;
      }

      v63 = v62 - v39;
      a2 = v47;
      if (v63 >= this)
      {
        v63 = this;
      }

      v64 = v36 & ~(v36 >> 63);
      v65 = v49 & ~(v49 >> 63);
      if (v47)
      {
        v66 = (v54 & ~(v54 >> 63)) * v64;
      }

      else
      {
        v66 = v65 * (v63 & ~(v63 >> 63));
      }

      v67 = (v52 & ~(v52 >> 63)) * v64;
      if (v47)
      {
        v68 = v67;
      }

      else
      {
        v68 = v65 * (v60 & ~(v60 >> 63));
      }

      v70 = *(v24 + 1);
      v24 = (v24 + 1);
      LOBYTE(v69) = v70;
      ++v22;
      if (v70 <= -2)
      {
        do
        {
          v71 = __clz(__rbit64((*v24 | ~(*v24 >> 7)) & 0x101010101010101)) >> 3;
          v24 = (v24 + v71);
          v22 += v71;
          v69 = *v24;
        }

        while (v69 < -1);
      }

      v26 = v65 * v64 + v26 - v68;
      v27 = v65 * v64 + v27 - v66;
      v6 = v80;
      v5 = v81;
    }

    while (v69 != 255);
  }

  *v74 = v26 + v73 * v77;
  *v75 = v27 + v72 * v76;
  return this;
}

void operations_research::sat::FindRectanglesWithEnergyConflictMC(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = a3;
  v106[3] = *MEMORY[0x277D85DE8];
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  operations_research::sat::ProbingRectangle::ProbingRectangle(&v75, a1);
  if ((atomic_load_explicit(&qword_27E25F630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E25F630))
  {
    operator new();
  }

  v72 = 0;
  v104 = 0;
  v102 = 0;
  v8 = 1.0 / a4;
  while (v84 > v90 || v91 > v85)
  {
    v9 = v82;
    if (v82 <= v83)
    {
      if (v83 * a5 < v82)
      {
        v69.n128_u64[0] = *(v78 + 3 * v85);
        v69.n128_u64[1] = *(v78 + 3 * v87);
        v70 = v80[3 * v86];
        v71 = v80[3 * v84];
        std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](v7 + 24, &v69);
      }
    }

    else
    {
      v69.n128_u64[0] = *(v78 + 3 * v85);
      v69.n128_u64[1] = *(v78 + 3 * v87);
      v70 = v80[3 * v86];
      v71 = v80[3 * v84];
      std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](v7, &v69);
    }

    if (!v9)
    {
      break;
    }

    if (v72)
    {
      operator delete(__p);
      v72 = 0;
      if ((v104 & 1) == 0)
      {
LABEL_13:
        v104 = 0;
        if (v84 <= v90)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v72 = 0;
      if ((v104 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    operator delete(v105);
    v104 = 0;
    if (v84 <= v90)
    {
      goto LABEL_30;
    }

LABEL_17:
    v10 = v72;
    if (v72)
    {
      v11 = v74;
    }

    else
    {
      v11 = 4;
    }

    if (v72 >> 1 == v11)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v72);
    }

    p_p = __p;
    if ((v72 & 1) == 0)
    {
      p_p = &__p;
    }

    p_p[v72 >> 1] = 0;
    v72 = v10 + 2;
    v13 = v80[3 * v86];
    v14 = (v80[3 * v84] - v80[3 * v88]) * (*(v78 + 3 * v85) - *(v78 + 3 * v87));
    v69.n128_u64[0] = v98 + v14;
    v15 = v104;
    if (v104)
    {
      v16 = v106[0];
    }

    else
    {
      v16 = 4;
    }

    if (v104 >> 1 == v16)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v104);
    }

    v17 = v105;
    if ((v104 & 1) == 0)
    {
      v17 = &v105;
    }

    v17[v104 >> 1] = (v98 + v14);
    v104 = v15 + 2;
LABEL_30:
    if (v91 > v85)
    {
      v18 = v72;
      if (v72)
      {
        v19 = v74;
      }

      else
      {
        v19 = 4;
      }

      if (v72 >> 1 == v19)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v72);
      }

      v20 = __p;
      if ((v72 & 1) == 0)
      {
        v20 = &__p;
      }

      v20[v72 >> 1] = 1;
      v72 = v18 + 2;
      v21 = *(v78 + 3 * v87);
      v22 = (*(v78 + 3 * v89) - *(v78 + 3 * v85)) * (v80[3 * v86] - v80[3 * v84]);
      v69.n128_u64[0] = v99 + v22;
      v23 = v104;
      if (v104)
      {
        v24 = v106[0];
      }

      else
      {
        v24 = 4;
      }

      if (v104 >> 1 == v24)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v104);
      }

      v25 = v105;
      if ((v104 & 1) == 0)
      {
        v25 = &v105;
      }

      v25[v104 >> 1] = (v99 + v22);
      v104 = v23 + 2;
    }

    if (v84 > v90)
    {
      v26 = v72;
      if (v72)
      {
        v27 = v74;
      }

      else
      {
        v27 = 4;
      }

      if (v72 >> 1 == v27)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v72);
      }

      v28 = __p;
      if ((v72 & 1) == 0)
      {
        v28 = &__p;
      }

      v28[v72 >> 1] = 2;
      v72 = v26 + 2;
      v29 = v80[3 * v84];
      v30 = (v80[3 * v90] - v80[3 * v86]) * (*(v78 + 3 * v85) - *(v78 + 3 * v87));
      v69.n128_u64[0] = v100 + v30;
      v31 = v104;
      if (v104)
      {
        v32 = v106[0];
      }

      else
      {
        v32 = 4;
      }

      if (v104 >> 1 == v32)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v104);
      }

      v33 = v105;
      if ((v104 & 1) == 0)
      {
        v33 = &v105;
      }

      v33[v104 >> 1] = (v100 + v30);
      v104 = v31 + 2;
    }

    if (v91 > v85)
    {
      v34 = v72;
      if (v72)
      {
        v35 = v74;
      }

      else
      {
        v35 = 4;
      }

      if (v72 >> 1 == v35)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v72);
      }

      v36 = __p;
      if ((v72 & 1) == 0)
      {
        v36 = &__p;
      }

      v36[v72 >> 1] = 3;
      v72 = v34 + 2;
      v37 = *(v78 + 3 * v85);
      v38 = (*(v78 + 3 * v87) - *(v78 + 3 * v91)) * (v80[3 * v86] - v80[3 * v84]);
      v69.n128_u64[0] = v101 + v38;
      v39 = v104;
      if (v104)
      {
        v40 = v106[0];
      }

      else
      {
        v40 = 4;
      }

      if (v104 >> 1 == v40)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v104);
      }

      v41 = v105;
      if ((v104 & 1) == 0)
      {
        v41 = &v105;
      }

      v41[v104 >> 1] = (v101 + v38);
      v104 = v39 + 2;
    }

    v42 = v105;
    v43 = v104 & 1;
    if (v104)
    {
      v44 = v105;
    }

    else
    {
      v44 = &v105;
    }

    v45 = v104 >> 1;
    v46 = v105 + 8;
    if ((v104 & 1) == 0)
    {
      v46 = v106;
    }

    if ((v104 & 0x3FFFFFFFFFFFFFFELL) != 0)
    {
      v47 = &v44[v45];
      if (v46 != v47)
      {
        v48 = *v44;
        v49 = v46;
        do
        {
          v51 = *v49;
          v49 += 8;
          v50 = v51;
          if (v51 < v48)
          {
            v48 = v50;
            v44 = v46;
          }

          v46 = v49;
        }

        while (v49 != v47);
      }
    }

    v52 = *v44;
    if (v102)
    {
      operator delete(v103[0]);
      v42 = v105;
      v43 = v104 & 1;
      v45 = v104 >> 1;
    }

    v102 = 0;
    if (v43)
    {
      v53 = v42;
    }

    else
    {
      v53 = &v105;
    }

    if ((v45 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v54 = 8 * v45;
      do
      {
        v55 = ((5 * &(*v53)[-v52]) * v8 + 50.0);
        if (v55 >= 100)
        {
          v55 = 100;
        }

        v56 = (*_MergedGlobals_111 + 8 * (v55 & ~(v55 >> 63)));
        v57 = v102;
        if (v102)
        {
          v58 = v103[1];
        }

        else
        {
          v58 = 4;
        }

        if (v102 >> 1 == v58)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<double,4ul,std::allocator<double>>::EmplaceBackSlow<double const&>(&v102);
        }

        v59 = v103[0];
        if ((v102 & 1) == 0)
        {
          v59 = v103;
        }

        v59[v102 >> 1] = *v56;
        v102 = v57 + 2;
        ++v53;
        v54 -= 8;
      }

      while (v54);
      v60 = v102;
      v7 = a3;
    }

    else
    {
      v60 = 0;
    }

    if (v60)
    {
      v61 = v103[0];
    }

    else
    {
      v61 = v103;
    }

    v69 = *a2;
    v70 = a2[1].n128_u64[0];
    v62 = operations_research::sat::WeightedPick(v61, v60 >> 1, &v69, v69);
    v63 = __p;
    if ((v72 & 1) == 0)
    {
      v63 = &__p;
    }

    v64 = v63[v62];
    if (v64 > 1)
    {
      if (v64 == 2)
      {
        operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)2>(&v75);
      }

      else if (v64 == 3)
      {
        operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)3>(&v75);
      }
    }

    else if (v64)
    {
      if (v64 == 1)
      {
        operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)1>(&v75);
      }
    }

    else
    {
      operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)0>(&v75);
    }
  }

  if (v82 > v83)
  {
    v69.n128_u64[0] = *(v78 + 3 * v85);
    v69.n128_u64[1] = *(v78 + 3 * v87);
    v70 = v80[3 * v86];
    v71 = v80[3 * v84];
    std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](v7, &v69);
  }

  if (v102)
  {
    operator delete(v103[0]);
    if (v104)
    {
      goto LABEL_140;
    }

LABEL_127:
    if ((v72 & 1) == 0)
    {
      goto LABEL_128;
    }

LABEL_141:
    operator delete(__p);
    if (v95 >= 2)
    {
      goto LABEL_142;
    }

LABEL_129:
    if (v92 < 2)
    {
      goto LABEL_130;
    }

LABEL_143:
    operator delete((v94 - (v93 & 1) - 8));
    v65 = v80;
    if (v80)
    {
LABEL_131:
      v81 = v65;
      operator delete(v65);
    }
  }

  else
  {
    if ((v104 & 1) == 0)
    {
      goto LABEL_127;
    }

LABEL_140:
    operator delete(v105);
    if (v72)
    {
      goto LABEL_141;
    }

LABEL_128:
    if (v95 < 2)
    {
      goto LABEL_129;
    }

LABEL_142:
    operator delete((v97 - (v96 & 1) - 8));
    if (v92 >= 2)
    {
      goto LABEL_143;
    }

LABEL_130:
    v65 = v80;
    if (v80)
    {
      goto LABEL_131;
    }
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v75.i64[0])
  {
    v75.i64[1] = v75.i64[0];
    operator delete(v75.i64[0]);
  }

  v66 = *MEMORY[0x277D85DE8];
}

void sub_23CB750C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, operations_research::sat::LinearExpr *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  MEMORY[0x23EED9460](v24, 0x80C40D6874129);
  __cxa_guard_abort(&qword_27E25F630);
  operations_research::sat::ProbingRectangle::~ProbingRectangle(&a24);
  operations_research::sat::LinearExpr::~LinearExpr(a9);
  _Unwind_Resume(a1);
}

void sub_23CB75108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, operations_research::sat::LinearExpr *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *__p, uint64_t a23, char a24)
{
  if (*(v25 - 200))
  {
    operator delete(*(v24 + 328));
    if ((*(v25 - 160) & 1) == 0)
    {
LABEL_3:
      if ((a21 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v25 - 160) & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v24 + 368));
  if ((a21 & 1) == 0)
  {
LABEL_5:
    operations_research::sat::ProbingRectangle::~ProbingRectangle(&a24);
    operations_research::sat::LinearExpr::~LinearExpr(a9);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(__p);
  goto LABEL_5;
}

void operations_research::sat::anonymous namespace::GetExpTable(operations_research::sat::_anonymous_namespace_ *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

void sub_23CB75770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB75784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  std::vector<std::string>::~vector[abi:ne200100]((v4 - 112));
  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
  if (v9 > 0x1555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 4 * (v8 >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = v12 + 12;
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

void operations_research::sat::ProbingRectangle::~ProbingRectangle(operations_research::sat::ProbingRectangle *this)
{
  if (*(this + 24) >= 2uLL)
  {
    operator delete((*(this + 26) - (*(this + 25) & 1) - 8));
    if (*(this + 20) < 2uLL)
    {
LABEL_3:
      v2 = *(this + 9);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (*(this + 20) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(this + 22) - (*(this + 21) & 1) - 8));
  v2 = *(this + 9);
  if (v2)
  {
LABEL_4:
    *(this + 10) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = a2 - 1;
  v74 = a2 - 2;
  v12 = a2 - 3;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = a2 - v13;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if (a2[-1].n128_u64[1] < v13->n128_u64[1])
      {
        v98 = *v13;
        *v13 = a2[-1];
        result = v98;
        a2[-1] = v98;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v58 = v13 + 1;
      v60 = v13 == a2 || v58 == a2;
      if (a5)
      {
        if (!v60)
        {
          v61 = 0;
          v62 = v13;
          do
          {
            v64 = v62->n128_i64[1];
            v65 = v62[1].n128_i64[1];
            v62 = v58;
            if (v65 < v64)
            {
              v66 = v58->n128_u64[0];
              v67 = v61;
              do
              {
                result = *(v13 + v67);
                *(v13 + v67 + 16) = result;
                if (!v67)
                {
                  v63 = v13;
                  goto LABEL_125;
                }

                v68 = *(&v13->n128_i64[-1] + v67);
                v67 -= 16;
              }

              while (v65 < v68);
              v63 = (v13 + v67 + 16);
LABEL_125:
              v63->n128_u64[0] = v66;
              v63->n128_u64[1] = v65;
            }

            v58 = v62 + 1;
            v61 += 16;
          }

          while (&v62[1] != a2);
        }
      }

      else if (!v60)
      {
        do
        {
          v69 = a1->n128_i64[1];
          v70 = a1[1].n128_i64[1];
          a1 = v58;
          if (v70 < v69)
          {
            v71 = v58->n128_u64[0];
            v72 = a1;
            do
            {
              result = v72[-1];
              *v72 = result;
              v73 = v72[-2].n128_i64[1];
              --v72;
            }

            while (v70 < v73);
            v72->n128_u64[0] = v71;
            v72->n128_u64[1] = v70;
          }

          v58 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,operations_research::sat::TaskTime *>(v13, a2, a2);
      }

      return result;
    }

    v15 = &v13[v14 >> 1];
    v16 = a2[-1].n128_i64[1];
    if (v14 < 0x81)
    {
      v18 = v13->n128_i64[1];
      if (v18 < v15->n128_u64[1])
      {
        if (v16 < v18)
        {
          v76 = *v15;
          *v15 = *v11;
          goto LABEL_36;
        }

        v85 = *v15;
        *v15 = *v13;
        result = v85;
        *v13 = v85;
        if (a2[-1].n128_u64[1] < v13->n128_u64[1])
        {
          v76 = *v13;
          *v13 = *v11;
LABEL_36:
          result = v76;
          *v11 = v76;
        }

LABEL_37:
        --a4;
        v19 = v13->n128_i64[1];
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v79 = *v13;
      *v13 = *v11;
      result = v79;
      *v11 = v79;
      if (v13->n128_u64[1] >= v15->n128_u64[1])
      {
        goto LABEL_37;
      }

      v80 = *v15;
      *v15 = *v13;
      result = v80;
      *v13 = v80;
      --a4;
      v19 = v13->n128_i64[1];
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v13[-1].n128_u64[1] < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= a2[-1].n128_u64[1])
      {
        v45 = v13 + 1;
        do
        {
          v13 = v45;
          if (v45 >= a2)
          {
            break;
          }

          v46 = v45->n128_i64[1];
          ++v45;
        }

        while (v19 >= v46);
      }

      else
      {
        v43 = v13;
        do
        {
          v13 = v43 + 1;
          v44 = v43[1].n128_i64[1];
          ++v43;
        }

        while (v19 >= v44);
      }

      v47 = a2;
      if (v13 < a2)
      {
        v48 = a2;
        do
        {
          v47 = v48 - 1;
          v49 = v48[-1].n128_i64[1];
          --v48;
        }

        while (v19 < v49);
      }

      v50 = a1->n128_u64[0];
      while (v13 < v47)
      {
        v97 = *v13;
        *v13 = *v47;
        result = v97;
        *v47 = v97;
        do
        {
          v51 = v13[1].n128_i64[1];
          ++v13;
        }

        while (v19 >= v51);
        do
        {
          v52 = v47[-1].n128_i64[1];
          --v47;
        }

        while (v19 < v52);
      }

      v53 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v53;
        *a1 = *v53;
      }

      a5 = 0;
      v13[-1].n128_u64[0] = v50;
      v13[-1].n128_u64[1] = v19;
    }

    else
    {
      v17 = v15->n128_i64[1];
      if (v17 >= v13->n128_u64[1])
      {
        if (v16 < v17)
        {
          v77 = *v15;
          *v15 = *v11;
          *v11 = v77;
          if (v15->n128_u64[1] < v13->n128_u64[1])
          {
            v78 = *v13;
            *v13 = *v15;
            *v15 = v78;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v81 = *v13;
          *v13 = *v15;
          *v15 = v81;
          if (a2[-1].n128_u64[1] >= v15->n128_u64[1])
          {
            goto LABEL_28;
          }

          v75 = *v15;
          *v15 = *v11;
        }

        else
        {
          v75 = *v13;
          *v13 = *v11;
        }

        *v11 = v75;
      }

LABEL_28:
      v20 = v15 - 1;
      v21 = v15[-1].n128_i64[1];
      v22 = a2[-2].n128_i64[1];
      if (v21 >= v13[1].n128_u64[1])
      {
        if (v22 < v21)
        {
          v83 = *v20;
          *v20 = *v74;
          *v74 = v83;
          if (v15[-1].n128_u64[1] < v13[1].n128_u64[1])
          {
            v84 = v13[1];
            v13[1] = *v20;
            *v20 = v84;
          }
        }
      }

      else
      {
        if (v22 >= v21)
        {
          v86 = v13[1];
          v13[1] = *v20;
          *v20 = v86;
          if (a2[-2].n128_u64[1] >= v15[-1].n128_u64[1])
          {
            goto LABEL_42;
          }

          v82 = *v20;
          v23 = a2 - 2;
          *v20 = *v74;
        }

        else
        {
          v82 = v13[1];
          v23 = a2 - 2;
          v13[1] = *v74;
        }

        *v23 = v82;
      }

LABEL_42:
      v24 = v15[1].n128_i64[1];
      v25 = a2[-3].n128_i64[1];
      if (v24 >= v13[2].n128_u64[1])
      {
        if (v25 < v24)
        {
          v88 = v15[1];
          v15[1] = *v12;
          *v12 = v88;
          if (v15[1].n128_u64[1] < v13[2].n128_u64[1])
          {
            v89 = v13[2];
            v13[2] = v15[1];
            v15[1] = v89;
          }
        }
      }

      else
      {
        if (v25 >= v24)
        {
          v90 = v13[2];
          v13[2] = v15[1];
          v15[1] = v90;
          if (a2[-3].n128_u64[1] >= v15[1].n128_u64[1])
          {
            goto LABEL_51;
          }

          v87 = v15[1];
          v15[1] = *v12;
        }

        else
        {
          v87 = v13[2];
          v13[2] = *v12;
        }

        *v12 = v87;
      }

LABEL_51:
      v26 = v15->n128_i64[1];
      v27 = v15[1].n128_i64[1];
      if (v26 >= v15[-1].n128_u64[1])
      {
        if (v27 < v26)
        {
          v92 = *v15;
          *v15 = v15[1];
          v15[1] = v92;
          if (v15->n128_u64[1] < v15[-1].n128_u64[1])
          {
            v93 = *v20;
            *v20 = *v15;
            *v15 = v93;
          }
        }
      }

      else
      {
        if (v27 >= v26)
        {
          v94 = *v20;
          *v20 = *v15;
          *v15 = v94;
          if (v15[1].n128_u64[1] >= v15->n128_u64[1])
          {
            goto LABEL_60;
          }

          v91 = *v15;
          *v15 = v15[1];
        }

        else
        {
          v91 = *v20;
          *v20 = v15[1];
        }

        v15[1] = v91;
      }

LABEL_60:
      v95 = *v13;
      *v13 = *v15;
      result = v95;
      *v15 = v95;
      --a4;
      v19 = v13->n128_i64[1];
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v28 = 0;
      v29 = v13->n128_u64[0];
      do
      {
        v30 = v13[++v28].n128_i64[1];
      }

      while (v30 < v19);
      v31 = &v13[v28];
      v32 = a2;
      if (v28 == 1)
      {
        v35 = a2;
        while (v31 < v35)
        {
          v33 = v35 - 1;
          v36 = v35[-1].n128_i64[1];
          --v35;
          if (v36 < v19)
          {
            goto LABEL_70;
          }
        }

        v33 = v35;
        v13 = v31;
      }

      else
      {
        do
        {
          v33 = v32 - 1;
          v34 = v32[-1].n128_i64[1];
          --v32;
        }

        while (v34 >= v19);
LABEL_70:
        v13 = v31;
        if (v31 < v33)
        {
          v37 = v33;
          do
          {
            v96 = *v13;
            *v13 = *v37;
            result = v96;
            *v37 = v96;
            do
            {
              v38 = v13[1].n128_i64[1];
              ++v13;
            }

            while (v38 < v19);
            do
            {
              v39 = v37[-1].n128_i64[1];
              --v37;
            }

            while (v39 >= v19);
          }

          while (v13 < v37);
        }
      }

      v40 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v40;
        *a1 = *v40;
      }

      v13[-1].n128_u64[0] = v29;
      v13[-1].n128_u64[1] = v19;
      if (v31 < v33)
      {
        goto LABEL_81;
      }

      v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *>(a1, v13 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *>(v13, a2, v42))
      {
        a2 = v13 - 1;
        if (!v41)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v41)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(a1, &v13[-1], a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v56 = v13[1].n128_i64[1];
      v57 = v13[2].n128_i64[1];
      if (v56 >= v13->n128_u64[1])
      {
        if (v57 < v56)
        {
          v102 = v13[1];
          v13[1] = v13[2];
          result = v102;
          v13[2] = v102;
          if (v13[1].n128_u64[1] < v13->n128_u64[1])
          {
            v103 = *v13;
            *v13 = v13[1];
            result = v103;
            v13[1] = v103;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v100 = *v13;
          *v13 = v13[2];
          goto LABEL_153;
        }

        v105 = *v13;
        *v13 = v13[1];
        result = v105;
        v13[1] = v105;
        if (v13[2].n128_u64[1] < v13[1].n128_u64[1])
        {
          v100 = v13[1];
          v13[1] = v13[2];
LABEL_153:
          result = v100;
          v13[2] = v100;
        }
      }

      if (a2[-1].n128_u64[1] >= v13[2].n128_u64[1])
      {
        return result;
      }

      v106 = v13[2];
      v13[2] = *v11;
      result = v106;
      *v11 = v106;
      if (v13[2].n128_u64[1] >= v13[1].n128_u64[1])
      {
        return result;
      }

      v107 = v13[1];
      v13[1] = v13[2];
      result = v107;
      v13[2] = v107;
LABEL_157:
      if (v13[1].n128_u64[1] < v13->n128_u64[1])
      {
        v108 = *v13;
        *v13 = v13[1];
        result = v108;
        v13[1] = v108;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,0>(v13, v13 + 1, v13 + 2, v13 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v54 = v13[1].n128_i64[1];
  v55 = a2[-1].n128_i64[1];
  if (v54 >= v13->n128_u64[1])
  {
    if (v55 >= v54)
    {
      return result;
    }

    v101 = v13[1];
    v13[1] = *v11;
    result = v101;
    *v11 = v101;
    goto LABEL_157;
  }

  if (v55 >= v54)
  {
    v104 = *v13;
    *v13 = v13[1];
    result = v104;
    v13[1] = v104;
    if (a2[-1].n128_u64[1] >= v13[1].n128_u64[1])
    {
      return result;
    }

    v99 = v13[1];
    v13[1] = *v11;
  }

  else
  {
    v99 = *v13;
    *v13 = *v11;
  }

  result = v99;
  *v11 = v99;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_i64[1];
      v8 = a2[-1].n128_i64[1];
      if (v7 < a1->n128_u64[1])
      {
        if (v8 >= v7)
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
          if (a2[-1].n128_u64[1] >= a1[1].n128_u64[1])
          {
            return 1;
          }

          v9 = a1[1];
          a1[1] = *v6;
        }

        else
        {
          v9 = *a1;
          *a1 = *v6;
        }

        *v6 = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
      if (a1[1].n128_u64[1] >= a1->n128_u64[1])
      {
        return 1;
      }

LABEL_52:
      v38 = *a1;
      *a1 = a1[1];
      a1[1] = v38;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

LABEL_14:
      v10 = a1 + 2;
      v11 = a1->n128_i64[1];
      v12 = a1[1].n128_i64[1];
      v13 = a1[2].n128_i64[1];
      if (v12 >= v11)
      {
        if (v13 < v12)
        {
          v20 = a1[1];
          a1[1] = *v10;
          *v10 = v20;
          if (a1[1].n128_u64[1] < v11)
          {
            v21 = *a1;
            *a1 = a1[1];
            a1[1] = v21;
          }
        }
      }

      else
      {
        if (v13 >= v12)
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
          if (v13 >= a1[1].n128_u64[1])
          {
            goto LABEL_35;
          }

          v14 = a1[1];
          a1[1] = *v10;
        }

        else
        {
          v14 = *a1;
          *a1 = *v10;
        }

        *v10 = v14;
      }

LABEL_35:
      v26 = a1 + 3;
      if (&a1[3] == a2)
      {
        return 1;
      }

      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v10->n128_i64[1];
        v30 = v26->n128_i64[1];
        if (v30 < v29)
        {
          break;
        }

LABEL_38:
        v10 = v26;
        v27 += 16;
        if (++v26 == a2)
        {
          return 1;
        }
      }

      v31 = v26->n128_u64[0];
      v32 = v27;
      do
      {
        *(a1 + v32 + 48) = *(a1 + v32 + 32);
        if (v32 == -32)
        {
          a1->n128_u64[0] = v31;
          a1->n128_u64[1] = v30;
          if (++v28 != 8)
          {
            goto LABEL_38;
          }

          return &v26[1] == a2;
        }

        v33 = *(&a1[1].n128_i64[1] + v32);
        v32 -= 16;
      }

      while (v30 < v33);
      v34 = a1 + v32;
      *(v34 + 6) = v31;
      *(v34 + 7) = v30;
      if (++v28 != 8)
      {
        goto LABEL_38;
      }

      return &v26[1] == a2;
    }

    v15 = a1->n128_i64[1];
    v16 = a1[1].n128_i64[1];
    v17 = a1[2].n128_i64[1];
    if (v16 >= v15)
    {
      if (v17 < v16)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_u64[1] < v15)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }
    }

    else
    {
      if (v17 < v16)
      {
        v18 = *a1;
        *a1 = a1[2];
LABEL_48:
        a1[2] = v18;
        goto LABEL_49;
      }

      v35 = *a1;
      *a1 = a1[1];
      a1[1] = v35;
      if (v17 < a1[1].n128_u64[1])
      {
        v18 = a1[1];
        a1[1] = a1[2];
        goto LABEL_48;
      }
    }

LABEL_49:
    if (a2[-1].n128_u64[1] >= a1[2].n128_u64[1])
    {
      return 1;
    }

    v36 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v36;
    if (a1[2].n128_u64[1] >= a1[1].n128_u64[1])
    {
      return 1;
    }

    v37 = a1[1];
    a1[1] = a1[2];
    a1[2] = v37;
    if (a1[1].n128_u64[1] >= a1->n128_u64[1])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].n128_u64[1] >= a1->n128_u64[1])
  {
    return 1;
  }

  v5 = *a1;
  *a1 = a2[-1];
  a2[-1] = v5;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,operations_research::sat::TaskTime *>(char *a1, char *a2, char *a3)
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
      v7 = 16 * v5;
      if (v4 >= (16 * v5) >> 4)
      {
        v8 = (v7 >> 3) | 1;
        v9 = &a1[16 * v8];
        if ((v7 >> 3) + 2 < v3)
        {
          v10 = v9[3];
          v11 = v9[1];
          v9 += 2 * (v11 < v10);
          if (v11 < v10)
          {
            v8 = (v7 >> 3) + 2;
          }
        }

        v12 = &a1[v7];
        v13 = v12[1];
        if (v9[1] >= v13)
        {
          v14 = *v12;
          do
          {
            v15 = v12;
            v12 = v9;
            *v15 = *v9;
            if (v4 < v8)
            {
              break;
            }

            v16 = (2 * v8) | 1;
            v9 = &a1[16 * v16];
            v17 = 2 * v8 + 2;
            if (v17 < v3)
            {
              v18 = v9[3];
              v19 = v9[1];
              v9 += 2 * (v19 < v18);
              if (v19 < v18)
              {
                v16 = v17;
              }
            }

            v8 = v16;
          }

          while (v9[1] >= v13);
          *v12 = v14;
          v12[1] = v13;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v21 = *i;
          *i = *a1;
          *a1 = v21;
        }

        i += 16;
      }

      while (i != a3);
      goto LABEL_42;
    }

    for (i = a2; i != a3; i += 16)
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v22 = *i;
        *i = *a1;
        *a1 = v22;
        if (a2 - a1 == 32)
        {
          v23 = (a1 + 16);
          v24 = 1;
          v25 = *(a1 + 1);
          if (*(a1 + 3) >= v25)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v23 = &a1[16 * (*(a1 + 3) < *(a1 + 5)) + 16];
          if (*(a1 + 3) >= *(a1 + 5))
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          v25 = *(a1 + 1);
          if (*(v23 + 8) >= v25)
          {
LABEL_35:
            v26 = *a1;
            v27 = a1;
            do
            {
              v28 = v27;
              v27 = v23;
              *v28 = *v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[16 * v29];
              v30 = 2 * v24 + 2;
              if (v30 < v3)
              {
                v31 = *(v23 + 24);
                v32 = *(v23 + 8);
                v23 += 16 * (v32 < v31);
                if (v32 < v31)
                {
                  v29 = v30;
                }
              }

              v24 = v29;
            }

            while (*(v23 + 8) >= v25);
            *v27 = v26;
            v27[1] = v25;
          }
        }
      }
    }
  }

LABEL_42:
  if (v3 >= 2)
  {
    do
    {
      v34 = 0;
      v50 = *a1;
      v35 = (v3 - 2) >> 1;
      v36 = a1;
      do
      {
        while (1)
        {
          v41 = &v36[16 * v34];
          v40 = (v41 + 16);
          v42 = (2 * v34) | 1;
          v34 = 2 * v34 + 2;
          if (v34 < v3)
          {
            break;
          }

          v34 = v42;
          *v36 = *v40;
          v36 = v41 + 16;
          if (v42 > v35)
          {
            goto LABEL_54;
          }
        }

        v37 = *(v41 + 5);
        v38 = *(v41 + 3);
        v39 = (v41 + 32);
        if (v38 >= v37)
        {
          v34 = v42;
        }

        else
        {
          v40 = v39;
        }

        *v36 = *v40;
        v36 = v40;
      }

      while (v34 <= v35);
LABEL_54:
      a2 -= 16;
      if (v40 == a2)
      {
        *v40 = v50;
      }

      else
      {
        *v40 = *a2;
        *a2 = v50;
        v43 = (v40 - a1 + 16) >> 4;
        v6 = v43 < 2;
        v44 = v43 - 2;
        if (!v6)
        {
          v45 = v44 >> 1;
          v46 = &a1[16 * (v44 >> 1)];
          v47 = v40[1];
          if (v46[1] < v47)
          {
            v48 = *v40;
            do
            {
              v49 = v40;
              v40 = v46;
              *v49 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[16 * v45];
            }

            while (v46[1] < v47);
            *v40 = v48;
            v40[1] = v47;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,false>(__n128 *a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = (a2 - 24);
  v108 = a2 - 48;
  v12 = a2 - 72;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = &a2[-v13];
    v15 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v13] >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (*(a2 - 2) < *(v13 + 8))
      {
        v166 = *(v13 + 16);
        v132 = *v13;
        v81 = *(a2 - 24);
        *(v13 + 16) = *(a2 - 1);
        *v13 = v81;
        result = v132;
        *(a2 - 1) = v166;
        *(a2 - 24) = v132;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 575)
    {
      v87 = (v13 + 24);
      v89 = v13 == a2 || v87 == a2;
      if (a5)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v13;
          do
          {
            v93 = v87;
            v94 = v91[4];
            if (v94 < v91[1])
            {
              v95 = *v93;
              v96 = v91[5];
              v97 = v90;
              do
              {
                v98 = v13 + v97;
                result = *(v13 + v97);
                *(v98 + 24) = result;
                *(v98 + 40) = *(v13 + v97 + 16);
                if (!v97)
                {
                  v92 = v13;
                  goto LABEL_125;
                }

                v97 -= 24;
              }

              while (v94 < *(v98 - 16));
              v92 = (v13 + v97 + 24);
LABEL_125:
              *v92 = v95;
              v92[1] = v94;
              v92[2] = v96;
            }

            v87 = v93 + 24;
            v90 += 24;
            v91 = v93;
          }

          while (v93 + 24 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v100 = v87;
          v101 = a1[2].n128_i64[0];
          if (v101 < a1->n128_u64[1])
          {
            v102 = *v87;
            v103 = a1[2].n128_u64[1];
            v104 = v100;
            do
            {
              result = *(v104 - 24);
              *v104 = result;
              v104[1].n128_u64[0] = v104[-1].n128_u64[1];
              v105 = v104[-3].n128_i64[1];
              v104 = (v104 - 24);
            }

            while (v101 < v105);
            v104->n128_u64[0] = v102;
            v104->n128_u64[1] = v101;
            v104[1].n128_u64[0] = v103;
          }

          v87 = &v100[1].n128_i8[8];
          a1 = v100;
        }

        while (&v100[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,operations_research::sat::IndexedInterval*>(v13, a2, a2);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v13 + 24 * (v15 >> 1));
    v18 = *(a2 - 2);
    if (v14 < 0xC01)
    {
      v21 = *(v13 + 8);
      if (v21 < v17->n128_u64[1])
      {
        if (v18 < v21)
        {
          v144 = v17[1].n128_u64[0];
          v110 = *v17;
          v22 = *v11;
          v17[1].n128_u64[0] = *(a2 - 1);
          *v17 = v22;
          goto LABEL_36;
        }

        v153 = v17[1].n128_u64[0];
        v119 = *v17;
        v37 = *v13;
        v17[1].n128_u64[0] = *(v13 + 16);
        *v17 = v37;
        result = v119;
        *(v13 + 16) = v153;
        *v13 = v119;
        if (*(a2 - 2) < *(v13 + 8))
        {
          v144 = *(v13 + 16);
          v110 = *v13;
          v38 = *v11;
          *(v13 + 16) = *(a2 - 1);
          *v13 = v38;
LABEL_36:
          result = v110;
          *(a2 - 1) = v144;
          *v11 = v110;
        }

LABEL_37:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v18 >= v21)
      {
        goto LABEL_37;
      }

      v147 = *(v13 + 16);
      v113 = *v13;
      v25 = *v11;
      *(v13 + 16) = *(a2 - 1);
      *v13 = v25;
      result = v113;
      *(a2 - 1) = v147;
      *v11 = v113;
      if (*(v13 + 8) >= v17->n128_u64[1])
      {
        goto LABEL_37;
      }

      v148 = v17[1].n128_u64[0];
      v114 = *v17;
      v26 = *v13;
      v17[1].n128_u64[0] = *(v13 + 16);
      *v17 = v26;
      result = v114;
      *(v13 + 16) = v148;
      *v13 = v114;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_61:
      v39 = *(v13 + 8);
      if (*(v13 - 16) < v39)
      {
        goto LABEL_62;
      }

      if (v39 >= *(a2 - 2))
      {
        v71 = v13 + 24;
        do
        {
          v13 = v71;
          if (v71 >= a2)
          {
            break;
          }

          v72 = *(v71 + 8);
          v71 += 24;
        }

        while (v39 >= v72);
      }

      else
      {
        v69 = v13;
        do
        {
          v13 = v69 + 24;
          v70 = *(v69 + 32);
          v69 += 24;
        }

        while (v39 >= v70);
      }

      v73 = a2;
      if (v13 < a2)
      {
        v74 = a2;
        do
        {
          v73 = v74 - 24;
          v75 = *(v74 - 2);
          v74 -= 24;
        }

        while (v39 < v75);
      }

      v76 = a1->n128_u64[0];
      v77 = a1[1].n128_i64[0];
      while (v13 < v73)
      {
        v165 = *(v13 + 16);
        v131 = *v13;
        v78 = *v73;
        *(v13 + 16) = *(v73 + 2);
        *v13 = v78;
        result = v131;
        *(v73 + 2) = v165;
        *v73 = v131;
        do
        {
          v79 = *(v13 + 32);
          v13 += 24;
        }

        while (v39 >= v79);
        do
        {
          v80 = *(v73 - 2);
          v73 -= 24;
        }

        while (v39 < v80);
      }

      if ((v13 - 24) != a1)
      {
        result = *(v13 - 24);
        a1[1].n128_u64[0] = *(v13 - 8);
        *a1 = result;
      }

      a5 = 0;
      *(v13 - 24) = v76;
      *(v13 - 16) = v39;
      *(v13 - 8) = v77;
    }

    else
    {
      v19 = v17->n128_i64[1];
      if (v19 >= *(v13 + 8))
      {
        if (v18 < v19)
        {
          v145 = v17[1].n128_u64[0];
          v111 = *v17;
          v23 = *v11;
          v17[1].n128_u64[0] = *(a2 - 1);
          *v17 = v23;
          *(a2 - 1) = v145;
          *v11 = v111;
          if (v17->n128_u64[1] < *(v13 + 8))
          {
            v146 = *(v13 + 16);
            v112 = *v13;
            v24 = *v17;
            *(v13 + 16) = v17[1].n128_u64[0];
            *v13 = v24;
            v17[1].n128_u64[0] = v146;
            *v17 = v112;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v149 = *(v13 + 16);
          v115 = *v13;
          v27 = *v17;
          *(v13 + 16) = v17[1].n128_u64[0];
          *v13 = v27;
          v17[1].n128_u64[0] = v149;
          *v17 = v115;
          if (*(a2 - 2) >= v17->n128_u64[1])
          {
            goto LABEL_28;
          }

          v143 = v17[1].n128_u64[0];
          v109 = *v17;
          v28 = *v11;
          v17[1].n128_u64[0] = *(a2 - 1);
          *v17 = v28;
        }

        else
        {
          v143 = *(v13 + 16);
          v109 = *v13;
          v20 = *v11;
          *(v13 + 16) = *(a2 - 1);
          *v13 = v20;
        }

        *(a2 - 1) = v143;
        *v11 = v109;
      }

LABEL_28:
      v29 = v13 + 24 * v16;
      v30 = (v29 - 24);
      v31 = *(v29 - 16);
      v32 = *(a2 - 5);
      if (v31 >= *(v13 + 32))
      {
        if (v32 < v31)
        {
          v151 = v30[1].n128_i64[0];
          v117 = *v30;
          v35 = *v108;
          v30[1].n128_u64[0] = *(a2 - 4);
          *v30 = v35;
          *(a2 - 4) = v151;
          *v108 = v117;
          if (v30->n128_u64[1] < *(v13 + 32))
          {
            v152 = *(v13 + 40);
            v118 = *(v13 + 24);
            v36 = *v30;
            *(v13 + 40) = v30[1].n128_u64[0];
            *(v13 + 24) = v36;
            v30[1].n128_u64[0] = v152;
            *v30 = v118;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v154 = *(v13 + 40);
          v120 = *(v13 + 24);
          v40 = *v30;
          *(v13 + 40) = v30[1].n128_u64[0];
          *(v13 + 24) = v40;
          v30[1].n128_u64[0] = v154;
          *v30 = v120;
          if (*(a2 - 5) >= v30->n128_u64[1])
          {
            goto LABEL_42;
          }

          v150 = v30[1].n128_i64[0];
          v116 = *v30;
          v33 = a2 - 48;
          v41 = *v108;
          v30[1].n128_u64[0] = *(a2 - 4);
          *v30 = v41;
        }

        else
        {
          v150 = *(v13 + 40);
          v116 = *(v13 + 24);
          v33 = a2 - 48;
          v34 = *v108;
          *(v13 + 40) = *(a2 - 4);
          *(v13 + 24) = v34;
        }

        *(v33 + 2) = v150;
        *v33 = v116;
      }

LABEL_42:
      v42 = v13 + 24 * v16;
      v43 = *(v42 + 32);
      v44 = *(a2 - 8);
      if (v43 >= *(v13 + 56))
      {
        if (v44 < v43)
        {
          v156 = *(v42 + 40);
          v122 = *(v42 + 24);
          v46 = *v12;
          *(v42 + 40) = *(a2 - 7);
          *(v42 + 24) = v46;
          *(a2 - 7) = v156;
          *v12 = v122;
          if (*(v42 + 32) < *(v13 + 56))
          {
            v157 = *(v13 + 64);
            v123 = *(v13 + 48);
            v47 = *(v42 + 24);
            *(v13 + 64) = *(v42 + 40);
            *(v13 + 48) = v47;
            *(v42 + 40) = v157;
            *(v42 + 24) = v123;
          }
        }
      }

      else
      {
        if (v44 >= v43)
        {
          v158 = *(v13 + 64);
          v124 = *(v13 + 48);
          v48 = *(v42 + 24);
          *(v13 + 64) = *(v42 + 40);
          *(v13 + 48) = v48;
          *(v42 + 40) = v158;
          *(v42 + 24) = v124;
          if (*(a2 - 8) >= *(v42 + 32))
          {
            goto LABEL_51;
          }

          v155 = *(v42 + 40);
          v121 = *(v42 + 24);
          v49 = *v12;
          *(v42 + 40) = *(a2 - 7);
          *(v42 + 24) = v49;
        }

        else
        {
          v155 = *(v13 + 64);
          v121 = *(v13 + 48);
          v45 = *v12;
          *(v13 + 64) = *(a2 - 7);
          *(v13 + 48) = v45;
        }

        *(a2 - 7) = v155;
        *v12 = v121;
      }

LABEL_51:
      v50 = v17->n128_i64[1];
      v51 = *(v42 + 32);
      if (v50 >= v30->n128_u64[1])
      {
        if (v51 < v50)
        {
          v160 = v17[1].n128_u64[0];
          v126 = *v17;
          *v17 = *(v42 + 24);
          v17[1].n128_u64[0] = *(v42 + 40);
          *(v42 + 40) = v160;
          *(v42 + 24) = v126;
          if (v17->n128_u64[1] < v30->n128_u64[1])
          {
            v161 = v30[1].n128_u64[0];
            v127 = *v30;
            *v30 = *v17;
            v30[1].n128_u64[0] = v17[1].n128_u64[0];
            v17[1].n128_u64[0] = v161;
            *v17 = v127;
          }
        }
      }

      else
      {
        if (v51 >= v50)
        {
          v162 = v30[1].n128_u64[0];
          v128 = *v30;
          *v30 = *v17;
          v30[1].n128_u64[0] = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v162;
          *v17 = v128;
          if (*(v42 + 32) >= v17->n128_u64[1])
          {
            goto LABEL_60;
          }

          v159 = v17[1].n128_u64[0];
          v125 = *v17;
          *v17 = *(v42 + 24);
          v17[1].n128_u64[0] = *(v42 + 40);
        }

        else
        {
          v159 = v30[1].n128_u64[0];
          v125 = *v30;
          *v30 = *(v42 + 24);
          v30[1].n128_u64[0] = *(v42 + 40);
        }

        *(v42 + 40) = v159;
        *(v42 + 24) = v125;
      }

LABEL_60:
      v163 = *(v13 + 16);
      v129 = *v13;
      v52 = *v17;
      *(v13 + 16) = v17[1].n128_u64[0];
      *v13 = v52;
      result = v129;
      v17[1].n128_u64[0] = v163;
      *v17 = v129;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v39 = *(v13 + 8);
LABEL_62:
      v53 = 0;
      v54 = *v13;
      v55 = *(v13 + 16);
      do
      {
        v56 = *(v13 + v53 + 32);
        v53 += 24;
      }

      while (v56 < v39);
      v57 = v13 + v53;
      v58 = a2;
      if (v53 == 24)
      {
        v61 = a2;
        while (v57 < v61)
        {
          v59 = v61 - 24;
          v62 = *(v61 - 2);
          v61 -= 24;
          if (v62 < v39)
          {
            goto LABEL_70;
          }
        }

        v59 = v61;
        v13 = v57;
      }

      else
      {
        do
        {
          v59 = v58 - 24;
          v60 = *(v58 - 2);
          v58 -= 24;
        }

        while (v60 >= v39);
LABEL_70:
        v13 = v57;
        if (v57 < v59)
        {
          v63 = v59;
          do
          {
            v164 = *(v13 + 16);
            v130 = *v13;
            v64 = *v63;
            *(v13 + 16) = *(v63 + 16);
            *v13 = v64;
            result = v130;
            *(v63 + 16) = v164;
            *v63 = v130;
            do
            {
              v65 = *(v13 + 32);
              v13 += 24;
            }

            while (v65 < v39);
            do
            {
              v66 = *(v63 - 16);
              v63 -= 24;
            }

            while (v66 >= v39);
          }

          while (v13 < v63);
        }
      }

      if ((v13 - 24) != a1)
      {
        result = *(v13 - 24);
        a1[1].n128_u64[0] = *(v13 - 8);
        *a1 = result;
      }

      *(v13 - 24) = v54;
      *(v13 - 16) = v39;
      *(v13 - 8) = v55;
      if (v57 < v59)
      {
        goto LABEL_81;
      }

      v67 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*>(a1, (v13 - 24), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*>(v13, a2, v68))
      {
        a2 = (v13 - 24);
        if (!v67)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v67)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,false>(a1, v13 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      v85 = *(v13 + 32);
      v86 = *(v13 + 56);
      if (v85 >= *(v13 + 8))
      {
        if (v86 < v85)
        {
          v170 = *(v13 + 40);
          v136 = *(v13 + 24);
          *(v13 + 24) = *(v13 + 48);
          *(v13 + 40) = *(v13 + 64);
          result = v136;
          *(v13 + 64) = v170;
          *(v13 + 48) = v136;
          if (*(v13 + 32) < *(v13 + 8))
          {
            v171 = *(v13 + 16);
            v137 = *v13;
            *v13 = *(v13 + 24);
            *(v13 + 16) = *(v13 + 40);
            result = v137;
            *(v13 + 40) = v171;
            *(v13 + 24) = v137;
          }
        }
      }

      else
      {
        if (v86 < v85)
        {
          v168 = *(v13 + 16);
          v134 = *v13;
          *v13 = *(v13 + 48);
          *(v13 + 16) = *(v13 + 64);
          goto LABEL_153;
        }

        v173 = *(v13 + 16);
        v139 = *v13;
        *v13 = *(v13 + 24);
        *(v13 + 16) = *(v13 + 40);
        result = v139;
        *(v13 + 40) = v173;
        *(v13 + 24) = v139;
        if (*(v13 + 56) < *(v13 + 32))
        {
          v168 = *(v13 + 40);
          v134 = *(v13 + 24);
          *(v13 + 24) = *(v13 + 48);
          *(v13 + 40) = *(v13 + 64);
LABEL_153:
          result = v134;
          *(v13 + 64) = v168;
          *(v13 + 48) = v134;
        }
      }

      if (*(a2 - 2) >= *(v13 + 56))
      {
        return result;
      }

      v174 = *(v13 + 64);
      v140 = *(v13 + 48);
      v107 = *v11;
      *(v13 + 64) = *(a2 - 1);
      *(v13 + 48) = v107;
      result = v140;
      *(a2 - 1) = v174;
      *v11 = v140;
      if (*(v13 + 56) >= *(v13 + 32))
      {
        return result;
      }

      v175 = *(v13 + 40);
      v141 = *(v13 + 24);
      *(v13 + 24) = *(v13 + 48);
      *(v13 + 40) = *(v13 + 64);
      result = v141;
      *(v13 + 64) = v175;
      *(v13 + 48) = v141;
LABEL_157:
      if (*(v13 + 32) < *(v13 + 8))
      {
        v176 = *(v13 + 16);
        v142 = *v13;
        *v13 = *(v13 + 24);
        *(v13 + 16) = *(v13 + 40);
        result = v142;
        *(v13 + 40) = v176;
        *(v13 + 24) = v142;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,0>(v13, (v13 + 24), (v13 + 48), (v13 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v82 = *(v13 + 32);
  v83 = *(a2 - 2);
  if (v82 >= *(v13 + 8))
  {
    if (v83 >= v82)
    {
      return result;
    }

    v169 = *(v13 + 40);
    v135 = *(v13 + 24);
    v99 = *v11;
    *(v13 + 40) = *(a2 - 1);
    *(v13 + 24) = v99;
    result = v135;
    *(a2 - 1) = v169;
    *v11 = v135;
    goto LABEL_157;
  }

  if (v83 >= v82)
  {
    v172 = *(v13 + 16);
    v138 = *v13;
    *v13 = *(v13 + 24);
    *(v13 + 16) = *(v13 + 40);
    result = v138;
    *(v13 + 40) = v172;
    *(v13 + 24) = v138;
    if (*(a2 - 2) >= *(v13 + 32))
    {
      return result;
    }

    v167 = *(v13 + 40);
    v133 = *(v13 + 24);
    v106 = *v11;
    *(v13 + 40) = *(a2 - 1);
    *(v13 + 24) = v106;
  }

  else
  {
    v167 = *(v13 + 16);
    v133 = *v13;
    v84 = *v11;
    *(v13 + 16) = *(a2 - 1);
    *v13 = v84;
  }

  result = v133;
  *(a2 - 1) = v167;
  *v11 = v133;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*>(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = (a2 - 3);
      v9 = *(a1 + 32);
      v10 = *(a2 - 2);
      if (v9 < *(a1 + 8))
      {
        if (v10 >= v9)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v39;
          v40 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v38;
          if (*(a2 - 2) >= v40)
          {
            return 1;
          }

          v11 = *(a1 + 40);
          v12 = *(a1 + 24);
          v41 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v41;
        }

        else
        {
          v11 = *(a1 + 16);
          v12 = *a1;
          v13 = *(a2 - 1);
          *a1 = *v8;
          *(a1 + 16) = v13;
        }

        *v8 = v12;
        *(a2 - 1) = v11;
        return 1;
      }

      if (v10 >= v9)
      {
        return 1;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      v27 = *(a2 - 1);
      *(a1 + 24) = *v8;
      *(a1 + 40) = v27;
      *v8 = v26;
      *(a2 - 1) = v25;
      if (*(a1 + 32) >= *(a1 + 8))
      {
        return 1;
      }

LABEL_52:
      v64 = *(a1 + 16);
      v65 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v65;
      *(a1 + 40) = v64;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
        return 1;
      }

LABEL_14:
      v14 = (a1 + 48);
      v15 = *(a1 + 32);
      v16 = *(a1 + 8);
      v17 = *(a1 + 56);
      if (v15 >= v16)
      {
        if (v17 < v15)
        {
          v28 = *(a1 + 24);
          *(a1 + 24) = *v14;
          v30 = *(a1 + 32);
          v29 = *(a1 + 40);
          *(a1 + 40) = *(a1 + 64);
          *v14 = v28;
          *(a1 + 64) = v29;
          if (v30 < v16)
          {
            v31 = *(a1 + 16);
            v32 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v32;
            *(a1 + 40) = v31;
          }
        }
      }

      else
      {
        if (v17 >= v15)
        {
          v42 = *(a1 + 16);
          v43 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v43;
          v44 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v42;
          if (v17 >= v44)
          {
            goto LABEL_35;
          }

          v18 = *(a1 + 40);
          v19 = *(a1 + 24);
          *(a1 + 24) = *v14;
          *(a1 + 40) = *(a1 + 64);
        }

        else
        {
          v18 = *(a1 + 16);
          v19 = *a1;
          *a1 = *v14;
          *(a1 + 16) = *(a1 + 64);
        }

        *v14 = v19;
        *(a1 + 64) = v18;
      }

LABEL_35:
      v45 = (a1 + 72);
      if ((a1 + 72) == a2)
      {
        return 1;
      }

      v46 = 0;
      v47 = 0;
      while (1)
      {
        v48 = v45[1];
        if (v48 < v14[1])
        {
          break;
        }

LABEL_38:
        v14 = v45;
        v46 += 24;
        v45 += 3;
        if (v45 == a2)
        {
          return 1;
        }
      }

      v49 = *v45;
      v50 = v45[2];
      v51 = v46;
      do
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          *a1 = v49;
          *(a1 + 8) = v48;
          *(a1 + 16) = v50;
          if (++v47 != 8)
          {
            goto LABEL_38;
          }

          return v45 + 3 == a2;
        }

        v51 -= 24;
      }

      while (v48 < *(v52 + 32));
      v53 = (a1 + v51);
      v53[9] = v49;
      v53[10] = v48;
      v53[11] = v50;
      if (++v47 != 8)
      {
        goto LABEL_38;
      }

      return v45 + 3 == a2;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 8);
    v22 = *(a1 + 56);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v33 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v35 = *(a1 + 32);
        v34 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v33;
        *(a1 + 64) = v34;
        if (v35 < v21)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }
    }

    else
    {
      if (v22 < v20)
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        *a1 = *(a1 + 48);
        *(a1 + 16) = *(a1 + 64);
LABEL_48:
        *(a1 + 48) = v24;
        *(a1 + 64) = v23;
        goto LABEL_49;
      }

      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 24) = v55;
      v56 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 40) = v54;
      if (v22 < v56)
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        goto LABEL_48;
      }
    }

LABEL_49:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v57 = a2 - 3;
    v58 = *(a1 + 64);
    v59 = *(a1 + 48);
    v60 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v60;
    *v57 = v59;
    v57[2] = v58;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v61 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    v63 = *(a1 + 32);
    v62 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v61;
    *(a1 + 64) = v62;
    if (v63 >= *(a1 + 8))
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 2) >= *(a1 + 8))
  {
    return 1;
  }

  v5 = *(a1 + 16);
  v6 = *a1;
  v7 = *(a2 - 1);
  *a1 = *(a2 - 3);
  *(a1 + 16) = v7;
  *(a2 - 3) = v6;
  *(a2 - 1) = v5;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,operations_research::sat::IndexedInterval*>(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 25 && v3 >= 0x30)
  {
    v50 = (v4 - 2) >> 1;
    v51 = v50;
    do
    {
      if (v50 >= (0xAAAAAAAAAAAAAAABLL * ((24 * v51) >> 3)))
      {
        v52 = (0x5555555555555556 * ((24 * v51) >> 3)) | 1;
        v53 = &a1[24 * v52];
        if (0x5555555555555556 * ((24 * v51) >> 3) + 2 < v4)
        {
          v54 = *(v53 + 1);
          v55 = *(v53 + 4);
          v56 = v54 < v55;
          v57 = v54 >= v55 ? 0 : 24;
          v53 += v57;
          if (v56)
          {
            v52 = 0x5555555555555556 * ((24 * v51) >> 3) + 2;
          }
        }

        v58 = &a1[24 * v51];
        v59 = *(v58 + 1);
        if (*(v53 + 1) >= v59)
        {
          v60 = *v58;
          v61 = *(v58 + 2);
          do
          {
            v62 = v58;
            v58 = v53;
            v63 = *v53;
            *(v62 + 2) = *(v53 + 2);
            *v62 = v63;
            if (v50 < v52)
            {
              break;
            }

            v64 = (2 * v52) | 1;
            v53 = &a1[24 * v64];
            v65 = 2 * v52 + 2;
            if (v65 < v4)
            {
              v66 = *(v53 + 1);
              v67 = *(v53 + 4);
              v68 = v66 < v67;
              v69 = v66 >= v67 ? 0 : 24;
              v53 += v69;
              if (v68)
              {
                v64 = v65;
              }
            }

            v52 = v64;
          }

          while (*(v53 + 1) >= v59);
          *v58 = v60;
          *(v58 + 1) = v59;
          *(v58 + 2) = v61;
        }
      }

      v14 = v51-- <= 0;
    }

    while (!v14);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 48)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v6 = *(i + 2);
          v7 = *i;
          v8 = *(a1 + 2);
          *i = *a1;
          *(i + 2) = v8;
          *a1 = v7;
          *(a1 + 2) = v6;
        }

        i += 24;
      }

      while (i != a3);
      goto LABEL_34;
    }

    for (i = a2; i != a3; i += 24)
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v9 = *(i + 2);
        v10 = *i;
        v11 = *(a1 + 2);
        *i = *a1;
        *(i + 2) = v11;
        *a1 = v10;
        *(a1 + 2) = v9;
        if (v4 < 3)
        {
          v16 = a1 + 24;
          v17 = 1;
          v18 = *(a1 + 1);
          if (*(a1 + 4) >= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = *(a1 + 4);
          v13 = *(a1 + 7);
          v14 = v12 < v13;
          if (v12 >= v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = 24;
          }

          v16 = &a1[v15 + 24];
          if (v14)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v18 = *(a1 + 1);
          if (*(v16 + 1) >= v18)
          {
LABEL_24:
            v19 = *a1;
            v20 = *(a1 + 2);
            v21 = a1;
            do
            {
              v22 = v21;
              v21 = v16;
              v23 = *v16;
              *(v22 + 2) = *(v16 + 2);
              *v22 = v23;
              if (((v4 - 2) >> 1) < v17)
              {
                break;
              }

              v24 = (2 * v17) | 1;
              v16 = &a1[24 * v24];
              v25 = 2 * v17 + 2;
              if (v25 < v4)
              {
                v26 = *(v16 + 1);
                v27 = *(v16 + 4);
                v28 = v26 < v27;
                v29 = v26 >= v27 ? 0 : 24;
                v16 += v29;
                if (v28)
                {
                  v24 = v25;
                }
              }

              v17 = v24;
            }

            while (*(v16 + 1) >= v18);
            *v21 = v19;
            *(v21 + 1) = v18;
            *(v21 + 2) = v20;
          }
        }
      }
    }
  }

LABEL_34:
  if (v3 >= 25)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v31 = 0;
      v70 = *a1;
      v71 = *(a1 + 2);
      v32 = a1;
      do
      {
        v38 = &v32[24 * v31];
        v36 = v38 + 24;
        v39 = (2 * v31) | 1;
        v31 = 2 * v31 + 2;
        if (v31 < v30)
        {
          v33 = *(v38 + 4);
          v34 = *(v38 + 7);
          v35 = v38 + 48;
          if (v33 >= v34)
          {
            v31 = v39;
          }

          else
          {
            v36 = v35;
          }
        }

        else
        {
          v31 = v39;
        }

        v37 = *v36;
        *(v32 + 2) = *(v36 + 2);
        *v32 = v37;
        v32 = v36;
      }

      while (v31 <= ((v30 - 2) >> 1));
      a2 -= 24;
      if (v36 == a2)
      {
        *(v36 + 2) = v71;
        *v36 = v70;
      }

      else
      {
        v40 = *a2;
        *(v36 + 2) = *(a2 + 2);
        *v36 = v40;
        *a2 = v70;
        *(a2 + 2) = v71;
        v41 = v36 - a1 + 24;
        if (v41 >= 25)
        {
          v42 = (-2 - 0x5555555555555555 * (v41 >> 3)) >> 1;
          v43 = &a1[24 * v42];
          v44 = *(v36 + 1);
          if (*(v43 + 1) < v44)
          {
            v45 = *v36;
            v46 = *(v36 + 2);
            do
            {
              v47 = v36;
              v36 = v43;
              v48 = *v43;
              *(v47 + 2) = *(v43 + 2);
              *v47 = v48;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[24 * v42];
            }

            while (*(v43 + 1) < v44);
            *v36 = v45;
            *(v36 + 1) = v44;
            *(v36 + 2) = v46;
          }
        }
      }

      v14 = v30-- <= 2;
    }

    while (!v14);
  }

  return i;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,false>(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 24);
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v27 = *(a2 - 2);
        v28 = *(v8 + 8);
        if (v27 < v28 || v28 >= v27 && ((v59 = *(a2 - 1), v60 = *(v8 + 16), v59 < v60) || v60 >= v59 && *v9 < *v8))
        {
          v83 = *(v8 + 16);
          v78 = *v8;
          v29 = *v9;
          *(v8 + 16) = *(a2 - 1);
          *v8 = v29;
          *v9 = v78;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, (v8 + 24), (v8 + 48));
      v30 = *(a2 - 2);
      v31 = *(v8 + 56);
      if (v30 < v31 || v31 >= v30 && ((v61 = *(a2 - 1), v62 = *(v8 + 64), v61 < v62) || v62 >= v61 && *v9 < *(v8 + 48)))
      {
        v84 = *(v8 + 64);
        v79 = *(v8 + 48);
        v32 = *v9;
        *(v8 + 64) = *(a2 - 1);
        *(v8 + 48) = v32;
        *v9 = v79;
        *(a2 - 1) = v84;
        v33 = *(v8 + 56);
        v34 = *(v8 + 32);
        if (v33 < v34 || v34 >= v33 && ((v73 = *(v8 + 64), v74 = *(v8 + 40), v73 < v74) || v74 >= v73 && *(v8 + 48) < *(v8 + 24)))
        {
          v85 = *(v8 + 40);
          v80 = *(v8 + 24);
          *(v8 + 24) = *(v8 + 48);
          *(v8 + 40) = *(v8 + 64);
          *(v8 + 64) = v85;
          *(v8 + 48) = v80;
          v35 = *(v8 + 32);
          v36 = *(v8 + 8);
          if (v35 < v36 || v36 >= v35 && ((v75 = *(v8 + 40), v76 = *(v8 + 16), v75 < v76) || v76 >= v75 && *(v8 + 24) < *v8))
          {
            v86 = *(v8 + 16);
            v81 = *v8;
            *v8 = *(v8 + 24);
            *(v8 + 16) = *(v8 + 40);
            *(v8 + 40) = v86;
            *(v8 + 24) = v81;
          }
        }
      }

      return result;
    }

    if (v14 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, v8 + 24, v8 + 48, (v8 + 72), (a2 - 24));
    }

LABEL_11:
    if (v13 <= 575)
    {
      v37 = (v8 + 24);
      v39 = v8 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v8;
LABEL_54:
        v43 = v41;
        v41 = v37;
        v44 = v43[4];
        v45 = v43[1];
        if (v44 >= v45)
        {
          if (v45 < v44)
          {
            goto LABEL_53;
          }

          v46 = v43[5];
          v53 = v43[2];
          if (v46 >= v53 && (v53 < v46 || *v41 >= *v43))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v46 = v43[5];
        }

        v47 = v43[3];
        *v41 = *v43;
        *(v41 + 16) = v43[2];
        v42 = v8;
        if (v43 == v8)
        {
          goto LABEL_52;
        }

        v48 = v40;
        while (1)
        {
          v49 = v8 + v48;
          v50 = (v8 + v48 - 24);
          v51 = *(v8 + v48 - 16);
          if (v44 >= v51)
          {
            if (v51 < v44)
            {
              goto LABEL_64;
            }

            v52 = *(v49 - 8);
            if (v46 >= v52)
            {
              if (v52 < v46)
              {
                v42 = (v8 + v48);
LABEL_52:
                *v42 = v47;
                v42[1] = v44;
                v42[2] = v46;
LABEL_53:
                v37 = (v41 + 24);
                v40 += 24;
                if ((v41 + 24) == a2)
                {
                  return result;
                }

                goto LABEL_54;
              }

              if (v47 >= *v50)
              {
LABEL_64:
                v42 = v43;
                goto LABEL_52;
              }
            }
          }

          v43 -= 3;
          *v49 = *v50;
          *(v49 + 16) = *(v8 + v48 - 8);
          v48 -= 24;
          if (!v48)
          {
            v42 = v8;
            goto LABEL_52;
          }
        }
      }

      if (v39)
      {
        return result;
      }

      while (2)
      {
        v63 = v8;
        v8 = v37;
        v64 = *(v63 + 32);
        v65 = *(v63 + 8);
        if (v64 >= v65)
        {
          if (v65 >= v64)
          {
            v66 = *(v63 + 40);
            v72 = *(v63 + 16);
            if (v66 < v72 || v72 >= v66 && *v8 < *v63)
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          v66 = *(v63 + 40);
LABEL_93:
          v67 = *v8;
          v68 = *v8;
          for (i = v8; ; i -= 24)
          {
            *i = *(i - 24);
            *(i + 16) = *(i - 8);
            v70 = *(i - 40);
            if (v64 >= v70)
            {
              if (v70 < v64)
              {
                break;
              }

              v71 = *(i - 32);
              if (v66 >= v71 && (v71 < v66 || v68 >= *(i - 48)))
              {
                break;
              }
            }
          }

          *(i - 24) = v67;
          *(i - 16) = v64;
          *(i - 8) = v66;
        }

        v37 = (v8 + 24);
        if ((v8 + 24) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (v11 == 1)
    {
      if (v8 != a2)
      {
        v54 = (v14 - 2) >> 1;
        v55 = v54 + 1;
        v56 = (v8 + 24 * v54);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(v8, a3, 0xAAAAAAAAAAAAAAABLL * (v13 >> 3), v56);
          v56 -= 3;
          --v55;
        }

        while (v55);
        v57 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex,operations_research::sat::IndexedInterval*>(v8, a2, a3, v57);
          a2 = (a2 - 24);
        }

        while (v57-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v8 + 24 * (v14 >> 1);
    if (v13 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v16, v8, (a2 - 24));
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, v16, (a2 - 24));
      v17 = 24 * v15;
      v18 = (24 * v15 + v8 - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>((v8 + 24), v18, a2 - 3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>((v8 + 48), (v8 + 24 + v17), (a2 - 72));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v18, v16, (v8 + 24 + v17));
      v82 = *(v8 + 16);
      v77 = *v8;
      v19 = *v16;
      *(v8 + 16) = *(v16 + 16);
      *v8 = v19;
      *(v16 + 16) = v82;
      *v16 = v77;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v20 = *(v8 - 16);
    v21 = *(v8 + 8);
    if (v20 >= v21)
    {
      if (v21 < v20 || (v22 = *(v8 - 8), v23 = *(v8 + 16), v22 >= v23) && (v23 < v22 || *(v8 - 24) >= *v8))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(v8, a2);
        v10 = result;
        goto LABEL_27;
      }
    }

LABEL_22:
    started = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(v8, a2);
    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }

    v26 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(v8, started);
    v10 = started + 24;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(started + 24, a2);
    if (result)
    {
      a4 = -v12;
      a2 = started;
      if (v26)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if ((v26 & 1) == 0)
    {
LABEL_25:
      result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,false>(v8, started, a3, -v12, a5 & 1);
      v10 = started + 24;
LABEL_27:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, (v8 + 24), (a2 - 24));
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1);
  v4 = *(a1 + 1);
  if (v3 < v4 || v4 >= v3 && ((v27 = *(a2 + 2), v28 = *(a1 + 2), v27 < v28) || v28 >= v27 && *a2 < *a1))
  {
    v5 = *(a3 + 1);
    if (v5 < v3 || v3 >= v5 && ((v29 = *(a3 + 2), v30 = *(a2 + 2), v29 < v30) || v30 >= v29 && *a3 < *a2))
    {
      v6 = *(a1 + 2);
      v7 = *a1;
      v8 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v8;
      *a3 = v7;
      *(a3 + 2) = v6;
      return 1;
    }

    v19 = *(a1 + 2);
    v20 = *a1;
    v21 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v21;
    *a2 = v20;
    *(a2 + 2) = v19;
    v22 = *(a3 + 1);
    v23 = *(a2 + 1);
    if (v22 >= v23)
    {
      if (v23 < v22)
      {
        return 1;
      }

      v33 = *(a3 + 2);
      v34 = *(a2 + 2);
      if (v33 >= v34 && (v34 < v33 || *a3 >= *a2))
      {
        return 1;
      }
    }

    v24 = *(a2 + 2);
    v25 = *a2;
    v26 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v26;
    *a3 = v25;
    *(a3 + 2) = v24;
    return 1;
  }

  else
  {
    v10 = *(a3 + 1);
    if (v10 < v3)
    {
LABEL_6:
      v11 = *(a2 + 2);
      v12 = *a2;
      v13 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v13;
      *a3 = v12;
      *(a3 + 2) = v11;
      v14 = *(a2 + 1);
      v15 = *(a1 + 1);
      if (v14 < v15 || v15 >= v14 && ((v31 = *(a2 + 2), v32 = *(a1 + 2), v31 < v32) || v32 >= v31 && *a2 < *a1))
      {
        v16 = *(a1 + 2);
        v17 = *a1;
        v18 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v18;
        *a2 = v17;
        *(a2 + 2) = v16;
      }

      return 1;
    }

    if (v3 >= v10)
    {
      v35 = *(a3 + 2);
      v36 = *(a2 + 2);
      if (v35 < v36)
      {
        goto LABEL_6;
      }

      if (v36 >= v35)
      {
        if (*a3 < *a2)
        {
          goto LABEL_6;
        }

        return 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, a2, a3);
  v11 = *(a4 + 1);
  v12 = *(a3 + 8);
  if (v11 < v12 || v12 >= v11 && ((v26 = *(a4 + 2), v27 = *(a3 + 16), v26 < v27) || v27 >= v26 && *a4 < *a3))
  {
    v13 = *(a3 + 16);
    v14 = *a3;
    v15 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = v14;
    *(a4 + 2) = v13;
    v16 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v16 < v17 || v17 >= v16 && ((v28 = *(a3 + 16), v29 = *(a2 + 16), v28 < v29) || v29 >= v28 && *a3 < *a2))
    {
      v18 = *(a2 + 16);
      v19 = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
      v21 = *(a2 + 8);
      v22 = *(a1 + 8);
      if (v21 < v22 || v22 >= v21 && ((v58 = *(a2 + 16), v59 = *(a1 + 16), v58 < v59) || v59 >= v58 && *a2 < *a1))
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = v24;
        *(a2 + 16) = v23;
      }
    }
  }

  v30 = *(a5 + 1);
  v31 = *(a4 + 1);
  if (v30 < v31 || v31 >= v30 && ((v50 = *(a5 + 2), v51 = *(a4 + 2), v50 < v51) || v51 >= v50 && *a5 < *a4))
  {
    v32 = *(a4 + 2);
    v33 = *a4;
    v34 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v34;
    *a5 = v33;
    *(a5 + 2) = v32;
    v35 = *(a4 + 1);
    v36 = *(a3 + 8);
    if (v35 < v36 || v36 >= v35 && ((v52 = *(a4 + 2), v53 = *(a3 + 16), v52 < v53) || v53 >= v52 && *a4 < *a3))
    {
      v37 = *(a3 + 16);
      v38 = *a3;
      v39 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v39;
      *a4 = v38;
      *(a4 + 2) = v37;
      v40 = *(a3 + 8);
      v41 = *(a2 + 8);
      if (v40 < v41 || v41 >= v40 && ((v54 = *(a3 + 16), v55 = *(a2 + 16), v54 < v55) || v55 >= v54 && *a3 < *a2))
      {
        v42 = *(a2 + 16);
        v43 = *a2;
        v44 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v44;
        *a3 = v43;
        *(a3 + 16) = v42;
        v45 = *(a2 + 8);
        v46 = *(a1 + 8);
        if (v45 < v46 || v46 >= v45 && ((v56 = *(a2 + 16), v57 = *(a1 + 16), v56 < v57) || v57 >= v56 && *a2 < *a1))
        {
          v47 = *(a1 + 16);
          v48 = *a1;
          v49 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v49;
          *a2 = v48;
          *(a2 + 16) = v47;
        }
      }
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 - 2);
  if (v3 < v5 || v5 >= v3 && ((v20 = *(a2 - 1), v4 < v20) || v20 >= v4 && v2 < *(a2 - 6)))
  {
    i = a1 + 3;
    v7 = a1[4];
    if (v3 < v7)
    {
      goto LABEL_21;
    }

    v8 = a1 + 5;
    while (1)
    {
      if (v7 >= v3)
      {
        if (v4 < *v8)
        {
LABEL_20:
          i = v8 - 2;
          goto LABEL_21;
        }

        if (*v8 >= v4 && v2 < *(v8 - 4))
        {
          goto LABEL_21;
        }
      }

      i += 3;
      v7 = v8[2];
      v8 += 3;
      if (v3 < v7)
      {
        goto LABEL_20;
      }
    }
  }

  for (i = a1 + 3; i < a2; i += 3)
  {
    v9 = i[1];
    if (v3 < v9)
    {
      break;
    }

    if (v9 >= v3)
    {
      v10 = i[2];
      if (v4 < v10 || v10 >= v4 && v2 < *i)
      {
        break;
      }
    }
  }

LABEL_21:
  if (i < a2)
  {
    for (j = a2 - 1; v3 < v5 || v5 >= v3 && (v4 < *j || *j >= v4 && v2 < *(j - 4)); j -= 3)
    {
      v5 = *(j - 4);
    }

    a2 = j - 2;
  }

  if (i < a2)
  {
LABEL_33:
    v22 = i[2];
    v21 = *i;
    v12 = *a2;
    i[2] = a2[2];
    *i = v12;
    a2[2] = v22;
    *a2 = v21;
    v13 = i + 3;
    v14 = i[4];
    if (v3 < v14)
    {
      i += 3;
      goto LABEL_43;
    }

    v15 = i + 5;
    while (1)
    {
      if (v14 >= v3)
      {
        if (v4 < *v15)
        {
          i = v13;
          do
          {
            do
            {
LABEL_43:
              a2 -= 3;
              v16 = a2[1];
            }

            while (v3 < v16);
            if (v16 < v3)
            {
              break;
            }

            v17 = a2[2];
          }

          while (v4 < v17 || v17 >= v4 && v2 < *a2);
          if (i >= a2)
          {
            break;
          }

          goto LABEL_33;
        }

        if (*v15 >= v4 && v2 < *(v15 - 4))
        {
LABEL_41:
          i = v15 - 2;
          goto LABEL_43;
        }
      }

      v13 += 3;
      v14 = v15[2];
      v15 += 3;
      if (v3 < v14)
      {
        goto LABEL_41;
      }
    }
  }

  if (i - 3 != a1)
  {
    v18 = *(i - 3);
    a1[2] = *(i - 1);
    *a1 = v18;
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  while (1)
  {
    v7 = &a1[v2];
    v8 = a1[v2 + 4];
    if (v8 >= v4)
    {
      if (v4 < v8)
      {
        break;
      }

      v9 = v7[5];
      if (v9 >= v5 && (v5 < v9 || *(v7 + 6) >= v6))
      {
        break;
      }
    }

    v2 += 3;
  }

  v10 = &a1[v2 + 3];
  if (v2 * 8)
  {
    v11 = (a2 - 24);
    v12 = *(a2 - 16);
    if (v12 >= v4)
    {
      v13 = (a2 - 8);
      while (1)
      {
        if (v4 >= v12)
        {
          if (*v13 < v5)
          {
            goto LABEL_31;
          }

          if (v5 >= *v13 && *(v13 - 4) < v6)
          {
            break;
          }
        }

        v11 -= 3;
        v12 = *(v13 - 4);
        v13 -= 3;
        if (v12 < v4)
        {
          goto LABEL_31;
        }
      }
    }
  }

  else if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (a2 - 24);
    v14 = *(a2 - 16);
    if (v14 >= v4)
    {
      v13 = (a2 - 8);
      while (1)
      {
        v15 = v13 - 2;
        if (v4 < v14)
        {
          goto LABEL_20;
        }

        if (*v13 < v5)
        {
          v11 = v13 - 2;
          v17 = v10;
          if (v10 < v15)
          {
            goto LABEL_35;
          }

          goto LABEL_53;
        }

        if (v5 < *v13)
        {
LABEL_20:
          if (v10 >= v15)
          {
            break;
          }
        }

        else if (*v15 < v6 || v10 >= v15)
        {
          break;
        }

        v11 -= 3;
        v14 = *(v13 - 4);
        v13 -= 3;
        if (v14 < v4)
        {
LABEL_31:
          v11 = v13 - 2;
          v17 = v10;
          if (v10 < v11)
          {
            goto LABEL_35;
          }

          goto LABEL_53;
        }
      }
    }
  }

  v17 = v10;
  if (v10 < v11)
  {
LABEL_35:
    v18 = v11;
    do
    {
      v28 = *(v17 + 16);
      v27 = *v17;
      v20 = *v18;
      *(v17 + 16) = v18[2];
      *v17 = v20;
      v18[2] = v28;
      *v18 = v27;
      do
      {
        do
        {
          v17 += 24;
          v21 = *(v17 + 8);
        }

        while (v21 < v4);
        if (v4 < v21)
        {
          break;
        }

        v22 = *(v17 + 16);
      }

      while (v22 < v5 || v5 >= v22 && *v17 < v6);
      v19 = v18 - 3;
      v23 = *(v18 - 2);
      if (v23 >= v4)
      {
        v24 = v18 - 1;
        do
        {
          if (v4 >= v23)
          {
            if (*v24 < v5)
            {
              goto LABEL_37;
            }

            if (v5 >= *v24 && *(v24 - 4) < v6)
            {
              break;
            }
          }

          v19 -= 3;
          v23 = *(v24 - 4);
          v24 -= 3;
        }

        while (v23 >= v4);
        v19 = v24 - 2;
      }

LABEL_37:
      v18 = v19;
    }

    while (v17 < v19);
  }

LABEL_53:
  if ((v17 - 24) != a1)
  {
    v25 = *(v17 - 24);
    a1[2] = *(v17 - 8);
    *a1 = v25;
  }

  *(v17 - 24) = v3;
  *(v17 - 16) = v4;
  *(v17 - 8) = v5;
  return v17 - 24;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = (a2 - 24);
        v4 = *(a2 - 16);
        v5 = *(a1 + 8);
        if (v4 < v5 || v5 >= v4 && ((v43 = *(a2 - 8), v44 = *(a1 + 16), v43 < v44) || v44 >= v43 && *v3 < *a1))
        {
          v6 = *(a1 + 16);
          v7 = *a1;
          v8 = *(a2 - 8);
          *a1 = *v3;
          *(a1 + 16) = v8;
          *v3 = v7;
          *(a2 - 8) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a2 - 24));
      return 1;
    case 4:
      v26 = a2 - 24;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a1 + 48));
      v29 = *(a2 - 16);
      v30 = *(a1 + 56);
      if (v29 < v30 || v30 >= v29 && ((v45 = *(a2 - 8), v46 = *(a1 + 64), v45 < v46) || v46 >= v45 && *v26 < *(a1 + 48)))
      {
        v31 = *(a1 + 64);
        v32 = *(a1 + 48);
        v33 = *(v26 + 16);
        *(a1 + 48) = *v26;
        *(a1 + 64) = v33;
        *v26 = v32;
        *(v26 + 16) = v31;
        v34 = *(a1 + 56);
        v35 = *(a1 + 32);
        if (v34 < v35 || v35 >= v34 && ((v47 = *(a1 + 64), v48 = *(a1 + 40), v47 < v48) || v48 >= v47 && *(a1 + 48) < *(a1 + 24)))
        {
          v36 = *(a1 + 24);
          *(a1 + 24) = *(a1 + 48);
          v37 = *(a1 + 32);
          v38 = *(a1 + 40);
          *(a1 + 40) = *(a1 + 64);
          *(a1 + 48) = v36;
          *(a1 + 64) = v38;
          v39 = *(a1 + 8);
          if (v37 < v39 || v39 >= v37 && ((v50 = *(a1 + 40), v51 = *(a1 + 16), v50 < v51) || v51 >= v50 && *(a1 + 24) < *a1))
          {
            v40 = *(a1 + 16);
            v41 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v41;
            *(a1 + 40) = v40;
          }
        }
      }

      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, a1 + 24, a1 + 48, (a1 + 72), (a2 - 24));
      return 1;
  }

LABEL_11:
  v9 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a1 + 48));
  v13 = a1 + 72;
  if (a1 + 72 == a2)
  {
LABEL_37:
    v42 = 1;
    return (v42 | v12) & 1;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = *(v13 + 8);
    v18 = v9[1];
    if (v17 >= v18)
    {
      if (v18 < v17)
      {
        goto LABEL_15;
      }

      v19 = *(v13 + 16);
      v25 = v9[2];
      if (v19 >= v25 && (v25 < v19 || *v13 >= *v9))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = *(v13 + 16);
    }

    v20 = *v13;
    *v13 = *v9;
    *(v13 + 16) = v9[2];
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_14;
    }

    v21 = v14;
    while (1)
    {
      v22 = a1 + v21;
      v23 = *(a1 + v21 + 32);
      if (v17 >= v23)
      {
        if (v23 < v17)
        {
          goto LABEL_32;
        }

        v24 = *(v22 + 40);
        if (v19 >= v24)
        {
          break;
        }
      }

LABEL_20:
      v9 -= 3;
      *(v22 + 48) = *(v22 + 24);
      *(v22 + 64) = *(v22 + 40);
      v21 -= 24;
      if (v21 == -48)
      {
        v16 = a1;
        goto LABEL_14;
      }
    }

    if (v24 >= v19)
    {
      if (v20 >= *(v22 + 24))
      {
        v16 = (a1 + v21 + 48);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_32:
    v16 = v9;
LABEL_14:
    *v16 = v20;
    v16[1] = v17;
    v16[2] = v19;
    if (++v15 != 8)
    {
LABEL_15:
      v9 = v13;
      v14 += 24;
      v13 += 24;
      if (v13 == a2)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v42 = 0;
  v12 = v13 + 24 == a2;
  return (v42 | v12) & 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v7 = *(v6 + 1);
        v8 = *(v6 + 4);
        if (v7 < v8 || v8 >= v7 && ((v25 = *(v6 + 2), v26 = *(v6 + 5), v25 < v26) || v26 >= v25 && *v6 < *(v6 + 6)))
        {
          v6 = (v6 + 24);
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v9 = *(v6 + 1);
      v10 = a4[1];
      if (v9 >= v10)
      {
        v11 = a4[2];
        if (v10 < v9 || (v24 = *(v6 + 2), v24 >= v11) && (v11 < v24 || *v6 >= *a4))
        {
          v12 = *a4;
          v13 = *v6;
          a4[2] = *(v6 + 2);
          *a4 = v13;
          if (v4 >= v5)
          {
            while (1)
            {
              v15 = v6;
              v16 = 2 * v5;
              v5 = (2 * v5) | 1;
              v6 = (result + 24 * v5);
              v17 = v16 + 2;
              if (v17 < a3)
              {
                v18 = *(v6 + 1);
                v19 = *(v6 + 4);
                if (v18 < v19 || v19 >= v18 && ((v22 = *(v6 + 2), v23 = *(v6 + 5), v22 < v23) || v23 >= v22 && *v6 < *(v6 + 6)))
                {
                  v6 = (v6 + 24);
                  v5 = v17;
                }
              }

              v20 = *(v6 + 1);
              if (v20 < v10)
              {
                break;
              }

              if (v10 >= v20)
              {
                v21 = *(v6 + 2);
                if (v21 < v11 || v11 >= v21 && *v6 < v12)
                {
                  break;
                }
              }

              v14 = *v6;
              *(v15 + 2) = *(v6 + 2);
              *v15 = v14;
              if (v4 < v5)
              {
                goto LABEL_35;
              }
            }

            v6 = v15;
          }

LABEL_35:
          *v6 = v12;
          *(v6 + 1) = v10;
          *(v6 + 2) = v11;
        }
      }
    }
  }

  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex,operations_research::sat::IndexedInterval*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v33 = *result;
    v34 = result[2];
    v5 = result;
    do
    {
      v7 = v5;
      v8 = &v5[3 * v4];
      v5 = v8 + 3;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = v8 + 6;
        v12 = v8[4];
        v13 = v8[7];
        if (v12 < v13 || v13 >= v12 && ((v14 = v8[5], v15 = v8[8], v14 < v15) || v15 >= v14 && *v5 < *v11))
        {
          v5 = v11;
          v4 = v10;
        }
      }

      v6 = *v5;
      v7[2] = v5[2];
      *v7 = v6;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v16 = (a2 - 24);
    if (v5 == (a2 - 24))
    {
      v5[2] = v34;
      *v5 = v33;
      return result;
    }

    v17 = *v16;
    v5[2] = *(a2 - 8);
    *v5 = v17;
    *v16 = v33;
    *(a2 - 8) = v34;
    v18 = v5 - result + 24;
    if (v18 < 25)
    {
      return result;
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3) - 2;
    v20 = v19 >> 1;
    v21 = &result[3 * (v19 >> 1)];
    v22 = v21[1];
    v23 = v5[1];
    if (v22 >= v23)
    {
      if (v23 < v22)
      {
        return result;
      }

      v32 = v21[2];
      v24 = v5[2];
      if (v32 >= v24 && (v24 < v32 || *v21 >= *v5))
      {
        return result;
      }
    }

    else
    {
      v24 = v5[2];
    }

    v25 = *v5;
    v26 = *v21;
    v5[2] = v21[2];
    *v5 = v26;
    if (v19 >= 2)
    {
      while (1)
      {
        v28 = v21;
        v29 = v20 - 1;
        v20 = (v20 - 1) >> 1;
        v21 = &result[3 * v20];
        v30 = v21[1];
        if (v30 >= v23)
        {
          if (v23 < v30)
          {
            break;
          }

          v31 = v21[2];
          if (v31 >= v24 && (v24 < v31 || *v21 >= v25))
          {
            break;
          }
        }

        v27 = *v21;
        v28[2] = v21[2];
        *v28 = v27;
        if (v29 <= 1)
        {
          goto LABEL_25;
        }
      }

      v21 = v28;
    }

LABEL_25:
    *v21 = v25;
    v21[1] = v23;
    v21[2] = v24;
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 32;
  v11 = a2 - 64;
  v12 = a2 - 96;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = &a2[-v13] >> 5;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v80 = *(a2 - 4);
      v79 = (a2 - 32);
      if (v80 >= *v13)
      {
        return result;
      }

LABEL_108:
      v143 = *v13;
      v178 = *(v13 + 16);
      v85 = v79[1];
      *v13 = *v79;
      *(v13 + 16) = v85;
LABEL_109:
      result = v143;
      *v79 = v143;
      v79[1] = v178;
      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v90 = (v13 + 32);
      v92 = v13 == a2 || v90 == a2;
      if (a5)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v13;
          do
          {
            v96 = v90;
            v97 = *(v94 + 32);
            if (v97 < *v94)
            {
              v180 = *(v94 + 56);
              v145 = *(v94 + 40);
              v98 = v93;
              do
              {
                v99 = v13 + v98;
                v100 = *(v13 + v98 + 16);
                *(v99 + 32) = *(v13 + v98);
                *(v99 + 48) = v100;
                if (!v98)
                {
                  v95 = v13;
                  goto LABEL_123;
                }

                v98 -= 32;
              }

              while (v97 < *(v99 - 32));
              v95 = v13 + v98 + 32;
LABEL_123:
              *v95 = v97;
              result = v145;
              *(v95 + 24) = v180;
              *(v95 + 8) = v145;
            }

            v90 = v96 + 32;
            v93 += 32;
            v94 = v96;
          }

          while (v96 + 32 != a2);
        }
      }

      else if (!v92)
      {
        do
        {
          v104 = v90;
          v105 = *(a1 + 32);
          if (v105 < *a1)
          {
            v184 = *(a1 + 56);
            v149 = *(a1 + 40);
            do
            {
              v106 = *(v90 - 1);
              *v90 = *(v90 - 2);
              *(v90 + 1) = v106;
              v107 = *(v90 - 8);
              v90 -= 32;
            }

            while (v105 < v107);
            *v90 = v105;
            result = v149;
            *(v90 + 3) = v184;
            *(v90 + 8) = v149;
          }

          v90 = (v104 + 32);
          a1 = v104;
        }

        while ((v104 + 32) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,operations_research::sat::CapacityProfile::Event *>(v13, a2, a2);
      }

      return result;
    }

    v15 = (v13 + 32 * (v14 >> 1));
    v16 = v15;
    v17 = *v10;
    if (v14 < 0x81)
    {
      v20 = *v13;
      if (*v13 < v16->n128_u64[0])
      {
        if (v17 < v20)
        {
          v121 = *v16;
          v156 = v16[1];
          v21 = *(a2 - 1);
          *v16 = *v10;
          v16[1] = v21;
          goto LABEL_36;
        }

        v130 = *v16;
        v165 = v16[1];
        v36 = *(v13 + 16);
        *v16 = *v13;
        v16[1] = v36;
        *v13 = v130;
        *(v13 + 16) = v165;
        if (*v10 < *v13)
        {
          v121 = *v13;
          v156 = *(v13 + 16);
          v37 = *(a2 - 1);
          *v13 = *v10;
          *(v13 + 16) = v37;
LABEL_36:
          *v10 = v121;
          *(a2 - 1) = v156;
        }

LABEL_37:
        --a4;
        v26 = *v13;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      v124 = *v13;
      v159 = *(v13 + 16);
      v24 = *(a2 - 1);
      *v13 = *v10;
      *(v13 + 16) = v24;
      *v10 = v124;
      *(a2 - 1) = v159;
      if (*v13 >= v16->n128_u64[0])
      {
        goto LABEL_37;
      }

      v125 = *v16;
      v160 = v16[1];
      v25 = *(v13 + 16);
      *v16 = *v13;
      v16[1] = v25;
      *v13 = v125;
      *(v13 + 16) = v160;
      --a4;
      v26 = *v13;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v13 - 32) < v26)
      {
        goto LABEL_62;
      }

      v119 = *(v13 + 24);
      v117 = *(v13 + 8);
      if (v26 >= *v10)
      {
        v72 = v13 + 32;
        do
        {
          v13 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v72 += 32;
        }

        while (v26 >= *v13);
      }

      else
      {
        do
        {
          v71 = *(v13 + 32);
          v13 += 32;
        }

        while (v26 >= v71);
      }

      v73 = a2;
      if (v13 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *(v73 - 4);
          v73 -= 32;
        }

        while (v26 < v74);
      }

      while (v13 < v73)
      {
        v142 = *v13;
        v177 = *(v13 + 16);
        v75 = *(v73 + 1);
        *v13 = *v73;
        *(v13 + 16) = v75;
        *v73 = v142;
        *(v73 + 1) = v177;
        do
        {
          v76 = *(v13 + 32);
          v13 += 32;
        }

        while (v26 >= v76);
        do
        {
          v77 = *(v73 - 4);
          v73 -= 32;
        }

        while (v26 < v77);
      }

      if (v13 - 32 != a1)
      {
        v78 = *(v13 - 16);
        *a1 = *(v13 - 32);
        *(a1 + 16) = v78;
      }

      a5 = 0;
      *(v13 - 32) = v26;
      result = v117;
      *(v13 - 8) = v119;
      *(v13 - 24) = v117;
    }

    else
    {
      v18 = v15->n128_u64[0];
      if (v15->n128_u64[0] >= *v13)
      {
        if (v17 < v18)
        {
          v122 = *v15;
          v157 = v15[1];
          v22 = *(a2 - 1);
          *v15 = *v10;
          v15[1] = v22;
          *v10 = v122;
          *(a2 - 1) = v157;
          if (v15->n128_u64[0] < *v13)
          {
            v123 = *v13;
            v158 = *(v13 + 16);
            v23 = v15[1];
            *v13 = *v15;
            *(v13 + 16) = v23;
            *v15 = v123;
            v15[1] = v158;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v126 = *v13;
          v161 = *(v13 + 16);
          v27 = v15[1];
          *v13 = *v15;
          *(v13 + 16) = v27;
          *v15 = v126;
          v15[1] = v161;
          if (*v10 >= v15->n128_u64[0])
          {
            goto LABEL_28;
          }

          v120 = *v15;
          v155 = v15[1];
          v28 = *(a2 - 1);
          *v15 = *v10;
          v15[1] = v28;
        }

        else
        {
          v120 = *v13;
          v155 = *(v13 + 16);
          v19 = *(a2 - 1);
          *v13 = *v10;
          *(v13 + 16) = v19;
        }

        *v10 = v120;
        *(a2 - 1) = v155;
      }

LABEL_28:
      v29 = (v13 + 32);
      v30 = v15 - 2;
      v31 = v15[-2].n128_i64[0];
      v32 = *v11;
      if (v31 >= *(v13 + 32))
      {
        if (v32 < v31)
        {
          v128 = *v30;
          v163 = v15[-1];
          v34 = *(a2 - 3);
          *v30 = *v11;
          v15[-1] = v34;
          *v11 = v128;
          *(a2 - 3) = v163;
          if (v30->n128_u64[0] < v29->n128_u64[0])
          {
            v129 = *v29;
            v164 = *(v13 + 48);
            v35 = v15[-1];
            *v29 = *v30;
            *(v13 + 48) = v35;
            *v30 = v129;
            v15[-1] = v164;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v131 = *v29;
          v166 = *(v13 + 48);
          v38 = v15[-1];
          *v29 = *v30;
          *(v13 + 48) = v38;
          *v30 = v131;
          v15[-1] = v166;
          if (*v11 >= v30->n128_u64[0])
          {
            goto LABEL_42;
          }

          v127 = *v30;
          v162 = v15[-1];
          v39 = *(a2 - 3);
          *v30 = *v11;
          v15[-1] = v39;
        }

        else
        {
          v127 = *v29;
          v162 = *(v13 + 48);
          v33 = *(a2 - 3);
          *v29 = *v11;
          *(v13 + 48) = v33;
        }

        *v11 = v127;
        *(a2 - 3) = v162;
      }

LABEL_42:
      v40 = (v13 + 64);
      v43 = v15[2].n128_i64[0];
      v41 = v15 + 2;
      v42 = v43;
      v44 = *v12;
      if (v43 >= *(v13 + 64))
      {
        if (v44 < v42)
        {
          v133 = *v41;
          v168 = v41[1];
          v46 = *(a2 - 5);
          *v41 = *v12;
          v41[1] = v46;
          *v12 = v133;
          *(a2 - 5) = v168;
          if (v41->n128_u64[0] < v40->n128_u64[0])
          {
            v134 = *v40;
            v169 = *(v13 + 80);
            v47 = v41[1];
            *v40 = *v41;
            *(v13 + 80) = v47;
            *v41 = v134;
            v41[1] = v169;
          }
        }
      }

      else
      {
        if (v44 >= v42)
        {
          v135 = *v40;
          v170 = *(v13 + 80);
          v48 = v41[1];
          *v40 = *v41;
          *(v13 + 80) = v48;
          *v41 = v135;
          v41[1] = v170;
          if (*v12 >= v41->n128_u64[0])
          {
            goto LABEL_51;
          }

          v132 = *v41;
          v167 = v41[1];
          v49 = *(a2 - 5);
          *v41 = *v12;
          v41[1] = v49;
        }

        else
        {
          v132 = *v40;
          v167 = *(v13 + 80);
          v45 = *(a2 - 5);
          *v40 = *v12;
          *(v13 + 80) = v45;
        }

        *v12 = v132;
        *(a2 - 5) = v167;
      }

LABEL_51:
      v50 = v16->n128_u64[0];
      v51 = v41->n128_u64[0];
      if (v16->n128_u64[0] >= v30->n128_u64[0])
      {
        if (v51 < v50)
        {
          v137 = *v16;
          v172 = v16[1];
          v53 = v41[1];
          *v16 = *v41;
          v16[1] = v53;
          *v41 = v137;
          v41[1] = v172;
          if (v16->n128_u64[0] < v30->n128_u64[0])
          {
            v138 = *v30;
            v173 = v30[1];
            v54 = v16[1];
            *v30 = *v16;
            v30[1] = v54;
            *v16 = v138;
            v16[1] = v173;
          }
        }
      }

      else
      {
        if (v51 >= v50)
        {
          v139 = *v30;
          v174 = v30[1];
          v55 = v16[1];
          *v30 = *v16;
          v30[1] = v55;
          *v16 = v139;
          v16[1] = v174;
          if (v41->n128_u64[0] >= v16->n128_u64[0])
          {
            goto LABEL_60;
          }

          v136 = *v16;
          v171 = v16[1];
          v56 = v41[1];
          *v16 = *v41;
          v16[1] = v56;
        }

        else
        {
          v136 = *v30;
          v171 = v30[1];
          v52 = v41[1];
          *v30 = *v41;
          v30[1] = v52;
        }

        *v41 = v136;
        v41[1] = v171;
      }

LABEL_60:
      v140 = *v13;
      v175 = *(v13 + 16);
      v57 = v16[1];
      *v13 = *v16;
      *(v13 + 16) = v57;
      *v16 = v140;
      v16[1] = v175;
      --a4;
      v26 = *v13;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v58 = 0;
      v118 = *(v13 + 24);
      v116 = *(v13 + 8);
      do
      {
        v59 = *(v13 + v58 + 32);
        v58 += 32;
      }

      while (v59 < v26);
      v60 = v13 + v58;
      v61 = a2;
      if (v58 == 32)
      {
        v61 = a2;
        do
        {
          if (v60 >= v61)
          {
            break;
          }

          v63 = *(v61 - 4);
          v61 -= 32;
        }

        while (v63 >= v26);
      }

      else
      {
        do
        {
          v62 = *(v61 - 4);
          v61 -= 32;
        }

        while (v62 >= v26);
      }

      v13 += v58;
      if (v60 < v61)
      {
        v64 = v61;
        do
        {
          v141 = *v13;
          v176 = *(v13 + 16);
          v65 = v64[1];
          *v13 = *v64;
          *(v13 + 16) = v65;
          *v64 = v141;
          v64[1] = v176;
          do
          {
            v66 = *(v13 + 32);
            v13 += 32;
          }

          while (v66 < v26);
          do
          {
            v67 = v64[-2].n128_i64[0];
            v64 -= 2;
          }

          while (v67 >= v26);
        }

        while (v13 < v64);
      }

      if (v13 - 32 != a1)
      {
        v68 = *(v13 - 16);
        *a1 = *(v13 - 32);
        *(a1 + 16) = v68;
      }

      *(v13 - 32) = v26;
      *(v13 - 8) = v118;
      *(v13 - 24) = v116;
      if (v60 < v61)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *>(a1, v13 - 32, v116);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *>(v13, a2, v70))
      {
        a2 = (v13 - 32);
        if (!v69)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v69)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,false>(a1, v13 - 32, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v81 = (v13 + 32);
      v86 = *(v13 + 32);
      v87 = (v13 + 64);
      v88 = *(v13 + 64);
      if (v86 >= *v13)
      {
        if (v88 < v86)
        {
          v147 = *v81;
          v182 = *(v13 + 48);
          v102 = *(v13 + 80);
          *v81 = *v87;
          *(v13 + 48) = v102;
          result = v147;
          *v87 = v147;
          *(v13 + 80) = v182;
          if (*(v13 + 32) < *v13)
          {
            v148 = *v13;
            v183 = *(v13 + 16);
            v103 = *(v13 + 48);
            *v13 = *v81;
            *(v13 + 16) = v103;
            result = v148;
            *v81 = v148;
            *(v13 + 48) = v183;
          }
        }
      }

      else
      {
        if (v88 < v86)
        {
          v144 = *v13;
          v179 = *(v13 + 16);
          v89 = *(v13 + 80);
          *v13 = *v87;
          *(v13 + 16) = v89;
          goto LABEL_150;
        }

        v151 = *v13;
        v186 = *(v13 + 16);
        v110 = *(v13 + 48);
        *v13 = *v81;
        *(v13 + 16) = v110;
        result = v151;
        *v81 = v151;
        *(v13 + 48) = v186;
        if (*(v13 + 64) < *(v13 + 32))
        {
          v144 = *v81;
          v179 = *(v13 + 48);
          v111 = *(v13 + 80);
          *v81 = *v87;
          *(v13 + 48) = v111;
LABEL_150:
          result = v144;
          *v87 = v144;
          *(v13 + 80) = v179;
        }
      }

      if (*v10 >= v87->n128_u64[0])
      {
        return result;
      }

      v152 = *v87;
      v187 = *(v13 + 80);
      v112 = *(a2 - 1);
      *v87 = *v10;
      *(v13 + 80) = v112;
      result = v152;
      *v10 = v152;
      *(a2 - 1) = v187;
      if (v87->n128_u64[0] >= v81->n128_u64[0])
      {
        return result;
      }

      v153 = *v81;
      v188 = *(v13 + 48);
      v113 = *(v13 + 80);
      *v81 = *v87;
      *(v13 + 48) = v113;
      result = v153;
      *v87 = v153;
      *(v13 + 80) = v188;
LABEL_154:
      if (*(v13 + 32) < *v13)
      {
        v154 = *v13;
        v189 = *(v13 + 16);
        v114 = v81[1];
        *v13 = *v81;
        *(v13 + 16) = v114;
        result = v154;
        *v81 = v154;
        v81[1] = v189;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,0>(v13, (v13 + 32), (v13 + 64), (v13 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v81 = (v13 + 32);
  v82 = *(v13 + 32);
  v84 = *(a2 - 4);
  v79 = (a2 - 32);
  v83 = v84;
  if (v82 >= *v13)
  {
    if (v83 >= v82)
    {
      return result;
    }

    v146 = *v81;
    v181 = *(v13 + 48);
    v101 = v79[1];
    *v81 = *v79;
    *(v13 + 48) = v101;
    result = v146;
    *v79 = v146;
    v79[1] = v181;
    goto LABEL_154;
  }

  if (v83 < v82)
  {
    goto LABEL_108;
  }

  v150 = *v13;
  v185 = *(v13 + 16);
  v108 = *(v13 + 48);
  *v13 = *v81;
  *(v13 + 16) = v108;
  result = v150;
  *v81 = v150;
  *(v13 + 48) = v185;
  if (v79->n128_u64[0] < *(v13 + 32))
  {
    v143 = *v81;
    v178 = *(v13 + 48);
    v109 = v79[1];
    *v81 = *v79;
    *(v13 + 48) = v109;
    goto LABEL_109;
  }

  return result;
}