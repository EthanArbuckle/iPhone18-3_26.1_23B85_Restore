void sub_23CA0DF88(_Unwind_Exception *a1)
{
  if (*(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::ValidateLinearExpression(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 10);
  if (v4 != *(a3 + 4))
  {
    v10 = "coeffs_size() != vars_size() in linear expression: ";
    v11 = 51;
    google::protobuf::Message::ShortDebugString(&__p);
  }

  v5 = *(a3 + 3);
  result = operations_research::sat::PossibleIntegerOverflow(a2, v5, *(a3 + 10), *(a3 + 6), v4, *(a3 + 8));
  if (result)
  {
    v10 = "Possible overflow in linear expression: ";
    v11 = 40;
    google::protobuf::Message::ShortDebugString(&__p);
  }

  if (v4)
  {
    v7 = 4 * v4;
    do
    {
      if ((*v5 & 0x80000000) != 0)
      {
        v10 = "Invalid negated reference in linear expression: ";
        v11 = 48;
        google::protobuf::Message::ShortDebugString(&__p);
      }

      ++v5;
      v7 -= 4;
    }

    while (v7);
  }

  *(this + 23) = 0;
  *this = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CA0E5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::anonymous namespace::ValidateAffineExpression(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  __p[15] = *MEMORY[0x277D85DE8];
  if (*(a3 + 4) >= 2)
  {
    __p[9] = "expression must be affine: ";
    __p[10] = 27;
    google::protobuf::Message::ShortDebugString(__p);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_23CA0E6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **absl::lts_20240722::StrCat@<X0>(const void **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
    a2[v3] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void operations_research::sat::ValidateInputCpModel(operations_research::sat *this@<X0>, const operations_research::sat::SatParameters *a2@<X1>, const operations_research::sat::CpModelProto *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v29 = *MEMORY[0x277D85DE8];
  operations_research::sat::ValidateCpModel(a2, 0, a3, a4, *&a5);
  if (*(a4 + 23) < 0)
  {
    if (!*(a4 + 8))
    {
      operator delete(*a4);
      if ((*(a2 + 16) & 8) == 0)
      {
LABEL_23:
        *(a4 + 23) = 0;
        *a4 = 0;
        goto LABEL_24;
      }

LABEL_7:
      v10 = *(a2 + 19);
      v11 = *(v10 + 16);
      if (v11 != *(v10 + 40))
      {
        v27 = "vars and coeffs size do not match in objective: ";
        v28 = 48;
        google::protobuf::Message::ShortDebugString(&v22);
      }

      if (v11)
      {
        v12 = *(this + 98);
        v13 = *(v10 + 24);
        v14 = 4 * v11;
        do
        {
          v15 = *v13;
          if ((v15 & 0x80000000) != 0 || *(a2 + 8) <= v15)
          {
            v18 = *(a2 + 19);
            v27 = "Out of bound integer variable ";
            v28 = 30;
            v24 = v26;
            v25 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v15, v26, v9) - v26;
            v22 = " in objective: ";
            v23 = 15;
            google::protobuf::Message::ShortDebugString(&__p);
          }

          ++v13;
          v14 -= 4;
        }

        while (v14);
        v16 = *(v10 + 48);
        v17 = 8 * v11;
        do
        {
          if ((*v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v27 = "Coefficients must be finite in objective: ";
            v28 = 42;
            google::protobuf::Message::ShortDebugString(&v22);
          }

          if (fabs(*v16) > v12)
          {
            v19 = *(a2 + 19);
            v27 = "Coefficients larger than params.mip_max_valid_magnitude() [value = ";
            v28 = 67;
            v24 = v26;
            v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v26, v12, v8);
            v22 = "] in objective: ";
            v23 = 16;
            google::protobuf::Message::ShortDebugString(&__p);
          }

          ++v16;
          v17 -= 8;
        }

        while (v17);
      }

      if ((*(v10 + 56) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v27 = "Offset must be finite in objective: ";
        v28 = 36;
        google::protobuf::Message::ShortDebugString(&v22);
      }

      goto LABEL_23;
    }
  }

  else if (!*(a4 + 23))
  {
    if ((*(a2 + 16) & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23CA0EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::anonymous namespace::ConstraintChecker::ConstraintIsFeasible(operations_research::sat::_anonymous_namespace_::ConstraintChecker *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::ConstraintProto *a3)
{
  v5 = *(a3 + 4);
  if (v5)
  {
    v6 = *(a3 + 3);
    for (i = 4 * v5; i; i -= 4)
    {
      v8 = *v6;
      if ((v8 & 0x80000000) != 0)
      {
        if (*(*this + 8 * ~v8))
        {
          goto LABEL_7;
        }
      }

      else if (!*(*this + 8 * v8))
      {
        goto LABEL_7;
      }

      ++v6;
    }
  }

  v10 = *(a3 + 15);
  v9 = 1;
  switch(v10)
  {
    case 0u:
      return v9 & 1;
    case 3u:
      v11 = *(a3 + 6);
      v12 = *(v11 + 16);
      if (!v12)
      {
        goto LABEL_495;
      }

      v13 = *(v11 + 24);
      v14 = 4 * v12;
      v9 = 0;
      while (2)
      {
        v15 = *v13;
        if ((v15 & 0x80000000) != 0)
        {
          if (!*(*this + 8 * ~v15))
          {
            goto LABEL_7;
          }
        }

        else if (*(*this + 8 * v15))
        {
LABEL_7:
          v9 = 1;
          return v9 & 1;
        }

        ++v13;
        v14 -= 4;
        if (!v14)
        {
          return v9 & 1;
        }

        continue;
      }

    case 4u:
      v241 = *(a3 + 6);
      v242 = *(v241 + 16);
      if (!v242)
      {
        return v9 & 1;
      }

      v243 = *(v241 + 24);
      v244 = 4 * v242;
      while (2)
      {
        v245 = *v243;
        if ((v245 & 0x80000000) != 0)
        {
          if (*(*this + 8 * ~v245))
          {
            goto LABEL_495;
          }
        }

        else if (!*(*this + 8 * v245))
        {
LABEL_495:
          v9 = 0;
          return v9 & 1;
        }

        ++v243;
        v244 -= 4;
        if (!v244)
        {
          return v9 & 1;
        }

        continue;
      }

    case 5u:
      v202 = *(a3 + 6);
      v203 = *(v202 + 16);
      if (!v203)
      {
        goto LABEL_495;
      }

      v204 = 0;
      v205 = *(v202 + 24);
      v206 = 4 * v203;
      do
      {
        while (1)
        {
          v207 = *v205;
          if ((v207 & 0x80000000) == 0)
          {
            break;
          }

          v204 ^= *(*this + 8 * ~v207) == 0;
          ++v205;
          v206 -= 4;
          if (!v206)
          {
            goto LABEL_421;
          }
        }

        v204 ^= *(*this + 8 * v207) != 0;
        ++v205;
        v206 -= 4;
      }

      while (v206);
      goto LABEL_421;
    case 7u:
      v158 = *(a3 + 6);
      if (*(v158 + 48))
      {
        v159 = *(v158 + 48);
      }

      else
      {
        v159 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v160 = v159[8];
      v161 = *(v159 + 4);
      if (v161 < 1)
      {
        goto LABEL_186;
      }

      v162 = v159[3];
      v163 = v159[6];
      do
      {
        while (1)
        {
          v166 = *v162;
          v162 = (v162 + 4);
          v165 = v166;
          if ((v166 & 0x80000000) == 0)
          {
            break;
          }

          v164 = *v163++;
          v160 = (v160 + v164 * -*(*this + 8 * ~v165));
          if (!--v161)
          {
            goto LABEL_186;
          }
        }

        v167 = *v163++;
        v160 = (v160 + v167 * *(*this + 8 * v165));
        --v161;
      }

      while (v161);
LABEL_186:
      v170 = *(v158 + 24);
      v168 = (v158 + 24);
      v169 = v170;
      v171 = v170 - 1;
      v172 = (v170 + 7);
      if ((v170 & 1) == 0)
      {
        v172 = v168;
      }

      v173 = *v172;
      v174 = *(*v172 + 64);
      v175 = *(v173 + 16);
      if (v175 >= 1)
      {
        v176 = *(v173 + 24);
        v177 = *(v173 + 48);
        do
        {
          while (1)
          {
            v180 = *v176++;
            v179 = v180;
            if ((v180 & 0x80000000) == 0)
            {
              break;
            }

            v178 = *v177++;
            v174 += v178 * -*(*this + 8 * ~v179);
            if (!--v175)
            {
              goto LABEL_193;
            }
          }

          v181 = *v177++;
          v174 += v181 * *(*this + 8 * v179);
          --v175;
        }

        while (v175);
      }

LABEL_193:
      v182 = (v171 + 16);
      if (v169)
      {
        v168 = v182;
      }

      v183 = *v168;
      v184 = *(*v168 + 64);
      v185 = *(v183 + 16);
      if (v185 >= 1)
      {
        v186 = *(v183 + 24);
        v187 = *(v183 + 48);
        do
        {
          while (1)
          {
            v190 = *v186++;
            v189 = v190;
            if ((v190 & 0x80000000) == 0)
            {
              break;
            }

            v188 = *v187++;
            v184 += v188 * -*(*this + 8 * ~v189);
            if (!--v185)
            {
              goto LABEL_200;
            }
          }

          v191 = *v187++;
          v184 += v191 * *(*this + 8 * v189);
          --v185;
        }

        while (v185);
      }

LABEL_200:
      v192 = v174 / v184;
      goto LABEL_276;
    case 8u:
      v246 = *(a3 + 6);
      if (*(v246 + 48))
      {
        v247 = *(v246 + 48);
      }

      else
      {
        v247 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v160 = v247[8];
      v248 = *(v247 + 4);
      if (v248 < 1)
      {
        goto LABEL_261;
      }

      v249 = v247[3];
      v250 = v247[6];
      do
      {
        while (1)
        {
          v253 = *v249;
          v249 = (v249 + 4);
          v252 = v253;
          if ((v253 & 0x80000000) == 0)
          {
            break;
          }

          v251 = *v250++;
          v160 = (v160 + v251 * -*(*this + 8 * ~v252));
          if (!--v248)
          {
            goto LABEL_261;
          }
        }

        v254 = *v250++;
        v160 = (v160 + v254 * *(*this + 8 * v252));
        --v248;
      }

      while (v248);
LABEL_261:
      v257 = *(v246 + 24);
      v255 = (v246 + 24);
      v256 = v257;
      v258 = v257 - 1;
      v259 = (v257 + 7);
      if ((v257 & 1) == 0)
      {
        v259 = v255;
      }

      v260 = *v259;
      v261 = *(*v259 + 64);
      v262 = *(v260 + 16);
      if (v262 >= 1)
      {
        v263 = *(v260 + 24);
        v264 = *(v260 + 48);
        do
        {
          while (1)
          {
            v267 = *v263++;
            v266 = v267;
            if ((v267 & 0x80000000) == 0)
            {
              break;
            }

            v265 = *v264++;
            v261 += v265 * -*(*this + 8 * ~v266);
            if (!--v262)
            {
              goto LABEL_268;
            }
          }

          v268 = *v264++;
          v261 += v268 * *(*this + 8 * v266);
          --v262;
        }

        while (v262);
      }

LABEL_268:
      v269 = (v258 + 16);
      if (v256)
      {
        v255 = v269;
      }

      v270 = *v255;
      v271 = *(*v255 + 64);
      v272 = *(v270 + 16);
      if (v272 >= 1)
      {
        v273 = *(v270 + 24);
        v274 = *(v270 + 48);
        do
        {
          while (1)
          {
            v277 = *v273++;
            v276 = v277;
            if ((v277 & 0x80000000) == 0)
            {
              break;
            }

            v275 = *v274++;
            v271 += v275 * -*(*this + 8 * ~v276);
            if (!--v272)
            {
              goto LABEL_275;
            }
          }

          v278 = *v274++;
          v271 += v278 * *(*this + 8 * v276);
          --v272;
        }

        while (v272);
      }

LABEL_275:
      v192 = v261 % v271;
LABEL_276:
      v9 = v160 == v192;
      return v9 & 1;
    case 0xBu:
      v215 = *(a3 + 6);
      if (*(v215 + 48))
      {
        v216 = *(v215 + 48);
      }

      else
      {
        v216 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v217 = v216[8];
      v218 = *(v216 + 4);
      if (v218 < 1)
      {
        goto LABEL_231;
      }

      v219 = v216[3];
      v220 = v216[6];
      do
      {
        while (1)
        {
          v223 = *v219;
          v219 = (v219 + 4);
          v222 = v223;
          if ((v223 & 0x80000000) == 0)
          {
            break;
          }

          v221 = *v220++;
          v217 = (v217 + v221 * -*(*this + 8 * ~v222));
          if (!--v218)
          {
            goto LABEL_231;
          }
        }

        v224 = *v220++;
        v217 = (v217 + v224 * *(*this + 8 * v222));
        --v218;
      }

      while (v218);
LABEL_231:
      v226 = *(v215 + 24);
      v225 = (v215 + 24);
      v227 = (v226 + 7);
      if (v226)
      {
        v228 = v227;
      }

      else
      {
        v228 = v225;
      }

      v229 = *(v225 + 2);
      if (v229)
      {
        v230 = &v228[v229];
        v231 = 1;
        do
        {
          v232 = *v228;
          v233 = *(*v228 + 64);
          v234 = *(*v228 + 16);
          if (v234 >= 1)
          {
            v235 = *(v232 + 24);
            v236 = *(v232 + 48);
            do
            {
              while (1)
              {
                v239 = *v235++;
                v238 = v239;
                if ((v239 & 0x80000000) == 0)
                {
                  break;
                }

                v237 = *v236++;
                v233 += v237 * -*(*this + 8 * ~v238);
                if (!--v234)
                {
                  goto LABEL_236;
                }
              }

              v240 = *v236++;
              v233 += v240 * *(*this + 8 * v238);
              --v234;
            }

            while (v234);
          }

LABEL_236:
          if ((v231 * v233) >> 64 == (v231 * v233) >> 63)
          {
            v231 *= v233;
          }

          else
          {
            v231 = ((v233 ^ v231) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v228;
        }

        while (v228 != v230);
      }

      else
      {
        v231 = 1;
      }

      v9 = v217 == v231;
      return v9 & 1;
    case 0xCu:
      v193 = *(a3 + 6);
      v194 = *(v193 + 40);
      if (v194 < 1)
      {
        v195 = 0;
      }

      else
      {
        v195 = 0;
        v196 = *(v193 + 24);
        v197 = *(v193 + 48);
        do
        {
          while (1)
          {
            v200 = *v196++;
            v199 = v200;
            if ((v200 & 0x80000000) == 0)
            {
              break;
            }

            v198 = *v197++;
            v195 += v198 * -*(*this + 8 * ~v199);
            if (!--v194)
            {
              goto LABEL_488;
            }
          }

          v201 = *v197++;
          v195 += v201 * *(*this + 8 * v199);
          --v194;
        }

        while (v194);
      }

LABEL_488:
      v471 = *(v193 + 64);
      if (v471 < 1)
      {
        goto LABEL_494;
      }

      v472 = 0;
      v473 = *(v193 + 72);
      while (*(v473 + 8 * v472) > v195 || *(v473 + 8 * (v472 + 1)) < v195)
      {
        v472 += 2;
        if (v472 >= v471)
        {
LABEL_494:
          if (dword_2810BF8D8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_4, dword_2810BF8D8))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&v549, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1211);
            v530 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v549, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v530, "Activity: ", 0xAuLL);
            *__x = v195;
            absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v530, __x);
            goto LABEL_348;
          }

          goto LABEL_495;
        }
      }

      goto LABEL_7;
    case 0xDu:
      v312 = *(a3 + 6);
      *&v549.__begin_ = xmmword_23CE306D0;
      v314 = *(v312 + 16);
      v313 = (v312 + 16);
      v315 = (v314 + 7);
      if (v314)
      {
        v316 = v315;
      }

      else
      {
        v316 = v313;
      }

      v317 = *(v313 + 2);
      if (!v317)
      {
        goto LABEL_525;
      }

      v318 = &v316[v317];
      while (1)
      {
        v319 = *v316;
        v320 = *(*v316 + 64);
        v321 = *(*v316 + 16);
        if (v321 >= 1)
        {
          v322 = *(v319 + 24);
          v323 = *(v319 + 48);
          do
          {
            while (1)
            {
              v326 = *v322++;
              v325 = v326;
              if ((v326 & 0x80000000) == 0)
              {
                break;
              }

              v324 = *v323++;
              v320 += v324 * -*(*this + 8 * ~v325);
              if (!--v321)
              {
                goto LABEL_314;
              }
            }

            v327 = *v323++;
            v320 += v327 * *(*this + 8 * v325);
            --v321;
          }

          while (v321);
        }

LABEL_314:
        *&v542 = v320;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v549, &v542, __x);
        if ((v547 & 1) == 0)
        {
          break;
        }

        **&__x[2] = v542;
        if (++v316 == v318)
        {
          v9 = 1;
          goto LABEL_525;
        }
      }

      v9 = 0;
      goto LABEL_525;
    case 0xEu:
      v328 = *(a3 + 6);
      v329 = *(v328 + 16);
      if (!v329)
      {
        goto LABEL_495;
      }

      v330 = *(v328 + 36);
      v331 = *this;
      if ((v330 & 0x80000000) != 0)
      {
        v332 = -*(*this + 8 * ~v330);
      }

      else
      {
        v332 = *(*this + 8 * v330);
      }

      v9 = 0;
      if ((v332 & 0x80000000) == 0 && v329 > v332)
      {
        v487 = *(*(v328 + 24) + 4 * (v332 & 0x7FFFFFFF));
        if ((v487 & 0x80000000) != 0)
        {
          v488 = -*(v331 + 8 * ~v487);
        }

        else
        {
          v488 = *(v331 + 8 * v487);
        }

        v491 = *(v328 + 40);
        if ((v491 & 0x80000000) != 0)
        {
          v492 = -*(v331 + 8 * ~v491);
        }

        else
        {
          v492 = *(v331 + 8 * v491);
        }

        v9 = v488 == v492;
      }

      return v9 & 1;
    case 0xFu:
      v16 = *(*(a3 + 6) + 16);
      *&v549.__begin_ = xmmword_23CE306D0;
      *__x = xmmword_23CE306D0;
      if (v16 < 1)
      {
        goto LABEL_525;
      }

      v17 = 0;
      while (1)
      {
        if (*(a3 + 15) == 15)
        {
          v18 = *(a3 + 6);
          v19 = *(v18[3] + v17);
        }

        else
        {
          v19 = *(off_2810BED38 + v17);
          v18 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
        }

        v551 = v19;
        v545 = *(v18[6] + v17);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v549, &v551, &v542);
        if (v543 == 1)
        {
          **(&v542 + 1) = v551;
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v549, &v545, &v542);
        if (v543 == 1)
        {
          **(&v542 + 1) = v545;
        }

        if (*(a3 + 15) == 15)
        {
          v20 = *(a3 + 6);
        }

        else
        {
          v20 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
        }

        v21 = *(v20[9] + v17);
        if ((v21 & 0x80000000) != 0)
        {
          if (!*(*this + 8 * ~v21))
          {
LABEL_34:
            if (*__x > 1uLL)
            {
              v23 = 0;
              _X10 = v547;
              __asm { PRFM            #4, [X10] }

              v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v551) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v551));
              v30 = vdup_n_s8(v29 & 0x7F);
              v31 = ((v29 >> 7) ^ (v547 >> 12)) & *__x;
              v32 = *(v547 + v31);
              v33 = vceq_s8(v32, v30);
              if (!v33)
              {
                goto LABEL_42;
              }

LABEL_40:
              while (*(v548 + 8 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & *__x)) != v551)
              {
                v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v33)
                {
LABEL_42:
                  while (!*&vceq_s8(v32, 0x8080808080808080))
                  {
                    v23 += 8;
                    v31 = (v23 + v31) & *__x;
                    v32 = *(v547 + v31);
                    v33 = vceq_s8(v32, v30);
                    if (v33)
                    {
                      goto LABEL_40;
                    }
                  }

                  goto LABEL_37;
                }
              }

LABEL_422:
              if (dword_2810BF920 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF918, dword_2810BF920))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(&v542, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1452);
                v529 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v542, 1);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v529, "Node with two outgoing arcs", 0x1BuLL);
LABEL_614:
                absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v542);
              }

LABEL_423:
              v9 = 0;
              goto LABEL_424;
            }

            if (*&__x[2] >= 2uLL && v547 == v551)
            {
              goto LABEL_422;
            }

LABEL_37:
            v22 = v545;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__x, &v551, &v542);
            if (v543 == 1)
            {
              **(&v542 + 1) = v551;
            }

            *(*(&v542 + 1) + 4) = v22;
          }
        }

        else if (*(*this + 8 * v21))
        {
          goto LABEL_34;
        }

        if (++v17 == v16)
        {
          if (v549.__end_ >= 2)
          {
            if (v549.__begin_ >= 2)
            {
              value = v549.__end_cap_.__value_;
              p_end_cap = v550;
              if (*v549.__end_cap_.__value_ <= -2)
              {
                do
                {
                  v493 = __clz(__rbit64((*value | ~(*value >> 7)) & 0x101010101010101)) >> 3;
                  value = (value + v493);
                  p_end_cap = (p_end_cap + 4 * v493);
                }

                while (*value < -1);
              }
            }

            else
            {
              p_end_cap = &v549.__end_cap_;
              value = &absl::lts_20240722::container_internal::kSooControl;
            }

            v494 = 0;
            v495 = 0;
            while (1)
            {
              value_low = LODWORD(p_end_cap->__value_);
              v545 = p_end_cap->__value_;
              if (*__x > 1uLL)
              {
                v502 = 0;
                _X11 = v547;
                __asm { PRFM            #4, [X11] }

                v505 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + value_low) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + value_low));
                v506 = vdup_n_s8(v505 & 0x7F);
                v507 = ((v547 >> 12) ^ (v505 >> 7)) & *__x;
                v508 = *(v547 + v507);
                v509 = vceq_s8(v508, v506);
                if (!v509)
                {
                  goto LABEL_568;
                }

LABEL_566:
                while (*(v548 + 8 * ((v507 + (__clz(__rbit64(v509)) >> 3)) & *__x)) != value_low)
                {
                  v509 &= ((v509 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v509)
                  {
LABEL_568:
                    while (!*&vceq_s8(v508, 0x8080808080808080))
                    {
                      v502 += 8;
                      v507 = (v502 + v507) & *__x;
                      v508 = *(v547 + v507);
                      v509 = vceq_s8(v508, v506);
                      if (v509)
                      {
                        goto LABEL_566;
                      }
                    }

                    goto LABEL_596;
                  }
                }
              }

              else if (*&__x[2] < 2uLL || v547 != value_low)
              {
LABEL_596:
                if (dword_2810BF938 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF930, dword_2810BF938))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v542, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1463);
                  v526 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v542, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v526, "Node with no next: ", 0x13uLL);
                  v551 = v545;
                  absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v526, &v551);
                  goto LABEL_614;
                }

                goto LABEL_423;
              }

              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__x, &v545, &v542);
              v498 = v545;
              if (v543 == 1)
              {
                **(&v542 + 1) = v545;
              }

              if (*(*(&v542 + 1) + 4) != v498)
              {
                v495 = v498;
                ++v494;
              }

              v500 = *(value + 1);
              value = (value + 1);
              LOBYTE(v499) = v500;
              p_end_cap = (p_end_cap + 4);
              if (v500 <= -2)
              {
                do
                {
                  v501 = __clz(__rbit64((*value | ~(*value >> 7)) & 0x101010101010101)) >> 3;
                  value = (value + v501);
                  p_end_cap = (p_end_cap + 4 * v501);
                  v499 = *value;
                }

                while (v499 < -1);
              }

              if (v499 == 255)
              {
                if (!v494)
                {
                  break;
                }

                v510 = 0;
                v542 = xmmword_23CE306D0;
                v511 = 1;
                v512 = v495;
                while (1)
                {
                  v545 = v512;
                  if (v511 > 1)
                  {
                    break;
                  }

                  if (*(&v542 + 1) >= 2uLL && v543 == v512)
                  {
                    goto LABEL_590;
                  }

LABEL_579:
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v542, &v545, &v551);
                  if (v553 == 1)
                  {
                    *v552 = v545;
                  }

                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__x, &v545, &v551);
                  if (v553 == 1)
                  {
                    *v552 = v545;
                  }

                  ++v510;
                  v512 = v552[1];
                  v511 = v542;
                }

                v514 = 0;
                _X11 = v543;
                __asm { PRFM            #4, [X11] }

                v517 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v512) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v512));
                v518 = vdup_n_s8(v517 & 0x7F);
                v519 = ((v543 >> 12) ^ (v517 >> 7)) & v511;
                v520 = *(v543 + v519);
                v521 = vceq_s8(v520, v518);
                if (!v521)
                {
                  goto LABEL_586;
                }

LABEL_584:
                while (*(v544 + 4 * ((v519 + (__clz(__rbit64(v521)) >> 3)) & v511)) != v512)
                {
                  v521 &= ((v521 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v521)
                  {
LABEL_586:
                    while (!*&vceq_s8(v520, 0x8080808080808080))
                    {
                      v514 += 8;
                      v519 = (v514 + v519) & v511;
                      v520 = *(v543 + v519);
                      v521 = vceq_s8(v520, v518);
                      if (v521)
                      {
                        goto LABEL_584;
                      }
                    }

                    goto LABEL_579;
                  }
                }

LABEL_590:
                if (v512 == v495)
                {
                  if (v510 == v494)
                  {
                    v9 = 1;
                    goto LABEL_609;
                  }

                  if (dword_2810BF968 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF960, dword_2810BF968))
                  {
                    v534 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v551, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1487);
                    v535 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v534, 1);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v535, "More than one cycle", 0x13uLL);
LABEL_624:
                    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v551);
                  }
                }

                else if (dword_2810BF950 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF948, dword_2810BF950))
                {
                  v527 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v551, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1483);
                  v528 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v527, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v528, "Rho shape", 9uLL);
                  goto LABEL_624;
                }

                v9 = 0;
LABEL_609:
                if (v542 >= 2)
                {
                  operator delete((v543 - (BYTE8(v542) & 1) - 8));
                }

                goto LABEL_424;
              }
            }
          }

          v9 = 1;
LABEL_424:
          if (*__x >= 2uLL)
          {
            operator delete((v547 - (__x[2] & 1) - 8));
          }

LABEL_525:
          if (v549.__begin_ >= 2)
          {
LABEL_526:
            begin = (v549.__end_cap_.__value_ - (v549.__end_ & 1) - 8);
            goto LABEL_527;
          }

          return v9 & 1;
        }
      }

    case 0x10u:
      v208 = *(a3 + 6);
      v209 = *(v208 + 16);
      if (!v209)
      {
        return v9 & 1;
      }

      v210 = *(v208 + 40);
      if (v210 < 1)
      {
        goto LABEL_222;
      }

      v211 = 0;
      v212 = *(v208 + 48);
      while (1)
      {
        v213 = 0;
        while (1)
        {
          v214 = *(*(v208 + 24) + 4 * v213);
          if ((v214 & 0x80000000) == 0)
          {
            break;
          }

          if (-*(*this + 8 * ~v214) != *(v212 + 8 * (v211 + v213)))
          {
            goto LABEL_221;
          }

LABEL_218:
          if (v209 == ++v213)
          {
            v9 = *(v208 + 60) ^ 1;
            return v9 & 1;
          }
        }

        if (*(*this + 8 * v214) == *(v212 + 8 * (v211 + v213)))
        {
          goto LABEL_218;
        }

LABEL_221:
        v211 += v209;
        if (v211 >= v210)
        {
LABEL_222:
          v9 = *(v208 + 60);
          return v9 & 1;
        }
      }

    case 0x11u:
      v549.__begin_ = 0;
      v549.__end_ = 0;
      v549.__end_cap_.__value_ = &unk_23CE31C20;
      v65 = *(a3 + 6);
      v66 = *(v65 + 10);
      v67 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
      if (v66 >= 1)
      {
        v68 = 0;
        while (1)
        {
          v75 = 0;
          if (*(a3 + 15) == 17)
          {
            v79 = *(a3 + 6);
          }

          else
          {
            v79 = v67;
          }

          v80 = v79[9][v68];
          v81 = v79[6][v68];
          v82 = v79[12][v68];
          _X8 = v549.__end_cap_.__value_;
          __asm { PRFM            #4, [X8] }

          v85 = v82 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v81) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v81)));
          v86 = ((v85 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v85);
          v76 = (v86 >> 7) ^ (v549.__end_cap_.__value_ >> 12);
          v87 = vdup_n_s8(v86 & 0x7F);
          while (1)
          {
            v69 = v76 & v549.__begin_;
            v70 = *(v549.__end_cap_.__value_ + v69);
            v71 = vceq_s8(v70, v87);
            if (v71)
            {
              break;
            }

LABEL_84:
            v74 = vceq_s8(v70, 0x8080808080808080);
            if (v74)
            {
              v77 = v67;
              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v549, v86, (v69 + (__clz(__rbit64(v74)) >> 3)) & v549.__begin_, v75, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::GetPolicyFunctions(void)::value);
              v72 = &v550[3 * inserted];
              v72->__value_ = v81;
              v72[1].__value_ = v82;
              v72[2].__value_ = 0;
              v67 = v77;
              goto LABEL_87;
            }

            v75 += 8;
            v76 = v75 + v69;
          }

          while (1)
          {
            v72 = &v550[3 * ((v69 + (__clz(__rbit64(v71)) >> 3)) & v549.__begin_)];
            if (v72->__value_ == v81 && v72[1].__value_ == v82)
            {
              break;
            }

            v71 &= ((v71 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v71)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          v72[2].__value_ = v80;
          if (++v68 == v66)
          {
            v427 = *(a3 + 15);
            v65 = *(a3 + 6);
            goto LABEL_441;
          }
        }
      }

      v427 = 17;
LABEL_441:
      if (v427 == 17)
      {
        v432 = v65;
      }

      else
      {
        v432 = v67;
      }

      v433 = *(v432 + 28);
      v434 = v432[17];
      if (v433 < 1)
      {
        goto LABEL_474;
      }

      v435 = 0;
      v436 = &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::GetPolicyFunctions(void)::value;
      while (1)
      {
        v437 = *(a3 + 15) == 17 ? *(a3 + 6) : v67;
        v438 = *(v437[15] + v435);
        v439 = (v438 & 0x80000000) != 0 ? -*(*this + 8 * ~v438) : *(*this + 8 * v438);
        v440 = 0;
        _X8 = v549.__end_cap_.__value_;
        __asm { PRFM            #4, [X8] }

        v443 = v439 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v434) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v434)));
        v444 = ((v443 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v443);
        v445 = (v444 >> 7) ^ (v549.__end_cap_.__value_ >> 12);
        v446 = vdup_n_s8(v444 & 0x7F);
        v447 = v445 & v549.__begin_;
        v448 = *(v549.__end_cap_.__value_ + (v445 & v549.__begin_));
        v449 = vceq_s8(v448, v446);
        if (!v449)
        {
          break;
        }

LABEL_453:
        while (1)
        {
          v450 = &v550[3 * ((v447 + (__clz(__rbit64(v449)) >> 3)) & v549.__begin_)];
          v452 = v450->__value_;
          v451 = v450[1].__value_;
          if (v452 == v434 && v451 == v439)
          {
            break;
          }

          v449 &= ((v449 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v449)
          {
            goto LABEL_458;
          }
        }

        v454 = 0;
        __asm { PRFM            #4, [X8] }

        v456 = v445 & v549.__begin_;
        v457 = *(v549.__end_cap_.__value_ + (v445 & v549.__begin_));
        v458 = vceq_s8(v457, v446);
        if (v458)
        {
LABEL_462:
          while (1)
          {
            v459 = &v550[3 * ((v456 + (__clz(__rbit64(v458)) >> 3)) & v549.__begin_)];
            if (v459->__value_ == v434 && v459[1].__value_ == v439)
            {
              break;
            }

            v458 &= ((v458 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v458)
            {
              goto LABEL_467;
            }
          }

          v434 = v459[2].__value_;
        }

        else
        {
LABEL_467:
          while (1)
          {
            v461 = v67;
            v462 = vceq_s8(v457, 0x8080808080808080);
            if (v462)
            {
              break;
            }

            v454 += 8;
            v456 = (v454 + v456) & v549.__begin_;
            v457 = *(v549.__end_cap_.__value_ + v456);
            v458 = vceq_s8(v457, v446);
            if (v458)
            {
              goto LABEL_462;
            }
          }

          v463 = v436;
          v464 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v549, v444, (v456 + (__clz(__rbit64(v462)) >> 3)) & v549.__begin_, v454, v436);
          v465 = &v550[3 * v464];
          v465->__value_ = v434;
          v465[1].__value_ = v439;
          v465[2].__value_ = 0;
          v434 = 0;
          v67 = v461;
          v436 = v463;
        }

        if (++v435 == v433)
        {
          v427 = *(a3 + 15);
          v65 = *(a3 + 6);
LABEL_474:
          if (v427 != 17)
          {
            v65 = v67;
          }

          v466 = *(v65 + 4);
          if (v466)
          {
            v467 = v65[3];
            v468 = 8 * v466 - 8;
            do
            {
              v469 = *v467++;
              v9 = v434 == v469;
              v470 = v434 == v469 || v468 == 0;
              v468 -= 8;
            }

            while (!v470);
LABEL_485:
            if (v549.__begin_)
            {
              goto LABEL_526;
            }

            return v9 & 1;
          }

LABEL_484:
          v9 = 0;
          goto LABEL_485;
        }
      }

LABEL_458:
      while (!*&vceq_s8(v448, 0x8080808080808080))
      {
        v440 += 8;
        v447 = (v440 + v447) & v549.__begin_;
        v448 = *(v549.__end_cap_.__value_ + v447);
        v449 = vceq_s8(v448, v446);
        if (v449)
        {
          goto LABEL_453;
        }
      }

      goto LABEL_484;
    case 0x12u:
      v382 = *(a3 + 6);
      v383 = *(v382 + 16);
      if (v383 != *(v382 + 40))
      {
        goto LABEL_495;
      }

      if (v383 < 1)
      {
        return v9 & 1;
      }

      v384 = 0;
      while (1)
      {
        v385 = *(*(v382 + 24) + 4 * v384);
        if ((v385 & 0x80000000) != 0)
        {
          v386 = *this;
          v387 = -*(*this + 8 * ~v385);
          if (v383 <= v387)
          {
            goto LABEL_495;
          }
        }

        else
        {
          v386 = *this;
          v387 = *(*this + 8 * v385);
          if (v383 <= v387)
          {
            goto LABEL_495;
          }
        }

        v388 = *(*(v382 + 48) + 4 * (v387 & 0x7FFFFFFF));
        if ((v388 & 0x80000000) != 0)
        {
          if (v384 != -*(v386 + 8 * ~v388))
          {
            goto LABEL_495;
          }
        }

        else if (v384 != *(v386 + 8 * v388))
        {
          goto LABEL_495;
        }

        if (v383 == ++v384)
        {
          return v9 & 1;
        }
      }

    case 0x13u:
      v333 = *(a3 + 6);
      if (*(v333 + 40))
      {
        v334 = *(v333 + 40);
      }

      else
      {
        v334 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v335 = v334[8];
      v336 = *(v334 + 4);
      if (v336 < 1)
      {
        goto LABEL_328;
      }

      v337 = v334[3];
      v338 = v334[6];
      do
      {
        while (1)
        {
          v341 = *v337;
          v337 = (v337 + 4);
          v340 = v341;
          if ((v341 & 0x80000000) == 0)
          {
            break;
          }

          v339 = *v338++;
          v335 += v339 * -*(*this + 8 * ~v340);
          if (!--v336)
          {
            goto LABEL_328;
          }
        }

        v342 = *v338++;
        v335 += v342 * *(*this + 8 * v340);
        --v336;
      }

      while (v336);
LABEL_328:
      if ((v335 & 0x8000000000000000) == 0)
      {
        if (*(v333 + 24))
        {
          v343 = *(v333 + 24);
        }

        else
        {
          v343 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v344 = v343[8];
        v345 = *(v343 + 4);
        if (v345 >= 1)
        {
          v346 = v343[3];
          v347 = v343[6];
          do
          {
            while (1)
            {
              v350 = *v346;
              v346 = (v346 + 4);
              v349 = v350;
              if ((v350 & 0x80000000) == 0)
              {
                break;
              }

              v348 = *v347++;
              v344 = (v344 + v348 * -*(*this + 8 * ~v349));
              if (!--v345)
              {
                goto LABEL_337;
              }
            }

            v351 = *v347++;
            v344 = (v344 + v351 * *(*this + 8 * v349));
            --v345;
          }

          while (v345);
        }

LABEL_337:
        v352 = (v344 + v335);
        if (*(v333 + 32))
        {
          v353 = *(v333 + 32);
        }

        else
        {
          v353 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v354 = v353[8];
        v355 = *(v353 + 4);
        if (v355 >= 1)
        {
          v356 = v353[3];
          v357 = v353[6];
          do
          {
            while (1)
            {
              v360 = *v356;
              v356 = (v356 + 4);
              v359 = v360;
              if ((v360 & 0x80000000) == 0)
              {
                break;
              }

              v358 = *v357++;
              v354 = (v354 + v358 * -*(*this + 8 * ~v359));
              if (!--v355)
              {
                goto LABEL_345;
              }
            }

            v361 = *v357++;
            v354 = (v354 + v361 * *(*this + 8 * v359));
            --v355;
          }

          while (v355);
        }

LABEL_345:
        if (v352 == v354)
        {
          goto LABEL_7;
        }
      }

      if (*(v333 + 16))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v549, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1628);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v549, "Warning, an interval constraint was likely used without a corresponding linear constraint linking its start, size and end.", 0x7AuLL);
LABEL_348:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v549);
        v9 = 0;
        return v9 & 1;
      }

      goto LABEL_495;
    case 0x14u:
      v34 = *(a3 + 6);
      v35 = *(v34 + 16);
      if (!v35)
      {
        goto LABEL_439;
      }

      v36 = *(v34 + 24);
      v37 = &v36[v35];
      v38 = (a2 + 48);
      while (1)
      {
        v39 = (*v38 + 8 * *v36 + 7);
        if ((*v38 & 1) == 0)
        {
          v39 = a2 + 48;
        }

        v40 = *v39;
        v41 = *(*v39 + 16);
        if (!v41)
        {
LABEL_57:
          v45 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v40 + 60) == 19)
          {
            v45 = *(v40 + 48);
          }

          if (v45[3])
          {
            v46 = v45[3];
          }

          else
          {
            v46 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v47 = v46[8];
          v48 = *(v46 + 4);
          if (v48 >= 1)
          {
            v49 = v46[3];
            v50 = v46[6];
            do
            {
              while (1)
              {
                v53 = *v49;
                v49 = (v49 + 4);
                v52 = v53;
                if ((v53 & 0x80000000) == 0)
                {
                  break;
                }

                v51 = *v50++;
                v47 = (v47 + v51 * -*(*this + 8 * ~v52));
                if (!--v48)
                {
                  goto LABEL_67;
                }
              }

              v54 = *v50++;
              v47 = (v47 + v54 * *(*this + 8 * v52));
              --v48;
            }

            while (v48);
          }

LABEL_67:
          v55 = v45[5];
          if (v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v57 = v56[8];
          v58 = *(v56 + 4);
          if (v58 >= 1)
          {
            v59 = v56[3];
            v60 = v56[6];
            do
            {
              while (1)
              {
                v63 = *v59;
                v59 = (v59 + 4);
                v62 = v63;
                if ((v63 & 0x80000000) == 0)
                {
                  break;
                }

                v61 = *v60++;
                v57 = (v57 + v61 * -*(*this + 8 * ~v62));
                if (!--v58)
                {
                  goto LABEL_75;
                }
              }

              v64 = *v60++;
              v57 = (v57 + v64 * *(*this + 8 * v62));
              --v58;
            }

            while (v58);
          }

LABEL_75:
          operator new();
        }

        v42 = *(v40 + 24);
        v43 = 4 * v41;
        while (1)
        {
          v44 = *v42;
          if ((v44 & 0x80000000) != 0)
          {
            if (*(*this + 8 * ~v44))
            {
              break;
            }

            goto LABEL_53;
          }

          if (!*(*this + 8 * v44))
          {
            break;
          }

LABEL_53:
          ++v42;
          v43 -= 4;
          if (!v43)
          {
            goto LABEL_57;
          }
        }

        if (++v36 == v37)
        {
LABEL_439:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,false>(0, 0, &v549, 0, 1);
          v9 = 1;
          return v9 & 1;
        }
      }

    case 0x15u:
      v362 = *(a3 + 6);
      v363 = *(v362 + 16);
      v364 = *(v362 + 40);
      if (v364 != v363)
      {
      }

      if (v363 < 1)
      {
        goto LABEL_523;
      }

      v365 = 0;
      v366 = (a2 + 48);
      v540 = *(v362 + 16);
      while (1)
      {
        v367 = *v366 + 7;
        v368 = (v367 + 8 * *(*(v362 + 24) + 4 * v365));
        if ((*v366 & 1) == 0)
        {
          v368 = (a2 + 48);
        }

        v369 = *v368;
        v370 = (v367 + 8 * *(*(v362 + 48) + 4 * v365));
        if ((*v366 & 1) == 0)
        {
          v370 = (a2 + 48);
        }

        v371 = *v370;
        v372 = *(v369 + 16);
        if (!v372)
        {
LABEL_364:
          v376 = *(v371 + 16);
          if (v376)
          {
            v377 = *(v371 + 24);
            for (j = 4 * v376; j; j -= 4)
            {
              v379 = *v377;
              if ((v379 & 0x80000000) != 0)
              {
                if (*(*this + 8 * ~v379))
                {
                  goto LABEL_352;
                }
              }

              else if (!*(*this + 8 * v379))
              {
                goto LABEL_352;
              }

              ++v377;
            }
          }

          if (*(v369 + 60) == 19)
          {
            v380 = *(v369 + 48);
            if (*(v371 + 60) != 19)
            {
              goto LABEL_376;
            }
          }

          else if (*(v371 + 60) != 19)
          {
LABEL_376:
            operator new();
          }

          v381 = *(v371 + 48);
          goto LABEL_376;
        }

        v373 = *(v369 + 24);
        v374 = 4 * v372;
        while (1)
        {
          v375 = *v373;
          if ((v375 & 0x80000000) != 0)
          {
            if (*(*this + 8 * ~v375))
            {
              break;
            }

            goto LABEL_360;
          }

          if (!*(*this + 8 * v375))
          {
            break;
          }

LABEL_360:
          ++v373;
          v374 -= 4;
          if (!v374)
          {
            goto LABEL_364;
          }
        }

LABEL_352:
        if (++v365 == v363)
        {
LABEL_523:
          v9 = 1;
          return v9 & 1;
        }
      }

    case 0x16u:
      v88 = *(a3 + 6);
      if (*(v88 + 72))
      {
        v89 = *(v88 + 72);
      }

      else
      {
        v89 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v90 = v89[8];
      v91 = *(v89 + 4);
      if (v91 < 1)
      {
        goto LABEL_100;
      }

      v92 = v89[3];
      v93 = v89[6];
      do
      {
        while (1)
        {
          v96 = *v92;
          v92 = (v92 + 4);
          v95 = v96;
          if ((v96 & 0x80000000) == 0)
          {
            break;
          }

          v94 = *v93++;
          v90 = (v90 + v94 * -*(*this + 8 * ~v95));
          if (!--v91)
          {
            goto LABEL_100;
          }
        }

        v97 = *v93++;
        v90 = (v90 + v97 * *(*this + 8 * v95));
        --v91;
      }

      while (v91);
LABEL_100:
      v98 = *(v88 + 24);
      if (v98 >= 1)
      {
        v99 = 0;
        v100 = (a2 + 48);
        v538 = *(v88 + 24);
        while (1)
        {
          if (*(a3 + 15) == 22)
          {
            v101 = *(a3 + 6);
          }

          else
          {
            v101 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          }

          v102 = (*v100 + 8 * *(v101[4] + v99) + 7);
          if ((*v100 & 1) == 0)
          {
            v102 = v100;
          }

          v103 = *v102;
          v104 = *(v103 + 16);
          if (v104)
          {
            break;
          }

LABEL_115:
          v108 = *(v103 + 60);
          v109 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (v108 == 19)
          {
            v109 = *(v103 + 48);
          }

          v110 = v109[3];
          if (v110)
          {
            v111 = v110;
          }

          else
          {
            v111 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v112 = v111[8];
          v113 = *(v111 + 4);
          if (v113 >= 1)
          {
            v114 = v111[3];
            v115 = v111[6];
            do
            {
              while (1)
              {
                v118 = *v114;
                v114 = (v114 + 4);
                v117 = v118;
                if ((v118 & 0x80000000) == 0)
                {
                  break;
                }

                v116 = *v115++;
                v112 = (v112 + v116 * -*(*this + 8 * ~v117));
                if (!--v113)
                {
                  goto LABEL_125;
                }
              }

              v119 = *v115++;
              v112 = (v112 + v119 * *(*this + 8 * v117));
              --v113;
            }

            while (v113);
          }

LABEL_125:
          v120 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (v108 == 19)
          {
            v120 = *(v103 + 48);
          }

          if (v120[5])
          {
            v121 = v120[5];
          }

          else
          {
            v121 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v122 = v121[8];
          v123 = *(v121 + 4);
          if (v123 >= 1)
          {
            v124 = v121[3];
            v125 = v121[6];
            do
            {
              while (1)
              {
                v128 = *v124;
                v124 = (v124 + 4);
                v127 = v128;
                if ((v128 & 0x80000000) == 0)
                {
                  break;
                }

                v126 = *v125++;
                v122 = (v122 + v126 * -*(*this + 8 * ~v127));
                if (!--v123)
                {
                  goto LABEL_135;
                }
              }

              v129 = *v125++;
              v122 = (v122 + v129 * *(*this + 8 * v127));
              --v123;
            }

            while (v123);
          }

LABEL_135:
          v131 = v101[6];
          v130 = v101 + 6;
          v132 = &v131[v99] + 7;
          if (v131)
          {
            v130 = v132;
          }

          v133 = *v130;
          v134 = (*v130)[8];
          v135 = *(*v130 + 4);
          if (v135 >= 1)
          {
            v136 = v133[3];
            v137 = v133[6];
            do
            {
              while (1)
              {
                v140 = *v136;
                v136 = (v136 + 4);
                v139 = v140;
                if ((v140 & 0x80000000) == 0)
                {
                  break;
                }

                v138 = *v137;
                v137 = (v137 + 8);
                v134 = (v134 + v138 * -*(*this + 8 * ~v139));
                if (!--v135)
                {
                  goto LABEL_142;
                }
              }

              v141 = *v137;
              v137 = (v137 + 8);
              v134 = (v134 + v141 * *(*this + 8 * v139));
              --v135;
            }

            while (v135);
          }

LABEL_142:
          if (v122 && v134)
          {
            operator new();
          }

LABEL_102:
          if (++v99 == v98)
          {
            v9 = 1;
            return v9 & 1;
          }
        }

        v105 = *(v103 + 24);
        v106 = 4 * v104;
        while (1)
        {
          v107 = *v105;
          if ((v107 & 0x80000000) != 0)
          {
            if (*(*this + 8 * ~v107))
            {
              goto LABEL_102;
            }
          }

          else if (!*(*this + 8 * v107))
          {
            goto LABEL_102;
          }

          ++v105;
          v106 -= 4;
          if (!v106)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_7;
    case 0x17u:
      v142 = *(*(a3 + 6) + 16);
      memset(&v549, 0, sizeof(v549));
      if (v142 < 1)
      {
        return v9 & 1;
      }

      v143 = 0;
      v144 = 0;
      v539 = 0;
      __src = 0;
      LODWORD(v145) = 0;
      v146 = 4 * v142;
      do
      {
        v147 = *(a3 + 15);
        v148 = *(a3 + 6);
        if (v147 == 23)
        {
          v149 = *(a3 + 6);
        }

        else
        {
          v149 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
        }

        v150 = *(v149[3] + v143);
        v151 = *(v149[6] + v143);
        if (v145 <= v150 + 1)
        {
          v152 = v150 + 1;
        }

        else
        {
          v152 = v145;
        }

        if (v152 <= v151 + 1)
        {
          v145 = (v151 + 1);
        }

        else
        {
          v145 = v152;
        }

        __x[0] = -1;
        v153 = v549.__end_ - v549.__begin_;
        if (v145 <= v153)
        {
          if (v145 < v153)
          {
            v549.__end_ = &v549.__begin_[v145];
          }
        }

        else
        {
          std::vector<int>::__append(&v549, v145 - v153, __x);
          v147 = *(a3 + 15);
          v148 = *(a3 + 6);
        }

        if (v147 == 23)
        {
          v154 = v148;
        }

        else
        {
          v154 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
        }

        v155 = *(v154[9] + v143);
        if ((v155 & 0x80000000) != 0)
        {
          if (*(*this + 8 * ~v155))
          {
            goto LABEL_148;
          }
        }

        else if (!*(*this + 8 * v155))
        {
          goto LABEL_148;
        }

        if (v150 == v151)
        {
          if (!v150)
          {
            goto LABEL_604;
          }

          ++__src;
        }

        else
        {
          ++v144;
          if (v150)
          {
            if (v549.__begin_[v150] != -1)
            {
              goto LABEL_604;
            }

            v549.__begin_[v150] = v151;
          }

          else
          {
            v537 = v144;
            v156 = v539;
            v157 = v539 >> 2;
            if (((v539 >> 2) + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v539 >> 2 != -1)
            {
              if (!(((v539 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v157) = v151;
            v539 = 4 * v157 + 4;
            memcpy(0, 0, v156);
            v144 = v537;
          }
        }

LABEL_148:
        v143 += 4;
      }

      while (v146 != v143);
      if (!v145)
      {
LABEL_547:
        v9 = 1;
        goto LABEL_605;
      }

      if (v539)
      {
        v429 = 0;
        for (k = 0; k != v539; ++k)
        {
          v431 = *k;
          ++v429;
          while (v431)
          {
            v431 = v549.__begin_[v431];
            ++v429;
            if (v431 == -1)
            {
              goto LABEL_604;
            }
          }
        }
      }

      else
      {
        v429 = 0;
      }

      if (v429 == v144)
      {
        if (__src - (v539 >> 2) + v144 + 1 == v145)
        {
          goto LABEL_547;
        }

        if (dword_2810BF998 < 1)
        {
LABEL_604:
          v9 = 0;
          goto LABEL_605;
        }

        if (!absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF990, dword_2810BF998))
        {
LABEL_621:
          v9 = 0;
          goto LABEL_605;
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1545);
        v536 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__x, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v536, "Not all nodes are covered!", 0x1AuLL);
      }

      else
      {
        if (dword_2810BF980 < 1)
        {
          goto LABEL_604;
        }

        if (!absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF978, dword_2810BF980))
        {
          goto LABEL_621;
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1536);
        v524 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__x, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v524, "count: ", 7uLL);
        LODWORD(v542) = v429;
        v525 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v524, &v542);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v525, " != num_used_arcs:", 0x12uLL);
        LODWORD(v542) = v144;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v525, &v542);
      }

      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
      v9 = 0;
LABEL_605:
      begin = v549.__begin_;
      if (v549.__begin_)
      {
        v549.__end_ = v549.__begin_;
LABEL_527:
        operator delete(begin);
      }

      return v9 & 1;
    case 0x18u:
      v389 = *(a3 + 6);
      v390 = *(v389 + 24);
      v391 = *(v389 + 88);
      v392 = *(v389 + 96);
      end = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
      v549.__begin_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
      v549.__end_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
      v549.__end_cap_.__value_ = 0;
      if (v390 < 1)
      {
        v428 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
LABEL_501:
        v474 = *v428;
        v475 = *(end + 10);
        if (v474 == end && v475 == 0)
        {
LABEL_522:
          v9 = 1;
        }

        else
        {
          v477 = 0;
          v478 = 0;
          while (1)
          {
            v479 = &v474[16 * v478];
            v477 += *(v479 + 3);
            if (v477 < v391 || v477 > v392)
            {
              break;
            }

            if (v474[11])
            {
              if (++v478 == v474[10])
              {
                v481 = v474;
                do
                {
                  v482 = *v481;
                  if (*(*v481 + 11))
                  {
                    goto LABEL_520;
                  }

                  v483 = v481[8];
                  v481 = *v481;
                }

                while (v483 == v482[10]);
                v474 = v482;
                v478 = v483;
              }
            }

            else
            {
              v484 = &v474[8 * (v478 + 1) + 256];
              do
              {
                v474 = *v484;
                v485 = *(*v484 + 11);
                v484 = *v484 + 256;
              }

              while (!v485);
              v478 = 0;
            }

LABEL_520:
            if (v474 == end && v478 == v475)
            {
              goto LABEL_522;
            }
          }

          if (dword_2810BF9B0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9A8, dword_2810BF9B0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1583);
            v531 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__x, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v531, "Reservoir level ", 0x10uLL);
            *&v542 = v477;
            v532 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v531, &v542);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v532, " is out of bounds at time", 0x19uLL);
            *&v542 = *(v479 + 2);
            absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v532, &v542);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
          }

          v9 = 0;
        }

        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::clear(&v549);
        return v9 & 1;
      }

      v394 = 0;
      v395 = *(v389 + 40);
      break;
    case 0x1Au:
      v306 = *(a3 + 6);
      v307 = *(v306 + 16);
      if (!v307)
      {
        return v9 & 1;
      }

      v308 = 0;
      v309 = *(v306 + 24);
      v310 = 4 * v307;
      while (1)
      {
        v311 = *v309;
        if ((v311 & 0x80000000) != 0)
        {
          v308 += *(*this + 8 * ~v311) == 0;
          ++v309;
          v310 -= 4;
          if (!v310)
          {
            goto LABEL_303;
          }
        }

        else
        {
          v308 += *(*this + 8 * v311) != 0;
          ++v309;
          v310 -= 4;
          if (!v310)
          {
LABEL_303:
            v9 = v308 < 2;
            return v9 & 1;
          }
        }
      }

    case 0x1Bu:
      v279 = *(a3 + 6);
      if (*(v279 + 48))
      {
        v280 = *(v279 + 48);
      }

      else
      {
        v280 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v281 = v280[8];
      v282 = *(v280 + 4);
      if (v282 < 1)
      {
        goto LABEL_285;
      }

      v283 = v280[3];
      v284 = v280[6];
      while (1)
      {
        v287 = *v283;
        v283 = (v283 + 4);
        v286 = v287;
        if ((v287 & 0x80000000) != 0)
        {
          v285 = *v284++;
          v281 = (v281 + v285 * -*(*this + 8 * ~v286));
          if (!--v282)
          {
            goto LABEL_285;
          }
        }

        else
        {
          v288 = *v284++;
          v281 = (v281 + v288 * *(*this + 8 * v286));
          if (!--v282)
          {
LABEL_285:
            v289 = *(v279 + 32);
            if (v289 < 1)
            {
              v295 = 0x8000000000000000;
            }

            else
            {
              v290 = 0;
              v293 = *(v279 + 24);
              v291 = (v279 + 24);
              v292 = v293;
              v294 = v293 + 7;
              v295 = 0x8000000000000000;
              do
              {
                v296 = (v294 + 8 * v290);
                if ((v292 & 1) == 0)
                {
                  v296 = v291;
                }

                v297 = *v296;
                v298 = *(*v296 + 64);
                v299 = *(v297 + 16);
                if (v299 >= 1)
                {
                  v300 = *(v297 + 24);
                  v301 = *(v297 + 48);
                  do
                  {
                    while (1)
                    {
                      v304 = *v300++;
                      v303 = v304;
                      if ((v304 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v302 = *v301++;
                      v298 += v302 * -*(*this + 8 * ~v303);
                      if (!--v299)
                      {
                        goto LABEL_287;
                      }
                    }

                    v305 = *v301++;
                    v298 += v305 * *(*this + 8 * v303);
                    --v299;
                  }

                  while (v299);
                }

LABEL_287:
                if (v295 <= v298)
                {
                  v295 = v298;
                }

                ++v290;
              }

              while (v290 != v289);
            }

            v9 = v281 == v295;
            return v9 & 1;
          }
        }
      }

    case 0x1Du:
      v422 = *(a3 + 6);
      v423 = *(v422 + 16);
      if (!v423)
      {
        goto LABEL_495;
      }

      v204 = 0;
      v424 = *(v422 + 24);
      v425 = 4 * v423;
      while (1)
      {
        v426 = *v424;
        if ((v426 & 0x80000000) != 0)
        {
          v204 += *(*this + 8 * ~v426) == 0;
          ++v424;
          v425 -= 4;
          if (!v425)
          {
            goto LABEL_421;
          }
        }

        else
        {
          v204 += *(*this + 8 * v426) != 0;
          ++v424;
          v425 -= 4;
          if (!v425)
          {
LABEL_421:
            v9 = v204 == 1;
            return v9 & 1;
          }
        }
      }

    default:
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v549, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1659);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v549, "Unuspported constraint: ", 0x18uLL);
      v522 = operations_research::sat::ConstraintCaseName(v10);
      absl::lts_20240722::log_internal::LogMessage::operator<<(&v549, v522, v523);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v549);
  }

  while (1)
  {
    if (*(a3 + 15) == 24)
    {
      v397 = *(a3 + 6);
    }

    else
    {
      v397 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
    }

    v398 = (v397 + 2);
    v399 = v397[2];
    if (v399)
    {
      v398 = &v399[v394] + 7;
    }

    v400 = *v398;
    v401 = *(*v398 + 64);
    v402 = *(v400 + 16);
    if (v402 >= 1)
    {
      v403 = *(v400 + 24);
      v404 = *(v400 + 48);
      do
      {
        while (1)
        {
          v407 = *v403++;
          v406 = v407;
          if ((v407 & 0x80000000) == 0)
          {
            break;
          }

          v405 = *v404++;
          v401 += v405 * -*(*this + 8 * ~v406);
          if (!--v402)
          {
            goto LABEL_403;
          }
        }

        v408 = *v404++;
        v401 += v408 * *(*this + 8 * v406);
        --v402;
      }

      while (v402);
    }

LABEL_403:
    *__x = v401;
    if (v395 >= 1)
    {
      v409 = *(v397[6] + v394);
      if ((v409 & 0x80000000) != 0)
      {
        if (-*(*this + 8 * ~v409) != 1)
        {
          goto LABEL_392;
        }
      }

      else if (*(*this + 8 * v409) != 1)
      {
        goto LABEL_392;
      }
    }

    v411 = v397[8];
    v410 = v397 + 8;
    v412 = &v411[v394] + 7;
    if (v411)
    {
      v410 = v412;
    }

    v413 = *v410;
    v414 = (*v410)[8];
    v415 = *(*v410 + 4);
    if (v415 >= 1)
    {
      v416 = v413[3];
      v417 = v413[6];
      do
      {
        while (1)
        {
          v420 = *v416;
          v416 = (v416 + 4);
          v419 = v420;
          if ((v420 & 0x80000000) == 0)
          {
            break;
          }

          v418 = *v417;
          v417 = (v417 + 8);
          v414 = (v414 + v418 * -*(*this + 8 * ~v419));
          if (!--v415)
          {
            goto LABEL_391;
          }
        }

        v421 = *v417;
        v417 = (v417 + 8);
        v414 = (v414 + v421 * *(*this + 8 * v419));
        --v415;
      }

      while (v415);
    }

LABEL_391:
    v396 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(&v549, __x);
    *v396 += v414;
LABEL_392:
    if (++v394 == v390)
    {
      v428 = v549.__begin_;
      end = v549.__end_;
      goto LABEL_501;
    }
  }
}

void sub_23CA11EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27)
{
  if (a15 >= 2)
  {
    operator delete((a17 - (a16 & 1) - 8));
    if (a21 < 2)
    {
LABEL_3:
      if (a25 < 2)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete((a27 - (a26 & 1) - 8));
      _Unwind_Resume(exception_object);
    }
  }

  else if (a21 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a23 - (a22 & 1) - 8));
  if (a25 < 2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL operations_research::sat::SolutionIsFeasible(operations_research::sat::CpModelProto *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  if (a3 != v6)
  {
    if (dword_2810BF9C8 >= 1)
    {
      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9C0, dword_2810BF9C8);
      if (!result)
      {
        return result;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v100, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1682);
      v19 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v100, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "Wrong number of variables (", 0x1BuLL);
      v98 = a3;
      v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v19, &v98);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, ") in the solution vector. It should be ", 0x27uLL);
      LODWORD(v98) = *(a1 + 8);
      v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v20, &v98);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, ".", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v100);
    }

    return 0;
  }

  if (v6 < 1)
  {
    goto LABEL_22;
  }

  v11 = (a1 + 24);
  v10 = *(a1 + 3);
  if (v10)
  {
    v22 = 0;
    v23 = v10 + 7;
    while (1)
    {
      v13 = v22;
      v24 = *(v23 + 8 * v22);
      v25 = *(v24 + 16);
      if (v25 < 1)
      {
        break;
      }

      v26 = 0;
      v27 = *(a2 + 8 * v22);
      v28 = *(v24 + 24);
      while (*(v28 + 8 * v26) > v27 || *(v28 + 8 * (v26 + 1)) < v27)
      {
        v26 += 2;
        if (v26 >= v25)
        {
          goto LABEL_46;
        }
      }

      if (++v22 == v6)
      {
        goto LABEL_22;
      }
    }

LABEL_46:
    v47 = dword_2810BF9E0;
    if (dword_2810BF9E0 >= 1)
    {
      goto LABEL_55;
    }

    return 0;
  }

  v12 = *(v10 + 16);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(v10 + 24);
    while (2)
    {
      v15 = 0;
      v16 = *(a2 + 8 * v13);
      while (*(v14 + 8 * v15) > v16 || *(v14 + 8 * (v15 + 1)) < v16)
      {
        v15 += 2;
        if (v15 >= v12)
        {
          v22 = v13;
          goto LABEL_46;
        }
      }

      if (++v13 != v6)
      {
        continue;
      }

      break;
    }

LABEL_22:
    v100 = 0;
    v101 = 0;
    v102 = 0;
    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      if (((8 * a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(a1 + 14) >= 1)
    {
      v29 = 0;
      v30 = (a1 + 48);
      if (a4)
      {
        v31 = a5 == 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = !v31;
      v33 = (a4 + 24);
      v34 = (a1 + 24);
      v35 = 8;
      while (1)
      {
        v36 = *(a1 + 6);
        v37 = (v36 & 1) != 0 ? (v36 + v35 - 1) : (a1 + 48);
        {
          break;
        }

        ++v29;
        v35 += 8;
        if (v29 >= *(a1 + 14))
        {
          goto LABEL_38;
        }
      }

      if (dword_2810BF9F8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9F0, dword_2810BF9F8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v96, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1706);
        v84 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v96, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v84, "Failing constraint #", 0x14uLL);
        LODWORD(v98) = v29;
        v85 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v84, &v98);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, " : ", 3uLL);
        if (*v30)
        {
          v86 = (*v30 + v35 - 1);
        }

        else
        {
          v86 = v30;
        }

        v87 = *v86;
        google::protobuf::Message::ShortDebugString(&v98);
      }

      if (v32)
      {
        v48 = *(a4 + 32);
        if (v48)
        {
          if ((v48 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v69 = *a5;
        v70 = a5[1];
        v71 = v70 - *a5;
        if (v70 != *a5)
        {
          v72 = 0;
          v73 = 0;
          v74 = v71 >> 2;
          do
          {
            *(4 * *(v69 + 4 * v72)) = v73++;
            v72 = v73;
          }

          while (v74 > v73);
        }

        if (*v30)
        {
          v75 = (*v30 + v35 - 1);
        }

        else
        {
          v75 = v30;
        }

        operations_research::sat::UsedVariables(*v75, &v98);
        v76 = v98;
        v77 = v99;
        if (v98 != v99)
        {
          do
          {
            v78 = *v76;
            if (dword_2810BFA10 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA08, dword_2810BFA10))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v97, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1714);
              v90 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v97, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v90, "var: ", 5uLL);
              LODWORD(v96[0]) = v78;
              v91 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v90, v96);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v91, " mapped_to: ", 0xCuLL);
              LODWORD(v96[0]) = *(4 * v78);
              v92 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v91, v96);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v92, " value: ", 8uLL);
              v96[0] = *(a2 + 8 * v78);
              v93 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v92, v96);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v93, " initial_domain: ", 0x11uLL);
              if (*v34)
              {
                v80 = *v34 + 8 * v78 + 7;
              }

              else
              {
                v80 = v34;
              }

              operations_research::Domain::FromFlatSpanOfIntervals(*(*v80 + 24), *(*v80 + 16), v96, v79);
              v94 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v93, v96);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v94, " postsolved_domain: ", 0x14uLL);
              if (*v33)
              {
                v82 = *v33 + 8 * v78 + 7;
              }

              else
              {
                v82 = v33;
              }

              operations_research::Domain::FromFlatSpanOfIntervals(*(*v82 + 24), *(*v82 + 16), v95, v81);
              absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v94, v95);
              if (v95[0])
              {
                operator delete(v95[1]);
              }

              if (v96[0])
              {
                operator delete(v96[1]);
              }

              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v97);
            }

            ++v76;
          }

          while (v76 != v77);
          v76 = v98;
        }

        if (v76)
        {
          v99 = v76;
          operator delete(v76);
        }
      }

      else
      {
        if (*v30)
        {
          v54 = (*v30 + v35 - 1);
        }

        else
        {
          v54 = v30;
        }

        operations_research::sat::UsedVariables(*v54, &v98);
        v55 = v98;
        v56 = v99;
        if (v98 != v99)
        {
          do
          {
            v57 = *v55;
            if (dword_2810BFA28 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA20, dword_2810BFA28))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v96, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1722);
              v58 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v96, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, "var: ", 5uLL);
              LODWORD(v95[0]) = v57;
              v59 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v58, v95);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v59, " value: ", 8uLL);
              v95[0] = *(a2 + 8 * v57);
              absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v59, v95);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v96);
            }

            ++v55;
          }

          while (v55 != v56);
          v55 = v98;
        }

        if (v55)
        {
          v99 = v55;
          operator delete(v55);
        }
      }

      goto LABEL_113;
    }

LABEL_38:
    if (*(a1 + 16))
    {
      v38 = *(a1 + 16);
      v39 = *(v38 + 40);
      if (v39 < 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = 0;
        v41 = *(v38 + 24);
        v42 = *(v38 + 48);
        do
        {
          while (1)
          {
            v45 = *v41++;
            v44 = v45;
            if ((v45 & 0x80000000) == 0)
            {
              break;
            }

            v43 = *v42++;
            v40 += v43 * -*(v100 + ~v44);
            if (!--v39)
            {
              goto LABEL_70;
            }
          }

          v46 = *v42++;
          v40 += v46 * *(v100 + v44);
          --v39;
        }

        while (v39);
      }

LABEL_70:
      v60 = *(v38 + 64);
      if (v60)
      {
        if (v60 < 1)
        {
LABEL_82:
          if (dword_2810BFA40 >= 1)
          {
            result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA38, dword_2810BFA40);
            if (!result)
            {
              goto LABEL_114;
            }

            absl::lts_20240722::log_internal::LogMessage::LogMessage(v96, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1742);
            v65 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v96, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v65, "Objective value ", 0x10uLL);
            v98 = v40;
            v66 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v65, &v98);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, " not in domain! ", 0x10uLL);
            v68 = *(a1 + 16);
            if (!v68)
            {
              v68 = &operations_research::sat::_CpObjectiveProto_default_instance_;
            }

            operations_research::Domain::FromFlatSpanOfIntervals(v68[9], *(v68 + 16), &v98, v67);
            absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v66, &v98);
            operations_research::sat::SolutionIsFeasible(&v98, v96);
          }

LABEL_113:
          result = 0;
LABEL_114:
          if (v100)
          {
            v101 = v100;
            v83 = result;
            operator delete(v100);
            return v83;
          }

          return result;
        }

        v61 = 0;
        v62 = *(v38 + 72);
        while (*(v62 + 8 * v61) > v40 || *(v62 + 8 * (v61 + 1)) < v40)
        {
          v61 += 2;
          if (v61 >= v60)
          {
            goto LABEL_82;
          }
        }
      }

      v63 = *(v38 + 88);
      if (*(v38 + 96) == 0.0)
      {
        v64 = 1.0;
      }

      else
      {
        v64 = *(v38 + 96);
      }

      if (dword_2810BFA58 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFA50, dword_2810BFA58))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v98, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1752);
        v88 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v98, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, "Checker inner objective = ", 0x1AuLL);
        v96[0] = v40;
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v88, v96);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v98);
      }

      if (dword_2810BFA70 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810BFA68, dword_2810BFA70))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v98, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1753);
        v89 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v98, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v89, "Checker scaled objective = ", 0x1BuLL);
        *v96 = v64 * (v63 + v40);
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v89, v96);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v98);
      }
    }

    result = 1;
    goto LABEL_114;
  }

  v13 = 0;
  v22 = 0;
  v47 = dword_2810BF9E0;
  if (dword_2810BF9E0 < 1)
  {
    return 0;
  }

LABEL_55:
  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BF9D8, v47);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v98, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_checker.cc", 1691);
    v49 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v98, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, "Variable #", 0xAuLL);
    LODWORD(v100) = v22;
    v50 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v49, &v100);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, " has value ", 0xBuLL);
    v100 = *(a2 + 8 * v13);
    v51 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v50, &v100);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v51, " which do not fall in its domain: ", 0x22uLL);
    if (*v11)
    {
      v52 = (*v11 + 8 * v13 + 7);
    }

    else
    {
      v52 = v11;
    }

    v53 = *v52;
    google::protobuf::Message::ShortDebugString(&v100);
  }

  return result;
}

void sub_23CA12B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, uint64_t a18, void *a19, void *__p, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a19)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a14);
  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(uint64_t a1, unint64_t *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  operations_research::operator<<(v4, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CA12D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CA12D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

unint64_t operations_research::sat::anonymous namespace::MinOfExpression<operations_research::sat::LinearExpressionProto>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  v4 = *(a2 + 16);
  if (v4 >= 1)
  {
    v5 = *(a2 + 24);
    v6 = *(a2 + 48);
    v9 = *(a1 + 24);
    v7 = (a1 + 24);
    v8 = v9;
    v10 = v9 + 7;
    do
    {
      v17 = *v5++;
      v16 = v17;
      v19 = *v6++;
      v18 = v19;
      if (~v16 <= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = ~v16;
      }

      v21 = (v10 + 8 * v20);
      if ((v8 & 1) == 0)
      {
        v21 = v7;
      }

      v22 = *v21;
      if (v18 < 0)
      {
        if (v16 < 0)
        {
          v11 = -**(v22 + 24);
        }

        else
        {
          v11 = *(*(v22 + 24) + 8 * (*(v22 + 16) - 1));
        }

        v12 = (v11 >> 63) ^ 0x8000000000000000;
      }

      else
      {
        if (v16 < 0)
        {
          v11 = -*(*(v22 + 24) + 8 * (*(v22 + 16) - 1));
        }

        else
        {
          v11 = **(v22 + 24);
        }

        v12 = (v11 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v11 * v18) >> 64 == (v11 * v18) >> 63)
      {
        v13 = v11 * v18;
      }

      else
      {
        v13 = v12;
      }

      v14 = __OFADD__(result, v13);
      v15 = result + v13;
      if (v14)
      {
        result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = v15;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t operations_research::sat::anonymous namespace::ExpressionFixedValue(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  result = *(a2 + 8);
  v5 = *(a2 + 4);
  if (v5 >= 1)
  {
    v6 = *(a2 + 3);
    v7 = *(a2 + 6);
    v8 = *(this + 3);
    if (v8)
    {
      v18 = v8 + 7;
      do
      {
        v24 = *v6++;
        v23 = v24;
        v26 = *v7++;
        v25 = v26;
        if (~v23 <= v23)
        {
          v27 = v23;
        }

        else
        {
          v27 = ~v23;
        }

        v28 = *(v18 + 8 * v27);
        if (v25 < 0)
        {
          if (v23 < 0)
          {
            v19 = -**(v28 + 24);
          }

          else
          {
            v19 = *(*(v28 + 24) + 8 * (*(v28 + 16) - 1));
          }

          v20 = (v19 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v23 < 0)
          {
            v19 = -*(*(v28 + 24) + 8 * (*(v28 + 16) - 1));
          }

          else
          {
            v19 = **(v28 + 24);
          }

          v20 = (v19 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v19 * v25) >> 64 == (v19 * v25) >> 63)
        {
          v21 = v19 * v25;
        }

        else
        {
          v21 = v20;
        }

        v12 = __OFADD__(result, v21);
        v22 = result + v21;
        if (v12)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v22;
        }

        --v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v15 = *v6++;
        v14 = v15;
        v17 = *v7++;
        v16 = v17;
        if (v17 < 0)
        {
          if (v14 < 0)
          {
            v9 = -**(v8 + 24);
          }

          else
          {
            v9 = *(*(v8 + 24) + 8 * (*(v8 + 16) - 1));
          }

          v10 = (v9 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v14 < 0)
          {
            v9 = -*(*(v8 + 24) + 8 * (*(v8 + 16) - 1));
          }

          else
          {
            v9 = **(v8 + 24);
          }

          v10 = (v9 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v9 * v16) >> 64 == (v9 * v16) >> 63)
        {
          v11 = v9 * v16;
        }

        else
        {
          v11 = v10;
        }

        v12 = __OFADD__(result, v11);
        v13 = result + v11;
        if (v12)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v13;
        }

        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void operations_research::sat::anonymous namespace::DomainOfRef(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, int a3, __n128 a4)
{
  if (~a3 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = ~a3;
  }

  v8 = *(a2 + 3);
  v7 = a2 + 24;
  v9 = v8 + 8 * v6 + 7;
  if ((v8 & 1) == 0)
  {
    v9 = v7;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(*v9 + 24), *(*v9 + 16), &v10, a4);
  if (a3 < 0)
  {
    operations_research::Domain::Negation(&v10, this);
  }

  else
  {
    *this = 0;
    if (v10 >= 2)
    {
      if (v10)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(this, &v10);
      }

      else
      {
        *this = v10;
        *(this + 8) = *__p;
      }
    }
  }

  if (v10)
  {
    operator delete(__p[0]);
  }
}

void sub_23CA13094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (*v11)
  {
    operator delete(*(v11 + 8));
    if ((a10 & 1) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a10 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<long long &&>>@<Q0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, __n128 **a3@<X3>, unint64_t **a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = a2[1];
  v14 = v13 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)));
  v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
  v16 = **a1;
  result.n128_u64[0] = vdup_n_s8(v15 & 0x7F);
  v18 = ((v15 >> 7) ^ (_X10 >> 12)) & v16;
  v19 = *(_X10 + v18);
  v20 = vceq_s8(v19, result.n128_u64[0]);
  if (v20)
  {
LABEL_2:
    while (1)
    {
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v16;
      v22 = (v6[3] + 24 * v21);
      if (*v22 == v12 && v22[1] == v13)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    *a5 = _X10 + v21;
    *(a5 + 8) = v22;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v5 += 8;
      v18 = (v5 + v18) & v16;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, result.n128_u64[0]);
      if (v20)
      {
        goto LABEL_2;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::GetPolicyFunctions(void)::value);
    v29 = (v6[3] + 24 * inserted);
    *a5 = v6[2] + inserted;
    *(a5 + 8) = v29;
    *(a5 + 16) = 1;
    v30 = *a4;
    result = **a3;
    *v29 = result;
    v29[1].n128_u64[0] = *v30;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,long long>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,long long>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t operations_research::sat::anonymous namespace::AppendToOverflowValidator(uint64_t this, const operations_research::sat::LinearExpressionProto *a2, operations_research::sat::LinearExpressionProto *a3)
{
  v3 = *(a2 + 4);
  v4 = (a2 + 16);
  v5 = *(this + 24);
  v6 = *(this + 16);
  v7 = v3 + v6;
  if (v3 + v6 > *(a2 + 5))
  {
    v42 = this;
    v43 = a2;
    google::protobuf::RepeatedField<int>::Grow(a2 + 16, *(a2 + 4), (v3 + v6));
    this = v42;
    a2 = v43;
    v3 = *v4;
    v8 = *(v43 + 3);
    *(v43 + 4) = v7;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(a2 + 3);
    *(a2 + 4) = v7;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v9 = (v8 + 4 * v3);
  v10 = (v6 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v10 < 7)
  {
    v11 = v5;
    do
    {
LABEL_9:
      v19 = *v11++;
      *v9++ = v19;
    }

    while (v11 != (v5 + 4 * v6));
    goto LABEL_10;
  }

  v12 = 4 * v3 + v8;
  v11 = v5;
  if ((v12 - v5) < 0x20)
  {
    goto LABEL_9;
  }

  v13 = v10 + 1;
  v14 = (v10 + 1) & 0x7FFFFFFFFFFFFFF8;
  v9 += v14;
  v11 = (v5 + 4 * v14);
  v15 = (v5 + 16);
  v16 = (v12 + 16);
  v17 = v14;
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
  if (v13 != v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  v20 = *(a2 + 10);
  v21 = (a2 + 40);
  v22 = *(this + 48);
  v23 = *(this + 40);
  v24 = v20 + v23;
  if (v20 + v23 > *(a2 + 11))
  {
    v44 = this;
    v45 = a2;
    google::protobuf::RepeatedField<long long>::Grow(a2 + 40, *(a2 + 10));
    this = v44;
    a2 = v45;
    v20 = *v21;
    v25 = *(v45 + 6);
    *(v45 + 10) = v24;
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v25 = *(a2 + 6);
    *(a2 + 10) = v24;
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  v26 = (v25 + 8 * v20);
  v27 = (v23 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v27 < 7)
  {
    v28 = v22;
    do
    {
LABEL_18:
      v36 = *v28++;
      *v26++ = v36;
    }

    while (v28 != (v22 + 8 * v23));
    goto LABEL_19;
  }

  v29 = 8 * v20 + v25;
  v28 = v22;
  if ((v29 - v22) < 0x20)
  {
    goto LABEL_18;
  }

  v30 = v27 + 1;
  v31 = (v27 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v26 += v31;
  v28 = (v22 + 8 * v31);
  v32 = (v22 + 16);
  v33 = (v29 + 16);
  v34 = v31;
  do
  {
    v35 = *v32;
    *(v33 - 1) = *(v32 - 1);
    *v33 = v35;
    v32 += 2;
    v33 += 2;
    v34 -= 4;
  }

  while (v34);
  if (v30 != v31)
  {
    goto LABEL_18;
  }

LABEL_19:
  v37 = *(a2 + 8);
  if (v37 < 0)
  {
    v37 = -v37;
  }

  v38 = *(this + 64);
  if (v38 < 0)
  {
    v38 = -v38;
  }

  v39 = (v37 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v40 = __OFADD__(v37, v38);
  v41 = v37 + v38;
  if (v40)
  {
    v41 = v39;
  }

  *(a2 + 8) = v41;
  return this;
}

unint64_t operations_research::sat::anonymous namespace::IntervalSizeMax(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2)
{
  v3 = (this + 48);
  v4 = *(this + 6);
  if (v4)
  {
    v3 = (v4 + 8 * a2 + 7);
  }

  v5 = *v3;
  if (*(v5 + 60) == 19)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  v7 = v6[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  result = v8[8];
  v10 = *(v8 + 4);
  if (v10 >= 1)
  {
    v11 = v8[3];
    v12 = v8[6];
    v13 = *(this + 3);
    if (v13)
    {
      v23 = v13 + 7;
      do
      {
        v29 = *v11++;
        v28 = v29;
        v31 = *v12++;
        v30 = v31;
        if (~v28 <= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = ~v28;
        }

        v33 = *(v23 + 8 * v32);
        if (v30 < 0)
        {
          if (v28 < 0)
          {
            v24 = -*(*(v33 + 24) + 8 * (*(v33 + 16) - 1));
          }

          else
          {
            v24 = **(v33 + 24);
          }

          v25 = (v24 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v28 < 0)
          {
            v24 = -**(v33 + 24);
          }

          else
          {
            v24 = *(*(v33 + 24) + 8 * (*(v33 + 16) - 1));
          }

          v25 = (v24 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v24 * v30) >> 64 == (v24 * v30) >> 63)
        {
          v26 = v24 * v30;
        }

        else
        {
          v26 = v25;
        }

        v17 = __OFADD__(result, v26);
        v27 = result + v26;
        if (v17)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v27;
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v20 = *v11++;
        v19 = v20;
        v22 = *v12++;
        v21 = v22;
        if (v22 < 0)
        {
          if (v19 < 0)
          {
            v14 = -*(*(v13 + 24) + 8 * (*(v13 + 16) - 1));
          }

          else
          {
            v14 = **(v13 + 24);
          }

          v15 = (v14 >> 63) ^ 0x8000000000000000;
        }

        else
        {
          if (v19 < 0)
          {
            v14 = -**(v13 + 24);
          }

          else
          {
            v14 = *(*(v13 + 24) + 8 * (*(v13 + 16) - 1));
          }

          v15 = (v14 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v14 * v21) >> 64 == (v14 * v21) >> 63)
        {
          v16 = v14 * v21;
        }

        else
        {
          v16 = v15;
        }

        v17 = __OFADD__(result, v16);
        v18 = result + v16;
        if (v17)
        {
          result = (result >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          result = v18;
        }

        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 8 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(uint64_t *a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v8, a1);
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,false>(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    switch(v13)
    {
      case 3:
        v91 = v10[2];
        v92 = *v10;
        if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
        {
          v124 = *(a2 - 2);
          if (v124 >= v91 && (v91 < v124 || *(a2 - 1) >= v10[3]))
          {
            return result;
          }

          v10[2] = v124;
          *(a2 - 2) = v91;
          v9 = v10 + 3;
          v125 = v10[3];
          v10[3] = *(a2 - 1);
          *(a2 - 1) = v125;
          v126 = v10[2];
          v127 = *v10;
          if (v126 >= *v10 && (v127 < v126 || v10[3] >= v10[1]))
          {
            return result;
          }

          *v10 = v126;
          v10[2] = v127;
          v94 = v10 + 1;
LABEL_236:
          v138 = *v94;
          *v94 = *v9;
          *v9 = v138;
          return result;
        }

        v93 = *(a2 - 2);
        if (v93 < v91)
        {
LABEL_156:
          *v10 = v93;
          v94 = v10 + 1;
          *(a2 - 2) = v92;
          goto LABEL_236;
        }

        if (v91 >= v93)
        {
          v135 = v10[3];
          if (*(a2 - 1) < v135)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v135 = v10[3];
        }

        v136 = v10[1];
        v10[3] = v136;
        *v10 = v91;
        v10[1] = v135;
        v10[2] = v92;
        v137 = *(a2 - 2);
        if (v137 >= v92 && (v92 < v137 || *(a2 - 1) >= v136))
        {
          return result;
        }

        v10[2] = v137;
        *(a2 - 2) = v92;
        v94 = v10 + 3;
        goto LABEL_236;
      case 4:

        return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
      case 5:
        result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
        v95 = *(a2 - 2);
        v96 = v10[6];
        if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
        {
          v10[6] = v95;
          *(a2 - 2) = v96;
          v97 = v10[7];
          v10[7] = *(a2 - 1);
          *(a2 - 1) = v97;
          v98 = v10[6];
          v99 = v10[4];
          if (v98 >= v99)
          {
            if (v99 < v98)
            {
              return result;
            }

            v101 = v10[7];
            v100 = v10[5];
            if (v101 >= v100)
            {
              return result;
            }
          }

          else
          {
            v100 = v10[5];
            v101 = v10[7];
          }

          v10[4] = v98;
          v10[5] = v101;
          v10[6] = v99;
          v10[7] = v100;
          v102 = v10[2];
          if (v98 >= v102)
          {
            if (v102 < v98)
            {
              return result;
            }

            v103 = v10[3];
            if (v101 >= v103)
            {
              return result;
            }
          }

          else
          {
            v103 = v10[3];
          }

          v10[2] = v98;
          v10[3] = v101;
          v10[4] = v102;
          v10[5] = v103;
          v104 = *v10;
          if (v98 >= *v10)
          {
            if (v104 < v98)
            {
              return result;
            }

            v105 = v10[1];
            if (v101 >= v105)
            {
              return result;
            }
          }

          else
          {
            v105 = v10[1];
          }

          *v10 = v98;
          v10[1] = v101;
          v10[2] = v104;
          v10[3] = v105;
          return result;
        }

        return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v120 = (v13 - 2) >> 1;
        v121 = v120 + 1;
        v122 = &v8[2 * v120];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(v8, a3, v13, v122);
          v122 -= 2;
          --v121;
        }

        while (v121);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,long long> *>(v8, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 < v70)
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                      goto LABEL_92;
                    }

                    if (v70 < v75 || (v77 = v55[1], v76 = v15[1], v77 >= v76))
                    {
LABEL_104:
                      v82 = *v10;
                      *v10 = v70;
                      v23 = v10 + 1;
                      *v15 = v82;
                      v30 = v15 + 1;
                      goto LABEL_105;
                    }

LABEL_92:
                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
                    goto LABEL_104;
                  }

                  v72 = *v55;
                  if (*v55 >= v70)
                  {
                    if (v70 >= v72)
                    {
                      v79 = v15[1];
                      if (v55[1] < v79)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v79 = v15[1];
                    }

                    *v15 = v71;
                    v80 = v39[1];
                    v15[1] = v80;
                    *v39 = v70;
                    v39[1] = v79;
                    if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                    {
                      v70 = v71;
                      goto LABEL_104;
                    }

                    *v15 = v72;
                    *v55 = v71;
                    v74 = v55 + 1;
                    v73 = v15 + 1;
                  }

                  else
                  {
LABEL_87:
                    *v39 = v72;
                    v73 = v39 + 1;
                    *v55 = v71;
                    v74 = v55 + 1;
                  }

                  v78 = v74;
                  goto LABEL_103;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 >= v56)
              {
                if (v56 >= v59)
                {
                  v66 = v55[1];
                  if (*(a2 - 5) < v66)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  v66 = v55[1];
                }

                v67 = v10[5];
                v10[4] = v56;
                v10[5] = v66;
                *v55 = v58;
                v55[1] = v67;
                v60 = v55 + 1;
                v68 = *(a2 - 6);
                if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
                {
                  goto LABEL_85;
                }

                *v55 = v68;
                *(a2 - 6) = v58;
              }

              else
              {
LABEL_69:
                v10[4] = v59;
                *(a2 - 6) = v58;
                v60 = v10 + 5;
              }

              v62 = a2 - 5;
              goto LABEL_84;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 >= v40)
          {
            if (v40 >= v42)
            {
              v49 = *(v14 - 1);
              if (*(a2 - 3) < v49)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v49 = *(v14 - 1);
            }

            v52 = v10[3];
            v10[2] = v40;
            v10[3] = v49;
            *v39 = v41;
            *(v14 - 1) = v52;
            v43 = v14 - 1;
            v53 = *(a2 - 4);
            if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
            {
              goto LABEL_67;
            }

            *v39 = v53;
            *(a2 - 4) = v41;
          }

          else
          {
LABEL_47:
            v10[2] = v42;
            *(a2 - 4) = v41;
            v43 = v10 + 3;
          }

          v45 = a2 - 3;
          goto LABEL_66;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 >= v16)
      {
        if (v16 >= v18)
        {
          v34 = v14[1];
          if (*(a2 - 1) < v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v34 = v14[1];
        }

        v36 = v10[1];
        *v10 = v16;
        v10[1] = v34;
        *v14 = v17;
        v14[1] = v36;
        v19 = v14 + 1;
        v37 = *(a2 - 2);
        if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
        {
          goto LABEL_45;
        }

        *v14 = v37;
      }

      else
      {
LABEL_16:
        *v10 = v18;
        v19 = v10 + 1;
      }

      *(a2 - 2) = v17;
      v25 = a2 - 1;
      goto LABEL_44;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) < v35)
        {
LABEL_19:
          *v15 = v22;
          *(a2 - 2) = v21;
          v23 = v15 + 1;
LABEL_61:
          v30 = a2 - 1;
          goto LABEL_105;
        }
      }

      else
      {
        v35 = v10[1];
      }

      v50 = v15[1];
      *v15 = v20;
      v15[1] = v35;
      *v10 = v21;
      v10[1] = v50;
      v23 = v10 + 1;
      v51 = *(a2 - 2);
      if (v51 < v21 || v21 >= v51 && *(a2 - 1) < v50)
      {
        *v10 = v51;
        *(a2 - 2) = v21;
        goto LABEL_61;
      }
    }

    else
    {
      v29 = *(a2 - 2);
      if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
      {
        *v10 = v29;
        *(a2 - 2) = v20;
        v30 = v10 + 1;
        v31 = v10[1];
        v10[1] = *(a2 - 1);
        *(a2 - 1) = v31;
        v32 = *v10;
        v33 = *v15;
        if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
        {
          *v15 = v32;
          *v10 = v33;
          v23 = v15 + 1;
LABEL_105:
          v83 = *v23;
          *v23 = *v30;
          *v30 = v83;
        }
      }
    }

    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
LABEL_146:
        a5 = 0;
        a4 = -v12;
        goto LABEL_3;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
      goto LABEL_146;
    }
  }

  v106 = v10 + 2;
  v108 = v10 == a2 || v106 == a2;
  if (a5)
  {
    if (v108)
    {
      return result;
    }

    v109 = 0;
    v110 = v10;
LABEL_177:
    v112 = v110;
    v110 = v106;
    v113 = v112[2];
    v114 = *v112;
    if (v113 >= *v112)
    {
      if (v114 < v113)
      {
        goto LABEL_176;
      }

      v115 = v112[3];
      if (v115 >= v112[1])
      {
        goto LABEL_176;
      }
    }

    else
    {
      v115 = v112[3];
    }

    v112[2] = v114;
    v110[1] = v112[1];
    v111 = v10;
    if (v112 == v10)
    {
      goto LABEL_175;
    }

    v116 = v109;
    while (1)
    {
      v119 = *(v10 + v116 - 16);
      if (v113 < v119)
      {
        v117 = *(v10 + v116 - 8);
      }

      else
      {
        if (v119 < v113)
        {
          v111 = (v10 + v116);
LABEL_175:
          *v111 = v113;
          v111[1] = v115;
LABEL_176:
          v106 = v110 + 2;
          v109 += 16;
          if (v110 + 2 == a2)
          {
            return result;
          }

          goto LABEL_177;
        }

        v117 = *(v10 + v116 - 8);
        if (v115 >= v117)
        {
          v111 = v112;
          goto LABEL_175;
        }
      }

      v112 -= 2;
      v118 = (v10 + v116);
      *v118 = v119;
      v118[1] = v117;
      v116 -= 16;
      if (!v116)
      {
        v111 = v10;
        goto LABEL_175;
      }
    }
  }

  if (!v108)
  {
    for (i = v10 + 1; ; i += 2)
    {
      v129 = v8;
      v8 = v106;
      v130 = v129[2];
      v131 = *v129;
      if (v130 < *v129)
      {
        break;
      }

      if (v131 >= v130)
      {
        v132 = v129[3];
        if (v132 < v129[1])
        {
          goto LABEL_213;
        }
      }

LABEL_210:
      v106 = v8 + 2;
      if (v8 + 2 == a2)
      {
        return result;
      }
    }

    v132 = v129[3];
LABEL_213:
    for (j = i; ; j -= 2)
    {
      v134 = *j;
      j[1] = v131;
      j[2] = v134;
      v131 = *(j - 3);
      if (v130 >= v131 && (v131 < v130 || v132 >= *(j - 2)))
      {
        break;
      }
    }

    *(j - 1) = v130;
    *j = v132;
    goto LABEL_210;
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < a2[1]; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v2 >= v12 && (v9 < v2 || v3 >= i[1]));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
        }

        while (v2 < v13);
      }

      while (v10 >= v2 && v3 < a2[1]);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,long long> *,std::__less<void,void> &>(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && v13[1] < v4);
      do
      {
        v17 = *(v14 - 2);
        v14 -= 2;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v2 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v6 = *(a2 - 2);
        v7 = a1[6];
        if (v6 >= v7)
        {
          if (v7 < v6)
          {
            return 1;
          }

          if (*(a2 - 1) >= a1[7])
          {
            return 1;
          }
        }

        a1[6] = v6;
        *(a2 - 2) = v7;
        v8 = a1[7];
        a1[7] = *(a2 - 1);
        *(a2 - 1) = v8;
        v9 = a1[6];
        v10 = a1[4];
        if (v9 >= v10)
        {
          if (v10 < v9)
          {
            return 1;
          }

          v12 = a1[7];
          v11 = a1[5];
          if (v12 >= v11)
          {
            return 1;
          }
        }

        else
        {
          v11 = a1[5];
          v12 = a1[7];
        }

        a1[4] = v9;
        a1[5] = v12;
        a1[6] = v10;
        a1[7] = v11;
        v13 = a1[2];
        if (v9 >= v13)
        {
          if (v13 < v9)
          {
            return 1;
          }

          v14 = a1[3];
          if (v12 >= v14)
          {
            return 1;
          }
        }

        else
        {
          v14 = a1[3];
        }

        a1[2] = v9;
        a1[3] = v12;
        a1[4] = v13;
        a1[5] = v14;
        v15 = *a1;
        if (v9 >= *a1)
        {
          if (v15 < v9)
          {
            return 1;
          }

          v16 = a1[1];
          if (v12 >= v16)
          {
            return 1;
          }
        }

        else
        {
          v16 = a1[1];
        }

        *a1 = v9;
        a1[1] = v12;
        a1[2] = v15;
        a1[3] = v16;
        return 1;
      }

LABEL_21:
      v25 = a1 + 4;
      v26 = a1[2];
      v27 = *a1;
      if (v26 >= *a1 && (v27 < v26 || a1[3] >= a1[1]))
      {
        v34 = *v25;
        if (*v25 >= v26)
        {
          if (v26 < v34)
          {
            goto LABEL_66;
          }

          v36 = a1[5];
          v35 = a1[3];
          if (v36 >= v35)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v35 = a1[3];
          v36 = a1[5];
        }

        a1[3] = v36;
        v37 = a1 + 3;
        a1[2] = v34;
        a1[4] = v26;
        a1[5] = v35;
        if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
        {
LABEL_66:
          v45 = a1 + 6;
          if (a1 + 6 == a2)
          {
            return 1;
          }

          v46 = 0;
          v47 = 0;
LABEL_71:
          v49 = *v45;
          v50 = *v25;
          if (*v45 >= *v25)
          {
            if (v50 < v49)
            {
              goto LABEL_70;
            }

            v51 = v45[1];
            if (v51 >= v25[1])
            {
              goto LABEL_70;
            }
          }

          else
          {
            v51 = v45[1];
          }

          *v45 = v50;
          v45[1] = v25[1];
          v48 = a1;
          if (v25 == a1)
          {
            goto LABEL_69;
          }

          v52 = v46;
          while (1)
          {
            v54 = a1 + v52;
            v55 = *(a1 + v52 + 16);
            if (v49 < v55)
            {
              v53 = *(v54 + 3);
            }

            else
            {
              if (v55 < v49)
              {
                v48 = v25;
LABEL_69:
                *v48 = v49;
                v48[1] = v51;
                if (++v47 != 8)
                {
LABEL_70:
                  v25 = v45;
                  v46 += 16;
                  v45 += 2;
                  if (v45 == a2)
                  {
                    return 1;
                  }

                  goto LABEL_71;
                }

                return v45 + 2 == a2;
              }

              v53 = *(a1 + v52 + 24);
              if (v51 >= v53)
              {
                v48 = (a1 + v52 + 32);
                goto LABEL_69;
              }
            }

            v25 -= 2;
            *(v54 + 4) = v55;
            *(a1 + v52 + 40) = v53;
            v52 -= 16;
            if (v52 == -32)
            {
              v48 = a1;
              goto LABEL_69;
            }
          }
        }

        *a1 = v34;
        a1[2] = v27;
        v29 = a1 + 1;
LABEL_65:
        v44 = *v29;
        *v29 = *v37;
        *v37 = v44;
        goto LABEL_66;
      }

      v28 = *v25;
      if (*v25 < v26)
      {
        goto LABEL_23;
      }

      if (v26 >= v28)
      {
        v39 = a1[3];
        if (a1[5] < v39)
        {
LABEL_23:
          *a1 = v28;
          a1[4] = v27;
          v29 = a1 + 1;
LABEL_64:
          v37 = a1 + 5;
          goto LABEL_65;
        }
      }

      else
      {
        v39 = a1[3];
      }

      v43 = a1[1];
      a1[3] = v43;
      v29 = a1 + 3;
      *a1 = v26;
      a1[1] = v39;
      a1[2] = v27;
      if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
      {
        goto LABEL_66;
      }

      a1[2] = v28;
      a1[4] = v27;
      goto LABEL_64;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20)
      {
        if (v20 < v30)
        {
          return 1;
        }

        if (*(a2 - 1) >= a1[3])
        {
          return 1;
        }
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1)
      {
        if (v33 < v32)
        {
          return 1;
        }

        if (a1[3] >= a1[1])
        {
          return 1;
        }
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_20:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21)
    {
      if (v21 < v41)
      {
        return 1;
      }

      if (*(a2 - 1) >= v40)
      {
        return 1;
      }
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_21;
  }

  v17 = *(a2 - 2);
  v18 = *a1;
  if (v17 < *a1)
  {
    goto LABEL_17;
  }

  if (v18 < v17)
  {
    return 1;
  }

  if (*(a2 - 1) < a1[1])
  {
LABEL_17:
    *a1 = v17;
    *(a2 - 2) = v18;
    v19 = a1[1];
    a1[1] = *(a2 - 1);
    *(a2 - 1) = v19;
    return 1;
  }

  return 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,long long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v13 = a4[1];
          if (v8[1] < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[1];
        }

        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 16 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v12 >= v18 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v14 = v8;
LABEL_14:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,long long> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[4];
        v13 = v9[2];
        if (v13 < v12 || v12 >= v13 && v9[3] < v9[5])
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      v8[1] = v7[1];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      v7[1] = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    v7[1] = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v20 = v7[1];
      if (v17[1] >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = v7[1];
    }

    *v7 = v18;
    v7[1] = v17[1];
    if (v15 >= 2)
    {
      while (1)
      {
        v23 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v21 = &result[2 * v16];
        v24 = *v21;
        if (*v21 < v19)
        {
          v22 = v21[1];
        }

        else
        {
          if (v19 < v24)
          {
            break;
          }

          v22 = v21[1];
          if (v22 >= v20)
          {
            break;
          }
        }

        *v17 = v24;
        v17[1] = v22;
        v17 = &result[2 * v16];
        if (v23 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v21 = v17;
LABEL_16:
    *v21 = v19;
    v21[1] = v20;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(unsigned __int8 **a1, void *a2)
{
  v12 = a2;
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
    v6 += 2;
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
    v3 = *&v3[8 * v5 + 256];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v5) = 0;
  }

  v8 = v5;
  v9 = v3;
  while (v5 == v9[10])
  {
    LODWORD(v5) = v9[8];
    v9 = *v9;
    if (v9[11])
    {
      goto LABEL_17;
    }
  }

  if (v2 >= *&v9[16 * v5 + 16])
  {
    return &v9[16 * v5 + 24];
  }

LABEL_17:
  v9 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1, v3, v8, &std::piecewise_construct, &v12);
  LOBYTE(v5) = v10;
  return &v9[16 * v5 + 24];
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void **a5)
{
  i = a2;
  v22 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = a2;
    v9 = a3;
    v10 = a2[10];
    v11 = v10 - a3;
    if (v10 <= a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v22) = a3;
  v7 = a2[11];
  if (!a2[11])
  {
    v7 = 15;
  }

  if (a2[10] != v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 <= 0xE)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(a1, &i);
  v8 = i;
  v9 = v22;
  v10 = i[10];
  v11 = v10 - v22;
  if (v10 > v22)
  {
LABEL_13:
    if ((v11 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = &v8[16 * v9 + 16 + 16 * v11];
      v13 = 16 * v9 - 16 * v10;
      do
      {
        *v12 = *(v12 - 1);
        v12 -= 16;
        v13 += 16;
      }

      while (v13);
      LODWORD(v10) = v8[10];
    }
  }

LABEL_17:
  v14 = &v8[16 * v9];
  *(v14 + 2) = **a5;
  *(v14 + 3) = 0;
  v15 = v10 + 1;
  v8[10] = v15;
  if (!v8[11])
  {
    v16 = v9 + 1;
    if (v16 < v15)
    {
      v17 = v8 + 256;
      do
      {
        v18 = *&v17[8 * (v15 - 1)];
        *&v17[8 * v15] = v18;
        *(v18 + 8) = v15;
      }

      while (v16 < --v15);
    }
  }

  ++*(a1 + 16);
  return i;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
{
  result = *a2;
  v5 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v6 = result[8];
  if (result[8])
  {
    v7 = *(v5 + 8 * (v6 - 1) + 256);
    v8 = v7[10];
    if (v8 <= 0xE)
    {
      v9 = *(a2 + 8);
      LODWORD(v10) = (15 - v8) >> (v9 < 0xF);
      v10 = v10 <= 1 ? 1 : v10;
      if (v9 >= v10 || (v10 + v8) <= 0xEu)
      {
        v12 = v7[8];
        v13 = *v7;
        *&v7[16 * v8 + 16] = *(*v7 + 16 * v12 + 16);
        v14 = result + 16;
        v15 = (v10 - 1);
        if (v10 != 1)
        {
          v16 = 16 * v8 + 32;
          v17 = 16 * v15;
          v18 = (result + 16);
          do
          {
            v19 = *v18++;
            *&v7[v16] = v19;
            v16 += 16;
            v17 -= 16;
          }

          while (v17);
          v13 = *v7;
          v12 = v7[8];
        }

        *(v13 + 16 * v12 + 16) = v14[v15];
        v20 = result[10];
        if (((v20 - v10) & 0xFFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = 16 * v20 - 16 * v10;
          do
          {
            *v14 = v14[v10];
            ++v14;
            v21 -= 16;
          }

          while (v21);
        }

        if (!v7[11])
        {
          v22 = result + 256;
          v23 = 32;
          do
          {
            v24 = v23 + v7[10] - 31;
            v25 = *&result[8 * v23];
            *&v7[8 * v24 + 256] = v25;
            *(v25 + 8) = v24;
            *v25 = v7;
            ++v23;
          }

          while (v23 - v10 != 32);
          if (result[10] >= v10)
          {
            v26 = 0;
            do
            {
              v27 = *&v22[8 * (v26 + v10)];
              *&v22[8 * v26] = v27;
              *(v27 + 8) = v26;
              *v27 = result;
              ++v26;
            }

            while (result[10] - v10 >= v26);
          }
        }

        v7[10] += v10;
        result[10] -= v10;
        v28 = *(a2 + 8) - v10;
        *(a2 + 2) = v28;
        if (v28 >= 0)
        {
          return result;
        }

        v39 = v28 + v7[10] + 1;
LABEL_43:
        *(a2 + 2) = v39;
        *a2 = v7;
        return result;
      }
    }
  }

  v29 = *(v5 + 10);
  if (v6 >= v29 || (v7 = *(v5 + 8 * (v6 + 1) + 256), v30 = v7[10], v30 > 0xE) || ((v31 = *(a2 + 2), (15 - v30) >> (v31 > 0) <= 1u) ? (v32 = 1) : (v32 = (15 - v30) >> (v31 > 0)), (v33 = (v32 + v30), (result[10] - v32) < v31) ? (v34 = v33 > 0xE) : (v34 = 0), v34))
  {
    if (v29 == 15)
    {
      v40 = v5;
      v41 = v6;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(a1, &v40);
      result = *a2;
      v37 = **a2;
    }

    v38 = result[8] + 1;
    if (result[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_left_to_right(result, v32, *(v5 + 8 * (v6 + 1) + 256));
  v35 = *(a2 + 2);
  v36 = (*a2)[10];
  if (v35 > v36)
  {
    v39 = v35 + ~v36;
    goto LABEL_43;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (*(a3 + 10))
  {
    v4 = 16 * *(a3 + 10);
    do
    {
      *(a3 + 16 * a2 + v4) = *(a3 + v4);
      v4 -= 16;
    }

    while (v4);
  }

  v5 = (a2 - 1);
  v3[v5] = *(*result + 16 * *(result + 8) + 16);
  v6 = *(result + 10);
  if ((v5 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = -16 * a2;
    v8 = result + 16 * *(result + 10) + 32;
    do
    {
      *v3++ = *(v8 + v7);
      v7 += 16;
    }

    while (v7 != -16);
    v6 = *(result + 10);
  }

  *(*result + 16 * *(result + 8) + 16) = *(result + 16 + 16 * (v6 - a2));
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v9 = a3 + 256;
      v10 = (*(a3 + 10) + 1);
      do
      {
        v11 = *(v9 + 8 * (v10 - 1));
        *(v9 + 8 * (v10 - 1 + a2)) = v11;
        *(v11 + 8) = v10 - 1 + a2;
        *v11 = a3;
        --v10;
      }

      while (v10);
    }

    if (a2)
    {
      v12 = 0;
      if ((a2 + 1) <= 2u)
      {
        v13 = 2;
      }

      else
      {
        v13 = (a2 + 1);
      }

      v14 = v13 - 1;
      do
      {
        v15 = *(result + 256 + 8 * (v12 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v12 + 256) = v15;
        *(v15 + 8) = v12;
        *v15 = a3;
        ++v12;
      }

      while (v14 != v12);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 15)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = result + 16;
  if (*(a3 + 10))
  {
    v6 = (a3 + 16);
    v7 = 16 * *(a3 + 10);
    v8 = &v5[16 * v4];
    do
    {
      v9 = *v8;
      v8 += 16;
      *v6++ = v9;
      v7 -= 16;
    }

    while (v7);
    v4 = result[10];
  }

  v10 = v4 - 1;
  result[10] = v4 - 1;
  v11 = *result;
  v12 = result[8];
  v13 = &v5[16 * v10];
  v14 = *(*result + 10);
  v15 = v14 - v12;
  if (v14 > v12 && (v15 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = (v11 + 16 * result[8] + 16 + 16 * v15);
    v17 = 16 * v12 - 16 * v14;
    do
    {
      *v16 = *(v16 - 1);
      --v16;
      v17 += 16;
    }

    while (v17);
    LODWORD(v14) = *(v11 + 10);
  }

  *(v11 + 16 * v12 + 16) = *v13;
  v18 = v14 + 1;
  *(v11 + 10) = v14 + 1;
  if (!*(v11 + 11))
  {
    v19 = v12 + 1;
    if (v19 < v18)
    {
      v20 = v11 + 256;
      do
      {
        v21 = *(v20 + 8 * (v18 - 1));
        *(v20 + 8 * v18) = v21;
        *(v21 + 8) = v18;
      }

      while (v19 < --v18);
    }
  }

  *(*result + 8 * (result[8] + 1) + 256) = a3;
  v23 = result[11];
  if (!result[11])
  {
    v24 = result[10];
    do
    {
      v25 = *&result[8 * ++v24 + 256];
      *(a3 + 256 + 8 * v23) = v25;
      *(v25 + 8) = v23;
      *v25 = a3;
      ++v23;
    }

    while (*(a3 + 10) >= v23);
  }

  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::clear(unsigned __int8 ***a1)
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
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

void operations_research::sat::PropagateAutomaton(uint64_t a1, operations_research::sat::PresolveContext *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = *(a1 + 112);
  v8 = *(a1 + 24);
  v9 = *(a1 + 16);
  if (v9 == 7)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(&v162, 8uLL);
  }

  else
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(&v162, (v9 - 1) / 7 + v9);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v10 = 8 * v9;
  do
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v162, v8, &v160);
    if (v161 == 1)
    {
      **(&v160 + 1) = *v8;
    }

    ++v8;
    v10 -= 8;
  }

  while (v10);
LABEL_8:
  v12 = *a4;
  v11 = a4[1];
  v13 = *a4;
  if (v11 != *a4)
  {
    v14 = a4[1];
    do
    {
      v15 = *(v14 - 32);
      v14 -= 32;
      if (v15 >= 2)
      {
        operator delete((*(v11 - 16) - (*(v11 - 24) & 1) - 8));
      }

      v11 = v14;
    }

    while (v14 != v12);
    v13 = *a4;
  }

  a4[1] = v12;
  v16 = (v12 - v13) >> 5;
  if (v7 <= v16)
  {
    if (v7 < v16)
    {
      v17 = v13 + 32 * v7;
      if (v12 != v17)
      {
        v18 = v12;
        do
        {
          v19 = *(v18 - 32);
          v18 -= 32;
          if (v19 >= 2)
          {
            operator delete((*(v12 - 16) - (*(v12 - 24) & 1) - 8));
          }

          v12 = v18;
        }

        while (v18 != v17);
      }

      a4[1] = v17;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(a4, v7 - v16);
  }

  v21 = *a3;
  v20 = a3[1];
  v22 = *a3;
  if (v20 != *a3)
  {
    v23 = a3[1];
    do
    {
      v24 = *(v23 - 32);
      v23 -= 32;
      if (v24 >= 2)
      {
        operator delete((*(v20 - 16) - (*(v20 - 24) & 1) - 8));
      }

      v20 = v23;
    }

    while (v23 != v21);
    v22 = *a3;
  }

  a3[1] = v21;
  v25 = v7 + 1;
  v26 = (v21 - v22) >> 5;
  if (v25 <= v26)
  {
    if (v25 < v26)
    {
      v27 = v22 + 32 * v25;
      if (v21 != v27)
      {
        v28 = v21;
        do
        {
          v29 = *(v28 - 32);
          v28 -= 32;
          if (v29 >= 2)
          {
            operator delete((*(v21 - 16) - (*(v21 - 24) & 1) - 8));
          }

          v21 = v28;
        }

        while (v28 != v27);
      }

      a3[1] = v27;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(a3, v25 - v26);
  }

  v30 = *a3;
  *&v158 = *(a1 + 136);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(v30, &v158, &v160);
  if (v161 == 1)
  {
    **(&v160 + 1) = v158;
  }

  v31 = v7 - 1;
  if (v7 > 0)
  {
    LODWORD(v32) = *(a1 + 40);
    if (v32 >= 1)
    {
      v154 = v7;
      v155 = (v7 - 1);
      v33 = 0;
      while (1)
      {
        while (v32 <= 0)
        {
          if (++v33 == v154)
          {
            goto LABEL_94;
          }
        }

        v34 = 0;
        v156 = v33 + 1;
        do
        {
          v40 = *(*(a1 + 48) + 8 * v34);
          v41 = *(*(a1 + 96) + 8 * v34);
          v42 = *(*(a1 + 72) + 8 * v34);
          v43 = (*a3 + 32 * v33);
          v44 = *v43;
          if (*v43 > 1)
          {
            v38 = 0;
            _X12 = v43[2];
            __asm { PRFM            #4, [X12] }

            v54 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40));
            v39 = (v54 >> 7) ^ (_X12 >> 12);
            v55 = vdup_n_s8(v54 & 0x7F);
            while (1)
            {
              v35 = v39 & v44;
              v36 = *(_X12 + v35);
              v37 = vceq_s8(v36, v55);
              if (v37)
              {
                break;
              }

LABEL_49:
              if (vceq_s8(v36, 0x8080808080808080))
              {
                goto LABEL_92;
              }

              v38 += 8;
              v39 = v38 + v35;
            }

            while (*(v43[3] + 8 * ((v35 + (__clz(__rbit64(v37)) >> 3)) & v44)) != v40)
            {
              v37 &= ((v37 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v37)
              {
                goto LABEL_49;
              }
            }
          }

          else if (v43[1] < 2 || v43[2] != v40)
          {
            goto LABEL_92;
          }

          if (!operations_research::sat::PresolveContext::DomainContains(a2, *(*(a1 + 120) + 4 * v33), *(*(a1 + 96) + 8 * v34)))
          {
            goto LABEL_92;
          }

          if (v33 == v155)
          {
            if (v162 > 1)
            {
              v65 = 0;
              _X10 = v164;
              __asm { PRFM            #4, [X10] }

              v68 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v42) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v42));
              v69 = vdup_n_s8(v68 & 0x7F);
              v70 = ((v68 >> 7) ^ (v164 >> 12)) & v162;
              v71 = *(v164 + v70);
              v72 = vceq_s8(v71, v69);
              if (!v72)
              {
                goto LABEL_72;
              }

LABEL_70:
              while (*(v165 + 8 * ((v70 + (__clz(__rbit64(v72)) >> 3)) & v162)) != v42)
              {
                v72 &= ((v72 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v72)
                {
LABEL_72:
                  while (!*&vceq_s8(v71, 0x8080808080808080))
                  {
                    v65 += 8;
                    v70 = (v65 + v70) & v162;
                    v71 = *(v164 + v70);
                    v72 = vceq_s8(v71, v69);
                    if (v72)
                    {
                      goto LABEL_70;
                    }
                  }

                  goto LABEL_92;
                }
              }
            }

            else if (v163 < 2 || v164 != v42)
            {
              goto LABEL_92;
            }
          }

          v45 = (*a4 + 32 * v33);
          v46 = *v45;
          if (*v45 > 1)
          {
            v56 = 0;
            _X9 = v45[2];
            __asm { PRFM            #4, [X9] }

            v59 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41));
            v60 = vdup_n_s8(v59 & 0x7F);
            v61 = ((v59 >> 7) ^ (_X9 >> 12)) & v46;
            v62 = *(_X9 + v61);
            v63 = vceq_s8(v62, v60);
            if (!v63)
            {
              goto LABEL_66;
            }

LABEL_64:
            while (*(v45[3] + 8 * ((v61 + (__clz(__rbit64(v63)) >> 3)) & v46)) != v41)
            {
              v63 &= ((v63 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v63)
              {
LABEL_66:
                while (1)
                {
                  v64 = vceq_s8(v62, 0x8080808080808080);
                  if (v64)
                  {
                    break;
                  }

                  v56 += 8;
                  v61 = (v56 + v61) & v46;
                  v62 = *(_X9 + v61);
                  v63 = vceq_s8(v62, v60);
                  if (v63)
                  {
                    goto LABEL_64;
                  }
                }

                v47 = (v45[3] + 8 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((*a4 + 32 * v33), v59, (v61 + (__clz(__rbit64(v64)) >> 3)) & v46, v56, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value));
                goto LABEL_78;
              }
            }
          }

          else if (v45[1] > 1)
          {
            if (v45[2] != v41)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl((*a4 + 32 * v33), 3);
            }
          }

          else
          {
            v45[1] = 2;
            v47 = v45 + 2;
LABEL_78:
            *v47 = v41;
          }

          v73 = (*a3 + 32 * v156);
          v74 = *v73;
          if (*v73 > 1)
          {
            v76 = 0;
            _X9 = v73[2];
            __asm { PRFM            #4, [X9] }

            v79 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v42) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v42));
            v80 = vdup_n_s8(v79 & 0x7F);
            v81 = ((v79 >> 7) ^ (_X9 >> 12)) & v74;
            v82 = *(_X9 + v81);
            v83 = vceq_s8(v82, v80);
            if (!v83)
            {
              goto LABEL_85;
            }

LABEL_83:
            while (*(v73[3] + 8 * ((v81 + (__clz(__rbit64(v83)) >> 3)) & v74)) != v42)
            {
              v83 &= ((v83 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v83)
              {
LABEL_85:
                while (1)
                {
                  v84 = vceq_s8(v82, 0x8080808080808080);
                  if (v84)
                  {
                    break;
                  }

                  v76 += 8;
                  v81 = (v76 + v81) & v74;
                  v82 = *(_X9 + v81);
                  v83 = vceq_s8(v82, v80);
                  if (v83)
                  {
                    goto LABEL_83;
                  }
                }

                v75 = (v73[3] + 8 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((*a3 + 32 * v156), v79, (v81 + (__clz(__rbit64(v84)) >> 3)) & v74, v76, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value));
                goto LABEL_91;
              }
            }
          }

          else if (v73[1] > 1)
          {
            if (v73[2] != v42)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl((*a3 + 32 * v156), 3);
            }
          }

          else
          {
            v73[1] = 2;
            v75 = v73 + 2;
LABEL_91:
            *v75 = v42;
          }

LABEL_92:
          ++v34;
          v32 = *(a1 + 40);
        }

        while (v34 < v32);
        ++v33;
        if (v156 == v154)
        {
LABEL_94:
          LODWORD(v7) = v154;
          v31 = v155;
          goto LABEL_95;
        }
      }
    }

    goto LABEL_96;
  }

LABEL_95:
  if ((v31 & 0x80000000) == 0)
  {
LABEL_96:
    v85 = v7;
    v86 = v31;
    do
    {
      v160 = xmmword_23CE306D0;
      v158 = xmmword_23CE306D0;
      if (*(a1 + 40) >= 1)
      {
        v88 = 0;
        v89 = v85;
        do
        {
          v95 = *(*(a1 + 48) + 8 * v88);
          v96 = *(*(a1 + 96) + 8 * v88);
          v97 = *(*(a1 + 72) + 8 * v88);
          v98 = (*a3 + 32 * v86);
          v99 = *v98;
          if (*v98 > 1)
          {
            v93 = 0;
            _X13 = v98[2];
            __asm { PRFM            #4, [X13] }

            v107 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v95) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v95));
            v94 = (v107 >> 7) ^ (_X13 >> 12);
            v108 = vdup_n_s8(v107 & 0x7F);
            while (1)
            {
              v90 = v94 & v99;
              v91 = *(_X13 + v90);
              v92 = vceq_s8(v91, v108);
              if (v92)
              {
                break;
              }

LABEL_103:
              if (vceq_s8(v91, 0x8080808080808080))
              {
                goto LABEL_153;
              }

              v93 += 8;
              v94 = v93 + v90;
            }

            while (*(v98[3] + 8 * ((v90 + (__clz(__rbit64(v92)) >> 3)) & v99)) != v95)
            {
              v92 &= ((v92 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v92)
              {
                goto LABEL_103;
              }
            }
          }

          else if (v98[1] < 2 || v98[2] != v95)
          {
            goto LABEL_153;
          }

          v100 = (*a4 + 32 * v86);
          v101 = *v100;
          if (*v100 > 1)
          {
            v109 = 0;
            _X13 = v100[2];
            __asm { PRFM            #4, [X13] }

            v112 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96));
            v113 = vdup_n_s8(v112 & 0x7F);
            v114 = ((v112 >> 7) ^ (_X13 >> 12)) & v101;
            v115 = *(_X13 + v114);
            v116 = vceq_s8(v115, v113);
            if (!v116)
            {
              goto LABEL_121;
            }

LABEL_119:
            while (*(v100[3] + 8 * ((v114 + (__clz(__rbit64(v116)) >> 3)) & v101)) != v96)
            {
              v116 &= ((v116 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v116)
              {
LABEL_121:
                while (!*&vceq_s8(v115, 0x8080808080808080))
                {
                  v109 += 8;
                  v114 = (v109 + v114) & v101;
                  v115 = *(_X13 + v114);
                  v116 = vceq_s8(v115, v113);
                  if (v116)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_153;
              }
            }
          }

          else if (v100[1] < 2 || v100[2] != v96)
          {
            goto LABEL_153;
          }

          v102 = (*a3 + 32 * v89);
          v103 = *v102;
          if (*v102 > 1)
          {
            v117 = 0;
            _X12 = v102[2];
            __asm { PRFM            #4, [X12] }

            v120 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97));
            v121 = vdup_n_s8(v120 & 0x7F);
            v122 = ((v120 >> 7) ^ (_X12 >> 12)) & v103;
            v123 = *(_X12 + v122);
            v124 = vceq_s8(v123, v121);
            if (!v124)
            {
              goto LABEL_127;
            }

LABEL_125:
            while (*(v102[3] + 8 * ((v122 + (__clz(__rbit64(v124)) >> 3)) & v103)) != v97)
            {
              v124 &= ((v124 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v124)
              {
LABEL_127:
                while (!*&vceq_s8(v123, 0x8080808080808080))
                {
                  v117 += 8;
                  v122 = (v117 + v122) & v103;
                  v123 = *(_X12 + v122);
                  v124 = vceq_s8(v123, v121);
                  if (v124)
                  {
                    goto LABEL_125;
                  }
                }

                goto LABEL_153;
              }
            }

LABEL_114:
            if (v158 > 1)
            {
              v125 = 0;
              _X9 = v159;
              __asm { PRFM            #4, [X9] }

              v128 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v96));
              v129 = vdup_n_s8(v128 & 0x7F);
              v130 = ((v128 >> 7) ^ (v159 >> 12)) & v158;
              v131 = *(v159 + v130);
              v132 = vceq_s8(v131, v129);
              if (!v132)
              {
                goto LABEL_133;
              }

LABEL_131:
              while (*(*(&v159 + 1) + 8 * ((v130 + (__clz(__rbit64(v132)) >> 3)) & v158)) != v96)
              {
                v132 &= ((v132 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v132)
                {
LABEL_133:
                  while (1)
                  {
                    v133 = vceq_s8(v131, 0x8080808080808080);
                    if (v133)
                    {
                      break;
                    }

                    v125 += 8;
                    v130 = (v125 + v130) & v158;
                    v131 = *(v159 + v130);
                    v132 = vceq_s8(v131, v129);
                    if (v132)
                    {
                      goto LABEL_131;
                    }
                  }

                  inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v158, v128, (v130 + (__clz(__rbit64(v133)) >> 3)) & v158, v125, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
                  v104 = (*(&v159 + 1) + 8 * inserted);
                  goto LABEL_139;
                }
              }
            }

            else if (*(&v158 + 1) > 1uLL)
            {
              if (v159 != v96)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(&v158, 3);
              }
            }

            else
            {
              *(&v158 + 1) = 2;
              v104 = &v159;
LABEL_139:
              *v104 = v96;
            }

            if (v160 > 1)
            {
              v136 = 0;
              _X9 = v161;
              __asm { PRFM            #4, [X9] }

              v139 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v95) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v95));
              v140 = vdup_n_s8(v139 & 0x7F);
              v141 = ((v139 >> 7) ^ (v161 >> 12)) & v160;
              v142 = *(v161 + v141);
              v143 = vceq_s8(v142, v140);
              if (!v143)
              {
                goto LABEL_146;
              }

LABEL_144:
              while (*(*(&v161 + 1) + 8 * ((v141 + (__clz(__rbit64(v143)) >> 3)) & v160)) != v95)
              {
                v143 &= ((v143 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v143)
                {
LABEL_146:
                  while (1)
                  {
                    v144 = vceq_s8(v142, 0x8080808080808080);
                    if (v144)
                    {
                      break;
                    }

                    v136 += 8;
                    v141 = (v136 + v141) & v160;
                    v142 = *(v161 + v141);
                    v143 = vceq_s8(v142, v140);
                    if (v143)
                    {
                      goto LABEL_144;
                    }
                  }

                  v145 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v160, v139, (v141 + (__clz(__rbit64(v144)) >> 3)) & v160, v136, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::GetPolicyFunctions(void)::value);
                  v135 = (*(&v161 + 1) + 8 * v145);
                  goto LABEL_152;
                }
              }
            }

            else if (*(&v160 + 1) > 1uLL)
            {
              if (v161 != v95)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::resize_impl(&v160, 3);
              }
            }

            else
            {
              *(&v160 + 1) = 2;
              v135 = &v161;
LABEL_152:
              *v135 = v95;
            }

            goto LABEL_153;
          }

          if (v102[1] >= 2 && v102[2] == v97)
          {
            goto LABEL_114;
          }

LABEL_153:
          ++v88;
        }

        while (v88 < *(a1 + 40));
      }

      v146 = (*a4 + 32 * v86);
      v148 = *v146;
      v147 = v146[1];
      v149 = v159;
      *v146 = v158;
      v146[1] = v149;
      v158 = v148;
      v159 = v147;
      v150 = (*a3 + 32 * v86);
      v152 = *v150;
      v151 = v150[1];
      v153 = v161;
      *v150 = v160;
      v150[1] = v153;
      v160 = v152;
      v161 = v151;
      if (v158 >= 2)
      {
        operator delete((v159 - (BYTE8(v158) & 1) - 8));
        if (v160 >= 2)
        {
LABEL_158:
          operator delete((v161 - (BYTE8(v160) & 1) - 8));
        }
      }

      else if (v160 >= 2)
      {
        goto LABEL_158;
      }

      v85 = v86;
    }

    while (v86-- > 0);
  }

  if (v162 >= 2)
  {
    operator delete((v164 - (v163 & 1) - 8));
  }
}

void sub_23CA16F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, char a26, uint64_t a27)
{
  if (a25 >= 2)
  {
    v27 = a1;
    operator delete((a27 - (a26 & 1) - 8));
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::ExpandCpModel(operations_research::sat *this, operations_research::sat::PresolveContext *a2)
{
  v801 = *MEMORY[0x277D85DE8];
  if (*(*(this + 49) + 317))
  {
    goto LABEL_1222;
  }

  v2 = this;
  if (*(this + 416))
  {
    goto LABEL_1222;
  }

  if (*(this + 1176))
  {
    goto LABEL_1222;
  }

  operations_research::sat::PresolveContext::InitializeNewDomains(this);
  if (*(v2 + 416))
  {
    goto LABEL_1222;
  }

  operations_research::sat::PresolveContext::ClearPrecedenceCache(v2);
  v5 = *v2;
  if (*(*v2 + 56) <= 0)
  {
    *&v773.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
    *&v771.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
    *v769 = xmmword_23CE306D0;
LABEL_1205:
    operations_research::sat::PresolveContext::ClearPrecedenceCache(v2);
    operations_research::sat::PresolveContext::InitializeNewDomains(v2);
    if (*(*v2 + 32) >= 1)
    {
      v742 = 0;
      v743 = 8;
      do
      {
        operations_research::sat::PresolveContext::DomainOf(v2, v742, v794);
        v744 = (*v2 + 24);
        if (*v744)
        {
          v744 = (*v744 + v743 - 1);
        }

        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v794, *v744);
        if (v794[0])
        {
          operator delete(*&v794[8]);
        }

        ++v742;
        v743 += 8;
      }

      while (v742 < *(*v2 + 32));
    }

    *(v2 + 1176) = 1;
    goto LABEL_1213;
  }

  v6 = 0;
  v7 = xmmword_23CE404E0;
  v768 = v2;
  do
  {
    v9 = *(v5 + 48);
    v8 = (v5 + 48);
    v10 = v9 + 8 * v6 + 7;
    if (v9)
    {
      v8 = v10;
    }

    v766 = *v8;
    v11 = *(*v8 + 15);
    v762 = v6;
    if (v11 <= 15)
    {
      if (v11 <= 11)
      {
        if (v11 != 8)
        {
          if (v11 != 11)
          {
            goto LABEL_865;
          }

          v21 = *(v766 + 6);
          v22 = *(v21 + 32);
          if (v22 < 3)
          {
            if (v22 == 2)
            {
              v138 = *(v21 + 24);
              v136 = (v21 + 24);
              v137 = v138;
              v139 = (v138 + 7);
              _ZF = (v138 & 1) == 0;
              if ((v138 & 1) == 0)
              {
                v139 = v136;
              }

              v141 = *v139;
              v142 = (v137 + 15);
              if (_ZF)
              {
                v142 = v136;
              }

              v143 = *v142;
              v144 = v136[3];
              if (v144)
              {
                v145 = v144;
              }

              else
              {
                v145 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              LODWORD(__p[0]) = 0;
              IsALiteral = operations_research::sat::PresolveContext::ExpressionIsALiteral(v2, v141, __p);
              v147 = operations_research::sat::PresolveContext::ExpressionIsALiteral(v2, v143, __p);
              if (!(v147 & 1 | ((IsALiteral & 1) == 0)))
              {
                operations_research::sat::ConstraintProto::Clear(v766);
                operator new();
              }

              if (v147)
              {
                operations_research::sat::ConstraintProto::Clear(v766);
                operator new();
              }
            }
          }

          else
          {
            v24 = *(v21 + 24);
            v23 = (v21 + 24);
            v25 = (v24 + 7);
            *&v794[16] = 0u;
            v795 = 0u;
            if (v24)
            {
              v26 = v25;
            }

            else
            {
              v26 = v23;
            }

            *v794 = 0uLL;
            std::deque<operations_research::sat::LinearExpressionProto>::__append_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<operations_research::sat::LinearExpressionProto const>>(v794, v26, v22);
            if (v795.i64[1] >= 3uLL)
            {
              do
              {
                v30 = (*(*&v794[8] + 8 * (v795.i64[0] / 0x33uLL)) + 80 * (v795.i64[0] % 0x33uLL));
                v31 = v795.i64[0] + 1;
                v32 = (v795.i64[0] + 1) / 0x33uLL;
                v33 = *(*&v794[8] + 8 * v32);
                operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v30, &v799);
                v34 = (v33 + 80 * (v31 - 51 * v32));
                operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v34, &v797);
                operations_research::Domain::ContinuousMultiplicationBy(&v799, &v797, __p, v35);
                if (v797.__r_.__value_.__s.__data_[0])
                {
                  operator delete(v797.__r_.__value_.__l.__size_);
                }

                if (v799)
                {
                  operator delete(*&v800[0]);
                }

                v36 = operations_research::sat::PresolveContext::NewIntVar(v2, __p);
                v37 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                v38 = v37;
                if (*(v37 + 60) == 11)
                {
                  v39 = *(v37 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v37);
                  *(v38 + 60) = 11;
                  v40 = *(v38 + 8);
                  if (v40)
                  {
                    v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v40);
                  v39 = v41;
                  *(v38 + 48) = v41;
                }

                v42 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v39 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
                operations_research::sat::LinearExpressionProto::CopyFrom(v42, v30);
                v43 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v39 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
                operations_research::sat::LinearExpressionProto::CopyFrom(v43, v34);
                *(v39 + 16) |= 1u;
                v44 = *(v39 + 48);
                if (!v44)
                {
                  v45 = *(v39 + 8);
                  if (v45)
                  {
                    v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v45);
                  v44 = v46;
                  *(v39 + 48) = v46;
                }

                v47 = *(v44 + 16);
                v48 = v47;
                if (v47 == HIDWORD(v47))
                {
                  google::protobuf::RepeatedField<int>::Grow(v44 + 16, HIDWORD(v47), (HIDWORD(v47) + 1));
                  v48 = *(v44 + 16);
                }

                v49 = *(v44 + 24);
                *(v44 + 16) = v48 + 1;
                *(v49 + 4 * v48) = v36;
                *(v39 + 16) |= 1u;
                v50 = *(v39 + 48);
                if (!v50)
                {
                  v51 = *(v39 + 8);
                  if (v51)
                  {
                    v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v51);
                  v50 = v52;
                  *(v39 + 48) = v52;
                }

                v54 = *(v50 + 40);
                v53 = *(v50 + 44);
                if (v54 == v53)
                {
                  google::protobuf::RepeatedField<long long>::Grow(v50 + 40, v53);
                  v54 = *(v50 + 40);
                }

                v55 = *(v50 + 48);
                *(v50 + 40) = v54 + 1;
                *(v55 + 8 * v54) = 1;
                operations_research::sat::LinearExpressionProto::~LinearExpressionProto((*(*&v794[8] + 8 * (v795.i64[0] / 0x33uLL)) + 80 * (v795.i64[0] % 0x33uLL)));
                v795 = vaddq_s64(v795, xmmword_23CE306C0);
                v56 = v795.i64[0];
                v57 = *&v794[8];
                if (v795.i64[0] >= 0x66uLL)
                {
                  operator delete(**&v794[8]);
                  v57 = *&v794[8] + 8;
                  v56 = v795.i64[0] - 51;
                  *&v794[8] += 8;
                  v795.i64[0] -= 51;
                }

                operations_research::sat::LinearExpressionProto::~LinearExpressionProto((*(v57 + 8 * (v56 / 0x33)) + 80 * (v56 % 0x33)));
                v58 = vaddq_s64(v795, xmmword_23CE306C0);
                v795 = v58;
                v59 = v58.i64[0];
                v60 = *&v794[8];
                if (v58.i64[0] >= 0x66uLL)
                {
                  operator delete(**&v794[8]);
                  v60 = *&v794[8] + 8;
                  v59 = v795.i64[0] - 51;
                  *&v794[8] += 8;
                  v795.i64[0] -= 51;
                  v61 = v795.i64[1];
                }

                else
                {
                  v61 = v58.i64[1];
                }

                v62 = *&v794[16];
                v63 = 51 * ((*&v794[16] - v60) >> 3) - 1;
                if (*&v794[16] == v60)
                {
                  v63 = 0;
                }

                if (*(v39 + 48))
                {
                  v64 = *(v39 + 48);
                }

                else
                {
                  v64 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                if (v63 == v59 + v61)
                {
                  std::deque<operations_research::sat::LinearExpressionProto>::__add_back_capacity(v794);
                  v60 = *&v794[8];
                  v62 = *&v794[16];
                }

                if (v62 == v60)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = (*(v60 + 8 * ((v795.i64[1] + v795.i64[0]) / 0x33uLL)) + 80 * ((v795.i64[1] + v795.i64[0]) % 0x33uLL));
                }

                operations_research::sat::LinearExpressionProto::LinearExpressionProto(v65, 0, v64);
                v66 = ++v795.i64[1];
                if (__p[0])
                {
                  operator delete(__p[1]);
                  v66 = v795.u64[1];
                }
              }

              while (v66 > 2);
            }

            v27 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v28 = v27;
            if (*(v27 + 60) == 11)
            {
              v29 = *(v27 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v27);
              *(v28 + 60) = 11;
              v192 = *(v28 + 8);
              if (v192)
              {
                v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v192);
              v29 = v193;
              *(v28 + 48) = v193;
            }

            v194 = v795.i64[0];
            v195 = v795.i64[0] / 0x33uLL;
            v196 = *(*&v794[8] + 8 * (v795.i64[0] / 0x33uLL));
            v197 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v29 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            operations_research::sat::LinearExpressionProto::CopyFrom(v197, (v196 + 80 * (v194 - 51 * v195)));
            v198 = v795.i64[0] + 1;
            v199 = (v795.i64[0] + 1) / 0x33uLL;
            v200 = *(*&v794[8] + 8 * v199);
            v201 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v29 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            operations_research::sat::LinearExpressionProto::CopyFrom(v201, (v200 + 80 * (v198 - 51 * v199)));
            v202 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v766 + 15) == 11)
            {
              v202 = *(v766 + 6);
            }

            v203 = v202[6];
            if (v203)
            {
              v204 = v203;
            }

            else
            {
              v204 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            *(v29 + 16) |= 1u;
            v205 = *(v29 + 48);
            if (!v205)
            {
              v206 = *(v29 + 8);
              if (v206)
              {
                v206 = *(v206 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v206);
              *(v29 + 48) = v205;
            }

            operations_research::sat::LinearExpressionProto::CopyFrom(v205, v204);
            __p[0] = "int_prod: expanded int_prod with arity ";
            __p[1] = 39;
            v208 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v766 + 15) == 11)
            {
              v208 = *(v766 + 6);
            }

            v209 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v208 + 8), v800 + 8, v207);
            v799 = v800 + 8;
            *&v800[0] = v209 - (v800 + 8);
            absl::lts_20240722::StrCat(__p, &v799, &v797);
            operations_research::sat::PresolveContext::UpdateRuleStats(v2, &v797, 1, v210, v211);
            if (SHIBYTE(v797.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v797.__r_.__value_.__l.__data_);
            }

            operations_research::sat::ConstraintProto::Clear(v766);
            std::deque<operations_research::sat::LinearExpressionProto>::~deque[abi:ne200100](v794);
          }

          goto LABEL_862;
        }

        v94 = *(v766 + 6);
        v95 = *(v94 + 24);
        v96 = (v95 + 15);
        if (v95)
        {
          v97 = v96;
        }

        else
        {
          v97 = (v94 + 24);
        }

        v98 = *v97;
        if (!operations_research::sat::PresolveContext::IsFixed(v2, *v97))
        {
          v99 = *(v94 + 24);
          if (v99)
          {
            v100 = (v99 + 7);
          }

          else
          {
            v100 = (v94 + 24);
          }

          v101 = *v100;
          if (*(v94 + 48))
          {
            v102 = *(v94 + 48);
          }

          else
          {
            v102 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v101, __p);
          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v98, &v799);
          operations_research::Domain::PositiveModuloBySuperset(__p, &v799, v794);
          v103 = operations_research::sat::PresolveContext::IntersectDomainWith(v2, v102, v794, 0);
          if (v794[0])
          {
            operator delete(*&v794[8]);
            if (v799)
            {
              goto LABEL_235;
            }

LABEL_121:
            if ((__p[0] & 1) == 0)
            {
              goto LABEL_122;
            }

LABEL_236:
            operator delete(__p[1]);
            if ((v103 & 1) == 0)
            {
              goto LABEL_862;
            }
          }

          else
          {
            if ((v799 & 1) == 0)
            {
              goto LABEL_121;
            }

LABEL_235:
            operator delete(*&v800[0]);
            if (__p[0])
            {
              goto LABEL_236;
            }

LABEL_122:
            if ((v103 & 1) == 0)
            {
              goto LABEL_862;
            }
          }

          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v101, __p);
          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v98, &v799);
          operations_research::Domain::PositiveDivisionBySuperset(__p, &v799, v794);
          v170 = operations_research::sat::PresolveContext::NewIntVar(v2, v794);
          if ((v794[0] & 1) == 0)
          {
            if ((v799 & 1) == 0)
            {
              goto LABEL_239;
            }

LABEL_359:
            operator delete(*&v800[0]);
            if ((__p[0] & 1) == 0)
            {
              goto LABEL_241;
            }

LABEL_240:
            operator delete(__p[1]);
            goto LABEL_241;
          }

          operator delete(*&v794[8]);
          if (v799)
          {
            goto LABEL_359;
          }

LABEL_239:
          if (__p[0])
          {
            goto LABEL_240;
          }

LABEL_241:
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(v794, 0);
          v171 = *&v794[16];
          if (*&v794[16] == *&v794[20])
          {
            google::protobuf::RepeatedField<int>::Grow(&v794[16], *&v794[20], (*&v794[20] + 1));
            v171 = *&v794[16];
            v2 = v768;
          }

          *&v794[16] = v171 + 1;
          *(*&v794[24] + 4 * v171) = v170;
          v172 = v795.i32[2];
          if (v795.i32[2] == v795.i32[3])
          {
            google::protobuf::RepeatedField<long long>::Grow(&v795.u64[1], v795.u32[3]);
            v172 = v795.i32[2];
            v2 = v768;
          }

          v795.i32[2] = v172 + 1;
          *(v796 + 8 * v172) = 1;
          v173 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v174 = v173;
          if (v173 != v766)
          {
            *(v173 + 16) = 0;
            v175 = *(v766 + 4);
            if (v175)
            {
              if (*(v173 + 20) < v175)
              {
                google::protobuf::RepeatedField<int>::Grow(v173 + 16, 0, *(v766 + 4));
                v176 = *(v174 + 16);
                v178 = *(v174 + 24);
                *(v174 + 16) = v176 + v175;
                if (v175 >= 1)
                {
LABEL_249:
                  v179 = *(v766 + 3);
                  v180 = (v178 + 4 * v176);
                  if (v175 < 8)
                  {
                    goto LABEL_254;
                  }

                  v181 = 4 * v176;
                  if ((4 * v176 + v178 - v179) < 0x20)
                  {
                    goto LABEL_254;
                  }

                  v182 = v175;
                  v183 = v175 & 0x7FFFFFF8;
                  LODWORD(v175) = v175 - (v175 & 0x7FFFFFF8);
                  v180 += v183;
                  v184 = &v179[v183];
                  v185 = (v179 + 4);
                  v186 = (v178 + v181 + 16);
                  v187 = v183;
                  do
                  {
                    v188 = *v185;
                    *(v186 - 1) = *(v185 - 1);
                    *v186 = v188;
                    v185 += 2;
                    v186 += 2;
                    v187 -= 8;
                  }

                  while (v187);
                  v179 = v184;
                  if (v183 != v182)
                  {
LABEL_254:
                    v189 = v175 + 1;
                    do
                    {
                      v190 = *v179++;
                      *v180++ = v190;
                      --v189;
                    }

                    while (v189 > 1);
                  }
                }
              }

              else
              {
                v176 = 0;
                v177 = *(v766 + 4);
                v178 = *(v173 + 24);
                *(v173 + 16) = v175;
                if (v175 >= 1)
                {
                  goto LABEL_249;
                }
              }
            }
          }

          if (*(v174 + 60) == 7)
          {
            v191 = *(v174 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v174);
            *(v174 + 60) = 7;
            v263 = *(v174 + 8);
            if (v263)
            {
              v263 = *(v263 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v263);
            v191 = v264;
            *(v174 + 48) = v264;
          }

          *(v191 + 16) |= 1u;
          v265 = *(v191 + 48);
          if (!v265)
          {
            v266 = *(v191 + 8);
            if (v266)
            {
              v266 = *(v266 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v266);
            *(v191 + 48) = v265;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(v265, v794);
          v267 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v191 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v267, v101);
          v268 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v191 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v268, v98);
          operations_research::sat::PresolveContext::DomainOf(v2, v170, &v797);
          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v98, &v773);
          operations_research::Domain::ContinuousMultiplicationBy(&v797, &v773, __p, v269);
          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v101, v769);
          operations_research::sat::PresolveContext::DomainSuperSetOf(v2, v102, &v787);
          operations_research::Domain::Negation(&v787, &v788);
          operations_research::Domain::AdditionWith(v769, &v788, &v771, v270);
          operations_research::Domain::IntersectionWith(__p, &v771, &v799);
          if ((v771.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            if ((v788 & 1) == 0)
            {
              goto LABEL_370;
            }

LABEL_394:
            operator delete(v789);
            if (v787.__r_.__value_.__s.__data_[0])
            {
              goto LABEL_395;
            }

LABEL_371:
            if ((v769[0] & 1) == 0)
            {
              goto LABEL_372;
            }

LABEL_396:
            operator delete(v769[1]);
            if (__p[0])
            {
              goto LABEL_397;
            }

LABEL_373:
            if ((v773.__r_.__value_.__s.__data_[0] & 1) == 0)
            {
              goto LABEL_374;
            }

LABEL_398:
            operator delete(v773.__r_.__value_.__l.__size_);
            if ((v797.__r_.__value_.__s.__data_[0] & 1) == 0)
            {
              goto LABEL_376;
            }

LABEL_375:
            operator delete(v797.__r_.__value_.__l.__size_);
            goto LABEL_376;
          }

          operator delete(v771.__r_.__value_.__l.__size_);
          if (v788)
          {
            goto LABEL_394;
          }

LABEL_370:
          if ((v787.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            goto LABEL_371;
          }

LABEL_395:
          operator delete(v787.__r_.__value_.__l.__size_);
          if (v769[0])
          {
            goto LABEL_396;
          }

LABEL_372:
          if ((__p[0] & 1) == 0)
          {
            goto LABEL_373;
          }

LABEL_397:
          operator delete(__p[1]);
          if (v773.__r_.__value_.__s.__data_[0])
          {
            goto LABEL_398;
          }

LABEL_374:
          if (v797.__r_.__value_.__s.__data_[0])
          {
            goto LABEL_375;
          }

LABEL_376:
          v271 = operations_research::sat::PresolveContext::NewIntVar(v2, &v799);
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(__p, 0);
          v272 = __p[2];
          if (LODWORD(__p[2]) == HIDWORD(__p[2]))
          {
            google::protobuf::RepeatedField<int>::Grow(&__p[2], HIDWORD(__p[2]), (HIDWORD(__p[2]) + 1));
            v272 = __p[2];
            v2 = v768;
          }

          LODWORD(__p[2]) = v272 + 1;
          *(__p[3] + v272) = v271;
          v273 = v791;
          if (v791 == v792)
          {
            google::protobuf::RepeatedField<long long>::Grow(&v791, v792);
            v273 = v791;
            v2 = v768;
          }

          v791 = v273 + 1;
          *(v793 + 8 * v273) = 1;
          v274 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v275 = v274;
          if (v274 != v766)
          {
            *(v274 + 16) = 0;
            v276 = *(v766 + 4);
            if (v276)
            {
              if (*(v274 + 20) < v276)
              {
                google::protobuf::RepeatedField<int>::Grow(v274 + 16, 0, *(v766 + 4));
                v277 = *(v275 + 16);
                v279 = *(v275 + 24);
                *(v275 + 16) = v277 + v276;
                if (v276 >= 1)
                {
LABEL_384:
                  v280 = *(v766 + 3);
                  v281 = (v279 + 4 * v277);
                  if (v276 < 8)
                  {
                    goto LABEL_389;
                  }

                  v282 = 4 * v277;
                  if ((4 * v277 + v279 - v280) < 0x20)
                  {
                    goto LABEL_389;
                  }

                  v283 = v276;
                  v284 = v276 & 0x7FFFFFF8;
                  LODWORD(v276) = v276 - (v276 & 0x7FFFFFF8);
                  v281 += v284;
                  v285 = &v280[v284];
                  v286 = (v280 + 4);
                  v287 = (v279 + v282 + 16);
                  v288 = v284;
                  do
                  {
                    v289 = *v286;
                    *(v287 - 1) = *(v286 - 1);
                    *v287 = v289;
                    v286 += 2;
                    v287 += 2;
                    v288 -= 8;
                  }

                  while (v288);
                  v280 = v285;
                  if (v284 != v283)
                  {
LABEL_389:
                    v290 = v276 + 1;
                    do
                    {
                      v291 = *v280++;
                      *v281++ = v291;
                      --v290;
                    }

                    while (v290 > 1);
                  }
                }
              }

              else
              {
                v277 = 0;
                v278 = *(v766 + 4);
                v279 = *(v274 + 24);
                *(v274 + 16) = v276;
                if (v276 >= 1)
                {
                  goto LABEL_384;
                }
              }
            }
          }

          if (*(v275 + 60) == 11)
          {
            v292 = *(v275 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v275);
            *(v275 + 60) = 11;
            v293 = *(v275 + 8);
            if (v293)
            {
              v293 = *(v293 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v293);
            v292 = v294;
            *(v275 + 48) = v294;
          }

          *(v292 + 16) |= 1u;
          v295 = *(v292 + 48);
          if (!v295)
          {
            v296 = *(v292 + 8);
            if (v296)
            {
              v296 = *(v296 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v296);
            *(v292 + 48) = v295;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(v295, __p);
          v297 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v292 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v297, v794);
          v298 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v292 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v298, v98);
          v299 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v302 = v299;
          if (v299 != v766)
          {
            *(v299 + 16) = 0;
            v303 = *(v766 + 4);
            if (v303)
            {
              if (*(v299 + 20) < v303)
              {
                google::protobuf::RepeatedField<int>::Grow(v299 + 16, 0, *(v766 + 4));
                v304 = *(v302 + 16);
                v306 = *(v302 + 24);
                *(v302 + 16) = v304 + v303;
                if (v303 >= 1)
                {
LABEL_411:
                  v307 = *(v766 + 3);
                  v308 = (v306 + 4 * v304);
                  if (v303 < 8)
                  {
                    goto LABEL_416;
                  }

                  v309 = 4 * v304;
                  if ((4 * v304 + v306 - v307) < 0x20)
                  {
                    goto LABEL_416;
                  }

                  v310 = v303;
                  v311 = v303 & 0x7FFFFFF8;
                  LODWORD(v303) = v303 - (v303 & 0x7FFFFFF8);
                  v308 += v311;
                  v312 = (v307 + 4 * v311);
                  v313 = v307 + 1;
                  v314 = (v306 + v309 + 16);
                  v315 = v311;
                  do
                  {
                    v301 = v313[-1];
                    v316 = *v313;
                    v314[-1] = v301;
                    *v314 = v316;
                    v313 += 2;
                    v314 += 2;
                    v315 -= 8;
                  }

                  while (v315);
                  v307 = v312;
                  if (v311 != v310)
                  {
LABEL_416:
                    v317 = v303 + 1;
                    do
                    {
                      v318 = v307->n128_u32[0];
                      v307 = (v307 + 4);
                      *v308++ = v318;
                      --v317;
                    }

                    while (v317 > 1);
                  }
                }
              }

              else
              {
                v304 = 0;
                v305 = *(v766 + 4);
                v306 = *(v299 + 24);
                *(v299 + 16) = v303;
                if (v303 >= 1)
                {
                  goto LABEL_411;
                }
              }
            }
          }

          if (*(v302 + 60) == 12)
          {
            v319 = *(v302 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v302);
            *(v302 + 60) = 12;
            v320 = *(v302 + 8);
            if (v320)
            {
              v320 = *(v320 & 0xFFFFFFFFFFFFFFFELL);
            }

            v319 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v320);
            *(v302 + 48) = v319;
          }

          v322 = *(v319 + 64);
          v321 = *(v319 + 68);
          if (v322 == v321)
          {
            google::protobuf::RepeatedField<long long>::Grow(v319 + 64, v321);
            v590 = *(v319 + 64);
            v321 = *(v319 + 68);
            v323 = *(v319 + 72);
            v324 = v590 + 1;
            *(v319 + 64) = v590 + 1;
            *(v323 + 8 * v590) = 0;
            if (v590 + 1 != v321)
            {
              goto LABEL_425;
            }
          }

          else
          {
            v323 = *(v319 + 72);
            v324 = v322 + 1;
            *(v319 + 64) = v322 + 1;
            *(v323 + 8 * v322) = 0;
            if (v322 + 1 != v321)
            {
LABEL_425:
              *(v319 + 64) = v324 + 1;
              *(v323 + 8 * v324) = 0;
              operations_research::sat::AddLinearExpressionToLinearConstraint(v101, 1, v319, v300, v301);
              operations_research::sat::AddLinearExpressionToLinearConstraint(__p, 0xFFFFFFFFFFFFFFFFLL, v319, v325, v326);
              operations_research::sat::AddLinearExpressionToLinearConstraint(v102, 0xFFFFFFFFFFFFFFFFLL, v319, v327, v328);
              operations_research::sat::ConstraintProto::Clear(v766);
              *(&v797.__r_.__value_.__s + 23) = 17;
              strcpy(&v797, "int_mod: expanded");
              operations_research::sat::PresolveContext::UpdateRuleStats(v2, &v797, 1, v329, v330);
              if (SHIBYTE(v797.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v797.__r_.__value_.__l.__data_);
              }

              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(__p);
              if (v799)
              {
                operator delete(*&v800[0]);
              }

              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v794);
              goto LABEL_862;
            }
          }

          google::protobuf::RepeatedField<long long>::Grow(v319 + 64, v321);
          v324 = *(v319 + 64);
          v323 = *(v319 + 72);
          goto LABEL_425;
        }

        goto LABEL_862;
      }

      if (v11 == 12)
      {
        if (*(*(v766 + 6) + 64) >= 3 && (*(*(v2 + 49) + 570) & 1) == 0)
        {
        }

        goto LABEL_862;
      }

      if (v11 != 14)
      {
        goto LABEL_865;
      }

      v67 = *(v766 + 6);
      v69 = *(v67 + 36);
      v68 = *(v67 + 40);
      operations_research::Domain::Domain(v794, 0, *(v67 + 16) - 1);
      v70 = operations_research::sat::PresolveContext::IntersectDomainWith(v2, v69, v794, 0);
      if (v794[0])
      {
        operator delete(*&v794[8]);
      }

      if ((v70 & 1) == 0)
      {
        if (dword_2810BFAA0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFA98, dword_2810BFAA0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v794, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 679);
          v149 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v794, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v149, "Empty domain for the index variable in ExpandElement()", 0x36uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v794);
          v2 = v768;
        }

        goto LABEL_862;
      }

      if (v69 == v68)
      {
        v71 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        if (*(v766 + 15) == 14)
        {
          v71 = *(v766 + 6);
        }

        v72 = *(v71 + 9);
        operations_research::sat::PresolveContext::DomainOf(v2, v72, __p);
        *v794 = 0;
        v73 = __p[0];
        if (__p[0] >= 2)
        {
          if (__p[0])
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(v794, __p);
            v73 = __p[0];
          }

          else
          {
            *v794 = __p[0];
            *&v794[8] = *&__p[1];
          }
        }

        if (v73)
        {
          operator delete(__p[1]);
        }

        if (*v794 > 1uLL)
        {
          v350 = v794[0] & 1;
          v349 = *&v794[8];
          if (v794[0])
          {
            v351 = *&v794[8];
          }

          else
          {
            v351 = &v794[8];
          }

          v348 = *v351;
        }

        else
        {
          v348 = 0;
          v349 = *&v794[8];
          v350 = *v794;
        }

        if (v350)
        {
          v352 = v349;
        }

        else
        {
          v352 = &v794[8];
        }

        if ((*v794 & 0x1FFFFFFFFFFFFFFELL) == 0)
        {
          v353 = 0;
LABEL_492:
          v2 = v768;
          if (v350)
          {
            operator delete(*&v794[8]);
          }

          operations_research::sat::PresolveContext::DomainOf(v768, v72, v794);
          v357 = operations_research::Domain::Size(v794);
          if (v794[0])
          {
            operator delete(*&v794[8]);
          }

          if (v353 >> 3 >= v357)
          {
            operations_research::sat::PresolveContext::DomainOf(v768, v72, &v799);
            *v794 = 0;
            v359 = v799;
            if (v799 >= 2)
            {
              if (v799)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(v794, &v799);
                v359 = v799;
              }

              else
              {
                *v794 = v799;
                *&v794[8] = v800[0];
              }
            }

            if (v359)
            {
              operator delete(*&v800[0]);
            }

            if (*v794 > 1uLL)
            {
              v462 = v794[0] & 1;
              v461 = *&v794[8];
              if (v794[0])
              {
                v463 = *&v794[8];
              }

              else
              {
                v463 = &v794[8];
              }

              v460 = *v463;
            }

            else
            {
              v460 = 0;
              v461 = *&v794[8];
              v462 = *v794;
            }

            if (v462)
            {
              v464 = v461;
            }

            else
            {
              v464 = &v794[8];
            }

            if ((*v794 & 0x1FFFFFFFFFFFFFFELL) != 0)
            {
              v465 = &v464[2 * (*v794 >> 1)];
              do
              {
                v466 = *(v71[3] + v460);
                if (operations_research::sat::PresolveContext::MinOf(v768, v466) != v460 || operations_research::sat::PresolveContext::MaxOf(v768, v466) != v460)
                {
                  VarValueEncoding = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v72, v460);
                  operations_research::Domain::Domain(&v799, v460);
                  operations_research::sat::PresolveContext::AddImplyInDomain(v768, VarValueEncoding, v466, &v799);
                  if (v799)
                  {
                    operator delete(*&v800[0]);
                  }
                }

                if (v460 == v464[1])
                {
                  v464 += 2;
                  if (v464 != v465)
                  {
                    v460 = *v464;
                  }
                }

                else
                {
                  ++v460;
                }
              }

              while (v464 != v465);
              v462 = v794[0] & 1;
            }

            if (v462)
            {
              operator delete(*&v794[8]);
            }

            operator new();
          }

          memset(__p, 0, 24);
          if (v353)
          {
            if ((v353 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          operations_research::Domain::FromValues(__p, v794);
          v358 = operations_research::sat::PresolveContext::IntersectDomainWith(v768, v72, v794, 0);
          if (v794[0])
          {
            operator delete(*&v794[8]);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v358)
          {
            operator new();
          }

          if (dword_2810BFAB8 >= 1)
          {
            v2 = v768;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAB0, dword_2810BFAB8))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v794, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 534);
              v360 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v794, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v360, "No compatible variable domains in ExpandElementWithTargetEqualIndex()", 0x45uLL);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v794);
              v2 = v768;
            }
          }

          goto LABEL_862;
        }

        v353 = 0;
        v354 = &v352[2 * (*v794 >> 1)];
        while (2)
        {
          if (operations_research::sat::PresolveContext::DomainContains(v768, *(v71[3] + v348), v348))
          {
            v355 = v353;
            v356 = v353 >> 3;
            if (((v353 >> 3) + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v353 >> 3 != -1)
            {
              if (!(((v353 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v356) = v348;
            v353 = 8 * v356 + 8;
            memcpy(0, 0, v355);
            if (v348 != v352[1])
            {
              goto LABEL_478;
            }

LABEL_482:
            v352 += 2;
            if (v352 != v354)
            {
              v348 = *v352;
            }
          }

          else
          {
            if (v348 == v352[1])
            {
              goto LABEL_482;
            }

LABEL_478:
            ++v348;
          }

          if (v352 == v354)
          {
            v350 = v794[0] & 1;
            goto LABEL_492;
          }

          continue;
        }
      }

      operations_research::sat::PresolveContext::DomainOf(v2, v69, &v771);
      operations_research::sat::PresolveContext::DomainOf(v2, v68, v769);
      v788 = 0;
      if (v771.__r_.__value_.__r.__words[0] > 1)
      {
        v169 = v771.__r_.__value_.__s.__data_[0] & 1;
        size = v771.__r_.__value_.__l.__size_;
        if (v771.__r_.__value_.__s.__data_[0])
        {
          p_size = v771.__r_.__value_.__l.__size_;
        }

        else
        {
          p_size = &v771.__r_.__value_.__l.__size_;
        }

        v167 = *p_size;
      }

      else
      {
        v167 = 0;
        size = v771.__r_.__value_.__l.__size_;
        v169 = v771.__r_.__value_.__r.__words[0];
      }

      v753 = v69;
      v759 = v68;
      if (v169)
      {
        v255 = size;
      }

      else
      {
        v255 = &v771.__r_.__value_.__l.__size_;
      }

      if ((v771.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v256 = 0;
        v257 = &v255[2 * (v771.__r_.__value_.__r.__words[0] >> 1)];
        v258 = 1;
        do
        {
          operations_research::sat::PresolveContext::DomainOf(v768, *(*(v67 + 24) + 4 * v167), v794);
          operations_research::Domain::IntersectionWith(v794, v769, __p);
          IsEmpty = operations_research::Domain::IsEmpty(__p);
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if (!IsEmpty)
          {
            v260 = v256;
            v261 = v256 >> 3;
            if (((v256 >> 3) + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v256 >> 3 != -1)
            {
              if (!(((v256 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v261) = v167;
            v256 = 8 * v261 + 8;
            memcpy(0, 0, v260);
            operations_research::Domain::UnionWith(&v788, v794, __p);
            if (v788)
            {
              operator delete(v789);
            }

            v788 = __p[0];
            v789 = *&__p[1];
            v262 = operations_research::Domain::Min(v794);
            v258 &= v262 == operations_research::Domain::Max(v794);
          }

          if (v794[0])
          {
            operator delete(*&v794[8]);
          }

          if (v167 == v255[1])
          {
            v255 += 2;
            if (v255 != v257)
            {
              v167 = *v255;
            }
          }

          else
          {
            ++v167;
          }
        }

        while (v255 != v257);
      }

      else
      {
        v256 = 0;
        v258 = 1;
      }

      v2 = v768;
      if (operations_research::Domain::Size(&v771) > v256 >> 3)
      {
        memset(&v787, 0, sizeof(v787));
        if (v256)
        {
          if ((v256 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        operations_research::Domain::FromValues(&v787, v794);
        v332 = operations_research::sat::PresolveContext::IntersectDomainWith(v768, v753, v794, 0);
        if (v794[0])
        {
          operator delete(*&v794[8]);
        }

        if (v787.__r_.__value_.__r.__words[0])
        {
          v787.__r_.__value_.__l.__size_ = v787.__r_.__value_.__r.__words[0];
          operator delete(v787.__r_.__value_.__l.__data_);
        }

        if (v332)
        {
          operator new();
        }

        if (dword_2810BFAD0 >= 1)
        {
          v2 = v768;
          if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAC8, dword_2810BFAD0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v794, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 709);
            v361 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v794, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v361, "No compatible variable domains in ExpandElement()", 0x31uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v794);
            v2 = v768;
          }
        }

        goto LABEL_855;
      }

      LOBYTE(v779[0]) = 0;
      if ((operations_research::sat::PresolveContext::IntersectDomainWith(v768, v759, &v788, v779) & 1) == 0)
      {
LABEL_855:
        if (v788)
        {
          operator delete(v789);
          if ((v769[0] & 1) == 0)
          {
LABEL_857:
            if (v771.__r_.__value_.__s.__data_[0])
            {
              goto LABEL_861;
            }

            goto LABEL_862;
          }
        }

        else if ((v769[0] & 1) == 0)
        {
          goto LABEL_857;
        }

        operator delete(v769[1]);
        if (v771.__r_.__value_.__s.__data_[0])
        {
LABEL_861:
          operator delete(v771.__r_.__value_.__l.__size_);
          goto LABEL_862;
        }

        goto LABEL_862;
      }

      if (LOBYTE(v779[0]) == 1)
      {
        operator new();
      }

      v333 = *(v766 + 15);
      if (v258)
      {
        v334 = &operations_research::sat::_ElementConstraintProto_default_instance_;
        if (v333 == 14)
        {
          v334 = *(v766 + 6);
        }

        v335 = *(v334 + 9);
        v336 = *(v334 + 10);
        operations_research::sat::PresolveContext::DomainOf(v768, v335, &v797);
        operations_research::sat::PresolveContext::DomainOf(v768, v336, &v773);
        *v794 = xmmword_23CE306D0;
        *__p = xmmword_23CE306D0;
        v337 = v335;
        if (v797.__r_.__value_.__r.__words[0] > 1)
        {
          v340 = v797.__r_.__value_.__s.__data_[0] & 1;
          v339 = v797.__r_.__value_.__l.__size_;
          if (v797.__r_.__value_.__s.__data_[0])
          {
            v475 = v797.__r_.__value_.__l.__size_;
          }

          else
          {
            v475 = &v797.__r_.__value_.__l.__size_;
          }

          v338 = *v475;
        }

        else
        {
          v338 = 0;
          v339 = v797.__r_.__value_.__l.__size_;
          v340 = v797.__r_.__value_.__r.__words[0];
        }

        if (v340)
        {
          v476 = v339;
        }

        else
        {
          v476 = &v797.__r_.__value_.__l.__size_;
        }

        if ((v797.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v477 = &v476[2 * (v797.__r_.__value_.__r.__words[0] >> 1)];
          do
          {
            v785 = operations_research::sat::PresolveContext::MinOf(v768, *(v334[3] + v338));
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,int>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,int>>>::find_or_prepare_insert<long long>(__p, &v785, &v799);
            if (BYTE8(v800[0]) == 1)
            {
              v478 = *&v800[0];
              **&v800[0] = v785;
              *(v478 + 8) = 0;
            }

            v479 = *(*&v800[0] + 8) + 1;
            *(*&v800[0] + 8) = v479;
            if (v479 == 2)
            {
              v480 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v768 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              v481 = v480;
              if (*(v480 + 60) == 3)
              {
                v482 = *(v480 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v480);
                *(v481 + 60) = 3;
                v483 = *(v481 + 8);
                if (v483)
                {
                  v483 = *(v483 & 0xFFFFFFFFFFFFFFFELL);
                }

                v482 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v483);
                *(v481 + 48) = v482;
              }

              v484 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v336, v785);
              v485 = v482[2];
              v486 = v485;
              if (v485 == HIDWORD(v485))
              {
                google::protobuf::RepeatedField<int>::Grow(v482 + 2, HIDWORD(v485), (HIDWORD(v485) + 1));
                v486 = *(v482 + 4);
              }

              v487 = v482[3];
              *(v482 + 4) = v486 + 1;
              *(v487 + 4 * v486) = ~v484;
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::BoolArgumentProto *>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::BoolArgumentProto *>>>::find_or_prepare_insert<long long>(v794, &v785, &v799);
              if (BYTE8(v800[0]) == 1)
              {
                v488 = *&v800[0];
                **&v800[0] = v785;
                *(v488 + 8) = 0;
              }

              *(*&v800[0] + 8) = v482;
            }

            if (v338 == v476[1])
            {
              v476 += 2;
              if (v476 != v477)
              {
                v338 = *v476;
              }
            }

            else
            {
              ++v338;
            }
          }

          while (v476 != v477);
          v2 = v768;
          if (__p[0] >= 2)
          {
            operator delete(__p[2] - (__p[1] & 1) - 8);
          }
        }

        v489 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v490 = &v797.__r_.__value_.__l.__size_;
        v491 = v489;
        v492 = v337;
        if (*(v489 + 60) == 29)
        {
          v493 = *(v489 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v489);
          *(v491 + 60) = 29;
          v562 = *(v491 + 8);
          if (v562)
          {
            v562 = *(v562 & 0xFFFFFFFFFFFFFFFELL);
          }

          v493 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v562);
          *(v491 + 48) = v493;
        }

        if (v797.__r_.__value_.__r.__words[0] > 1)
        {
          v565 = v797.__r_.__value_.__s.__data_[0] & 1;
          v564 = v797.__r_.__value_.__l.__size_;
          if (v797.__r_.__value_.__s.__data_[0])
          {
            v566 = v797.__r_.__value_.__l.__size_;
          }

          else
          {
            v566 = &v797.__r_.__value_.__l.__size_;
          }

          v563 = *v566;
        }

        else
        {
          v563 = 0;
          v564 = v797.__r_.__value_.__l.__size_;
          v565 = v797.__r_.__value_.__r.__words[0];
        }

        if (v565)
        {
          v567 = v564;
        }

        else
        {
          v567 = &v797.__r_.__value_.__l.__size_;
        }

        if ((v797.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v568 = &v567[2 * (v797.__r_.__value_.__r.__words[0] >> 1)];
          do
          {
            v569 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v492, v563);
            v570 = v493[2];
            v571 = v570;
            if (v570 == HIDWORD(v570))
            {
              google::protobuf::RepeatedField<int>::Grow(v493 + 2, HIDWORD(v570), (HIDWORD(v570) + 1));
              v571 = *(v493 + 4);
            }

            v572 = v493[3];
            *(v493 + 4) = v571 + 1;
            *(v572 + 4 * v571) = v569;
            v573 = operations_research::sat::PresolveContext::MinOf(v768, *(v334[3] + v563));
            if (*v794 > 1uLL)
            {
              v576 = 0;
              _X9 = *&v794[16];
              __asm { PRFM            #4, [X9] }

              v579 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v573) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v573));
              v580 = vdup_n_s8(v579 & 0x7F);
              v581 = ((*&v794[16] >> 12) ^ (v579 >> 7)) & *v794;
              v582 = *(*&v794[16] + v581);
              v583 = vceq_s8(v582, v580);
              if (!v583)
              {
                goto LABEL_841;
              }

              do
              {
LABEL_839:
                v584 = (v581 + (__clz(__rbit64(v583)) >> 3)) & *v794;
                if (*(*&v794[24] + 16 * v584) == v573)
                {
                  v490 = (*&v794[24] + 16 * v584);
                  v575 = (*&v794[16] + v584);
                  goto LABEL_846;
                }

                v583 &= ((v583 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v583);
LABEL_841:
              while (!*&vceq_s8(v582, 0x8080808080808080))
              {
                v576 += 8;
                v581 = (v576 + v581) & *v794;
                v582 = *(*&v794[16] + v581);
                v583 = vceq_s8(v582, v580);
                if (v583)
                {
                  goto LABEL_839;
                }
              }

              v575 = 0;
            }

            else
            {
              v574 = *&v794[16] == v573 && *&v794[8] > 1uLL;
              v575 = &absl::lts_20240722::container_internal::kSooControl;
              if (!v574)
              {
                v575 = 0;
              }

              v490 = &v794[16];
            }

LABEL_846:
            if (v575)
            {
              v585 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v336, v573);
              operations_research::sat::PresolveContext::AddImplication(v768, v569, v585);
              v490 = v490[1];
              v586 = v490[2];
              v587 = v586;
              if (v586 == HIDWORD(v586))
              {
                google::protobuf::RepeatedField<int>::Grow(v490 + 2, HIDWORD(v586), (HIDWORD(v586) + 1));
                v587 = *(v490 + 4);
              }

              v588 = v490[3];
              *(v490 + 4) = v587 + 1;
              *(v588 + 4 * v587) = v569;
            }

            else
            {
              operations_research::sat::PresolveContext::InsertVarValueEncoding(v768, v569, v336, v573);
            }

            if (v563 == v567[1])
            {
              v567 += 2;
              if (v567 != v568)
              {
                v563 = *v567;
              }
            }

            else
            {
              ++v563;
            }
          }

          while (v567 != v568);
        }

        operator new();
      }

      v468 = &operations_research::sat::_ElementConstraintProto_default_instance_;
      if (v333 == 14)
      {
        v468 = *(v766 + 6);
      }

      v469 = *(v468 + 9);
      v760 = *(v468 + 10);
      operations_research::sat::PresolveContext::DomainOf(v768, *(v468 + 9), v794);
      v470 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v768 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v473 = v470;
      if (*(v470 + 60) == 29)
      {
        v474 = *(v470 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v470);
        *(v473 + 60) = 29;
        v494 = *(v473 + 8);
        if (v494)
        {
          v494 = *(v494 & 0xFFFFFFFFFFFFFFFELL);
        }

        v474 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v494);
        *(v473 + 48) = v474;
      }

      *v754 = v468;
      if (*v794 > 1uLL)
      {
        v497 = v794[0] & 1;
        v496 = *&v794[8];
        if (v794[0])
        {
          v498 = *&v794[8];
        }

        else
        {
          v498 = &v794[8];
        }

        v495 = *v498;
      }

      else
      {
        v495 = 0;
        v496 = *&v794[8];
        v497 = *v794;
      }

      if (v497)
      {
        v499 = v496;
      }

      else
      {
        v499 = &v794[8];
      }

      if ((*v794 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
LABEL_809:
        HIBYTE(__p[2]) = 17;
        strcpy(__p, "element: expanded");
        operations_research::sat::PresolveContext::UpdateRuleStats(v2, __p, 1, v471, v472);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        operations_research::sat::ConstraintProto::Clear(v766);
        if (v794[0])
        {
          operator delete(*&v794[8]);
        }

        goto LABEL_855;
      }

      v500 = &v499[2 * (*v794 >> 1)];
      while (1)
      {
        v501 = *(*(*v754 + 24) + 4 * v495);
        operations_research::sat::PresolveContext::DomainOf(v2, v501, __p);
        v502 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v2, v469, v495);
        v503 = v474[2];
        v504 = v503;
        if (v503 == HIDWORD(v503))
        {
          google::protobuf::RepeatedField<int>::Grow(v474 + 2, HIDWORD(v503), (HIDWORD(v503) + 1));
          v504 = *(v474 + 4);
        }

        v505 = v474[3];
        *(v474 + 4) = v504 + 1;
        *(v505 + 4 * v504) = v502;
        if (!operations_research::Domain::IsFixed(__p))
        {
          break;
        }

        operations_research::sat::PresolveContext::AddImplyInDomain(v2, v502, v760, __p);
LABEL_798:
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if (v495 == v499[1])
        {
          v499 += 2;
          if (v499 != v500)
          {
            v495 = *v499;
          }
        }

        else
        {
          ++v495;
        }

        if (v499 == v500)
        {
          goto LABEL_809;
        }
      }

      v506 = v500;
      v507 = v469;
      v508 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v509 = v508;
      v510 = (v508 + 16);
      v511 = *(v508 + 16);
      v512 = v511;
      if (v511 == HIDWORD(v511))
      {
        google::protobuf::RepeatedField<int>::Grow(v508 + 16, HIDWORD(v511), (HIDWORD(v511) + 1));
        v512 = *v510;
      }

      v513 = *(v509 + 24);
      *(v509 + 16) = v512 + 1;
      *(v513 + 4 * v512) = v502;
      v514 = *(v509 + 60);
      if ((v501 & 0x80000000) != 0)
      {
        if (v514 == 12)
        {
          v516 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v526 = *(v509 + 8);
          if (v526)
          {
            v526 = *(v526 & 0xFFFFFFFFFFFFFFFELL);
          }

          v516 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v526);
          *(v509 + 48) = v516;
        }

        v527 = *(v516 + 16);
        v528 = v527;
        if (v527 == HIDWORD(v527))
        {
          google::protobuf::RepeatedField<int>::Grow(v516 + 16, HIDWORD(v527), (HIDWORD(v527) + 1));
          v528 = *(v516 + 16);
        }

        v529 = *(v516 + 24);
        *(v516 + 16) = v528 + 1;
        *(v529 + 4 * v528) = ~v501;
        if (*(v509 + 60) == 12)
        {
          v521 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v530 = *(v509 + 8);
          if (v530)
          {
            v530 = *(v530 & 0xFFFFFFFFFFFFFFFELL);
          }

          v521 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v530);
          *(v509 + 48) = v521;
        }

        v524 = *(v521 + 40);
        v531 = *(v521 + 44);
        if (v524 != v531)
        {
          v525 = -1;
          goto LABEL_754;
        }

        google::protobuf::RepeatedField<long long>::Grow(v521 + 40, v531);
        v525 = -1;
      }

      else
      {
        if (v514 == 12)
        {
          v515 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v517 = *(v509 + 8);
          if (v517)
          {
            v517 = *(v517 & 0xFFFFFFFFFFFFFFFELL);
          }

          v515 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v517);
          *(v509 + 48) = v515;
        }

        v518 = *(v515 + 16);
        v519 = v518;
        if (v518 == HIDWORD(v518))
        {
          google::protobuf::RepeatedField<int>::Grow(v515 + 16, HIDWORD(v518), (HIDWORD(v518) + 1));
          v519 = *(v515 + 16);
        }

        v520 = *(v515 + 24);
        *(v515 + 16) = v519 + 1;
        *(v520 + 4 * v519) = v501;
        if (*(v509 + 60) == 12)
        {
          v521 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v522 = *(v509 + 8);
          if (v522)
          {
            v522 = *(v522 & 0xFFFFFFFFFFFFFFFELL);
          }

          v521 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v522);
          *(v509 + 48) = v521;
        }

        v524 = *(v521 + 40);
        v523 = *(v521 + 44);
        if (v524 != v523)
        {
          v525 = 1;
          goto LABEL_754;
        }

        google::protobuf::RepeatedField<long long>::Grow(v521 + 40, v523);
        v525 = 1;
      }

      v524 = *(v521 + 40);
      v2 = v768;
LABEL_754:
      v532 = *(v521 + 48);
      *(v521 + 40) = v524 + 1;
      *(v532 + 8 * v524) = v525;
      v533 = *(v509 + 60);
      if ((v760 & 0x80000000) != 0)
      {
        if (v533 == 12)
        {
          v535 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v545 = *(v509 + 8);
          if (v545)
          {
            v545 = *(v545 & 0xFFFFFFFFFFFFFFFELL);
          }

          v535 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v545);
          *(v509 + 48) = v535;
        }

        v546 = *(v535 + 16);
        v547 = v546;
        if (v546 == HIDWORD(v546))
        {
          google::protobuf::RepeatedField<int>::Grow(v535 + 16, HIDWORD(v546), (HIDWORD(v546) + 1));
          v547 = *(v535 + 16);
        }

        v548 = *(v535 + 24);
        *(v535 + 16) = v547 + 1;
        *(v548 + 4 * v547) = ~v760;
        if (*(v509 + 60) == 12)
        {
          v540 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v549 = *(v509 + 8);
          if (v549)
          {
            v549 = *(v549 & 0xFFFFFFFFFFFFFFFELL);
          }

          v540 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v549);
          *(v509 + 48) = v540;
        }

        v543 = *(v540 + 40);
        v550 = *(v540 + 44);
        if (v543 != v550)
        {
          v544 = 1;
          goto LABEL_783;
        }

        google::protobuf::RepeatedField<long long>::Grow(v540 + 40, v550);
        v544 = 1;
      }

      else
      {
        if (v533 == 12)
        {
          v534 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v536 = *(v509 + 8);
          if (v536)
          {
            v536 = *(v536 & 0xFFFFFFFFFFFFFFFELL);
          }

          v534 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v536);
          *(v509 + 48) = v534;
        }

        v537 = *(v534 + 16);
        v538 = v537;
        if (v537 == HIDWORD(v537))
        {
          google::protobuf::RepeatedField<int>::Grow(v534 + 16, HIDWORD(v537), (HIDWORD(v537) + 1));
          v538 = *(v534 + 16);
        }

        v539 = *(v534 + 24);
        *(v534 + 16) = v538 + 1;
        *(v539 + 4 * v538) = v760;
        if (*(v509 + 60) == 12)
        {
          v540 = *(v509 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v509);
          *(v509 + 60) = 12;
          v541 = *(v509 + 8);
          if (v541)
          {
            v541 = *(v541 & 0xFFFFFFFFFFFFFFFELL);
          }

          v540 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v541);
          *(v509 + 48) = v540;
        }

        v543 = *(v540 + 40);
        v542 = *(v540 + 44);
        if (v543 != v542)
        {
          v544 = -1;
LABEL_783:
          v551 = *(v540 + 48);
          *(v540 + 40) = v543 + 1;
          *(v551 + 8 * v543) = v544;
          if (*(v509 + 60) == 12)
          {
            v552 = *(v509 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v509);
            *(v509 + 60) = 12;
            v553 = *(v509 + 8);
            if (v553)
            {
              v553 = *(v553 & 0xFFFFFFFFFFFFFFFELL);
            }

            v552 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v553);
            *(v509 + 48) = v552;
          }

          v555 = *(v552 + 64);
          v554 = *(v552 + 68);
          if (v555 == v554)
          {
            google::protobuf::RepeatedField<long long>::Grow(v552 + 64, v554);
            v555 = *(v552 + 64);
          }

          v556 = *(v552 + 72);
          *(v552 + 64) = v555 + 1;
          *(v556 + 8 * v555) = 0;
          if (*(v509 + 60) == 12)
          {
            v557 = *(v509 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v509);
            *(v509 + 60) = 12;
            v558 = *(v509 + 8);
            if (v558)
            {
              v558 = *(v558 & 0xFFFFFFFFFFFFFFFELL);
            }

            v557 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v558);
            *(v509 + 48) = v557;
          }

          v560 = *(v557 + 64);
          v559 = *(v557 + 68);
          v469 = v507;
          v500 = v506;
          if (v560 == v559)
          {
            google::protobuf::RepeatedField<long long>::Grow(v557 + 64, v559);
            v560 = *(v557 + 64);
            v469 = v507;
            v500 = v506;
          }

          v561 = *(v557 + 72);
          *(v557 + 64) = v560 + 1;
          *(v561 + 8 * v560) = 0;
          goto LABEL_798;
        }

        google::protobuf::RepeatedField<long long>::Grow(v540 + 40, v542);
        v544 = -1;
      }

      v543 = *(v540 + 40);
      v2 = v768;
      goto LABEL_783;
    }

    if (v11 <= 17)
    {
      if (v11 == 16)
      {
        v122 = *(v766 + 6);
        if (*(v122 + 60) == 1)
        {
          v123 = *(v122 + 16);
          v124 = *(v122 + 40);
          memset(v794, 0, 24);
          __p[0] = v794;
          LOBYTE(__p[1]) = 0;
          v125 = v124 / v123;
          if (v125)
          {
            if ((v125 & 0x80000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          operator new();
        }
      }

      goto LABEL_862;
    }

    if (v11 == 18)
    {
      v104 = *(v766 + 6);
      v106 = v104 + 16;
      v105 = *(v104 + 16);
      v108 = v104 + 40;
      v107 = *(v104 + 40);
      if (v105 != v107)
      {
        operations_research::sat::ExpandCpModel(v105, v107);
      }

      *v794 = xmmword_23CE306D0;
      if (v105)
      {
        v109 = *(v104 + 24);
        v110 = v105 - 1;
        v111 = 4 * v105;
        while (1)
        {
          v112 = *v109;
          if (~v112 <= v112)
          {
            v113 = *v109;
          }

          else
          {
            v113 = ~v112;
          }

          LODWORD(v799) = v113;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v794, &v799, __p);
          if (LOBYTE(__p[2]) == 1)
          {
            *__p[1] = v799;
          }

          operations_research::Domain::Domain(__p, 0, v110);
          v114 = operations_research::sat::PresolveContext::IntersectDomainWith(v768, v112, __p, 0);
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if ((v114 & 1) == 0)
          {
            break;
          }

          ++v109;
          v111 -= 4;
          if (!v111)
          {
            v116 = (v104 + 48);
            v115 = *(v104 + 48);
            v117 = *(v104 + 40);
            if (!v117)
            {
LABEL_150:
              v2 = v768;
              goto LABEL_181;
            }

            v118 = 4 * v117;
            while (1)
            {
              v119 = *v115;
              if (~v119 <= v119)
              {
                v120 = *v115;
              }

              else
              {
                v120 = ~v119;
              }

              LODWORD(v799) = v120;
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v794, &v799, __p);
              if (LOBYTE(__p[2]) == 1)
              {
                *__p[1] = v799;
              }

              operations_research::Domain::Domain(__p, 0, v110);
              v121 = operations_research::sat::PresolveContext::IntersectDomainWith(v768, v119, __p, 0);
              if (__p[0])
              {
                operator delete(__p[1]);
              }

              if ((v121 & 1) == 0)
              {
                break;
              }

              ++v115;
              v118 -= 4;
              if (!v118)
              {
                goto LABEL_150;
              }
            }

            v2 = v768;
            if (dword_2810BFB00 >= 1)
            {
              v2 = v768;
              if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAF8, dword_2810BFB00))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 384);
                v331 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v331, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
                goto LABEL_434;
              }
            }

            goto LABEL_458;
          }
        }

        v2 = v768;
        if (dword_2810BFAE8 >= 1)
        {
          v2 = v768;
          if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFAE0, dword_2810BFAE8))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 377);
            v161 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v161, "Empty domain for a variable in ExpandInverse()", 0x2EuLL);
LABEL_434:
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
            v2 = v768;
          }
        }
      }

      else
      {
        v116 = (v104 + 48);
LABEL_181:
        if (v105 >= 1 && *&v794[8] >> 1 != 2 * v105)
        {
          v162 = 0;
          do
          {
            v163 = 0;
            do
            {
              v164 = *(*(v104 + 24) + 4 * v162);
              if (~v164 <= v164)
              {
                v165 = *(*(v104 + 24) + 4 * v162);
              }

              else
              {
                v165 = ~v164;
              }

              v166 = *(*(v104 + 48) + 4 * v163);
              if (~v166 > v166)
              {
                v166 = ~v166;
              }

              if (v162 != v163 && v165 == v166)
              {
                memset(&v797, 0, sizeof(v797));
                operator new();
              }

              ++v163;
            }

            while (v105 != v163);
            ++v162;
          }

          while (v162 != v105);
        }

        memset(__p, 0, 24);
        v799 = v2;
        LODWORD(v800[0]) = v105;
        *(&v800[0] + 1) = __p;
        {
          if (v105 >= 1)
          {
            for (i = 0; i != v105; ++i)
            {
              v152 = *(*(v104 + 24) + 4 * i);
              operations_research::sat::PresolveContext::DomainOf(v2, v152, &v771);
              v773.__r_.__value_.__r.__words[0] = 0;
              v153 = v771.__r_.__value_.__s.__data_[0];
              if (v771.__r_.__value_.__r.__words[0] >= 2)
              {
                if (v771.__r_.__value_.__s.__data_[0])
                {
                  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v773, &v771);
                  v153 = v771.__r_.__value_.__s.__data_[0];
                }

                else
                {
                  v773 = v771;
                }
              }

              if (v153)
              {
                operator delete(v771.__r_.__value_.__l.__size_);
              }

              if (v773.__r_.__value_.__r.__words[0] > 1)
              {
                v154 = v773.__r_.__value_.__s.__data_[0] & 1;
                if (v773.__r_.__value_.__s.__data_[0])
                {
                  v155 = v773.__r_.__value_.__l.__size_;
                }

                else
                {
                  v155 = &v773.__r_.__value_.__l.__size_;
                }

                v156 = *v155;
                if (v773.__r_.__value_.__s.__data_[0])
                {
                  v157 = v773.__r_.__value_.__l.__size_;
                }

                else
                {
                  v157 = &v773.__r_.__value_.__l.__size_;
                }

                if ((v773.__r_.__value_.__r.__words[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
                {
                  v158 = &v157[2 * (v773.__r_.__value_.__r.__words[0] >> 1)];
                  do
                  {
                    v159 = *(*v116 + 4 * v156);
                    LODWORD(v771.__r_.__value_.__l.__data_) = 0;
                    if (operations_research::sat::PresolveContext::HasVarValueEncoding(v768, v159, i, &v771))
                    {
                      operations_research::sat::PresolveContext::InsertVarValueEncoding(v768, LODWORD(v771.__r_.__value_.__l.__data_), v152, v156);
                    }

                    else
                    {
                      v160 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v152, v156);
                      operations_research::sat::PresolveContext::InsertVarValueEncoding(v768, v160, v159, i);
                    }

                    if (v156 == v157[1])
                    {
                      v157 += 2;
                      if (v157 != v158)
                      {
                        v156 = *v157;
                      }
                    }

                    else
                    {
                      ++v156;
                    }
                  }

                  while (v157 != v158);
                  v154 = v773.__r_.__value_.__s.__data_[0] & 1;
                }
              }

              else
              {
                v154 = v773.__r_.__value_.__r.__words[0];
              }

              if (v154)
              {
                operator delete(v773.__r_.__value_.__l.__size_);
              }

              v2 = v768;
            }
          }

          operations_research::sat::ConstraintProto::Clear(v766);
          *(&v773.__r_.__value_.__s + 23) = 17;
          strcpy(&v773, "inverse: expanded");
          operations_research::sat::PresolveContext::UpdateRuleStats(v2, &v773, 1, v341, v342);
          if (SHIBYTE(v773.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v773.__r_.__value_.__l.__data_);
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

LABEL_458:
      if (*v794 < 2uLL)
      {
        goto LABEL_862;
      }

      v343 = *&v794[16];
      v344 = v794[8];
      goto LABEL_460;
    }

    if (v11 != 24)
    {
      if (v11 != 27)
      {
        goto LABEL_865;
      }

      v12 = *(v766 + 6);
      v13 = *(v12 + 32);
      if (v13 <= *(*(v2 + 49) + 368) && v13 >= 2)
      {
        v16 = *(v12 + 24);
        v15 = v12 + 24;
        v17 = v16 + 7;
        v18 = ((v16 & 1) != 0 ? v17 : v15);
        v19 = -1;
        v20 = v18;
        do
        {
          v74 = *(*v20 + 4);
          if (v74)
          {
            v75 = *(*v20 + 3);
            for (j = 4 * v74; j; j -= 4)
            {
              if (*v75 < 0)
              {
                operations_research::sat::ExpandCpModel(v794);
              }

              if (v19 == -1)
              {
                v19 = *v75;
              }

              else if (*v75 != v19)
              {
                goto LABEL_92;
              }

              ++v75;
            }
          }

          ++v20;
        }

        while (v20 != &v18[v13]);
        if (v19 == -1)
        {
LABEL_92:
          v77 = 8 * v13;
          while (1)
          {
            v78 = *v18;
            v80 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            if (*(v766 + 15) == 12)
            {
              v82 = *(v766 + 6);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v766);
              *(v766 + 15) = 12;
              v83 = *(v766 + 1);
              if (v83)
              {
                v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
              }

              v82 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v83);
              *(v766 + 6) = v82;
            }

            v85 = *(v82 + 64);
            v84 = *(v82 + 68);
            if (v85 == v84)
            {
              google::protobuf::RepeatedField<long long>::Grow(v82 + 64, v84);
              v93 = *(v82 + 64);
              v84 = *(v82 + 68);
              v86 = *(v82 + 72);
              v87 = v93 + 1;
              *(v82 + 64) = v93 + 1;
              *(v86 + 8 * v93) = 0;
              if (v93 + 1 != v84)
              {
                goto LABEL_100;
              }
            }

            else
            {
              v86 = *(v82 + 72);
              v87 = v85 + 1;
              *(v82 + 64) = v85 + 1;
              *(v86 + 8 * v85) = 0;
              if (v85 + 1 != v84)
              {
                goto LABEL_100;
              }
            }

            google::protobuf::RepeatedField<long long>::Grow(v82 + 64, v84);
            v87 = *(v82 + 64);
            v86 = *(v82 + 72);
LABEL_100:
            *(v82 + 64) = v87 + 1;
            *(v86 + 8 * v87) = 0x7FFFFFFFFFFFFFFFLL;
            v88 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            if (*(v766 + 15) == 27)
            {
              v88 = *(v766 + 6);
            }

            v89 = v88[6];
            if (v89)
            {
              v90 = v89;
            }

            else
            {
              v90 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            operations_research::sat::AddLinearExpressionToLinearConstraint(v90, 1, v82, v79, v81);
            operations_research::sat::AddLinearExpressionToLinearConstraint(v78, 0xFFFFFFFFFFFFFFFFLL, v82, v91, v92);
            operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v2, v80);
            ++v18;
            v77 -= 8;
            if (!v77)
            {
              operator new();
            }
          }
        }
      }

      goto LABEL_862;
    }

    if (*(*(v2 + 49) + 812) == 1)
    {
      v126 = *(v766 + 6);
      v128 = *(v126 + 64);
      v127 = v126 + 64;
      v129 = (v128 + 7);
      if (v128)
      {
        v130 = v129;
      }

      else
      {
        v130 = v127;
      }

      v131 = *(v127 + 8);
      if (v131)
      {
        v132 = 8 * v131;
        do
        {
          if (!operations_research::sat::PresolveContext::IsFixed(v2, *v130))
          {
            operator new();
          }

          ++v130;
          v132 -= 8;
        }

        while (v132);
      }

      if (*(v766 + 15) == 24)
      {
        v133 = *(v766 + 6);
        v134 = v133[11];
        v135 = v133[12];
      }

      else
      {
        v134 = qword_2810BEB58;
        v135 = qword_2810BEB60;
        v133 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
      }

      if (v134 > v135)
      {
        if (dword_2810BFA88 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_5, dword_2810BFA88))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v794, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 105);
          v591 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v794, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v591, "Empty level domain in reservoir constraint.", 0x2BuLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v794);
          v2 = v768;
        }

        operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v2, &byte_23CE7F131, 0);
        goto LABEL_862;
      }

      v212 = *(v133 + 6);
      __src = operations_research::sat::PresolveContext::GetTrueLiteral(v2);
      v213 = v133[8];
      if (v213)
      {
        v214 = (v213 + 7);
      }

      else
      {
        v214 = (v133 + 8);
      }

      v750 = v133 + 8;
      v215 = *(v133 + 18);
      *v758 = v212;
      if (v215)
      {
        v216 = 0;
        v217 = 0;
        v218 = 8 * v215;
        do
        {
          v219 = operations_research::sat::PresolveContext::FixedValue(v2, *v214);
          v220 = v219 >> 63;
          if (v219 > 0)
          {
            LODWORD(v220) = 0;
          }

          v217 += v220;
          if (v219 > 0)
          {
            ++v216;
          }

          ++v214;
          v218 -= 8;
        }

        while (v218);
        *&v797.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
        if (v216 >= 1 && v217 >= 1)
        {
          v222 = (v212 - 1);
          *v752 = v133;
          if (v222 >= 1)
          {
            v223 = 0;
            v749 = v133 + 2;
            v224 = v212;
            v225 = 16;
            v226 = 1;
            v746 = (v212 - 1);
            do
            {
              v228 = __src;
              if (*(v133 + 10))
              {
                v228 = *(v133[6] + v223);
              }

              if (operations_research::sat::PresolveContext::LiteralIsFalse(v768, v228))
              {
                v227 = (v223 + 1);
              }

              else
              {
                if (*v749)
                {
                  v229 = (*v749 + 8 * v223 + 7);
                }

                else
                {
                  v229 = v749;
                }

                v227 = (v223 + 1);
                if (v223 + 1 < v212)
                {
                  v747 = v226;
                  v751 = *v229;
                  v748 = v225;
                  do
                  {
                    v230 = __src;
                    if (*(v133 + 10))
                    {
                      v230 = *(v133[6] + v226);
                    }

                    if (!operations_research::sat::PresolveContext::LiteralIsFalse(v768, v230))
                    {
                      v231 = v224;
                      if (*v749)
                      {
                        v232 = (*v749 + v225 - 1);
                      }

                      else
                      {
                        v232 = v749;
                      }

                      v233 = *v232;
                      ReifiedPrecedenceLiteral = operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v768, v751, *v232, v228, v230);
                      v236 = ReifiedPrecedenceLiteral;
                      v237 = (*v768 + 24);
                      if (*v237)
                      {
                        v237 = (*v237 + 8 * ReifiedPrecedenceLiteral + 7);
                      }

                      v238 = *v237;
                      v239 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v223, &v794[16], v235);
                      *v794 = &v794[16];
                      *&v794[8] = v239 - &v794[16];
                      __p[0] = " before ";
                      __p[1] = 8;
                      v241 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v226, v800 + 8, v240);
                      v799 = v800 + 8;
                      *&v800[0] = v241 - (v800 + 8);
                      absl::lts_20240722::StrCat(v794, __p, &v799, &v773);
                      v242 = *(v238 + 8);
                      if (v242)
                      {
                        v242 = *(v242 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      google::protobuf::internal::ArenaStringPtr::Set((v238 + 40), &v773, v242);
                      if (SHIBYTE(v773.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v773.__r_.__value_.__l.__data_);
                      }

                      __p[0] = __PAIR64__(v226, v223);
                      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v797, __p, v794);
                      if (v794[16] == 1)
                      {
                        v243 = *&v794[8];
                        **&v794[8] = __p[0];
                        *(v243 + 8) = 0;
                      }

                      *(*&v794[8] + 8) = v236;
                      v244 = operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v768, v233, v751, v230, v228);
                      v246 = v244;
                      v247 = (*v768 + 24);
                      if (*v247)
                      {
                        v247 = (*v247 + 8 * v244 + 7);
                      }

                      v248 = *v247;
                      v249 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v226, &v794[16], v245);
                      v133 = *v752;
                      *v794 = &v794[16];
                      *&v794[8] = v249 - &v794[16];
                      __p[0] = " before ";
                      __p[1] = 8;
                      v251 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v223, v800 + 8, v250);
                      v799 = v800 + 8;
                      *&v800[0] = v251 - (v800 + 8);
                      absl::lts_20240722::StrCat(v794, __p, &v799, &v773);
                      v252 = *(v248 + 8);
                      if (v252)
                      {
                        v252 = *(v252 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      google::protobuf::internal::ArenaStringPtr::Set((v248 + 40), &v773, v252);
                      if (SHIBYTE(v773.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v773.__r_.__value_.__l.__data_);
                      }

                      __p[0] = __PAIR64__(v223, v226);
                      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v797, __p, v794);
                      if (v794[16] == 1)
                      {
                        v253 = *&v794[8];
                        **&v794[8] = __p[0];
                        *(v253 + 8) = 0;
                      }

                      *(*&v794[8] + 8) = v246;
                      v224 = v231;
                    }

                    ++v226;
                    v225 += 8;
                  }

                  while (v224 != v226);
                  v212 = *v758;
                  v222 = v746;
                  v227 = (v223 + 1);
                  v226 = v747;
                  v225 = v748;
                }
              }

              ++v226;
              v225 += 8;
              v223 = v227;
            }

            while (v227 != v222);
          }

          v2 = v768;
          if (v212 >= 1)
          {
            v383 = 0;
            while (1)
            {
              v395 = __src;
              if (*(v133 + 10))
              {
                v395 = *(v133[6] + v383);
              }

              if (!operations_research::sat::PresolveContext::LiteralIsFalse(v768, v395))
              {
                break;
              }

LABEL_550:
              if (++v383 == *v758)
              {
                goto LABEL_535;
              }
            }

            v396 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v768 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v397 = v396;
            v398 = (v396 + 16);
            v399 = *(v396 + 16);
            v400 = v399;
            if (v399 == HIDWORD(v399))
            {
              google::protobuf::RepeatedField<int>::Grow(v396 + 16, HIDWORD(v399), (HIDWORD(v399) + 1));
              v400 = *v398;
            }

            v401 = 0;
            v402 = 0;
            v403 = *(v397 + 24);
            *(v397 + 16) = v400 + 1;
            *(v403 + 4 * v400) = v395;
            while (1)
            {
              if (v383 == v401)
              {
                goto LABEL_559;
              }

              v409 = __src;
              if (*(*v752 + 40))
              {
                v409 = *(*(*v752 + 48) + 4 * v401);
              }

              if (operations_research::sat::PresolveContext::LiteralIsFalse(v768, v409))
              {
                goto LABEL_559;
              }

              if (v797.__r_.__value_.__r.__words[0] > 1)
              {
                v412 = 0;
                _X9 = v797.__r_.__value_.__r.__words[2];
                __asm { PRFM            #4, [X9] }

                v417 = v383 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v401) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v401)));
                v418 = ((v417 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v417);
                v419 = vdup_n_s8(v418 & 0x7F);
                v420 = ((v797.__r_.__value_.__r.__words[2] >> 12) ^ (v418 >> 7)) & v797.__r_.__value_.__r.__words[0];
                v421 = *(v797.__r_.__value_.__r.__words[2] + v420);
                v422 = vceq_s8(v421, v419);
                if (!v422)
                {
                  goto LABEL_573;
                }

                do
                {
LABEL_568:
                  v423 = (v420 + (__clz(__rbit64(v422)) >> 3)) & v797.__r_.__value_.__r.__words[0];
                  v410 = (v798 + 12 * v423);
                  if (v401 == *v410 && v383 == *(v410 + 1))
                  {
                    v411 = (v797.__r_.__value_.__r.__words[2] + v423);
                    goto LABEL_583;
                  }

                  v422 &= ((v422 & 0x8080808080808080) - 1) & 0x8080808080808080;
                }

                while (v422);
LABEL_573:
                while (1)
                {
                  v410 = vceq_s8(v421, 0x8080808080808080);
                  if (v410)
                  {
                    break;
                  }

                  v412 += 8;
                  v420 = (v412 + v420) & v797.__r_.__value_.__r.__words[0];
                  v421 = *(v797.__r_.__value_.__r.__words[2] + v420);
                  v422 = vceq_s8(v421, v419);
                  if (v422)
                  {
                    goto LABEL_568;
                  }
                }
              }

              else if (v797.__r_.__value_.__l.__size_ >= 2)
              {
                v425 = v383 == HIDWORD(v797.__r_.__value_.__r.__words[2]) && v401 == LODWORD(v797.__r_.__value_.__r.__words[2]);
                v411 = &absl::lts_20240722::container_internal::kSooControl;
                if (!v425)
                {
                  v411 = 0;
                }

                v410 = &v797.__r_.__value_.__r.__words[2];
                goto LABEL_583;
              }

              v411 = 0;
LABEL_583:
              if (!v411)
              {
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v794, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 175);
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v794);
              }

              v426 = *(v410 + 2);
              if (*v750)
              {
                v427 = (*v750 + 8 * v401 + 7);
              }

              else
              {
                v427 = v750;
              }

              v428 = operations_research::sat::PresolveContext::FixedValue(v768, *v427);
              v429 = *(v397 + 60);
              if (v426 < 0)
              {
                if (v429 == 12)
                {
                  v431 = *(v397 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v397);
                  *(v397 + 60) = 12;
                  v437 = *(v397 + 8);
                  if (v437)
                  {
                    v437 = *(v437 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v431 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v437);
                  *(v397 + 48) = v431;
                }

                v438 = *(v431 + 16);
                v439 = v438;
                if (v438 == HIDWORD(v438))
                {
                  google::protobuf::RepeatedField<int>::Grow(v431 + 16, HIDWORD(v438), (HIDWORD(v438) + 1));
                  v439 = *(v431 + 16);
                }

                v440 = *(v431 + 24);
                *(v431 + 16) = v439 + 1;
                *(v440 + 4 * v439) = v426;
                if (*(v397 + 60) == 12)
                {
                  v441 = *(v397 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v397);
                  *(v397 + 60) = 12;
                  v442 = *(v397 + 8);
                  if (v442)
                  {
                    v442 = *(v442 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v441 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v442);
                  *(v397 + 48) = v441;
                }

                v444 = *(v441 + 40);
                v443 = *(v441 + 44);
                if (v444 == v443)
                {
                  google::protobuf::RepeatedField<long long>::Grow(v441 + 40, v443);
                  v444 = *(v441 + 40);
                }

                v445 = *(v441 + 48);
                *(v441 + 40) = v444 + 1;
                *(v445 + 8 * v444) = -v428;
                v402 -= v428;
                if (++v401 == *v758)
                {
LABEL_617:
                  if (*v750)
                  {
                    v446 = (*v750 + 8 * v383 + 7);
                  }

                  else
                  {
                    v446 = v750;
                  }

                  v133 = *v752;
                  v447 = operations_research::sat::PresolveContext::FixedValue(v768, *v446);
                  if (*(v397 + 60) == 12)
                  {
                    v448 = *(v397 + 48);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v397);
                    *(v397 + 60) = 12;
                    v449 = *(v397 + 8);
                    if (v449)
                    {
                      v449 = *(v449 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v448 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v449);
                    *(v397 + 48) = v448;
                  }

                  v450 = *(*v752 + 88);
                  v451 = (v450 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFSUB__(v450, v447);
                  v452 = v450 - v447;
                  if (_VF)
                  {
                    v452 = v451;
                  }

                  v453 = (v452 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFADD__(v452, v402);
                  v454 = v452 + v402;
                  if (_VF)
                  {
                    v455 = v453;
                  }

                  else
                  {
                    v455 = v454;
                  }

                  v457 = *(v448 + 64);
                  v456 = *(v448 + 68);
                  if (v457 == v456)
                  {
                    google::protobuf::RepeatedField<long long>::Grow(v448 + 64, v456);
                    v457 = *(v448 + 64);
                  }

                  v458 = *(v448 + 72);
                  *(v448 + 64) = v457 + 1;
                  *(v458 + 8 * v457) = v455;
                  if (*(v397 + 60) == 12)
                  {
                    v384 = *(v397 + 48);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v397);
                    *(v397 + 60) = 12;
                    v459 = *(v397 + 8);
                    if (v459)
                    {
                      v459 = *(v459 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v384 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v459);
                    *(v397 + 48) = v384;
                  }

                  v385 = *(*v752 + 96);
                  v386 = (v385 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFSUB__(v385, v447);
                  v388 = v385 - v447;
                  if (_VF)
                  {
                    v388 = v386;
                  }

                  v389 = (v388 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
                  _VF = __OFADD__(v388, v402);
                  v390 = v388 + v402;
                  if (_VF)
                  {
                    v391 = v389;
                  }

                  else
                  {
                    v391 = v390;
                  }

                  v393 = *(v384 + 64);
                  v392 = *(v384 + 68);
                  if (v393 == v392)
                  {
                    google::protobuf::RepeatedField<long long>::Grow(v384 + 64, v392);
                    v393 = *(v384 + 64);
                  }

                  v394 = *(v384 + 72);
                  *(v384 + 64) = v393 + 1;
                  *(v394 + 8 * v393) = v391;
                  operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v768, v397);
                  goto LABEL_550;
                }
              }

              else
              {
                if (v429 == 12)
                {
                  v430 = *(v397 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v397);
                  *(v397 + 60) = 12;
                  v432 = *(v397 + 8);
                  if (v432)
                  {
                    v432 = *(v432 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v430 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v432);
                  *(v397 + 48) = v430;
                }

                v433 = *(v430 + 16);
                v434 = v433;
                if (v433 == HIDWORD(v433))
                {
                  google::protobuf::RepeatedField<int>::Grow(v430 + 16, HIDWORD(v433), (HIDWORD(v433) + 1));
                  v434 = *(v430 + 16);
                }

                v435 = *(v430 + 24);
                *(v430 + 16) = v434 + 1;
                *(v435 + 4 * v434) = v426;
                if (*(v397 + 60) != 12)
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v397);
                  *(v397 + 60) = 12;
                  v436 = *(v397 + 8);
                  if (v436)
                  {
                    v436 = *(v436 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v404 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v436);
                  *(v397 + 48) = v404;
                  v406 = *(v404 + 40);
                  v405 = *(v404 + 44);
                  v407 = (v404 + 40);
                  if (v406 != v405)
                  {
                    goto LABEL_558;
                  }

LABEL_603:
                  google::protobuf::RepeatedField<long long>::Grow(v407, v405);
                  v406 = *v407;
                  goto LABEL_558;
                }

                v404 = *(v397 + 48);
                v406 = *(v404 + 40);
                v405 = *(v404 + 44);
                v407 = (v404 + 40);
                if (v406 == v405)
                {
                  goto LABEL_603;
                }

LABEL_558:
                v408 = *(v404 + 48);
                *(v404 + 40) = v406 + 1;
                *(v408 + 8 * v406) = v428;
LABEL_559:
                if (++v401 == *v758)
                {
                  goto LABEL_617;
                }
              }
            }
          }

LABEL_535:
          operations_research::sat::ConstraintProto::Clear(v766);
          v794[23] = 19;
          strcpy(v794, "reservoir: expanded");
          operations_research::sat::PresolveContext::UpdateRuleStats(v2, v794, 1, v381, v382);
          if ((v794[23] & 0x80000000) != 0)
          {
            operator delete(*v794);
          }

          if (v797.__r_.__value_.__r.__words[0] >= 2)
          {
            v344 = v797.__r_.__value_.__s.__data_[8];
            v343 = v797.__r_.__value_.__r.__words[2];
LABEL_460:
            operator delete((v343 - (v344 & 1) - 8));
            goto LABEL_862;
          }

          goto LABEL_862;
        }
      }

      else
      {
        *&v797.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
      }

      v345 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v346 = v345;
      if (*(v345 + 60) == 12)
      {
        v347 = *(v345 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v345);
        *(v346 + 60) = 12;
        v362 = *(v346 + 8);
        if (v362)
        {
          v362 = *(v362 & 0xFFFFFFFFFFFFFFFELL);
        }

        v347 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v362);
        *(v346 + 48) = v347;
      }

      if (v212 >= 1)
      {
        v363 = 0;
        v364 = 4 * v212;
        v365 = 8;
        do
        {
          v366 = __src;
          if (*(v133 + 10))
          {
            v366 = *(v133[6] + v363);
          }

          v367 = *(v347 + 16);
          v368 = v367;
          if (v367 == HIDWORD(v367))
          {
            google::protobuf::RepeatedField<int>::Grow(v347 + 16, HIDWORD(v367), (HIDWORD(v367) + 1));
            v368 = *(v347 + 16);
          }

          v369 = *(v347 + 24);
          *(v347 + 16) = v368 + 1;
          *(v369 + 4 * v368) = v366;
          if (*v750)
          {
            v370 = (*v750 + v365 - 1);
          }

          else
          {
            v370 = (v133 + 8);
          }

          v371 = operations_research::sat::PresolveContext::FixedValue(v2, *v370);
          v373 = *(v347 + 40);
          v372 = *(v347 + 44);
          if (v373 == v372)
          {
            google::protobuf::RepeatedField<long long>::Grow(v347 + 40, v372);
            v373 = *(v347 + 40);
          }

          v374 = *(v347 + 48);
          *(v347 + 40) = v373 + 1;
          *(v374 + 8 * v373) = v371;
          v363 += 4;
          v365 += 8;
        }

        while (v364 != v363);
      }

      v375 = v133[11];
      v377 = *(v347 + 64);
      v376 = *(v347 + 68);
      if (v377 == v376)
      {
        google::protobuf::RepeatedField<long long>::Grow(v347 + 64, v376);
        v377 = *(v347 + 64);
        v376 = *(v347 + 68);
      }

      v378 = *(v347 + 72);
      v379 = v377 + 1;
      *(v347 + 64) = v377 + 1;
      *(v378 + 8 * v377) = v375;
      v380 = v133[12];
      if (v377 + 1 == v376)
      {
        google::protobuf::RepeatedField<long long>::Grow(v347 + 64, v376);
        v379 = *(v347 + 64);
        v378 = *(v347 + 72);
      }

      *(v347 + 64) = v379 + 1;
      *(v378 + 8 * v379) = v380;
      operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v2, v346);
      goto LABEL_535;
    }

LABEL_862:
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v2);
    if (!*(v766 + 15))
    {
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v2, v762);
    }

    v6 = v762;
    if (*(v2 + 416) == 1)
    {
      if (**(v2 + 48) == 1)
      {
        *v794 = "UNSAT after expansion of ";
        *&v794[8] = 25;
        google::protobuf::Message::ShortDebugString(&v797);
      }

      goto LABEL_1222;
    }

LABEL_865:
    ++v6;
    v5 = *v2;
    v589 = *(*v2 + 56);
  }

  while (v6 < v589);
  *&v773.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  *&v771.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  *v769 = xmmword_23CE306D0;
  if (v589 < 1)
  {
    goto LABEL_1205;
  }

  v592 = 0;
  while (1)
  {
    v593 = v5 + 48;
    v594 = *(v5 + 48);
    if (v594)
    {
      v593 = v594 + 8 * v592 + 7;
    }

    v767 = *v593;
    v595 = *(*v593 + 60);
    if (v595 == 12)
    {
      v600 = *(v767 + 6);
      if (*(v600 + 16) != 2)
      {
        goto LABEL_1203;
      }

      v601 = *(v600 + 24);
      v603 = *v601;
      v602 = v601[1];
      if (operations_research::sat::PresolveContext::IsFixed(v2, *v601) || operations_research::sat::PresolveContext::IsFixed(v2, v602))
      {
        goto LABEL_1203;
      }

      v604 = *(v600 + 48);
      v605 = *v604;
      v606 = v604[1];
      operations_research::sat::PresolveContext::DomainOf(v2, v603, &v797);
      operations_research::Domain::MultiplicationBy(&v797, 0, v605, &v799);
      operations_research::Domain::RelaxIfTooComplex(&v799, __p);
      operations_research::sat::PresolveContext::DomainOf(v2, v602, &v785);
      operations_research::Domain::MultiplicationBy(&v785, 0, v606, &v787);
      v607 = operations_research::Domain::RelaxIfTooComplex(&v787, &v788);
      operations_research::Domain::AdditionWith(__p, &v788, v794, v607);
      if (v788)
      {
        operator delete(v789);
        if ((v787.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
LABEL_898:
          if ((v785 & 1) == 0)
          {
            goto LABEL_899;
          }

          goto LABEL_1129;
        }
      }

      else if ((v787.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        goto LABEL_898;
      }

      operator delete(v787.__r_.__value_.__l.__size_);
      if ((v785 & 1) == 0)
      {
LABEL_899:
        if ((__p[0] & 1) == 0)
        {
          goto LABEL_900;
        }

        goto LABEL_1130;
      }

LABEL_1129:
      operator delete(v786);
      if ((__p[0] & 1) == 0)
      {
LABEL_900:
        if ((v799 & 1) == 0)
        {
          goto LABEL_901;
        }

        goto LABEL_1131;
      }

LABEL_1130:
      operator delete(__p[1]);
      if ((v799 & 1) == 0)
      {
LABEL_901:
        if ((v797.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          goto LABEL_903;
        }

        goto LABEL_902;
      }

LABEL_1131:
      operator delete(*&v800[0]);
      if ((v797.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
LABEL_903:
        operations_research::Domain::FromFlatSpanOfIntervals(*(v600 + 72), *(v600 + 64), &v797, v608);
        operations_research::Domain::Complement(&v797, &v799);
        operations_research::Domain::IntersectionWith(v794, &v799, __p);
        if (v799)
        {
          operator delete(*&v800[0]);
        }

        if (v797.__r_.__value_.__s.__data_[0])
        {
          operator delete(v797.__r_.__value_.__l.__size_);
        }

        if (operations_research::Domain::Size(__p) != 1)
        {
LABEL_1199:
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          if (v794[0])
          {
            operator delete(*&v794[8]);
          }

          goto LABEL_1203;
        }

        v784 = v605;
        v783 = v606;
        v782 = operations_research::Domain::Min(__p);
        v781 = 0;
        v780 = 0;
        if (!operations_research::sat::SolveDiophantineEquationOfSizeTwo(&v784, &v783, &v782, &v781, &v780, v609))
        {
          operator new();
        }

        operations_research::sat::PresolveContext::DomainOf(v2, v603, &v787);
        operations_research::Domain::Domain(&v785, -v781);
        operations_research::Domain::AdditionWith(&v787, &v785, &v788, v610);
        operations_research::Domain::InverseMultiplicationBy(&v788, v783, &v797);
        operations_research::sat::PresolveContext::DomainOf(v2, v602, v776);
        operations_research::Domain::Domain(v775, -v780);
        operations_research::Domain::AdditionWith(v776, v775, v778, v611);
        operations_research::Domain::InverseMultiplicationBy(v778, -v784, v779);
        operations_research::Domain::IntersectionWith(&v797, v779, &v799);
        if (v779[0])
        {
          operator delete(v779[1]);
          if ((v778[0] & 1) == 0)
          {
LABEL_911:
            if ((v775[0] & 1) == 0)
            {
              goto LABEL_912;
            }

            goto LABEL_1136;
          }
        }

        else if ((v778[0] & 1) == 0)
        {
          goto LABEL_911;
        }

        operator delete(v778[1]);
        if ((v775[0] & 1) == 0)
        {
LABEL_912:
          if ((v776[0] & 1) == 0)
          {
            goto LABEL_913;
          }

          goto LABEL_1137;
        }

LABEL_1136:
        operator delete(v775[1]);
        if ((v776[0] & 1) == 0)
        {
LABEL_913:
          if ((v797.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            goto LABEL_914;
          }

          goto LABEL_1138;
        }

LABEL_1137:
        operator delete(v777);
        if ((v797.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
LABEL_914:
          if ((v788 & 1) == 0)
          {
            goto LABEL_915;
          }

          goto LABEL_1139;
        }

LABEL_1138:
        operator delete(v797.__r_.__value_.__l.__size_);
        if ((v788 & 1) == 0)
        {
LABEL_915:
          if ((v785 & 1) == 0)
          {
            goto LABEL_916;
          }

          goto LABEL_1140;
        }

LABEL_1139:
        operator delete(v789);
        if ((v785 & 1) == 0)
        {
LABEL_916:
          if ((v787.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
LABEL_918:
            if (operations_research::Domain::Size(&v799) <= 16)
            {
              operations_research::sat::PresolveContext::DomainOf(v2, v603, &v797);
              v612 = operations_research::Domain::Size(&v797);
              if (v797.__r_.__value_.__s.__data_[0])
              {
                operator delete(v797.__r_.__value_.__l.__size_);
              }

              operations_research::sat::PresolveContext::DomainOf(v2, v602, &v797);
              v613 = operations_research::Domain::Size(&v797);
              if (v797.__r_.__value_.__s.__data_[0])
              {
                operator delete(v797.__r_.__value_.__l.__size_);
              }

              v614 = v799;
              if (v799 > 1)
              {
                v617 = v799 & 1;
                v616 = *&v800[0];
                if (v799)
                {
                  v710 = *&v800[0];
                }

                else
                {
                  v710 = v800;
                }

                v615 = *v710;
              }

              else
              {
                v615 = 0;
                v616 = *&v800[0];
                v617 = v799;
              }

              if (v617)
              {
                v711 = v616;
              }

              else
              {
                v711 = v800;
              }

              if ((v799 & 0x1FFFFFFFFFFFFFFELL) != 0)
              {
                if (v612 == 2)
                {
                  operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v603, v781 + v783 * v615, 0);
                }

                else if (v613 == 2)
                {
                  v712 = v780;
                  v713 = v784;
                  if (operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v603, v781 + v783 * v615, 0))
                  {
                    operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v602, v712 - v713 * v615, 0);
                  }
                }

                else
                {
                  v714 = &v711[2 * (v799 >> 1)];
                  while (1)
                  {
                    v715 = v780;
                    v716 = v784;
                    if ((operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v603, v781 + v783 * v615, 0) & 1) == 0 || !operations_research::sat::PresolveContext::HasVarValueEncoding(v2, v602, v715 - v716 * v615, 0))
                    {
                      break;
                    }

                    if (v615 == v711[1])
                    {
                      v711 += 2;
                      if (v711 != v714)
                      {
                        v615 = *v711;
                      }
                    }

                    else
                    {
                      ++v615;
                    }

                    if (v711 == v714)
                    {
                      v614 = v799;
                      goto LABEL_1164;
                    }
                  }
                }
              }

              else
              {
LABEL_1164:
                if (v614 > 1)
                {
                  v719 = v614 & 1;
                  v718 = *&v800[0];
                  if (v614)
                  {
                    v720 = *&v800[0];
                  }

                  else
                  {
                    v720 = v800;
                  }

                  v717 = *v720;
                }

                else
                {
                  v717 = 0;
                  v718 = *&v800[0];
                  v719 = v614;
                }

                if (v719)
                {
                  v721 = v718;
                }

                else
                {
                  v721 = v800;
                }

                if ((v614 & 0x1FFFFFFFFFFFFFFELL) != 0)
                {
                  __srcb = &v721[2 * (v614 >> 1)];
                  do
                  {
                    v722 = v780;
                    v723 = v784;
                    v724 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v603, v781 + v783 * v717);
                    v725 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(v768, v602, v722 - v723 * v717);
                    v726 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v768 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                    v727 = v726;
                    if (*(v726 + 60) == 3)
                    {
                      v728 = *(v726 + 48);
                    }

                    else
                    {
                      operations_research::sat::ConstraintProto::clear_constraint(v726);
                      *(v727 + 60) = 3;
                      v729 = *(v727 + 8);
                      if (v729)
                      {
                        v729 = *(v729 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      v728 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v729);
                      *(v727 + 48) = v728;
                    }

                    v731 = *(v728 + 4);
                    v730 = *(v728 + 5);
                    v732 = v728 + 2;
                    if (v731 == v730)
                    {
                      google::protobuf::RepeatedField<int>::Grow(v728 + 2, v730, (v730 + 1));
                      v731 = *(v728 + 4);
                      v730 = *(v728 + 5);
                    }

                    v733 = v728[3];
                    v734 = v731 + 1;
                    *(v728 + 4) = v731 + 1;
                    *(v733 + 4 * v731) = ~v724;
                    if (v731 + 1 == v730)
                    {
                      google::protobuf::RepeatedField<int>::Grow(v728 + 2, v730, (v730 + 1));
                      v734 = *(v728 + 4);
                      LODWORD(v730) = *(v728 + 5);
                      v733 = v728[3];
                    }

                    v735 = (v734 + 1);
                    *v732 = v735;
                    *(v733 + 4 * v734) = ~v725;
                    v736 = *(v767 + 4);
                    if (v736)
                    {
                      v737 = *(v767 + 3);
                      v738 = 4 * v736;
                      do
                      {
                        v739 = *v737;
                        if (v735 == v730)
                        {
                          google::protobuf::RepeatedField<int>::Grow(v728 + 2, v735, (v735 + 1));
                          LODWORD(v735) = *(v728 + 4);
                          LODWORD(v730) = *(v728 + 5);
                          v733 = v728[3];
                        }

                        *v732 = v735 + 1;
                        *(v733 + 4 * v735) = ~v739;
                        ++v737;
                        v735 = (v735 + 1);
                        v738 -= 4;
                      }

                      while (v738);
                    }

                    if (v717 == v721[1])
                    {
                      v721 += 2;
                      if (v721 != __srcb)
                      {
                        v717 = *v721;
                      }
                    }

                    else
                    {
                      ++v717;
                    }
                  }

                  while (v721 != __srcb);
                }

                std::string::basic_string[abi:ne200100]<0>(&v797, "linear: expand small ax + by != cte");
                v2 = v768;
                operations_research::sat::PresolveContext::UpdateRuleStats(v768, &v797, 1, v740, v741);
                if (SHIBYTE(v797.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v797.__r_.__value_.__l.__data_);
                }

                operations_research::sat::ConstraintProto::Clear(v767);
              }
            }

            if (v799)
            {
              operator delete(*&v800[0]);
            }

            goto LABEL_1199;
          }

LABEL_917:
          operator delete(v787.__r_.__value_.__l.__size_);
          goto LABEL_918;
        }

LABEL_1140:
        operator delete(v786);
        if ((v787.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          goto LABEL_918;
        }

        goto LABEL_917;
      }

LABEL_902:
      operator delete(v797.__r_.__value_.__l.__size_);
      goto LABEL_903;
    }

    if (v595 != 13)
    {
      goto LABEL_882;
    }

    *v761 = *(v767 + 6);
    v596 = *(*v761 + 24);
    if (v596 < 2 || (*(v2 + 416) & 1) != 0)
    {
      goto LABEL_1203;
    }

    v756 = *(*(v2 + 49) + 316);
    v597 = *(*v761 + 16);
    __srca = (*v761 + 16);
    v598 = (v597 & 1) != 0 ? v597 + 7 : *v761 + 16;
    v599 = v598 + 8 * v596;
    do
    {
      if (!*(*v598 + 16))
      {
        goto LABEL_1009;
      }

      LODWORD(v787.__r_.__value_.__l.__data_) = **(*v598 + 24);
      if (operations_research::sat::PresolveContext::IsFixed(v2, v787.__r_.__value_.__l.__data_))
      {
        goto LABEL_1009;
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v769, &v787, v794);
      if ((v794[16] & 1) == 0)
      {
        if (v771.__r_.__value_.__r.__words[0] <= 1)
        {
          if (v771.__r_.__value_.__l.__size_ < 2)
          {
            goto LABEL_938;
          }

          v628 = LODWORD(v771.__r_.__value_.__r.__words[2]) == LODWORD(v787.__r_.__value_.__l.__data_);
          v629 = v773.__r_.__value_.__r.__words[0];
          if (v773.__r_.__value_.__r.__words[0] <= 1)
          {
            goto LABEL_939;
          }

          goto LABEL_1012;
        }

        v631 = 0;
        _X10 = v771.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X10] }

        v634 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v787.__r_.__value_.__l.__data_)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v787.__r_.__value_.__l.__data_)));
        v635 = vdup_n_s8(v634 & 0x7F);
        v636 = ((v634 >> 7) ^ (v771.__r_.__value_.__r.__words[2] >> 12)) & v771.__r_.__value_.__r.__words[0];
        v637 = *(v771.__r_.__value_.__r.__words[2] + v636);
        v638 = vceq_s8(v637, v635);
        if (!v638)
        {
          goto LABEL_945;
        }

LABEL_943:
        while (*(v772 + 4 * ((v636 + (__clz(__rbit64(v638)) >> 3)) & v771.__r_.__value_.__r.__words[0])) != LODWORD(v787.__r_.__value_.__l.__data_))
        {
          v638 &= ((v638 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v638)
          {
LABEL_945:
            while (!*&vceq_s8(v637, 0x8080808080808080))
            {
              v631 += 8;
              v636 = (v631 + v636) & v771.__r_.__value_.__r.__words[0];
              v637 = *(v771.__r_.__value_.__r.__words[2] + v636);
              v638 = vceq_s8(v637, v635);
              if (v638)
              {
                goto LABEL_943;
              }
            }

LABEL_938:
            v628 = 0;
            v629 = v773.__r_.__value_.__r.__words[0];
            if (v773.__r_.__value_.__r.__words[0] <= 1)
            {
LABEL_939:
              if (v773.__r_.__value_.__l.__size_ < 2)
              {
                goto LABEL_1009;
              }

              v630 = LODWORD(v773.__r_.__value_.__r.__words[2]) != LODWORD(v787.__r_.__value_.__l.__data_);
              if (!v628)
              {
                goto LABEL_1009;
              }

              goto LABEL_1008;
            }

LABEL_1012:
            v621 = 0;
            _X10 = v773.__r_.__value_.__r.__words[2];
            __asm { PRFM            #4, [X10] }

            v657 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v787.__r_.__value_.__l.__data_)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + LODWORD(v787.__r_.__value_.__l.__data_)));
            v622 = (v657 >> 7) ^ (v773.__r_.__value_.__r.__words[2] >> 12);
            v658 = vdup_n_s8(v657 & 0x7F);
            while (1)
            {
              v618 = v622 & v629;
              v619 = *(v773.__r_.__value_.__r.__words[2] + v618);
              v620 = vceq_s8(v619, v658);
              if (v620)
              {
                break;
              }

LABEL_928:
              if (vceq_s8(v619, 0x8080808080808080))
              {
                goto LABEL_1009;
              }

              v621 += 8;
              v622 = v621 + v618;
            }

            while (*(v774 + 4 * ((v618 + (__clz(__rbit64(v620)) >> 3)) & v629)) != LODWORD(v787.__r_.__value_.__l.__data_))
            {
              v620 &= ((v620 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v620)
              {
                goto LABEL_928;
              }
            }

LABEL_1007:
            v630 = 0;
            if (!v628)
            {
              goto LABEL_1009;
            }

LABEL_1008:
            if (v630)
            {
              goto LABEL_1009;
            }

            goto LABEL_1018;
          }
        }

        v628 = 1;
        v629 = v773.__r_.__value_.__r.__words[0];
        if (v773.__r_.__value_.__r.__words[0] <= 1)
        {
          goto LABEL_939;
        }

        goto LABEL_1012;
      }

      data_low = SLODWORD(v787.__r_.__value_.__l.__data_);
      **&v794[8] = v787.__r_.__value_.__l.__data_;
      v625 = (*(v2 + 84) + 32 * data_low);
      if (v625[1] < 2uLL)
      {
        goto LABEL_1009;
      }

      v626 = (v625 + 2);
      if (*v625 >= 2uLL)
      {
        v627 = v625[2];
        v626 = v625[3];
        if (*v627 <= -2)
        {
          do
          {
            v639 = __clz(__rbit64((*v627 | ~(*v627 >> 7)) & 0x101010101010101)) >> 3;
            v627 = (v627 + v639);
            v626 += v639;
          }

          while (*v627 < -1);
        }
      }

      else
      {
        v627 = &absl::lts_20240722::container_internal::kSooControl;
      }

      v640 = 0;
      v641 = 0;
      do
      {
        v642 = *v626;
        if ((v642 & 0x80000000) != 0)
        {
          goto LABEL_992;
        }

        v643 = *(*v768 + 48);
        v644 = v643 + 8 * v642 + 7;
        if ((v643 & 1) == 0)
        {
          v644 = *v768 + 48;
        }

        v645 = *v644;
        v646 = *(*v644 + 60);
        if (v646 > 16)
        {
          if (v646 <= 18)
          {
            goto LABEL_961;
          }

          if (v646 == 19 || v646 == 27)
          {
            v640 = 1;
          }

          goto LABEL_990;
        }

        switch(v646)
        {
          case 12:
            v647 = *(v645 + 48);
            v648 = *(v647 + 4);
            if (v648 == 1)
            {
              operations_research::Domain::FromFlatSpanOfIntervals(v647[9], *(v647 + 16), v794, v623);
              if (operations_research::Domain::IsFixed(v794))
              {
                IsFixed = 1;
                goto LABEL_976;
              }

              operations_research::Domain::InverseMultiplicationBy(v794, *v647[6], &v797);
              operations_research::Domain::Complement(&v797, &v799);
              operations_research::sat::PresolveContext::DomainOf(v768, *v647[3], &v788);
              operations_research::Domain::IntersectionWith(&v799, &v788, __p);
              if ((v788 & 1) == 0)
              {
                if ((v799 & 1) == 0)
                {
                  goto LABEL_971;
                }

LABEL_996:
                operator delete(*&v800[0]);
                if ((v797.__r_.__value_.__s.__data_[0] & 1) == 0)
                {
                  goto LABEL_973;
                }

LABEL_972:
                operator delete(v797.__r_.__value_.__l.__size_);
                goto LABEL_973;
              }

              operator delete(v789);
              if (v799)
              {
                goto LABEL_996;
              }

LABEL_971:
              if (v797.__r_.__value_.__s.__data_[0])
              {
                goto LABEL_972;
              }

LABEL_973:
              if (operations_research::Domain::IsEmpty(__p))
              {
                IsFixed = 0;
                if (__p[0])
                {
                  goto LABEL_975;
                }
              }

              else
              {
                IsFixed = operations_research::Domain::IsFixed(__p);
                if (__p[0])
                {
LABEL_975:
                  operator delete(__p[1]);
                }
              }

LABEL_976:
              if (v794[0])
              {
                operator delete(*&v794[8]);
                v650 = *(v645 + 60);
                if (!IsFixed)
                {
                  goto LABEL_983;
                }
              }

              else
              {
                v650 = *(v645 + 60);
                if (!IsFixed)
                {
                  goto LABEL_983;
                }
              }

              v651 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (v650 == 12)
              {
                v651 = *(v645 + 48);
              }

              if (LODWORD(v787.__r_.__value_.__l.__data_) == *v651[3])
              {
                goto LABEL_961;
              }

LABEL_983:
              if (v650 == 12)
              {
                v647 = *(v645 + 48);
                v648 = *(v647 + 4);
                goto LABEL_985;
              }

              v647 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (off_2810BEE58 < 3)
              {
                break;
              }
            }

            else
            {
LABEL_985:
              if (v648 <= 2)
              {
                break;
              }
            }

            if (*(v647 + 16) == 2)
            {
              v640 |= *v647[9] == v647[9][1];
            }

            break;
          case 14:
            v641 |= *(*(v645 + 48) + 36) == LODWORD(v787.__r_.__value_.__l.__data_);
            break;
          case 16:
LABEL_961:
            v641 = 1;
            break;
        }

LABEL_990:
        if (v641 & 1) != 0 && (v640)
        {
          v640 = 1;
          goto LABEL_1001;
        }

LABEL_992:
        v653 = *(v627 + 1);
        v627 = (v627 + 1);
        LOBYTE(v652) = v653;
        ++v626;
        if (v653 <= -2)
        {
          do
          {
            v654 = __clz(__rbit64((*v627 | ~(*v627 >> 7)) & 0x101010101010101)) >> 3;
            v627 = (v627 + v654);
            v626 += v654;
            v652 = *v627;
          }

          while (v652 < -1);
        }
      }

      while (v652 != 255);
      if ((v641 & 1) == 0)
      {
        v2 = v768;
        if ((v640 & 1) == 0)
        {
          goto LABEL_1009;
        }

        v628 = 0;
        goto LABEL_1005;
      }

LABEL_1001:
      v2 = v768;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v773, &v787, v794);
      if (v794[16] == 1)
      {
        **&v794[8] = v787.__r_.__value_.__l.__data_;
      }

      if (v640)
      {
        v628 = 1;
LABEL_1005:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v771, &v787, v794);
        if (v794[16] == 1)
        {
          **&v794[8] = v787.__r_.__value_.__l.__data_;
        }

        goto LABEL_1007;
      }

LABEL_1009:
      v598 += 8;
    }

    while (v598 != v599);
LABEL_1018:
    v659 = *(*v761 + 24);
    v660 = (*v761 + 16);
    if (*(*v761 + 16))
    {
      v660 = (*(*v761 + 16) + 7);
    }

    operations_research::sat::PresolveContext::DomainSuperSetOf(v2, *v660, &v788);
    if (v659 >= 2)
    {
      v661 = v659 - 1;
      v662 = 16;
      do
      {
        if (*__srca)
        {
          v663 = (*__srca + v662 - 1);
        }

        else
        {
          v663 = (*v761 + 16);
        }

        operations_research::sat::PresolveContext::DomainSuperSetOf(v2, *v663, __p);
        operations_research::Domain::UnionWith(&v788, __p, v794);
        if (v788)
        {
          operator delete(v789);
        }

        v788 = *v794;
        v789 = *&v794[8];
        *v794 = 0;
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        v662 += 8;
        --v661;
      }

      while (v661);
    }

    if (*(v767 + 15) == 13)
    {
      v664 = *(v767 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v767);
      *(v767 + 15) = 13;
      v665 = *(v767 + 1);
      if (v665)
      {
        v665 = *(v665 & 0xFFFFFFFFFFFFFFFELL);
      }

      v664 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v665);
      *(v767 + 6) = v664;
    }

    v666 = *(v664 + 24);
    if (v666 < 1)
    {
      v667 = 0;
    }

    else
    {
      v667 = 0;
      v668 = (v664 + 16);
      v669 = 8;
      v670 = *(v664 + 24);
      do
      {
        if (*v668)
        {
          v671 = (*v668 + v669 - 1);
        }

        else
        {
          v671 = (v664 + 16);
        }

        v667 += operations_research::sat::PresolveContext::IsFullyEncoded(v2, *v671);
        v669 += 8;
        --v670;
      }

      while (v670);
    }

    if (operations_research::Domain::Size(&v788) <= 2 * *(v664 + 24) || operations_research::Domain::Size(&v788) < 33 || v667 == v666 && operations_research::Domain::Size(&v788) < 256 || (v756 & 1) != 0)
    {
      v757 = operations_research::Domain::Size(&v788);
      if (v788 > 1)
      {
        v674 = v788 & 1;
        v673 = v789;
        if (v788)
        {
          v675 = v789;
        }

        else
        {
          v675 = &v789;
        }

        v672 = *v675;
      }

      else
      {
        v672 = 0;
        v673 = v789;
        v674 = v788;
      }

      *v755 = v659;
      if (v674)
      {
        v676 = v673;
      }

      else
      {
        v676 = &v789;
      }

      if ((v788 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v677 = &v676[2 * (v788 >> 1)];
        while (2)
        {
          memset(v794, 0, 24);
          v678 = *(*v761 + 16);
          if (v678)
          {
            v679 = (v678 + 7);
          }

          else
          {
            v679 = (*v761 + 16);
          }

          v680 = *(*v761 + 24);
          if (v680)
          {
            v681 = 0;
            v682 = 8 * v680;
            do
            {
              v683 = *v679;
              if (operations_research::sat::PresolveContext::DomainContains(v768, *v679, v672))
              {
                v684 = *&v794[8];
                if (*&v794[8] >= *&v794[16])
                {
                  v685 = std::vector<operations_research::sat::LinearExpressionProto>::__emplace_back_slow_path<operations_research::sat::LinearExpressionProto const&>(v794, v683);
                }

                else
                {
                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(*&v794[8], 0, v683);
                  v685 = v684 + 80;
                }

                *&v794[8] = v685;
                v681 += operations_research::sat::PresolveContext::IsFixed(v768, v683);
              }

              ++v679;
              v682 -= 8;
            }

            while (v682);
            if (v681 > 1)
            {
              operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v768, &byte_23CE7F131, 0);
LABEL_1074:
              v686 = 0;
              goto LABEL_1107;
            }

            if (v681 == 1)
            {
              v687 = *v794;
              v688 = *&v794[8];
              while (1)
              {
                if (v687 == v688)
                {
                  goto LABEL_1086;
                }

                if (!operations_research::sat::PresolveContext::IsFixed(v768, v687))
                {
                  break;
                }

LABEL_1078:
                v687 = (v687 + 80);
              }

              v689 = operations_research::Domain::Domain(&v799, v672);
              operations_research::Domain::Complement(v689, __p);
              v690 = operations_research::sat::PresolveContext::IntersectDomainWith(v768, v687, __p, 0);
              if (__p[0])
              {
                operator delete(__p[1]);
                if (v799)
                {
                  goto LABEL_1085;
                }
              }

              else if (v799)
              {
LABEL_1085:
                operator delete(*&v800[0]);
              }

              if ((v690 & 1) == 0)
              {
                if (dword_2810BFB78 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFB70, dword_2810BFB78))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_expand.cc", 2186);
                  v699 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v699, "Empty domain for a variable in MaybeExpandAllDiff()", 0x33uLL);
                  absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
                  v686 = 0;
                  goto LABEL_1107;
                }

                goto LABEL_1074;
              }

              goto LABEL_1078;
            }
          }

LABEL_1086:
          v691 = *v768;
          if (v757 == *v755)
          {
            v692 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v691 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v693 = v692;
            if (*(v692 + 60) != 29)
            {
              operations_research::sat::ConstraintProto::clear_constraint(v692);
              *(v693 + 60) = 29;
              v694 = *(v693 + 8);
              if (v694)
              {
                v694 = *(v694 & 0xFFFFFFFFFFFFFFFELL);
              }

LABEL_1096:
              v696 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v694);
              *(v693 + 48) = v696;
              v697 = *v794;
              v698 = *&v794[8];
              if (*v794 == *&v794[8])
              {
LABEL_1097:
                v686 = 1;
                goto LABEL_1108;
              }

              do
              {
LABEL_1103:
                if (operations_research::sat::PresolveContext::DomainContains(v768, v697, v672))
                {
                  AffineValueEncoding = operations_research::sat::PresolveContext::GetOrCreateAffineValueEncoding(v768, v697, v672);
                  v702 = v696[2];
                  v703 = v702;
                  if (v702 == HIDWORD(v702))
                  {
                    google::protobuf::RepeatedField<int>::Grow(v696 + 2, HIDWORD(v702), (HIDWORD(v702) + 1));
                    v703 = *(v696 + 4);
                  }

                  v700 = v696[3];
                  *(v696 + 4) = v703 + 1;
                  *(v700 + 4 * v703) = AffineValueEncoding;
                }

                v697 = (v697 + 80);
              }

              while (v697 != v698);
              v686 = 1;
LABEL_1107:
              v697 = *v794;
LABEL_1108:
              if (v697)
              {
                v704 = *&v794[8];
                v705 = v697;
                if (*&v794[8] != v697)
                {
                  do
                  {
                    operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v704 - 80));
                  }

                  while (v704 != v697);
                  v705 = *v794;
                }

                *&v794[8] = v697;
                operator delete(v705);
              }

              if (!v686)
              {
                goto LABEL_1124;
              }

              if (v672 == v676[1])
              {
                v676 += 2;
                if (v676 != v677)
                {
                  v672 = *v676;
                }
              }

              else
              {
                ++v672;
              }

              if (v676 == v677)
              {
                goto LABEL_1117;
              }

              continue;
            }
          }

          else
          {
            v695 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v691 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v693 = v695;
            if (*(v695 + 60) != 26)
            {
              operations_research::sat::ConstraintProto::clear_constraint(v695);
              *(v693 + 60) = 26;
              v694 = *(v693 + 8);
              if (v694)
              {
                v694 = *(v694 & 0xFFFFFFFFFFFFFFFELL);
              }

              goto LABEL_1096;
            }
          }

          break;
        }

        v696 = *(v693 + 48);
        v697 = *v794;
        v698 = *&v794[8];
        if (*v794 == *&v794[8])
        {
          goto LABEL_1097;
        }

        goto LABEL_1103;
      }

LABEL_1117:
      *v794 = "all_diff:";
      *&v794[8] = 9;
      v706 = 12;
      if (v757 != *v755)
      {
        v706 = 0;
      }

      v707 = " permutation";
      if (v757 != *v755)
      {
        v707 = &byte_23CE7F131;
      }

      __p[0] = v707;
      __p[1] = v706;
      v799 = " expanded";
      *&v800[0] = 9;
      v797.__r_.__value_.__r.__words[0] = &byte_23CE7F131;
      v797.__r_.__value_.__l.__size_ = 0;
      absl::lts_20240722::StrCat(v794, __p, &v799, &v797, &v787);
      operations_research::sat::PresolveContext::UpdateRuleStats(v768, &v787, 1, v708, v709);
      if (SHIBYTE(v787.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v787.__r_.__value_.__l.__data_);
      }

      operations_research::sat::ConstraintProto::Clear(v767);
    }

LABEL_1124:
    if (v788)
    {
      operator delete(v789);
    }

    v2 = v768;
LABEL_1203:
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v2);
    if (!*(v767 + 15))
    {
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v2, v592);
    }

    if (*(v2 + 416))
    {
      break;
    }

    v5 = *v2;
LABEL_882:
    if (++v592 >= *(v5 + 56))
    {
      goto LABEL_1205;
    }
  }

  if (**(v2 + 48) == 1)
  {
    *v794 = "UNSAT after expansion of ";
    *&v794[8] = 25;
    google::protobuf::Message::ShortDebugString(&v797);
  }

LABEL_1213:
  if (v769[0] >= 2)
  {
    operator delete((v770 - (v769[1] & 1) - 8));
    if (v771.__r_.__value_.__r.__words[0] >= 2)
    {
      goto LABEL_1218;
    }

LABEL_1215:
    if (v773.__r_.__value_.__r.__words[0] >= 2)
    {
LABEL_1219:
      operator delete((v773.__r_.__value_.__r.__words[2] - (v773.__r_.__value_.__s.__data_[8] & 1) - 8));
    }
  }

  else
  {
    if (v771.__r_.__value_.__r.__words[0] < 2)
    {
      goto LABEL_1215;
    }

LABEL_1218:
    operator delete((v771.__r_.__value_.__r.__words[2] - (v771.__r_.__value_.__s.__data_[8] & 1) - 8));
    if (v773.__r_.__value_.__r.__words[0] >= 2)
    {
      goto LABEL_1219;
    }
  }

LABEL_1222:
  v745 = *MEMORY[0x277D85DE8];
}