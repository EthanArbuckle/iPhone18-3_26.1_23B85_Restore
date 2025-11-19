void sub_1DE6D2320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59, uint64_t a60, char *a61)
{
  a61 = &a18;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a24;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&a61);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,false>(uint64_t a1, int *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v183 = a2 - 30;
    v175 = a2 - 90;
    v176 = a2 - 60;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v7;
        v8 = a2 - v7;
        v9 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v7) >> 3);
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120), v183);
              return;
            case 4uLL:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120), (v7 + 240));
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v183, v7 + 240))
              {
                return;
              }

              std::swap[abi:ne200100]<AMCP::Node_Description>((v7 + 240), v183);
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v7 + 240), v7 + 120))
              {
                return;
              }

              std::swap[abi:ne200100]<AMCP::Node_Description>((v7 + 120), (v7 + 240));
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v7 + 120), v7))
              {
                return;
              }

              v56 = (v7 + 120);
              v55 = v7;
              goto LABEL_94;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120), (v7 + 240), (v7 + 360), v183);
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
            if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v183, v7))
            {
              return;
            }

            v55 = v7;
            v56 = v183;
LABEL_94:

            std::swap[abi:ne200100]<AMCP::Node_Description>(v55, v56);
            return;
          }
        }

        if (v8 <= 2879)
        {
          if (a4)
          {
            if (v7 != a2)
            {
              v57 = (v7 + 120);
              if ((v7 + 120) != a2)
              {
                v58 = 0;
                v59 = v7;
                do
                {
                  v60 = v57;
                  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v57, v59))
                  {
                    v61 = a2;
                    LODWORD(v199) = *v60;
                    v62 = *(v59 + 152);
                    v201 = *(v59 + 144);
                    v63 = *(v59 + 184);
                    v204 = *(v59 + 176);
                    v200 = *(v59 + 128);
                    *(v59 + 128) = 0;
                    *(v59 + 136) = 0;
                    *(v59 + 144) = 0;
                    __p = *(v59 + 160);
                    *(v59 + 160) = 0;
                    *(v59 + 168) = 0;
                    *(v59 + 176) = 0;
                    v202 = v62;
                    v205 = v63;
                    v206 = *(v59 + 192);
                    v207 = *(v59 + 208);
                    *(v59 + 192) = 0;
                    *(v59 + 200) = 0;
                    v208 = *(v59 + 216);
                    v209 = *(v59 + 232);
                    *(v59 + 208) = 0;
                    *(v59 + 216) = 0;
                    v64 = v58;
                    v184 = v60;
                    *(v59 + 224) = 0;
                    *(v59 + 232) = 0;
                    while (1)
                    {
                      v65 = v59;
                      v66 = v59 + 8;
                      *v60 = *v59;
                      if (*(v60 + 31) < 0)
                      {
                        operator delete(*(v60 + 1));
                      }

                      *(v60 + 2) = *v66;
                      *(v60 + 3) = *(v59 + 24);
                      *(v59 + 31) = 0;
                      *(v59 + 8) = 0;
                      *(v60 + 4) = *(v59 + 32);
                      if (*(v60 + 63) < 0)
                      {
                        operator delete(*(v60 + 5));
                      }

                      *(v60 + 10) = *(v59 + 40);
                      *(v60 + 7) = *(v59 + 56);
                      *(v59 + 63) = 0;
                      *(v59 + 40) = 0;
                      *(v60 + 8) = *(v59 + 64);
                      v67 = v64;
                      v68 = 2;
                      do
                      {
                        v69 = a1 + v67;
                        std::vector<AMCP::Terminal_Description>::__vdeallocate((a1 + v67 + 192));
                        *(v69 + 192) = *(v69 + 72);
                        *(v69 + 208) = *(v69 + 88);
                        *(v69 + 80) = 0;
                        *(v69 + 88) = 0;
                        *(v69 + 72) = 0;
                        v67 += 24;
                        --v68;
                      }

                      while (v68);
                      if (v65 == a1)
                      {
                        break;
                      }

                      v59 = v65 - 120;
                      v64 -= 120;
                      v60 = v65;
                      if ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v65 - 120) & 1) == 0)
                      {
                        v70 = v65;
                        goto LABEL_120;
                      }
                    }

                    v70 = a1;
LABEL_120:
                    *v70 = v199;
                    a2 = v61;
                    if (*(v70 + 31) < 0)
                    {
                      operator delete(*v66);
                    }

                    v71 = v200;
                    *(v66 + 16) = v201;
                    *v66 = v71;
                    HIBYTE(v201) = 0;
                    LOBYTE(v200) = 0;
                    *(v70 + 32) = v202;
                    if (*(v70 + 63) < 0)
                    {
                      operator delete(*(v65 + 40));
                    }

                    v72 = 0;
                    v73 = __p;
                    *(v65 + 56) = v204;
                    *(v65 + 40) = v73;
                    HIBYTE(v204) = 0;
                    LOBYTE(__p) = 0;
                    *(v70 + 64) = v205;
                    do
                    {
                      v74 = v65 + v72;
                      v75 = &(&v199)[v72 / 8];
                      std::vector<AMCP::Terminal_Description>::__vdeallocate((v65 + v72 + 72));
                      *(v74 + 72) = *(&v206 + v72);
                      *(v74 + 88) = *(&v207 + v72);
                      v75[9] = 0;
                      v75[10] = 0;
                      v75[11] = 0;
                      v72 += 24;
                    }

                    while (v72 != 48);
                    for (i = 12; i != 6; i -= 3)
                    {
                      v187 = &(&v199)[i];
                      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
                    }

                    v60 = v184;
                    if (SHIBYTE(v204) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v201) < 0)
                    {
                      operator delete(v200);
                    }
                  }

                  v57 = v60 + 30;
                  v58 += 120;
                  v59 = v60;
                }

                while (v60 + 30 != a2);
              }
            }
          }

          else if (v7 != a2)
          {
            v160 = (v7 + 120);
            if ((v7 + 120) != a2)
            {
              do
              {
                v161 = v160;
                if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v160, a1))
                {
                  LODWORD(v199) = *v161;
                  v162 = *(a1 + 152);
                  v201 = *(a1 + 144);
                  v163 = *(a1 + 184);
                  v204 = *(a1 + 176);
                  v200 = *(a1 + 128);
                  *(a1 + 128) = 0;
                  *(a1 + 136) = 0;
                  *(a1 + 144) = 0;
                  __p = *(a1 + 160);
                  *(a1 + 160) = 0;
                  *(a1 + 168) = 0;
                  *(a1 + 176) = 0;
                  v202 = v162;
                  v205 = v163;
                  v206 = *(a1 + 192);
                  v207 = *(a1 + 208);
                  *(a1 + 192) = 0;
                  *(a1 + 200) = 0;
                  v208 = *(a1 + 216);
                  v209 = *(a1 + 232);
                  *(a1 + 208) = 0;
                  *(a1 + 216) = 0;
                  v164 = v161;
                  *(a1 + 224) = 0;
                  *(a1 + 232) = 0;
                  do
                  {
                    v165 = a1;
                    v166 = a1 + 8;
                    *v164 = *a1;
                    if (*(v164 + 31) < 0)
                    {
                      operator delete(*(v164 + 1));
                    }

                    *(v164 + 2) = *v166;
                    *(v164 + 3) = *(a1 + 24);
                    *(a1 + 31) = 0;
                    *(a1 + 8) = 0;
                    *(v164 + 4) = *(a1 + 32);
                    if (*(v164 + 63) < 0)
                    {
                      operator delete(*(v164 + 5));
                    }

                    v167 = 0;
                    *(v164 + 10) = *(a1 + 40);
                    *(v164 + 7) = *(a1 + 56);
                    *(a1 + 63) = 0;
                    *(a1 + 40) = 0;
                    *(v164 + 8) = *(a1 + 64);
                    do
                    {
                      v168 = a1 + v167;
                      std::vector<AMCP::Terminal_Description>::__vdeallocate((a1 + v167 + 192));
                      *(v168 + 192) = *(v168 + 72);
                      *(v168 + 208) = *(v168 + 88);
                      *(v168 + 80) = 0;
                      *(v168 + 88) = 0;
                      *(v168 + 72) = 0;
                      v167 += 24;
                    }

                    while (v167 != 48);
                    a1 -= 120;
                    v164 = v165;
                  }

                  while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v165 - 120) & 1) != 0);
                  *v165 = v199;
                  if (*(v165 + 31) < 0)
                  {
                    operator delete(*v166);
                  }

                  v169 = v200;
                  *(v166 + 16) = v201;
                  *v166 = v169;
                  HIBYTE(v201) = 0;
                  LOBYTE(v200) = 0;
                  *(v165 + 32) = v202;
                  if (*(v165 + 63) < 0)
                  {
                    operator delete(*(v165 + 40));
                  }

                  v170 = 0;
                  v171 = __p;
                  *(v165 + 56) = v204;
                  *(v165 + 40) = v171;
                  HIBYTE(v204) = 0;
                  LOBYTE(__p) = 0;
                  *(v165 + 64) = v205;
                  do
                  {
                    v172 = a1 + v170;
                    v173 = &(&v199)[v170 / 8];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate((a1 + v170 + 192));
                    *(v172 + 192) = *(&v206 + v170);
                    *(v172 + 208) = *(&v207 + v170);
                    v173[9] = 0;
                    v173[10] = 0;
                    v173[11] = 0;
                    v170 += 24;
                  }

                  while (v170 != 48);
                  for (j = 12; j != 6; j -= 3)
                  {
                    v187 = &(&v199)[j];
                    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
                  }

                  if (SHIBYTE(v204) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v201) < 0)
                  {
                    operator delete(v200);
                  }
                }

                v160 = v161 + 30;
                a1 = v161;
              }

              while (v161 + 30 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v7 != a2)
          {
            v177 = a2 - v7;
            v178 = a2;
            v77 = (v9 - 2) >> 1;
            v185 = v77;
            do
            {
              v78 = v77;
              if (v185 >= v77)
              {
                v181 = v77;
                v79 = (2 * v77) | 1;
                v80 = a1 + 120 * v79;
                v81 = 2 * v77 + 2;
                if (v81 < v9 && std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((a1 + 120 * v79), v80 + 120))
                {
                  v80 += 120;
                  v79 = v81;
                }

                v78 = v181;
                v82 = a1 + 120 * v181;
                if ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v80, v82) & 1) == 0)
                {
                  LODWORD(v199) = *v82;
                  v83 = *(v82 + 8);
                  v201 = *(v82 + 24);
                  v200 = v83;
                  *(v82 + 16) = 0;
                  *(v82 + 24) = 0;
                  *(v82 + 8) = 0;
                  v202 = *(v82 + 32);
                  v84 = *(v82 + 40);
                  v204 = *(v82 + 56);
                  __p = v84;
                  *(v82 + 48) = 0;
                  *(v82 + 56) = 0;
                  *(v82 + 40) = 0;
                  v205 = *(v82 + 64);
                  v206 = *(v82 + 72);
                  v207 = *(v82 + 88);
                  *(v82 + 72) = 0;
                  *(v82 + 80) = 0;
                  *(v82 + 88) = 0;
                  v208 = *(v82 + 96);
                  v209 = *(v82 + 112);
                  *(v82 + 96) = 0;
                  *(v82 + 104) = 0;
                  *(v82 + 112) = 0;
                  do
                  {
                    v85 = v80;
                    v86 = v80 + 8;
                    *v82 = *v80;
                    if (*(v82 + 31) < 0)
                    {
                      operator delete(*(v82 + 8));
                    }

                    v87 = *v86;
                    *(v82 + 24) = *(v80 + 24);
                    *(v82 + 8) = v87;
                    *(v80 + 31) = 0;
                    *(v80 + 8) = 0;
                    *(v82 + 32) = *(v80 + 32);
                    if (*(v82 + 63) < 0)
                    {
                      operator delete(*(v82 + 40));
                    }

                    v88 = 0;
                    v89 = *(v85 + 40);
                    *(v82 + 56) = *(v85 + 56);
                    *(v82 + 40) = v89;
                    *(v85 + 63) = 0;
                    *(v85 + 40) = 0;
                    *(v82 + 64) = *(v85 + 64);
                    do
                    {
                      v90 = v82 + v88;
                      v91 = (v85 + v88);
                      std::vector<AMCP::Terminal_Description>::__vdeallocate((v82 + v88 + 72));
                      *(v90 + 72) = *(v85 + v88 + 72);
                      *(v90 + 88) = *(v85 + v88 + 88);
                      v91[9] = 0;
                      v91[10] = 0;
                      v91[11] = 0;
                      v88 += 24;
                    }

                    while (v88 != 48);
                    if (v185 < v79)
                    {
                      break;
                    }

                    v92 = (2 * v79) | 1;
                    v80 = a1 + 120 * v92;
                    v93 = 2 * v79 + 2;
                    if (v93 < v9 && std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((a1 + 120 * v92), v80 + 120))
                    {
                      v80 += 120;
                      v92 = v93;
                    }

                    v82 = v85;
                    v79 = v92;
                  }

                  while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v80, &v199));
                  *v85 = v199;
                  if (*(v85 + 31) < 0)
                  {
                    operator delete(*v86);
                  }

                  v94 = v200;
                  *(v86 + 16) = v201;
                  *v86 = v94;
                  HIBYTE(v201) = 0;
                  LOBYTE(v200) = 0;
                  *(v85 + 32) = v202;
                  if (*(v85 + 63) < 0)
                  {
                    operator delete(*(v85 + 40));
                  }

                  v95 = 0;
                  v96 = __p;
                  *(v85 + 56) = v204;
                  *(v85 + 40) = v96;
                  HIBYTE(v204) = 0;
                  LOBYTE(__p) = 0;
                  *(v85 + 64) = v205;
                  a2 = v178;
                  do
                  {
                    v97 = v85 + v95;
                    v98 = &(&v199)[v95 / 8];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate((v85 + v95 + 72));
                    *(v97 + 72) = *(&v206 + v95);
                    *(v97 + 88) = *(&v207 + v95);
                    v98[9] = 0;
                    v98[10] = 0;
                    v98[11] = 0;
                    v95 += 24;
                  }

                  while (v95 != 48);
                  for (k = 12; k != 6; k -= 3)
                  {
                    v187 = &(&v199)[k];
                    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
                  }

                  v78 = v181;
                  if (SHIBYTE(v204) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v201) < 0)
                  {
                    operator delete(v200);
                  }
                }
              }

              v77 = v78 - 1;
            }

            while (v78);
            v100 = 0xEEEEEEEEEEEEEEEFLL * (v177 >> 3);
            do
            {
              v101 = v100 - 2;
              if (v100 >= 2)
              {
                v186 = v100;
                v179 = a2;
                v102 = 0;
                v103 = *a1;
                v104 = *(a1 + 24);
                v105 = *(a1 + 32);
                v188 = *(a1 + 8);
                v189 = v104;
                *(a1 + 16) = 0;
                *(a1 + 24) = 0;
                *(a1 + 8) = 0;
                v106 = *(a1 + 40);
                v107 = *(a1 + 64);
                v192 = *(a1 + 56);
                v182 = v103;
                LODWORD(v187) = v103;
                v191 = v106;
                *(a1 + 48) = 0;
                *(a1 + 56) = 0;
                *(a1 + 40) = 0;
                v190 = v105;
                v193 = v107;
                v194 = *(a1 + 72);
                v195 = *(a1 + 88);
                *(a1 + 72) = 0;
                *(a1 + 80) = 0;
                *(a1 + 88) = 0;
                v196 = *(a1 + 96);
                v197 = *(a1 + 112);
                *(a1 + 96) = 0;
                *(a1 + 104) = 0;
                v108 = v101 >> 1;
                v109 = a1;
                *(a1 + 112) = 0;
                do
                {
                  v110 = v109 + 120 * v102;
                  v111 = v110 + 120;
                  v112 = 2 * v102;
                  v102 = (2 * v102) | 1;
                  v113 = v112 + 2;
                  if (v112 + 2 < v186)
                  {
                    v114 = v110 + 240;
                    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v110 + 120), v110 + 240))
                    {
                      v111 = v114;
                      v102 = v113;
                    }
                  }

                  v115 = (v111 + 8);
                  *v109 = *v111;
                  if (*(v109 + 31) < 0)
                  {
                    operator delete(*(v109 + 8));
                  }

                  v116 = *v115;
                  *(v109 + 24) = *(v111 + 24);
                  *(v109 + 8) = v116;
                  *(v111 + 31) = 0;
                  *(v111 + 8) = 0;
                  *(v109 + 32) = *(v111 + 32);
                  if (*(v109 + 63) < 0)
                  {
                    operator delete(*(v109 + 40));
                  }

                  v117 = 0;
                  v118 = *(v111 + 40);
                  *(v109 + 56) = *(v111 + 56);
                  *(v109 + 40) = v118;
                  *(v111 + 63) = 0;
                  *(v111 + 40) = 0;
                  *(v109 + 64) = *(v111 + 64);
                  v119 = (v111 + 72);
                  do
                  {
                    v120 = v109 + v117;
                    v121 = (v111 + v117);
                    std::vector<AMCP::Terminal_Description>::__vdeallocate((v109 + v117 + 72));
                    *(v120 + 72) = *(v111 + v117 + 72);
                    *(v120 + 88) = *(v111 + v117 + 88);
                    v121[9] = 0;
                    v121[10] = 0;
                    v121[11] = 0;
                    v117 += 24;
                  }

                  while (v117 != 48);
                  v109 = v111;
                }

                while (v102 <= v108);
                a2 = v179;
                if (v111 == v179 - 30)
                {
                  *v111 = v182;
                  if (*(v111 + 31) < 0)
                  {
                    operator delete(*v115);
                  }

                  v154 = v188;
                  *(v111 + 24) = v189;
                  *v115 = v154;
                  HIBYTE(v189) = 0;
                  LOBYTE(v188) = 0;
                  *(v111 + 32) = v190;
                  if (*(v111 + 63) < 0)
                  {
                    operator delete(*(v111 + 40));
                  }

                  v155 = v191;
                  *(v111 + 56) = v192;
                  *(v111 + 40) = v155;
                  HIBYTE(v192) = 0;
                  LOBYTE(v191) = 0;
                  *(v111 + 64) = v193;
                  v156 = &v194;
                  v157 = 2;
                  do
                  {
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(v119);
                    *v119 = *v156;
                    v119[2] = *(v156 + 2);
                    *v156 = 0;
                    *(v156 + 1) = 0;
                    *(v156 + 2) = 0;
                    v156 = (v156 + 24);
                    v119 += 3;
                    --v157;
                  }

                  while (v157);
                }

                else
                {
                  *v111 = *(v179 - 30);
                  if (*(v111 + 31) < 0)
                  {
                    operator delete(*v115);
                  }

                  v122 = (v179 - 28);
                  v123 = *(v179 - 7);
                  *(v111 + 24) = *(v179 - 12);
                  *v115 = v123;
                  *(v179 - 89) = 0;
                  *(v179 - 112) = 0;
                  *(v111 + 32) = *(v179 - 11);
                  if (*(v111 + 63) < 0)
                  {
                    operator delete(*(v111 + 40));
                  }

                  v124 = 0;
                  v125 = (v179 - 20);
                  v126 = *(v179 - 5);
                  *(v111 + 56) = *(v179 - 8);
                  *(v111 + 40) = v126;
                  *(v179 - 57) = 0;
                  *(v179 - 80) = 0;
                  *(v111 + 64) = *(v179 - 7);
                  do
                  {
                    v127 = v111 + v124 * 4;
                    v128 = &v179[v124];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate((v111 + v124 * 4 + 72));
                    *(v127 + 72) = *&v179[v124 - 12];
                    *(v127 + 88) = *&v179[v124 - 8];
                    *(v128 - 6) = 0;
                    *(v128 - 5) = 0;
                    *(v128 - 4) = 0;
                    v124 += 6;
                  }

                  while (v124 != 12);
                  *(v179 - 30) = v187;
                  if (*(v179 - 89) < 0)
                  {
                    operator delete(*v122);
                  }

                  v129 = v188;
                  *(v179 - 12) = v189;
                  *v122 = v129;
                  HIBYTE(v189) = 0;
                  LOBYTE(v188) = 0;
                  *(v179 - 11) = v190;
                  if (*(v179 - 57) < 0)
                  {
                    operator delete(*v125);
                  }

                  v130 = 0;
                  v131 = v111 + 120;
                  v132 = v191;
                  *(v179 - 8) = v192;
                  *v125 = v132;
                  HIBYTE(v192) = 0;
                  LOBYTE(v191) = 0;
                  *(v179 - 7) = v193;
                  do
                  {
                    v133 = &v179[v130 / 4];
                    v134 = &(&v187)[v130 / 8];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(&v179[v130 / 4 - 12]);
                    *(v133 - 3) = *(&v194 + v130);
                    *(v133 - 4) = *(&v195 + v130);
                    v134[9] = 0;
                    v134[10] = 0;
                    v134[11] = 0;
                    v130 += 24;
                  }

                  while (v130 != 48);
                  if (v131 - a1 >= 121)
                  {
                    v135 = (-2 - 0x1111111111111111 * ((v131 - a1) >> 3)) >> 1;
                    v136 = a1 + 120 * v135;
                    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v136, v111))
                    {
                      LODWORD(v199) = *v111;
                      v137 = *(v111 + 24);
                      v200 = *v115;
                      v201 = v137;
                      *(v111 + 16) = 0;
                      *(v111 + 24) = 0;
                      *v115 = 0;
                      v138 = *(v111 + 32);
                      v139 = *(v111 + 40);
                      v140 = *(v111 + 64);
                      v204 = *(v111 + 56);
                      __p = v139;
                      *(v111 + 48) = 0;
                      *(v111 + 56) = 0;
                      *(v111 + 40) = 0;
                      v202 = v138;
                      v205 = v140;
                      v206 = *(v111 + 72);
                      v207 = *(v111 + 88);
                      *v119 = 0;
                      *(v111 + 80) = 0;
                      *(v111 + 88) = 0;
                      v208 = *(v111 + 96);
                      v209 = *(v111 + 112);
                      *(v111 + 96) = 0;
                      *(v111 + 104) = 0;
                      *(v111 + 112) = 0;
                      do
                      {
                        v141 = v136;
                        v142 = v136 + 8;
                        *v111 = *v136;
                        if (*(v111 + 31) < 0)
                        {
                          operator delete(*(v111 + 8));
                        }

                        v143 = *v142;
                        *(v111 + 24) = *(v136 + 24);
                        *(v111 + 8) = v143;
                        *(v136 + 31) = 0;
                        *(v136 + 8) = 0;
                        *(v111 + 32) = *(v136 + 32);
                        if (*(v111 + 63) < 0)
                        {
                          operator delete(*(v111 + 40));
                        }

                        v144 = 0;
                        v145 = *(v141 + 40);
                        *(v111 + 56) = *(v141 + 56);
                        *(v111 + 40) = v145;
                        *(v141 + 63) = 0;
                        *(v141 + 40) = 0;
                        *(v111 + 64) = *(v141 + 64);
                        do
                        {
                          v146 = v111 + v144;
                          v147 = (v141 + v144);
                          std::vector<AMCP::Terminal_Description>::__vdeallocate((v111 + v144 + 72));
                          *(v146 + 72) = *(v141 + v144 + 72);
                          *(v146 + 88) = *(v141 + v144 + 88);
                          v147[9] = 0;
                          v147[10] = 0;
                          v147[11] = 0;
                          v144 += 24;
                        }

                        while (v144 != 48);
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = a1 + 120 * v135;
                        v111 = v141;
                      }

                      while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v136, &v199) & 1) != 0);
                      *v141 = v199;
                      if (*(v141 + 31) < 0)
                      {
                        operator delete(*v142);
                      }

                      v148 = v200;
                      *(v142 + 16) = v201;
                      *v142 = v148;
                      HIBYTE(v201) = 0;
                      LOBYTE(v200) = 0;
                      *(v141 + 32) = v202;
                      if (*(v141 + 63) < 0)
                      {
                        operator delete(*(v141 + 40));
                      }

                      v149 = 0;
                      v150 = __p;
                      *(v141 + 56) = v204;
                      *(v141 + 40) = v150;
                      HIBYTE(v204) = 0;
                      LOBYTE(__p) = 0;
                      *(v141 + 64) = v205;
                      do
                      {
                        v151 = v141 + v149;
                        v152 = &(&v199)[v149 / 8];
                        std::vector<AMCP::Terminal_Description>::__vdeallocate((v141 + v149 + 72));
                        *(v151 + 72) = *(&v206 + v149);
                        *(v151 + 88) = *(&v207 + v149);
                        v152[9] = 0;
                        v152[10] = 0;
                        v152[11] = 0;
                        v149 += 24;
                      }

                      while (v149 != 48);
                      for (m = 12; m != 6; m -= 3)
                      {
                        v198 = &(&v199)[m];
                        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v198);
                      }

                      if (SHIBYTE(v204) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v201) < 0)
                      {
                        operator delete(v200);
                      }
                    }
                  }
                }

                for (n = 12; n != 6; n -= 3)
                {
                  v199 = &(&v187)[n];
                  std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v199);
                }

                if (SHIBYTE(v192) < 0)
                {
                  operator delete(v191);
                }

                if (SHIBYTE(v189) < 0)
                {
                  operator delete(v188);
                }

                v100 = v186;
              }

              a2 -= 30;
            }

            while (v100-- > 2);
          }

          return;
        }

        if (v8 < 0x3C01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v7 + 120 * (v9 >> 1)), v7, v183);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120 * (v9 >> 1)), v183);
          v10 = 120 * (v9 >> 1);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v7 + 120), (v10 + v7 - 120), v176);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v7 + 240), (v7 + 120 + v10), v175);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v10 + v7 - 120), (v7 + v10), (v7 + 120 + v10));
          std::swap[abi:ne200100]<AMCP::Node_Description>(v7, (v7 + v10));
        }

        --a3;
        if (a4 & 1) != 0 || (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v7 - 120), v7))
        {
          break;
        }

        LODWORD(v199) = *v7;
        v34 = *(v7 + 24);
        v35 = *(v7 + 32);
        v200 = *(v7 + 8);
        v201 = v34;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 8) = 0;
        v36 = *(v7 + 40);
        v37 = *(v7 + 64);
        v204 = *(v7 + 56);
        __p = v36;
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        *(v7 + 40) = 0;
        v202 = v35;
        v205 = v37;
        v38 = (v7 + 72);
        v206 = *(v7 + 72);
        v207 = *(v7 + 88);
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        v208 = *(v7 + 96);
        v209 = *(v7 + 112);
        *(v7 + 96) = 0;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v183))
        {
          do
          {
            v7 += 120;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v7) & 1) == 0);
        }

        else
        {
          v39 = v7 + 120;
          do
          {
            v7 = v39;
            if (v39 >= a2)
            {
              break;
            }

            v40 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v39);
            v39 = v7 + 120;
          }

          while (!v40);
        }

        v41 = a2;
        if (v7 < a2)
        {
          v41 = a2;
          do
          {
            v41 -= 30;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v41) & 1) != 0);
        }

        while (v7 < v41)
        {
          std::swap[abi:ne200100]<AMCP::Node_Description>(v7, v41);
          do
          {
            v7 += 120;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v7));
          do
          {
            v41 -= 30;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v41) & 1) != 0);
        }

        if (v7 - 120 != a1)
        {
          *a1 = *(v7 - 120);
          if (*(a1 + 31) < 0)
          {
            operator delete(*(a1 + 8));
          }

          v42 = *(v7 - 112);
          *(a1 + 24) = *(v7 - 96);
          *(a1 + 8) = v42;
          *(v7 - 89) = 0;
          *(v7 - 112) = 0;
          *(a1 + 32) = *(v7 - 88);
          if (*(a1 + 63) < 0)
          {
            operator delete(*(a1 + 40));
          }

          v43 = *(v7 - 80);
          *(a1 + 56) = *(v7 - 64);
          *(a1 + 40) = v43;
          *(v7 - 57) = 0;
          *(v7 - 80) = 0;
          *(a1 + 64) = *(v7 - 56);
          v44 = v7 - 48;
          v45 = 2;
          do
          {
            std::vector<AMCP::Terminal_Description>::__vdeallocate(v38);
            *v38 = *v44;
            v38[2] = *(v44 + 16);
            *v44 = 0;
            *(v44 + 8) = 0;
            *(v44 + 16) = 0;
            v44 += 24;
            v38 += 3;
            --v45;
          }

          while (v45);
        }

        *(v7 - 120) = v199;
        v46 = (v7 - 112);
        if (*(v7 - 89) < 0)
        {
          operator delete(*v46);
        }

        v47 = v200;
        *(v7 - 96) = v201;
        *v46 = v47;
        HIBYTE(v201) = 0;
        LOBYTE(v200) = 0;
        *(v7 - 88) = v202;
        v48 = (v7 - 80);
        if (*(v7 - 57) < 0)
        {
          operator delete(*v48);
        }

        v49 = 0;
        v50 = __p;
        *(v7 - 64) = v204;
        *v48 = v50;
        HIBYTE(v204) = 0;
        LOBYTE(__p) = 0;
        *(v7 - 56) = v205;
        do
        {
          v51 = v7 + v49;
          v52 = &(&v199)[v49 / 8];
          std::vector<AMCP::Terminal_Description>::__vdeallocate((v7 + v49 - 48));
          *(v51 - 48) = *(&v206 + v49);
          *(v51 - 32) = *(&v207 + v49);
          v52[9] = 0;
          v52[10] = 0;
          v52[11] = 0;
          v49 += 24;
        }

        while (v49 != 48);
        for (ii = 12; ii != 6; ii -= 3)
        {
          v187 = &(&v199)[ii];
          std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
        }

        if (SHIBYTE(v204) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v201) < 0)
        {
          operator delete(v200);
        }

LABEL_53:
        a4 = 0;
      }

      LODWORD(v199) = *v7;
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v200 = *(v7 + 8);
      v201 = v11;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v13 = *(v7 + 40);
      v14 = *(v7 + 64);
      v204 = *(v7 + 56);
      __p = v13;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v202 = v12;
      v205 = v14;
      v15 = (v7 + 72);
      v206 = *(v7 + 72);
      v207 = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v208 = *(v7 + 96);
      v209 = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      v16 = v7;
      *(v7 + 112) = 0;
      do
      {
        v17 = v16;
        v16 += 30;
      }

      while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v16, &v199) & 1) != 0);
      v18 = a2;
      if (v17 == v7)
      {
        do
        {
          if (v16 >= a2)
          {
            break;
          }

          a2 -= 30;
        }

        while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, &v199) & 1) == 0);
      }

      else
      {
        do
        {
          a2 -= 30;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, &v199));
      }

      v7 = v16;
      if (v16 < a2)
      {
        v19 = a2;
        do
        {
          std::swap[abi:ne200100]<AMCP::Node_Description>(v7, v19);
          do
          {
            v7 += 120;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v7, &v199) & 1) != 0);
          do
          {
            v19 -= 30;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v19, &v199));
        }

        while (v7 < v19);
      }

      if (v7 - 120 != a1)
      {
        *a1 = *(v7 - 120);
        if (*(a1 + 31) < 0)
        {
          operator delete(*(a1 + 8));
        }

        v20 = *(v7 - 112);
        *(a1 + 24) = *(v7 - 96);
        *(a1 + 8) = v20;
        *(v7 - 89) = 0;
        *(v7 - 112) = 0;
        *(a1 + 32) = *(v7 - 88);
        if (*(a1 + 63) < 0)
        {
          operator delete(*(a1 + 40));
        }

        v21 = *(v7 - 80);
        *(a1 + 56) = *(v7 - 64);
        *(a1 + 40) = v21;
        *(v7 - 57) = 0;
        *(v7 - 80) = 0;
        *(a1 + 64) = *(v7 - 56);
        v22 = v7 - 48;
        v23 = 2;
        do
        {
          std::vector<AMCP::Terminal_Description>::__vdeallocate(v15);
          *v15 = *v22;
          v15[2] = *(v22 + 16);
          *v22 = 0;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          v22 += 24;
          v15 += 3;
          --v23;
        }

        while (v23);
      }

      *(v7 - 120) = v199;
      v24 = (v7 - 112);
      if (*(v7 - 89) < 0)
      {
        operator delete(*v24);
      }

      v25 = v200;
      *(v7 - 96) = v201;
      *v24 = v25;
      HIBYTE(v201) = 0;
      LOBYTE(v200) = 0;
      *(v7 - 88) = v202;
      v26 = (v7 - 80);
      if (*(v7 - 57) < 0)
      {
        operator delete(*v26);
      }

      v27 = 0;
      v28 = __p;
      *(v7 - 64) = v204;
      *v26 = v28;
      HIBYTE(v204) = 0;
      LOBYTE(__p) = 0;
      *(v7 - 56) = v205;
      do
      {
        v29 = v7 + v27;
        v30 = &(&v199)[v27 / 8];
        std::vector<AMCP::Terminal_Description>::__vdeallocate((v7 + v27 - 48));
        *(v29 - 48) = *(&v206 + v27);
        *(v29 - 32) = *(&v207 + v27);
        v30[9] = 0;
        v30[10] = 0;
        v30[11] = 0;
        v27 += 24;
      }

      while (v27 != 48);
      for (jj = 12; jj != 6; jj -= 3)
      {
        v187 = &(&v199)[jj];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
      }

      if (SHIBYTE(v204) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v201) < 0)
      {
        operator delete(v200);
      }

      v32 = v16 >= a2;
      a2 = v18;
      if (!v32)
      {
LABEL_52:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,false>(a1, v7 - 120, a3, a4 & 1);
        goto LABEL_53;
      }

      v33 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *>(a1, (v7 - 120));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *>(v7, v18))
      {
        break;
      }

      if (!v33)
      {
        goto LABEL_52;
      }
    }

    a2 = (v7 - 120);
    if (!v33)
    {
      continue;
    }

    break;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v269 = a2 - 192;
    v265 = a2 - 576;
    v266 = a2 - 384;
    v7 = a1;
    v275 = a2;
    while (1)
    {
      while (1)
      {
        a1 = v7;
        v8 = a2 - v7;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v7) >> 6);
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, v269);
              return;
            case 4uLL:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, a1 + 384);
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v269, a1 + 384))
              {
                return;
              }

              std::swap[abi:ne200100]<AMCP::Wire_Description>(a1 + 384, v269);
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 + 384, a1 + 192))
              {
                return;
              }

              std::swap[abi:ne200100]<AMCP::Wire_Description>(a1 + 192, a1 + 384);
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 + 192, a1))
              {
                return;
              }

              v77 = a1 + 192;
              v76 = a1;
              goto LABEL_110;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, a1 + 384, a1 + 576, v269);
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
            if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v269, a1))
            {
              return;
            }

            v76 = a1;
            v77 = v269;
LABEL_110:

            std::swap[abi:ne200100]<AMCP::Wire_Description>(v76, v77);
            return;
          }
        }

        if (v8 <= 4607)
        {
          if (a4)
          {
            if (a1 != a2)
            {
              v78 = a1 + 192;
              if (a1 + 192 != a2)
              {
                v79 = 0;
                v80 = a1;
                do
                {
                  v81 = v78;
                  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v78, v80))
                  {
                    v82 = v80 + 296;
                    v83 = *v81;
                    v296 = *(v81 + 16);
                    *v295 = v83;
                    *(v81 + 8) = 0;
                    *(v81 + 16) = 0;
                    *v81 = 0;
                    v297 = *(v80 + 216);
                    v298 = *(v80 + 224);
                    v299 = *(v80 + 232);
                    *(v80 + 232) = 0;
                    *(v80 + 240) = 0;
                    v84 = *(v80 + 248);
                    v85 = *(v80 + 256);
                    *(v80 + 248) = 0;
                    v300 = v84;
                    v301 = v85;
                    v302 = *(v80 + 264);
                    *v303 = *(v80 + 272);
                    v303[2] = *(v80 + 288);
                    *(v80 + 280) = 0;
                    *(v80 + 288) = 0;
                    *(v80 + 272) = 0;
                    *__p = *(v80 + 296);
                    __p[2] = *(v80 + 312);
                    *(v80 + 296) = 0;
                    *(v80 + 304) = 0;
                    *(v80 + 312) = 0;
                    v86 = *(v80 + 336);
                    v305 = *(v80 + 320);
                    v306 = v86;
                    v307 = *(v80 + 352);
                    v308[0] = *(v80 + 360);
                    *&v308[1] = *(v80 + 376);
                    *(v80 + 360) = 0;
                    *(v80 + 368) = 0;
                    v87 = v79;
                    *(v82 + 80) = 0;
                    while (1)
                    {
                      v88 = v87;
                      v89 = a1 + v87;
                      if (*(a1 + v87 + 215) < 0)
                      {
                        operator delete(*(v89 + 192));
                      }

                      *(v89 + 192) = *v89;
                      v90 = *(v89 + 16);
                      v91 = *(v89 + 24);
                      *(v89 + 23) = 0;
                      *v89 = 0;
                      *(v89 + 208) = v90;
                      *(v89 + 216) = v91;
                      *(v89 + 224) = *(v89 + 32);
                      if (*(v89 + 255) < 0)
                      {
                        operator delete(*(v89 + 232));
                      }

                      v92 = a1 + v87;
                      *(v89 + 232) = *(a1 + v88 + 40);
                      v93 = *(a1 + v88 + 64);
                      *(v89 + 248) = *(a1 + v88 + 56);
                      *(v92 + 63) = 0;
                      *(v92 + 40) = 0;
                      *(v92 + 256) = v93;
                      *(v92 + 264) = *(a1 + v88 + 72);
                      v94 = *(a1 + v88 + 272);
                      if (v94)
                      {
                        *(v92 + 280) = v94;
                        operator delete(v94);
                        *(v92 + 288) = 0;
                      }

                      *(v92 + 272) = *(v92 + 80);
                      *(v92 + 288) = *(v92 + 96);
                      *(v92 + 80) = 0;
                      *(v92 + 88) = 0;
                      *(v92 + 96) = 0;
                      v95 = *(v92 + 296);
                      if (v95)
                      {
                        *(a1 + v88 + 304) = v95;
                        operator delete(v95);
                        *(a1 + v88 + 312) = 0;
                      }

                      *(v92 + 296) = *(v92 + 104);
                      v96 = a1 + v88;
                      *(v96 + 312) = *(a1 + v88 + 120);
                      *(v92 + 104) = 0;
                      *(v92 + 112) = 0;
                      *(v92 + 120) = 0;
                      v97 = *(a1 + v88 + 144);
                      *(v96 + 320) = *(a1 + v88 + 128);
                      *(v96 + 336) = v97;
                      *(v96 + 352) = *(a1 + v88 + 160);
                      std::vector<std::string>::__vdeallocate((a1 + v88 + 360));
                      *(a1 + v88 + 360) = *(a1 + v88 + 168);
                      *(v96 + 376) = *(v96 + 184);
                      *(v96 + 176) = 0;
                      *(v96 + 184) = 0;
                      *(v96 + 168) = 0;
                      if (!v88)
                      {
                        break;
                      }

                      v87 = v88 - 192;
                      if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v88 - 192 + a1))
                      {
                        v98 = a1 + v88;
                        v99 = a1 + v88 + 24;
                        v100 = a1 + v88 + 40;
                        v101 = a1 + v88 + 64;
                        v102 = a1 + v88 + 80;
                        v103 = a1 + v88 + 104;
                        v270 = a1 + v88 + 128;
                        v273 = (a1 + v88 + 168);
                        goto LABEL_138;
                      }
                    }

                    v99 = v96 + 24;
                    v100 = v96 + 40;
                    v101 = v96 + 64;
                    v102 = v96 + 80;
                    v103 = v96 + 104;
                    v270 = v96 + 128;
                    v273 = (v96 + 168);
                    v98 = a1;
LABEL_138:
                    if (*(v98 + 23) < 0)
                    {
                      operator delete(*v98);
                    }

                    v104 = *v295;
                    *(v98 + 16) = v296;
                    *v98 = v104;
                    HIBYTE(v296) = 0;
                    LOBYTE(v295[0]) = 0;
                    v105 = v297;
                    *(v99 + 8) = v298;
                    *v99 = v105;
                    if (*(v98 + 63) < 0)
                    {
                      operator delete(*v100);
                    }

                    v106 = v299;
                    *(v100 + 16) = v300;
                    *v100 = v106;
                    HIBYTE(v300) = 0;
                    LOBYTE(v299) = 0;
                    v107 = v302;
                    *v101 = v301;
                    *(v101 + 8) = v107;
                    v108 = *v102;
                    if (*v102)
                    {
                      *(v98 + 88) = v108;
                      operator delete(v108);
                      *v102 = 0;
                      *(v102 + 8) = 0;
                      *(v102 + 16) = 0;
                    }

                    *v102 = v303[0];
                    *(v98 + 88) = *&v303[1];
                    memset(v303, 0, sizeof(v303));
                    v109 = *v103;
                    if (*v103)
                    {
                      *(v98 + 112) = v109;
                      operator delete(v109);
                      *v103 = 0;
                      *(v103 + 8) = 0;
                      *(v103 + 16) = 0;
                    }

                    *v103 = __p[0];
                    *(v98 + 112) = *&__p[1];
                    memset(__p, 0, sizeof(__p));
                    v110 = v305;
                    v111 = v306;
                    *(v270 + 32) = v307;
                    *v270 = v110;
                    *(v270 + 16) = v111;
                    std::vector<std::string>::__vdeallocate(v273);
                    v273->__begin_ = *&v308[0];
                    *(v98 + 176) = *(v308 + 8);
                    memset(v308, 0, 24);
                    v277[0] = v308;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v277);
                    a2 = v275;
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (v303[0])
                    {
                      v303[1] = v303[0];
                      operator delete(v303[0]);
                    }

                    if (SHIBYTE(v300) < 0)
                    {
                      operator delete(v299);
                    }

                    if (SHIBYTE(v296) < 0)
                    {
                      operator delete(v295[0]);
                    }
                  }

                  v78 = v81 + 192;
                  v79 += 192;
                  v80 = v81;
                }

                while (v81 + 192 != a2);
              }
            }
          }

          else if (a1 != a2)
          {
            v232 = a1 + 192;
            if (a1 + 192 != a2)
            {
              v233 = a1 + 96;
              do
              {
                v234 = v232;
                if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v232, a1))
                {
                  v235 = *v234;
                  v296 = *(v234 + 16);
                  *v295 = v235;
                  *(v234 + 8) = 0;
                  *(v234 + 16) = 0;
                  *v234 = 0;
                  v297 = *(a1 + 216);
                  v298 = *(a1 + 224);
                  v299 = *(a1 + 232);
                  *(a1 + 232) = 0;
                  *(a1 + 240) = 0;
                  v236 = *(a1 + 248);
                  v237 = *(a1 + 256);
                  *(a1 + 248) = 0;
                  v300 = v236;
                  v301 = v237;
                  v302 = *(a1 + 264);
                  *v303 = *(a1 + 272);
                  v303[2] = *(a1 + 288);
                  *(a1 + 280) = 0;
                  *(a1 + 288) = 0;
                  *(a1 + 272) = 0;
                  *__p = *(a1 + 296);
                  __p[2] = *(a1 + 312);
                  *(a1 + 296) = 0;
                  *(a1 + 304) = 0;
                  *(a1 + 312) = 0;
                  v238 = *(a1 + 336);
                  v305 = *(a1 + 320);
                  v306 = v238;
                  v307 = *(a1 + 352);
                  v308[0] = *(a1 + 360);
                  *&v308[1] = *(a1 + 376);
                  *(a1 + 360) = 0;
                  *(a1 + 368) = 0;
                  v239 = v233;
                  *(a1 + 376) = 0;
                  do
                  {
                    v240 = v239;
                    if (*(v239 + 119) < 0)
                    {
                      operator delete(*(v239 + 96));
                    }

                    *(v240 + 96) = *(v240 - 96);
                    v241 = *(v240 - 80);
                    *(v240 - 73) = 0;
                    *(v240 - 96) = 0;
                    v242 = *(v240 - 72);
                    *(v240 + 112) = v241;
                    *(v240 + 120) = v242;
                    *(v240 + 128) = *(v240 - 64);
                    if (*(v240 + 159) < 0)
                    {
                      operator delete(*(v240 + 136));
                    }

                    *(v240 + 136) = *(v240 - 56);
                    v243 = *(v240 - 40);
                    v244 = *(v240 - 32);
                    *(v240 - 33) = 0;
                    *(v240 - 56) = 0;
                    *(v240 + 152) = v243;
                    *(v240 + 160) = v244;
                    *(v240 + 168) = *(v240 - 24);
                    v245 = *(v240 + 176);
                    if (v245)
                    {
                      *(v240 + 184) = v245;
                      operator delete(v245);
                      *(v240 + 192) = 0;
                    }

                    v246 = (v240 - 16);
                    *(v240 + 176) = *(v240 - 16);
                    *(v240 + 192) = *v240;
                    v246[1] = 0;
                    *v240 = 0;
                    *v246 = 0;
                    v247 = *(v240 + 200);
                    if (v247)
                    {
                      *(v240 + 208) = v247;
                      operator delete(v247);
                      *(v240 + 216) = 0;
                    }

                    v248 = (v240 + 8);
                    *(v240 + 200) = *(v240 + 8);
                    *(v240 + 216) = *(v240 + 24);
                    *(v240 + 16) = 0;
                    *(v240 + 24) = 0;
                    *(v240 + 8) = 0;
                    v249 = *(v240 + 32);
                    v250 = *(v240 + 48);
                    *(v240 + 256) = *(v240 + 64);
                    *(v240 + 224) = v249;
                    *(v240 + 240) = v250;
                    std::vector<std::string>::__vdeallocate((v240 + 264));
                    *(v240 + 264) = *(v240 + 72);
                    *(v240 + 280) = *(v240 + 88);
                    *(v240 + 72) = 0;
                    *(v240 + 80) = 0;
                    *(v240 + 88) = 0;
                    v251 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v240 - 288);
                    v239 = v240 - 192;
                  }

                  while (v251);
                  v252 = (v240 - 96);
                  if (*(v240 - 73) < 0)
                  {
                    operator delete(*v252);
                  }

                  v253 = v240 - 72;
                  v254 = (v240 - 56);
                  v255 = *v295;
                  *(v240 - 80) = v296;
                  *v252 = v255;
                  HIBYTE(v296) = 0;
                  LOBYTE(v295[0]) = 0;
                  v256 = v298;
                  *v253 = v297;
                  *(v253 + 8) = v256;
                  if (*(v240 - 33) < 0)
                  {
                    operator delete(*v254);
                  }

                  v257 = v240 - 32;
                  v258 = (v240 - 16);
                  v259 = v299;
                  *(v240 - 40) = v300;
                  *v254 = v259;
                  HIBYTE(v300) = 0;
                  LOBYTE(v299) = 0;
                  v260 = v302;
                  *v257 = v301;
                  *(v257 + 8) = v260;
                  v261 = *(v240 - 16);
                  if (v261)
                  {
                    *(v240 - 8) = v261;
                    operator delete(v261);
                    *v258 = 0;
                    *(v240 - 8) = 0;
                    *v240 = 0;
                  }

                  *v258 = *v303;
                  *v240 = v303[2];
                  memset(v303, 0, sizeof(v303));
                  v262 = *v248;
                  if (*v248)
                  {
                    *(v240 + 16) = v262;
                    operator delete(v262);
                    *v248 = 0;
                    *(v240 + 16) = 0;
                    *(v240 + 24) = 0;
                  }

                  *v248 = *__p;
                  *(v240 + 24) = __p[2];
                  memset(__p, 0, sizeof(__p));
                  v263 = v305;
                  v264 = v306;
                  *(v240 + 64) = v307;
                  *(v240 + 32) = v263;
                  *(v240 + 48) = v264;
                  std::vector<std::string>::__vdeallocate((v240 + 72));
                  *(v240 + 72) = v308[0];
                  *(v240 + 88) = *&v308[1];
                  memset(v308, 0, 24);
                  v277[0] = v308;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v277);
                  a2 = v275;
                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }

                  if (v303[0])
                  {
                    v303[1] = v303[0];
                    operator delete(v303[0]);
                  }

                  if (SHIBYTE(v300) < 0)
                  {
                    operator delete(v299);
                  }

                  if (SHIBYTE(v296) < 0)
                  {
                    operator delete(v295[0]);
                  }
                }

                v232 = v234 + 192;
                v233 += 192;
                a1 = v234;
              }

              while (v234 + 192 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (a1 != a2)
          {
            v112 = (v9 - 2) >> 1;
            v267 = v8;
            v274 = v112;
            do
            {
              v113 = v112;
              if (v274 >= v112)
              {
                v114 = (2 * v112) | 1;
                v115 = a1 + 192 * v114;
                if (2 * v112 + 2 < v9 && std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 + 192 * v114, v115 + 192))
                {
                  v115 += 192;
                  v114 = 2 * v113 + 2;
                }

                v116 = a1 + 192 * v113;
                if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v115, v116))
                {
                  v271 = v113;
                  v117 = *v116;
                  v296 = *(v116 + 16);
                  *v295 = v117;
                  *(v116 + 8) = 0;
                  *(v116 + 16) = 0;
                  *v116 = 0;
                  v118 = *(v116 + 24);
                  v298 = *(v116 + 32);
                  v297 = v118;
                  v119 = *(v116 + 40);
                  v300 = *(v116 + 56);
                  v299 = v119;
                  *(v116 + 48) = 0;
                  *(v116 + 56) = 0;
                  *(v116 + 40) = 0;
                  v120 = *(v116 + 64);
                  v302 = *(v116 + 72);
                  v301 = v120;
                  *v303 = *(v116 + 80);
                  v303[2] = *(v116 + 96);
                  *(v116 + 80) = 0;
                  *(v116 + 88) = 0;
                  *(v116 + 96) = 0;
                  *__p = *(v116 + 104);
                  __p[2] = *(v116 + 120);
                  *(v116 + 104) = 0;
                  *(v116 + 112) = 0;
                  *(v116 + 120) = 0;
                  v121 = *(v116 + 128);
                  v122 = *(v116 + 144);
                  v307 = *(v116 + 160);
                  v305 = v121;
                  v306 = v122;
                  v308[0] = *(v116 + 168);
                  *&v308[1] = *(v116 + 184);
                  *(v116 + 168) = 0;
                  *(v116 + 176) = 0;
                  *(v116 + 184) = 0;
                  do
                  {
                    v123 = v115;
                    if (*(v116 + 23) < 0)
                    {
                      operator delete(*v116);
                    }

                    v124 = *v115;
                    *(v116 + 16) = *(v115 + 16);
                    *v116 = v124;
                    *(v115 + 23) = 0;
                    *v115 = 0;
                    v125 = *(v115 + 32);
                    *(v116 + 24) = *(v115 + 24);
                    *(v116 + 32) = v125;
                    if (*(v116 + 63) < 0)
                    {
                      operator delete(*(v116 + 40));
                    }

                    v126 = *(v115 + 40);
                    *(v116 + 56) = *(v115 + 56);
                    *(v116 + 40) = v126;
                    v128 = (v115 + 64);
                    v127 = *(v115 + 64);
                    *(v115 + 63) = 0;
                    *(v115 + 40) = 0;
                    v129 = *(v115 + 72);
                    v130 = *(v116 + 80);
                    *(v116 + 64) = v127;
                    *(v116 + 72) = v129;
                    if (v130)
                    {
                      *(v116 + 88) = v130;
                      operator delete(v130);
                      *(v116 + 80) = 0;
                      *(v116 + 88) = 0;
                      *(v116 + 96) = 0;
                    }

                    *(v116 + 80) = *(v115 + 80);
                    *(v116 + 96) = *(v115 + 96);
                    *(v115 + 80) = 0;
                    *(v115 + 88) = 0;
                    *(v115 + 96) = 0;
                    v131 = *(v116 + 104);
                    if (v131)
                    {
                      *(v116 + 112) = v131;
                      operator delete(v131);
                      *(v116 + 104) = 0;
                      *(v116 + 112) = 0;
                      *(v116 + 120) = 0;
                    }

                    *(v116 + 104) = *(v115 + 104);
                    *(v116 + 120) = *(v115 + 120);
                    *(v115 + 104) = 0;
                    *(v115 + 112) = 0;
                    *(v115 + 120) = 0;
                    v132 = *(v115 + 128);
                    v133 = *(v115 + 144);
                    *(v116 + 160) = *(v115 + 160);
                    *(v116 + 128) = v132;
                    *(v116 + 144) = v133;
                    std::vector<std::string>::__vdeallocate((v116 + 168));
                    *(v116 + 168) = *(v115 + 168);
                    *(v116 + 184) = *(v115 + 184);
                    *(v115 + 168) = 0;
                    *(v115 + 176) = 0;
                    *(v115 + 184) = 0;
                    if (v274 < v114)
                    {
                      break;
                    }

                    v134 = (2 * v114) | 1;
                    v115 = a1 + 192 * v134;
                    v135 = 2 * v114 + 2;
                    if (v135 < v9 && std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 + 192 * v134, v115 + 192))
                    {
                      v115 += 192;
                      v134 = v135;
                    }

                    v116 = v123;
                    v114 = v134;
                  }

                  while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v115, v295));
                  if (*(v123 + 23) < 0)
                  {
                    operator delete(*v123);
                  }

                  v136 = *v295;
                  *(v123 + 16) = v296;
                  *v123 = v136;
                  HIBYTE(v296) = 0;
                  LOBYTE(v295[0]) = 0;
                  v137 = v298;
                  *(v123 + 24) = v297;
                  *(v123 + 32) = v137;
                  if (*(v123 + 63) < 0)
                  {
                    operator delete(*(v123 + 40));
                  }

                  v138 = v299;
                  *(v123 + 56) = v300;
                  *(v123 + 40) = v138;
                  HIBYTE(v300) = 0;
                  LOBYTE(v299) = 0;
                  v139 = v302;
                  *v128 = v301;
                  *(v123 + 72) = v139;
                  v140 = *(v123 + 80);
                  a2 = v275;
                  if (v140)
                  {
                    *(v123 + 88) = v140;
                    operator delete(v140);
                    *(v123 + 80) = 0;
                    *(v123 + 88) = 0;
                    *(v123 + 96) = 0;
                  }

                  *(v123 + 80) = *v303;
                  *(v123 + 96) = v303[2];
                  memset(v303, 0, sizeof(v303));
                  v141 = *(v123 + 104);
                  if (v141)
                  {
                    *(v123 + 112) = v141;
                    operator delete(v141);
                    *(v123 + 104) = 0;
                    *(v123 + 112) = 0;
                    *(v123 + 120) = 0;
                  }

                  *(v123 + 104) = *__p;
                  *(v123 + 120) = __p[2];
                  memset(__p, 0, sizeof(__p));
                  v142 = v307;
                  v143 = v306;
                  *(v123 + 128) = v305;
                  *(v123 + 144) = v143;
                  *(v123 + 160) = v142;
                  std::vector<std::string>::__vdeallocate((v123 + 168));
                  *(v123 + 168) = v308[0];
                  *(v123 + 184) = *&v308[1];
                  memset(v308, 0, 24);
                  v277[0] = v308;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v277);
                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }

                  v113 = v271;
                  if (v303[0])
                  {
                    v303[1] = v303[0];
                    operator delete(v303[0]);
                  }

                  if (SHIBYTE(v300) < 0)
                  {
                    operator delete(v299);
                  }

                  if (SHIBYTE(v296) < 0)
                  {
                    operator delete(v295[0]);
                  }
                }
              }

              v112 = v113 - 1;
            }

            while (v113);
            v144 = 0xAAAAAAAAAAAAAAABLL * (v267 >> 6);
            do
            {
              if (v144 >= 2)
              {
                v276 = a2;
                v145 = 0;
                v146 = *a1;
                v147 = *(a1 + 24);
                v278 = *(a1 + 16);
                *v277 = v146;
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v148 = *(a1 + 32);
                v279 = v147;
                v280 = v148;
                v149 = *(a1 + 56);
                v150 = *(a1 + 64);
                v281 = *(a1 + 40);
                v282 = v149;
                *(a1 + 48) = 0;
                *(a1 + 56) = 0;
                *(a1 + 40) = 0;
                v284 = *(a1 + 72);
                v283 = v150;
                *v285 = *(a1 + 80);
                v286 = *(a1 + 96);
                *(a1 + 80) = 0;
                *(a1 + 88) = 0;
                *(a1 + 96) = 0;
                *v287 = *(a1 + 104);
                v288 = *(a1 + 120);
                *(a1 + 104) = 0;
                *(a1 + 112) = 0;
                *(a1 + 120) = 0;
                v151 = *(a1 + 128);
                v152 = *(a1 + 144);
                v291 = *(a1 + 160);
                v289 = v151;
                v290 = v152;
                v292 = *(a1 + 168);
                v293 = *(a1 + 184);
                *(a1 + 168) = 0;
                *(a1 + 176) = 0;
                v153 = a1;
                *(a1 + 184) = 0;
                do
                {
                  v154 = v153 + 192 * v145;
                  v155 = v154 + 192;
                  v156 = 2 * v145;
                  v145 = (2 * v145) | 1;
                  v157 = v156 + 2;
                  if (v156 + 2 < v144)
                  {
                    v158 = v154 + 384;
                    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v154 + 192, v154 + 384))
                    {
                      v155 = v158;
                      v145 = v157;
                    }
                  }

                  if (*(v153 + 23) < 0)
                  {
                    operator delete(*v153);
                  }

                  v159 = *v155;
                  *(v153 + 16) = *(v155 + 16);
                  *v153 = v159;
                  *(v155 + 23) = 0;
                  *v155 = 0;
                  v160 = (v155 + 24);
                  v161 = *(v155 + 32);
                  *(v153 + 24) = *(v155 + 24);
                  *(v153 + 32) = v161;
                  if (*(v153 + 63) < 0)
                  {
                    operator delete(*(v153 + 40));
                  }

                  v162 = *(v155 + 40);
                  *(v153 + 56) = *(v155 + 56);
                  *(v153 + 40) = v162;
                  v164 = (v155 + 64);
                  v163 = *(v155 + 64);
                  *(v155 + 63) = 0;
                  *(v155 + 40) = 0;
                  v165 = *(v155 + 72);
                  v166 = *(v153 + 80);
                  *(v153 + 64) = v163;
                  *(v153 + 72) = v165;
                  if (v166)
                  {
                    *(v153 + 88) = v166;
                    operator delete(v166);
                    *(v153 + 80) = 0;
                    *(v153 + 88) = 0;
                    *(v153 + 96) = 0;
                  }

                  *(v153 + 80) = *(v155 + 80);
                  *(v153 + 96) = *(v155 + 96);
                  *(v155 + 80) = 0;
                  *(v155 + 88) = 0;
                  *(v155 + 96) = 0;
                  v167 = *(v153 + 104);
                  if (v167)
                  {
                    *(v153 + 112) = v167;
                    operator delete(v167);
                    *(v153 + 104) = 0;
                    *(v153 + 112) = 0;
                    *(v153 + 120) = 0;
                  }

                  *(v153 + 104) = *(v155 + 104);
                  *(v153 + 120) = *(v155 + 120);
                  *(v155 + 104) = 0;
                  *(v155 + 112) = 0;
                  *(v155 + 120) = 0;
                  v168 = *(v155 + 128);
                  v169 = *(v155 + 144);
                  *(v153 + 160) = *(v155 + 160);
                  *(v153 + 128) = v168;
                  *(v153 + 144) = v169;
                  std::vector<std::string>::__vdeallocate((v153 + 168));
                  *(v153 + 168) = *(v155 + 168);
                  *(v153 + 184) = *(v155 + 184);
                  *(v155 + 168) = 0;
                  *(v155 + 176) = 0;
                  *(v155 + 184) = 0;
                  v153 = v155;
                }

                while (v145 <= ((v144 - 2) >> 1));
                v170 = (v276 - 192);
                v171 = *(v155 + 23);
                if (v155 == v276 - 192)
                {
                  if (v171 < 0)
                  {
                    operator delete(*v155);
                  }

                  v223 = *v277;
                  *(v155 + 16) = v278;
                  *v155 = v223;
                  HIBYTE(v278) = 0;
                  LOBYTE(v277[0]) = 0;
                  v224 = v280;
                  *v160 = v279;
                  *(v155 + 32) = v224;
                  if (*(v155 + 63) < 0)
                  {
                    operator delete(*(v155 + 40));
                  }

                  v225 = v281;
                  *(v155 + 56) = v282;
                  *(v155 + 40) = v225;
                  HIBYTE(v282) = 0;
                  LOBYTE(v281) = 0;
                  v226 = v284;
                  *v164 = v283;
                  *(v155 + 72) = v226;
                  v227 = *(v155 + 80);
                  if (v227)
                  {
                    *(v155 + 88) = v227;
                    operator delete(v227);
                    *(v155 + 80) = 0;
                    *(v155 + 88) = 0;
                    *(v155 + 96) = 0;
                  }

                  *(v155 + 80) = *v285;
                  *(v155 + 96) = v286;
                  v285[0] = 0;
                  v285[1] = 0;
                  v286 = 0;
                  v228 = *(v155 + 104);
                  if (v228)
                  {
                    *(v155 + 112) = v228;
                    operator delete(v228);
                    *(v155 + 104) = 0;
                    *(v155 + 112) = 0;
                    *(v155 + 120) = 0;
                  }

                  *(v155 + 104) = *v287;
                  *(v155 + 120) = v288;
                  v287[0] = 0;
                  v287[1] = 0;
                  v288 = 0;
                  v229 = v291;
                  v230 = v290;
                  *(v155 + 128) = v289;
                  *(v155 + 144) = v230;
                  *(v155 + 160) = v229;
                  std::vector<std::string>::__vdeallocate((v155 + 168));
                  *(v155 + 168) = v292;
                  *(v155 + 184) = v293;
                  v292 = 0uLL;
                  v293 = 0;
                }

                else
                {
                  if (v171 < 0)
                  {
                    operator delete(*v155);
                  }

                  v172 = *v170;
                  *(v155 + 16) = *(v276 - 176);
                  *v155 = v172;
                  v173 = *(v276 - 168);
                  *(v276 - 169) = 0;
                  *(v276 - 192) = 0;
                  v174 = *(v276 - 160);
                  *v160 = v173;
                  *(v155 + 32) = v174;
                  if (*(v155 + 63) < 0)
                  {
                    operator delete(*(v155 + 40));
                  }

                  v175 = *(v276 - 152);
                  *(v155 + 56) = *(v276 - 136);
                  *(v155 + 40) = v175;
                  v176 = *(v276 - 128);
                  *(v276 - 129) = 0;
                  *(v276 - 152) = 0;
                  v177 = *(v276 - 120);
                  *v164 = v176;
                  *(v155 + 72) = v177;
                  v178 = *(v155 + 80);
                  if (v178)
                  {
                    *(v155 + 88) = v178;
                    operator delete(v178);
                    *(v155 + 80) = 0;
                    *(v155 + 88) = 0;
                    *(v155 + 96) = 0;
                  }

                  *(v155 + 80) = *(v276 - 112);
                  *(v155 + 96) = *(v276 - 96);
                  *(v276 - 112) = 0;
                  *(v276 - 104) = 0;
                  *(v276 - 96) = 0;
                  v179 = *(v155 + 104);
                  if (v179)
                  {
                    *(v155 + 112) = v179;
                    operator delete(v179);
                    *(v155 + 104) = 0;
                    *(v155 + 112) = 0;
                    *(v155 + 120) = 0;
                  }

                  v180 = (v276 - 88);
                  *(v155 + 104) = *(v276 - 88);
                  *(v155 + 120) = *(v276 - 72);
                  *v180 = 0;
                  v180[1] = 0;
                  v180[2] = 0;
                  v181 = *(v276 - 64);
                  v182 = *(v276 - 48);
                  *(v155 + 160) = *(v276 - 32);
                  *(v155 + 128) = v181;
                  *(v155 + 144) = v182;
                  std::vector<std::string>::__vdeallocate((v155 + 168));
                  v183 = (v276 - 24);
                  *(v155 + 168) = *(v276 - 24);
                  *(v155 + 184) = *(v276 - 8);
                  v183->__begin_ = 0;
                  v183->__end_ = 0;
                  v183->__end_cap_.__value_ = 0;
                  if (*(v276 - 169) < 0)
                  {
                    operator delete(*v170);
                  }

                  v184 = v276 - 152;
                  v185 = *v277;
                  *(v276 - 176) = v278;
                  *v170 = v185;
                  HIBYTE(v278) = 0;
                  LOBYTE(v277[0]) = 0;
                  v186 = v280;
                  *(v276 - 168) = v279;
                  *(v276 - 160) = v186;
                  if (*(v276 - 129) < 0)
                  {
                    operator delete(*v184);
                    v184 = v276 - 152;
                  }

                  v187 = v281;
                  *(v184 + 16) = v282;
                  *v184 = v187;
                  HIBYTE(v282) = 0;
                  LOBYTE(v281) = 0;
                  v188 = v284;
                  *(v276 - 128) = v283;
                  *(v276 - 120) = v188;
                  v189 = *(v276 - 112);
                  if (v189)
                  {
                    *(v276 - 104) = v189;
                    operator delete(v189);
                    *(v276 - 112) = 0;
                    *(v276 - 104) = 0;
                    *(v276 - 96) = 0;
                  }

                  *(v276 - 112) = *v285;
                  *(v276 - 96) = v286;
                  v285[0] = 0;
                  v285[1] = 0;
                  v286 = 0;
                  v190 = *(v276 - 88);
                  if (v190)
                  {
                    *(v276 - 80) = v190;
                    operator delete(v190);
                    *(v276 - 88) = 0;
                    *(v276 - 80) = 0;
                    *(v276 - 72) = 0;
                  }

                  v191 = v276 - 64;
                  *(v276 - 88) = *v287;
                  *(v276 - 72) = v288;
                  v287[0] = 0;
                  v287[1] = 0;
                  v288 = 0;
                  v192 = v289;
                  v193 = v290;
                  *(v191 + 32) = v291;
                  *v191 = v192;
                  *(v191 + 16) = v193;
                  std::vector<std::string>::__vdeallocate(v183);
                  *(v276 - 24) = v292;
                  *(v276 - 8) = v293;
                  v292 = 0uLL;
                  v293 = 0;
                  v194 = v155 + 192 - a1;
                  if (v194 >= 193)
                  {
                    v195 = (-2 - 0x5555555555555555 * (v194 >> 6)) >> 1;
                    v196 = a1 + 192 * v195;
                    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v196, v155))
                    {
                      v197 = *v155;
                      v296 = *(v155 + 16);
                      *v295 = v197;
                      *(v155 + 8) = 0;
                      *(v155 + 16) = 0;
                      *v155 = 0;
                      v198 = *(v155 + 32);
                      v297 = *v160;
                      v298 = v198;
                      v199 = *(v155 + 56);
                      v299 = *(v155 + 40);
                      v300 = v199;
                      *(v155 + 48) = 0;
                      *(v155 + 56) = 0;
                      *(v155 + 40) = 0;
                      v200 = *v164;
                      v302 = *(v155 + 72);
                      v301 = v200;
                      *v303 = *(v155 + 80);
                      v303[2] = *(v155 + 96);
                      *(v155 + 80) = 0;
                      *(v155 + 88) = 0;
                      *(v155 + 96) = 0;
                      *__p = *(v155 + 104);
                      __p[2] = *(v155 + 120);
                      *(v155 + 104) = 0;
                      *(v155 + 112) = 0;
                      *(v155 + 120) = 0;
                      v201 = *(v155 + 128);
                      v202 = *(v155 + 144);
                      v307 = *(v155 + 160);
                      v305 = v201;
                      v306 = v202;
                      v308[0] = *(v155 + 168);
                      *&v308[1] = *(v155 + 184);
                      *(v155 + 168) = 0;
                      *(v155 + 176) = 0;
                      *(v155 + 184) = 0;
                      do
                      {
                        v203 = v196;
                        if (*(v155 + 23) < 0)
                        {
                          operator delete(*v155);
                        }

                        v204 = *v196;
                        *(v155 + 16) = *(v196 + 16);
                        *v155 = v204;
                        *(v196 + 23) = 0;
                        *v196 = 0;
                        v205 = (v196 + 24);
                        v206 = *(v196 + 32);
                        *(v155 + 24) = *(v196 + 24);
                        *(v155 + 32) = v206;
                        if (*(v155 + 63) < 0)
                        {
                          operator delete(*(v155 + 40));
                        }

                        v207 = *(v196 + 40);
                        *(v155 + 56) = *(v196 + 56);
                        *(v155 + 40) = v207;
                        v209 = (v196 + 64);
                        v208 = *(v196 + 64);
                        *(v196 + 63) = 0;
                        *(v196 + 40) = 0;
                        v210 = *(v196 + 72);
                        v211 = *(v155 + 80);
                        *(v155 + 64) = v208;
                        *(v155 + 72) = v210;
                        if (v211)
                        {
                          *(v155 + 88) = v211;
                          operator delete(v211);
                          *(v155 + 80) = 0;
                          *(v155 + 88) = 0;
                          *(v155 + 96) = 0;
                        }

                        *(v155 + 80) = *(v196 + 80);
                        *(v155 + 96) = *(v196 + 96);
                        *(v196 + 80) = 0;
                        *(v196 + 88) = 0;
                        *(v196 + 96) = 0;
                        v212 = *(v155 + 104);
                        if (v212)
                        {
                          *(v155 + 112) = v212;
                          operator delete(v212);
                          *(v155 + 104) = 0;
                          *(v155 + 112) = 0;
                          *(v155 + 120) = 0;
                        }

                        *(v155 + 104) = *(v196 + 104);
                        *(v155 + 120) = *(v196 + 120);
                        *(v196 + 104) = 0;
                        *(v196 + 112) = 0;
                        *(v196 + 120) = 0;
                        v213 = *(v196 + 128);
                        v214 = *(v196 + 144);
                        *(v155 + 160) = *(v196 + 160);
                        *(v155 + 128) = v213;
                        *(v155 + 144) = v214;
                        std::vector<std::string>::__vdeallocate((v155 + 168));
                        *(v155 + 168) = *(v196 + 168);
                        *(v155 + 184) = *(v196 + 184);
                        *(v196 + 168) = 0;
                        *(v196 + 176) = 0;
                        *(v196 + 184) = 0;
                        if (!v195)
                        {
                          break;
                        }

                        v195 = (v195 - 1) >> 1;
                        v196 = a1 + 192 * v195;
                        v155 = v203;
                      }

                      while (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v196, v295));
                      if (*(v203 + 23) < 0)
                      {
                        operator delete(*v203);
                      }

                      v215 = *v295;
                      *(v203 + 16) = v296;
                      *v203 = v215;
                      HIBYTE(v296) = 0;
                      LOBYTE(v295[0]) = 0;
                      v216 = v298;
                      *v205 = v297;
                      *(v203 + 32) = v216;
                      if (*(v203 + 63) < 0)
                      {
                        operator delete(*(v203 + 40));
                      }

                      v217 = v299;
                      *(v203 + 56) = v300;
                      *(v203 + 40) = v217;
                      HIBYTE(v300) = 0;
                      LOBYTE(v299) = 0;
                      v218 = v302;
                      *v209 = v301;
                      *(v203 + 72) = v218;
                      v219 = *(v203 + 80);
                      if (v219)
                      {
                        *(v203 + 88) = v219;
                        operator delete(v219);
                        *(v203 + 80) = 0;
                        *(v203 + 88) = 0;
                        *(v203 + 96) = 0;
                      }

                      *(v203 + 80) = *v303;
                      *(v203 + 96) = v303[2];
                      memset(v303, 0, sizeof(v303));
                      v220 = *(v203 + 104);
                      if (v220)
                      {
                        *(v203 + 112) = v220;
                        operator delete(v220);
                        *(v203 + 104) = 0;
                        *(v203 + 112) = 0;
                        *(v203 + 120) = 0;
                      }

                      *(v203 + 104) = *__p;
                      *(v203 + 120) = __p[2];
                      memset(__p, 0, sizeof(__p));
                      v221 = v307;
                      v222 = v306;
                      *(v203 + 128) = v305;
                      *(v203 + 144) = v222;
                      *(v203 + 160) = v221;
                      std::vector<std::string>::__vdeallocate((v203 + 168));
                      *(v203 + 168) = v308[0];
                      *(v203 + 184) = *&v308[1];
                      memset(v308, 0, 24);
                      v294 = v308;
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v294);
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v303[0])
                      {
                        v303[1] = v303[0];
                        operator delete(v303[0]);
                      }

                      if (SHIBYTE(v300) < 0)
                      {
                        operator delete(v299);
                      }

                      if (SHIBYTE(v296) < 0)
                      {
                        operator delete(v295[0]);
                      }
                    }
                  }
                }

                v295[0] = &v292;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v295);
                if (v287[0])
                {
                  v287[1] = v287[0];
                  operator delete(v287[0]);
                }

                a2 = v276;
                if (v285[0])
                {
                  v285[1] = v285[0];
                  operator delete(v285[0]);
                }

                if (SHIBYTE(v282) < 0)
                {
                  operator delete(v281);
                }

                if (SHIBYTE(v278) < 0)
                {
                  operator delete(v277[0]);
                }
              }

              a2 -= 192;
            }

            while (v144-- > 2);
          }

          return;
        }

        v10 = a1 + 192 * (v9 >> 1);
        if (v8 <= 0x6000)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1 + 192 * (v9 >> 1), a1, v269);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192 * (v9 >> 1), v269);
          v11 = 3 * (v9 >> 1);
          v12 = a1 + 192 * (v9 >> 1) - 192;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1 + 192, v12, v266);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1 + 384, a1 + 192 + (v11 << 6), v265);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(v12, v10, a1 + 192 + (v11 << 6));
          std::swap[abi:ne200100]<AMCP::Wire_Description>(a1, v10);
        }

        v272 = a3 - 1;
        if ((a4 & 1) != 0 || std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 - 192, a1))
        {
          break;
        }

        v45 = *a1;
        v296 = *(a1 + 16);
        *v295 = v45;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v46 = *(a1 + 32);
        v297 = *(a1 + 24);
        v298 = v46;
        v47 = *(a1 + 56);
        v299 = *(a1 + 40);
        v300 = v47;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v48 = *(a1 + 64);
        v302 = *(a1 + 72);
        v301 = v48;
        v49 = (a1 + 80);
        *v303 = *(a1 + 80);
        v303[2] = *(a1 + 96);
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *__p = *(a1 + 104);
        __p[2] = *(a1 + 120);
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v50 = *(a1 + 128);
        v51 = *(a1 + 144);
        v307 = *(a1 + 160);
        v305 = v50;
        v306 = v51;
        v308[0] = *(a1 + 168);
        *&v308[1] = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v269))
        {
          v7 = a1;
          do
          {
            v7 += 192;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v7));
        }

        else
        {
          v52 = a1 + 192;
          do
          {
            v7 = v52;
            if (v52 >= a2)
            {
              break;
            }

            v53 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v52);
            v52 = v7 + 192;
          }

          while (!v53);
        }

        v54 = a2;
        if (v7 < a2)
        {
          v54 = a2;
          do
          {
            v54 -= 192;
          }

          while (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v54));
        }

        while (v7 < v54)
        {
          std::swap[abi:ne200100]<AMCP::Wire_Description>(v7, v54);
          do
          {
            v7 += 192;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v7));
          do
          {
            v54 -= 192;
          }

          while (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v295, v54));
        }

        v55 = (v7 - 192);
        if (v7 - 192 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v56 = *v55;
          *(a1 + 16) = *(v7 - 176);
          *a1 = v56;
          *(v7 - 169) = 0;
          *(v7 - 192) = 0;
          v57 = *(v7 - 160);
          *(a1 + 24) = *(v7 - 168);
          *(a1 + 32) = v57;
          if (*(a1 + 63) < 0)
          {
            operator delete(*(a1 + 40));
          }

          v58 = *(v7 - 152);
          *(a1 + 56) = *(v7 - 136);
          *(a1 + 40) = v58;
          *(v7 - 129) = 0;
          *(v7 - 152) = 0;
          v59 = *(v7 - 120);
          *(a1 + 64) = *(v7 - 128);
          *(a1 + 72) = v59;
          v60 = *v49;
          if (*v49)
          {
            *(a1 + 88) = v60;
            operator delete(v60);
            *v49 = 0;
            *(a1 + 88) = 0;
            *(a1 + 96) = 0;
          }

          v61 = (v7 - 112);
          *(a1 + 80) = *(v7 - 112);
          *(a1 + 96) = *(v7 - 96);
          *v61 = 0;
          v61[1] = 0;
          v61[2] = 0;
          v62 = *(a1 + 104);
          if (v62)
          {
            *(a1 + 112) = v62;
            operator delete(v62);
            *(a1 + 104) = 0;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
          }

          v63 = (v7 - 88);
          *(a1 + 104) = *(v7 - 88);
          *(a1 + 120) = *(v7 - 72);
          *v63 = 0;
          v63[1] = 0;
          v63[2] = 0;
          v64 = *(v7 - 64);
          v65 = *(v7 - 48);
          *(a1 + 160) = *(v7 - 32);
          *(a1 + 128) = v64;
          *(a1 + 144) = v65;
          std::vector<std::string>::__vdeallocate((a1 + 168));
          *(a1 + 168) = *(v7 - 24);
          *(a1 + 184) = *(v7 - 8);
          *(v7 - 24) = 0;
          *(v7 - 16) = 0;
          *(v7 - 8) = 0;
        }

        if (*(v7 - 169) < 0)
        {
          operator delete(*v55);
        }

        v66 = *v295;
        *(v7 - 176) = v296;
        *v55 = v66;
        HIBYTE(v296) = 0;
        LOBYTE(v295[0]) = 0;
        v67 = v298;
        *(v7 - 168) = v297;
        *(v7 - 160) = v67;
        v68 = (v7 - 152);
        --a3;
        if (*(v7 - 129) < 0)
        {
          operator delete(*v68);
        }

        v69 = v299;
        *(v7 - 136) = v300;
        *v68 = v69;
        HIBYTE(v300) = 0;
        LOBYTE(v299) = 0;
        v70 = v302;
        v71 = *(v7 - 112);
        *(v7 - 128) = v301;
        *(v7 - 120) = v70;
        if (v71)
        {
          *(v7 - 104) = v71;
          operator delete(v71);
          *(v7 - 112) = 0;
          *(v7 - 104) = 0;
          *(v7 - 96) = 0;
        }

        *(v7 - 112) = *v303;
        *(v7 - 96) = v303[2];
        memset(v303, 0, sizeof(v303));
        v72 = *(v7 - 88);
        if (v72)
        {
          *(v7 - 80) = v72;
          operator delete(v72);
          *(v7 - 88) = 0;
          *(v7 - 80) = 0;
          *(v7 - 72) = 0;
        }

        *(v7 - 88) = *__p;
        *(v7 - 72) = __p[2];
        memset(__p, 0, sizeof(__p));
        v73 = v305;
        v74 = v306;
        *(v7 - 32) = v307;
        *(v7 - 64) = v73;
        *(v7 - 48) = v74;
        std::vector<std::string>::__vdeallocate((v7 - 24));
        *(v7 - 24) = v308[0];
        *(v7 - 8) = *&v308[1];
        memset(v308, 0, 24);
        v277[0] = v308;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v277);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v303[0])
        {
          v303[1] = v303[0];
          operator delete(v303[0]);
        }

        if (SHIBYTE(v300) < 0)
        {
          operator delete(v299);
        }

        if (SHIBYTE(v296) < 0)
        {
          operator delete(v295[0]);
        }

LABEL_61:
        a4 = 0;
      }

      v13 = *a1;
      v296 = *(a1 + 16);
      *v295 = v13;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v14 = *(a1 + 32);
      v297 = *(a1 + 24);
      v298 = v14;
      v15 = *(a1 + 56);
      v299 = *(a1 + 40);
      v300 = v15;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 40) = 0;
      v16 = *(a1 + 64);
      v302 = *(a1 + 72);
      v301 = v16;
      v17 = (a1 + 80);
      *v303 = *(a1 + 80);
      v303[2] = *(a1 + 96);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *__p = *(a1 + 104);
      __p[2] = *(a1 + 120);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      v18 = *(a1 + 128);
      v19 = *(a1 + 144);
      v307 = *(a1 + 160);
      v305 = v18;
      v306 = v19;
      v308[0] = *(a1 + 168);
      *&v308[1] = *(a1 + 184);
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      v20 = a1;
      *(a1 + 184) = 0;
      do
      {
        v21 = v20;
        v20 += 192;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v20, v295));
      if (v21 == a1)
      {
        a2 = v275;
        do
        {
          if (v20 >= a2)
          {
            break;
          }

          a2 -= 192;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2, v295));
      }

      else
      {
        do
        {
          a2 -= 192;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2, v295));
      }

      v7 = v20;
      if (v20 < a2)
      {
        v22 = a2;
        do
        {
          std::swap[abi:ne200100]<AMCP::Wire_Description>(v7, v22);
          do
          {
            v7 += 192;
          }

          while (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v7, v295));
          do
          {
            v22 -= 192;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v22, v295));
        }

        while (v7 < v22);
      }

      v23 = (v7 - 192);
      if (v7 - 192 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v24 = *v23;
        *(a1 + 16) = *(v7 - 176);
        *a1 = v24;
        *(v7 - 169) = 0;
        *(v7 - 192) = 0;
        v25 = *(v7 - 160);
        *(a1 + 24) = *(v7 - 168);
        *(a1 + 32) = v25;
        if (*(a1 + 63) < 0)
        {
          operator delete(*(a1 + 40));
        }

        v26 = *(v7 - 152);
        *(a1 + 56) = *(v7 - 136);
        *(a1 + 40) = v26;
        *(v7 - 129) = 0;
        *(v7 - 152) = 0;
        v27 = *(v7 - 120);
        *(a1 + 64) = *(v7 - 128);
        *(a1 + 72) = v27;
        v28 = *v17;
        if (*v17)
        {
          *(a1 + 88) = v28;
          operator delete(v28);
          *v17 = 0;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        v29 = (v7 - 112);
        *(a1 + 80) = *(v7 - 112);
        *(a1 + 96) = *(v7 - 96);
        *v29 = 0;
        v29[1] = 0;
        v29[2] = 0;
        v30 = *(a1 + 104);
        if (v30)
        {
          *(a1 + 112) = v30;
          operator delete(v30);
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
        }

        v31 = (v7 - 88);
        *(a1 + 104) = *(v7 - 88);
        *(a1 + 120) = *(v7 - 72);
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
        v32 = *(v7 - 64);
        v33 = *(v7 - 48);
        *(a1 + 160) = *(v7 - 32);
        *(a1 + 128) = v32;
        *(a1 + 144) = v33;
        std::vector<std::string>::__vdeallocate((a1 + 168));
        *(a1 + 168) = *(v7 - 24);
        *(a1 + 184) = *(v7 - 8);
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
        *(v7 - 8) = 0;
      }

      if (*(v7 - 169) < 0)
      {
        operator delete(*v23);
      }

      v34 = *v295;
      *(v7 - 176) = v296;
      *v23 = v34;
      HIBYTE(v296) = 0;
      LOBYTE(v295[0]) = 0;
      v35 = v298;
      *(v7 - 168) = v297;
      *(v7 - 160) = v35;
      v36 = (v7 - 152);
      --a3;
      if (*(v7 - 129) < 0)
      {
        operator delete(*v36);
      }

      v37 = v299;
      *(v7 - 136) = v300;
      *v36 = v37;
      HIBYTE(v300) = 0;
      LOBYTE(v299) = 0;
      v38 = v302;
      v39 = *(v7 - 112);
      *(v7 - 128) = v301;
      *(v7 - 120) = v38;
      if (v39)
      {
        *(v7 - 104) = v39;
        operator delete(v39);
        *(v7 - 112) = 0;
        *(v7 - 104) = 0;
        *(v7 - 96) = 0;
      }

      *(v7 - 112) = *v303;
      *(v7 - 96) = v303[2];
      memset(v303, 0, sizeof(v303));
      v40 = *(v7 - 88);
      if (v40)
      {
        *(v7 - 80) = v40;
        operator delete(v40);
        *(v7 - 88) = 0;
        *(v7 - 80) = 0;
        *(v7 - 72) = 0;
      }

      *(v7 - 88) = *__p;
      *(v7 - 72) = __p[2];
      memset(__p, 0, sizeof(__p));
      v41 = v305;
      v42 = v306;
      *(v7 - 32) = v307;
      *(v7 - 64) = v41;
      *(v7 - 48) = v42;
      std::vector<std::string>::__vdeallocate((v7 - 24));
      *(v7 - 24) = v308[0];
      *(v7 - 8) = *&v308[1];
      memset(v308, 0, 24);
      v277[0] = v308;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v277);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v303[0])
      {
        v303[1] = v303[0];
        operator delete(v303[0]);
      }

      if (SHIBYTE(v300) < 0)
      {
        operator delete(v299);
      }

      if (SHIBYTE(v296) < 0)
      {
        operator delete(v295[0]);
      }

      v43 = v20 >= a2;
      a2 = v275;
      if (!v43)
      {
LABEL_60:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,false>(a1, v7 - 192, v272, a4 & 1);
        goto LABEL_61;
      }

      v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *>(a1, v7 - 192);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *>(v7, v275))
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_60;
      }
    }

    a2 = v7 - 192;
    if (!v44)
    {
      continue;
    }

    break;
  }
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 24;
  v41 = a1;
  v42 = a1 + 24;
  v5 = a1 + 32;
  v43 = a1 + 32;
  v6 = a2 + 24;
  v7 = a2 + 32;
  v38 = a2;
  v39 = a2 + 24;
  v40 = a2 + 32;
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v41, &v38) & 0x80) != 0)
  {
    return 1;
  }

  v41 = a2;
  v42 = v6;
  v43 = v7;
  v38 = a1;
  v39 = v4;
  v40 = v5;
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v41, &v38) & 0x80) != 0)
  {
    return 0;
  }

  v41 = a1 + 40;
  v42 = a1 + 64;
  v43 = a1 + 72;
  v38 = a2 + 40;
  v39 = a2 + 64;
  v40 = a2 + 72;
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v41, &v38) & 0x80) != 0)
  {
    return 1;
  }

  v41 = a2 + 40;
  v42 = a2 + 64;
  v43 = a2 + 72;
  v38 = a1 + 40;
  v39 = a1 + 64;
  v40 = a1 + 72;
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v41, &v38) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  v9 = *(a2 + 80);
  v10 = *(a1 + 88) - v8;
  v11 = v10 >> 2;
  v12 = (*(a2 + 88) - v9) >> 2;
  if (v12 >= v10 >> 2)
  {
    v13 = v10 >> 2;
  }

  else
  {
    v13 = (*(a2 + 88) - v9) >> 2;
  }

  if (v13 >= 1)
  {
    do
    {
      v14 = *v8 < *v9;
      if (*v8 != *v9)
      {
        return v14;
      }

      ++v8;
      ++v9;
    }

    while (--v13);
  }

  if (v11 != v12)
  {
    return v11 < v12;
  }

  v15 = *(a1 + 104);
  v16 = *(a2 + 104);
  v17 = *(a1 + 112) - v15;
  v11 = v17 >> 2;
  v12 = (*(a2 + 112) - v16) >> 2;
  if (v12 >= v17 >> 2)
  {
    v18 = v17 >> 2;
  }

  else
  {
    v18 = (*(a2 + 112) - v16) >> 2;
  }

  if (v18 < 1)
  {
LABEL_18:
    if (v11 == v12)
    {
      v19 = *(a1 + 128);
      v20 = *(a2 + 128);
      result = v19 < v20;
      if (v19 != v20)
      {
        return result;
      }

      v22 = *(a1 + 132);
      v23 = *(a2 + 132);
      result = v22 < v23;
      if (v22 != v23)
      {
        return result;
      }

      v24 = *(a1 + 136);
      v25 = *(a2 + 136);
      result = v24 < v25;
      if (v24 != v25)
      {
        return result;
      }

      v26 = *(a1 + 152);
      v27 = *(a2 + 152);
      result = v26 < v27;
      if (v26 != v27)
      {
        return result;
      }

      v28 = *(a1 + 156);
      v29 = *(a2 + 156);
      result = v28 < v29;
      if (v28 != v29)
      {
        return result;
      }

      v30 = *(a1 + 140);
      v31 = *(a2 + 140);
      result = v30 < v31;
      if (v30 != v31)
      {
        return result;
      }

      v32 = *(a1 + 144);
      v33 = *(a2 + 144);
      result = v32 < v33;
      if (v32 != v33)
      {
        return result;
      }

      v34 = *(a1 + 148);
      v35 = *(a2 + 148);
      result = v34 < v35;
      if (v34 != v35)
      {
        return result;
      }

      v36 = *(a1 + 160);
      v37 = *(a2 + 160);
      result = v36 < v37;
      if (v36 != v37)
      {
        return result;
      }

      return (_ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100INS_11__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESB_SB_SE_SE_RT1_(*(a1 + 168), *(a1 + 176), *(a2 + 168), *(a2 + 176)) & 0x80u) != 0;
    }

    return v11 < v12;
  }

  while (*v15 == *v16)
  {
    ++v15;
    ++v16;
    if (!--v18)
    {
      goto LABEL_18;
    }
  }

  return *v15 < *v16;
}

void std::swap[abi:ne200100]<AMCP::Wire_Description>(uint64_t a1, uint64_t a2)
{
  *v15 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v16 = v3;
  v17 = v4;
  v18 = *(a1 + 32);
  *v19 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v22 = *(a1 + 72);
  v20 = v5;
  v21 = v6;
  v12 = *(a1 + 80);
  v7 = *(a1 + 96);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v13 = *(a1 + 104);
  v8 = *(a1 + 120);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v25 = *(a1 + 160);
  v23 = *(a1 + 128);
  v24 = *(a1 + 144);
  v14 = *(a1 + 168);
  v26 = v14;
  v9 = *(a1 + 184);
  v27 = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  AMCP::Wire_Description::operator=(a1, a2);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  *(a2 + 40) = *v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  v10 = *(a2 + 80);
  if (v10)
  {
    *(a2 + 88) = v10;
    operator delete(v10);
  }

  *(a2 + 80) = v12;
  *(a2 + 96) = v7;
  v11 = *(a2 + 104);
  if (v11)
  {
    *(a2 + 112) = v11;
    operator delete(v11);
  }

  *(a2 + 104) = v13;
  *(a2 + 120) = v8;
  *(a2 + 128) = v23;
  *(a2 + 144) = v24;
  *(a2 + 160) = v25;
  std::vector<std::string>::__vdeallocate((a2 + 168));
  *(a2 + 168) = v14;
  *(a2 + 184) = v9;
  v27 = 0;
  v26 = 0uLL;
  v28 = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2, a1);
  v7 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::swap[abi:ne200100]<AMCP::Wire_Description>(a1, a2);
      if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::swap[abi:ne200100]<AMCP::Wire_Description>(a2, a3);
    if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::swap[abi:ne200100]<AMCP::Wire_Description>(v8, v9);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a2, a3);
  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a4, a3))
  {
    std::swap[abi:ne200100]<AMCP::Wire_Description>(a3, a4);
    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a3, a2))
    {
      std::swap[abi:ne200100]<AMCP::Wire_Description>(a2, a3);
      if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2, a1))
      {
        std::swap[abi:ne200100]<AMCP::Wire_Description>(a1, a2);
      }
    }
  }

  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a5, a4))
  {
    std::swap[abi:ne200100]<AMCP::Wire_Description>(a4, a5);
    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a4, a3))
    {
      std::swap[abi:ne200100]<AMCP::Wire_Description>(a3, a4);
      if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a3, a2))
      {
        std::swap[abi:ne200100]<AMCP::Wire_Description>(a2, a3);
        if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2, a1))
        {

          std::swap[abi:ne200100]<AMCP::Wire_Description>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 6);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, a2 - 192);
        return 1;
      case 4:
        v42 = a2 - 192;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, a1 + 384);
        if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v42, a1 + 384))
        {
          return 1;
        }

        std::swap[abi:ne200100]<AMCP::Wire_Description>(a1 + 384, v42);
        if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 + 384, a1 + 192))
        {
          return 1;
        }

        std::swap[abi:ne200100]<AMCP::Wire_Description>(a1 + 192, a1 + 384);
        if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a1 + 192, a1))
        {
          return 1;
        }

        v7 = a1 + 192;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, a1 + 384, a1 + 576, a2 - 192);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 192;
      if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(a2 - 192, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::swap[abi:ne200100]<AMCP::Wire_Description>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 384;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,0>(a1, a1 + 192, a1 + 384);
  v9 = a1 + 576;
  if (a1 + 576 == v2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v44 = v2;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v9, v8))
    {
      *v47 = *v9;
      v12 = *(v9 + 24);
      v48 = *(v9 + 16);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v49 = v12;
      v50 = *(v9 + 32);
      v51 = *(v9 + 40);
      v54 = *(v9 + 72);
      v13 = *(v9 + 56);
      v14 = *(v9 + 64);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 40) = 0;
      v52 = v13;
      v53 = v14;
      *v55 = *(v9 + 80);
      v55[2] = *(v9 + 96);
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *&v55[3] = *(v9 + 104);
      v55[5] = *(v9 + 120);
      *(v9 + 96) = 0;
      *(v9 + 104) = 0;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      v15 = *(v9 + 128);
      v16 = *(v9 + 144);
      v58 = *(v9 + 160);
      v56 = v15;
      v57 = v16;
      *v59 = *(v9 + 168);
      *&v59[16] = *(v9 + 184);
      *(v9 + 168) = 0;
      *(v9 + 176) = 0;
      v17 = v10;
      *(v9 + 184) = 0;
      v46 = v11;
      while (1)
      {
        v18 = v17;
        v19 = a1 + v17;
        v20 = a1 + v17 + 576;
        if (*(a1 + v17 + 599) < 0)
        {
          operator delete(*v20);
        }

        *v20 = *(v19 + 384);
        v21 = *(v19 + 408);
        *(v20 + 16) = *(v19 + 400);
        *(v19 + 407) = 0;
        *(v19 + 384) = 0;
        *(v19 + 600) = v21;
        *(v19 + 608) = *(v19 + 416);
        v22 = v19 + 616;
        if (*(v19 + 639) < 0)
        {
          operator delete(*v22);
        }

        v23 = a1 + v18;
        v24 = *(a1 + v18 + 448);
        *(v22 + 16) = *(a1 + v18 + 440);
        *v22 = *(a1 + v18 + 424);
        *(v23 + 447) = 0;
        *(v23 + 424) = 0;
        *(v23 + 640) = v24;
        *(v23 + 648) = *(a1 + v18 + 456);
        v25 = *(a1 + v18 + 656);
        if (v25)
        {
          *(v23 + 664) = v25;
          operator delete(v25);
          *(v23 + 672) = 0;
        }

        *(v23 + 656) = *(v23 + 464);
        *(v23 + 672) = *(v23 + 480);
        *(v23 + 464) = 0;
        *(v23 + 472) = 0;
        *(v23 + 480) = 0;
        v26 = *(v23 + 680);
        if (v26)
        {
          *(a1 + v18 + 688) = v26;
          operator delete(v26);
          *(a1 + v18 + 696) = 0;
        }

        *(v23 + 680) = *(v23 + 488);
        v27 = a1 + v18;
        *(v27 + 696) = *(a1 + v18 + 504);
        *(v23 + 488) = 0u;
        *(v23 + 504) = 0;
        v28 = *(a1 + v18 + 528);
        *(v27 + 704) = *(a1 + v18 + 512);
        *(v27 + 720) = v28;
        *(v27 + 736) = *(a1 + v18 + 544);
        v29 = (a1 + v18 + 552);
        std::vector<std::string>::__vdeallocate((a1 + v18 + 744));
        *(a1 + v18 + 744) = *&v29->__begin_;
        *(v27 + 760) = *(v27 + 568);
        *(v27 + 568) = 0;
        *&v29->__begin_ = 0u;
        if (v18 == -384)
        {
          break;
        }

        v30 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Wire_Description,AMCP::Wire_Description>(v47, v27 + 192);
        v17 = v18 - 192;
        if (!v30)
        {
          v31 = (a1 + v18);
          v32 = a1 + v18 + 408;
          v33 = a1 + v18 + 424;
          v34 = a1 + v17 + 576;
          v29 = v31 + 23;
          p_end = &v31[21].__end_;
          p_end_cap = &v31[18].__end_cap_;
          v36 = &v31[20].__end_;
          v37 = &v31[19].__end_;
          goto LABEL_28;
        }
      }

      v32 = v27 + 408;
      v33 = v27 + 424;
      p_end = (v27 + 512);
      p_end_cap = (v27 + 448);
      v36 = (v27 + 488);
      v37 = (v27 + 464);
      v34 = a1;
LABEL_28:
      if (*(v34 + 23) < 0)
      {
        operator delete(*v34);
      }

      *v34 = *v47;
      *(v34 + 16) = v48;
      HIBYTE(v48) = 0;
      LOBYTE(v47[0]) = 0;
      *v32 = v49;
      *(v32 + 8) = v50;
      if (*(v34 + 63) < 0)
      {
        operator delete(*v33);
      }

      *v33 = v51;
      v38 = v53;
      *(v33 + 16) = v52;
      HIBYTE(v52) = 0;
      LOBYTE(v51) = 0;
      p_end_cap->__value_ = v38;
      LODWORD(p_end_cap[1].__value_) = v54;
      v39 = *v37;
      if (*v37)
      {
        *(v34 + 88) = v39;
        operator delete(v39);
        *v37 = 0;
        v37[1] = 0;
        v37[2] = 0;
      }

      *v37 = v55[0];
      *(v34 + 88) = *&v55[1];
      memset(v55, 0, 24);
      v40 = *v36;
      v2 = v44;
      if (*v36)
      {
        *(v34 + 112) = v40;
        operator delete(v40);
        *v36 = 0;
        v36[1] = 0;
        v36[2] = 0;
      }

      *v36 = v55[3];
      *(v34 + 112) = *&v55[4];
      memset(&v55[3], 0, 24);
      v41 = v57;
      *p_end = v56;
      *(p_end + 1) = v41;
      *(p_end + 32) = v58;
      std::vector<std::string>::__vdeallocate(v29);
      v29->__begin_ = *v59;
      *(v34 + 176) = *&v59[8];
      memset(v59, 0, sizeof(v59));
      v60 = v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
      if (v55[3])
      {
        v55[4] = v55[3];
        operator delete(v55[3]);
      }

      if (v55[0])
      {
        v55[1] = v55[0];
        operator delete(v55[0]);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47[0]);
      }

      v11 = v46 + 1;
      if (v46 == 7)
      {
        return v9 + 192 == v44;
      }
    }

    v8 = v9;
    v10 += 192;
    v9 += 192;
    if (v9 == v2)
    {
      return 1;
    }
  }
}

uint64_t AMCP::Wire_Description::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = v5;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v6;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 18);
  v8 = *(a1 + 80);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v7;
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v9 = *(a1 + 104);
  if (v9)
  {
    *(a1 + 112) = v9;
    operator delete(v9);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  std::vector<std::string>::__vdeallocate((a1 + 168));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  return a1;
}

uint64_t std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(int *a1, uint64_t a2)
{
  v4 = (a1 + 18);
  v3 = *a1;
  v5 = (a2 + 72);
  if (*a1 < *a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (v3 == *a2)
  {
    v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 1, (a2 + 8));
    if (v8)
    {
LABEL_6:
      v6 = (v8 >> 7) | 1;
      return (v6 >> 7) & 1;
    }

    v9 = a1[8];
    v10 = *(a2 + 32);
    if (v9 < v10)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    if (v9 == v10)
    {
      v11 = a1[9];
      v12 = *(a2 + 36);
      v6 = v11 < v12 ? -1 : 1;
      if (v11 == v12)
      {
        v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 5, (a2 + 40));
        if (v8)
        {
          goto LABEL_6;
        }

        v13 = a1[16];
        v14 = *(a2 + 64);
        if (v13 < v14)
        {
          v6 = -1;
        }

        else
        {
          v6 = 1;
        }

        if (v13 == v14)
        {
          v6 = _ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100IPKNS_6vectorIN4AMCP20Terminal_DescriptionENS_9allocatorIS3_EEEES8_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EES9_S9_SC_SC_RT1_(v4, (a1 + 30), v5, a2 + 120);
          if (!v6)
          {
            v15 = a1[17];
            v16 = *(a2 + 68);
            v17 = v15 == v16;
            if (v15 < v16)
            {
              v18 = -1;
            }

            else
            {
              v18 = 1;
            }

            if (v17)
            {
              v6 = 0;
            }

            else
            {
              v6 = v18;
            }
          }
        }
      }
    }
  }

  return (v6 >> 7) & 1;
}

void std::swap[abi:ne200100]<AMCP::Node_Description>(int *a1, int *a2)
{
  v4 = *a1;
  v20[0] = *a1;
  *v21 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  *(a1 + 3) = 0;
  v22 = v5;
  v23 = v6;
  *__p = *(a1 + 10);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  *(a1 + 7) = 0;
  v25 = v7;
  v26 = v8;
  v27 = *(a1 + 18);
  v28 = *(a1 + 11);
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v29 = *(a1 + 6);
  v30 = *(a1 + 14);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  *(a1 + 14) = 0;
  *a1 = *a2;
  v9 = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 2) = v9;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 4) = *(a2 + 4);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 5));
  }

  v10 = 0;
  v11 = *(a2 + 10);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 10) = v11;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  do
  {
    v12 = &a1[v10];
    v13 = &a2[v10];
    std::vector<AMCP::Terminal_Description>::__vdeallocate(&a1[v10 + 18]);
    *(v12 + 18) = *&a2[v10 + 18];
    *(v12 + 11) = *&a2[v10 + 22];
    *(v13 + 9) = 0;
    *(v13 + 10) = 0;
    *(v13 + 11) = 0;
    v10 += 6;
  }

  while (v10 != 12);
  *a2 = v4;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 1));
  }

  *(a2 + 2) = *v21;
  v14 = v22;
  HIBYTE(v22) = 0;
  LOBYTE(v21[0]) = 0;
  *(a2 + 3) = v14;
  *(a2 + 4) = v6;
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 5));
  }

  v15 = 0;
  *(a2 + 10) = *__p;
  v16 = v25;
  HIBYTE(v25) = 0;
  LOBYTE(__p[0]) = 0;
  *(a2 + 7) = v16;
  *(a2 + 8) = v8;
  do
  {
    v17 = &a2[v15];
    v18 = &v20[v15];
    std::vector<AMCP::Terminal_Description>::__vdeallocate(&a2[v15 + 18]);
    *(v17 + 18) = *(&v27 + v15 * 4);
    *(v17 + 11) = *(&v28 + v15 * 4);
    v18[10] = 0;
    v18[11] = 0;
    v18[9] = 0;
    v15 += 6;
  }

  while (v15 != 12);
  for (i = 24; i != 12; i -= 6)
  {
    v31 = &v20[i];
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v31);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(int *a1, int *a2, int *a3)
{
  v6 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, a1);
  v7 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::swap[abi:ne200100]<AMCP::Node_Description>(a1, a2);
      if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::swap[abi:ne200100]<AMCP::Node_Description>(a2, a3);
    if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::swap[abi:ne200100]<AMCP::Node_Description>(v8, v9);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(a1, a2, a3);
  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a4, a3))
  {
    std::swap[abi:ne200100]<AMCP::Node_Description>(a3, a4);
    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a3, a2))
    {
      std::swap[abi:ne200100]<AMCP::Node_Description>(a2, a3);
      if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, a1))
      {
        std::swap[abi:ne200100]<AMCP::Node_Description>(a1, a2);
      }
    }
  }

  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a5, a4))
  {
    std::swap[abi:ne200100]<AMCP::Node_Description>(a4, a5);
    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a4, a3))
    {
      std::swap[abi:ne200100]<AMCP::Node_Description>(a3, a4);
      if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a3, a2))
      {
        std::swap[abi:ne200100]<AMCP::Node_Description>(a2, a3);
        if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, a1))
        {

          std::swap[abi:ne200100]<AMCP::Node_Description>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *>(int *a1, int *a2)
{
  v2 = a2;
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(a1, a1 + 30, a2 - 30);
        return 1;
      case 4:
        v30 = a2 - 30;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(a1, a1 + 30, a1 + 60);
        if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v30, (a1 + 60)))
        {
          return 1;
        }

        std::swap[abi:ne200100]<AMCP::Node_Description>(a1 + 60, v30);
        if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a1 + 60, (a1 + 30)))
        {
          return 1;
        }

        std::swap[abi:ne200100]<AMCP::Node_Description>(a1 + 30, a1 + 60);
        if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a1 + 30, a1))
        {
          return 1;
        }

        v7 = a1 + 30;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(a1, a1 + 30, a1 + 60, a1 + 90, a2 - 30);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 30;
      if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2 - 30, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::swap[abi:ne200100]<AMCP::Node_Description>(v6, v7);
      }

      return 1;
    }
  }

  v8 = (a1 + 60);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(a1, a1 + 30, a1 + 60);
  v9 = a1 + 90;
  if (a1 + 90 == v2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v32 = v2;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v9, v8))
    {
      v33 = v11;
      v35[0] = *v9;
      v12 = *(v9 + 4);
      v37 = *(v9 + 3);
      v13 = *(v9 + 8);
      v40 = *(v9 + 7);
      v36 = *(v9 + 2);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      __p = *(v9 + 10);
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      v38 = v12;
      v41 = v13;
      v42 = *(v9 + 18);
      v43 = *(v9 + 11);
      *(v9 + 9) = 0;
      *(v9 + 10) = 0;
      v44 = *(v9 + 6);
      v45 = *(v9 + 14);
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      v34 = v10;
      v14 = v10;
      v15 = v9;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      while (1)
      {
        v16 = v8;
        v17 = v14;
        v18 = v8 + 8;
        *v15 = *v8;
        if (*(v15 + 31) < 0)
        {
          operator delete(*(v15 + 8));
        }

        *(v15 + 8) = *v18;
        *(v15 + 24) = *(v8 + 24);
        *(v8 + 31) = 0;
        *(v8 + 8) = 0;
        *(v15 + 32) = *(v8 + 32);
        if (*(v15 + 63) < 0)
        {
          operator delete(*(v15 + 40));
        }

        *(v15 + 40) = *(v8 + 40);
        *(v15 + 56) = *(v8 + 56);
        *(v8 + 63) = 0;
        *(v8 + 40) = 0;
        *(v15 + 64) = *(v8 + 64);
        v19 = v17;
        v20 = 2;
        do
        {
          v21 = a1 + v19;
          std::vector<AMCP::Terminal_Description>::__vdeallocate((a1 + v19 + 432));
          *(v21 + 27) = *(a1 + v19 + 312);
          *(v21 + 56) = *(v21 + 41);
          *(v21 + 40) = 0;
          *(v21 + 41) = 0;
          *(v21 + 39) = 0;
          v19 += 24;
          --v20;
        }

        while (v20);
        if (v16 == a1)
        {
          break;
        }

        v8 = v16 - 120;
        v22 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v35, v16 - 120);
        v14 = v17 - 120;
        v15 = v16;
        if ((v22 & 1) == 0)
        {
          v23 = v16;
          goto LABEL_26;
        }
      }

      v23 = a1;
LABEL_26:
      *v23 = v35[0];
      if (*(v23 + 31) < 0)
      {
        operator delete(*v18);
      }

      v24 = v36;
      *(v18 + 16) = v37;
      *v18 = v24;
      HIBYTE(v37) = 0;
      LOBYTE(v36) = 0;
      *(v23 + 4) = v38;
      if (*(v23 + 63) < 0)
      {
        operator delete(*(v16 + 40));
      }

      v25 = 0;
      v26 = __p;
      *(v16 + 56) = v40;
      *(v16 + 40) = v26;
      HIBYTE(v40) = 0;
      LOBYTE(__p) = 0;
      *(v23 + 8) = v41;
      v27 = a1 + v17;
      do
      {
        v28 = &v35[v25 / 4];
        std::vector<AMCP::Terminal_Description>::__vdeallocate(&v27[v25 + 312]);
        *&v27[v25 + 312] = *(&v42 + v25);
        *&v27[v25 + 328] = *(&v43 + v25);
        *(v28 + 10) = 0;
        *(v28 + 11) = 0;
        *(v28 + 9) = 0;
        v25 += 24;
      }

      while (v25 != 48);
      v11 = v33 + 1;
      for (i = 24; i != 12; i -= 6)
      {
        v46 = &v35[i];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v46);
      }

      v2 = v32;
      v10 = v34;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }

      if (v33 == 7)
      {
        return v9 + 30 == v32;
      }
    }

    v8 = v9;
    v10 += 120;
    v9 += 30;
    if (v9 == v2)
    {
      return 1;
    }
  }
}

uint64_t _ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100IPKNS_6vectorIN4AMCP20Terminal_DescriptionENS_9allocatorIS3_EEEES8_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EES9_S9_SC_SC_RT1_(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 3);
  if (v5 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 3);
  }

  v20 = v6;
  if (v6 < 1)
  {
LABEL_15:
    if (v4 < v5)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v7 = a3;
    v8 = a1;
    v9 = 0;
    while (1)
    {
      v10 = *v8;
      v11 = *v7;
      v12 = 0x4EC4EC4EC4EC4EC5 * ((v8[1] - *v8) >> 3);
      v13 = (v7[1] - *v7) >> 3;
      v14 = 0x4EC4EC4EC4EC4EC5 * v13;
      v15 = 0x4EC4EC4EC4EC4EC5 * v13 >= v12 ? 0x4EC4EC4EC4EC4EC5 * ((v8[1] - *v8) >> 3) : 0x4EC4EC4EC4EC4EC5 * v13;
      if (v15 >= 1)
      {
        break;
      }

LABEL_13:
      if (v12 != v14)
      {
        if (v12 < v14)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }

      v8 += 3;
      v7 += 3;
      if (++v9 == v20)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v26 = v10;
      v27 = v10 + 40;
      v28 = v10 + 88;
      v29 = v10 + 92;
      v16 = v10 + 96;
      v30 = v10 + 96;
      v21 = v11;
      v22 = v11 + 40;
      v23 = v11 + 88;
      v24 = v11 + 92;
      v17 = v11 + 96;
      v25 = v11 + 96;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v26, &v21) & 0x80) != 0)
      {
        return 255;
      }

      v26 = v17 - 96;
      v27 = v17 - 56;
      v28 = v17 - 8;
      v29 = v17 - 4;
      v30 = v17;
      v21 = v16 - 96;
      v22 = v16 - 56;
      v23 = v16 - 8;
      v24 = v16 - 4;
      v25 = v16;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v26, &v21) & 0x80) != 0)
      {
        return 1;
      }

      v10 = v16 + 8;
      v11 = v17 + 8;
      if (!--v15)
      {
        goto LABEL_13;
      }
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,false>(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v174[2] = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a1;
  v161 = a1 - 8;
  v9 = a1 - 5;
  while (1)
  {
    v10 = (a2 - v8) >> 6;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(v8, (v8 + 64), (a2 - 64));
          goto LABEL_195;
        case 4:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(v8, v8 + 64, v8 + 128, a2 - 64);
          goto LABEL_195;
        case 5:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(v8, (v8 + 64), (v8 + 128), (v8 + 192), a2 - 64);
          goto LABEL_195;
      }
    }

    else
    {
      if (v10 < 2)
      {
        goto LABEL_195;
      }

      if (v10 == 2)
      {
        v62 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>((a2 - 64), (a2 - 40), v8, (v8 + 24));
        if (v62 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(v8, (a2 - 64));
        }

        goto LABEL_195;
      }
    }

    v163 = a2;
    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v86 = v11 >> 1;
        v87 = v11 >> 1;
        do
        {
          v88 = v87;
          if (v86 >= v87)
          {
            v89 = (2 * v87) | 1;
            v90 = v8 + (v89 << 6);
            if (2 * v87 + 2 < v10 && (std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>((v8 + (v89 << 6)), (v90 + 24), (v90 + 64), (v90 + 88)) & 0x80u) != 0)
            {
              v90 += 64;
              v89 = 2 * v88 + 2;
            }

            v91 = v8 + (v88 << 6);
            if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v90, (v90 + 24), v91, (v91 + 24)) & 0x80) == 0)
            {
              v92 = *v91;
              v171 = *(v91 + 16);
              *v170 = v92;
              *(v91 + 8) = 0;
              *(v91 + 16) = 0;
              *v91 = 0;
              v93 = *(v91 + 24);
              v173 = *(v91 + 40);
              __p = v93;
              *(v91 + 32) = 0;
              *(v91 + 40) = 0;
              *(v91 + 24) = 0;
              v94 = *(v91 + 48);
              *(v174 + 7) = *(v91 + 55);
              v174[0] = v94;
              do
              {
                v95 = v90;
                if (*(v91 + 23) < 0)
                {
                  operator delete(*v91);
                }

                v96 = *v90;
                *(v91 + 16) = *(v90 + 16);
                *v91 = v96;
                *(v90 + 23) = 0;
                *v90 = 0;
                if (*(v91 + 47) < 0)
                {
                  operator delete(*(v91 + 24));
                }

                v97 = *(v90 + 24);
                *(v91 + 40) = *(v90 + 40);
                *(v91 + 24) = v97;
                v98 = *(v90 + 48);
                *(v90 + 47) = 0;
                *(v90 + 24) = 0;
                *(v91 + 55) = *(v90 + 55);
                *(v91 + 48) = v98;
                if (v86 < v89)
                {
                  break;
                }

                v99 = (2 * v89) | 1;
                v90 = v8 + (v99 << 6);
                v100 = 2 * v89 + 2;
                if (v100 < v10 && (std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>((v8 + (v99 << 6)), (v90 + 24), (v90 + 64), (v90 + 88)) & 0x80u) != 0)
                {
                  v90 += 64;
                  v99 = v100;
                }

                v91 = v95;
                v89 = v99;
              }

              while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v90, (v90 + 24), v170, &__p) & 0x80) == 0);
              if (*(v95 + 23) < 0)
              {
                operator delete(*v95);
              }

              v101 = *v170;
              *(v95 + 16) = v171;
              *v95 = v101;
              HIBYTE(v171) = 0;
              LOBYTE(v170[0]) = 0;
              if (*(v95 + 47) < 0)
              {
                operator delete(*(v95 + 24));
              }

              v102 = __p;
              *(v95 + 40) = v173;
              *(v95 + 24) = v102;
              v103 = v174[0];
              *(v95 + 55) = *(v174 + 7);
              *(v95 + 48) = v103;
            }
          }

          v87 = v88 - 1;
        }

        while (v88);
        v104 = v163;
        do
        {
          if (v10 >= 2)
          {
            v164 = v104;
            v105 = 0;
            v106 = *v8;
            *&v169[14] = *(v8 + 15);
            *v169 = *(v8 + 1);
            v107 = *(v8 + 23);
            v108 = *(v8 + 24);
            v109 = *(v8 + 25);
            *(v8 + 8) = 0;
            *(v8 + 16) = 0;
            *v8 = 0;
            *&v167[14] = *(v8 + 39);
            *v167 = v109;
            v160 = *(v8 + 47);
            v162 = v108;
            *(v8 + 32) = 0;
            *(v8 + 40) = 0;
            *&v165[7] = *(v8 + 55);
            *v165 = *(v8 + 48);
            v110 = v8;
            *(v8 + 24) = 0;
            do
            {
              v111 = (v110 + (v105 << 6));
              v112 = (v111 + 8);
              v113 = 2 * v105;
              v105 = (2 * v105) | 1;
              v114 = v113 + 2;
              if (v113 + 2 < v10)
              {
                v115 = (v111 + 16);
                if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v111 + 8, v111 + 11, v111 + 16, v111 + 19) & 0x80u) != 0)
                {
                  v112 = v115;
                  v105 = v114;
                }
              }

              if (*(v110 + 23) < 0)
              {
                operator delete(*v110);
              }

              v116 = *v112;
              *(v110 + 16) = *(v112 + 2);
              *v110 = v116;
              *(v112 + 23) = 0;
              *v112 = 0;
              if (*(v110 + 47) < 0)
              {
                operator delete(*(v110 + 24));
              }

              v117 = *(v112 + 24);
              *(v110 + 40) = *(v112 + 5);
              *(v110 + 24) = v117;
              v119 = (v112 + 3);
              v118 = *(v112 + 6);
              *(v112 + 47) = 0;
              *(v112 + 24) = 0;
              *(v110 + 55) = *(v112 + 55);
              *(v110 + 48) = v118;
              v110 = v112;
            }

            while (v105 <= ((v10 - 2) >> 1));
            v120 = (v164 - 4);
            v121 = *(v112 + 23);
            if (v112 == v164 - 4)
            {
              if (v121 < 0)
              {
                operator delete(*v112);
              }

              *v112 = v106;
              *(v112 + 15) = *&v169[14];
              *(v112 + 1) = *v169;
              *(v112 + 23) = v107;
              if (*(v112 + 47) < 0)
              {
                operator delete(*(v112 + 3));
              }

              *(v112 + 24) = v162;
              *(v112 + 25) = *v167;
              *(v112 + 39) = *&v167[14];
              *(v112 + 47) = v160;
              *v119 = *v165;
              *(v112 + 55) = *&v165[7];
            }

            else
            {
              if (v121 < 0)
              {
                operator delete(*v112);
              }

              v122 = *v120;
              *(v112 + 2) = *(v164 - 6);
              *v112 = v122;
              *(v164 - 41) = 0;
              *(v164 - 64) = 0;
              if (*(v112 + 47) < 0)
              {
                operator delete(*(v112 + 3));
              }

              v123 = *(v164 - 40);
              *(v112 + 5) = *(v164 - 3);
              *(v112 + 24) = v123;
              v124 = *(v164 - 2);
              *(v164 - 17) = 0;
              *(v164 - 40) = 0;
              *(v112 + 55) = *(v164 - 9);
              *v119 = v124;
              if (*(v164 - 41) < 0)
              {
                operator delete(*v120);
              }

              *(v164 - 64) = v106;
              *(v164 - 49) = *&v169[14];
              *(v164 - 63) = *v169;
              *(v164 - 41) = v107;
              if (*(v164 - 17) < 0)
              {
                operator delete(*(v164 - 5));
              }

              *(v164 - 40) = v162;
              *(v164 - 39) = *v167;
              *(v164 - 25) = *&v167[14];
              *(v164 - 17) = v160;
              *(v164 - 9) = *&v165[7];
              *(v164 - 2) = *v165;
              v125 = (v112 - v8 + 64) >> 6;
              v126 = v125 < 2;
              v127 = v125 - 2;
              if (!v126)
              {
                v128 = v127 >> 1;
                v129 = v8 + (v127 >> 1 << 6);
                if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v129, (v129 + 24), v112, v112 + 3) & 0x80) != 0)
                {
                  v130 = *v112;
                  v171 = *(v112 + 2);
                  *v170 = v130;
                  *(v112 + 1) = 0;
                  *(v112 + 2) = 0;
                  *v112 = 0;
                  v131 = *(v112 + 24);
                  v173 = *(v112 + 5);
                  __p = v131;
                  *(v112 + 4) = 0;
                  *(v112 + 5) = 0;
                  *(v112 + 3) = 0;
                  v132 = *v119;
                  *(v174 + 7) = *(v112 + 55);
                  v174[0] = v132;
                  do
                  {
                    v133 = v129;
                    if (*(v112 + 23) < 0)
                    {
                      operator delete(*v112);
                    }

                    v134 = *v129;
                    *(v112 + 2) = *(v129 + 16);
                    *v112 = v134;
                    *(v129 + 23) = 0;
                    *v129 = 0;
                    if (*(v112 + 47) < 0)
                    {
                      operator delete(*(v112 + 3));
                    }

                    v135 = *(v129 + 24);
                    *(v112 + 5) = *(v129 + 40);
                    *(v112 + 24) = v135;
                    v136 = *(v129 + 48);
                    *(v129 + 47) = 0;
                    *(v129 + 24) = 0;
                    *(v112 + 55) = *(v129 + 55);
                    *(v112 + 6) = v136;
                    if (!v128)
                    {
                      break;
                    }

                    v128 = (v128 - 1) >> 1;
                    v129 = v8 + (v128 << 6);
                    v112 = v133;
                  }

                  while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v129, (v129 + 24), v170, &__p) & 0x80) != 0);
                  if (*(v133 + 23) < 0)
                  {
                    operator delete(*v133);
                  }

                  v137 = *v170;
                  *(v133 + 16) = v171;
                  *v133 = v137;
                  HIBYTE(v171) = 0;
                  LOBYTE(v170[0]) = 0;
                  if (*(v133 + 47) < 0)
                  {
                    operator delete(*(v133 + 24));
                  }

                  v138 = __p;
                  *(v133 + 40) = v173;
                  *(v133 + 24) = v138;
                  v139 = v174[0];
                  *(v133 + 55) = *(v174 + 7);
                  *(v133 + 48) = v139;
                }
              }
            }

            v104 = v164;
          }

          v104 -= 4;
          v126 = v10-- > 2;
        }

        while (v126);
      }

      goto LABEL_195;
    }

    v12 = v8 + (v10 >> 1 << 6);
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>((v8 + (v10 >> 1 << 6)), v8, (a2 - 64));
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(v8, (v8 + (v10 >> 1 << 6)), (a2 - 64));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>((v8 + 64), (v12 - 64), (a2 - 128));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>((v8 + 128), (v12 + 64), (a2 - 192));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>((v12 - 64), (v8 + (v10 >> 1 << 6)), (v12 + 64));
      v13 = *v8;
      v170[0] = *(v8 + 8);
      *(v170 + 7) = *(v8 + 15);
      v14 = *(v8 + 23);
      *v8 = 0;
      *(v8 + 8) = 0;
      v15 = *(v8 + 24);
      v16 = *(v8 + 32);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *&v168 = v16;
      *(&v168 + 7) = *(v8 + 39);
      LOBYTE(v16) = *(v8 + 47);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(&v166 + 7) = *(v8 + 55);
      *&v166 = *(v8 + 48);
      v17 = *v12;
      *(v8 + 16) = *(v12 + 16);
      v18 = *(v12 + 40);
      v19 = *(v12 + 48);
      *(v8 + 55) = *(v12 + 55);
      *v8 = v17;
      *(v8 + 24) = *(v12 + 24);
      *(v8 + 40) = v18;
      *(v8 + 48) = v19;
      *v12 = v13;
      v20 = v170[0];
      *(v12 + 15) = *(v170 + 7);
      *(v12 + 8) = v20;
      *(v12 + 23) = v14;
      *(v12 + 24) = v15;
      *(v12 + 39) = *(&v168 + 7);
      *(v12 + 32) = v168;
      *(v12 + 47) = v16;
      *(v12 + 55) = *(&v166 + 7);
      *(v12 + 48) = v166;
    }

    --a3;
    if ((a4 & 1) == 0 && (std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v161, v9, v8, (v8 + 24)) & 0x80) == 0)
    {
      v43 = *v8;
      v171 = *(v8 + 16);
      *v170 = v43;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      v44 = *(v8 + 24);
      v173 = *(v8 + 40);
      __p = v44;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      v45 = *(v8 + 48);
      *(v174 + 7) = *(v8 + 55);
      v174[0] = v45;
      if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, (a2 - 64), (a2 - 40)) & 0x80) != 0)
      {
        v48 = v8;
        do
        {
          a1 = (v48 + 64);
          v49 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, (v48 + 64), (v48 + 88));
          v48 = a1;
        }

        while ((v49 & 0x80) == 0);
      }

      else
      {
        v46 = (v8 + 88);
        do
        {
          a1 = v46 - 3;
          if ((v46 - 3) >= a2)
          {
            break;
          }

          v47 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, v46 - 3, v46);
          v46 += 8;
        }

        while ((v47 & 0x80) == 0);
      }

      v50 = a2;
      if (a1 < a2)
      {
        do
        {
          v50 = (a2 - 64);
          v51 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, (a2 - 64), (a2 - 40));
          a2 -= 64;
        }

        while (v51 < 0);
      }

      while (a1 < v50)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a1, v50);
        do
        {
          v52 = a1;
          a1 += 8;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, a1, v52 + 11) & 0x80) == 0);
        do
        {
          v53 = v50 - 5;
          v50 -= 4;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, v50, v53) & 0x80) != 0);
      }

      v54 = (a1 - 8);
      if (a1 - 8 != v8)
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v55 = *v54;
        *(v8 + 16) = *(a1 - 6);
        *v8 = v55;
        *(a1 - 41) = 0;
        *(a1 - 64) = 0;
        if (*(v8 + 47) < 0)
        {
          operator delete(*(v8 + 24));
        }

        v56 = *(a1 - 5);
        *(v8 + 40) = *(a1 - 3);
        *(v8 + 24) = v56;
        *(a1 - 17) = 0;
        *(a1 - 40) = 0;
        v57 = *(a1 - 2);
        *(v8 + 55) = *(a1 - 9);
        *(v8 + 48) = v57;
      }

      if (*(a1 - 41) < 0)
      {
        operator delete(*v54);
      }

      v58 = *v170;
      *(a1 - 6) = v171;
      *v54 = v58;
      HIBYTE(v171) = 0;
      LOBYTE(v170[0]) = 0;
      v59 = (a1 - 5);
      if (*(a1 - 17) < 0)
      {
        operator delete(*v59);
      }

      v60 = __p;
      *(a1 - 3) = v173;
      *v59 = v60;
      HIBYTE(v173) = 0;
      LOBYTE(__p) = 0;
      v61 = v174[0];
      *(a1 - 9) = *(v174 + 7);
      *(a1 - 2) = v61;
      if (SHIBYTE(v173) < 0)
      {
        operator delete(__p);
      }

      a2 = v163;
      if (SHIBYTE(v171) < 0)
      {
        operator delete(v170[0]);
      }

      goto LABEL_83;
    }

    v21 = *v8;
    v171 = *(v8 + 16);
    *v170 = v21;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 0;
    v22 = *(v8 + 24);
    v23 = *(v8 + 48);
    v173 = *(v8 + 40);
    __p = v22;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 24) = 0;
    *(v174 + 7) = *(v8 + 55);
    v24 = v8;
    v174[0] = v23;
    do
    {
      v25 = v24;
      v24 += 8;
    }

    while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v24, v25 + 11, v170, &__p) & 0x80) != 0);
    v26 = v163;
    if (v25 == v8)
    {
      v29 = v163;
      while (v24 < v29)
      {
        v27 = v29 - 4;
        v30 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v29 - 8, v29 - 5, v170, &__p);
        v29 = v27;
        if (v30 < 0)
        {
          goto LABEL_27;
        }
      }

      v27 = v29;
    }

    else
    {
      do
      {
        v27 = v26 - 4;
        v28 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v26 - 8, v26 - 5, v170, &__p);
        v26 = v27;
      }

      while ((v28 & 0x80) == 0);
    }

LABEL_27:
    if (v24 >= v27)
    {
      a1 = v24;
    }

    else
    {
      v31 = v27;
      a1 = v24;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a1, v31);
        do
        {
          v32 = a1;
          a1 += 8;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a1, v32 + 11, v170, &__p) & 0x80) != 0);
        do
        {
          v33 = v31 - 5;
          v31 -= 4;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v31, v33, v170, &__p) & 0x80) == 0);
      }

      while (a1 < v31);
    }

    v34 = (a1 - 8);
    if (a1 - 8 != v8)
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v35 = *v34;
      *(v8 + 16) = *(a1 - 6);
      *v8 = v35;
      *(a1 - 41) = 0;
      *(a1 - 64) = 0;
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v36 = *(a1 - 5);
      *(v8 + 40) = *(a1 - 3);
      *(v8 + 24) = v36;
      *(a1 - 17) = 0;
      *(a1 - 40) = 0;
      v37 = *(a1 - 2);
      *(v8 + 55) = *(a1 - 9);
      *(v8 + 48) = v37;
    }

    if (*(a1 - 41) < 0)
    {
      operator delete(*v34);
    }

    v38 = *v170;
    *(a1 - 6) = v171;
    *v34 = v38;
    HIBYTE(v171) = 0;
    LOBYTE(v170[0]) = 0;
    v39 = (a1 - 5);
    if (*(a1 - 17) < 0)
    {
      operator delete(*v39);
    }

    v40 = __p;
    *(a1 - 3) = v173;
    *v39 = v40;
    HIBYTE(v173) = 0;
    LOBYTE(__p) = 0;
    v41 = v174[0];
    *(a1 - 9) = *(v174 + 7);
    *(a1 - 2) = v41;
    if (SHIBYTE(v173) < 0)
    {
      operator delete(__p);
    }

    a2 = v163;
    if (SHIBYTE(v171) < 0)
    {
      operator delete(v170[0]);
    }

    if (v24 < v27)
    {
      goto LABEL_54;
    }

    v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *>(v8, a1 - 4);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *>(a1, v163))
    {
      if (v42)
      {
        goto LABEL_2;
      }

LABEL_54:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,false>(v8, a1 - 8, a3, a4 & 1);
LABEL_83:
      a4 = 0;
      goto LABEL_2;
    }

    a2 = (a1 - 8);
    if (v42)
    {
      goto LABEL_195;
    }
  }

  if (a4)
  {
    if (v8 != a2)
    {
      v63 = (v8 + 64);
      if (v8 + 64 != a2)
      {
        v64 = 0;
        v65 = v8;
        do
        {
          v66 = v63;
          if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v63, v65 + 11, v65, v65 + 3) & 0x80) != 0)
          {
            v67 = *v66;
            v171 = v66[2];
            *v170 = v67;
            v66[1] = 0;
            v66[2] = 0;
            *v66 = 0;
            __p = *(v65 + 11);
            v68 = v65[13];
            v69 = v65[14];
            v65[12] = 0;
            v65[13] = 0;
            v65[11] = 0;
            v173 = v68;
            v174[0] = v69;
            *(v174 + 7) = *(v65 + 119);
            v70 = v64;
            while (1)
            {
              v71 = v70;
              v72 = v8 + v70;
              if (*(v8 + v70 + 87) < 0)
              {
                operator delete(*(v72 + 64));
              }

              *(v72 + 64) = *v72;
              *(v72 + 80) = *(v72 + 16);
              *(v72 + 23) = 0;
              *v72 = 0;
              if (*(v72 + 111) < 0)
              {
                operator delete(*(v72 + 88));
              }

              v73 = v8 + v71;
              *(v72 + 88) = *(v8 + v71 + 24);
              v74 = *(v8 + v71 + 48);
              *(v72 + 104) = *(v8 + v71 + 40);
              *(v73 + 47) = 0;
              *(v73 + 24) = 0;
              *(v73 + 112) = v74;
              *(v73 + 119) = *(v8 + v71 + 55);
              if (!v71)
              {
                break;
              }

              v75 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, (v73 - 64), (v73 - 40));
              v70 = v71 - 64;
              if ((v75 & 0x80) == 0)
              {
                v76 = v8 + v71;
                v77 = v8 + v71;
                v78 = (v8 + v71 + 48);
                v79 = v77 + 24;
                goto LABEL_103;
              }
            }

            v78 = (v73 + 48);
            v79 = v73 + 24;
            v76 = v8;
LABEL_103:
            if (*(v76 + 23) < 0)
            {
              operator delete(*v76);
            }

            v80 = *v170;
            *(v76 + 16) = v171;
            *v76 = v80;
            HIBYTE(v171) = 0;
            LOBYTE(v170[0]) = 0;
            if (*(v76 + 47) < 0)
            {
              operator delete(*v79);
              v83 = SHIBYTE(v171);
              v84 = __p;
              *(v79 + 16) = v173;
              *v79 = v84;
              HIBYTE(v173) = 0;
              LOBYTE(__p) = 0;
              v85 = v174[0];
              *(v78 + 7) = *(v174 + 7);
              *v78 = v85;
              if (v83 < 0)
              {
                operator delete(v170[0]);
              }
            }

            else
            {
              v81 = __p;
              *(v79 + 16) = v173;
              *v79 = v81;
              v82 = v174[0];
              *(v78 + 7) = *(v174 + 7);
              *v78 = v82;
            }

            a2 = v163;
          }

          v63 = v66 + 8;
          v64 += 64;
          v65 = v66;
        }

        while (v66 + 8 != a2);
      }
    }
  }

  else if (v8 != a2)
  {
    v140 = (v8 + 64);
    if (v8 + 64 != a2)
    {
      v141 = (v8 + 112);
      do
      {
        v142 = v140;
        if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v140, (v8 + 88), v8, (v8 + 24)) & 0x80) != 0)
        {
          v143 = *v142;
          v171 = v142[2];
          *v170 = v143;
          v142[1] = 0;
          v142[2] = 0;
          *v142 = 0;
          __p = *(v8 + 88);
          v144 = *(v8 + 104);
          v145 = *(v8 + 112);
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;
          *(v8 + 88) = 0;
          v173 = v144;
          v174[0] = v145;
          *(v174 + 7) = *(v8 + 119);
          v146 = v141;
          do
          {
            v147 = v146;
            v148 = (v146 - 6);
            if (*(v147 - 25) < 0)
            {
              operator delete(*v148);
            }

            v149 = (v147 - 14);
            *v148 = *(v147 - 7);
            v148[2] = *(v147 - 12);
            *(v147 - 89) = 0;
            *(v147 - 112) = 0;
            v150 = (v147 - 3);
            if (*(v147 - 1) < 0)
            {
              operator delete(*v150);
            }

            *v150 = *(v147 - 11);
            *(v147 - 1) = *(v147 - 9);
            *(v147 - 65) = 0;
            v146 = v147 - 8;
            v151 = *(v147 - 8);
            *(v147 - 88) = 0;
            *v147 = v151;
            *(v147 + 7) = *(v147 - 57);
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v170, &__p, v147 - 22, v147 - 19) & 0x80) != 0);
          if (*(v147 - 89) < 0)
          {
            operator delete(*v149);
          }

          v152 = v147 - 11;
          v153 = *v170;
          v149[2] = v171;
          *v149 = v153;
          HIBYTE(v171) = 0;
          LOBYTE(v170[0]) = 0;
          if (*(v149 + 47) < 0)
          {
            operator delete(*(v146 - 3));
            v156 = SHIBYTE(v171);
            v157 = __p;
            v152[2] = v173;
            *v152 = v157;
            HIBYTE(v173) = 0;
            LOBYTE(__p) = 0;
            v158 = v174[0];
            *(v146 + 7) = *(v174 + 7);
            *v146 = v158;
            if (v156 < 0)
            {
              operator delete(v170[0]);
            }
          }

          else
          {
            v154 = __p;
            v152[2] = v173;
            *v152 = v154;
            v155 = v174[0];
            *(v146 + 7) = *(v174 + 7);
            *v146 = v155;
          }

          a2 = v163;
        }

        v140 = v142 + 8;
        v141 += 8;
        v8 = v142;
      }

      while (v142 + 8 != a2);
    }
  }

LABEL_195:
  v159 = *MEMORY[0x1E69E9840];
}

void std::vector<AMCP::Wire_Connection_Properties>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(void *a1, void *a2, void *a3, void *a4)
{
  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3);
  if (!result)
  {

    return std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a4);
  }

  return result;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(uint64_t *a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *v15 = a1[1];
  *&v15[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = a1 + 3;
  v5 = a1[3];
  *v14 = a1[4];
  *&v14[7] = *(a1 + 39);
  v7 = *(a1 + 47);
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  v8 = a1 + 6;
  *&v13[7] = *(a1 + 55);
  *v13 = a1[6];
  v9 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v9;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v10 = *(a2 + 24);
  v6[2] = *(a2 + 5);
  *v6 = v10;
  v11 = *(a2 + 6);
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(v8 + 7) = *(a2 + 55);
  *v8 = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 1) = *v15;
  *(a2 + 15) = *&v15[7];
  *(a2 + 23) = v4;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v5;
  *(a2 + 4) = *v14;
  *(a2 + 39) = *&v14[7];
  *(a2 + 47) = v7;
  *(a2 + 6) = *v13;
  *(a2 + 55) = *&v13[7];
  v12 = *MEMORY[0x1E69E9840];
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v6 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a2, a2 + 3, a1, a1 + 3);
  v7 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a3, a3 + 3, a2, a2 + 3);
  if (v6 < 0)
  {
    v8 = a1;
    if ((v7 & 0x80000000) == 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a1, a2);
      if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a3, a3 + 3, a2, a2 + 3) & 0x80) == 0)
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a2, a3);
    if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a2, a2 + 3, a1, a1 + 3) & 0x80) == 0)
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(v8, v9);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(a1, a2, a3);
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a4, (a4 + 24), a3, (a3 + 24)) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a3, a4);
    if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a3, (a3 + 24), a2, (a2 + 24)) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a2, a3);
      if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a2, (a2 + 24), a1, a1 + 3) & 0x80) != 0)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(a1, a2, a3, a4);
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a5, (a5 + 24), a4, a4 + 3) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a4, a5);
    if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a4, a4 + 3, a3, a3 + 3) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a3, a4);
      if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a3, a3 + 3, a2, a2 + 3) & 0x80) != 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a2, a3);
        if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a2, a2 + 3, a1, a1 + 3) & 0x80) != 0)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *>(uint64_t a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(a2 - 8, a2 - 5, a1, (a1 + 24)) & 0x80) != 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Connection_Properties *&,AMCP::Wire_Connection_Properties *&>(a1, a2 - 4);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(a1, (a1 + 64), a2 - 4);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(a1, a1 + 64, a1 + 128, (a2 - 4));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(a1, (a1 + 64), (a1 + 128), (a1 + 192), (a2 - 4));
      return 1;
  }

LABEL_11:
  v5 = (a1 + 128);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,0>(a1, (a1 + 64), (a1 + 128));
  v6 = (a1 + 192);
  if ((a1 + 192) == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(v6, v6 + 3, v5, v5 + 3) & 0x80) != 0)
    {
      *__p = *v6;
      v24 = *(v6 + 2);
      *v6 = 0;
      *(v6 + 1) = 0;
      v25 = *(v6 + 24);
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      v9 = *(v6 + 6);
      v26 = *(v6 + 5);
      v27[0] = v9;
      *(v27 + 7) = *(v6 + 55);
      v10 = v7;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      while (1)
      {
        v11 = v10;
        v12 = a1 + v10;
        if (*(a1 + v10 + 215) < 0)
        {
          operator delete(*(v12 + 192));
        }

        *(v12 + 192) = *(v12 + 128);
        *(v12 + 208) = *(v12 + 144);
        *(v12 + 151) = 0;
        *(v12 + 128) = 0;
        if (*(v12 + 239) < 0)
        {
          operator delete(*(v12 + 216));
        }

        v13 = a1 + v11;
        *(v12 + 216) = *(a1 + v11 + 152);
        v14 = *(a1 + v11 + 176);
        *(v12 + 232) = *(a1 + v11 + 168);
        *(v13 + 175) = 0;
        *(v13 + 152) = 0;
        *(v13 + 240) = v14;
        *(v13 + 247) = *(a1 + v11 + 183);
        if (v11 == -128)
        {
          break;
        }

        v15 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::string const&,0ul,1ul>(__p, &v25, (v13 + 64), (v13 + 88));
        v10 = v11 - 64;
        if ((v15 & 0x80) == 0)
        {
          v16 = a1 + v10 + 192;
          v17 = a1 + v11;
          v18 = (a1 + v11 + 176);
          v19 = v17 + 152;
          goto LABEL_23;
        }
      }

      v18 = (v13 + 176);
      v19 = v13 + 152;
      v16 = a1;
LABEL_23:
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v20 = 0;
      *v16 = *__p;
      *(v16 + 16) = v24;
      HIBYTE(v24) = 0;
      LOBYTE(__p[0]) = 0;
      if (*(v16 + 47) < 0)
      {
        operator delete(*v19);
        v20 = v24 < 0;
      }

      *v19 = v25;
      v21 = v27[0];
      *(v19 + 16) = v26;
      HIBYTE(v26) = 0;
      LOBYTE(v25) = 0;
      *v18 = v21;
      *(v18 + 7) = *(v27 + 7);
      if (v20)
      {
        operator delete(__p[0]);
      }

      if (++v8 == 8)
      {
        return v6 + 4 == a2;
      }
    }

    v5 = v6;
    v7 += 64;
    v6 += 4;
    if (v6 == a2)
    {
      return 1;
    }
  }
}

void std::allocator<AMCP::Wire_Connection_Properties>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  v200 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2 - 24;
  v193 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_184;
      }

      if (v12 == 2)
      {
        v126 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1);
        if (v126 < 0)
        {
LABEL_182:
          v189 = *a1;
          v197 = *(a1 + 2);
          v196 = v189;
          v190 = *v8;
          *(a1 + 2) = *(a2 - 1);
          *a1 = v190;
          v186 = v196;
          v187 = v197;
LABEL_183:
          *(a2 - 1) = v187;
          *v8 = v186;
        }

        goto LABEL_184;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1);
      v128 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1 + 3);
      if (v127 < 0)
      {
        if (v128 < 0)
        {
          goto LABEL_182;
        }

        v185 = *a1;
        v197 = *(a1 + 2);
        v196 = v185;
        *a1 = *(a1 + 24);
        *(a1 + 2) = *(a1 + 5);
        *(a1 + 24) = v196;
        *(a1 + 5) = v197;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1 + 3) & 0x80) != 0)
        {
          v186 = *(a1 + 24);
          v196 = v186;
          v187 = *(a1 + 5);
          v197 = v187;
          v188 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 5) = v188;
          goto LABEL_183;
        }

LABEL_184:
        v191 = *MEMORY[0x1E69E9840];
        return;
      }

      if ((v128 & 0x80000000) == 0)
      {
        goto LABEL_184;
      }

      v196 = *(a1 + 24);
      v129 = v196;
      v197 = *(a1 + 5);
      v130 = v197;
      v131 = *(a2 - 1);
      *(a1 + 24) = *v8;
      *(a1 + 5) = v131;
      *(a2 - 1) = v130;
      *v8 = v129;
LABEL_117:
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 3, a1) & 0x80) != 0)
      {
        v132 = *a1;
        v197 = *(a1 + 2);
        v196 = v132;
        *a1 = *(a1 + 24);
        *(a1 + 2) = *(a1 + 5);
        *(a1 + 24) = v196;
        *(a1 + 5) = v197;
      }

      goto LABEL_184;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1 + 9) & 0x80) == 0)
      {
        goto LABEL_184;
      }

      v196 = *(a1 + 72);
      v119 = v196;
      v197 = *(a1 + 11);
      v120 = v197;
      v121 = *(a2 - 1);
      *(a1 + 72) = *v8;
      *(a1 + 11) = v121;
      *(a2 - 1) = v120;
      *v8 = v119;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 9, a1 + 6) & 0x80) == 0)
      {
        goto LABEL_184;
      }

      v122 = *(a1 + 8);
      v123 = *(a1 + 3);
      *(a1 + 3) = *(a1 + 72);
      *(a1 + 8) = *(a1 + 11);
      *(a1 + 72) = v123;
      *(a1 + 11) = v122;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 6, a1 + 3) & 0x80) == 0)
      {
        goto LABEL_184;
      }

      v124 = *(a1 + 5);
      v125 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 3);
      *(a1 + 5) = *(a1 + 8);
      *(a1 + 3) = v125;
      *(a1 + 8) = v124;
      goto LABEL_117;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = a1 + 24;
      v136 = a1 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = a1;
          do
          {
            v139 = v138;
            v138 = v134;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v134, v139) & 0x80) != 0)
            {
              v140 = *v138;
              v197 = *(v138 + 2);
              v196 = v140;
              *(v138 + 1) = 0;
              *(v138 + 2) = 0;
              *v138 = 0;
              v141 = v137;
              while (1)
              {
                v142 = &a1[v141];
                *(v142 + 24) = *&a1[v141];
                *(v142 + 5) = *&a1[v141 + 16];
                v142[23] = 0;
                *v142 = 0;
                if (!v141)
                {
                  break;
                }

                v141 -= 24;
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v196, &a1[v141]) & 0x80) == 0)
                {
                  v143 = &a1[v141 + 24];
                  goto LABEL_137;
                }
              }

              v143 = a1;
LABEL_137:
              v144 = v196;
              *(v143 + 16) = v197;
              *v143 = v144;
            }

            v134 = v138 + 24;
            v137 += 24;
          }

          while (v138 + 24 != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v179 = a1;
          a1 = v134;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v134, v179) & 0x80) != 0)
          {
            v180 = *a1;
            v197 = *(a1 + 2);
            v196 = v180;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = 0;
            v181 = a1;
            do
            {
              v182 = v181 - 24;
              *v181 = *(v181 - 24);
              *(v181 + 2) = *(v181 - 1);
              *(v181 - 1) = 0;
              *(v181 - 24) = 0;
              v183 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v196, v181 - 6);
              v181 = v182;
            }

            while (v183 < 0);
            v184 = v196;
            *(v182 + 2) = v197;
            *v182 = v184;
          }

          v134 = a1 + 24;
        }

        while (a1 + 24 != a2);
      }

      goto LABEL_184;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v194 = a2;
        v145 = v13 >> 1;
        v146 = v13 >> 1;
        do
        {
          v147 = v146;
          if (v145 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = &a1[24 * v148];
            if (2 * v146 + 2 < v12 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&a1[24 * v148], v149 + 3) & 0x80u) != 0)
            {
              v149 += 24;
              v148 = 2 * v147 + 2;
            }

            v150 = &a1[24 * v147];
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v149, v150) & 0x80) == 0)
            {
              v151 = *v150;
              v197 = *(v150 + 2);
              v196 = v151;
              *(v150 + 1) = 0;
              *(v150 + 2) = 0;
              *v150 = 0;
              do
              {
                v152 = v149;
                v153 = *v149;
                *(v150 + 2) = *(v149 + 2);
                *v150 = v153;
                v149[23] = 0;
                *v149 = 0;
                if (v145 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = &a1[24 * v154];
                v155 = 2 * v148 + 2;
                if (v155 < v12 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&a1[24 * v154], v149 + 3) & 0x80u) != 0)
                {
                  v149 += 24;
                  v154 = v155;
                }

                v150 = v152;
                v148 = v154;
              }

              while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v149, &v196) & 0x80) == 0);
              v156 = v196;
              *(v152 + 2) = v197;
              *v152 = v156;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v157 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v158 = v194;
        do
        {
          v159 = 0;
          v160 = v158;
          v192 = *a1;
          *&v198 = *(a1 + 1);
          *(&v198 + 7) = *(a1 + 15);
          v195 = a1[23];
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          v161 = a1;
          do
          {
            v162 = &v161[24 * v159];
            v163 = v162 + 24;
            v164 = (2 * v159) | 1;
            v165 = 2 * v159 + 2;
            if (v165 < v157)
            {
              v166 = v162 + 48;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v162 + 3, v162 + 6) & 0x80u) != 0)
              {
                v163 = v166;
                v164 = v165;
              }
            }

            v167 = *v163;
            *(v161 + 2) = *(v163 + 2);
            *v161 = v167;
            v163[23] = 0;
            *v163 = 0;
            v161 = v163;
            v159 = v164;
          }

          while (v164 <= (v157 - 2) / 2);
          if (v163 == v160 - 24)
          {
            v158 = v160 - 24;
            *v163 = v192;
            v177 = *(&v198 + 7);
            *(v163 + 1) = v198;
            *(v163 + 15) = v177;
            v163[23] = v195;
          }

          else
          {
            v168 = *(v160 - 24);
            v158 = v160 - 24;
            *(v163 + 2) = *(v160 - 1);
            *v163 = v168;
            *(v160 - 3) = v192;
            v169 = v198;
            *(v160 - 9) = *(&v198 + 7);
            *(v160 - 2) = v169;
            *(v160 - 1) = v195;
            v170 = v163 - a1 + 24;
            if (v170 >= 25)
            {
              v171 = (-2 - 0x5555555555555555 * (v170 >> 3)) >> 1;
              v172 = &a1[24 * v171];
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v172, v163) & 0x80) != 0)
              {
                v173 = *v163;
                v197 = *(v163 + 2);
                v196 = v173;
                *(v163 + 1) = 0;
                *(v163 + 2) = 0;
                *v163 = 0;
                do
                {
                  v174 = v172;
                  v175 = *v172;
                  *(v163 + 2) = *(v172 + 2);
                  *v163 = v175;
                  v172[23] = 0;
                  *v172 = 0;
                  if (!v171)
                  {
                    break;
                  }

                  v171 = (v171 - 1) >> 1;
                  v172 = &a1[24 * v171];
                  v163 = v174;
                }

                while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v172, &v196) & 0x80) != 0);
                v176 = v196;
                *(v174 + 2) = v197;
                *v174 = v176;
              }
            }
          }
        }

        while (v157-- > 2);
      }

      goto LABEL_184;
    }

    v14 = v12 >> 1;
    v15 = &a1[24 * (v12 >> 1)];
    if (v11 >= 0xC01)
    {
      v16 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a1);
      v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v15);
      if (v16 < 0)
      {
        if (v17 < 0)
        {
          v42 = *a1;
          v197 = *(a1 + 2);
          v196 = v42;
          v43 = *v8;
          *(a1 + 2) = *(a2 - 1);
          *a1 = v43;
        }

        else
        {
          v32 = *a1;
          v197 = *(a1 + 2);
          v196 = v32;
          v33 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v33;
          v34 = v196;
          *(v15 + 2) = v197;
          *v15 = v34;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v15) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v35 = *v15;
          v197 = *(v15 + 2);
          v196 = v35;
          v36 = *v8;
          *(v15 + 2) = *(a2 - 1);
          *v15 = v36;
        }

        v44 = v196;
        *(a2 - 1) = v197;
        *v8 = v44;
      }

      else if (v17 < 0)
      {
        v18 = *v15;
        v197 = *(v15 + 2);
        v196 = v18;
        v19 = *v8;
        *(v15 + 2) = *(a2 - 1);
        *v15 = v19;
        v20 = v196;
        *(a2 - 1) = v197;
        *v8 = v20;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a1) & 0x80) != 0)
        {
          v21 = *a1;
          v197 = *(a1 + 2);
          v196 = v21;
          v22 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v22;
          v23 = v196;
          *(v15 + 2) = v197;
          *v15 = v23;
        }
      }

LABEL_29:
      v45 = &a1[24 * v14 - 24];
      v46 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, a1 + 3);
      v47 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v193, v45);
      if (v46 < 0)
      {
        if (v47 < 0)
        {
          v196 = *(a1 + 24);
          v63 = v196;
          v197 = *(a1 + 5);
          v64 = v197;
          v65 = *(a2 - 4);
          *(a1 + 24) = *v193;
          *(a1 + 5) = v65;
          *(a2 - 4) = v64;
          *v193 = v63;
        }

        else
        {
          v196 = *(a1 + 24);
          v54 = v196;
          v197 = *(a1 + 5);
          v55 = v197;
          v56 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v45;
          *(a1 + 5) = v56;
          *&a1[24 * v14 - 8] = v55;
          *v45 = v54;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v193, v45) & 0x80) != 0)
          {
            v57 = *v45;
            v197 = *&a1[24 * v14 - 8];
            v196 = v57;
            v58 = *v193;
            *&a1[24 * v14 - 8] = *(a2 - 4);
            *v45 = v58;
            v59 = v196;
            *(a2 - 4) = v197;
            *v193 = v59;
          }
        }
      }

      else if (v47 < 0)
      {
        v48 = *v45;
        v197 = *&a1[24 * v14 - 8];
        v196 = v48;
        v49 = *v193;
        *&a1[24 * v14 - 8] = *(a2 - 4);
        *v45 = v49;
        v50 = v196;
        *(a2 - 4) = v197;
        *v193 = v50;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, a1 + 3) & 0x80) != 0)
        {
          v196 = *(a1 + 24);
          v51 = v196;
          v197 = *(a1 + 5);
          v52 = v197;
          v53 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v45;
          *(a1 + 5) = v53;
          *&a1[24 * v14 - 8] = v52;
          *v45 = v51;
        }
      }

      v66 = &a1[24 * v14];
      v67 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, a1 + 6);
      v68 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, v66 + 3);
      if (v67 < 0)
      {
        if (v68 < 0)
        {
          v80 = *(a1 + 3);
          v196 = v80;
          v81 = *(a1 + 8);
          v197 = v81;
          v82 = *(a2 - 7);
          *(a1 + 3) = *v9;
          *(a1 + 8) = v82;
        }

        else
        {
          v196 = *(a1 + 3);
          v75 = v196;
          v197 = *(a1 + 8);
          v76 = v197;
          v77 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v77;
          *(v66 + 5) = v76;
          *(v66 + 24) = v75;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, v66 + 3) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v78 = *(v66 + 24);
          v197 = *(v66 + 5);
          v196 = v78;
          v79 = *v9;
          *(v66 + 5) = *(a2 - 7);
          *(v66 + 24) = v79;
          v80 = v196;
          v81 = v197;
        }

        *(a2 - 7) = v81;
        *v9 = v80;
      }

      else if (v68 < 0)
      {
        v69 = *(v66 + 24);
        v197 = *(v66 + 5);
        v196 = v69;
        v70 = *v9;
        *(v66 + 5) = *(a2 - 7);
        *(v66 + 24) = v70;
        v71 = v196;
        *(a2 - 7) = v197;
        *v9 = v71;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, a1 + 6) & 0x80) != 0)
        {
          v196 = *(a1 + 3);
          v72 = v196;
          v197 = *(a1 + 8);
          v73 = v197;
          v74 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v74;
          *(v66 + 5) = v73;
          *(v66 + 24) = v72;
        }
      }

LABEL_48:
      v83 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v45);
      v84 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, v15);
      if ((v83 & 0x80) == 0)
      {
        if (v84 < 0)
        {
          v85 = *v15;
          v197 = *(v15 + 2);
          v196 = v85;
          *v15 = *(v66 + 24);
          *(v15 + 2) = *(v66 + 5);
          v86 = v196;
          *(v66 + 5) = v197;
          *(v66 + 24) = v86;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v45) & 0x80) != 0)
          {
            v87 = *v45;
            v197 = *(v45 + 2);
            v196 = v87;
            *v45 = *v15;
            *(v45 + 2) = *(v15 + 2);
            v88 = v196;
            *(v15 + 2) = v197;
            *v15 = v88;
          }
        }

        goto LABEL_57;
      }

      if (v84 < 0)
      {
        v92 = *v45;
        v197 = *(v45 + 2);
        v196 = v92;
        *v45 = *(v66 + 24);
        *(v45 + 2) = *(v66 + 5);
      }

      else
      {
        v89 = *v45;
        v197 = *(v45 + 2);
        v196 = v89;
        *v45 = *v15;
        *(v45 + 2) = *(v15 + 2);
        v90 = v196;
        *(v15 + 2) = v197;
        *v15 = v90;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66 + 3, v15) & 0x80) == 0)
        {
LABEL_57:
          v94 = *a1;
          v197 = *(a1 + 2);
          v196 = v94;
          v95 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v95;
          v96 = v196;
          *(v15 + 2) = v197;
          *v15 = v96;
          goto LABEL_58;
        }

        v91 = *v15;
        v197 = *(v15 + 2);
        v196 = v91;
        *v15 = *(v66 + 24);
        *(v15 + 2) = *(v66 + 5);
      }

      v93 = v196;
      *(v66 + 5) = v197;
      *(v66 + 24) = v93;
      goto LABEL_57;
    }

    v24 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v15);
    v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1);
    if ((v24 & 0x80) == 0)
    {
      if (v25 < 0)
      {
        v26 = *a1;
        v197 = *(a1 + 2);
        v196 = v26;
        v27 = *v8;
        *(a1 + 2) = *(a2 - 1);
        *a1 = v27;
        v28 = v196;
        *(a2 - 1) = v197;
        *v8 = v28;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v15) & 0x80) != 0)
        {
          v29 = *v15;
          v197 = *(v15 + 2);
          v196 = v29;
          v30 = *a1;
          *(v15 + 2) = *(a1 + 2);
          *v15 = v30;
          v31 = v196;
          *(a1 + 2) = v197;
          *a1 = v31;
        }
      }

      goto LABEL_58;
    }

    if (v25 < 0)
    {
      v60 = *v15;
      v197 = *(v15 + 2);
      v196 = v60;
      v61 = *v8;
      *(v15 + 2) = *(a2 - 1);
      *v15 = v61;
    }

    else
    {
      v37 = *v15;
      v197 = *(v15 + 2);
      v196 = v37;
      v38 = *a1;
      *(v15 + 2) = *(a1 + 2);
      *v15 = v38;
      v39 = v196;
      *(a1 + 2) = v197;
      *a1 = v39;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) == 0)
      {
        goto LABEL_58;
      }

      v40 = *a1;
      v197 = *(a1 + 2);
      v196 = v40;
      v41 = *v8;
      *(a1 + 2) = *(a2 - 1);
      *a1 = v41;
    }

    v62 = v196;
    *(a2 - 1) = v197;
    *v8 = v62;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 - 3, a1) & 0x80) != 0)
    {
      v97 = *a1;
      v199 = *(a1 + 2);
      v198 = v97;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      v98 = a1;
      do
      {
        v99 = v98;
        v98 += 24;
      }

      while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v98, &v198) & 0x80) != 0);
      v100 = a2;
      if (v99 == a1)
      {
        v100 = a2;
        do
        {
          if (v98 >= v100)
          {
            break;
          }

          v100 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v100, &v198) & 0x80) == 0);
      }

      else
      {
        do
        {
          v100 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v100, &v198) & 0x80) == 0);
      }

      v10 = v98;
      if (v98 < v100)
      {
        v101 = v100;
        do
        {
          v196 = *v10;
          v102 = v196;
          v197 = *(v10 + 2);
          v103 = v197;
          v104 = *(v101 + 2);
          *v10 = *v101;
          *(v10 + 2) = v104;
          *(v101 + 2) = v103;
          *v101 = v102;
          do
          {
            v10 += 24;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v198) & 0x80) != 0);
          do
          {
            v101 -= 24;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v101, &v198) & 0x80) == 0);
        }

        while (v10 < v101);
      }

      v105 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v105);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v106;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v107 = v198;
      *(v10 - 1) = v199;
      *v105 = v107;
      if (v98 < v100)
      {
        goto LABEL_83;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *>(a1, v10 - 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *>(v10, a2))
      {
        a2 = v10 - 24;
        if (!v108)
        {
          goto LABEL_2;
        }

        goto LABEL_184;
      }

      if (!v108)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v10 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v199 = *(a1 + 2);
      v198 = v109;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, a2 - 3) & 0x80) != 0)
      {
        v10 = a1;
        do
        {
          v10 += 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, v10) & 0x80) == 0);
      }

      else
      {
        v110 = a1 + 24;
        do
        {
          v10 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, v110);
          v110 = v10 + 24;
        }

        while ((v111 & 0x80) == 0);
      }

      v112 = a2;
      if (v10 < a2)
      {
        v112 = a2;
        do
        {
          v112 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, v112) & 0x80) != 0);
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v197 = *(v10 + 2);
        v196 = v113;
        v114 = *v112;
        *(v10 + 2) = *(v112 + 2);
        *v10 = v114;
        v115 = v196;
        *(v112 + 2) = v197;
        *v112 = v115;
        do
        {
          v10 += 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, v10) & 0x80) == 0);
        do
        {
          v112 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v198, v112) & 0x80) != 0);
      }

      v116 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v116);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v198;
      *(v10 - 1) = v199;
      *v116 = v118;
    }
  }

  v133 = *MEMORY[0x1E69E9840];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,false>(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v218 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a1;
  v191 = (a1 - 5);
  v194 = (a1 - 10);
  v9 = a2;
  while (1)
  {
    v10 = v9 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 4);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(v8, (v8 + 80), v9 - 5);
          goto LABEL_197;
        case 4:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(v8, (v8 + 80), (v8 + 160), v9 - 5);
          goto LABEL_197;
        case 5:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(v8, (v8 + 80), (v8 + 160), (v8 + 240), v9 - 5);
          goto LABEL_197;
      }
    }

    else
    {
      if (v11 < 2)
      {
        goto LABEL_197;
      }

      if (v11 == 2)
      {
        v71 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>((v9 - 10), (v9 - 5), v8, v8 + 40);
        if (v71 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(v8, v9 - 5);
        }

        goto LABEL_197;
      }
    }

    if (v10 <= 1919)
    {
      break;
    }

    if (!a3)
    {
      if (v8 != v9)
      {
        v192 = v9 - v8;
        v99 = (v11 - 2) >> 1;
        v100 = v99;
        v197 = v9;
        do
        {
          v101 = v99;
          if (v100 >= v99)
          {
            v102 = (2 * v99) | 1;
            v103 = v8 + 80 * v102;
            if (2 * v99 + 2 < v11 && (std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v8 + 80 * v102, v103 + 40, v103 + 80, v103 + 120) & 0x80u) != 0)
            {
              v103 += 80;
              v102 = 2 * v101 + 2;
            }

            v104 = v8 + 80 * v101;
            if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v103, v103 + 40, v104, v104 + 40) & 0x80) == 0)
            {
              v195 = v101;
              v105 = *v104;
              v211 = *(v104 + 16);
              *v210 = v105;
              *(v104 + 8) = 0;
              *(v104 + 16) = 0;
              *v104 = 0;
              v106 = *(v104 + 24);
              v213 = *(v104 + 32);
              v212 = v106;
              v107 = *(v104 + 40);
              v215 = *(v104 + 56);
              __p = v107;
              *(v104 + 48) = 0;
              *(v104 + 56) = 0;
              *(v104 + 40) = 0;
              v108 = *(v104 + 64);
              v217 = *(v104 + 72);
              v216 = v108;
              do
              {
                v109 = v103;
                if (*(v104 + 23) < 0)
                {
                  operator delete(*v104);
                }

                v110 = *v103;
                *(v104 + 16) = *(v103 + 16);
                *v104 = v110;
                *(v103 + 23) = 0;
                *v103 = 0;
                v111 = *(v103 + 32);
                *(v104 + 24) = *(v103 + 24);
                *(v104 + 32) = v111;
                if (*(v104 + 63) < 0)
                {
                  operator delete(*(v104 + 40));
                }

                v112 = *(v103 + 40);
                *(v104 + 56) = *(v103 + 56);
                *(v104 + 40) = v112;
                v114 = (v103 + 64);
                v113 = *(v103 + 64);
                *(v103 + 63) = 0;
                *(v103 + 40) = 0;
                *(v104 + 72) = *(v103 + 72);
                *(v104 + 64) = v113;
                if (v100 < v102)
                {
                  break;
                }

                v115 = (2 * v102) | 1;
                v103 = v8 + 80 * v115;
                v116 = 2 * v102 + 2;
                if (v116 < v11 && (std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v8 + 80 * v115, v103 + 40, v103 + 80, v103 + 120) & 0x80u) != 0)
                {
                  v103 += 80;
                  v115 = v116;
                }

                v104 = v109;
                v102 = v115;
              }

              while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v103, v103 + 40, v210, &__p) & 0x80) == 0);
              if (*(v109 + 23) < 0)
              {
                operator delete(*v109);
              }

              v117 = *v210;
              *(v109 + 16) = v211;
              *v109 = v117;
              HIBYTE(v211) = 0;
              LOBYTE(v210[0]) = 0;
              v118 = v213;
              *(v109 + 24) = v212;
              *(v109 + 32) = v118;
              if (*(v109 + 63) < 0)
              {
                operator delete(*(v109 + 40));
                v121 = SHIBYTE(v211);
                v122 = __p;
                *(v109 + 56) = v215;
                *(v109 + 40) = v122;
                HIBYTE(v215) = 0;
                LOBYTE(__p) = 0;
                v123 = v216;
                *(v109 + 72) = v217;
                *v114 = v123;
                v9 = v197;
                if (v121 < 0)
                {
                  operator delete(v210[0]);
                }
              }

              else
              {
                v119 = __p;
                *(v109 + 56) = v215;
                *(v109 + 40) = v119;
                v120 = v216;
                *(v109 + 72) = v217;
                *v114 = v120;
                v9 = v197;
              }

              v101 = v195;
            }
          }

          v99 = v101 - 1;
        }

        while (v101);
        v124 = 0xCCCCCCCCCCCCCCCDLL * (v192 >> 4);
        do
        {
          if (v124 >= 2)
          {
            v198 = v9;
            v125 = 0;
            *&v209[14] = *(v8 + 15);
            *v209 = *(v8 + 1);
            v189 = *v8;
            v190 = *(v8 + 23);
            *(v8 + 8) = 0;
            *(v8 + 16) = 0;
            *v8 = 0;
            v204 = *(v8 + 32);
            v202 = *(v8 + 24);
            v193 = *(v8 + 40);
            *v206 = *(v8 + 41);
            *&v206[14] = *(v8 + 55);
            v196 = *(v8 + 63);
            *(v8 + 40) = 0;
            *(v8 + 48) = 0;
            v200 = *(v8 + 72);
            v199 = *(v8 + 64);
            v126 = v8;
            *(v8 + 56) = 0;
            do
            {
              v127 = v126 + 80 * v125;
              v128 = v127 + 80;
              v129 = 2 * v125;
              v125 = (2 * v125) | 1;
              v130 = v129 + 2;
              if (v129 + 2 < v124)
              {
                v131 = v127 + 160;
                if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v127 + 80, v127 + 120, v127 + 160, v127 + 200) & 0x80u) != 0)
                {
                  v128 = v131;
                  v125 = v130;
                }
              }

              if (*(v126 + 23) < 0)
              {
                operator delete(*v126);
              }

              v132 = *v128;
              *(v126 + 16) = *(v128 + 16);
              *v126 = v132;
              *(v128 + 23) = 0;
              *v128 = 0;
              v133 = (v128 + 24);
              v134 = *(v128 + 32);
              *(v126 + 24) = *(v128 + 24);
              *(v126 + 32) = v134;
              if (*(v126 + 63) < 0)
              {
                operator delete(*(v126 + 40));
              }

              v135 = *(v128 + 40);
              *(v126 + 56) = *(v128 + 56);
              *(v126 + 40) = v135;
              v137 = (v128 + 64);
              v136 = *(v128 + 64);
              *(v128 + 63) = 0;
              *(v128 + 40) = 0;
              *(v126 + 72) = *(v128 + 72);
              *(v126 + 64) = v136;
              v126 = v128;
            }

            while (v125 <= ((v124 - 2) >> 1));
            v138 = v198 - 10;
            v139 = *(v128 + 23);
            if (v128 == v198 - 10)
            {
              if (v139 < 0)
              {
                operator delete(*v128);
              }

              *v128 = v189;
              *(v128 + 1) = *v209;
              *(v128 + 15) = *&v209[14];
              *(v128 + 23) = v190;
              *v133 = v202;
              *(v128 + 32) = v204;
              if (*(v128 + 63) < 0)
              {
                operator delete(*(v128 + 40));
              }

              *(v128 + 40) = v193;
              *(v128 + 41) = *v206;
              *(v128 + 55) = *&v206[14];
              *(v128 + 63) = v196;
              *v137 = v199;
              *(v128 + 72) = v200;
            }

            else
            {
              if (v139 < 0)
              {
                operator delete(*v128);
              }

              v140 = *v138;
              *(v128 + 16) = *(v198 - 8);
              *v128 = v140;
              v141 = *(v198 - 7);
              *(v198 - 57) = 0;
              *(v198 - 80) = 0;
              v142 = *(v198 - 12);
              *v133 = v141;
              *(v128 + 32) = v142;
              if (*(v128 + 63) < 0)
              {
                operator delete(*(v128 + 40));
              }

              v143 = *(v198 - 5);
              *(v128 + 56) = *(v198 - 3);
              *(v128 + 40) = v143;
              v144 = *(v198 - 2);
              *(v198 - 17) = 0;
              *(v198 - 40) = 0;
              *(v128 + 72) = *(v198 - 2);
              *v137 = v144;
              if (*(v198 - 57) < 0)
              {
                operator delete(*v138);
              }

              *(v198 - 80) = v189;
              *(v198 - 79) = *v209;
              *(v198 - 65) = *&v209[14];
              *(v198 - 57) = v190;
              *(v198 - 12) = v204;
              *(v198 - 7) = v202;
              if (*(v198 - 17) < 0)
              {
                operator delete(*(v198 - 5));
              }

              *(v198 - 40) = v193;
              *(v198 - 39) = *v206;
              *(v198 - 25) = *&v206[14];
              *(v198 - 17) = v196;
              *(v198 - 2) = v200;
              *(v198 - 2) = v199;
              v145 = v128 + 80 - v8;
              if (v145 >= 81)
              {
                v146 = (-2 - 0x3333333333333333 * (v145 >> 4)) >> 1;
                v147 = v8 + 80 * v146;
                if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v147, v147 + 40, v128, v128 + 40) & 0x80) != 0)
                {
                  v148 = *v128;
                  v211 = *(v128 + 16);
                  *v210 = v148;
                  *(v128 + 8) = 0;
                  *(v128 + 16) = 0;
                  *v128 = 0;
                  v149 = *(v128 + 32);
                  v212 = *v133;
                  v213 = v149;
                  v150 = *(v128 + 56);
                  __p = *(v128 + 40);
                  v215 = v150;
                  *(v128 + 48) = 0;
                  *(v128 + 56) = 0;
                  *(v128 + 40) = 0;
                  v151 = *v137;
                  v217 = *(v128 + 72);
                  v216 = v151;
                  do
                  {
                    v152 = v147;
                    if (*(v128 + 23) < 0)
                    {
                      operator delete(*v128);
                    }

                    v153 = *v147;
                    *(v128 + 16) = *(v147 + 16);
                    *v128 = v153;
                    *(v147 + 23) = 0;
                    *v147 = 0;
                    v154 = (v147 + 24);
                    v155 = *(v147 + 32);
                    *(v128 + 24) = *(v147 + 24);
                    *(v128 + 32) = v155;
                    if (*(v128 + 63) < 0)
                    {
                      operator delete(*(v128 + 40));
                    }

                    v156 = *(v147 + 40);
                    *(v128 + 56) = *(v147 + 56);
                    *(v128 + 40) = v156;
                    v158 = (v147 + 64);
                    v157 = *(v147 + 64);
                    *(v147 + 63) = 0;
                    *(v147 + 40) = 0;
                    *(v128 + 72) = *(v147 + 72);
                    *(v128 + 64) = v157;
                    if (!v146)
                    {
                      break;
                    }

                    v146 = (v146 - 1) >> 1;
                    v147 = v8 + 80 * v146;
                    v128 = v152;
                  }

                  while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v147, v147 + 40, v210, &__p) & 0x80) != 0);
                  if (*(v152 + 23) < 0)
                  {
                    operator delete(*v152);
                  }

                  v159 = *v210;
                  *(v152 + 16) = v211;
                  *v152 = v159;
                  HIBYTE(v211) = 0;
                  LOBYTE(v210[0]) = 0;
                  v160 = v213;
                  *v154 = v212;
                  *(v152 + 32) = v160;
                  if (*(v152 + 63) < 0)
                  {
                    operator delete(*(v152 + 40));
                    v164 = SHIBYTE(v211);
                    v165 = __p;
                    *(v152 + 56) = v215;
                    *(v152 + 40) = v165;
                    HIBYTE(v215) = 0;
                    LOBYTE(__p) = 0;
                    v166 = v216;
                    *(v152 + 72) = v217;
                    *v158 = v166;
                    if (v164 < 0)
                    {
                      operator delete(v210[0]);
                    }
                  }

                  else
                  {
                    v161 = __p;
                    *(v152 + 56) = v215;
                    *(v152 + 40) = v161;
                    v162 = v216;
                    *(v152 + 72) = v217;
                    *v158 = v162;
                  }
                }
              }
            }

            v9 = v198;
          }

          v9 -= 10;
        }

        while (v124-- > 2);
      }

      goto LABEL_197;
    }

    v12 = v8 + 80 * (v11 >> 1);
    if (v10 < 0x2801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(v12, v8, v9 - 5);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(v8, v12, v9 - 5);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>((v8 + 80), (v12 - 80), v9 - 10);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>((v8 + 160), (v12 + 80), v9 - 15);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>((v12 - 80), v12, (v12 + 80));
      v13 = *v8;
      v210[0] = *(v8 + 8);
      *(v210 + 7) = *(v8 + 15);
      v14 = *(v8 + 23);
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      v207 = *(v8 + 32);
      v205 = *(v8 + 24);
      v15 = *(v8 + 40);
      *&v208 = *(v8 + 48);
      *(&v208 + 7) = *(v8 + 55);
      v16 = *(v8 + 63);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v203 = *(v8 + 72);
      v201 = *(v8 + 64);
      v17 = *v12;
      *(v8 + 16) = *(v12 + 16);
      *v8 = v17;
      v18 = *(v12 + 24);
      *(v8 + 32) = *(v12 + 32);
      *(v8 + 24) = v18;
      v19 = *(v12 + 40);
      *(v8 + 56) = *(v12 + 56);
      *(v8 + 40) = v19;
      v20 = *(v12 + 64);
      *(v8 + 72) = *(v12 + 72);
      *(v8 + 64) = v20;
      *v12 = v13;
      v21 = v210[0];
      *(v12 + 15) = *(v210 + 7);
      *(v12 + 8) = v21;
      *(v12 + 23) = v14;
      *(v12 + 32) = v207;
      *(v12 + 24) = v205;
      *(v12 + 40) = v15;
      *(v12 + 55) = *(&v208 + 7);
      *(v12 + 48) = v208;
      *(v12 + 63) = v16;
      *(v12 + 72) = v203;
      *(v12 + 64) = v201;
    }

    --a3;
    if ((a4 & 1) == 0 && (std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v194, v191, v8, v8 + 40) & 0x80) == 0)
    {
      v47 = *v8;
      v211 = *(v8 + 16);
      *v210 = v47;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v48 = *(v8 + 24);
      *v8 = 0;
      v49 = *(v8 + 32);
      v212 = v48;
      v213 = v49;
      v50 = *(v8 + 56);
      __p = *(v8 + 40);
      v215 = v50;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = 0;
      v51 = *(v8 + 64);
      v217 = *(v8 + 72);
      v216 = v51;
      if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, (v9 - 10), (v9 - 5)) & 0x80) != 0)
      {
        v54 = v8;
        do
        {
          a1 = (v54 + 80);
          v55 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, v54 + 80, v54 + 120);
          v54 = a1;
        }

        while ((v55 & 0x80) == 0);
      }

      else
      {
        v52 = v8 + 120;
        do
        {
          a1 = (v52 - 40);
          if (v52 - 40 >= v9)
          {
            break;
          }

          v53 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, v52 - 40, v52);
          v52 += 80;
        }

        while ((v53 & 0x80) == 0);
      }

      v56 = v9;
      if (a1 < v9)
      {
        v57 = v9;
        do
        {
          v56 = (v57 - 80);
          v58 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, (v57 - 80), (v57 - 40));
          v57 = v56;
        }

        while (v58 < 0);
      }

      while (a1 < v56)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a1, v56);
        do
        {
          v59 = a1;
          a1 += 10;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, a1, (v59 + 15)) & 0x80) == 0);
        do
        {
          v60 = v56 - 40;
          v56 -= 5;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, v56, v60) & 0x80) != 0);
      }

      v61 = (a1 - 10);
      if (a1 - 10 != v8)
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v62 = *v61;
        *(v8 + 16) = *(a1 - 8);
        *v8 = v62;
        *(a1 - 57) = 0;
        *(a1 - 80) = 0;
        v63 = *(a1 - 12);
        *(v8 + 24) = *(a1 - 7);
        *(v8 + 32) = v63;
        if (*(v8 + 63) < 0)
        {
          operator delete(*(v8 + 40));
        }

        v64 = *(a1 - 5);
        *(v8 + 56) = *(a1 - 3);
        *(v8 + 40) = v64;
        *(a1 - 17) = 0;
        *(a1 - 40) = 0;
        v65 = *(a1 - 2);
        *(v8 + 72) = *(a1 - 2);
        *(v8 + 64) = v65;
      }

      if (*(a1 - 57) < 0)
      {
        operator delete(*v61);
      }

      v66 = *v210;
      *(a1 - 8) = v211;
      *v61 = v66;
      HIBYTE(v211) = 0;
      LOBYTE(v210[0]) = 0;
      v67 = v213;
      *(a1 - 7) = v212;
      *(a1 - 12) = v67;
      v68 = (a1 - 5);
      if (*(a1 - 17) < 0)
      {
        operator delete(*v68);
      }

      a2 = v9;
      v69 = __p;
      *(a1 - 3) = v215;
      *v68 = v69;
      HIBYTE(v215) = 0;
      LOBYTE(__p) = 0;
      v70 = v216;
      *(a1 - 2) = v217;
      *(a1 - 2) = v70;
      if (SHIBYTE(v215) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v211) < 0)
      {
        operator delete(v210[0]);
      }

      goto LABEL_84;
    }

    v22 = *v8;
    v23 = *(v8 + 24);
    v211 = *(v8 + 16);
    *v210 = v22;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 0;
    v24 = *(v8 + 32);
    v212 = v23;
    v213 = v24;
    v25 = *(v8 + 56);
    v26 = *(v8 + 64);
    __p = *(v8 + 40);
    v215 = v25;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 40) = 0;
    v217 = *(v8 + 72);
    v27 = v8;
    v216 = v26;
    do
    {
      v28 = v27;
      v27 += 80;
    }

    while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v27, v28 + 120, v210, &__p) & 0x80) != 0);
    v29 = v9;
    if (v28 == v8)
    {
      v32 = v9;
      while (v27 < v32)
      {
        v30 = (v32 - 10);
        v33 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>((v32 - 10), (v32 - 5), v210, &__p);
        v32 = v30;
        if (v33 < 0)
        {
          goto LABEL_27;
        }
      }

      v30 = v32;
    }

    else
    {
      do
      {
        v30 = (v29 - 10);
        v31 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>((v29 - 10), (v29 - 5), v210, &__p);
        v29 = v30;
      }

      while ((v31 & 0x80) == 0);
    }

LABEL_27:
    a2 = v9;
    if (v27 >= v30)
    {
      a1 = v27;
    }

    else
    {
      v34 = v30;
      a1 = v27;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a1, v34);
        do
        {
          v35 = a1;
          a1 += 10;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a1, (v35 + 15), v210, &__p) & 0x80) != 0);
        do
        {
          v36 = v34 - 40;
          v34 -= 5;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v34, v36, v210, &__p) & 0x80) == 0);
      }

      while (a1 < v34);
    }

    v9 = (a1 - 10);
    if (a1 - 10 != v8)
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v37 = *v9;
      *(v8 + 16) = *(a1 - 8);
      *v8 = v37;
      *(a1 - 57) = 0;
      *(a1 - 80) = 0;
      v38 = *(a1 - 12);
      *(v8 + 24) = *(a1 - 7);
      *(v8 + 32) = v38;
      if (*(v8 + 63) < 0)
      {
        operator delete(*(v8 + 40));
      }

      v39 = *(a1 - 5);
      *(v8 + 56) = *(a1 - 3);
      *(v8 + 40) = v39;
      *(a1 - 17) = 0;
      *(a1 - 40) = 0;
      v40 = *(a1 - 2);
      *(v8 + 72) = *(a1 - 2);
      *(v8 + 64) = v40;
    }

    if (*(a1 - 57) < 0)
    {
      operator delete(*v9);
    }

    v41 = *v210;
    *(a1 - 8) = v211;
    *v9 = v41;
    HIBYTE(v211) = 0;
    LOBYTE(v210[0]) = 0;
    v42 = v213;
    *(a1 - 7) = v212;
    *(a1 - 12) = v42;
    v43 = (a1 - 5);
    if (*(a1 - 17) < 0)
    {
      operator delete(*v43);
    }

    v44 = __p;
    *(a1 - 3) = v215;
    *v43 = v44;
    HIBYTE(v215) = 0;
    LOBYTE(__p) = 0;
    v45 = v216;
    *(a1 - 2) = v217;
    *(a1 - 2) = v45;
    if (SHIBYTE(v215) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v211) < 0)
    {
      operator delete(v210[0]);
    }

    if (v27 < v30)
    {
      goto LABEL_54;
    }

    v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *>(v8, (a1 - 10));
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *>(a1, a2))
    {
      if (v46)
      {
        goto LABEL_2;
      }

LABEL_54:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,false>(v8, a1 - 10, a3, a4 & 1);
LABEL_84:
      a4 = 0;
      goto LABEL_2;
    }

    if (v46)
    {
      goto LABEL_197;
    }
  }

  if (a4)
  {
    if (v8 != v9)
    {
      v72 = v8 + 80;
      if ((v8 + 80) != v9)
      {
        v73 = 0;
        v74 = v8;
        do
        {
          v75 = v72;
          if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v72, v74 + 120, v74, v74 + 40) & 0x80) != 0)
          {
            v76 = *v75;
            v211 = *(v75 + 16);
            *v210 = v76;
            *(v75 + 8) = 0;
            *(v75 + 16) = 0;
            *v75 = 0;
            v212 = *(v74 + 104);
            v213 = *(v74 + 112);
            __p = *(v74 + 120);
            *(v74 + 120) = 0;
            *(v74 + 128) = 0;
            v77 = *(v74 + 136);
            v78 = *(v74 + 144);
            *(v74 + 136) = 0;
            v215 = v77;
            v216 = v78;
            v79 = v73;
            v217 = *(v74 + 152);
            while (1)
            {
              v80 = v79;
              v81 = v8 + v79;
              if (*(v8 + v79 + 103) < 0)
              {
                operator delete(*(v81 + 80));
              }

              *(v81 + 80) = *v81;
              v82 = *(v81 + 16);
              v83 = *(v81 + 24);
              *(v81 + 23) = 0;
              *v81 = 0;
              *(v81 + 96) = v82;
              *(v81 + 104) = v83;
              *(v81 + 112) = *(v81 + 32);
              if (*(v81 + 143) < 0)
              {
                operator delete(*(v81 + 120));
              }

              v84 = v8 + v80;
              *(v81 + 120) = *(v8 + v80 + 40);
              v85 = *(v8 + v80 + 64);
              *(v81 + 136) = *(v8 + v80 + 56);
              *(v84 + 63) = 0;
              *(v84 + 40) = 0;
              *(v84 + 144) = v85;
              *(v84 + 152) = *(v8 + v80 + 72);
              if (!v80)
              {
                break;
              }

              v86 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, v84 - 80, v84 - 40);
              v79 = v80 - 80;
              if ((v86 & 0x80) == 0)
              {
                v87 = v8 + v80;
                v88 = v8 + v80;
                v89 = v8 + v80 + 24;
                v90 = v8 + v80 + 64;
                v91 = v88 + 40;
                goto LABEL_104;
              }
            }

            v89 = v84 + 24;
            v90 = v84 + 64;
            v91 = v84 + 40;
            v87 = v8;
LABEL_104:
            if (*(v87 + 23) < 0)
            {
              operator delete(*v87);
            }

            v92 = *v210;
            *(v87 + 16) = v211;
            *v87 = v92;
            HIBYTE(v211) = 0;
            LOBYTE(v210[0]) = 0;
            v93 = v212;
            *(v89 + 8) = v213;
            *v89 = v93;
            if (*(v87 + 63) < 0)
            {
              operator delete(*v91);
              v96 = SHIBYTE(v211);
              v97 = __p;
              *(v91 + 16) = v215;
              *v91 = v97;
              HIBYTE(v215) = 0;
              LOBYTE(__p) = 0;
              v98 = v216;
              *(v90 + 8) = v217;
              *v90 = v98;
              if (v96 < 0)
              {
                operator delete(v210[0]);
              }
            }

            else
            {
              v94 = __p;
              *(v91 + 16) = v215;
              *v91 = v94;
              v95 = v216;
              *(v90 + 8) = v217;
              *v90 = v95;
            }
          }

          v72 = v75 + 80;
          v73 += 80;
          v74 = v75;
        }

        while ((v75 + 80) != v9);
      }
    }
  }

  else if (v8 != v9)
  {
    v167 = v8 + 80;
    if ((v8 + 80) != v9)
    {
      v168 = (v8 + 144);
      do
      {
        v169 = v167;
        if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v167, v8 + 120, v8, v8 + 40) & 0x80) != 0)
        {
          v170 = *v169;
          v211 = *(v169 + 16);
          *v210 = v170;
          *(v169 + 8) = 0;
          *(v169 + 16) = 0;
          *v169 = 0;
          v212 = *(v8 + 104);
          v213 = *(v8 + 112);
          __p = *(v8 + 120);
          *(v8 + 120) = 0;
          *(v8 + 128) = 0;
          v171 = *(v8 + 136);
          v172 = *(v8 + 144);
          *(v8 + 136) = 0;
          v215 = v171;
          v216 = v172;
          LODWORD(v171) = *(v8 + 152);
          v173 = v168;
          v217 = v171;
          do
          {
            v174 = v173;
            v175 = (v173 - 8);
            if (*(v174 - 41) < 0)
            {
              operator delete(*v175);
            }

            v176 = (v174 - 18);
            *v175 = *(v174 - 9);
            v175[2] = *(v174 - 16);
            *(v174 - 121) = 0;
            *(v174 - 144) = 0;
            *(v174 - 5) = *(v174 - 15);
            *(v174 - 8) = *(v174 - 28);
            v177 = (v174 - 3);
            if (*(v174 - 1) < 0)
            {
              operator delete(*v177);
            }

            *v177 = *(v174 - 13);
            *(v174 - 1) = *(v174 - 11);
            *(v174 - 81) = 0;
            v173 = v174 - 10;
            v178 = *(v174 - 10);
            *(v174 - 104) = 0;
            *v174 = v178;
            *(v174 + 2) = *(v174 - 18);
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v210, &__p, (v174 - 28), (v174 - 23)) & 0x80) != 0);
          if (*(v174 - 121) < 0)
          {
            operator delete(*v176);
          }

          v179 = v174 - 13;
          v180 = v174 - 15;
          v181 = *v210;
          *(v174 - 16) = v211;
          *v176 = v181;
          HIBYTE(v211) = 0;
          LOBYTE(v210[0]) = 0;
          v182 = v213;
          *v180 = v212;
          *(v180 + 2) = v182;
          if (*(v174 - 81) < 0)
          {
            operator delete(*(v174 - 13));
            v185 = SHIBYTE(v211);
            v186 = __p;
            *(v174 - 11) = v215;
            *v179 = v186;
            HIBYTE(v215) = 0;
            LOBYTE(__p) = 0;
            v187 = v216;
            *(v174 - 18) = v217;
            *v173 = v187;
            if (v185 < 0)
            {
              operator delete(v210[0]);
            }
          }

          else
          {
            v183 = __p;
            *(v174 - 11) = v215;
            *v179 = v183;
            v184 = v216;
            *(v174 - 18) = v217;
            *v173 = v184;
          }
        }

        v167 = v169 + 80;
        v168 += 10;
        v8 = v169;
      }

      while ((v169 + 80) != v9);
    }
  }

LABEL_197:
  v188 = *MEMORY[0x1E69E9840];
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(uint64_t *a1, __int128 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *v20 = a1[1];
  *&v20[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v17 = a1[3];
  v18 = *(a1 + 8);
  v6 = a1 + 5;
  v5 = a1[5];
  *&v19[7] = *(a1 + 55);
  *v19 = a1[6];
  v7 = *(a1 + 63);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v8 = a1 + 8;
  v16 = *(a1 + 18);
  v15 = a1[8];
  v9 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v9;
  *(a2 + 23) = 0;
  *a2 = 0;
  v10 = a2 + 24;
  v11 = *(a2 + 8);
  a1[3] = *(a2 + 3);
  *(a1 + 8) = v11;
  if (*(a1 + 63) < 0)
  {
    operator delete(*v6);
  }

  v12 = *(a2 + 40);
  v6[2] = *(a2 + 7);
  *v6 = v12;
  v13 = *(a2 + 8);
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(v8 + 2) = *(a2 + 18);
  *v8 = v13;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 1) = *v20;
  *(a2 + 15) = *&v20[7];
  *(a2 + 23) = v4;
  *v10 = v17;
  *(v10 + 8) = v18;
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 5));
  }

  *(a2 + 5) = v5;
  *(a2 + 6) = *v19;
  *(a2 + 55) = *&v19[7];
  *(a2 + 63) = v7;
  *(a2 + 8) = v15;
  *(a2 + 18) = v16;
  v14 = *MEMORY[0x1E69E9840];
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v6 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2, a2 + 40, a1, (a1 + 5));
  v7 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a3, a3 + 40, a2, a2 + 40);
  if (v6 < 0)
  {
    v8 = a1;
    if ((v7 & 0x80000000) == 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a1, a2);
      if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a3, a3 + 40, a2, a2 + 40) & 0x80) == 0)
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a2, a3);
    if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2, a2 + 40, a1, (a1 + 5)) & 0x80) == 0)
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(v8, v9);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(uint64_t *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(a1, a2, a3);
  if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a4, a4 + 40, a3, a3 + 40) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a3, a4);
    if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a3, a3 + 40, a2, a2 + 40) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a2, a3);
      if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2, a2 + 40, a1, (a1 + 5)) & 0x80) != 0)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(uint64_t *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(a1, a2, a3, a4);
  if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a5, a5 + 40, a4, a4 + 40) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a4, a5);
    if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a4, a4 + 40, a3, a3 + 40) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a3, a4);
      if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a3, a3 + 40, a2, a2 + 40) & 0x80) != 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a2, a3);
        if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2, a2 + 40, a1, (a1 + 5)) & 0x80) != 0)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2 - 80, a2 - 40, a1, a1 + 40) & 0x80) != 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Wire_Identifier *&,AMCP::Wire_Identifier *&>(a1, (a2 - 80));
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(a1, (a1 + 80), (a2 - 80));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(a1, (a1 + 80), (a1 + 160), (a2 - 80));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(a1, (a1 + 80), (a1 + 160), (a1 + 240), (a2 - 80));
      return 1;
  }

LABEL_11:
  v5 = a1 + 160;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,0>(a1, (a1 + 80), (a1 + 160));
  v6 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v6, v6 + 40, v5, v5 + 40) & 0x80) != 0)
    {
      *__p = *v6;
      v9 = *(v6 + 24);
      v30 = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v31 = v9;
      v32 = *(v6 + 32);
      v33 = *(v6 + 40);
      v10 = *(v6 + 56);
      v11 = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v36 = *(v6 + 72);
      v12 = v7;
      v34 = v10;
      v35 = v11;
      while (1)
      {
        v13 = v12;
        v14 = a1 + v12;
        if (*(a1 + v12 + 263) < 0)
        {
          operator delete(*(v14 + 240));
        }

        *(v14 + 240) = *(v14 + 160);
        v15 = *(v14 + 176);
        v16 = *(v14 + 184);
        *(v14 + 183) = 0;
        *(v14 + 160) = 0;
        *(v14 + 256) = v15;
        *(v14 + 264) = v16;
        *(v14 + 272) = *(v14 + 192);
        v17 = (v14 + 280);
        if (*(v14 + 303) < 0)
        {
          operator delete(*v17);
        }

        v18 = a1 + v13;
        *v17 = *(a1 + v13 + 200);
        v19 = *(a1 + v13 + 224);
        *(v14 + 296) = *(a1 + v13 + 216);
        *(v18 + 223) = 0;
        *(v18 + 200) = 0;
        *(v18 + 304) = v19;
        *(v18 + 312) = *(a1 + v13 + 232);
        if (v13 == -160)
        {
          break;
        }

        v20 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(__p, &v33, v18 + 80, v18 + 120);
        v12 = v13 - 80;
        if ((v20 & 0x80) == 0)
        {
          v21 = a1 + v12 + 240;
          v22 = a1 + v13;
          v23 = a1 + v13 + 224;
          v24 = v22 + 184;
          v25 = v22 + 200;
          goto LABEL_23;
        }
      }

      v23 = v18 + 224;
      v24 = v18 + 184;
      v25 = v18 + 200;
      v21 = a1;
LABEL_23:
      if (*(v21 + 23) < 0)
      {
        operator delete(*v21);
      }

      v26 = 0;
      *v21 = *__p;
      *(v21 + 16) = v30;
      HIBYTE(v30) = 0;
      LOBYTE(__p[0]) = 0;
      *v24 = v31;
      *(v24 + 8) = v32;
      if (*(v21 + 63) < 0)
      {
        operator delete(*v25);
        v26 = v30 < 0;
      }

      *v25 = v33;
      v27 = v35;
      *(v25 + 16) = v34;
      HIBYTE(v34) = 0;
      LOBYTE(v33) = 0;
      *v23 = v27;
      *(v23 + 8) = v36;
      if (v26)
      {
        operator delete(__p[0]);
      }

      if (++v8 == 8)
      {
        return v6 + 80 == a2;
      }
    }

    v5 = v6;
    v7 += 80;
    v6 += 80;
    if (v6 == a2)
    {
      return 1;
    }
  }
}

uint64_t AMCP::graph_description_to_json@<X0>(AMCP *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v7[0] = 0;
  v8 = 0;
  v9 = &v15;
  v10 = 0;
  v11 = 1;
  v12 = 4;
  v13 = 0;
  AMCP::write_json(v7, this);
  minijson::writer::close(v7);
  std::stringbuf::str[abi:ne200100](a2, &v16);
  v14[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v5;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v19);
}

void sub_1DE6DBE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::modify_graph_destroy_list_to_json@<X0>(AMCP *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  LOBYTE(v13) = 0;
  HIDWORD(v13) = 0;
  v14 = &v19;
  v15 = 0;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = 4;
  LOBYTE(v17) = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v29, *this, *(this + 1), 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<AMCP::Wire_Identifier>::__init_with_size[abi:ne200100]<AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(&v26, *(this + 3), *(this + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 4) - *(this + 3)) >> 4));
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
  if (v30 == v29)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v29, v30, v6, 1);
  std::string::basic_string[abi:ne200100]<0>(&v38, "nodes_to_destroy");
  AMCP::write_json_array<std::string>(&v13, &v38, &v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  v7 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v27 - v26) >> 4));
  if (v27 == v26)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Identifier *,false>(v26, v27, v8, 1);
  v9 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, "wires_to_destroy");
  if (v25 < 0)
  {
    v9 = __p[0];
  }

  minijson::writer::next_field(&v13);
  minijson::writer::write_field_name(&v13, v9);
  v41 = v16;
  v42 = v17;
  LOBYTE(v38) = 1;
  HIDWORD(v38) = 0;
  v39 = v14;
  v40 = v15 + 1;
  v10 = v26;
  if (v26 != v27)
  {
    minijson::writer::next_field(&v38);
    v36 = v41;
    v37 = v42;
    v32[0] = 0;
    v33 = 0;
    v34 = v39;
    v35 = v40 + 1;
    std::string::basic_string[abi:ne200100]<0>(v43, "source");
    AMCP::write_json_object<AMCP::Terminal_Identifier>(v32, v43, v10);
  }

  minijson::writer::close(&v38);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v38 = &v26;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v38);
  v38 = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
  minijson::writer::close(&v13);
  std::stringbuf::str[abi:ne200100](a2, &v20);
  v18[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v11;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v23);
}

void sub_1DE6DC234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51)
{
  a51 = (v51 - 248);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&a51);
  *(v51 - 248) = v51 - 224;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 248));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t AMCP::extended_graph_description_to_json@<X0>(AMCP *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  LOBYTE(v15) = 0;
  HIDWORD(v15) = 0;
  v16 = &v21;
  v17 = 0;
  LOBYTE(v18) = 1;
  *(&v18 + 1) = 4;
  LOBYTE(v19) = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v35 = &v28;
  LOBYTE(v36) = 0;
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if (!((v6 >> 6) >> 58))
    {
      std::allocator<AMCP::Wire_Connection_Properties>::allocate_at_least[abi:ne200100](v6 >> 6);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Connection_Properties *,false>(0, 0, 0, 1);
  v7 = v31;
  std::string::basic_string[abi:ne200100]<0>(v31, "graph");
  if (v32 < 0)
  {
    v7 = v31[0];
  }

  minijson::writer::next_field(&v15);
  minijson::writer::write_field_name(&v15, v7);
  v8 = v16;
  v38 = v18;
  v39 = v19;
  LOBYTE(v35) = 0;
  HIDWORD(v35) = 0;
  v36 = v16;
  v37 = v17 + 1;
  AMCP::write_json(&v35, this);
  minijson::writer::close(&v35);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  v9 = v26;
  std::string::basic_string[abi:ne200100]<0>(v26, "wire_properties");
  if (v27 < 0)
  {
    v9 = v26[0];
  }

  minijson::writer::next_field(&v15);
  minijson::writer::write_field_name(&v15, v9);
  v38 = v18;
  v39 = v19;
  LOBYTE(v35) = 1;
  HIDWORD(v35) = 0;
  v36 = v16;
  v37 = v17 + 1;
  v10 = v28;
  if (v28 != v29)
  {
    minijson::writer::next_field(&v35);
    v33 = v38;
    v34 = v39;
    LOBYTE(v31[0]) = 0;
    HIDWORD(v31[0]) = 0;
    v31[1] = v36;
    v32 = v37 + 1;
    minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v31, "source_clock_node_uid", v10);
    v11 = v10 + 24;
    minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v31, "destination_clock_node_uid", v11);
    v11 += 24;
    minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(v31, "requires_resampler", v11++);
    minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(v31, "requires_delay", v11++);
    minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(v31, "requires_format_conversion", v11);
    minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(v31, "requires_drift_correction", v11 + 1);
    AMCP::enum_to_string<AMCP::Resampler_Type>();
  }

  minijson::writer::close(&v35);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v35 = &v28;
  std::vector<AMCP::Wire_Connection_Properties>::__destroy_vector::operator()[abi:ne200100](&v35);
  minijson::writer::close(&v15);
  std::stringbuf::str[abi:ne200100](a2, &v22);
  v20[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v12;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v25);
}

void sub_1DE6DC850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 - 256) = v10 - 232;
  std::vector<AMCP::Wire_Connection_Properties>::__destroy_vector::operator()[abi:ne200100]((v10 - 256));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t minijson::istream_context::read(minijson::istream_context *this)
{
  v2 = *(this + 2);
  v3 = std::istream::get();
  if ((*(*(this + 2) + *(**(this + 2) - 24) + 32) & 5) != 0)
  {
    return 0;
  }

  else
  {
    ++*(this + 3);
  }

  return v3;
}

void minijson::detail::read_quoted_string<minijson::istream_context>(minijson::istream_context **this)
{
  v2 = 0;
  v3 = 0;
  v42 = 0;
  v4 = 1;
  v5 = MEMORY[0x1E69E9830];
  v41 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v6 = minijson::istream_context::read(this);
          if (!v6)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            v26 = this[3];
            v27 = v26 != 0;
            v28 = v26 - 1;
            if (!v27)
            {
              v28 = 0;
            }

            *exception = &unk_1F598C548;
            exception[1] = v28;
            v29 = 5;
LABEL_70:
            *(exception + 4) = v29;
          }

          v7 = v6;
          if (v4 != 3)
          {
            break;
          }

          *(&v41 + v3++) = v6;
          if (v3 == 4)
          {
            for (i = 0; i != 4; ++i)
            {
              v9 = *(&v41 + i);
              if (v9 < 0 || (*(v5 + 4 * v9 + 60) & 0x10000) == 0)
              {
                v24 = __cxa_allocate_exception(1uLL);
              }
            }

            v10 = minijson::detail::parse_long(&v41, 0x10);
            if (!(v10 | v2))
            {
              v32 = __cxa_allocate_exception(0x18uLL);
              v33 = this[3];
              v27 = v33 != 0;
              v34 = v33 - 1;
              if (!v27)
              {
                v34 = 0;
              }

              *v32 = &unk_1F598C548;
              v32[1] = v34;
              *(v32 + 4) = 13;
            }

            if (v2)
            {
              if (((v2 + 0x2000) >> 11) > 0x1Eu)
              {
                if ((v2 >> 10) > 0x36u || ((v10 + 0x2000) >> 10) <= 0x3Eu)
                {
LABEL_77:
                  v35 = __cxa_allocate_exception(1uLL);
                }

                v21 = ((v2 + 10240) << 10) + v10 + 74752;
                v11 = (v21 >> 18) | 0xF0;
                v14 = (v21 >> 12) & 0x3F | 0x80;
                v13 = (v21 >> 6) & 0x3F | 0x80;
                v12 = ((v10 & 0x3F) << 24) | 0x80000000;
              }

              else
              {
                if (v10)
                {
                  goto LABEL_77;
                }

                v11 = v2;
                if (v2 >= 0x80u)
                {
                  v12 = 0;
                  if (v2 > 0x7FFu)
                  {
                    v14 = (v2 >> 6) & 0x3F | 0x80;
                    v13 = v2 & 0x3F | 0x80;
                    v11 = (v2 >> 12) | 0xE0;
                  }

                  else
                  {
                    v13 = 0;
                    v14 = v2 & 0x3F | 0x80;
                    v11 = (v2 >> 6) | 0xC0;
                  }
                }

                else
                {
                  v12 = 0;
                  v13 = 0;
                  v14 = 0;
                }
              }

              v22 = 0;
              v40 = v12 | (v13 << 16) | (v14 << 8) | v11;
              do
              {
                if (v22 && !*(&v40 + v22))
                {
                  break;
                }

                minijson::istream_context::write(this[4], *(&v40 + v22++));
              }

              while (v22 != 4);
LABEL_64:
              v2 = 0;
              v3 = 0;
              v4 = 1;
            }

            else
            {
              v3 = 0;
              v4 = 1;
              v2 = v10;
              if (v10 >> 10 != 54)
              {
                if (((v10 + 0x2000) >> 11) > 0x1Eu)
                {
                  v38 = __cxa_allocate_exception(1uLL);
                }

                v18 = v10;
                if (v10 >= 0x80u)
                {
                  if (v10 > 0x7FFu)
                  {
                    v18 = (v10 >> 12) | 0xE0;
                    v20 = (v10 >> 6) & 0x3F | 0x80;
                    v19 = ((v10 & 0x3F) << 16) | 0x800000;
                  }

                  else
                  {
                    v19 = 0;
                    v18 = (v10 >> 6) | 0xC0;
                    v20 = v10 & 0x3F | 0x80;
                  }
                }

                else
                {
                  v19 = 0;
                  v20 = 0;
                }

                v23 = 0;
                v39 = v19 | (v20 << 8) | v18;
                do
                {
                  if (v23 && !*(&v39 + v23))
                  {
                    break;
                  }

                  minijson::istream_context::write(this[4], *(&v39 + v23++));
                }

                while (v23 != 4);
                goto LABEL_64;
              }
            }
          }
        }

        if (v4 != 2)
        {
          break;
        }

        if (v6 <= 0x65u)
        {
          if (v6 > 0x5Bu)
          {
            if (v6 == 92)
            {
              v16 = this[4];
              v17 = 92;
            }

            else
            {
              if (v6 != 98)
              {
                goto LABEL_78;
              }

              v16 = this[4];
              v17 = 8;
            }
          }

          else if (v6 == 34)
          {
            v16 = this[4];
            v17 = 34;
          }

          else
          {
            if (v6 != 47)
            {
              goto LABEL_78;
            }

            v16 = this[4];
            v17 = 47;
          }

          goto LABEL_53;
        }

        if (v6 <= 0x71u)
        {
          if (v6 == 102)
          {
            v16 = this[4];
            v17 = 12;
          }

          else
          {
            if (v6 != 110)
            {
LABEL_78:
              exception = __cxa_allocate_exception(0x18uLL);
              v36 = this[3];
              v27 = v36 != 0;
              v37 = v36 - 1;
              if (!v27)
              {
                v37 = 0;
              }

              *exception = &unk_1F598C548;
              exception[1] = v37;
              v29 = 3;
              goto LABEL_70;
            }

            v16 = this[4];
            v17 = 10;
          }

LABEL_53:
          minijson::istream_context::write(v16, v17);
          v4 = 1;
        }

        else
        {
          if (v6 == 114)
          {
            v16 = this[4];
            v17 = 13;
            goto LABEL_53;
          }

          if (v6 == 116)
          {
            v16 = this[4];
            v17 = 9;
            goto LABEL_53;
          }

          v4 = 3;
          if (v6 != 117)
          {
            goto LABEL_78;
          }
        }
      }

      v4 = 2;
    }

    while (v6 == 92);
    if (v2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v30 = this[3];
      v27 = v30 != 0;
      v31 = v30 - 1;
      if (!v27)
      {
        v31 = 0;
      }

      *exception = &unk_1F598C548;
      exception[1] = v31;
      v29 = 2;
      goto LABEL_70;
    }

    v15 = this[4];
    if (v7 == 34)
    {
      break;
    }

    minijson::istream_context::write(v15, v7);
    v2 = 0;
    v4 = 1;
  }

  minijson::istream_context::write(v15, 0);
}

void sub_1DE6DCEB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *(v2 + 24);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (!v5)
    {
      v6 = 0;
    }

    *exception = &unk_1F598C548;
    exception[1] = v6;
    *(exception + 4) = 4;
  }

  _Unwind_Resume(exception_object);
}

uint64_t minijson::detail::parse_value_helper<minijson::istream_context>(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  switch(v3)
  {
    case '""':
      operator new();
    case '[':
      *result = 4;
      *(result + 4) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = "";
      v4 = 2;
      break;
    case '{':
      *result = 3;
      *(result + 4) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = "";
      v4 = 1;
      break;
    default:
      operator new();
  }

  *a2 = v4;
  ++*(a2 + 8);
  return result;
}

void sub_1DE6DD24C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    minijson::detail::parse_double(v2, v3);
    __cxa_end_catch();
    JUMPOUT(0x1DE6DD180);
  }

  _Unwind_Resume(exception_object);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::require_type(AMCP::Log::AMCP_Scope_Registry *result, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "Graph_Description.cpp";
      v19 = 1024;
      v20 = 482;
      v21 = 2080;
      v22 = "not (value.type() == required_type)";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s value does not have expected type", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("value does not have expected type", &v8);
    std::logic_error::logic_error(&v9, &v8);
    v9.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5991430;
    v11 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v10);
    v23 = "void AMCP::require_type(const minijson::value &, minijson::value_type)";
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Description.cpp";
    v25 = 482;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v7);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6DD580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t minijson::detail::parse_long(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_11;
  }

  v3 = *this;
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a2;
  if ((v3 & 0x80000000) != 0)
  {
    if (__maskrune(v3, 0x4000uLL))
    {
      goto LABEL_11;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x4000) != 0)
  {
    goto LABEL_11;
  }

  v5 = *__error();
  *__error() = 0;
  __endptr = 0;
  v6 = strtol(this, &__endptr, v4);
  v7 = __error();
  v8 = *v7;
  *v7 = v5;
  if (*__endptr || v8 == 34 && (v6 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
LABEL_11:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v6;
}

double minijson::detail::parse_double(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_12;
  }

  v3 = *this;
  if (!*this)
  {
    goto LABEL_12;
  }

  v4 = 1;
  do
  {
    if ((v3 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) == 0)
    {
      v5 = v3 - 43;
      if (v5 > 0x3A || ((1 << v5) & 0x40000000400000DLL) == 0)
      {
        goto LABEL_12;
      }
    }

    v3 = *(this + v4++);
  }

  while (v3);
  v6 = *__error();
  *__error() = 0;
  v12 = 0;
  v7 = strtod(this, &v12);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (*v12 || v9 == 34)
  {
LABEL_12:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v7;
}

void minijson::istream_context::write(minijson::istream_context *this, char a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  if (v4 >= v3)
  {
    v6 = *(this + 2);
    v7 = (v4 - v6);
    v8 = v4 - v6 + 1;
    if (v8 < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v4 - v6;
    *v7 = a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *(this + 2) = 0;
    *(this + 3) = v7 + 1;
    *(this + 4) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  *(this + 3) = v5;
}

const char *minijson::parse_error::what(minijson::parse_error *this)
{
  v1 = *(this + 4);
  if (v1 > 0xD)
  {
    return "";
  }

  else
  {
    return off_1E8678758[v1];
  }
}

void minijson::parse_error::~parse_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::parse_json<AMCP::Terminal_Description>(uint64_t a1, minijson::istream_context *this)
{
  v22 = *MEMORY[0x1E69E9840];
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  v3 = *(this + 1);
  if (v3 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F598C548;
    v19 = *(this + 3);
    v14 = v19 != 0;
    v15 = v19 - 1;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = 12;
LABEL_27:
    exception[1] = v15;
    *(exception + 4) = v16;
  }

  LOBYTE(v4) = 0;
  v20 = 0;
  if (*this <= 2u)
  {
    v5 = 8 * (*this & 3);
    v4 = 0x5B7B00u >> v5;
    v20 = 1u >> v5;
  }

  v6 = 0;
  *this = 0;
  v7 = MEMORY[0x1E69E9830];
  v8 = v20;
  while (1)
  {
    do
    {
      if (*(this + 1) != v3)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = &unk_1F598C548;
        v17 = *(this + 3);
        v14 = v17 != 0;
        v15 = v17 - 1;
        if (!v14)
        {
          v15 = 0;
        }

        v16 = 11;
        goto LABEL_27;
      }

      if (v8)
      {
        LOBYTE(v4) = minijson::istream_context::read(this);
      }

      if ((v4 & 0x80) != 0)
      {
        result = __maskrune(v4, 0x4000uLL);
      }

      else
      {
        result = *(v7 + 4 * v4 + 60) & 0x4000;
      }

      v8 = 1;
    }

    while (result);
    if (v6)
    {
      break;
    }

    v6 = 1;
    if (v4 != 123)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = &unk_1F598C548;
      v18 = *(this + 3);
      v14 = v18 != 0;
      v15 = v18 - 1;
      if (!v14)
      {
        v15 = 0;
      }

      v16 = 8;
      goto LABEL_27;
    }
  }

  v20 = 1;
  v21 = v4;
  if (v4 == 34)
  {
    operator new();
  }

  if (v4 != 125)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F598C548;
    v13 = *(this + 3);
    v14 = v13 != 0;
    v15 = v13 - 1;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = 1;
    goto LABEL_27;
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 1) = v10 - 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6DE86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v52 - 168);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  v54 = v51 + 64;
  v55 = -48;
  do
  {
    a41 = v54;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
    v54 -= 24;
    v55 += 24;
  }

  while (v55);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v12.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](v5);
  }

  v12.__first_ = 0;
  v12.__begin_ = (24 * v2);
  v12.__end_ = (24 * v2);
  v12.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8) - *a1;
  v8 = 24 * v2 - v7;
  memcpy(v12.__begin_ - v7, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  v10 = *(a1 + 16);
  *(a1 + 16) = v12.__end_cap_.__value_;
  v12.__end_ = v9;
  v12.__end_cap_.__value_ = v10;
  v12.__first_ = v9;
  v12.__begin_ = v9;
  std::__split_buffer<std::string>::~__split_buffer(&v12);
  return v6;
}

uint64_t std::vector<AMCP::Terminal_Description>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<AMCP::Terminal_Description>::__emplace_back_slow_path<AMCP::Terminal_Description>(a1, a2);
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *v3 = v4;
    *(v3 + 16) = v5;
    v6 = (v3 + 40);
    v7 = a2 + 40;
    v8 = 2;
    do
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *v6 = *v7;
      v6[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v7 += 24;
      v6 += 3;
      --v8;
    }

    while (v8);
    v9 = *(a2 + 88);
    *(v3 + 96) = *(a2 + 96);
    *(v3 + 88) = v9;
    result = v3 + 104;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t AMCP::parse_json<AMCP::Terminal_Identifier>(uint64_t a1, minijson::istream_context *this)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *(this + 1);
  if (v3 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F598C548;
    v19 = *(this + 3);
    v12 = v19 != 0;
    v13 = v19 - 1;
    if (!v12)
    {
      v13 = 0;
    }

    v14 = 12;
LABEL_21:
    exception[1] = v13;
    *(exception + 4) = v14;
  }

  LOBYTE(v4) = 0;
  v20 = 0;
  if (*this <= 2u)
  {
    v5 = 8 * (*this & 3);
    v4 = 0x5B7B00u >> v5;
    HIBYTE(v20) = 0x5B7B00u >> v5;
    LOBYTE(v20) = 1u >> v5;
  }

  v6 = 0;
  *this = 0;
  v7 = MEMORY[0x1E69E9830];
  v8 = v4;
  while (1)
  {
    if (v20 == 1)
    {
      LOBYTE(v4) = minijson::istream_context::read(this);
      HIBYTE(v20) = v4;
      v8 = v4;
    }

    LOBYTE(v20) = 1;
    if (v8 < 0)
    {
      result = __maskrune(v8, 0x4000uLL);
    }

    else
    {
      result = *(v7 + 4 * v8 + 60) & 0x4000;
    }

    if (result)
    {
      goto LABEL_17;
    }

    if (v6)
    {
      break;
    }

    if (v4 != 123)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = &unk_1F598C548;
      v18 = *(this + 3);
      v12 = v18 != 0;
      v13 = v18 - 1;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = 8;
      goto LABEL_21;
    }

    v6 = 1;
    LOBYTE(v4) = 123;
    v8 = 123;
LABEL_17:
    if (*(this + 1) != v3)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = &unk_1F598C548;
      v11 = *(this + 3);
      v12 = v11 != 0;
      v13 = v11 - 1;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = 11;
      goto LABEL_21;
    }
  }

  if (v4 == 34)
  {
    operator new();
  }

  if (v4 != 125)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F598C548;
    v17 = *(this + 3);
    v12 = v17 != 0;
    v13 = v17 - 1;
    if (!v12)
    {
      v13 = 0;
    }

    v14 = 1;
    goto LABEL_21;
  }

  v15 = *(this + 1);
  if (v15)
  {
    *(this + 1) = v15 - 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}