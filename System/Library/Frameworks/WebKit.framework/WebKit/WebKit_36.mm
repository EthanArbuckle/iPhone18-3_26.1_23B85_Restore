void *IPC::ArgumentCoder<WebCore::JsonWebKey,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 96));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 104));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 120));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 128));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 136));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 144));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 152);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 176));
}

uint64_t IPC::ArgumentCoder<WebCore::CryptoKeyData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 2));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<WebCore::JsonWebKey>,void>::encode<IPC::Encoder,std::optional<WebCore::JsonWebKey> const&>(a1, a2 + 32);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 224));
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2 + 232);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, a2 + 248);

  return IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 264));
}

void IPC::ArgumentCoder<WebCore::CryptoKeyData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v154 = *(a1 + 3);
    if (v154)
    {
      if (v4)
      {
        (*(*v154 + 16))(v154);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_317:
    *a1 = 0;
    *(a1 + 1) = 0;
    v155 = *(a1 + 3);
    if (v155)
    {
      if (v4)
      {
        (*(*v155 + 16))(v155);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_320;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_320;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_317;
  }

  v7 = *v5;
  if (v7 < 6)
  {
    v181 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_320:
  *a1 = 0;
  *(a1 + 1) = 0;
  v156 = *(a1 + 3);
  if (v156 && v4)
  {
    (*(*v156 + 16))(v156, v6);
  }

  v181 = 0;
LABEL_5:
  v180 = IPC::Decoder::decode<WebCore::CryptoAlgorithmIdentifier>(a1);
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v157 = *(a1 + 3);
    if (v157)
    {
      if (v8)
      {
        (*(*v157 + 16))(v157);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_326:
    *a1 = 0;
    *(a1 + 1) = 0;
    v158 = *(a1 + 3);
    if (v158)
    {
      if (v8)
      {
        (*(*v158 + 16))(v158);
        v11 = 0;
        v10 = *a1;
        v8 = *(a1 + 1);
        goto LABEL_329;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    v11 = 0;
    goto LABEL_329;
  }

  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
    goto LABEL_326;
  }

  v11 = *v9;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_9;
  }

LABEL_329:
  *a1 = 0;
  *(a1 + 1) = 0;
  v159 = *(a1 + 3);
  if (v159 && v8)
  {
    (*(*v159 + 16))(v159, v10);
  }

  v12 = 0;
LABEL_9:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v179 = v13;
  v14 = IPC::Decoder::decode<float>(a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, &v201);
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v17 = *a1;
  if (v15 <= &v16[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v160 = *(a1 + 3);
    if (v160)
    {
      if (v15)
      {
        (*(*v160 + 16))(v160);
        v15 = *(a1 + 1);
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_333;
  }

  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
LABEL_333:
    *a1 = 0;
    *(a1 + 1) = 0;
    v161 = *(a1 + 3);
    if (v161)
    {
      if (v15)
      {
        (*(*v161 + 16))(v161);
        v17 = *a1;
        v15 = *(a1 + 1);
        goto LABEL_336;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_336:
    *a1 = 0;
    *(a1 + 1) = 0;
    v162 = *(a1 + 3);
    if (v162 && v15)
    {
      (*(*v162 + 16))(v162, v17);
    }

LABEL_280:
    v198[0] = 0;
    v200 = 0;
    goto LABEL_205;
  }

  v18 = *v16;
  if (v18 >= 2)
  {
    goto LABEL_336;
  }

  if (!v18)
  {
    LOBYTE(v186) = 0;
    v191 = 0;
    std::__optional_move_base<WebCore::JsonWebKey,false>::__optional_move_base[abi:sn200100](v198, &v186);
    v200 = 1;
    if (v191 != 1)
    {
LABEL_205:
      v103 = *(a1 + 1);
      if ((v200 & 1) == 0)
      {
        v126 = *a1;
        *a1 = 0;
        *(a1 + 1) = 0;
        v127 = *(a1 + 3);
        if (!v127 || !v103)
        {
          v103 = 0;
          v104 = *a1;
          goto LABEL_266;
        }

        (*(*v127 + 16))(v127, v126);
        v103 = *(a1 + 1);
      }

      v104 = *a1;
      v105 = *(a1 + 2);
      if (v103 > &v105[-*a1])
      {
        *(a1 + 2) = v105 + 1;
        if (v105)
        {
          v106 = *v105;
          if (v106 < 2)
          {
            if (!v106)
            {
              v109 = 0;
              v108 = 0;
              v110 = 0x10000;
              goto LABEL_216;
            }

            v107 = IPC::Decoder::decode<WebCore::CryptoAlgorithmIdentifier>(a1);
            if ((v107 & 0xFF00) != 0)
            {
              v108 = v107;
            }

            else
            {
              v108 = 0;
            }

            v109 = 256;
            if (v107 > 0xFFu)
            {
              v110 = (v107 << 8) & 0xFF0000;
              goto LABEL_216;
            }

LABEL_273:
            v131 = *a1;
            v132 = *(a1 + 1);
            *a1 = 0;
            *(a1 + 1) = 0;
            v133 = *(a1 + 3);
            if (v133 && v132)
            {
              (*(*v133 + 16))(v133, v131);
            }

            v110 = 0;
LABEL_216:
            IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v205);
            IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v252);
            v111 = *(a1 + 1);
            v112 = *(a1 + 2);
            v113 = *a1;
            if (v111 <= &v112[-*a1])
            {
              *a1 = 0;
              *(a1 + 1) = 0;
              v163 = *(a1 + 3);
              if (v163)
              {
                if (v111)
                {
                  (*(*v163 + 16))(v163);
                  v111 = *(a1 + 1);
                }
              }

              else
              {
                v111 = 0;
              }
            }

            else
            {
              v114 = v112 + 1;
              *(a1 + 2) = v112 + 1;
              if (v112)
              {
                if (*v112 < 2u)
                {
                  if (!*v112)
                  {
                    v117 = 0;
                    LOWORD(v115) = 0;
                    v116 = 0x10000;
                    if (!v113)
                    {
LABEL_369:
                      *a2 = 0;
                      *(a2 + 272) = 0;
LABEL_247:
                      if (v207 == 1 && v206 == 1)
                      {
                        v122 = v205;
                        v205 = 0;
                        if (v122)
                        {
                          if (atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v122, v113);
                          }
                        }
                      }

                      if (v200 == 1 && v199 == 1)
                      {
                        WebCore::JsonWebKey::~JsonWebKey(v198, v113);
                      }

                      if (v204 == 1 && v203 == 1)
                      {
                        v125 = v201;
                        if (v201)
                        {
                          v201 = 0;
                          v202 = 0;
                          WTF::fastFree(v125, v113);
                        }
                      }

                      return;
                    }

LABEL_226:
                    if (v181 <= 0xFF)
                    {
                      goto LABEL_413;
                    }

                    if (v180 <= 0xFFu)
                    {
                      goto LABEL_413;
                    }

                    if ((v12 & 1) == 0)
                    {
                      goto LABEL_413;
                    }

                    if ((v14 & 0x100000000) == 0)
                    {
                      goto LABEL_413;
                    }

                    if ((v204 & 1) == 0)
                    {
                      goto LABEL_413;
                    }

                    std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v183, &v201);
                    if ((v200 & 1) == 0)
                    {
                      goto LABEL_413;
                    }

                    std::__optional_move_base<WebCore::JsonWebKey,false>::__optional_move_base[abi:sn200100](v182, v198);
                    v118 = v108 | v109;
                    if (!((v108 | v109 | v110) >> 16) || (v207 & 1) == 0 || (v254 & 1) == 0 || !((v117 | v116) >> 16))
                    {
                      goto LABEL_413;
                    }

                    v120 = v252;
                    v119 = v253;
                    LOBYTE(v186) = v181;
                    BYTE1(v186) = v180;
                    BYTE2(v186) = v179;
                    HIDWORD(v186) = v14;
                    std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v187, &v183);
                    std::__optional_move_base<WebCore::JsonWebKey,false>::__optional_move_base[abi:sn200100](v190, v182);
                    v193 = v118;
                    LOBYTE(v194) = 0;
                    v195 = 0;
                    if (v206 == 1)
                    {
                      v121 = v205;
                      v205 = 0;
                      v194 = v121;
                      v195 = 1;
                    }

                    *&v196 = v120;
                    *(&v196 + 1) = v119;
                    v197 = v115 | v117;
                    *a2 = v186;
                    std::__optional_move_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a2 + 8), &v187);
                    std::__optional_move_base<WebCore::JsonWebKey,false>::__optional_move_base[abi:sn200100]((a2 + 32), v190);
                    *(a2 + 224) = v193;
                    *(a2 + 232) = 0;
                    *(a2 + 240) = 0;
                    if (v195)
                    {
                      *(a2 + 232) = v194;
                      *(a2 + 240) = 1;
                      *(a2 + 248) = v196;
                      *(a2 + 264) = v197;
                      v194 = 0;
                    }

                    else
                    {
                      *(a2 + 248) = v196;
                      *(a2 + 264) = v197;
                    }

                    *(a2 + 272) = 1;
                    if (v192 == 1)
                    {
                      WebCore::JsonWebKey::~JsonWebKey(v190, v113);
                    }

                    if (v189 == 1)
                    {
                      v123 = v187;
                      if (v187)
                      {
                        v187 = 0;
                        v188 = 0;
                        WTF::fastFree(v123, v113);
                      }
                    }

                    if (v182[184] == 1)
                    {
                      WebCore::JsonWebKey::~JsonWebKey(v182, v113);
                    }

                    if (v185 == 1)
                    {
                      v124 = v183;
                      if (v183)
                      {
                        v183 = 0;
                        v184 = 0;
                        WTF::fastFree(v124, v113);
                      }
                    }

                    goto LABEL_247;
                  }

                  if (v111 <= v114 - v113)
                  {
                    v172 = 0;
                    v173 = 0;
                    *a1 = 0;
                    *(a1 + 1) = 0;
                    v174 = *(a1 + 3);
                    if (v174)
                    {
                      (*(*v174 + 16))(v174);
                      v173 = *a1;
                      v172 = *(a1 + 1);
                    }
                  }

                  else
                  {
                    *(a1 + 2) = v112 + 2;
                    if (v112 != -1)
                    {
                      v115 = *v114;
                      if (v115 < 3)
                      {
                        v116 = 0x10000;
                        v117 = 256;
                        if (!v113)
                        {
                          goto LABEL_369;
                        }

                        goto LABEL_226;
                      }

                      goto LABEL_366;
                    }

                    v172 = v111;
                    v173 = v113;
                  }

                  *a1 = 0;
                  *(a1 + 1) = 0;
                  v175 = *(a1 + 3);
                  if (v175 && v172)
                  {
                    (*(*v175 + 16))(v175, v173, v172);
                    v113 = *a1;
                    v111 = *(a1 + 1);
                  }

                  else
                  {
                    v111 = 0;
                    v113 = 0;
                  }

LABEL_366:
                  *a1 = 0;
                  *(a1 + 1) = 0;
                  v176 = *(a1 + 3);
                  if (v176 && v111)
                  {
                    (*(*v176 + 16))(v176, v113);
                  }

                  v117 = 256;
                  goto LABEL_368;
                }

LABEL_344:
                *a1 = 0;
                *(a1 + 1) = 0;
                v165 = *(a1 + 3);
                if (v165 && v111)
                {
                  (*(*v165 + 16))(v165, v113);
                }

                v117 = 0;
LABEL_368:
                v113 = *a1;
                v177 = *(a1 + 1);
                *a1 = 0;
                *(a1 + 1) = 0;
                v178 = *(a1 + 3);
                if (!v178)
                {
                  goto LABEL_369;
                }

                if (!v177)
                {
                  goto LABEL_369;
                }

                (*(*v178 + 16))(v178, v113);
                LOWORD(v115) = 0;
                v116 = 0;
                v113 = *a1;
                if (!*a1)
                {
                  goto LABEL_369;
                }

                goto LABEL_226;
              }
            }

            *a1 = 0;
            *(a1 + 1) = 0;
            v164 = *(a1 + 3);
            if (v164)
            {
              if (v111)
              {
                (*(*v164 + 16))(v164);
                v113 = *a1;
                v111 = *(a1 + 1);
                goto LABEL_344;
              }
            }

            else
            {
              v111 = 0;
            }

            v113 = 0;
            goto LABEL_344;
          }

LABEL_271:
          *a1 = 0;
          *(a1 + 1) = 0;
          v130 = *(a1 + 3);
          if (v130 && v103)
          {
            (*(*v130 + 16))(v130, v104);
          }

          v109 = 0;
          v108 = 0;
          goto LABEL_273;
        }

LABEL_268:
        *a1 = 0;
        *(a1 + 1) = 0;
        v129 = *(a1 + 3);
        if (v129)
        {
          if (v103)
          {
            (*(*v129 + 16))(v129);
            v104 = *a1;
            v103 = *(a1 + 1);
            goto LABEL_271;
          }
        }

        else
        {
          v103 = 0;
        }

        v104 = 0;
        goto LABEL_271;
      }

LABEL_266:
      *a1 = 0;
      *(a1 + 1) = 0;
      v128 = *(a1 + 3);
      if (v128)
      {
        if (v103)
        {
          (*(*v128 + 16))(v128, v104);
          v103 = *(a1 + 1);
        }
      }

      else
      {
        v103 = 0;
      }

      goto LABEL_268;
    }

    goto LABEL_204;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v258);
  IPC::Decoder::decode<WTF::String>(a1, &v256);
  v19 = *(a1 + 1);
  v20 = *(a1 + 2);
  v21 = *a1;
  if (v19 <= v20 - *a1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v166 = *(a1 + 3);
    if (v166)
    {
      if (v19)
      {
        (*(*v166 + 16))(v166);
        v19 = *(a1 + 1);
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_348;
  }

  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_348:
    *a1 = 0;
    *(a1 + 1) = 0;
    v167 = *(a1 + 3);
    if (v167)
    {
      if (v19)
      {
        (*(*v167 + 16))(v167);
        v21 = *a1;
        v19 = *(a1 + 1);
        goto LABEL_351;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = 0;
LABEL_351:
    *a1 = 0;
    *(a1 + 1) = 0;
    v168 = *(a1 + 3);
    if (v168 && v19)
    {
      (*(*v168 + 16))(v168, v21);
    }

    goto LABEL_302;
  }

  if (*v20 >= 2u)
  {
    goto LABEL_351;
  }

  if (*v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFF8;
    v23 = ((v20 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 < v23 - v21 || v19 - (v23 - v21) <= 7)
    {
      v140 = 0;
      v141 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v142 = *(a1 + 3);
      if (v142)
      {
        (*(*v142 + 16))(v142);
        v141 = *a1;
        v140 = *(a1 + 1);
      }
    }

    else
    {
      *(a1 + 2) = v22 + 16;
      if (v23)
      {
        v24 = *v23;
        v225 = 0;
        v224 = 0;
        if (v24 >= 0x100000)
        {
          v25 = 0;
          LODWORD(v56) = 0;
          while (1)
          {
            v57 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
            LOWORD(v260) = v57;
            if (v57 < 0x100u)
            {
              break;
            }

            if (v56 == v225)
            {
              v58 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v224, v56 + 1, &v260);
              LODWORD(v56) = HIDWORD(v225);
              v25 = v224;
              *(v224 + HIDWORD(v225)) = *v58;
            }

            else
            {
              *(v25 + v56) = v57;
            }

            v56 = (v56 + 1);
            HIDWORD(v225) = v56;
            v24 = (v24 - 1);
            if (!v24)
            {
              if (v225 > v56)
              {
                if (v56)
                {
                  LODWORD(v225) = v56;
                  v224 = WTF::fastRealloc(v25, v56);
                }

                else
                {
                  v224 = 0;
                  LODWORD(v225) = 0;
                  WTF::fastFree(v25, v28);
                }
              }

              goto LABEL_31;
            }
          }

          LOBYTE(v205) = 0;
          LOBYTE(v207) = 0;
          if (v25)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v24)
          {
            v25 = WTF::fastMalloc(v24);
            v26 = 0;
            LODWORD(v225) = v24;
            v224 = v25;
            while (1)
            {
              v27 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
              LOWORD(v260) = v27;
              if (v27 < 0x100u)
              {
                break;
              }

              if (v26 == v225)
              {
                v29 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v224, v26 + 1, &v260);
                v26 = HIDWORD(v225);
                v25 = v224;
                *(v224 + HIDWORD(v225)) = *v29;
              }

              else
              {
                *(v25 + v26) = v27;
              }

              HIDWORD(v225) = ++v26;
              v24 = (v24 - 1);
              if (!v24)
              {
                goto LABEL_31;
              }
            }

            LOBYTE(v205) = 0;
            LOBYTE(v207) = 0;
            goto LABEL_38;
          }

LABEL_31:
          std::optional<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v205, &v224);
          v25 = v224;
          if (v224)
          {
LABEL_38:
            v224 = 0;
            LODWORD(v225) = 0;
            WTF::fastFree(v25, v28);
          }
        }

        if (v207)
        {
          goto LABEL_40;
        }

LABEL_301:
        v144 = *a1;
        v145 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v146 = *(a1 + 3);
        if (v146)
        {
          if (v145)
          {
            (*(*v146 + 16))(v146, v144);
            if (v207)
            {
LABEL_40:
              std::optional<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v252, &v205);
              v255 = 1;
              if ((v207 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            }
          }
        }

LABEL_302:
        LOBYTE(v252) = 0;
        v255 = 0;
        goto LABEL_43;
      }

      v140 = v19;
      v141 = v21;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v143 = *(a1 + 3);
    if (v143 && v140)
    {
      (*(*v143 + 16))(v143, v141, v140);
    }

    LOBYTE(v205) = 0;
    LOBYTE(v207) = 0;
    goto LABEL_301;
  }

  LOBYTE(v205) = 0;
  LOBYTE(v207) = 0;
  std::__optional_move_base<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v252, &v205);
  v255 = 1;
  if (v207 != 1)
  {
    goto LABEL_43;
  }

LABEL_41:
  v32 = v205;
  if (v205)
  {
    v205 = 0;
    LODWORD(v206) = 0;
    WTF::fastFree(v32, v31);
  }

LABEL_43:
  if ((v255 & 1) == 0)
  {
    v53 = *a1;
    v54 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55)
    {
      if (v54)
      {
        (*(*v55 + 16))(v55, v53);
      }
    }
  }

  v33 = IPC::Decoder::decode<float>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v250);
  v34 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v248);
  IPC::Decoder::decode<WTF::String>(a1, &v246);
  IPC::Decoder::decode<WTF::String>(a1, &v244);
  IPC::Decoder::decode<WTF::String>(a1, &v242);
  IPC::Decoder::decode<WTF::String>(a1, &v240);
  IPC::Decoder::decode<WTF::String>(a1, &v238);
  IPC::Decoder::decode<WTF::String>(a1, &v236);
  IPC::Decoder::decode<WTF::String>(a1, &v234);
  IPC::Decoder::decode<WTF::String>(a1, &v232);
  IPC::Decoder::decode<WTF::String>(a1, &v230);
  IPC::Decoder::decode<WTF::String>(a1, &v228);
  v35 = *(a1 + 1);
  v36 = *(a1 + 2);
  v37 = *a1;
  if (v35 <= v36 - *a1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v169 = *(a1 + 3);
    if (v169)
    {
      if (v35)
      {
        (*(*v169 + 16))(v169);
        v35 = *(a1 + 1);
      }
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_356;
  }

  *(a1 + 2) = v36 + 1;
  if (!v36)
  {
LABEL_356:
    *a1 = 0;
    *(a1 + 1) = 0;
    v170 = *(a1 + 3);
    if (v170)
    {
      if (v35)
      {
        (*(*v170 + 16))(v170);
        v37 = *a1;
        v35 = *(a1 + 1);
        goto LABEL_359;
      }
    }

    else
    {
      v35 = 0;
    }

    v37 = 0;
LABEL_359:
    *a1 = 0;
    *(a1 + 1) = 0;
    v171 = *(a1 + 3);
    if (v171 && v35)
    {
      (*(*v171 + 16))(v171, v37);
    }

    goto LABEL_311;
  }

  if (*v36 >= 2u)
  {
    goto LABEL_359;
  }

  if (!*v36)
  {
    LOBYTE(v205) = 0;
    LOBYTE(v207) = 0;
    std::__optional_move_base<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v224, &v205);
    v227 = 1;
    if (v207 != 1)
    {
      goto LABEL_113;
    }

    v52 = &v205;
LABEL_112:
    WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, v51);
    goto LABEL_113;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFF8;
  v39 = ((v36 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v35 < v39 - v37 || v35 - (v39 - v37) <= 7)
  {
    v147 = 0;
    v148 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v149 = *(a1 + 3);
    if (v149)
    {
      (*(*v149 + 16))(v149);
      v148 = *a1;
      v147 = *(a1 + 1);
    }

    goto LABEL_308;
  }

  *(a1 + 2) = v38 + 16;
  if (!v39)
  {
    v147 = v35;
    v148 = v37;
LABEL_308:
    *a1 = 0;
    *(a1 + 1) = 0;
    v150 = *(a1 + 3);
    if (v150 && v147)
    {
      (*(*v150 + 16))(v150, v148, v147);
    }

    LOBYTE(v260) = 0;
    v262 = 0;
    goto LABEL_310;
  }

  v40 = *v39;
  v263 = 0;
  v264 = 0;
  if (v40 < 0xAAAA)
  {
    if (v40)
    {
      v41 = WTF::fastMalloc((24 * v40));
      LODWORD(v264) = 24 * v40 / 0x18u;
      v263 = v41;
      while (1)
      {
        IPC::Decoder::decode<WebCore::RsaOtherPrimesInfo>(&v205, a1);
        if ((v208 & 1) == 0)
        {
          goto LABEL_108;
        }

        if (HIDWORD(v264) != v264)
        {
          break;
        }

        WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RsaOtherPrimesInfo>(&v263, &v205);
        if (v208)
        {
          goto LABEL_59;
        }

LABEL_68:
        if (!--v40)
        {
          goto LABEL_69;
        }
      }

      v43 = HIDWORD(v264) + 1;
      v44 = (v263 + 24 * HIDWORD(v264));
      v45 = v205;
      v205 = 0;
      *v44 = v45;
      v46 = v206;
      v206 = 0;
      v44[1] = v46;
      v47 = v207;
      v207 = 0;
      v44[2] = v47;
      HIDWORD(v264) = v43;
LABEL_59:
      v48 = v207;
      v207 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v42);
      }

      v49 = v206;
      v206 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v42);
      }

      v50 = v205;
      v205 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v42);
      }

      goto LABEL_68;
    }

LABEL_69:
    std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v260, &v263);
LABEL_109:
    WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v263, v42);
    if (v262)
    {
      goto LABEL_110;
    }

LABEL_310:
    v151 = *a1;
    v152 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v153 = *(a1 + 3);
    if (v153)
    {
      if (v152)
      {
        (*(*v153 + 16))(v153, v151);
        if (v262)
        {
LABEL_110:
          std::optional<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v224, &v260);
          v227 = 1;
          if ((v262 & 1) == 0)
          {
            goto LABEL_113;
          }

          v52 = &v260;
          goto LABEL_112;
        }
      }
    }

LABEL_311:
    LOBYTE(v224) = 0;
    v227 = 0;
LABEL_113:
    if ((v227 & 1) == 0)
    {
      v134 = *a1;
      v135 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v136 = *(a1 + 3);
      if (v136)
      {
        if (v135)
        {
          (*(*v136 + 16))(v136, v134);
        }
      }
    }

    IPC::Decoder::decode<WTF::String>(a1, &v260);
    if (*a1)
    {
      if ((v259 & 1) == 0)
      {
        goto LABEL_413;
      }

      v71 = v258;
      v258 = 0;
      v205 = v71;
      if ((v257 & 1) == 0)
      {
        goto LABEL_413;
      }

      v72 = v256;
      v256 = 0;
      v206 = v72;
      if ((v255 & 1) == 0)
      {
        goto LABEL_413;
      }

      std::__optional_move_base<WTF::Vector<WebCore::CryptoKeyUsage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v207, &v252);
      if ((v33 & 0x100000000) == 0)
      {
        goto LABEL_413;
      }

      v209 = v33;
      if ((v251 & 1) == 0)
      {
        goto LABEL_413;
      }

      v73 = v250;
      v250 = 0;
      v210 = v73;
      if ((v34 & 0x10000) == 0)
      {
        goto LABEL_413;
      }

      v211 = v34;
      if ((v249 & 1) == 0)
      {
        goto LABEL_413;
      }

      v74 = v248;
      v248 = 0;
      v212 = v74;
      if ((v247 & 1) == 0)
      {
        goto LABEL_413;
      }

      v75 = v246;
      v246 = 0;
      v213 = v75;
      if ((v245 & 1) == 0)
      {
        goto LABEL_413;
      }

      v76 = v244;
      v244 = 0;
      v214 = v76;
      if ((v243 & 1) == 0)
      {
        goto LABEL_413;
      }

      v77 = v242;
      v242 = 0;
      v215 = v77;
      if ((v241 & 1) == 0)
      {
        goto LABEL_413;
      }

      v78 = v240;
      v240 = 0;
      v216 = v78;
      if ((v239 & 1) == 0)
      {
        goto LABEL_413;
      }

      v79 = v238;
      v238 = 0;
      v217 = v79;
      if ((v237 & 1) == 0)
      {
        goto LABEL_413;
      }

      v80 = v236;
      v236 = 0;
      v218 = v80;
      if ((v235 & 1) == 0)
      {
        goto LABEL_413;
      }

      v81 = v234;
      v234 = 0;
      v219 = v81;
      if ((v233 & 1) == 0)
      {
        goto LABEL_413;
      }

      v82 = v232;
      v232 = 0;
      v220 = v82;
      if ((v231 & 1) == 0)
      {
        goto LABEL_413;
      }

      v83 = v230;
      v230 = 0;
      v221 = v83;
      if ((v229 & 1) == 0)
      {
        goto LABEL_413;
      }

      v84 = v228;
      v228 = 0;
      v222 = v84;
      if ((v227 & 1) == 0)
      {
        goto LABEL_413;
      }

      std::__optional_move_base<WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v223, &v224);
      if ((v261 & 1) == 0)
      {
        goto LABEL_413;
      }

      v85 = v260;
      v260 = 0;
      v223[3] = v85;
      WebCore::JsonWebKey::JsonWebKey(&v186, &v205);
      v191 = 1;
      WebCore::JsonWebKey::~JsonWebKey(&v205, v86);
    }

    else
    {
      LOBYTE(v186) = 0;
      v191 = 0;
    }

    if (v261 == 1)
    {
      v87 = v260;
      v260 = 0;
      if (v87)
      {
        if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v87, v70);
        }
      }
    }

    if (v227 == 1 && v226 == 1)
    {
      WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v224, v70);
    }

    if (v229 == 1)
    {
      v88 = v228;
      v228 = 0;
      if (v88)
      {
        if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v88, v70);
        }
      }
    }

    if (v231 == 1)
    {
      v89 = v230;
      v230 = 0;
      if (v89)
      {
        if (atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v89, v70);
        }
      }
    }

    if (v233 == 1)
    {
      v90 = v232;
      v232 = 0;
      if (v90)
      {
        if (atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v90, v70);
        }
      }
    }

    if (v235 == 1)
    {
      v91 = v234;
      v234 = 0;
      if (v91)
      {
        if (atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v91, v70);
        }
      }
    }

    if (v237 == 1)
    {
      v92 = v236;
      v236 = 0;
      if (v92)
      {
        if (atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v92, v70);
        }
      }
    }

    if (v239 == 1)
    {
      v93 = v238;
      v238 = 0;
      if (v93)
      {
        if (atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v93, v70);
        }
      }
    }

    if (v241 == 1)
    {
      v94 = v240;
      v240 = 0;
      if (v94)
      {
        if (atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v94, v70);
        }
      }
    }

    if (v243 == 1)
    {
      v95 = v242;
      v242 = 0;
      if (v95)
      {
        if (atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v95, v70);
        }
      }
    }

    if (v245 == 1)
    {
      v96 = v244;
      v244 = 0;
      if (v96)
      {
        if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v96, v70);
        }
      }
    }

    if (v247 == 1)
    {
      v97 = v246;
      v246 = 0;
      if (v97)
      {
        if (atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v97, v70);
        }
      }
    }

    if (v249 == 1)
    {
      v98 = v248;
      v248 = 0;
      if (v98)
      {
        if (atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v98, v70);
        }
      }
    }

    if (v251 == 1)
    {
      v99 = v250;
      v250 = 0;
      if (v99)
      {
        if (atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v99, v70);
        }
      }
    }

    if (v255 == 1 && v254 == 1)
    {
      v100 = v252;
      if (v252)
      {
        v252 = 0;
        LODWORD(v253) = 0;
        WTF::fastFree(v100, v70);
      }
    }

    if (v257 == 1)
    {
      v101 = v256;
      v256 = 0;
      if (v101)
      {
        if (atomic_fetch_add_explicit(v101, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v101, v70);
        }
      }
    }

    if (v259 == 1)
    {
      v102 = v258;
      v258 = 0;
      if (v102)
      {
        if (atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v102, v70);
        }
      }
    }

    if ((v191 & 1) == 0)
    {
      v137 = *a1;
      v138 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v139 = *(a1 + 3);
      if (!v139)
      {
        goto LABEL_280;
      }

      if (!v138)
      {
        goto LABEL_280;
      }

      (*(*v139 + 16))(v139, v137);
      if ((v191 & 1) == 0)
      {
        goto LABEL_280;
      }
    }

    WebCore::JsonWebKey::JsonWebKey(v198, &v186);
    v199 = 1;
    v200 = 1;
    if ((v191 & 1) == 0)
    {
      goto LABEL_205;
    }

LABEL_204:
    WebCore::JsonWebKey::~JsonWebKey(&v186, v30);
    goto LABEL_205;
  }

  do
  {
    IPC::Decoder::decode<WebCore::RsaOtherPrimesInfo>(&v205, a1);
    if ((v208 & 1) == 0)
    {
LABEL_108:
      LOBYTE(v260) = 0;
      v262 = 0;
      goto LABEL_109;
    }

    if (HIDWORD(v264) == v264)
    {
      WTF::Vector<WebCore::RsaOtherPrimesInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RsaOtherPrimesInfo>(&v263, &v205);
      if ((v208 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v59 = HIDWORD(v264) + 1;
      v60 = (v263 + 24 * HIDWORD(v264));
      v61 = v205;
      v205 = 0;
      *v60 = v61;
      v62 = v206;
      v206 = 0;
      v60[1] = v62;
      v63 = v207;
      v207 = 0;
      v60[2] = v63;
      HIDWORD(v264) = v59;
    }

    v64 = v207;
    v207 = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v42);
    }

    v65 = v206;
    v206 = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, v42);
    }

    v66 = v205;
    v205 = 0;
    if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v66, v42);
    }

LABEL_98:
    --v40;
  }

  while (v40);
  v67 = HIDWORD(v264);
  if (v264 <= HIDWORD(v264))
  {
    goto LABEL_69;
  }

  v68 = v263;
  if (!HIDWORD(v264))
  {
LABEL_104:
    if (v68)
    {
      if (v263 == v68)
      {
        v263 = 0;
        LODWORD(v264) = 0;
      }

      WTF::fastFree(v68, v42);
    }

    goto LABEL_69;
  }

  if (HIDWORD(v264) < 0xAAAAAAB)
  {
    v69 = WTF::fastMalloc((24 * HIDWORD(v264)));
    LODWORD(v264) = 24 * v67 / 0x18;
    v263 = v69;
    if (v69 != v68)
    {
      WTF::VectorMover<false,WebCore::RsaOtherPrimesInfo>::move(v68, (v68 + 24 * v67), v69);
    }

    goto LABEL_104;
  }

  __break(0xC471u);
LABEL_413:
  __break(1u);
}

void sub_19D77DC78(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (LOBYTE(STACK[0x3C8]) == 1)
  {
    v4 = STACK[0x3C0];
    STACK[0x3C0] = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x3D8]) == 1)
  {
    v5 = STACK[0x3D0];
    STACK[0x3D0] = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x3E8]) == 1)
  {
    v6 = STACK[0x3E0];
    STACK[0x3E0] = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x3F8]) == 1)
  {
    v7 = STACK[0x3F0];
    STACK[0x3F0] = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x408]) == 1)
  {
    v8 = STACK[0x400];
    STACK[0x400] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x418]) == 1)
  {
    v9 = STACK[0x410];
    STACK[0x410] = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x428]) == 1)
  {
    v10 = STACK[0x420];
    STACK[0x420] = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x438]) == 1)
  {
    v11 = STACK[0x430];
    STACK[0x430] = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }
    }
  }

  if (*(v2 - 248) == 1)
  {
    v12 = *(v2 - 256);
    *(v2 - 256) = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }
    }
  }

  if (*(v2 - 232) == 1)
  {
    v13 = *(v2 - 240);
    *(v2 - 240) = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }
    }
  }

  if (*(v2 - 216) == 1)
  {
    v14 = *(v2 - 224);
    *(v2 - 224) = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }
    }
  }

  if (*(v2 - 200) == 1)
  {
    v15 = *(v2 - 208);
    *(v2 - 208) = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, a2);
      }
    }
  }

  if (*(v2 - 168) == 1 && *(v2 - 176) == 1)
  {
    v16 = *(v2 - 192);
    if (v16)
    {
      *(v2 - 192) = 0;
      *(v2 - 184) = 0;
      WTF::fastFree(v16, a2);
    }
  }

  if (*(v2 - 152) == 1)
  {
    v17 = *(v2 - 160);
    *(v2 - 160) = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, a2);
      }
    }
  }

  if (*(v2 - 136) == 1)
  {
    v18 = *(v2 - 144);
    *(v2 - 144) = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x2E0]) == 1 && LOBYTE(STACK[0x2D8]) == 1)
  {
    v19 = STACK[0x2C8];
    if (STACK[0x2C8])
    {
      STACK[0x2C8] = 0;
      LODWORD(STACK[0x2D0]) = 0;
      WTF::fastFree(v19, a2);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::CryptoAlgorithmIdentifier>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v13;
        v1 = v13[1];
LABEL_12:
        *v13 = 0;
        v13[1] = 0;
        v9 = v13[3];
        if (v9 && v1)
        {
          (*(*v9 + 16))(v9, v3);
        }

        v4 = 0;
        a1 = v13;
        goto LABEL_14;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_12;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v13 = a1;
    goto LABEL_12;
  }

  v4 = *v2;
  if ((v4 - 22) > 0xFFFFFFEA)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_14:
  v10 = *a1;
  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v12 = a1[3];
  if (v12)
  {
    v14 = v4;
    if (v11)
    {
      (*(*v12 + 16))(v12, v10);
    }

    v5 = 1;
    v4 = v14;
  }

  else
  {
    v5 = 1;
  }

LABEL_5:
  v6 = v4 | 0x100;
  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned int *IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(unsigned int *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v6)
      {
        (*(*v13 + 16))(v13);
        goto LABEL_36;
      }

      goto LABEL_21;
    }

LABEL_20:
    v6 = 0;
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  v7 = v4 + 1;
  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
LABEL_22:
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14 && v6)
    {
      (*(*v14 + 16))(v14, v5);
    }

    goto LABEL_4;
  }

  if (*v4 > 1u)
  {
LABEL_4:
    *v3 = 0;
    *(v3 + 16) = 0;
LABEL_5:
    v8 = *a2;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v9)
      {
        return (*(*result + 16))(result, v8);
      }
    }

    return result;
  }

  if (!*v4)
  {
    if (v6 <= &v7[-v5])
    {
      v15 = 0;
      v16 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v17 = *(a2 + 3);
      if (v17)
      {
        (*(*v17 + 16))(v17);
        v16 = *a2;
        v15 = *(a2 + 1);
      }
    }

    else
    {
      *(a2 + 2) = v4 + 2;
      if (v4 != -1)
      {
        v12 = *v7;
        if (v12 < 2)
        {
          *result = v12;
          *(result + 8) = 0;
          *(result + 16) = 1;
          return result;
        }

        goto LABEL_22;
      }

      v15 = v6;
      v16 = v5;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18 && v15)
    {
      (*(*v18 + 16))(v18, v16, v15);
LABEL_36:
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  result = IPC::Decoder::decode<WebCore::Color>(a2, &v19);
  if (v20 == 1)
  {
    *v3 = 0;
    v11 = v19;
    if (&v19 == v3)
    {
      *(v3 + 8) = 1;
      *(v3 + 16) = 1;
      if ((v11 & 0x8000000000000) != 0)
      {
        result = (v11 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v10);
        }
      }
    }

    else
    {
      *v3 = v19;
      *(v3 + 8) = 1;
      *(v3 + 16) = 1;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 16) = 0;
  }

  if ((v3[4] & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_19D77E858(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MessageForTesting,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::AtomString>(a1, &v10);
  result = IPC::Decoder::decode<WTF::String>(a1, &v8);
  if (*a1)
  {
    if (v11)
    {
      v6 = v10;
      v10 = 0;
      if (v9)
      {
        v7 = v8;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v9)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_5:
  if (v11 == 1)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D77E94C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::HostingContext,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v15 = *(a1 + 3);
  if (v15 && v4)
  {
    (*(*v15 + 16))(v15);
  }

  v10 = 0;
LABEL_8:
  IPC::Decoder::decode<WTF::MachSendRightAnnotated>(v18, a1);
  if (*a1)
  {
    if (v10 & 0x100000000) != 0 && (v20)
    {
      WTF::MachSendRight::MachSendRight();
      v12 = v19;
      v19 = 0;
      v17 = v12;
      *a2 = v10;
      WTF::MachSendRight::MachSendRight();
      *(a2 + 16) = v17;
      *(a2 + 24) = 1;
      v17 = 0;
      WTF::MachSendRight::~MachSendRight(&v16);
      goto LABEL_12;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_12:
  if (v20 == 1)
  {
    v13 = v19;
    v19 = 0;
    if (v13)
    {
      WTF::fastFree(v13, v11);
    }

    WTF::MachSendRight::~MachSendRight(v18);
  }
}

void sub_19D77EB14(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, char a12, WTF *a13, char a14)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  WTF::MachSendRight::~MachSendRight((v14 + 8));
  if (a14 == 1)
  {
    v17 = a13;
    a13 = 0;
    if (v17)
    {
      WTF::fastFree(v17, v16);
    }

    WTF::MachSendRight::~MachSendRight(&a12);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WTF::MachSendRightAnnotated>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D77EBE0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      WTF::fastFree(v4, a2);
    }

    WTF::MachSendRight::~MachSendRight(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FocusEventData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::FocusEventData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::AtomString>(a1, &v18);
  result = IPC::Decoder::decode<WTF::AtomString>(a1, &v16);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_19;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_21;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    v15 = *v6;
    goto LABEL_25;
  }

  for (i = 1; ; i = 0)
  {
    v10 = v8 ? i : 0;
    if (!v7)
    {
      break;
    }

    if (v19)
    {
      v11 = v18;
      v18 = 0;
      if (v17 & 1) != 0 && (i)
      {
        v12 = v16;
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v10;
        *(a2 + 24) = 1;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v5)
      {
        (*(*v13 + 16))(v13);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_21:
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14);
        v15 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_25;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v15 = 0;
LABEL_25:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v5)
    {
      break;
    }

    result = (*(*result + 16))(result, v7);
    v7 = *a1;
    v8 = v15;
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v17)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_13:
  if (v19 == 1)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D77EE4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::Font,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::FontInternalAttributes,void>::decode(a2, v12);
  if ((v12[24] & 1) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      (*(*v7 + 16))(v7, v5);
    }

    IPC::Decoder::decode<WebCore::FontPlatformData>(v10, a2);
    if (!*a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  IPC::Decoder::decode<WebCore::FontPlatformData>(v10, a2);
  if (*a2)
  {
    if (v11)
    {
      WebCore::Font::create();
      v4 = v9;
      v9 = 0;
      *a1 = v4;
      *(a1 + 8) = 1;
      WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v9);
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
  }

LABEL_15:
  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_5:
  if (v11 == 1)
  {
    WebCore::FontPlatformData::~FontPlatformData(v10);
  }
}

void sub_19D77EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    WebCore::FontPlatformData::~FontPlatformData(&a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::FontPlatformData>(unint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 3)
  {
    *(a2 + 2) = v4 + 4;
    if (v4)
    {
      v8 = *v4 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v68 = *(a2 + 3);
    if (!v68)
    {
      v6 = 0;
LABEL_139:
      v5 = 0;
      goto LABEL_140;
    }

    if (!v6)
    {
      goto LABEL_139;
    }

    (*(*v68 + 16))(v68);
    v5 = *a2;
    v6 = *(a2 + 1);
  }

LABEL_140:
  *a2 = 0;
  *(a2 + 1) = 0;
  v69 = *(a2 + 3);
  if (v69 && v6)
  {
    (*(*v69 + 16))(v69, v5);
  }

  v8 = 0;
LABEL_8:
  v9 = IPC::Decoder::decode<WebCore::LockHistory>(a2);
  v81 = v9;
  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a2);
  v80 = Options;
  v11 = IPC::Decoder::decode<WebCore::FetchOptionsMode>(a2);
  v79 = v11;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a2;
  if (v12 <= &v13[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v57 = *(a2 + 3);
    if (v57)
    {
      if (v12)
      {
        (*(*v57 + 16))(v57);
        v12 = *(a2 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_120:
    *a2 = 0;
    *(a2 + 1) = 0;
    v58 = *(a2 + 3);
    if (v58)
    {
      if (v12)
      {
        (*(*v58 + 16))(v58);
        v14 = *a2;
        v12 = *(a2 + 1);
        goto LABEL_123;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
    goto LABEL_123;
  }

  v15 = v13 + 1;
  *(a2 + 2) = v13 + 1;
  if (!v13)
  {
    goto LABEL_120;
  }

  if (*v13 < 2u)
  {
    v16 = 1;
    goto LABEL_12;
  }

LABEL_123:
  *a2 = 0;
  *(a2 + 1) = 0;
  v59 = *(a2 + 3);
  if (!v59 || !v12)
  {
    v16 = 0;
    v60 = 0;
    v14 = 0;
LABEL_125:
    *a2 = 0;
    *(a2 + 1) = 0;
    v61 = *(a2 + 3);
    if (v61 && v60)
    {
      (*(*v61 + 16))(v61, v14, v60);
      v14 = *a2;
      v12 = *(a2 + 1);
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    goto LABEL_127;
  }

  (*(*v59 + 16))(v59, v14);
  v16 = 0;
  v14 = *a2;
  v12 = *(a2 + 1);
  v15 = *(a2 + 2);
LABEL_12:
  if (v12 <= v15 - v14)
  {
    v60 = 0;
    v70 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v12 && v70)
    {
      (*(*v70 + 16))(v70);
      v14 = *a2;
      v60 = *(a2 + 1);
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_125;
  }

  v17 = (v15 + 1);
  *(a2 + 2) = v15 + 1;
  if (!v15)
  {
    v60 = v12;
    goto LABEL_125;
  }

  if (*v15 < 2u)
  {
    v18 = 1;
    goto LABEL_16;
  }

LABEL_127:
  *a2 = 0;
  *(a2 + 1) = 0;
  v62 = *(a2 + 3);
  if (!v62)
  {
    v18 = 0;
    v12 = 0;
LABEL_129:
    v14 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    goto LABEL_130;
  }

  if (!v12)
  {
    v18 = 0;
    goto LABEL_129;
  }

  (*(*v62 + 16))(v62, v14);
  v18 = 0;
  v14 = *a2;
  v12 = *(a2 + 1);
  v17 = *(a2 + 2);
LABEL_16:
  if (v12 <= v17 - v14)
  {
    v71 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v71)
    {
      if (v12)
      {
        (*(*v71 + 16))(v71);
        v14 = *a2;
        v12 = *(a2 + 1);
        goto LABEL_130;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
LABEL_130:
    *a2 = 0;
    *(a2 + 1) = 0;
    v63 = *(a2 + 3);
    if (v63 && v12)
    {
      (*(*v63 + 16))(v63, v14);
    }

    goto LABEL_19;
  }

  *(a2 + 2) = v17 + 1;
  if (!v17)
  {
    goto LABEL_130;
  }

  if (*v17 >= 2u)
  {
LABEL_19:
    LOBYTE(v73) = 0;
    v78 = 0;
    goto LABEL_77;
  }

  if (!*v17)
  {
    v28 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = ((v17 & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v72 = a1;
    if (v12 < v29 - v14 || v12 - (v29 - v14) <= 3)
    {
      v64 = 0;
      v65 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v66 = *(a2 + 3);
      if (v66)
      {
        (*(*v66 + 16))(v66);
        v65 = *a2;
        v64 = *(a2 + 1);
      }
    }

    else
    {
      *(a2 + 2) = v28 + 8;
      if (v29)
      {
        v30 = *v29 | 0x100000000;
LABEL_47:
        IPC::ArgumentCoder<WTF::RetainPtr<__CFString const*>,void>::decode(a2, &v96);
        a1 = v97;
        if ((v97 & 1) == 0)
        {
          v51 = *a2;
          v52 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v53 = *(a2 + 3);
          if (v53)
          {
            if (v52)
            {
              (*(*v53 + 16))(v53, v51);
            }
          }
        }

        IPC::ArgumentCoder<WTF::RetainPtr<__CFString const*>,void>::decode(a2, &v91);
        v31 = v92;
        if ((v92 & 1) == 0)
        {
          v54 = *a2;
          v55 = *(a2 + 1);
          *a2 = 0;
          *(a2 + 1) = 0;
          v56 = *(a2 + 3);
          if (v56)
          {
            if (v55)
            {
              (*(*v56 + 16))(v56, v54);
            }
          }
        }

        IPC::Decoder::decode<std::optional<WebCore::FontPlatformSerializedAttributes>>(v93, a2);
        if (*a2)
        {
          if ((v30 & 0x100000000) == 0)
          {
            goto LABEL_93;
          }

          LODWORD(v87) = v30;
          if ((a1 & 1) == 0)
          {
            goto LABEL_93;
          }

          v33 = v96;
          v96 = 0;
          *&v88 = v33;
          if ((v31 & 1) == 0)
          {
            goto LABEL_93;
          }

          v34 = v91;
          v91 = 0;
          *(&v88 + 1) = v34;
          if ((v95 & 1) == 0)
          {
            goto LABEL_93;
          }

          std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](v89, v93);
          LODWORD(v82) = v87;
          v35 = v88;
          v88 = 0uLL;
          v83 = v35;
          std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](v84, v89);
          v86 = 1;
          if (v90 == 1)
          {
            WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(v89, v32);
          }

          v36 = *(&v88 + 1);
          *(&v88 + 1) = 0;
          if (v36)
          {
            CFRelease(v36);
          }

          v37 = v88;
          *&v88 = 0;
          if (v37)
          {
            CFRelease(v37);
          }
        }

        else
        {
          LOBYTE(v82) = 0;
          v86 = 0;
        }

        if (v95 == 1 && v94 == 1)
        {
          WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(v93, v32);
        }

        if (v31 && v91)
        {
          CFRelease(v91);
        }

        if (a1 && v96)
        {
          CFRelease(v96);
        }

        if (v86 & 1) != 0 || (v14 = *a2, v49 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v50 = *(a2 + 3)) != 0) && v49 && ((*(*v50 + 16))(v50, v14), (v86))
        {
          LODWORD(v73) = v82;
          v38 = v83;
          v83 = 0uLL;
          v74 = v38;
          std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](v75, v84);
          a1 = v72;
          v77 = 0;
          v78 = 1;
          if (v86)
          {
            if (v85 == 1)
            {
              WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(v84, v14);
            }

            v39 = *(&v83 + 1);
            *(&v83 + 1) = 0;
            if (v39)
            {
              CFRelease(v39);
            }

            v40 = v83;
            *&v83 = 0;
            if (v40)
            {
              CFRelease(v40);
            }
          }
        }

        else
        {
          LOBYTE(v73) = 0;
          v78 = 0;
          a1 = v72;
        }

        goto LABEL_77;
      }

      v64 = v12;
      v65 = v14;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v67 = *(a2 + 3);
    if (v67 && v64)
    {
      (*(*v67 + 16))(v67, v65, v64);
    }

    v30 = 0;
    goto LABEL_47;
  }

  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v96);
  IPC::Decoder::decode<std::optional<WebCore::FontPlatformSerializedAttributes>>(v93, a2);
  IPC::Decoder::decode<WTF::String>(a2, &v91);
  if (*a2)
  {
    if ((v98 & 1) == 0)
    {
      goto LABEL_93;
    }

    v87 = v96;
    v20 = v97;
    v96 = 0;
    v97 = 0;
    *&v88 = v20;
    if ((v95 & 1) == 0)
    {
      goto LABEL_93;
    }

    std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](&v88 + 8, v93);
    if ((v92 & 1) == 0)
    {
      goto LABEL_93;
    }

    v21 = v91;
    v91 = 0;
    v90 = v21;
    v22 = v87;
    v87 = 0;
    v82 = v22;
    v23 = v88;
    *&v88 = 0;
    *&v83 = v23;
    std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](&v83 + 8, &v88 + 8);
    v85 = v90;
    v86 = 1;
    v90 = 0;
    if (v89[376] == 1)
    {
      WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes((&v88 + 8), v19);
    }

    v24 = v87;
    if (v87)
    {
      v87 = 0;
      LODWORD(v88) = 0;
      WTF::fastFree(v24, v19);
    }
  }

  else
  {
    LOBYTE(v82) = 0;
    v86 = 0;
  }

  if (v92 == 1)
  {
    v25 = v91;
    v91 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v19);
      }
    }
  }

  if (v95 == 1 && v94 == 1)
  {
    WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(v93, v19);
  }

  if (v98 == 1)
  {
    v41 = v96;
    if (v96)
    {
      v96 = 0;
      LODWORD(v97) = 0;
      WTF::fastFree(v41, v19);
    }
  }

  if ((v86 & 1) == 0)
  {
    v14 = *a2;
    v47 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v48 = *(a2 + 3);
    if (!v48)
    {
      goto LABEL_19;
    }

    if (!v47)
    {
      goto LABEL_19;
    }

    (*(*v48 + 16))(v48, v14);
    if ((v86 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v73 = v82;
  v26 = v83;
  v82 = 0;
  *&v83 = 0;
  *&v74 = v26;
  std::__optional_move_base<WebCore::FontPlatformSerializedAttributes,false>::__optional_move_base[abi:sn200100](&v74 + 8, &v83 + 8);
  v76 = v85;
  v77 = 1;
  v78 = 1;
  if (v86)
  {
    v85 = 0;
    if (v84[376] == 1)
    {
      WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes((&v83 + 8), v14);
    }

    v27 = v82;
    if (v82)
    {
      v82 = 0;
      LODWORD(v83) = 0;
      WTF::fastFree(v27, v14);
    }
  }

LABEL_77:
  if ((v78 & 1) == 0)
  {
    goto LABEL_94;
  }

  while (*a2)
  {
    if (v8 & 0x100000000) != 0 && v9 > 0xFFu && Options > 0xFFu && v11 > 0xFFu && (v16 & 1) != 0 && (v18 & 1) != 0 && (v78)
    {
      WebCore::FontPlatformData::fromIPCData();
      goto LABEL_87;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    v14 = *a2;
    v42 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v43 = *(a2 + 3);
    if (v43 && v42)
    {
      (*(*v43 + 16))(v43, v14);
    }
  }

  *a1 = 0;
  *(a1 + 32) = 0;
LABEL_87:
  if (v78 == 1)
  {
    mpark::variant<WebCore::FontPlatformSerializedData,WebCore::FontPlatformSerializedCreationData>::~variant(&v73, v14);
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v44 = *a2;
    v45 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v46 = *(a2 + 3);
    if (v46)
    {
      if (v45)
      {
        (*(*v46 + 16))(v46, v44);
      }
    }
  }
}

void sub_19D77FA8C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, CFTypeRef a14, CFTypeRef a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x378]) == 1)
  {
    if (LOBYTE(STACK[0x370]) == 1)
    {
      WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes(&a71, a2);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (a69)
    {
      CFRelease(a69);
    }
  }

  _Unwind_Resume(a1);
}

_DWORD **WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v4 = MEMORY[0x19EB0DCB0]();
      WTF::fastFree(v4, v5);
    }

    else
    {
      --*v2;
    }
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::FontPlatformData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  LOBYTE(v7) = *(a2 + 12);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 13));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 14));
  LOBYTE(v7) = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  LOBYTE(v7) = *(a2 + 25);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  WebCore::FontPlatformData::toIPCData(&v7, a2);
  v13 = v12;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v13);
  if (v13 == 1)
  {
    if (v12 == 1)
    {
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v7, HIDWORD(v8));
      IPC::ArgumentCoder<std::optional<WebCore::FontPlatformSerializedAttributes>,void>::encode<IPC::Encoder,std::optional<WebCore::FontPlatformSerializedAttributes> const&>(a1, &v9);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v11);
      return mpark::variant<WebCore::FontPlatformSerializedData,WebCore::FontPlatformSerializedCreationData>::~variant(&v7, v5);
    }

    goto LABEL_8;
  }

  if (!v13)
  {
    if (!v12)
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v7);
      IPC::ArgumentCoder<__CFString const*,void>::encode(a1);
      IPC::ArgumentCoder<__CFString const*,void>::encode(a1);
      IPC::ArgumentCoder<std::optional<WebCore::FontPlatformSerializedAttributes>,void>::encode<IPC::Encoder,std::optional<WebCore::FontPlatformSerializedAttributes> const&>(a1, &v10);
      return mpark::variant<WebCore::FontPlatformSerializedData,WebCore::FontPlatformSerializedCreationData>::~variant(&v7, v5);
    }

LABEL_8:
    mpark::throw_bad_variant_access(v4);
  }

  return mpark::variant<WebCore::FontPlatformSerializedData,WebCore::FontPlatformSerializedCreationData>::~variant(&v7, v5);
}

uint64_t mpark::variant<WebCore::FontPlatformSerializedData,WebCore::FontPlatformSerializedCreationData>::~variant(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 416) != 255)
  {
    if (*(a1 + 416))
    {
      v3 = *(a1 + 408);
      *(a1 + 408) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      if (*(a1 + 400) == 1)
      {
        WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes((a1 + 16), a2);
      }

      v4 = *a1;
      if (*a1)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        WTF::fastFree(v4, a2);
      }
    }

    else
    {
      if (*(a1 + 408) == 1)
      {
        WebCore::FontPlatformSerializedAttributes::~FontPlatformSerializedAttributes((a1 + 24), a2);
      }

      v5 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  *(a1 + 416) = -1;
  return a1;
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::FontPlatformDataAttributes,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *(a2 + 4);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 5));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 6));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 7));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::ArgumentCoder<__CFDictionary const*,void>::encode(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<__CFString const*,void>::encode(a1);
  return IPC::ArgumentCoder<__CFString const*,void>::encode(a1);
}

void IPC::ArgumentCoder<WebCore::FontPlatformDataAttributes,void>::decode(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(this + 2) = v5 + 1;
    if (v5)
    {
      v37 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v37 = 0;
LABEL_8:
  v36 = IPC::Decoder::decode<WebCore::LockHistory>(this);
  Options = IPC::Decoder::decode<WebCore::FetchOptionsMode>(this);
  v11 = IPC::Decoder::decode<WebCore::FetchOptionsMode>(this);
  v12 = *(this + 1);
  v13 = *(this + 2);
  v14 = *this;
  if (v12 <= &v13[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_73;
  }

  v15 = v13 + 1;
  *(this + 2) = v13 + 1;
  if (!v13)
  {
LABEL_73:
    IPC::Decoder::markInvalid(this);
    v16 = 0;
    goto LABEL_74;
  }

  v16 = *v13;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_12;
  }

LABEL_74:
  IPC::Decoder::markInvalid(this);
  v17 = 0;
  v12 = *(this + 1);
  v15 = *(this + 2);
  v14 = *this;
LABEL_12:
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v34 = v18;
  if (v12 <= &v15[-v14])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_76;
  }

  *(this + 2) = v15 + 1;
  if (!v15)
  {
LABEL_76:
    IPC::Decoder::markInvalid(this);
    v19 = 0;
    goto LABEL_77;
  }

  v19 = *v15;
  if (v19 < 2)
  {
    v20 = 1;
    goto LABEL_19;
  }

LABEL_77:
  IPC::Decoder::markInvalid(this);
  v20 = 0;
LABEL_19:
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  IPC::ArgumentCoder<WTF::RetainPtr<__CFDictionary const*>,void>::decode(this, v10, &cf);
  v22 = v43;
  if ((v43 & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
  }

  v23 = *(this + 1);
  v24 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v25 = v24 - *this;
  v7 = v23 >= v25;
  v26 = v23 - v25;
  if (v7 && v26 > 3)
  {
    *(this + 2) = v24 + 1;
    if (v24)
    {
      v27 = *v24 | 0x100000000;
      goto LABEL_29;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v27 = 0;
LABEL_29:
  IPC::ArgumentCoder<WTF::RetainPtr<__CFString const*>,void>::decode(this, &v40);
  v28 = v41;
  if ((v41 & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::ArgumentCoder<WTF::RetainPtr<__CFString const*>,void>::decode(this, &v38);
  v29 = v39;
  if (v39)
  {
    if (!*this)
    {
      goto LABEL_64;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
    if (!*this)
    {
      *a2 = 0;
      *(a2 + 48) = 0;
      goto LABEL_66;
    }
  }

  if ((v37 & 0x100000000) == 0 || v36 <= 0xFFu || Options <= 0xFFu || v11 <= 0xFFu || (v17 & 1) == 0 || (v20 & 1) == 0 || (v22 & 1) == 0 || (v30 = cf, cf = 0, (v27 & 0x100000000) == 0) || (v28 & 1) == 0 || (v31 = v40, v40 = 0, (v29 & 1) == 0))
  {
    __break(1u);
LABEL_64:
    *a2 = 0;
    *(a2 + 48) = 0;
    if (v38)
    {
      CFRelease(v38);
    }

LABEL_66:
    if (!v28)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v32 = v38;
  if (v30)
  {
    CFRetain(v30);
  }

  if (v31)
  {
    CFRetain(v31);
  }

  if (v32)
  {
    CFRetain(v32);
  }

  *a2 = v37;
  *(a2 + 4) = v36 & 1;
  *(a2 + 5) = Options;
  *(a2 + 6) = v11;
  *(a2 + 7) = v34;
  *(a2 + 8) = v21;
  *(a2 + 16) = v30;
  *(a2 + 24) = v27;
  *(a2 + 32) = v31;
  *(a2 + 40) = v32;
  *(a2 + 48) = 1;
  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

LABEL_55:
  if (v40)
  {
    CFRelease(v40);
  }

LABEL_57:
  if (v22)
  {
    v33 = cf;
    if (cf)
    {

      CFRelease(v33);
    }
  }
}

void sub_19D78044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef cf)
{
  if (v17)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FontCustomPlatformSerializedData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

unsigned int *IPC::ArgumentCoder<WebCore::FontCustomPlatformSerializedData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v19);
  result = IPC::Decoder::decode<WTF::String>(a1, &v17);
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 7)
  {
    *(a1 + 2) = v6 + 1;
    if (v6)
    {
      if (!v7)
      {
        goto LABEL_24;
      }

      v12 = *v6;
      if ((v12 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_24;
      }

      v13 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      goto LABEL_35;
    }

    v5 = 0;
  }

  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16 && v5)
    {
      result = (*(*v16 + 16))(v16);
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v7 = 0;
    }

    v5 = *(a1 + 1);
LABEL_24:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      break;
    }

    if (!v5)
    {
      break;
    }

    result = (*(*result + 16))(result);
    if (!*a1)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
LABEL_10:
    if (v20)
    {
      v14 = v19;
      v19 = 0;
      if (v18 & 1) != 0 && (v13)
      {
        v15 = v17;
        *a2 = v14;
        *(a2 + 8) = v15;
        *(a2 + 16) = v12;
        *(a2 + 24) = 1;
        goto LABEL_14;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    if (v5)
    {
      (*(*result + 16))(result);
      v5 = *(a1 + 1);
    }
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v18)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_14:
  if (v20 == 1)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void sub_19D780738(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, unsigned int *a11, char a12)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a12 == 1 && a11 && atomic_fetch_add(a11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a11 + 2);
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebKeyboardEvent,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 13));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  v9 = *(a2 + 100);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  v8 = *(a2 + 101);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v7 = *(a2 + 102);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  v6 = *(a2 + 103);
  return IPC::Encoder::operator<<<BOOL>(a1, &v6);
}

void IPC::ArgumentCoder<WebKit::WebKeyboardEvent,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WebCore::PermissionName>(a1);
  v5 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a1);
  v6 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v8 = v7;
  IPC::Decoder::decode<WTF::UUID>(a1, v92);
  IPC::Decoder::decode<WTF::String>(a1, &v80);
  IPC::Decoder::decode<WTF::String>(a1, &v78);
  IPC::Decoder::decode<WTF::String>(a1, &v76);
  IPC::Decoder::decode<WTF::String>(a1, &v74);
  IPC::Decoder::decode<WTF::String>(a1, &v72);
  v9 = IPC::Decoder::decode<float>(a1);
  v10 = IPC::Decoder::decode<float>(a1);
  v11 = IPC::Decoder::decode<float>(a1);
  v12 = v11;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *a1;
  if (v13 <= &v14[-*a1])
  {
    v64 = v11;
    *a1 = 0;
    a1[1] = 0;
    v42 = a1[3];
    if (v42)
    {
      if (v13)
      {
        (*(*v42 + 16))(v42);
        v15 = *a1;
        v13 = a1[1];
LABEL_82:
        *a1 = 0;
        a1[1] = 0;
        v43 = a1[3];
        if (v43)
        {
          if (v13)
          {
            (*(*v43 + 16))(v43, v15);
            v63 = 0;
            v15 = *a1;
            v13 = a1[1];
            goto LABEL_86;
          }
        }

        else
        {
          v13 = 0;
        }

        v15 = 0;
        v63 = 0;
        goto LABEL_86;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
    goto LABEL_82;
  }

  v16 = v14 + 1;
  a1[2] = (v14 + 1);
  if (!v14)
  {
    v64 = v11;
    goto LABEL_82;
  }

  v17 = *v14;
  if (v17 < 2)
  {
    v18 = 1;
    goto LABEL_5;
  }

  v63 = v17;
  v64 = v11;
LABEL_86:
  *a1 = 0;
  a1[1] = 0;
  v44 = a1[3];
  if (!v44 || !v13)
  {
    v62 = 0;
    v45 = 0;
    v15 = 0;
LABEL_88:
    *a1 = 0;
    a1[1] = 0;
    v46 = a1[3];
    if (v46 && v45)
    {
      (*(*v46 + 16))(v46, v15, v45);
      v61 = 0;
      v15 = *a1;
      v13 = a1[1];
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v61 = 0;
    }

    goto LABEL_91;
  }

  (*(*v44 + 16))(v44, v15);
  v18 = 0;
  v15 = *a1;
  v13 = a1[1];
  v16 = a1[2];
  v12 = v64;
  v17 = v63;
LABEL_5:
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v13 <= v16 - v15)
  {
    LOBYTE(v62) = v18;
    BYTE4(v62) = v19;
    v64 = v12;
    v45 = 0;
    v54 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v54 && v13)
    {
      (*(*v54 + 16))(v54);
      v15 = *a1;
      v45 = a1[1];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_88;
  }

  v20 = v16 + 1;
  a1[2] = (v16 + 1);
  if (!v16)
  {
    LOBYTE(v62) = v18;
    BYTE4(v62) = v19;
    v64 = v12;
    v45 = v13;
    goto LABEL_88;
  }

  v21 = *v16;
  if (v21 < 2)
  {
    v22 = 1;
    goto LABEL_12;
  }

  v61 = *v16;
  LOBYTE(v62) = v18;
  BYTE4(v62) = v19;
  v64 = v12;
LABEL_91:
  *a1 = 0;
  a1[1] = 0;
  v47 = a1[3];
  if (!v47 || !v13)
  {
    v60 = 0;
    v48 = 0;
    v15 = 0;
LABEL_93:
    *a1 = 0;
    a1[1] = 0;
    v49 = a1[3];
    if (v49 && v48)
    {
      (*(*v49 + 16))(v49, v15, v48);
      v59 = 0;
      v15 = *a1;
      v13 = a1[1];
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v59 = 0;
    }

    goto LABEL_96;
  }

  (*(*v47 + 16))(v47, v15);
  v22 = 0;
  v15 = *a1;
  v13 = a1[1];
  v20 = a1[2];
  v12 = v64;
  v18 = v62;
  v19 = BYTE4(v62);
  v21 = v61;
LABEL_12:
  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v13 <= v20 - v15)
  {
    LOBYTE(v60) = v22;
    BYTE4(v60) = v23;
    LOBYTE(v62) = v18;
    BYTE4(v62) = v19;
    v64 = v12;
    v48 = 0;
    v55 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v55 && v13)
    {
      (*(*v55 + 16))(v55);
      v15 = *a1;
      v48 = a1[1];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_93;
  }

  v24 = v20 + 1;
  a1[2] = (v20 + 1);
  if (!v20)
  {
    LOBYTE(v60) = v22;
    BYTE4(v60) = v23;
    LOBYTE(v62) = v18;
    BYTE4(v62) = v19;
    v64 = v12;
    v48 = v13;
    goto LABEL_93;
  }

  v25 = *v20;
  if (v25 < 2)
  {
    v26 = 1;
    goto LABEL_19;
  }

  v59 = *v20;
  LOBYTE(v60) = v22;
  BYTE4(v60) = v23;
  LOBYTE(v62) = v18;
  BYTE4(v62) = v19;
  v64 = v12;
LABEL_96:
  *a1 = 0;
  a1[1] = 0;
  v50 = a1[3];
  if (!v50 || !v13)
  {
    v58 = 0;
    v51 = 0;
    v15 = 0;
LABEL_98:
    *a1 = 0;
    a1[1] = 0;
    v52 = a1[3];
    if (v52 && v51)
    {
      (*(*v52 + 16))(v52, v15, v51);
      v57 = 0;
      v15 = *a1;
      v13 = a1[1];
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v57 = 0;
    }

    goto LABEL_100;
  }

  (*(*v50 + 16))(v50, v15);
  v26 = 0;
  v15 = *a1;
  v13 = a1[1];
  v24 = a1[2];
  v12 = v64;
  v18 = v62;
  v19 = BYTE4(v62);
  v22 = v60;
  v23 = BYTE4(v60);
  v25 = v59;
LABEL_19:
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v13 <= v24 - v15)
  {
    LOBYTE(v58) = v26;
    BYTE4(v58) = v27;
    LOBYTE(v60) = v22;
    BYTE4(v60) = v23;
    LOBYTE(v62) = v18;
    BYTE4(v62) = v19;
    v64 = v12;
    v51 = 0;
    v56 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v56 && v13)
    {
      (*(*v56 + 16))(v56);
      v15 = *a1;
      v51 = a1[1];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_98;
  }

  a1[2] = (v24 + 1);
  if (!v24)
  {
    LOBYTE(v58) = v26;
    BYTE4(v58) = v27;
    LOBYTE(v60) = v22;
    BYTE4(v60) = v23;
    LOBYTE(v62) = v18;
    BYTE4(v62) = v19;
    v64 = v12;
    v51 = v13;
    goto LABEL_98;
  }

  v28 = *v24;
  if (v28 < 2)
  {
    v29 = 1;
    goto LABEL_26;
  }

  v57 = *v24;
  LOBYTE(v58) = v26;
  BYTE4(v58) = v27;
  LOBYTE(v60) = v22;
  BYTE4(v60) = v23;
  LOBYTE(v62) = v18;
  BYTE4(v62) = v19;
  v64 = v12;
LABEL_100:
  *a1 = 0;
  a1[1] = 0;
  v53 = a1[3];
  if (!v53 || !v13)
  {
LABEL_101:
    *a2 = 0;
    *(a2 + 112) = 0;
    goto LABEL_57;
  }

  (*(*v53 + 16))(v53, v15);
  v29 = 0;
  v15 = *a1;
  v12 = v64;
  v18 = v62;
  v19 = BYTE4(v62);
  v22 = v60;
  v23 = BYTE4(v60);
  v26 = v58;
  v27 = BYTE4(v58);
  v28 = v57;
LABEL_26:
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (!v15)
  {
    goto LABEL_101;
  }

  if ((v4 & 0x100) == 0 || (v5 & 0x100) == 0 || (v8 & 1) == 0 || (v93 & 1) == 0 || (v66 = 0, v65 = &unk_1F10E83B8, v67 = v4, v68 = v5, v70 = v92[0], v71 = v92[1], v69 = v6, (v81 & 1) == 0) || (v79 & 1) == 0 || (v77 & 1) == 0 || (v75 & 1) == 0 || (v73 & 1) == 0 || (v9 & 0x100000000) == 0 || (v10 & 0x100000000) == 0 || (v12 & 0x100000000) == 0 || (v18 & 1) == 0 || (v22 & 1) == 0 || (v26 & 1) == 0 || (v29 & 1) == 0)
  {
    __break(1u);
  }

  WebKit::WebKeyboardEvent::WebKeyboardEvent(v82, &v65, &v80, &v78, &v76, &v74, &v72, v9, v10, v12, v19, v23, v27, v30);
  *(a2 + 8) = 0;
  *(a2 + 12) = v83;
  *(a2 + 28) = v84;
  *(a2 + 44) = v85;
  *a2 = &unk_1F110E540;
  v32 = v86;
  if (v86)
  {
    atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
  }

  *(a2 + 48) = v32;
  v33 = v87;
  if (v87)
  {
    atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
  }

  *(a2 + 56) = v33;
  v34 = v88;
  if (v88)
  {
    atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
  }

  *(a2 + 64) = v34;
  v35 = v89;
  if (v89)
  {
    atomic_fetch_add_explicit(v89, 2u, memory_order_relaxed);
  }

  *(a2 + 72) = v35;
  v36 = v90;
  if (v90)
  {
    atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
  }

  *(a2 + 80) = v36;
  *(a2 + 88) = v91;
  *(a2 + 112) = 1;
  WebKit::WebKeyboardEvent::~WebKeyboardEvent(v82, v31);
LABEL_57:
  if (v73 == 1)
  {
    v37 = v72;
    v72 = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v15);
      }
    }
  }

  if (v75 == 1)
  {
    v38 = v74;
    v74 = 0;
    if (v38)
    {
      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v15);
      }
    }
  }

  if (v77 == 1)
  {
    v39 = v76;
    v76 = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v15);
      }
    }
  }

  if (v79 == 1)
  {
    v40 = v78;
    v78 = 0;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v15);
      }
    }
  }

  if (v81 == 1)
  {
    v41 = v80;
    v80 = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v15);
      }
    }
  }
}

void sub_19D7811A8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, char a22, WTF::StringImpl *a23, char a24, WTF::StringImpl *a25, char a26, WTF::StringImpl *a27, char a28, WTF::StringImpl *a29, char a30)
{
  if (a22 == 1 && a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a24 == 1 && a23 && atomic_fetch_add_explicit(a23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a23, a2);
  }

  if (a26 == 1 && a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if (a28 == 1 && a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a27, a2);
  }

  if (a30 == 1 && a29 && atomic_fetch_add_explicit(a29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a29, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebTouchEvent,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 13));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::VectorArgumentCoder<false,WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
  IPC::VectorArgumentCoder<false,WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 64));
  IPC::VectorArgumentCoder<false,WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 80));
  LODWORD(v4) = *(a2 + 100);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v8 = *(a2 + 105);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  v7 = *(a2 + 106);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  v6 = *(a2 + 104);
  return IPC::Encoder::operator<<<BOOL>(a1, &v6);
}

WTF *IPC::ArgumentCoder<WebKit::WebTouchEvent,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WebCore::PermissionName>(a1);
  v5 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a1);
  v6 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v8 = v7;
  IPC::Decoder::decode<WTF::UUID>(a1, v120);
  v9 = a1[1];
  v10 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *a1;
  v12 = v10 - *a1;
  v13 = v9 >= v12;
  v14 = v9 - v12;
  if (!v13 || v14 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v67 = a1[3];
    if (v67)
    {
      if (v9)
      {
        (*(*v67 + 16))(v67);
        v9 = a1[1];
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_85;
  }

  a1[2] = (v10 + 1);
  if (!v10)
  {
LABEL_85:
    *a1 = 0;
    a1[1] = 0;
    v68 = a1[3];
    if (v68 && v9)
    {
      (*(*v68 + 16))(v68);
    }

    LOBYTE(v110) = 0;
    v113 = 0;
    goto LABEL_87;
  }

  v16 = *v10;
  v101 = 0;
  v102 = 0;
  if (v16 >= 0x3333)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebPlatformTouchPoint>(&v114, a1);
      if ((v119[0] & 1) == 0)
      {
        goto LABEL_24;
      }

      v30 = HIDWORD(v102);
      if (HIDWORD(v102) == v102)
      {
        v31 = WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v101, HIDWORD(v102) + 1, &v114);
        v30 = HIDWORD(v102);
        v32 = (v101 + 80 * HIDWORD(v102));
        v33 = v31[4];
        v35 = v31[1];
        v34 = v31[2];
        v32[3] = v31[3];
        v32[4] = v33;
        v32[1] = v35;
        v32[2] = v34;
        *v32 = *v31;
      }

      else
      {
        v36 = (v101 + 80 * HIDWORD(v102));
        v37 = v118;
        v39 = v115;
        v38 = v116;
        v36[3] = *v117;
        v36[4] = v37;
        v36[1] = v39;
        v36[2] = v38;
        *v36 = v114;
      }

      HIDWORD(v102) = v30 + 1;
      if (!--v16)
      {
        WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v101, (v30 + 1));
        v19 = v101;
        v28 = HIDWORD(v102);
        goto LABEL_17;
      }
    }
  }

  if (v16)
  {
    LODWORD(v102) = 80 * v16 / 0x50u;
    v101 = WTF::fastMalloc((80 * v16));
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebPlatformTouchPoint>(&v114, a1);
      if ((v119[0] & 1) == 0)
      {
        break;
      }

      v17 = HIDWORD(v102);
      if (HIDWORD(v102) == v102)
      {
        v18 = WTF::Vector<WebKit::WebPlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v101, HIDWORD(v102) + 1, &v114);
        v17 = HIDWORD(v102);
        v19 = v101;
        v20 = (v101 + 80 * HIDWORD(v102));
        v21 = v18[4];
        v23 = v18[1];
        v22 = v18[2];
        v20[3] = v18[3];
        v20[4] = v21;
        v20[1] = v23;
        v20[2] = v22;
        *v20 = *v18;
      }

      else
      {
        v19 = v101;
        v24 = (v101 + 80 * HIDWORD(v102));
        v25 = v118;
        v27 = v115;
        v26 = v116;
        v24[3] = *v117;
        v24[4] = v25;
        v24[1] = v27;
        v24[2] = v26;
        *v24 = v114;
      }

      v28 = v17 + 1;
      HIDWORD(v102) = v28;
      if (!--v16)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    v29 = 0;
    LOBYTE(v110) = 0;
    v113 = 0;
    goto LABEL_25;
  }

  v28 = 0;
  v19 = 0;
LABEL_17:
  v101 = 0;
  v110 = v19;
  HIDWORD(v102) = 0;
  v111 = v102;
  v112 = v28;
  v29 = 1;
  v113 = 1;
LABEL_25:
  v40 = v101;
  if (v101)
  {
    v101 = 0;
    LODWORD(v102) = 0;
    WTF::fastFree(v40, v11);
  }

  if (v29)
  {
    v41 = 1;
    goto LABEL_29;
  }

LABEL_87:
  v69 = *a1;
  v70 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v71 = a1[3];
  if (v71 && v70)
  {
    (*(*v71 + 16))(v71, v69);
  }

  v41 = 0;
LABEL_29:
  IPC::Decoder::decode<WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v108, a1);
  IPC::Decoder::decode<WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v106, a1);
  result = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v43 = result;
  v45 = v44;
  v46 = a1[1];
  v47 = a1[2];
  v48 = *a1;
  if (v46 <= &v47[-*a1])
  {
    v98 = v45;
    v91 = result;
    *a1 = 0;
    a1[1] = 0;
    v72 = a1[3];
    if (v72)
    {
      if (v46)
      {
        (*(*v72 + 16))(v72);
        v48 = *a1;
        v46 = a1[1];
LABEL_94:
        *a1 = 0;
        a1[1] = 0;
        v73 = a1[3];
        if (v73)
        {
          if (v46)
          {
            (*(*v73 + 16))(v73, v48);
            v50 = 0;
            v48 = *a1;
            v46 = a1[1];
            goto LABEL_98;
          }
        }

        else
        {
          v46 = 0;
        }

        v48 = 0;
        v50 = 0;
        goto LABEL_98;
      }
    }

    else
    {
      v46 = 0;
    }

    v48 = 0;
    goto LABEL_94;
  }

  v49 = v47 + 1;
  a1[2] = (v47 + 1);
  if (!v47)
  {
    v98 = v45;
    v91 = result;
    goto LABEL_94;
  }

  v50 = *v47;
  if (v50 < 2)
  {
    v51 = 1;
    goto LABEL_33;
  }

  v98 = v45;
  v91 = result;
LABEL_98:
  *a1 = 0;
  a1[1] = 0;
  v74 = a1[3];
  if (!v74 || !v46)
  {
    v93 = 0;
    v75 = 0;
    v48 = 0;
LABEL_100:
    *a1 = 0;
    a1[1] = 0;
    v76 = a1[3];
    if (v76 && v75)
    {
      (*(*v76 + 16))(v76, v48, v75);
      v53 = 0;
      v48 = *a1;
      v46 = a1[1];
    }

    else
    {
      v46 = 0;
      v48 = 0;
      v53 = 0;
    }

    goto LABEL_103;
  }

  result = (*(*v74 + 16))(v74, v48);
  v51 = 0;
  v48 = *a1;
  v46 = a1[1];
  v49 = a1[2];
  v43 = v91;
  v45 = v98;
LABEL_33:
  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  if (v46 <= v49 - v48)
  {
    LOBYTE(v93) = v52;
    BYTE4(v93) = v51;
    v98 = v45;
    v91 = v43;
    v75 = 0;
    v81 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v81 && v46)
    {
      (*(*v81 + 16))(v81);
      v48 = *a1;
      v75 = a1[1];
    }

    else
    {
      v48 = 0;
    }

    goto LABEL_100;
  }

  a1[2] = (v49 + 1);
  if (!v49)
  {
    LOBYTE(v93) = v52;
    BYTE4(v93) = v51;
    v98 = v45;
    v91 = v43;
    v75 = v46;
    goto LABEL_100;
  }

  v53 = *v49;
  if (v53 < 2)
  {
    v54 = 1;
    goto LABEL_40;
  }

  LOBYTE(v93) = v52;
  BYTE4(v93) = v51;
  v98 = v45;
  v91 = v43;
LABEL_103:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v46)
    {
      result = (*(*result + 16))(result, v48);
      v54 = 0;
      v48 = *a1;
      v46 = a1[1];
      goto LABEL_106;
    }

    v48 = 0;
  }

  else
  {
    v48 = 0;
    v46 = 0;
  }

  v54 = 0;
LABEL_106:
  v43 = v91;
  v45 = v98;
  v52 = v93;
  v51 = BYTE4(v93);
LABEL_40:
  if (v53)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v56 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v46 < v56 - v48 || v46 - (v56 - v48) <= 3)
  {
    v88 = v55;
    v90 = v54;
    v95 = v52;
    v97 = v51;
    v100 = v45;
    v78 = v43;
    *a1 = 0;
    a1[1] = 0;
    v79 = a1[3];
    if (v79)
    {
      if (v46)
      {
        (*(*v79 + 16))(v79);
        v48 = *a1;
        v46 = a1[1];
LABEL_123:
        *a1 = 0;
        a1[1] = 0;
        result = a1[3];
        if (result)
        {
          if (v46)
          {
            result = (*(*result + 16))(result, v48);
            v57 = 0;
            v48 = *a1;
            v46 = a1[1];
            goto LABEL_126;
          }

          v48 = 0;
        }

        else
        {
          v48 = 0;
          v46 = 0;
        }

        v57 = 0;
LABEL_126:
        v43 = v78;
        v45 = v100;
        v52 = v95;
        v51 = v97;
        v55 = v88;
        v54 = v90;
        goto LABEL_47;
      }
    }

    else
    {
      v46 = 0;
    }

    v48 = 0;
    goto LABEL_123;
  }

  a1[2] = (v56 + 4);
  if (!v56)
  {
    v88 = v55;
    v90 = v54;
    v95 = v52;
    v97 = v51;
    v100 = v45;
    v78 = v43;
    goto LABEL_123;
  }

  v57 = *v56 | 0x100000000;
LABEL_47:
  v58 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v46 < v58 - v48 || v46 - (v58 - v48) <= 3)
  {
    v86 = v57;
    v87 = v55;
    v89 = v54;
    v94 = v52;
    v96 = v51;
    v99 = v45;
    v92 = v43;
    *a1 = 0;
    a1[1] = 0;
    v80 = a1[3];
    if (v80)
    {
      if (v46)
      {
        (*(*v80 + 16))(v80);
        v48 = *a1;
        v46 = a1[1];
        goto LABEL_128;
      }
    }

    else
    {
      v46 = 0;
    }

    v48 = 0;
  }

  else
  {
    v59 = (v58 + 1);
    a1[2] = (v58 + 1);
    if (v58)
    {
      v60 = *v58 | 0x100000000;
      goto LABEL_51;
    }

    v86 = v57;
    v87 = v55;
    v89 = v54;
    v94 = v52;
    v96 = v51;
    v99 = v45;
    v92 = v43;
  }

LABEL_128:
  *a1 = 0;
  a1[1] = 0;
  v85 = 0.0;
  v82 = a1[3];
  if (!v82)
  {
    v60 = 0;
LABEL_130:
    v46 = 0;
LABEL_131:
    v48 = 0;
    goto LABEL_132;
  }

  if (!v46)
  {
    v60 = 0;
    goto LABEL_131;
  }

  result = (*(*v82 + 16))(v82, v48);
  v60 = 0;
  v48 = *a1;
  v46 = a1[1];
  v59 = a1[2];
  v43 = v92;
  v45 = v99;
  v52 = v94;
  v51 = v96;
  v55 = v87;
  v54 = v89;
  v57 = v86;
LABEL_51:
  v61 = *&v60;
  if (v46 <= v59 - v48)
  {
    v86 = v57;
    v87 = v55;
    v89 = v54;
    v94 = v52;
    v96 = v51;
    v85 = *&v60;
    v99 = v45;
    v92 = v43;
    v77 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v77)
    {
      if (v46)
      {
        (*(*v77 + 16))(v77);
        v48 = *a1;
        v46 = a1[1];
        goto LABEL_132;
      }

      goto LABEL_131;
    }

    goto LABEL_130;
  }

  a1[2] = (v59 + 1);
  if (!v59)
  {
    v86 = v57;
    v87 = v55;
    v89 = v54;
    v94 = v52;
    v96 = v51;
    v85 = *&v60;
    v99 = v45;
    v92 = v43;
LABEL_132:
    *a1 = 0;
    a1[1] = 0;
    v83 = a1[3];
    if (v83)
    {
      if (v46)
      {
        (*(*v83 + 16))(v83, v48);
        v84 = 0;
        v48 = *a1;
        v46 = a1[1];
        goto LABEL_135;
      }
    }

    else
    {
      v46 = 0;
    }

    v48 = 0;
    v84 = 0;
    goto LABEL_135;
  }

  v62 = *v59;
  if (v62 < 2)
  {
    v63 = 1;
    goto LABEL_55;
  }

  v84 = *v59;
  v86 = v57;
  v87 = v55;
  v89 = v54;
  v94 = v52;
  v96 = v51;
  v85 = *&v60;
  v99 = v45;
  v92 = v43;
LABEL_135:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (!result || !v46)
  {
LABEL_136:
    *a2 = 0;
    a2[128] = 0;
    goto LABEL_74;
  }

  result = (*(*result + 16))(result, v48);
  v63 = 0;
  v48 = *a1;
  v43 = v92;
  v45 = v99;
  v52 = v94;
  v51 = v96;
  v55 = v87;
  v54 = v89;
  v61 = v85;
  v57 = v86;
  v62 = v84;
LABEL_55:
  if (v62)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  if (!v48)
  {
    goto LABEL_136;
  }

  if ((v4 & 0x100) == 0 || (v5 & 0x100) == 0 || (v8 & 1) == 0 || (v121 & 1) == 0 || (LODWORD(v102) = 0, v101 = &unk_1F10E83B8, BYTE4(v102) = v4, BYTE5(v102) = v5, v104 = v120[0], v105 = v120[1], v103 = v6, (v41 & 1) == 0) || (v109 & 1) == 0 || (v107 & 1) == 0 || (v45 & 1) == 0 || (v51 & 1) == 0 || (v54 & 1) == 0 || (v57 & 0x100000000) == 0 || (v60 & 0x100000000) == 0 || (v63 & 1) == 0)
  {
    __break(1u);
  }

  WebKit::WebTouchEvent::WebTouchEvent(&v114, &v101, &v110, v108, v106, v43, v52, v55, *&v57, v61, v64);
  WebKit::WebTouchEvent::WebTouchEvent(a2, &v114);
  a2[128] = 1;
  *&v114 = &unk_1F10E7D80;
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v119, v65);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v118, v66);
  result = v117[0];
  if (v117[0])
  {
    v117[0] = 0;
    LODWORD(v117[1]) = 0;
    result = WTF::fastFree(result, v48);
  }

LABEL_74:
  if (v107 == 1)
  {
    result = WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v106, v48);
  }

  if (v109 == 1)
  {
    result = WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v108, v48);
  }

  if (v113 == 1)
  {
    result = v110;
    if (v110)
    {
      v110 = 0;
      v111 = 0;
      return WTF::fastFree(result, v48);
    }
  }

  return result;
}

void sub_19D781EEC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, WTF *a33, int a34, int a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, WTF *a43, int a44)
{
  if (a26 == 1)
  {
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a24, a2);
  }

  if (a32 == 1)
  {
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, a2);
  }

  if (a36 == 1)
  {
    v45 = a33;
    if (a33)
    {
      a33 = 0;
      a34 = 0;
      WTF::fastFree(v45, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a2;
        v6 = a2[1];
LABEL_37:
        *a2 = 0;
        a2[1] = 0;
        v18 = a2[3];
        if (v18 && v6)
        {
          (*(*v18 + 16))(v18, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_39:
        v19 = *a2;
        v20 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v20)
          {
            return (*(*result + 16))(result, v19);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_37;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_37;
  }

  v8 = *v4;
  v21 = 0;
  v22 = 0;
  if (v8 >= 0x2000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebTouchEvent>(v23, a2);
      v14 = v28;
      if (v28)
      {
        if (HIDWORD(v22) == v22)
        {
          WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebTouchEvent>(&v21, v23);
        }

        else
        {
          WebKit::WebTouchEvent::WebTouchEvent(v21 + (HIDWORD(v22) << 7), v23);
          ++HIDWORD(v22);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v28 == 1)
      {
        v23[0] = &unk_1F10E7D80;
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v5);
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v15);
        v16 = v24;
        if (v24)
        {
          v24 = 0;
          v25 = 0;
          WTF::fastFree(v16, v5);
        }
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v21, HIDWORD(v22));
        goto LABEL_20;
      }
    }
  }

  else if (v8)
  {
    LODWORD(v22) = v8;
    v21 = WTF::fastMalloc((v8 << 7));
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebTouchEvent>(v23, a2);
      v9 = v28;
      if (v28)
      {
        if (HIDWORD(v22) == v22)
        {
          WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebTouchEvent>(&v21, v23);
        }

        else
        {
          WebKit::WebTouchEvent::WebTouchEvent(v21 + (HIDWORD(v22) << 7), v23);
          ++HIDWORD(v22);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v28 == 1)
      {
        v23[0] = &unk_1F10E7D80;
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v5);
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v10);
        v11 = v24;
        if (v24)
        {
          v24 = 0;
          v25 = 0;
          WTF::fastFree(v11, v5);
        }
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    *a1 = v21;
    v12 = v22;
    v21 = 0;
    v22 = 0;
    *(a1 + 8) = v12;
    *(a1 + 16) = 1;
  }

  result = WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_19D7822F8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (*(v27 + 16) == 1)
  {
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebTouchEvent::~WebTouchEvent(WebKit::WebTouchEvent *this, void *a2)
{
  *this = &unk_1F10E7D80;
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, v3);
  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, v4);
  }
}

{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::WebPlatformTouchPoint,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = *(a2 + 8);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v5 = *(a2 + 16);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  v7 = *(a2 + 72);
  return IPC::Encoder::operator<<<BOOL>(a1, &v7);
}

uint64_t IPC::ArgumentCoder<WebKit::WebMouseEvent,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 13));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 50));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 60));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 68));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 76));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 104));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));
  LOBYTE(v7[0]) = *(a2 + 120);
  IPC::Encoder::operator<<<BOOL>(a1, v7);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 84));
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, (a2 + 128));
  IPC::VectorArgumentCoder<false,WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v7);
  return WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v5);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebMouseEvent,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v123 = *MEMORY[0x1E69E9840];
  v99 = IPC::Decoder::decode<WebCore::PermissionName>(a1);
  v98 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a1);
  v4 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::UUID>(a1, v116);
  v97 = IPC::Decoder::decode<WebKit::WebMouseEventButton>(a1);
  v7 = a1[1];
  v8 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v9 = v8 - *a1;
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (v10 && v11 > 1)
  {
    a1[2] = (v8 + 1);
    if (v8)
    {
      v95 = *v8 | 0x10000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v70 = a1[3];
    if (v70)
    {
      if (v7)
      {
        (*(*v70 + 16))(v70);
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v71 = a1[3];
  if (v71 && v7)
  {
    (*(*v71 + 16))(v71);
  }

  v95 = 0;
LABEL_8:
  v13 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v15 = v14;
  v114 = v13;
  v115 = v14;
  v16 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v18 = v17;
  v112 = v16;
  v113 = v17;
  v19 = a1[1];
  v20 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = *a1;
  v22 = v20 - *a1;
  v10 = v19 >= v22;
  v23 = v19 - v22;
  if (v10 && v23 > 3)
  {
    a1[2] = (v20 + 1);
    if (v20)
    {
      v93 = *v20 | 0x100000000;
      v24 = v21;
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v75 = a1[3];
    if (v75)
    {
      if (v19)
      {
        (*(*v75 + 16))(v75, v21);
        v21 = *a1;
        v19 = a1[1];
        goto LABEL_126;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = 0;
  }

LABEL_126:
  *a1 = 0;
  a1[1] = 0;
  v76 = a1[3];
  if (v76)
  {
    if (v19)
    {
      (*(*v76 + 16))(v76, v21);
      v93 = 0;
      v24 = *a1;
      v19 = a1[1];
      v21 = *a1;
      goto LABEL_13;
    }

    v24 = 0;
  }

  else
  {
    v24 = 0;
    v19 = 0;
  }

  v21 = 0;
  v93 = 0;
LABEL_13:
  v25 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v19 < v25 - v21 || v19 - (v25 - v21) <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v77 = a1[3];
    if (v77)
    {
      if (v19)
      {
        (*(*v77 + 16))(v77, v24);
        v24 = *a1;
        v19 = a1[1];
        goto LABEL_132;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = 0;
  }

  else
  {
    a1[2] = (v25 + 1);
    if (v25)
    {
      v92 = *v25 | 0x100000000;
      goto LABEL_17;
    }
  }

LABEL_132:
  *a1 = 0;
  a1[1] = 0;
  v78 = a1[3];
  if (v78)
  {
    if (v19)
    {
      (*(*v78 + 16))(v78, v24);
      v92 = 0;
      v24 = *a1;
      v19 = a1[1];
      v21 = *a1;
      goto LABEL_17;
    }

    v24 = 0;
  }

  else
  {
    v24 = 0;
    v19 = 0;
  }

  v21 = 0;
  v92 = 0;
LABEL_17:
  v26 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v27 = v26 - v21;
  v10 = v19 >= v27;
  v28 = v19 - v27;
  if (!v10 || v28 <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v79 = a1[3];
    if (v79)
    {
      if (v19)
      {
        (*(*v79 + 16))(v79, v24);
        v24 = *a1;
        v19 = a1[1];
        goto LABEL_138;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = 0;
    goto LABEL_138;
  }

  a1[2] = (v26 + 1);
  if (v26)
  {
    v91 = *v26 | 0x100000000;
    goto LABEL_22;
  }

LABEL_138:
  *a1 = 0;
  a1[1] = 0;
  v80 = a1[3];
  if (v80 && v19)
  {
    (*(*v80 + 16))(v80, v24);
  }

  v91 = 0;
LABEL_22:
  v90 = IPC::Decoder::decode<float>(a1);
  v85 = IPC::Decoder::decode<unsigned long long>(a1);
  v89 = v29;
  v88 = IPC::Decoder::decode<WebKit::WebMouseEventSyntheticClickType>(a1);
  v30 = a1[1];
  v31 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v32 = v31 - *a1;
  v10 = v30 >= v32;
  v33 = v30 - v32;
  if (v10 && v33 > 3)
  {
    a1[2] = (v31 + 1);
    if (v31)
    {
      v34 = *v31 | 0x100000000;
      goto LABEL_27;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v68 = a1[3];
    if (v68)
    {
      if (v30)
      {
        (*(*v68 + 16))(v68);
        v30 = a1[1];
      }
    }

    else
    {
      v30 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v69 = a1[3];
  if (v69 && v30)
  {
    (*(*v69 + 16))(v69);
  }

  v34 = 0;
LABEL_27:
  IPC::Decoder::decode<WTF::String>(a1, &v110);
  v35 = a1[1];
  v36 = a1[2];
  v37 = *a1;
  v86 = a2;
  v96 = v4;
  v94 = v15;
  if (v35 <= &v36[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v72 = a1[3];
    if (v72)
    {
      if (v35)
      {
        (*(*v72 + 16))(v72);
        v35 = a1[1];
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    a1[2] = (v36 + 1);
    if (v36)
    {
      v38 = *v36;
      if (v38 < 2)
      {
        v87 = 0;
        v84 = v38 != 0;
        goto LABEL_31;
      }

      goto LABEL_121;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v73 = a1[3];
  if (v73)
  {
    if (v35)
    {
      (*(*v73 + 16))(v73);
      v37 = *a1;
      v35 = a1[1];
      goto LABEL_121;
    }
  }

  else
  {
    v35 = 0;
  }

  v37 = 0;
LABEL_121:
  *a1 = 0;
  a1[1] = 0;
  v74 = a1[3];
  if (!v74 || !v35)
  {
    goto LABEL_122;
  }

  (*(*v74 + 16))(v74, v37);
  v84 = 0;
  v81 = a1[3];
  v82 = *a1;
  v83 = a1[1];
  v87 = 1;
  *a1 = 0;
  a1[1] = 0;
  if (v81 && v83)
  {
    (*(*v81 + 16))(v81, v82);
LABEL_122:
    v84 = 0;
    v87 = 1;
  }

LABEL_31:
  v39 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v41 = v40;
  v108 = v39;
  v109 = v40;
  v42 = a1[1];
  v43 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v44 = *a1;
  v45 = v43 - *a1;
  v10 = v42 >= v45;
  v46 = v42 - v45;
  if (!v10 || v46 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v65 = a1[3];
    if (v65)
    {
      if (v42)
      {
        (*(*v65 + 16))(v65);
        v42 = a1[1];
      }
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_103;
  }

  a1[2] = (v43 + 1);
  if (!v43)
  {
LABEL_103:
    *a1 = 0;
    a1[1] = 0;
    v66 = a1[3];
    if (v66 && v42)
    {
      (*(*v66 + 16))(v66);
    }

    LOBYTE(v106[0]) = 0;
    v107 = 0;
LABEL_105:
    v60 = *a1;
    v67 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v67)
    {
      result = (*(*result + 16))(result, v60);
    }

    goto LABEL_67;
  }

  v47 = *v43;
  v101 = 0;
  v102 = 0;
  if (v47 >= 0x1999)
  {
    v53 = v107;
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebMouseEvent>(v118, a1);
      v54 = v122;
      if (v122)
      {
        if (HIDWORD(v102) == v102)
        {
          WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebMouseEvent>(&v101, v118);
        }

        else
        {
          WebKit::WebMouseEvent::WebMouseEvent(v101 + 160 * HIDWORD(v102), v118);
          ++HIDWORD(v102);
        }
      }

      else
      {
        v53 = 0;
      }

      if (v122 == 1)
      {
        v118[0] = &unk_1F10E8378;
        WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v121, v44);
        WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v120, v55);
        v56 = v119;
        v119 = 0;
        if (v56)
        {
          if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v56, v44);
          }
        }
      }

      if ((v54 & 1) == 0)
      {
        break;
      }

      if (!--v47)
      {
        v57 = v53;
        v48 = v18;
        LOBYTE(v106[0]) = 0;
        v107 = v57;
        WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v101, HIDWORD(v102));
        goto LABEL_64;
      }
    }

    LOBYTE(v106[0]) = 0;
    v107 = v53;
  }

  else
  {
    v48 = v18;
    if (v47)
    {
      LODWORD(v102) = 160 * v47 / 0xA0u;
      v101 = WTF::fastMalloc((160 * v47));
      v49 = v107;
      do
      {
        IPC::Decoder::decode<WebKit::WebMouseEvent>(v118, a1);
        v50 = v122;
        if (v122)
        {
          if (HIDWORD(v102) == v102)
          {
            WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebMouseEvent>(&v101, v118);
          }

          else
          {
            WebKit::WebMouseEvent::WebMouseEvent(v101 + 160 * HIDWORD(v102), v118);
            ++HIDWORD(v102);
          }
        }

        else
        {
          v49 = 0;
        }

        if (v122 == 1 && (v118[0] = &unk_1F10E8378, WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v121, v44), WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v120, v51), v52 = v119, v119 = 0, v52) && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v52, v44);
          if ((v50 & 1) == 0)
          {
LABEL_50:
            LOBYTE(v106[0]) = 0;
            v107 = v49;
            goto LABEL_65;
          }
        }

        else if ((v50 & 1) == 0)
        {
          goto LABEL_50;
        }

        --v47;
      }

      while (v47);
    }

LABEL_64:
    v106[0] = v101;
    v58 = v102;
    v101 = 0;
    v102 = 0;
    v106[1] = v58;
    v107 = 1;
LABEL_65:
    v18 = v48;
  }

  result = WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v101, v44);
  if ((v107 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_67:
  if (!*a1)
  {
LABEL_99:
    *v86 = 0;
    v86[160] = 0;
    goto LABEL_91;
  }

  if ((v99 & 0x100) == 0 || (v98 & 0x100) == 0 || (v6 & 1) == 0 || (v117 & 1) == 0 || (LODWORD(v102) = 0, v101 = &unk_1F10E83B8, BYTE4(v102) = v99, BYTE5(v102) = v98, v104 = v116[0], v105 = v116[1], v103 = v96, v97 <= 0xFFu) || (v95 & 0x10000) == 0 || (v94 & 1) == 0 || (v18 & 1) == 0 || (v93 & 0x100000000) == 0 || (v92 & 0x100000000) == 0 || (v91 & 0x100000000) == 0 || (v90 & 0x100000000) == 0 || (v89 & 1) == 0 || v88 <= 0xFFu || (v34 & 0x100000000) == 0 || (v111 & 1) == 0 || v87 || (v41 & 1) == 0 || (v107 & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v100[0] = 0;
  v100[1] = 0;
  WebKit::WebMouseEvent::WebMouseEvent(v118, &v101, v97, v95, &v114, &v112, v90, v88, *&v93, *&v92, *&v91, *&v85, v34, &v110, v84, &v108, v106, v100);
  *(WebKit::WebMouseEvent::WebMouseEvent(v86, v118) + 160) = 1;
  v118[0] = &unk_1F10E8378;
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v121, v61);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v120, v62);
  v64 = v119;
  v119 = 0;
  if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v64, v63);
  }

  result = WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v63);
LABEL_91:
  if (v107 == 1)
  {
    result = WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v106, v60);
  }

  if (v111 == 1)
  {
    result = v110;
    v110 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v60);
      }
    }
  }

  return result;
}

void sub_19D7831D8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, WTF::StringImpl *a45, char a46)
{
  if (a46 == 1 && a45 && atomic_fetch_add_explicit(a45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a45, a2);
  }

  _Unwind_Resume(a1);
}

void WebKit::WebMouseEvent::~WebMouseEvent(WebKit::WebMouseEvent *this, void *a2)
{
  *this = &unk_1F10E8378;
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 144, a2);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 128, v3);
  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::WebWheelEvent,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 13));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  LODWORD(v4) = *(a2 + 52);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  LODWORD(v4) = *(a2 + 60);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v5 = *(a2 + 68);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v5);
  v6 = *(a2 + 76);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  v12 = *(a2 + 93);
  IPC::Encoder::operator<<<BOOL>(a1, &v12);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 84));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  v11 = *(a2 + 94);
  IPC::Encoder::operator<<<BOOL>(a1, &v11);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 116));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 124));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  v7 = *(a2 + 112);
  v9 = *(a2 + 104);
  v10 = v7;
  IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize>>(a1, &v9);
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
}

unint64_t IPC::ArgumentCoder<WebKit::WebWheelEvent,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = *MEMORY[0x1E69E9840];
  v72 = IPC::Decoder::decode<WebCore::PermissionName>(a1);
  v71 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(a1);
  v61 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v70 = v4;
  IPC::Decoder::decode<WTF::UUID>(a1, v74);
  v60 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v69 = v5;
  v59 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v68 = v6;
  v58 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v67 = v7;
  v57 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v66 = v8;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v44 = a1[3];
    if (v44)
    {
      if (v9)
      {
        (*(*v44 + 16))(v44);
        v9 = a1[1];
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_53:
    *a1 = 0;
    a1[1] = 0;
    v45 = a1[3];
    if (v45)
    {
      if (v9)
      {
        (*(*v45 + 16))(v45);
        v11 = *a1;
        v9 = a1[1];
        goto LABEL_56;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_56;
  }

  a1[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_53;
  }

  v12 = *v10;
  if (v12 < 2)
  {
    v13 = v12 | 0x100;
    goto LABEL_5;
  }

LABEL_56:
  *a1 = 0;
  a1[1] = 0;
  v46 = a1[3];
  if (!v46)
  {
    v11 = 0;
    v65 = 0;
    v9 = 0;
    goto LABEL_58;
  }

  if (!v9)
  {
    v11 = 0;
    v65 = 0;
LABEL_58:
    *a1 = 0;
    a1[1] = 0;
    v47 = a1[3];
    if (v47)
    {
      if (v9)
      {
        (*(*v47 + 16))(v47, v11);
        v11 = *a1;
        v9 = a1[1];
LABEL_61:
        *a1 = 0;
        a1[1] = 0;
        v48 = a1[3];
        if (v48)
        {
          if (v9)
          {
            (*(*v48 + 16))(v48, v11);
            v15 = 0;
            v11 = *a1;
            v9 = a1[1];
            goto LABEL_64;
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = 0;
        v15 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_61;
  }

  (*(*v46 + 16))(v46, v11);
  v13 = 0;
  v11 = *a1;
  v9 = a1[1];
LABEL_5:
  v14 = a1[2];
  v65 = v13;
  if (v9 <= &v14[-v11])
  {
    goto LABEL_58;
  }

  a1[2] = (v14 + 1);
  if (!v14)
  {
    goto LABEL_61;
  }

  v15 = *v14;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_9;
  }

LABEL_64:
  *a1 = 0;
  a1[1] = 0;
  v49 = a1[3];
  if (v49 && v9)
  {
    (*(*v49 + 16))(v49, v11);
  }

  v16 = 0;
LABEL_9:
  v64 = v16;
  if (!v15)
  {
    v16 = 0;
  }

  v56 = v16;
  v63 = IPC::Decoder::decode<WebKit::WebWheelEvent::Phase>(a1);
  v62 = IPC::Decoder::decode<WebKit::WebWheelEvent::Phase>(a1);
  v17 = a1[1];
  v18 = a1[2];
  v19 = *a1;
  if (v17 <= &v18[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v50 = a1[3];
    if (v50)
    {
      if (v17)
      {
        (*(*v50 + 16))(v50);
        v17 = a1[1];
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_76:
    *a1 = 0;
    a1[1] = 0;
    v51 = a1[3];
    if (v51)
    {
      if (v17)
      {
        (*(*v51 + 16))(v51);
        v20 = 0;
        v19 = *a1;
        v17 = a1[1];
        goto LABEL_79;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 0;
    v20 = 0;
    goto LABEL_79;
  }

  a1[2] = (v18 + 1);
  if (!v18)
  {
    goto LABEL_76;
  }

  v20 = *v18;
  if (v20 < 2)
  {
    v21 = 1;
    goto LABEL_15;
  }

LABEL_79:
  *a1 = 0;
  a1[1] = 0;
  v52 = a1[3];
  if (!v52)
  {
    v19 = 0;
    v17 = 0;
LABEL_81:
    v21 = 0;
    goto LABEL_15;
  }

  if (!v17)
  {
    v19 = 0;
    goto LABEL_81;
  }

  (*(*v52 + 16))(v52, v19);
  v21 = 0;
  v19 = *a1;
  v17 = a1[1];
LABEL_15:
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v55 = v22;
  if (v17 < v23 - v19 || v17 - (v23 - v19) <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v42 = a1[3];
    if (v42)
    {
      if (v17)
      {
        (*(*v42 + 16))(v42);
        v19 = *a1;
        v17 = a1[1];
        goto LABEL_49;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 0;
    goto LABEL_49;
  }

  a1[2] = (v23 + 1);
  if (v23)
  {
    v24 = *v23 | 0x100000000;
    goto LABEL_22;
  }

LABEL_49:
  *a1 = 0;
  a1[1] = 0;
  v43 = a1[3];
  if (v43 && v17)
  {
    (*(*v43 + 16))(v43, v19);
  }

  v24 = 0;
LABEL_22:
  v25 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v27 = v26;
  v28 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v30 = v29;
  result = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(a1);
  v32 = result;
  v34 = v33;
  v35 = a1[1];
  v36 = a1[2];
  v37 = *a1;
  if (v35 <= &v36[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v53 = a1[3];
    if (v53)
    {
      if (v35)
      {
        (*(*v53 + 16))(v53);
        v35 = a1[1];
      }
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_84;
  }

  a1[2] = (v36 + 1);
  if (!v36)
  {
LABEL_84:
    *a1 = 0;
    a1[1] = 0;
    v54 = a1[3];
    if (v54)
    {
      if (v35)
      {
        (*(*v54 + 16))(v54);
        v37 = *a1;
        v35 = a1[1];
        goto LABEL_87;
      }
    }

    else
    {
      v35 = 0;
    }

    v37 = 0;
LABEL_87:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v35)
      {
        result = (*(*result + 16))(result, v37);
        v39 = 0;
        if (*a1)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_88:
    *a2 = 0;
    *(a2 + 128) = 0;
    return result;
  }

  v38 = *v36;
  if (v38 >= 3)
  {
    goto LABEL_87;
  }

  v39 = v38 | 0x100;
  if (!v37)
  {
    goto LABEL_88;
  }

LABEL_26:
  if ((v72 & 0x100) == 0 || (v71 & 0x100) == 0 || (v70 & 1) == 0 || (v75 & 1) == 0 || (v69 & 1) == 0 || (v68 & 1) == 0 || (v67 & 1) == 0 || (v66 & 1) == 0 || v65 <= 0xFF || (v64 & 1) == 0 || !HIDWORD(v63) || !HIDWORD(v62) || (v21 & 1) == 0 || (v24 & 0x100000000) == 0 || (v27 & 1) == 0 || (v30 & 1) == 0 || (v34 & 0x100000000) == 0 || v39 <= 0xFF)
  {
    __break(1u);
  }

  v41 = v74[0];
  v40 = v74[1];
  *(a2 + 8) = 0;
  *(a2 + 12) = v72;
  *(a2 + 13) = v71;
  *(a2 + 14) = v73;
  *(a2 + 16) = v61;
  *(a2 + 32) = v41;
  *(a2 + 40) = v40;
  *a2 = &unk_1F10E8398;
  *(a2 + 48) = v60;
  *(a2 + 56) = v59;
  *(a2 + 64) = v58;
  *(a2 + 72) = v57;
  *(a2 + 80) = v65;
  *(a2 + 84) = v63;
  *(a2 + 88) = v62;
  *(a2 + 92) = v39;
  *(a2 + 93) = v56;
  *(a2 + 94) = v55;
  *(a2 + 96) = v28;
  *(a2 + 104) = v32;
  *(a2 + 112) = v34;
  *(a2 + 116) = v24;
  *(a2 + 120) = v25;
  *(a2 + 128) = 1;
  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebWheelEvent::Phase>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v1)
      {
        (*(*v12 + 16))(v12);
        v3 = *v17;
        v1 = v17[1];
        goto LABEL_16;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_16:
    a1 = v17;
    *v17 = 0;
    v17[1] = 0;
    v13 = v17[3];
    if (v13 && v1)
    {
      (*(*v13 + 16))(v13, v3);
      a1 = v17;
    }

    goto LABEL_17;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v17 = a1;
    goto LABEL_16;
  }

  v8 = *v2;
  if (v8 <= 0x20 && ((1 << v8) & 0x100010117) != 0)
  {
    v10 = 0x100000000;
    return v8 | v10;
  }

LABEL_17:
  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v16 = a1[3];
  if (v16 && v15)
  {
    (*(*v16 + 16))(v16, v14);
  }

  v8 = 0;
  v10 = 0;
  return v8 | v10;
}

unint64_t IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 0x100000000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<WebKit::WebFoundTextRange::PDFData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[2]);
  v4 = a2[3];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebFoundTextRange,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebFoundTextRange::DOMData,WebKit::WebFoundTextRange::PDFData> const&>(a1, a2, v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebFoundTextRange,void>::decode@<X0>(WTF::StringImpl *result@<X0>, uint64_t a2@<X8>)
{
  v7 = result;
  v9 = *(result + 1);
  v10 = *(result + 2);
  v11 = *result;
  if (v9 <= v10 - *result)
  {
    *result = 0;
    *(result + 1) = 0;
    v52 = *(result + 3);
    if (v52)
    {
      if (v9)
      {
        (*(*v52 + 16))(v52, v11);
        v11 = *v7;
        v9 = v7[1];
        goto LABEL_108;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
  }

  else
  {
    *(result + 2) = v10 + 1;
    if (v10)
    {
      v12 = *v10;
      if (v12 > 1)
      {
        goto LABEL_4;
      }

      v16 = v10 & 0xFFFFFFFFFFFFFFF8;
      v17 = ((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
      v19 = v9 >= v17 - v11 && v9 - (v17 - v11) > 7;
      if (v12)
      {
        if (v19)
        {
          *(result + 2) = v16 + 16;
          if (v17)
          {
            v14 = *v17;
            v20 = 1;
            v13 = v11;
            goto LABEL_16;
          }

          v20 = v9;
          v37 = v11;
        }

        else
        {
          v20 = 0;
          v37 = 0;
          *result = 0;
          *(result + 1) = 0;
          v38 = *(result + 3);
          if (v38)
          {
            (*(*v38 + 16))(v38, v11);
            v37 = *v7;
            v20 = v7[1];
          }
        }

        *v7 = 0;
        v7[1] = 0;
        result = v7[3];
        if (result)
        {
          if (v20)
          {
            result = (*(*result + 16))(result, v37, v20);
            v20 = 0;
            v14 = 0;
            v13 = *v7;
            v9 = v7[1];
            v11 = *v7;
            goto LABEL_16;
          }

          v13 = 0;
          v9 = 0;
          v11 = 0;
        }

        else
        {
          v13 = 0;
          v9 = 0;
          v11 = 0;
          v20 = 0;
        }

        v14 = 0;
LABEL_16:
        v21 = ((v7[2] + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v9 >= v21 - v11 && v9 - (v21 - v11) > 7)
        {
          v7[2] = (v21 + 8);
          if (v21)
          {
            v2 = *v21;
            v22 = 1;
LABEL_20:
            v23 = ((v7[2] + 7) & 0xFFFFFFFFFFFFFFF8);
            if (v9 >= v23 - v11 && v9 - (v23 - v11) > 7)
            {
              v7[2] = (v23 + 1);
              if (v23)
              {
                v3 = *v23;
                v5 = 1;
LABEL_24:
                v24 = ((v7[2] + 7) & 0xFFFFFFFFFFFFFFF8);
                if (v9 >= v24 - v11 && v9 - (v24 - v11) > 7)
                {
                  v7[2] = (v24 + 1);
                  if (v24)
                  {
                    v4 = *v24;
                    v25 = 1;
                    if (v11)
                    {
                      goto LABEL_28;
                    }

                    goto LABEL_102;
                  }

                  v6 = v22;
                  v42 = v20;
LABEL_88:
                  *v7 = 0;
                  v7[1] = 0;
                  v44 = v7[3];
                  if (!v44 || !v9)
                  {
                    goto LABEL_4;
                  }

                  result = (*(*v44 + 16))(v44, v13);
                  v25 = 0;
                  v4 = 0;
                  v13 = *v7;
                  LOBYTE(v20) = v42;
                  LOBYTE(v22) = v6;
                  if (*v7)
                  {
LABEL_28:
                    if ((v20 & 1) == 0 || (v22 & 1) == 0 || (v5 & 1) == 0 || (v25 & 1) == 0)
                    {
                      goto LABEL_55;
                    }

                    v6 = v14 >> 8;
                    v5 = 1;
                    v15 = 1;
                    goto LABEL_43;
                  }

                  goto LABEL_102;
                }

                v6 = v22;
                v42 = v20;
                *v7 = 0;
                v7[1] = 0;
                v43 = v7[3];
                if (v43)
                {
                  if (v9)
                  {
                    (*(*v43 + 16))(v43, v13);
                    v13 = *v7;
                    v9 = v7[1];
                    goto LABEL_88;
                  }
                }

                else
                {
                  v9 = 0;
                }

                v13 = 0;
                goto LABEL_88;
              }

              v4 = v22;
              v6 = v20;
LABEL_81:
              *v7 = 0;
              v7[1] = 0;
              result = v7[3];
              if (result)
              {
                if (v9)
                {
                  result = (*(*result + 16))(result, v13);
                  v5 = 0;
                  v3 = 0;
                  v13 = *v7;
                  v9 = v7[1];
                  v11 = *v7;
                  goto LABEL_84;
                }

                v13 = 0;
              }

              else
              {
                v13 = 0;
                v9 = 0;
              }

              v11 = 0;
              v5 = 0;
              v3 = 0;
LABEL_84:
              LOBYTE(v20) = v6;
              v22 = v4;
              goto LABEL_24;
            }

            v4 = v22;
            v6 = v20;
            *v7 = 0;
            v7[1] = 0;
            v41 = v7[3];
            if (v41)
            {
              if (v9)
              {
                (*(*v41 + 16))(v41, v13);
                v13 = *v7;
                v9 = v7[1];
                goto LABEL_81;
              }
            }

            else
            {
              v9 = 0;
            }

            v13 = 0;
            goto LABEL_81;
          }

          v39 = v20;
LABEL_74:
          *v7 = 0;
          v7[1] = 0;
          result = v7[3];
          if (result)
          {
            if (v9)
            {
              result = (*(*result + 16))(result, v13);
              v22 = 0;
              v2 = 0;
              v13 = *v7;
              v9 = v7[1];
              v11 = *v7;
              goto LABEL_77;
            }

            v13 = 0;
          }

          else
          {
            v13 = 0;
            v9 = 0;
          }

          v11 = 0;
          v22 = 0;
          v2 = 0;
LABEL_77:
          v20 = v39;
          goto LABEL_20;
        }

        v39 = v20;
        *v7 = 0;
        v7[1] = 0;
        v40 = v7[3];
        if (v40)
        {
          if (v9)
          {
            (*(*v40 + 16))(v40, v13);
            v13 = *v7;
            v9 = v7[1];
            goto LABEL_74;
          }
        }

        else
        {
          v9 = 0;
        }

        v13 = 0;
        goto LABEL_74;
      }

      if (v19)
      {
        *(result + 2) = v16 + 16;
        if (v17)
        {
          v14 = *v17;
          v3 = 1;
          v13 = v11;
          goto LABEL_36;
        }

        v45 = v9;
        v46 = v11;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        *result = 0;
        *(result + 1) = 0;
        v47 = *(result + 3);
        if (v47)
        {
          (*(*v47 + 16))(v47, v11);
          v46 = *v7;
          v45 = v7[1];
        }
      }

      *v7 = 0;
      v7[1] = 0;
      result = v7[3];
      if (result && v45)
      {
        result = (*(*result + 16))(result, v46, v45);
        v3 = 0;
        v14 = 0;
        v13 = *v7;
        v9 = v7[1];
        v11 = *v7;
      }

      else
      {
        v13 = 0;
        v9 = 0;
        v11 = 0;
        v3 = 0;
        v14 = 0;
      }

LABEL_36:
      v26 = ((v7[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v9 < v26 - v11 || v9 - (v26 - v11) <= 7)
      {
        *v7 = 0;
        v7[1] = 0;
        v48 = v7[3];
        if (v48)
        {
          if (v9)
          {
            (*(*v48 + 16))(v48, v13);
            v13 = *v7;
            v9 = v7[1];
            goto LABEL_99;
          }
        }

        else
        {
          v9 = 0;
        }

        v13 = 0;
      }

      else
      {
        v7[2] = (v26 + 8);
        if (v26)
        {
          v2 = *v26;
          v27 = 1;
          if (!v11)
          {
LABEL_102:
            v50 = v7[1];
            v51 = v7[3];
            *v7 = 0;
            v7[1] = 0;
            if (v51 && v50)
            {
              (*(*v51 + 16))(v51, v13);
            }

            goto LABEL_4;
          }

LABEL_40:
          if ((v3 & 1) == 0 || (v27 & 1) == 0)
          {
            goto LABEL_55;
          }

          v5 = 0;
          v6 = v14 >> 8;
          v15 = 1;
          goto LABEL_43;
        }
      }

LABEL_99:
      *v7 = 0;
      v7[1] = 0;
      v49 = v7[3];
      if (!v49 || !v9)
      {
        goto LABEL_4;
      }

      result = (*(*v49 + 16))(v49, v13);
      v27 = 0;
      v2 = 0;
      v13 = *v7;
      if (!*v7)
      {
        goto LABEL_102;
      }

      goto LABEL_40;
    }
  }

LABEL_108:
  *v7 = 0;
  v7[1] = 0;
  v53 = v7[3];
  if (v53 && v9)
  {
    (*(*v53 + 16))(v53, v11);
  }

LABEL_4:
  v13 = *v7;
  v9 = v7[1];
  *v7 = 0;
  v7[1] = 0;
  result = v7[3];
  if (result)
  {
    goto LABEL_56;
  }

  while (1)
  {
    LOBYTE(v14) = 0;
    v15 = 0;
LABEL_43:
    result = IPC::Decoder::decode<WTF::AtomString>(v7, &v54);
    v9 = v7[1];
    v28 = ((v7[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v7;
    v29 = (v28 - *v7);
    v30 = v9 >= v29;
    v31 = v9 - v29;
    if (!v30 || v31 <= 7)
    {
      break;
    }

    v7[2] = (v28 + 8);
    if (!v28)
    {
      goto LABEL_61;
    }

    v33 = *v28;
    v34 = 1;
    if (!v13)
    {
      goto LABEL_62;
    }

LABEL_50:
    if (v15 & 1) != 0 && (v55 & 1) != 0 && (v34)
    {
      v35 = v54;
      *a2 = v14;
      *(a2 + 1) = v6;
      *(a2 + 7) = BYTE6(v6);
      *(a2 + 5) = WORD2(v6);
      *(a2 + 8) = v2;
      *(a2 + 16) = v3;
      *(a2 + 24) = v4;
      *(a2 + 32) = v5;
      *(a2 + 40) = v35;
      *(a2 + 48) = v33;
      *(a2 + 56) = 1;
      return result;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    if (v9)
    {
      (*(*result + 16))(result, v13);
    }
  }

  *v7 = 0;
  v7[1] = 0;
  v36 = v7[3];
  if (v36)
  {
    if (v9)
    {
      (*(*v36 + 16))(v36);
      v13 = *v7;
      v9 = v7[1];
      goto LABEL_61;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = 0;
LABEL_61:
  *v7 = 0;
  v7[1] = 0;
  result = v7[3];
  if (result)
  {
    if (v9)
    {
      result = (*(*result + 16))(result);
      v34 = 0;
      v33 = 0;
      v13 = *v7;
      if (*v7)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_62:
  *a2 = 0;
  *(a2 + 56) = 0;
  if (v55)
  {
    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

void sub_19D784730(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebFrameMetrics,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

WTF *IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 64));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 68));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 84));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 85));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 86));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 87));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 88));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 89));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 90));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 91));
  IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::encode<IPC::Encoder,std::optional<WebKit::FrameInfoData> const&>(a1, a2 + 96);
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(a1, a2 + 464);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 488));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 496));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 504));
  WebKit::WebHitTestResultData::getImageSharedMemoryHandle(a2, v5);
  IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(a1, v5);
  if (v5[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v5);
  }

  IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::encode<IPC::Encoder,WebCore::ShareableBitmap>(a1, (a2 + 520));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 528));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 536));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 537));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 538));
  IPC::ArgumentCoder<std::optional<WebCore::ResourceResponse>,void>::encode<IPC::Encoder,std::optional<WebCore::ResourceResponse> const&>(a1, (a2 + 544));
  IPC::ArgumentCoder<WebCore::DictionaryPopupInfo,void>::encode(a1, a2 + 816);
  return IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(a1, (a2 + 840));
}

void sub_19D7849A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v208 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::String>(a1, &v194);
  IPC::Decoder::decode<WTF::String>(a1, &v192);
  IPC::Decoder::decode<WTF::String>(a1, &v190);
  IPC::Decoder::decode<WTF::String>(a1, &v188);
  IPC::Decoder::decode<WTF::String>(a1, &v186);
  IPC::Decoder::decode<WTF::String>(a1, &v184);
  IPC::Decoder::decode<WTF::String>(a1, &v182);
  IPC::Decoder::decode<WTF::String>(a1, &v180);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  v141 = a2;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (v60)
    {
      if (v4)
      {
        (*(*v60 + 16))(v60);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_93:
    *a1 = 0;
    *(a1 + 1) = 0;
    v61 = *(a1 + 3);
    if (v61)
    {
      if (v4)
      {
        (*(*v61 + 16))(v61);
        v7 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_96;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_96;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_93;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_96:
  *a1 = 0;
  *(a1 + 1) = 0;
  v62 = *(a1 + 3);
  if (v62 && v4)
  {
    (*(*v62 + 16))(v62, v6);
  }

  v8 = 0;
LABEL_5:
  v147 = v8;
  if (!v7)
  {
    v8 = 0;
  }

  v140 = v8;
  IPC::Decoder::decode<WebCore::IntRect>(a1, &v178);
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = *a1;
  if (v9 <= &v10[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (v63)
    {
      if (v9)
      {
        (*(*v63 + 16))(v63);
        v9 = *(a1 + 1);
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_100:
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64)
    {
      if (v9)
      {
        (*(*v64 + 16))(v64);
        v11 = *a1;
        v9 = *(a1 + 1);
        goto LABEL_103;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_103;
  }

  *(a1 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_100;
  }

  v12 = *v10;
  if (v12 < 3)
  {
    v13 = v12 | 0x100;
    goto LABEL_11;
  }

LABEL_103:
  *a1 = 0;
  *(a1 + 1) = 0;
  v65 = *(a1 + 3);
  if (!v65 || !v9)
  {
    v11 = 0;
    v9 = 0;
    v177 = 0;
LABEL_105:
    *a1 = 0;
    *(a1 + 1) = 0;
    v66 = *(a1 + 3);
    if (v66)
    {
      if (v9)
      {
        (*(*v66 + 16))(v66, v11);
        v11 = *a1;
        v9 = *(a1 + 1);
LABEL_108:
        *a1 = 0;
        *(a1 + 1) = 0;
        v67 = *(a1 + 3);
        if (v67)
        {
          if (v9)
          {
            (*(*v67 + 16))(v67, v11);
            v16 = 0;
            v11 = *a1;
            v9 = *(a1 + 1);
            goto LABEL_111;
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = 0;
        v16 = 0;
        goto LABEL_111;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_108;
  }

  (*(*v65 + 16))(v65, v11);
  v13 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
LABEL_11:
  v177 = v13;
  v14 = *(a1 + 2);
  if (v9 <= &v14[-v11])
  {
    goto LABEL_105;
  }

  v15 = v14 + 1;
  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
    goto LABEL_108;
  }

  v16 = *v14;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_15;
  }

LABEL_111:
  *a1 = 0;
  *(a1 + 1) = 0;
  v68 = *(a1 + 3);
  if (!v68 || !v9)
  {
    v139 = 0;
    v17 = 0;
    v69 = 0;
    v11 = 0;
LABEL_113:
    *a1 = 0;
    *(a1 + 1) = 0;
    v70 = *(a1 + 3);
    if (v70 && v69)
    {
      (*(*v70 + 16))(v70, v11, v69);
      v20 = 0;
      v11 = *a1;
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v20 = 0;
    }

    goto LABEL_115;
  }

  (*(*v68 + 16))(v68, v11);
  v17 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
  v15 = *(a1 + 2);
LABEL_15:
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v139 = v18;
  if (v9 <= &v15[-v11])
  {
    v69 = 0;
    v133 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v133 && v9)
    {
      (*(*v133 + 16))(v133);
      v11 = *a1;
      v69 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_113;
  }

  v19 = v15 + 1;
  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
    v69 = v9;
    goto LABEL_113;
  }

  v20 = *v15;
  if (v20 < 2)
  {
    v21 = 1;
    goto LABEL_22;
  }

LABEL_115:
  *a1 = 0;
  *(a1 + 1) = 0;
  v71 = *(a1 + 3);
  if (!v71 || !v9)
  {
    v138 = 0;
    v146 = 0;
    v72 = 0;
    v11 = 0;
LABEL_117:
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73 && v72)
    {
      (*(*v73 + 16))(v73, v11, v72);
      v23 = 0;
      v11 = *a1;
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v23 = 0;
    }

    goto LABEL_119;
  }

  (*(*v71 + 16))(v71, v11);
  v21 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
  v19 = *(a1 + 2);
LABEL_22:
  v146 = v21;
  if (!v20)
  {
    v21 = 0;
  }

  v138 = v21;
  if (v9 <= &v19[-v11])
  {
    v72 = 0;
    v132 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v132 && v9)
    {
      (*(*v132 + 16))(v132);
      v11 = *a1;
      v72 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_117;
  }

  v22 = v19 + 1;
  *(a1 + 2) = v19 + 1;
  if (!v19)
  {
    v72 = v9;
    goto LABEL_117;
  }

  v23 = *v19;
  if (v23 < 2)
  {
    v24 = 1;
    goto LABEL_28;
  }

LABEL_119:
  *a1 = 0;
  *(a1 + 1) = 0;
  v74 = *(a1 + 3);
  if (!v74 || !v9)
  {
    v137 = 0;
    v24 = 0;
    v75 = 0;
    v11 = 0;
LABEL_121:
    *a1 = 0;
    *(a1 + 1) = 0;
    v76 = *(a1 + 3);
    if (v76 && v75)
    {
      (*(*v76 + 16))(v76, v11, v75);
      v27 = 0;
      v11 = *a1;
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v27 = 0;
    }

    goto LABEL_123;
  }

  (*(*v74 + 16))(v74, v11);
  v24 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
  v22 = *(a1 + 2);
LABEL_28:
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v137 = v25;
  if (v9 <= &v22[-v11])
  {
    v75 = 0;
    v131 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v131 && v9)
    {
      (*(*v131 + 16))(v131);
      v11 = *a1;
      v75 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_121;
  }

  v26 = v22 + 1;
  *(a1 + 2) = v22 + 1;
  if (!v22)
  {
    v75 = v9;
    goto LABEL_121;
  }

  v27 = *v22;
  if (v27 < 2)
  {
    v28 = 1;
    goto LABEL_35;
  }

LABEL_123:
  *a1 = 0;
  *(a1 + 1) = 0;
  v77 = *(a1 + 3);
  if (!v77 || !v9)
  {
    v136 = 0;
    v144 = 0;
    v78 = 0;
    v11 = 0;
LABEL_125:
    *a1 = 0;
    *(a1 + 1) = 0;
    v79 = *(a1 + 3);
    if (v79 && v78)
    {
      (*(*v79 + 16))(v79, v11, v78);
      v30 = 0;
      v11 = *a1;
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v30 = 0;
    }

    goto LABEL_127;
  }

  (*(*v77 + 16))(v77, v11);
  v28 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
  v26 = *(a1 + 2);
LABEL_35:
  v144 = v28;
  if (!v27)
  {
    v28 = 0;
  }

  v136 = v28;
  if (v9 <= &v26[-v11])
  {
    v78 = 0;
    v130 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v130 && v9)
    {
      (*(*v130 + 16))(v130);
      v11 = *a1;
      v78 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_125;
  }

  v29 = v26 + 1;
  *(a1 + 2) = v26 + 1;
  if (!v26)
  {
    v78 = v9;
    goto LABEL_125;
  }

  v30 = *v26;
  if (v30 < 2)
  {
    v31 = 1;
    goto LABEL_41;
  }

LABEL_127:
  *a1 = 0;
  *(a1 + 1) = 0;
  v80 = *(a1 + 3);
  if (!v80 || !v9)
  {
    v32 = 0;
    v31 = 0;
    v81 = 0;
    v11 = 0;
LABEL_129:
    *a1 = 0;
    *(a1 + 1) = 0;
    v82 = *(a1 + 3);
    if (v82 && v81)
    {
      (*(*v82 + 16))(v82, v11, v81);
      v33 = 0;
      v11 = *a1;
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v33 = 0;
    }

    goto LABEL_131;
  }

  (*(*v80 + 16))(v80, v11);
  v31 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
  v29 = *(a1 + 2);
LABEL_41:
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v9 <= &v29[-v11])
  {
    v81 = 0;
    v129 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v129 && v9)
    {
      (*(*v129 + 16))(v129);
      v11 = *a1;
      v81 = *(a1 + 1);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_129;
  }

  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
    v81 = v9;
    goto LABEL_129;
  }

  v33 = *v29;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_48;
  }

LABEL_131:
  *a1 = 0;
  *(a1 + 1) = 0;
  v83 = *(a1 + 3);
  if (!v83 || !v9)
  {
    v11 = 0;
    v35 = 0;
    v34 = 0;
    v9 = 0;
    goto LABEL_133;
  }

  (*(*v83 + 16))(v83, v11);
  v34 = 0;
  v11 = *a1;
  v9 = *(a1 + 1);
LABEL_48:
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = *(a1 + 2);
  if (v9 <= &v36[-v11])
  {
LABEL_133:
    *a1 = 0;
    *(a1 + 1) = 0;
    v84 = *(a1 + 3);
    if (v84)
    {
      if (v9)
      {
        (*(*v84 + 16))(v84, v11);
        v11 = *a1;
        v9 = *(a1 + 1);
LABEL_136:
        *a1 = 0;
        *(a1 + 1) = 0;
        v85 = *(a1 + 3);
        if (v85)
        {
          if (v9)
          {
            (*(*v85 + 16))(v85, v11);
            v11 = *a1;
            v9 = *(a1 + 1);
            goto LABEL_139;
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = 0;
        goto LABEL_139;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 0;
    goto LABEL_136;
  }

  *(a1 + 2) = v36 + 1;
  if (!v36)
  {
    goto LABEL_136;
  }

  v37 = *v36;
  if (v37 < 3)
  {
    v38 = v37 | 0x100;
    goto LABEL_55;
  }

LABEL_139:
  *a1 = 0;
  *(a1 + 1) = 0;
  v86 = *(a1 + 3);
  if (v86 && v9)
  {
    (*(*v86 + 16))(v86, v11);
  }

  v38 = 0;
LABEL_55:
  v176 = v38;
  IPC::Decoder::decode<std::optional<WebKit::FrameInfoData>>(a1, v200);
  IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::decode<IPC::Decoder>(a1, &v173);
  if ((v175 & 1) == 0)
  {
    v57 = *a1;
    v58 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v59 = *(a1 + 3);
    if (v59)
    {
      if (v58)
      {
        (*(*v59 + 16))(v59, v57);
      }
    }
  }

  IPC::Decoder::decode<WTF::String>(a1, &v171);
  IPC::Decoder::decode<WTF::String>(a1, &v169);
  IPC::Decoder::decode<WTF::String>(a1, &v167);
  IPC::Decoder::decode<std::optional<WebCore::SharedMemoryHandle>>(v165, a1);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(a1, &v163);
  IPC::Decoder::decode<WTF::String>(a1, &v161);
  v39 = *(a1 + 1);
  v40 = *(a1 + 2);
  v41 = *a1;
  v145 = v24;
  v134 = v35;
  v135 = v32;
  v142 = v34;
  v143 = v31;
  if (v39 <= &v40[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v87 = *(a1 + 3);
    if (v87)
    {
      if (v39)
      {
        (*(*v87 + 16))(v87);
        v39 = *(a1 + 1);
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_177:
    *a1 = 0;
    *(a1 + 1) = 0;
    v88 = *(a1 + 3);
    if (v88)
    {
      if (v39)
      {
        (*(*v88 + 16))(v88);
        v43 = 0;
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_180;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
    v43 = 0;
    goto LABEL_180;
  }

  v42 = v40 + 1;
  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
    goto LABEL_177;
  }

  v43 = *v40;
  if (v43 < 2)
  {
    v44 = 1;
    goto LABEL_60;
  }

LABEL_180:
  *a1 = 0;
  *(a1 + 1) = 0;
  v89 = *(a1 + 3);
  if (!v89 || !v39)
  {
    v45 = 0;
    v44 = 0;
    v90 = 0;
    v41 = 0;
LABEL_182:
    *a1 = 0;
    *(a1 + 1) = 0;
    v91 = *(a1 + 3);
    if (v91 && v90)
    {
      (*(*v91 + 16))(v91, v41, v90);
      v47 = 0;
      v41 = *a1;
      v39 = *(a1 + 1);
    }

    else
    {
      v39 = 0;
      v41 = 0;
      v47 = 0;
    }

    goto LABEL_184;
  }

  (*(*v89 + 16))(v89, v41);
  v44 = 0;
  v41 = *a1;
  v39 = *(a1 + 1);
  v42 = *(a1 + 2);
LABEL_60:
  if (v43)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (v39 <= &v42[-v41])
  {
    v90 = 0;
    v127 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v127 && v39)
    {
      (*(*v127 + 16))(v127);
      v41 = *a1;
      v90 = *(a1 + 1);
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_182;
  }

  v46 = v42 + 1;
  *(a1 + 2) = v42 + 1;
  if (!v42)
  {
    v90 = v39;
    goto LABEL_182;
  }

  v47 = *v42;
  if (v47 < 2)
  {
    v48 = 1;
    goto LABEL_67;
  }

LABEL_184:
  *a1 = 0;
  *(a1 + 1) = 0;
  v92 = *(a1 + 3);
  if (!v92 || !v39)
  {
    v49 = 0;
    v48 = 0;
    v93 = 0;
    v41 = 0;
LABEL_186:
    *a1 = 0;
    *(a1 + 1) = 0;
    v94 = *(a1 + 3);
    if (v94 && v93)
    {
      (*(*v94 + 16))(v94, v41, v93);
      v50 = 0;
      v41 = *a1;
      v39 = *(a1 + 1);
    }

    else
    {
      v39 = 0;
      v41 = 0;
      v50 = 0;
    }

    goto LABEL_188;
  }

  (*(*v92 + 16))(v92, v41);
  v48 = 0;
  v41 = *a1;
  v39 = *(a1 + 1);
  v46 = *(a1 + 2);
LABEL_67:
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v39 <= &v46[-v41])
  {
    v93 = 0;
    v128 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v128 && v39)
    {
      (*(*v128 + 16))(v128);
      v41 = *a1;
      v93 = *(a1 + 1);
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_186;
  }

  *(a1 + 2) = v46 + 1;
  if (!v46)
  {
    v93 = v39;
    goto LABEL_186;
  }

  v50 = *v46;
  if (v50 < 2)
  {
    v51 = 1;
    goto LABEL_74;
  }

LABEL_188:
  *a1 = 0;
  *(a1 + 1) = 0;
  v95 = *(a1 + 3);
  if (!v95 || !v39)
  {
    v41 = 0;
    v52 = 0;
    v51 = 0;
    v39 = 0;
LABEL_190:
    *a1 = 0;
    *(a1 + 1) = 0;
    v96 = *(a1 + 3);
    if (v96)
    {
      if (v39)
      {
        (*(*v96 + 16))(v96, v41);
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_193;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
LABEL_193:
    *a1 = 0;
    *(a1 + 1) = 0;
    v97 = *(a1 + 3);
    if (v97)
    {
      if (v39)
      {
        (*(*v97 + 16))(v97, v41);
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_196;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
LABEL_196:
    *a1 = 0;
    *(a1 + 1) = 0;
    v98 = *(a1 + 3);
    if (v98 && v39)
    {
      (*(*v98 + 16))(v98, v41);
    }

    goto LABEL_197;
  }

  (*(*v95 + 16))(v95, v41);
  v51 = 0;
  v41 = *a1;
  v39 = *(a1 + 1);
LABEL_74:
  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = *(a1 + 2);
  if (v39 <= &v53[-v41])
  {
    goto LABEL_190;
  }

  *(a1 + 2) = v53 + 1;
  if (!v53)
  {
    goto LABEL_193;
  }

  v54 = *v53;
  if (v54 >= 2)
  {
    goto LABEL_196;
  }

  if (!v54)
  {
    LOBYTE(v196[0]) = 0;
    v199 = 0;
    std::__optional_move_base<WebCore::ResourceResponse,false>::__optional_move_base[abi:sn200100](v156, v196);
    v160 = 1;
    if (v199 != 1)
    {
      goto LABEL_198;
    }

    v56 = v197;
    v197 = 0;
    if (v56)
    {
    }

    goto LABEL_87;
  }

  IPC::Decoder::decode<WebCore::ResourceResponse>(a1, v196);
  if (v199 == 1)
  {
    WebCore::ResourceResponseBase::ResourceResponseBase(v156, v196);
    v157 = v197;
    v158 = v198;
    v159 = 1;
    v160 = 1;
    if ((v199 & 1) == 0)
    {
      goto LABEL_198;
    }

    v197 = 0;
LABEL_87:
    WebCore::ResourceResponseBase::~ResourceResponseBase(v196, v55);
    goto LABEL_198;
  }

LABEL_197:
  v156[0] = 0;
  v160 = 0;
LABEL_198:
  if ((v160 & 1) == 0)
  {
    goto LABEL_315;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebCore::DictionaryPopupInfo,void>::decode(a1, &v152);
    v99 = v155;
    if ((v155 & 1) == 0)
    {
      v124 = *a1;
      v125 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v126 = *(a1 + 3);
      if (v126)
      {
        if (v125)
        {
          (*(*v126 + 16))(v126, v124);
        }
      }
    }

    IPC::Decoder::decode<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>(a1, &v150);
    if (!*a1)
    {
      break;
    }

    if (v195 & 1) != 0 && (v193 & 1) != 0 && (v191 & 1) != 0 && (v189 & 1) != 0 && (v187 & 1) != 0 && (v185 & 1) != 0 && (v183 & 1) != 0 && (v181 & 1) != 0 && (v147 & 1) != 0 && (v179 & 1) != 0 && (v177 & 0x100) != 0 && (v17 & 1) != 0 && (v146 & 1) != 0 && (v145 & 1) != 0 && (v144 & 1) != 0 && (v143 & 1) != 0 && (v142 & 1) != 0 && (v38 & 0x100) != 0 && (v207 & 1) != 0 && (v175)
    {
      v148 = v173;
      v149 = v174;
      if (v172 & 1) != 0 && (v170 & 1) != 0 && (v168 & 1) != 0 && (v166 & 1) != 0 && (v164 & 1) != 0 && (v162 & 1) != 0 && (v44 & 1) != 0 && (v48 & 1) != 0 && (v51 & 1) != 0 && (v160 & 1) != 0 && (v99 & 1) != 0 && (v151)
      {
        WebKit::WebHitTestResultData::WebHitTestResultData(v196, &v194, &v192, &v190, &v188, &v186, &v184, &v182, &v180, v140, &v178, &v177, v139, v138, v137, v136, v135, v134, &v176, v200, &v148, &v171, &v169, &v167, v165, &v163, &v161, v45, v49, v52, v156, &v152, &v150);
        *(WebKit::WebHitTestResultData::WebHitTestResultData(v141, v196) + 848) = 1;
        WebKit::WebHitTestResultData::~WebHitTestResultData(v196, v101);
        goto LABEL_234;
      }
    }

    __break(1u);
LABEL_315:
    v121 = *a1;
    v122 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v123 = *(a1 + 3);
    if (v123 && v122)
    {
      (*(*v123 + 16))(v123, v121);
    }
  }

  *v141 = 0;
  v141[848] = 0;
LABEL_234:
  if (v151 == 1 && (v102 = v150, v150 = 0, v102))
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v102);
    if (!v99)
    {
      goto LABEL_242;
    }
  }

  else if (!v99)
  {
    goto LABEL_242;
  }

  v103 = v154;
  if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v103, v100);
  }

  if (v153)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v153);
  }

LABEL_242:
  if (v160 == 1 && v159 == 1)
  {
    v104 = v157;
    v157 = 0;
    if (v104)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v156, v100);
  }

  if (v162 == 1)
  {
    v105 = v161;
    v161 = 0;
    if (v105)
    {
      if (atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v105, v100);
      }
    }
  }

  if (v164 == 1)
  {
    v106 = v163;
    v163 = 0;
    if (v106)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v106, v100);
    }
  }

  if (v166 == 1 && v165[16] == 1)
  {
    WTF::MachSendRight::~MachSendRight(v165);
  }

  if (v168 == 1)
  {
    v107 = v167;
    v167 = 0;
    if (v107)
    {
      if (atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v107, v100);
      }
    }
  }

  if (v170 == 1)
  {
    v108 = v169;
    v169 = 0;
    if (v108)
    {
      if (atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v108, v100);
      }
    }
  }

  if (v172 == 1)
  {
    v109 = v171;
    v171 = 0;
    if (v109)
    {
      if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v109, v100);
      }
    }
  }

  if (v207 == 1 && v206 == 1)
  {
    v110 = cf;
    cf = 0;
    if (v110)
    {
      CFRelease(v110);
    }

    v111 = v204;
    v204 = 0;
    if (v111 && atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v111, v100);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v203);
    v112 = v202;
    v202 = 0;
    if (v112)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&v201);
  }

  if (v181 == 1)
  {
    v113 = v180;
    v180 = 0;
    if (v113)
    {
      if (atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v113, v100);
      }
    }
  }

  if (v183 == 1)
  {
    v114 = v182;
    v182 = 0;
    if (v114)
    {
      if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v114, v100);
      }
    }
  }

  if (v185 == 1)
  {
    v115 = v184;
    v184 = 0;
    if (v115)
    {
      if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v115, v100);
      }
    }
  }

  if (v187 == 1)
  {
    v116 = v186;
    v186 = 0;
    if (v116)
    {
      if (atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v116, v100);
      }
    }
  }

  if (v189 == 1)
  {
    v117 = v188;
    v188 = 0;
    if (v117)
    {
      if (atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v117, v100);
      }
    }
  }

  if (v191 == 1)
  {
    v118 = v190;
    v190 = 0;
    if (v118)
    {
      if (atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v118, v100);
      }
    }
  }

  if (v193 == 1)
  {
    v119 = v192;
    v192 = 0;
    if (v119)
    {
      if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v119, v100);
      }
    }
  }

  if (v195 == 1)
  {
    v120 = v194;
    v194 = 0;
    if (v120)
    {
      if (atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v120, v100);
      }
    }
  }
}

void sub_19D78600C(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (LOBYTE(STACK[0x240]) == 1)
  {
    v3 = STACK[0x238];
    STACK[0x238] = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x250]) == 1)
  {
    v4 = STACK[0x248];
    STACK[0x248] = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v4, a2);
    }
  }

  if (LOBYTE(STACK[0x270]) == 1 && LOBYTE(STACK[0x268]) == 1)
  {
    WTF::MachSendRight::~MachSendRight(&STACK[0x258]);
  }

  if (LOBYTE(STACK[0x280]) == 1)
  {
    v5 = STACK[0x278];
    STACK[0x278] = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x290]) == 1)
  {
    v6 = STACK[0x288];
    STACK[0x288] = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x2A0]) == 1)
  {
    v7 = STACK[0x298];
    STACK[0x298] = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x820]) == 1 && LOBYTE(STACK[0x810]) == 1)
  {
    v8 = STACK[0x7E0];
    STACK[0x7E0] = 0;
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = STACK[0x7A0];
    STACK[0x7A0] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&STACK[0x780]);
    v10 = STACK[0x778];
    STACK[0x778] = 0;
    if (v10)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&STACK[0x6B8]);
  }

  if (LOBYTE(STACK[0x2E8]) == 1)
  {
    v11 = STACK[0x2E0];
    STACK[0x2E0] = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x2F8]) == 1)
  {
    v12 = STACK[0x2F0];
    STACK[0x2F0] = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x308]) == 1)
  {
    v13 = STACK[0x300];
    STACK[0x300] = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x318]) == 1)
  {
    v14 = STACK[0x310];
    STACK[0x310] = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x328]) == 1)
  {
    v15 = STACK[0x320];
    STACK[0x320] = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x338]) == 1)
  {
    v16 = STACK[0x330];
    STACK[0x330] = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x348]) == 1)
  {
    v17 = STACK[0x340];
    STACK[0x340] = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x358]) == 1)
  {
    v18 = STACK[0x350];
    STACK[0x350] = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebKit::WebImage,void>::encode(IPC::Encoder *a1, atomic_uchar **this)
{
  WebKit::WebImage::parametersAndHandle(this, v8);
  if (v13)
  {
    v14 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if ((v13 & 1) == 0)
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      if (v13 == 1)
      {
        if (v12 == 1)
        {
          v6 = cf;
          cf = 0;
          if (v6)
          {
            CFRelease(v6);
          }
        }

        WTF::MachSendRight::~MachSendRight(v10);
        v7 = v9;
        v9 = 0;
        if (v7)
        {
          CFRelease(v7);
        }
      }

      _Unwind_Resume(v5);
    }

    IPC::ArgumentCoder<WebCore::ImageBufferParameters,void>::encode(a1, v8);
    IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::encode(a1, v10);
  }

  else
  {
    v14 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }

  if (v13 == 1)
  {
    if (v12 == 1)
    {
      v3 = cf;
      cf = 0;
      if (v3)
      {
        CFRelease(v3);
      }
    }

    WTF::MachSendRight::~MachSendRight(v10);
    v4 = v9;
    v9 = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void IPC::ArgumentCoder<WebKit::WebNavigationDataStore,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 2));

  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, (a2 + 27));
}

void IPC::ArgumentCoder<WebKit::WebNavigationDataStore,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v42);
  IPC::Decoder::decode<WTF::String>(a1, &v40);
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v33);
  IPC::Decoder::decode<WebCore::ResourceResponse>(a1, v29);
  if (!*a1)
  {
    goto LABEL_34;
  }

  if ((v43 & 1) == 0 || (v5 = v42, v42 = 0, v19 = v5, (v41 & 1) == 0) || (v6 = v40, v40 = 0, v20 = v6, (v39 & 1) == 0) || (WebCore::ResourceRequestBase::RequestData::RequestData(v21, v33), v7 = v34, v34 = 0uLL, *&v21[152] = v7, v22 = v35, v23 = v36, v24 = v37, v8 = v38, v35 = 0, v38 = 0, v25 = v8, (v32 & 1) == 0))
  {
    __break(1u);
LABEL_34:
    *a2 = 0;
    a2[480] = 0;
    goto LABEL_16;
  }

  WebCore::ResourceResponseBase::ResourceResponseBase(v26, v29);
  v9 = v30;
  v30 = 0;
  v27 = v9;
  v28 = v31;
  WebKit::WebNavigationDataStore::WebNavigationDataStore(a2, &v19);
  a2[480] = 1;
  v11 = v27;
  v27 = 0;
  if (v11)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v26, v10);
  v12 = v25;
  v25 = 0;
  if (v12)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v21);
  v13 = v20;
  v20 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v4);
  }

  v14 = v19;
  v19 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v4);
  }

LABEL_16:
  if (v32 == 1)
  {
    v15 = v30;
    v30 = 0;
    if (v15)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v29, v4);
  }

  if (v39 == 1)
  {
    v16 = v38;
    v38 = 0;
    if (v16)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v33);
  }

  if (v41 == 1)
  {
    v17 = v40;
    v40 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v4);
      }
    }
  }

  if (v43 == 1)
  {
    v18 = v42;
    v42 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v4);
      }
    }
  }
}

void sub_19D786814(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((v70 + 216), a2);
  if (a35)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((v69 + 16));
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v73);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v73);
  }

  if (LOBYTE(STACK[0x2E8]) == 1)
  {
    v74 = STACK[0x2D8];
    STACK[0x2D8] = 0;
    if (v74)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&a69, v73);
  }

  if (LOBYTE(STACK[0x3B8]) == 1)
  {
    v75 = STACK[0x3B0];
    STACK[0x3B0] = 0;
    if (v75)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&STACK[0x2F0]);
  }

  if (*(v71 - 56) == 1)
  {
    v76 = *(v71 - 64);
    *(v71 - 64) = 0;
    if (v76)
    {
      if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v73);
      }
    }
  }

  if (*(v71 - 40) == 1)
  {
    v77 = *(v71 - 48);
    *(v71 - 48) = 0;
    if (v77)
    {
      if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v73);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebKit::WebPageCreationParameters,void>::decode()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v724 = *MEMORY[0x1E69E9840];
  v3 = IPC::Decoder::decode<WebCore::IntSize>(v0);
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 0);
    v6 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ActivityState>>(v0);
    v10 = WORD1(v6) & 1;
LABEL_682:
    IPC::Decoder::decode<WebKit::WebPreferencesStore>(&v714, v0, v248, v249);
    goto LABEL_683;
  }

  v6 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ActivityState>>(v0);
  if ((v6 & 0x10000) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 1);
    LOBYTE(v10) = 0;
    goto LABEL_682;
  }

  IPC::Decoder::decode<WebKit::WebPreferencesStore>(&v714, v0, v7, v8);
  if (v720)
  {
    v9 = 0;
    LOBYTE(v10) = 1;
    goto LABEL_5;
  }

  IPC::Decoder::addIndexOfDecodingFailure(v0, 2);
  LOBYTE(v10) = 1;
LABEL_683:
  v9 = 1;
LABEL_5:
  v11 = *(v0 + 2);
  if (*(v0 + 1) <= &v11[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_773;
  }

  *(v0 + 2) = v11 + 1;
  if (!v11)
  {
LABEL_773:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_8;
  }

  if (!*v11)
  {
    v12 = 1;
    goto LABEL_11;
  }

LABEL_8:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 3);
  }

  v12 = 0;
  v9 = 1;
LABEL_11:
  v13 = IPC::ArgumentCoder<PAL::SessionID,void>::decode(v0);
  v15 = v14;
  if ((v14 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if ((v9 & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 4);
      v9 = 1;
    }
  }

  v454 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v0);
  v456 = v16;
  if (((v9 | v16) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 5);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::String>(v0, v466);
  v457 = v15;
  v453 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v0);
  v18 = *v0;
  v461 = v5;
  v459 = v6;
  v460 = v10;
  v458 = v12;
  v455 = v13;
  if (*v0)
  {
    if ((v466[8] & 1) == 0 || (v17 & 1) == 0)
    {
      goto LABEL_671;
    }

    v462 = *v466;
  }

  else
  {
    if (v466[8])
    {
      v250 = *v466;
      *v466 = 0;
      if (v250)
      {
        if (atomic_fetch_add_explicit(v250, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v250, v17);
        }
      }
    }

    IPC::Decoder::markInvalid(v0);
    if ((v9 & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 6);
    }

    v462 = 0;
    v9 = 1;
  }

  v19 = *(v0 + 2);
  if (*(v0 + 1) <= &v19[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_775;
  }

  *(v0 + 2) = v19 + 1;
  if (!v19)
  {
LABEL_775:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_776;
  }

  LODWORD(v452) = *v19;
  if (v452 < 2)
  {
    BYTE4(v452) = 1;
    goto LABEL_22;
  }

LABEL_776:
  IPC::Decoder::markInvalid(v0);
  v265 = v2;
  v266 = v3;
  v267 = v265;
  if (v9)
  {
    v452 = 0;
    v9 = 1;
    v3 = v266;
    v2 = v265;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 7);
    v268 = v267;
    v3 = v266;
    v2 = v268;
    v452 = 0;
    v9 = 1;
  }

LABEL_22:
  IPC::Decoder::decode<WebCore::Color>(v0, &v712);
  if (((v9 | v713) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 8);
    v9 = 1;
  }

  v20 = *(v0 + 2);
  if (*(v0 + 1) <= &v20[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_779;
  }

  *(v0 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_779:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_780;
  }

  LODWORD(v451) = *v20;
  if (v451 < 2)
  {
    BYTE4(v451) = 1;
    goto LABEL_28;
  }

LABEL_780:
  IPC::Decoder::markInvalid(v0);
  v269 = v2;
  v270 = v3;
  v271 = v269;
  if (v9)
  {
    v451 = 0;
    v9 = 1;
    v3 = v270;
    v2 = v269;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 9);
    v272 = v271;
    v3 = v270;
    v2 = v272;
    v451 = 0;
    v9 = 1;
  }

LABEL_28:
  v449 = IPC::Decoder::decode<WebCore::IntSize>(v0);
  v450 = v21;
  if (((v21 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 10);
    v9 = 1;
  }

  v447 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v448 = v22;
  if (((v22 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 11);
    v9 = 1;
  }

  v445 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v446 = v23;
  if (((v23 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 12);
    v9 = 1;
  }

  v443 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v444 = v24;
  if (((v24 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 13);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<WebCore::FloatRect>,void>::decode<IPC::Decoder>(v0, &v709);
  if ((v711 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v711 | v9) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 14);
      v9 = 1;
    }
  }

  v440 = IPC::Decoder::decode<std::optional<unsigned int>>(v0);
  v442 = v25;
  if (((v25 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 15);
    v9 = 1;
  }

  v438 = IPC::Decoder::decode<std::optional<unsigned int>>(v0);
  v439 = v26;
  if (((v26 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 16);
    v9 = 1;
  }

  v27 = *(v0 + 1);
  v28 = *(v0 + 2);
  v29 = *v0;
  if (v27 <= &v28[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_783;
  }

  v30 = v28 + 1;
  *(v0 + 2) = v28 + 1;
  if (!v28)
  {
LABEL_783:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_784;
  }

  LODWORD(v437) = *v28;
  if (v437 < 2)
  {
    BYTE4(v437) = 1;
    goto LABEL_45;
  }

LABEL_784:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 17);
  }

  v437 = 0;
  v27 = *(v0 + 1);
  v30 = *(v0 + 2);
  v9 = 1;
  v29 = *v0;
LABEL_45:
  if (v27 <= v30 - v29)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_788;
  }

  v31 = v30 + 1;
  *(v0 + 2) = v30 + 1;
  if (!v30)
  {
LABEL_788:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_789;
  }

  LODWORD(v436) = *v30;
  if (v436 < 2)
  {
    BYTE4(v436) = 1;
    goto LABEL_49;
  }

LABEL_789:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 18);
  }

  v436 = 0;
  v27 = *(v0 + 1);
  v31 = *(v0 + 2);
  v9 = 1;
  v29 = *v0;
LABEL_49:
  if (v27 <= v31 - v29)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_793;
  }

  *(v0 + 2) = v31 + 1;
  if (!v31)
  {
LABEL_793:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_794;
  }

  LODWORD(v435) = *v31;
  if (v435 < 2)
  {
    BYTE4(v435) = 1;
    goto LABEL_53;
  }

LABEL_794:
  IPC::Decoder::markInvalid(v0);
  v273 = v2;
  v274 = v3;
  v275 = v273;
  if (v9)
  {
    v435 = 0;
    v9 = 1;
    v3 = v274;
    v2 = v273;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 19);
    v276 = v275;
    v3 = v274;
    v2 = v276;
    v435 = 0;
    v9 = 1;
  }

LABEL_53:
  v434 = IPC::Decoder::decode<WebCore::PaginationMode>(v0);
  if (((v9 | ((v434 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 20);
    v9 = 1;
  }

  v32 = *(v0 + 2);
  if (*(v0 + 1) <= &v32[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_797;
  }

  *(v0 + 2) = v32 + 1;
  if (!v32)
  {
LABEL_797:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_798;
  }

  v432 = *v32;
  if (v432 < 2)
  {
    v433 = 1;
    goto LABEL_59;
  }

LABEL_798:
  IPC::Decoder::markInvalid(v0);
  v277 = v2;
  v278 = v3;
  v279 = v277;
  if (v9)
  {
    LOBYTE(v432) = 0;
    v433 = 0;
    v9 = 1;
    v3 = v278;
    v2 = v277;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 21);
    v280 = v279;
    v3 = v278;
    v2 = v280;
    LOBYTE(v432) = 0;
    v433 = 0;
    v9 = 1;
  }

LABEL_59:
  v430 = IPC::Decoder::decode<unsigned long long>(v0);
  v431 = v33;
  if (((v33 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 22);
    v9 = 1;
  }

  v428 = IPC::Decoder::decode<unsigned long long>(v0);
  v429 = v34;
  if (((v34 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 23);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::String>(v0, &v707);
  v344 = v18;
  if (((v708 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 24);
    v9 = 1;
  }

  v426 = IPC::ArgumentCoder<PAL::SessionID,void>::decode(v0);
  v427 = v35;
  if ((v35 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if ((v9 & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 25);
      v9 = 1;
    }
  }

  v36 = *(v0 + 1);
  v37 = *(v0 + 2);
  v38 = *v0;
  if (v36 <= &v37[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_801;
  }

  v39 = v37 + 1;
  *(v0 + 2) = v37 + 1;
  if (!v37)
  {
LABEL_801:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_802;
  }

  LODWORD(v425) = *v37;
  if (v425 < 2)
  {
    BYTE4(v425) = 1;
    goto LABEL_70;
  }

LABEL_802:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 26);
  }

  v425 = 0;
  v36 = *(v0 + 1);
  v39 = *(v0 + 2);
  v9 = 1;
  v38 = *v0;
LABEL_70:
  if (v36 <= v39 - v38)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_806;
  }

  *(v0 + 2) = v39 + 1;
  if (!v39)
  {
LABEL_806:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_807;
  }

  v40 = *v39;
  if (v40 < 2)
  {
    LOBYTE(v424) = v40;
    BYTE4(v424) = 1;
    goto LABEL_74;
  }

LABEL_807:
  IPC::Decoder::markInvalid(v0);
  v281 = v2;
  v282 = v3;
  v283 = v281;
  if (v9)
  {
    v424 = 0;
    v9 = 1;
    v3 = v282;
    v2 = v281;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 27);
    v284 = v283;
    v3 = v282;
    v2 = v284;
    v424 = 0;
    v9 = 1;
  }

LABEL_74:
  v41 = *(v0 + 1);
  v42 = ((*(v0 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v43 = v42 - *v0;
  v44 = v41 >= v43;
  v45 = v41 - v43;
  if (v44 && v45 > 3)
  {
    *(v0 + 2) = v42 + 1;
    if (v42)
    {
      v46 = *v42 | 0x100000000;
      goto LABEL_79;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(v0);
  }

  IPC::Decoder::markInvalid(v0);
  v46 = 0;
LABEL_79:
  v423 = v46;
  if (((HIDWORD(v46) | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 28);
    v9 = 1;
  }

  v47 = *(v0 + 1);
  v48 = ((*(v0 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v49 = v48 - *v0;
  v44 = v47 >= v49;
  v50 = v47 - v49;
  if (v44 && v50 > 3)
  {
    *(v0 + 2) = v48 + 1;
    if (v48)
    {
      v51 = *v48 | 0x100000000;
      goto LABEL_86;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(v0);
  }

  IPC::Decoder::markInvalid(v0);
  v51 = 0;
LABEL_86:
  v422 = v51;
  if (((HIDWORD(v51) | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 30);
    v9 = 1;
  }

  v420 = IPC::Decoder::decode<unsigned long long>(v0);
  v421 = v52;
  if (((v52 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 31);
    v9 = 1;
  }

  v418 = IPC::Decoder::decode<unsigned long long>(v0);
  v419 = v53;
  if (((v53 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 32);
    v9 = 1;
  }

  IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(v0, &v705);
  if ((v706 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if ((v9 & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 33);
    }

    v9 = 1;
  }

  v54 = *(v0 + 1);
  v55 = ((*(v0 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v56 = v55 - *v0;
  v44 = v54 >= v56;
  v57 = v54 - v56;
  if (v44 && v57 > 3)
  {
    *(v0 + 2) = v55 + 1;
    if (v55)
    {
      v58 = *v55 | 0x100000000;
      goto LABEL_98;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(v0);
  }

  IPC::Decoder::markInvalid(v0);
  v58 = 0;
LABEL_98:
  v417 = v58;
  if (((HIDWORD(v58) | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 34);
    v9 = 1;
  }

  v416 = IPC::Decoder::decode<WTF::OptionSet<WebCore::MediaProducerMutedState>>(v0);
  if (((v9 | ((v416 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 35);
    v9 = 1;
  }

  v59 = *(v0 + 1);
  v60 = *(v0 + 2);
  v61 = *v0;
  if (v59 <= &v60[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_810;
  }

  v62 = v60 + 1;
  *(v0 + 2) = v60 + 1;
  if (!v60)
  {
LABEL_810:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_811;
  }

  v413 = *v60;
  if (v413 < 2)
  {
    v415 = 1;
    goto LABEL_106;
  }

LABEL_811:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 36);
  }

  LOBYTE(v413) = 0;
  v415 = 0;
  v59 = *(v0 + 1);
  v62 = *(v0 + 2);
  v9 = 1;
  v61 = *v0;
LABEL_106:
  if (v59 <= v62 - v61)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_815;
  }

  v63 = v62 + 1;
  *(v0 + 2) = v62 + 1;
  if (!v62)
  {
LABEL_815:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_816;
  }

  v411 = *v62;
  if (v411 < 2)
  {
    v412 = 1;
    goto LABEL_110;
  }

LABEL_816:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 37);
  }

  LOBYTE(v411) = 0;
  v412 = 0;
  v59 = *(v0 + 1);
  v63 = *(v0 + 2);
  v9 = 1;
  v61 = *v0;
LABEL_110:
  if (v59 <= v63 - v61)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_820;
  }

  *(v0 + 2) = v63 + 1;
  if (!v63)
  {
LABEL_820:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_821;
  }

  v409 = *v63;
  if (v409 < 2)
  {
    v410 = 1;
    goto LABEL_114;
  }

LABEL_821:
  IPC::Decoder::markInvalid(v0);
  v285 = v2;
  v286 = v3;
  v287 = v285;
  if (v9)
  {
    LOBYTE(v409) = 0;
    v410 = 0;
    v9 = 1;
    v3 = v286;
    v2 = v285;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 38);
    v288 = v287;
    v3 = v286;
    v2 = v288;
    LOBYTE(v409) = 0;
    v410 = 0;
    v9 = 1;
  }

LABEL_114:
  v407 = IPC::Decoder::decode<WebCore::IntSize>(v0);
  v408 = v64;
  if (((v64 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 39);
    v9 = 1;
  }

  v405 = IPC::Decoder::decode<WebCore::IntSize>(v0);
  v406 = v65;
  if (((v65 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 40);
    v9 = 1;
  }

  v66 = *(v0 + 2);
  if (*(v0 + 1) <= &v66[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_824;
  }

  *(v0 + 2) = v66 + 1;
  if (!v66)
  {
LABEL_824:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_825;
  }

  LODWORD(v404) = *v66;
  if (v404 < 2)
  {
    BYTE4(v404) = 1;
    goto LABEL_122;
  }

LABEL_825:
  IPC::Decoder::markInvalid(v0);
  v289 = v2;
  v290 = v3;
  v291 = v289;
  if (v9)
  {
    v404 = 0;
    v9 = 1;
    v3 = v290;
    v2 = v289;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 41);
    v292 = v291;
    v3 = v290;
    v2 = v292;
    v404 = 0;
    v9 = 1;
  }

LABEL_122:
  v402 = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(v0);
  v403 = v67;
  if (!(BYTE4(v67) & 1 | v9 & 1))
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 42);
    v9 = 1;
  }

  v401 = IPC::Decoder::decode<WebKit::CacheModel>(v0);
  if (((v9 | ((v401 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 43);
    v9 = 1;
  }

  v400 = IPC::Decoder::decode<std::optional<WebCore::ScrollbarOverlayStyle>>(v0);
  if (((v9 | ((v400 & 0x10000u) >> 16)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 44);
    v9 = 1;
  }

  v68 = *(v0 + 1);
  v69 = *(v0 + 2);
  v70 = *v0;
  if (v68 <= &v69[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_828;
  }

  v71 = v69 + 1;
  *(v0 + 2) = v69 + 1;
  if (!v69)
  {
LABEL_828:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_829;
  }

  LODWORD(v399) = *v69;
  if (v399 < 2)
  {
    BYTE4(v399) = 1;
    goto LABEL_132;
  }

LABEL_829:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 45);
  }

  v399 = 0;
  v68 = *(v0 + 1);
  v71 = *(v0 + 2);
  v9 = 1;
  v70 = *v0;
LABEL_132:
  if (v68 <= v71 - v70)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_833;
  }

  *(v0 + 2) = v71 + 1;
  if (!v71)
  {
LABEL_833:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_834;
  }

  LODWORD(v398) = *v71;
  if (v398 < 2)
  {
    BYTE4(v398) = 1;
    goto LABEL_136;
  }

LABEL_834:
  IPC::Decoder::markInvalid(v0);
  v293 = v2;
  v294 = v3;
  v295 = v293;
  if (v9)
  {
    v398 = 0;
    v9 = 1;
    v3 = v294;
    v2 = v293;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 46);
    v296 = v295;
    v3 = v294;
    v2 = v296;
    v398 = 0;
    v9 = 1;
  }

LABEL_136:
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, &v702);
  if (((v704 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 47);
    v9 = 1;
  }

  v72 = *(v0 + 1);
  v73 = *(v0 + 2);
  v74 = *v0;
  if (v72 <= &v73[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_837;
  }

  v75 = v73 + 1;
  *(v0 + 2) = v73 + 1;
  if (!v73)
  {
LABEL_837:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_838;
  }

  LODWORD(v397) = *v73;
  if (v397 < 2)
  {
    BYTE4(v397) = 1;
    goto LABEL_142;
  }

LABEL_838:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 48);
  }

  v397 = 0;
  v72 = *(v0 + 1);
  v75 = *(v0 + 2);
  v9 = 1;
  v74 = *v0;
LABEL_142:
  if (v72 <= v75 - v74)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_842;
  }

  v76 = v75 + 1;
  *(v0 + 2) = v75 + 1;
  if (!v75)
  {
LABEL_842:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_843;
  }

  LODWORD(v396) = *v75;
  if (v396 < 2)
  {
    BYTE4(v396) = 1;
    goto LABEL_146;
  }

LABEL_843:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 49);
  }

  v396 = 0;
  v72 = *(v0 + 1);
  v76 = *(v0 + 2);
  v9 = 1;
  v74 = *v0;
LABEL_146:
  if (v72 <= v76 - v74)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_847;
  }

  v77 = v76 + 1;
  *(v0 + 2) = v76 + 1;
  if (!v76)
  {
LABEL_847:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_848;
  }

  LODWORD(v395) = *v76;
  if (v395 < 2)
  {
    BYTE4(v395) = 1;
    goto LABEL_150;
  }

LABEL_848:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 50);
  }

  v395 = 0;
  v72 = *(v0 + 1);
  v77 = *(v0 + 2);
  v9 = 1;
  v74 = *v0;
LABEL_150:
  if (v72 <= v77 - v74)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_852;
  }

  v78 = v77 + 1;
  *(v0 + 2) = v77 + 1;
  if (!v77)
  {
LABEL_852:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_853;
  }

  LODWORD(v394) = *v77;
  if (v394 < 2)
  {
    BYTE4(v394) = 1;
    goto LABEL_154;
  }

LABEL_853:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 51);
  }

  v394 = 0;
  v72 = *(v0 + 1);
  v78 = *(v0 + 2);
  v9 = 1;
  v74 = *v0;
LABEL_154:
  if (v72 <= v78 - v74)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_857;
  }

  *(v0 + 2) = v78 + 1;
  if (!v78)
  {
LABEL_857:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_858;
  }

  LODWORD(v393) = *v78;
  if (v393 < 2)
  {
    BYTE4(v393) = 1;
    goto LABEL_158;
  }

LABEL_858:
  IPC::Decoder::markInvalid(v0);
  v297 = v2;
  v298 = v3;
  v299 = v297;
  if (v9)
  {
    v393 = 0;
    v9 = 1;
    v3 = v298;
    v2 = v297;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 57);
    v300 = v299;
    v3 = v298;
    v2 = v300;
    v393 = 0;
    v9 = 1;
  }

LABEL_158:
  v391 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v392 = v79;
  if (((v79 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 58);
    v9 = 1;
  }

  v389 = IPC::Decoder::decode<unsigned long long>(v0);
  v390 = v80;
  if (((v80 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 59);
    v9 = 1;
  }

  v387 = IPC::Decoder::decode<unsigned long long>(v0);
  v388 = v81;
  if (((v81 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 60);
    v9 = 1;
  }

  v385 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v386 = v82;
  if (((v82 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 61);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<WebCore::ViewportArguments>,void>::decode<IPC::Decoder>(v0, &v699);
  if ((v701 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v701 | v9) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 62);
      v9 = 1;
    }
  }

  v383 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v384 = v83;
  if (((v83 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 63);
    v9 = 1;
  }

  v381 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v382 = v84;
  if (((v84 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 64);
    v9 = 1;
  }

  v379 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v380 = v85;
  if (((v85 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 65);
    v9 = 1;
  }

  v377 = IPC::Decoder::decode<WebCore::FloatPoint>(v0);
  v378 = v86;
  if (((v86 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 66);
    v9 = 1;
  }

  v87 = *(v0 + 1);
  v88 = ((*(v0 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v89 = v88 - *v0;
  v44 = v87 >= v89;
  v90 = v87 - v89;
  if (v44 && v90 > 3)
  {
    *(v0 + 2) = v88 + 1;
    if (v88)
    {
      v91 = *v88 | 0x100000000;
      goto LABEL_180;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(v0);
  }

  IPC::Decoder::markInvalid(v0);
  v91 = 0;
LABEL_180:
  v92 = v91;
  if (((HIDWORD(v91) | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 67);
    v9 = 1;
  }

  v376 = IPC::Decoder::decode<float>(v0);
  if (!(BYTE4(v376) & 1 | v9 & 1))
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 68);
    v9 = 1;
  }

  v375 = IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::decode(v0);
  if (!HIBYTE(v375))
  {
    IPC::Decoder::markInvalid(v0);
    if ((v9 & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 69);
      v9 = 1;
    }
  }

  v93 = *(v0 + 1);
  v94 = *(v0 + 2);
  v95 = *v0;
  if (v93 <= &v94[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_861;
  }

  v96 = v94 + 1;
  *(v0 + 2) = v94 + 1;
  if (!v94)
  {
LABEL_861:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_862;
  }

  LODWORD(v374) = *v94;
  if (v374 < 2)
  {
    BYTE4(v374) = 1;
    goto LABEL_189;
  }

LABEL_862:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 70);
  }

  v374 = 0;
  v93 = *(v0 + 1);
  v96 = *(v0 + 2);
  v9 = 1;
  v95 = *v0;
LABEL_189:
  if (v93 <= v96 - v95)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_866;
  }

  *(v0 + 2) = v96 + 1;
  if (!v96)
  {
LABEL_866:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_867;
  }

  LODWORD(v373) = *v96;
  if (v373 < 2)
  {
    BYTE4(v373) = 1;
    goto LABEL_193;
  }

LABEL_867:
  IPC::Decoder::markInvalid(v0);
  v301 = v2;
  v302 = v3;
  v303 = v301;
  if (v9)
  {
    v373 = 0;
    v9 = 1;
    v3 = v302;
    v2 = v301;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 71);
    v304 = v303;
    v3 = v302;
    v2 = v304;
    v373 = 0;
    v9 = 1;
  }

LABEL_193:
  IPC::Decoder::decode<WebCore::Color>(v0, &v697);
  if (((v698 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 72);
    v9 = 1;
  }

  v97 = *(v0 + 2);
  if (*(v0 + 1) <= &v97[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_870;
  }

  *(v0 + 2) = v97 + 1;
  if (!v97)
  {
LABEL_870:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_871;
  }

  LODWORD(v372) = *v97;
  if (v372 < 2)
  {
    BYTE4(v372) = 1;
    goto LABEL_199;
  }

LABEL_871:
  IPC::Decoder::markInvalid(v0);
  v305 = v2;
  v306 = v3;
  v307 = v305;
  if (v9)
  {
    v372 = 0;
    v9 = 1;
    v3 = v306;
    v2 = v305;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 73);
    v308 = v307;
    v3 = v306;
    v2 = v308;
    v372 = 0;
    v9 = 1;
  }

LABEL_199:
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, &v694);
  if (((v696 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 74);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, v98, &v691);
  if (((v693 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 75);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, v99, &v688);
  if (((v690 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 76);
    v9 = 1;
  }

  v100 = *(v0 + 2);
  if (*(v0 + 1) <= &v100[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_874;
  }

  *(v0 + 2) = v100 + 1;
  if (!v100)
  {
LABEL_874:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_875;
  }

  LODWORD(v371) = *v100;
  if (v371 < 2)
  {
    BYTE4(v371) = 1;
    goto LABEL_209;
  }

LABEL_875:
  IPC::Decoder::markInvalid(v0);
  v309 = v2;
  v310 = v3;
  v311 = v309;
  if (v9)
  {
    v371 = 0;
    v9 = 1;
    v3 = v310;
    v2 = v309;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 84);
    v312 = v311;
    v3 = v310;
    v2 = v312;
    v371 = 0;
    v9 = 1;
  }

LABEL_209:
  v370 = IPC::Decoder::decode<WebCore::UserInterfaceLayoutDirection>(v0);
  if (!((v370 > 0xFFu) | v9 & 1))
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 85);
    v9 = 1;
  }

  v369 = IPC::Decoder::decode<WTF::OptionSet<WebCore::LayoutMilestone>>(v0);
  if (((v9 | ((v369 & 0x10000u) >> 16)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 86);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::String>(v0, &v686);
  if (((v687 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 87);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(v0, &v683);
  if ((v685 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v685 | v9) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 88);
      v9 = 1;
    }
  }

  v101 = *(v0 + 1);
  v102 = ((*(v0 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v103 = v102 - *v0;
  v44 = v101 >= v103;
  v104 = v101 - v103;
  if (!v44 || v104 <= 3)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_771;
  }

  *(v0 + 2) = v102 + 1;
  if (!v102)
  {
LABEL_771:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_678;
  }

  v105 = 0;
  v106 = *v102;
  v669 = 0;
  if (!v106)
  {
LABEL_221:
    v465 = 1;
    goto LABEL_222;
  }

  v6 = 4294967294;
  while (1)
  {
    IPC::Decoder::decode<WTF::String>(v0, &v676);
    if ((v677 & 1) == 0)
    {
      break;
    }

    v641 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v0);
    LOBYTE(v642) = v17;
    v245 = v677;
    if ((v17 & 1) == 0)
    {
      goto LABEL_673;
    }

    if ((v677 & 1) == 0)
    {
      goto LABEL_671;
    }

    v246 = v676;
    if (v676 + 1 < 2)
    {
      goto LABEL_675;
    }

    WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v466, &v669, &v676, &v641);
    v245 = v677;
    if ((v466[16] & 1) == 0)
    {
LABEL_673:
      if ((v245 & 1) == 0)
      {
        break;
      }

      v246 = v676;
LABEL_675:
      v676 = 0;
      if (v246 && atomic_fetch_add_explicit(v246, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v246, v17);
      }

      break;
    }

    if (v677)
    {
      v247 = v676;
      v676 = 0;
      if (v247)
      {
        if (atomic_fetch_add_explicit(v247, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v247, v17);
        }
      }
    }

    if (!--v106)
    {
      v105 = v669;
      goto LABEL_221;
    }
  }

  if (v669)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v669, v17);
  }

LABEL_678:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 89);
  }

  v465 = 0;
  v105 = 0;
  v9 = 1;
LABEL_222:
  v441 = v105;
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, &v680);
  if (((v682 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 90);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<WebCore::ApplicationManifest>,void>::decode<IPC::Decoder>(v0, &v676);
  v107 = v679;
  if ((v679 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    v107 = v679;
  }

  if (((v107 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 91);
    v9 = 1;
  }

  v108 = *(v0 + 1);
  v109 = *(v0 + 2);
  v110 = *v0;
  if (v108 <= &v109[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_878;
  }

  v111 = v109 + 1;
  *(v0 + 2) = v109 + 1;
  if (!v109)
  {
LABEL_878:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_879;
  }

  LODWORD(v368) = *v109;
  if (v368 < 2)
  {
    BYTE4(v368) = 1;
    goto LABEL_232;
  }

LABEL_879:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 92);
  }

  v368 = 0;
  v108 = *(v0 + 1);
  v111 = *(v0 + 2);
  v9 = 1;
  v110 = *v0;
LABEL_232:
  if (v108 <= v111 - v110)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_883;
  }

  v112 = v111 + 1;
  *(v0 + 2) = v111 + 1;
  if (!v111)
  {
LABEL_883:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_884;
  }

  LODWORD(v367) = *v111;
  if (v367 < 2)
  {
    BYTE4(v367) = 1;
    goto LABEL_236;
  }

LABEL_884:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 93);
  }

  v367 = 0;
  v108 = *(v0 + 1);
  v112 = *(v0 + 2);
  v9 = 1;
  v110 = *v0;
LABEL_236:
  if (v108 <= v112 - v110)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_888;
  }

  v113 = v112 + 1;
  *(v0 + 2) = v112 + 1;
  if (!v112)
  {
LABEL_888:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_889;
  }

  LODWORD(v366) = *v112;
  if (v366 < 2)
  {
    BYTE4(v366) = 1;
    goto LABEL_240;
  }

LABEL_889:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 94);
  }

  v366 = 0;
  v108 = *(v0 + 1);
  v113 = *(v0 + 2);
  v9 = 1;
  v110 = *v0;
LABEL_240:
  if (v108 <= v113 - v110)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_893;
  }

  *(v0 + 2) = v113 + 1;
  if (!v113)
  {
LABEL_893:
    IPC::Decoder::markInvalid(v0);
LABEL_894:
    IPC::Decoder::markInvalid(v0);
    v313 = v2;
    v314 = v3;
    v315 = v313;
    if (v9)
    {
      v365 = 0;
      v9 = 1;
      v3 = v314;
      v2 = v313;
    }

    else
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 95);
      v316 = v315;
      v3 = v314;
      v2 = v316;
      v365 = 0;
      v9 = 1;
    }

    goto LABEL_244;
  }

  LODWORD(v365) = *v113;
  if (v365 >= 2)
  {
    goto LABEL_894;
  }

  BYTE4(v365) = 1;
LABEL_244:
  v114 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v0);
  v116 = v115;
  if (v115)
  {
    IPC::Decoder::decode<WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v641, v0);
    if (v643)
    {
      v6 = 0;
    }

    else
    {
      v6 = 1;
      IPC::Decoder::addIndexOfDecodingFailure(v0, 1);
    }
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 0);
    IPC::Decoder::decode<WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v641, v0);
    v6 = 1;
  }

  IPC::VectorArgumentCoder<false,WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v0, v117, &v631);
  if ((v633 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v6 | v633) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 2);
      v6 = 1;
    }
  }

  IPC::VectorArgumentCoder<false,WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v0, v118, &v721);
  if ((v722 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v6 | v722) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 3);
      v6 = 1;
    }
  }

  IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v0, v119, &v665);
  if ((v667[0] & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v6 | v667[0]) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 4);
      v6 = 1;
    }
  }

  IPC::Decoder::decode<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, v120, &v619);
  if (((v6 | v620) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 5);
  }

  if (*v0)
  {
    if ((v116 & 1) == 0)
    {
      goto LABEL_671;
    }

    *v466 = v114;
    if ((v643 & 1) == 0)
    {
      goto LABEL_671;
    }

    v121 = v641;
    v641 = 0;
    *&v466[8] = v121;
    v122 = v642;
    v642 = 0;
    *&v466[16] = v122;
    if ((v633 & 1) == 0)
    {
      goto LABEL_671;
    }

    v123 = v631;
    v631 = 0;
    *&v466[24] = v123;
    v124 = v632;
    v632 = 0;
    *&v466[32] = v124;
    if ((v722 & 1) == 0)
    {
      goto LABEL_671;
    }

    v125 = *(&v721 + 1);
    *&v466[40] = v721;
    v721 = 0uLL;
    *&v466[48] = v125;
    if ((v667[0] & 1) == 0)
    {
      goto LABEL_671;
    }

    v126 = v665;
    v665 = 0;
    v467 = v126;
    v127 = v666;
    v666 = 0;
    v468 = v127;
    if ((v620 & 1) == 0)
    {
      goto LABEL_671;
    }

    v128 = *(&v619 + 1);
    v469 = v619;
    v619 = 0uLL;
    v470[0] = v128;
    WebKit::UserContentControllerParameters::UserContentControllerParameters(&v669, v466);
    v675 = 1;
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v469, v129);
    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v467, v130);
    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v466[40], v131);
    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v466[24], v132);
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v466[8], v133);
  }

  else
  {
    LOBYTE(v669) = 0;
    v675 = 0;
  }

  if (v620 == 1)
  {
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v619, v17);
  }

  if (v667[0] == 1)
  {
    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v665, v17);
  }

  if (v722 == 1)
  {
    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v721, v17);
  }

  if (v633 == 1)
  {
    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v631, v17);
  }

  if (v643 == 1)
  {
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v641, v17);
  }

  v134 = v675;
  if ((v675 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    v134 = v675;
  }

  if (((v134 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 96);
    v9 = 1;
  }

  v135 = *(v0 + 2);
  if (*(v0 + 1) <= &v135[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_897;
  }

  *(v0 + 2) = v135 + 1;
  if (!v135)
  {
LABEL_897:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_898;
  }

  v136 = *v135;
  if (v136 >= 2)
  {
LABEL_898:
    IPC::Decoder::markInvalid(v0);
LABEL_899:
    LOBYTE(v665) = 0;
    v668 = 0;
    goto LABEL_280;
  }

  if (!v136)
  {
    v466[0] = 0;
    v466[32] = 0;
    std::__optional_move_base<WebKit::WebExtensionControllerParameters,false>::__optional_move_base[abi:sn200100](&v665, v466);
    v668 = 1;
    if (v466[32] != 1)
    {
      goto LABEL_280;
    }

    goto LABEL_279;
  }

  IPC::Decoder::decode<WebKit::WebExtensionControllerParameters>(v466, v0);
  if (v466[32] != 1)
  {
    goto LABEL_899;
  }

  std::optional<WebKit::WebExtensionControllerParameters>::optional[abi:sn200100]<WebKit::WebExtensionControllerParameters,0>(&v665, v466);
  v668 = 1;
  if (v466[32])
  {
LABEL_279:
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v466[16], v137);
  }

LABEL_280:
  v138 = v668;
  if ((v668 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    v138 = v668;
  }

  if (((v138 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 97);
    v9 = 1;
  }

  IPC::Decoder::decode<std::optional<WebCore::Color>>(&v662, v0);
  if (((v664 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 98);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v0, &v659);
  if ((v661 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v661 | v9) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 99);
      v9 = 1;
    }
  }

  IPC::Decoder::decode<WTF::String>(v0, &v657);
  if (((v658 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 100);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, &v654);
  if (((v656 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 101);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v652, v0);
  if (((v653 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 102);
    v9 = 1;
  }

  v140 = *(v0 + 1);
  v141 = *(v0 + 2);
  v142 = *v0;
  if (v140 <= &v141[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_901;
  }

  v143 = v141 + 1;
  *(v0 + 2) = v141 + 1;
  if (!v141)
  {
LABEL_901:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_902;
  }

  v144 = *v141;
  if (v144 < 2)
  {
    v145 = 1;
    goto LABEL_297;
  }

LABEL_902:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 103);
  }

  LOBYTE(v144) = 0;
  v145 = 0;
  v140 = *(v0 + 1);
  v143 = *(v0 + 2);
  v9 = 1;
  v142 = *v0;
LABEL_297:
  if (v140 <= v143 - v142)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_906;
  }

  *(v0 + 2) = v143 + 1;
  if (!v143)
  {
LABEL_906:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_907;
  }

  v146 = *v143;
  if (v146 >= 2)
  {
LABEL_907:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_908;
  }

  if (!v146)
  {
    v331 = 0;
    v463 = 0;
    v464 = 1;
LABEL_302:
    v414 = v139;
    goto LABEL_303;
  }

  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>>(v466, v0);
  if (v466[24] != 1)
  {
LABEL_908:
    IPC::Decoder::markInvalid(v0);
    if ((v9 & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 104);
    }

    v464 = 0;
    v331 = 0;
    v9 = 1;
    goto LABEL_302;
  }

  v331 = *v466;
  v414 = *&v466[8];
  v464 = 1;
  v463 = 1;
  v329 = v466[20];
  v330 = *&v466[16];
LABEL_303:
  v147 = *(v0 + 2);
  if (*(v0 + 1) <= &v147[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_912;
  }

  *(v0 + 2) = v147 + 1;
  if (!v147)
  {
LABEL_912:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_913;
  }

  v148 = *v147;
  if (v148 >= 2)
  {
LABEL_913:
    IPC::Decoder::markInvalid(v0);
    v149 = 0;
    goto LABEL_711;
  }

  if (!v148)
  {
    v361 = 0;
    v362 = 0;
    v149 = 0;
LABEL_308:
    v150 = 0x1000000000000;
    goto LABEL_309;
  }

  v251 = IPC::Decoder::decode<std::pair<unsigned short,unsigned short>>(v0);
  if (WORD2(v251))
  {
    v361 = v251;
    v362 = v251 & 0xFFFFFF00;
    v149 = 0x100000000;
    goto LABEL_308;
  }

  v149 = 0x100000000;
LABEL_711:
  IPC::Decoder::markInvalid(v0);
  v361 = 0;
  v362 = 0;
  v150 = 0;
LABEL_309:
  v364 = v150;
  if (((HIWORD(v150) | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 105);
    v9 = 1;
  }

  v151 = *(v0 + 2);
  if (*(v0 + 1) <= &v151[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_915;
  }

  *(v0 + 2) = v151 + 1;
  if (!v151)
  {
LABEL_915:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_916;
  }

  LODWORD(v360) = *v151;
  if (v360 < 2)
  {
    BYTE4(v360) = 1;
    goto LABEL_315;
  }

LABEL_916:
  IPC::Decoder::markInvalid(v0);
  v317 = v2;
  v318 = v3;
  v319 = v317;
  if (v9)
  {
    v360 = 0;
    v9 = 1;
    v3 = v318;
    v2 = v317;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 106);
    v320 = v319;
    v3 = v318;
    v2 = v320;
    v360 = 0;
    v9 = 1;
  }

LABEL_315:
  IPC::Decoder::decode<WTF::String>(v0, &v650);
  if (((v651 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 107);
    v9 = 1;
  }

  v152 = *(v0 + 1);
  v153 = *(v0 + 2);
  v154 = *v0;
  if (v152 <= &v153[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_919;
  }

  v155 = v153 + 1;
  *(v0 + 2) = v153 + 1;
  if (!v153)
  {
LABEL_919:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_920;
  }

  v156 = *v153;
  if (v156 < 2)
  {
    LOBYTE(v359) = v156;
    BYTE4(v359) = 1;
    goto LABEL_321;
  }

LABEL_920:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 108);
  }

  v359 = 0;
  v152 = *(v0 + 1);
  v155 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_321:
  if (v152 <= v155 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_924;
  }

  v157 = v155 + 1;
  *(v0 + 2) = v155 + 1;
  if (!v155)
  {
LABEL_924:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_925;
  }

  LODWORD(v358) = *v155;
  if (v358 < 2)
  {
    BYTE4(v358) = 1;
    goto LABEL_325;
  }

LABEL_925:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 109);
  }

  v358 = 0;
  v152 = *(v0 + 1);
  v157 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_325:
  if (v152 <= v157 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_929;
  }

  v158 = v157 + 1;
  *(v0 + 2) = v157 + 1;
  if (!v157)
  {
LABEL_929:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_930;
  }

  v159 = *v157;
  if (v159 < 2)
  {
    LOBYTE(v357) = v159;
    BYTE4(v357) = 1;
    goto LABEL_329;
  }

LABEL_930:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 110);
  }

  v357 = 0;
  v152 = *(v0 + 1);
  v158 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_329:
  if (v152 <= v158 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_934;
  }

  v160 = v158 + 1;
  *(v0 + 2) = v158 + 1;
  if (!v158)
  {
LABEL_934:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_935;
  }

  LODWORD(v356) = *v158;
  if (v356 < 2)
  {
    BYTE4(v356) = 1;
    goto LABEL_333;
  }

LABEL_935:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 111);
  }

  v356 = 0;
  v152 = *(v0 + 1);
  v160 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_333:
  if (v152 <= v160 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_939;
  }

  v161 = v160 + 1;
  *(v0 + 2) = v160 + 1;
  if (!v160)
  {
LABEL_939:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_940;
  }

  v162 = *v160;
  if (v162 < 2)
  {
    LOBYTE(v355) = v162;
    BYTE4(v355) = 1;
    goto LABEL_337;
  }

LABEL_940:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 112);
  }

  v355 = 0;
  v152 = *(v0 + 1);
  v161 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_337:
  if (v152 <= v161 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_944;
  }

  v163 = v161 + 1;
  *(v0 + 2) = v161 + 1;
  if (!v161)
  {
LABEL_944:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_945;
  }

  LODWORD(v354) = *v161;
  if (v354 < 2)
  {
    BYTE4(v354) = 1;
    goto LABEL_341;
  }

LABEL_945:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 113);
  }

  v354 = 0;
  v152 = *(v0 + 1);
  v163 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_341:
  if (v152 <= v163 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_949;
  }

  v164 = v163 + 1;
  *(v0 + 2) = v163 + 1;
  if (!v163)
  {
LABEL_949:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_950;
  }

  v165 = *v163;
  if (v165 < 2)
  {
    LOBYTE(v353) = v165;
    BYTE4(v353) = 1;
    goto LABEL_345;
  }

LABEL_950:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 114);
  }

  v353 = 0;
  v152 = *(v0 + 1);
  v164 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_345:
  if (v152 <= v164 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_954;
  }

  v166 = v164 + 1;
  *(v0 + 2) = v164 + 1;
  if (!v164)
  {
LABEL_954:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_955;
  }

  LODWORD(v352) = *v164;
  if (v352 < 2)
  {
    BYTE4(v352) = 1;
    goto LABEL_349;
  }

LABEL_955:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 115);
  }

  v352 = 0;
  v152 = *(v0 + 1);
  v166 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_349:
  if (v152 <= v166 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_959;
  }

  v167 = v166 + 1;
  *(v0 + 2) = v166 + 1;
  if (!v166)
  {
LABEL_959:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_960;
  }

  v168 = *v166;
  if (v168 < 2)
  {
    LOBYTE(v351) = v168;
    BYTE4(v351) = 1;
    goto LABEL_353;
  }

LABEL_960:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 116);
  }

  v351 = 0;
  v152 = *(v0 + 1);
  v167 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_353:
  if (v152 <= v167 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_964;
  }

  v169 = v167 + 1;
  *(v0 + 2) = v167 + 1;
  if (!v167)
  {
LABEL_964:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_965;
  }

  LODWORD(v350) = *v167;
  if (v350 < 2)
  {
    BYTE4(v350) = 1;
    goto LABEL_357;
  }

LABEL_965:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 117);
  }

  v350 = 0;
  v152 = *(v0 + 1);
  v169 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_357:
  if (v152 <= v169 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_969;
  }

  v170 = v169 + 1;
  *(v0 + 2) = v169 + 1;
  if (!v169)
  {
LABEL_969:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_970;
  }

  v171 = *v169;
  if (v171 < 2)
  {
    LOBYTE(v349) = v171;
    BYTE4(v349) = 1;
    goto LABEL_361;
  }

LABEL_970:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 118);
  }

  v349 = 0;
  v152 = *(v0 + 1);
  v170 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_361:
  if (v152 <= v170 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_974;
  }

  v172 = v170 + 1;
  *(v0 + 2) = v170 + 1;
  if (!v170)
  {
LABEL_974:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_975;
  }

  LODWORD(v348) = *v170;
  if (v348 < 2)
  {
    BYTE4(v348) = 1;
    goto LABEL_365;
  }

LABEL_975:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 119);
  }

  v348 = 0;
  v152 = *(v0 + 1);
  v172 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_365:
  if (v152 <= v172 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_979;
  }

  v173 = v172 + 1;
  *(v0 + 2) = v172 + 1;
  if (!v172)
  {
LABEL_979:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_980;
  }

  v174 = *v172;
  if (v174 < 2)
  {
    LOBYTE(v347) = v174;
    BYTE4(v347) = 1;
    goto LABEL_369;
  }

LABEL_980:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 120);
  }

  v347 = 0;
  v152 = *(v0 + 1);
  v173 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_369:
  if (v152 <= v173 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_984;
  }

  v175 = v173 + 1;
  *(v0 + 2) = v173 + 1;
  if (!v173)
  {
LABEL_984:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_985;
  }

  LODWORD(v346) = *v173;
  if (v346 < 2)
  {
    BYTE4(v346) = 1;
    goto LABEL_373;
  }

LABEL_985:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 121);
  }

  v346 = 0;
  v152 = *(v0 + 1);
  v175 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_373:
  if (v152 <= v175 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_989;
  }

  v176 = (v175 + 1);
  *(v0 + 2) = v175 + 1;
  if (!v175)
  {
LABEL_989:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_990;
  }

  v343 = *v175;
  if (v343 < 2)
  {
    v345 = 1;
    goto LABEL_377;
  }

LABEL_990:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 122);
  }

  LOBYTE(v343) = 0;
  v345 = 0;
  v152 = *(v0 + 1);
  v176 = *(v0 + 2);
  v9 = 1;
  v154 = *v0;
LABEL_377:
  if (v152 <= v176 - v154)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_994;
  }

  *(v0 + 2) = v176 + 1;
  if (!v176)
  {
LABEL_994:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_995;
  }

  if (*v176 < 2u)
  {
    v341 = *v176;
    v342 = 1;
    goto LABEL_381;
  }

LABEL_995:
  IPC::Decoder::markInvalid(v0);
  IPC::Decoder::markInvalid(v0);
  v321 = v2;
  v322 = v3;
  v323 = v321;
  if (v9)
  {
    v341 = 0;
    v342 = 0;
    v3 = v322;
    v2 = v321;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 123);
    v324 = v323;
    v3 = v322;
    v2 = v324;
    v341 = 0;
    v342 = 0;
    v9 = 1;
  }

LABEL_381:
  v177 = *(v0 + 2);
  if (*(v0 + 1) <= &v177[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_998;
  }

  *(v0 + 2) = v177 + 1;
  if (!v177)
  {
LABEL_998:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_999;
  }

  v339 = *v177;
  if (v339 < 2)
  {
    v340 = 1;
    goto LABEL_385;
  }

LABEL_999:
  IPC::Decoder::markInvalid(v0);
  v325 = v2;
  v326 = v3;
  v327 = v325;
  if (v9)
  {
    LOBYTE(v339) = 0;
    v340 = 0;
    v9 = 1;
    v3 = v326;
    v2 = v325;
  }

  else
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 124);
    v328 = v327;
    v3 = v326;
    v2 = v328;
    LOBYTE(v339) = 0;
    v340 = 0;
    v9 = 1;
  }

LABEL_385:
  v338 = IPC::Decoder::decode<WebCore::HighlightVisibility>(v0);
  if (((v9 | ((v338 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 125);
    v9 = 1;
  }

  v178 = *(v0 + 1);
  v179 = *(v0 + 2);
  v180 = *v0;
  if (v178 <= &v179[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1002;
  }

  v181 = v179 + 1;
  *(v0 + 2) = v179 + 1;
  if (!v179)
  {
LABEL_1002:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1003;
  }

  LODWORD(v337) = *v179;
  if (v337 < 2)
  {
    BYTE4(v337) = 1;
    goto LABEL_391;
  }

LABEL_1003:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 127);
  }

  v337 = 0;
  v178 = *(v0 + 1);
  v181 = *(v0 + 2);
  v9 = 1;
  v180 = *v0;
LABEL_391:
  if (v178 <= v181 - v180)
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1007;
  }

  *(v0 + 2) = v181 + 1;
  if (!v181)
  {
LABEL_1007:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1008;
  }

  v182 = *v181;
  if (v182 < 3)
  {
    LOBYTE(v336) = v182;
    BYTE4(v336) = 1;
    goto LABEL_395;
  }

LABEL_1008:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 129);
  }

  v336 = 0;
  v9 = 1;
LABEL_395:
  v183 = *(v0 + 2);
  if (*(v0 + 1) <= &v183[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1012;
  }

  *(v0 + 2) = v183 + 1;
  if (!v183)
  {
LABEL_1012:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1013;
  }

  v184 = *v183;
  if (v184 >= 2)
  {
LABEL_1013:
    IPC::Decoder::markInvalid(v0);
    LOBYTE(v641) = 0;
    v649 = 0;
    goto LABEL_400;
  }

  if (v184)
  {
    IPC::Decoder::decode<WebKit::RemotePageParameters>(v466, v0);
    if (v493)
    {
      WebKit::RemotePageParameters::RemotePageParameters(&v641, v466);
      v253 = 1;
      v648 = 1;
    }

    else
    {
      v253 = 0;
      LOBYTE(v641) = 0;
    }

    v649 = v253;
    std::optional<WebKit::RemotePageParameters>::~optional(v466, v252);
  }

  else
  {
    v466[0] = 0;
    LOBYTE(v493) = 0;
    std::__optional_move_base<WebKit::RemotePageParameters,false>::__optional_move_base[abi:sn200100](&v641, v466);
    v649 = 1;
    if (v493 == 1)
    {
      if (v492 == 1)
      {
        WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v471, v185);
      }

      WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v470, v185);
      v256 = v469;
      v469 = 0;
      if (v256)
      {
        WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v256, v255);
      }

      v257 = v468;
      v468 = 0;
      if (v257 && atomic_fetch_add_explicit(v257, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v257, v255);
      }

      v258 = *v466;
      *v466 = 0;
      if (v258 && atomic_fetch_add_explicit(v258, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v258, v255);
      }
    }
  }

LABEL_400:
  v186 = v649;
  if ((v649 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    v186 = v649;
  }

  if (((v186 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 130);
    v9 = 1;
  }

  v187 = *(v0 + 2);
  if (*(v0 + 1) <= &v187[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1015;
  }

  *(v0 + 2) = v187 + 1;
  if (!v187)
  {
LABEL_1015:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1016;
  }

  v188 = *v187;
  if (v188 >= 2)
  {
LABEL_1016:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1017;
  }

  if (!v188)
  {
    v334 = 0;
    LOBYTE(v335) = 0;
LABEL_409:
    BYTE4(v335) = 1;
    goto LABEL_410;
  }

  IPC::Decoder::decode<WebKit::ProvisionalFrameCreationParameters>(v466, v0);
  if (v467 == 1)
  {
    v721 = *&v466[1];
    v722 = *&v466[17];
    *v723 = *&v466[33];
    *&v723[15] = *&v466[48];
    v334 = 1;
    LOBYTE(v335) = v466[0];
    goto LABEL_409;
  }

LABEL_1017:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 131);
  }

  v335 = 0;
  v334 = 1;
  v9 = 1;
LABEL_410:
  v332 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v0);
  v333 = v189;
  if (((v189 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 132);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::String>(v0, &v639);
  if (((v640 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 133);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v0, &v636);
  if ((v638 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v638 | v9) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 134);
      v9 = 1;
    }
  }

  v190 = IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(v0);
  if (((v9 | ((v190 & 0x10000u) >> 16)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 135);
    v9 = 1;
  }

  v191 = *(v0 + 2);
  if (*(v0 + 1) <= &v191[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1021;
  }

  *(v0 + 2) = v191 + 1;
  if (!v191)
  {
LABEL_1021:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1022;
  }

  v192 = *v191;
  if (v192 >= 2)
  {
LABEL_1022:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1023;
  }

  if (!v192)
  {
    v466[0] = 0;
    LOBYTE(v470[0]) = 0;
    std::__optional_move_base<WebCore::WindowFeatures,false>::__optional_move_base[abi:sn200100](&v631, v466);
    v635 = 1;
    if (LOBYTE(v470[0]) != 1)
    {
      goto LABEL_422;
    }

LABEL_718:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v468, v193);
    goto LABEL_422;
  }

  IPC::Decoder::decode<WebCore::WindowFeatures>(v466, v0);
  if (LOBYTE(v470[0]) == 1)
  {
    std::optional<WebCore::WindowFeatures>::optional[abi:sn200100]<WebCore::WindowFeatures,0>(&v631, v466);
    v635 = 1;
    if ((v470[0] & 1) == 0)
    {
      goto LABEL_422;
    }

    goto LABEL_718;
  }

LABEL_1023:
  LOBYTE(v631) = 0;
  v635 = 0;
LABEL_422:
  v194 = v635;
  if ((v635 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    v194 = v635;
  }

  if (((v194 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 136);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, v193, &v628);
  if (((v630 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 137);
    v9 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v0, v195, &v625);
  if (((v627 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 138);
    v9 = 1;
  }

  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(v0, &v623);
  v196 = v624;
  if ((v624 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    v196 = v624;
  }

  if (((v196 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 139);
    v9 = 1;
  }

  IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::decode<IPC::Decoder>(v0, &v619);
  if ((v622 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v0);
    if (((v622 | v9) & 1) == 0)
    {
      IPC::Decoder::addIndexOfDecodingFailure(v0, 142);
      v9 = 1;
    }
  }

  IPC::Decoder::decode<WTF::String>(v0, &v617);
  if (((v618 | v9) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 143);
    LOBYTE(v9) = 1;
  }

  v363 = v149;
  v198 = v144;
  v6 = v3;
  v199 = *(v0 + 2);
  if (*(v0 + 1) <= &v199[-*v0])
  {
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1025;
  }

  *(v0 + 2) = v199 + 1;
  if (!v199)
  {
LABEL_1025:
    IPC::Decoder::markInvalid(v0);
    goto LABEL_1026;
  }

  v200 = *v199;
  if (v200 < 2)
  {
    v201 = 1;
    goto LABEL_441;
  }

LABEL_1026:
  IPC::Decoder::markInvalid(v0);
  if ((v9 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(v0, 144);
  }

  LOBYTE(v200) = 0;
  v201 = 0;
LABEL_441:
  if (!*v0)
  {
    *v2 = 0;
    v2[1680] = 0;
    v224 = v414;
    v6 = v441;
    v0 = v462;
    goto LABEL_575;
  }

  if ((v461 & 1) == 0)
  {
    goto LABEL_671;
  }

  *v466 = v6;
  if ((v460 & 1) == 0)
  {
    goto LABEL_671;
  }

  *&v466[8] = v459;
  if ((v720 & 1) == 0)
  {
    goto LABEL_671;
  }

  *&v197 = 0;
  v202 = v714;
  v714 = v197;
  *&v466[16] = v202;
  v203 = v715;
  v715 = 0;
  *&v466[32] = v203;
  LOBYTE(v203) = v716;
  v716 = 0;
  v466[36] = v203;
  v204 = v717;
  v717 = v197;
  *&v466[40] = v204;
  v205 = v718;
  v718 = 0;
  LODWORD(v467) = v205;
  LOBYTE(v205) = v719;
  v719 = 0;
  BYTE4(v467) = v205;
  if ((v458 & 1) == 0)
  {
    goto LABEL_671;
  }

  LOBYTE(v468) = 0;
  if ((v457 & 1) == 0)
  {
    goto LABEL_671;
  }

  v469 = v455;
  if ((v456 & 1) == 0)
  {
    goto LABEL_671;
  }

  v470[0] = v454;
  if (!v18)
  {
    goto LABEL_671;
  }

  v470[1] = v462;
  v471 = v453;
  if ((v452 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v472 = v452;
  if ((v713 & 1) == 0)
  {
    goto LABEL_671;
  }

  v206 = v712;
  v712 = 0;
  v473 = v206;
  if ((v451 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v474 = v451;
  if ((v450 & 1) == 0)
  {
    goto LABEL_671;
  }

  v475 = v449;
  if ((v448 & 1) == 0)
  {
    goto LABEL_671;
  }

  v476 = v447;
  if ((v446 & 1) == 0)
  {
    goto LABEL_671;
  }

  v477 = v445;
  if ((v444 & 1) == 0)
  {
    goto LABEL_671;
  }

  v478 = v443;
  if ((v711 & 1) == 0)
  {
    goto LABEL_671;
  }

  v479 = v709;
  v480 = v710;
  if ((v442 & 1) == 0)
  {
    goto LABEL_671;
  }

  v481 = v440;
  v482 = BYTE4(v440);
  if ((v439 & 1) == 0)
  {
    goto LABEL_671;
  }

  v483 = v438;
  v484 = BYTE4(v438);
  if ((v437 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v485 = v437;
  if ((v436 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v486 = v436;
  if ((v435 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v487 = v435;
  if ((v434 & 0x100) == 0)
  {
    goto LABEL_671;
  }

  v488 = v434;
  if ((v433 & 1) == 0)
  {
    goto LABEL_671;
  }

  v489 = v432;
  if ((v431 & 1) == 0)
  {
    goto LABEL_671;
  }

  v490 = v430;
  if ((v429 & 1) == 0)
  {
    goto LABEL_671;
  }

  v491 = v428;
  if ((v708 & 1) == 0)
  {
    goto LABEL_671;
  }

  v207 = v707;
  v707 = 0;
  v492 = v207;
  if ((v427 & 1) == 0)
  {
    goto LABEL_671;
  }

  v493 = v426;
  if ((v425 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v494 = v425;
  if ((v424 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v495 = v424;
  if ((v423 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v496 = v423;
  if ((v422 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v497 = v422;
  if ((v421 & 1) == 0)
  {
    goto LABEL_671;
  }

  v498 = v420;
  if ((v419 & 1) == 0)
  {
    goto LABEL_671;
  }

  v499 = v418;
  if ((v706 & 1) == 0)
  {
    goto LABEL_671;
  }

  v500 = v705;
  if ((v417 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v501 = v417;
  if ((v416 & 0x100) == 0)
  {
    goto LABEL_671;
  }

  v502 = v416;
  if ((v415 & 1) == 0)
  {
    goto LABEL_671;
  }

  v503 = v413;
  if ((v412 & 1) == 0)
  {
    goto LABEL_671;
  }

  v504 = v411;
  if ((v410 & 1) == 0)
  {
    goto LABEL_671;
  }

  v505 = v409;
  if ((v408 & 1) == 0)
  {
    goto LABEL_671;
  }

  v506 = v407;
  if ((v406 & 1) == 0)
  {
    goto LABEL_671;
  }

  v507 = v405;
  if ((v404 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v508 = v404;
  if ((v403 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v18 = &v509;
  v509 = v402;
  v510 = v403;
  if ((v401 & 0x100) == 0)
  {
    goto LABEL_671;
  }

  v511 = v401;
  if ((v400 & 0x10000) == 0)
  {
    goto LABEL_671;
  }

  v512 = v400;
  if ((v399 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v513 = v399;
  if ((v398 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v514 = v398;
  if ((v704 & 1) == 0)
  {
    goto LABEL_671;
  }

  v208 = v702;
  v702 = 0;
  v515 = v208;
  v209 = v703;
  v703 = 0;
  v516 = v209;
  if ((v397 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v517 = v397;
  if ((v396 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v518 = v396;
  if ((v395 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v519 = v395;
  if ((v394 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v520 = v394;
  if ((v393 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v521 = v393;
  if ((v392 & 1) == 0)
  {
    goto LABEL_671;
  }

  v522 = v391;
  if ((v390 & 1) == 0)
  {
    goto LABEL_671;
  }

  v523 = v389;
  if ((v388 & 1) == 0)
  {
    goto LABEL_671;
  }

  v524 = v387;
  if ((v386 & 1) == 0)
  {
    goto LABEL_671;
  }

  v525 = v385;
  if ((v701 & 1) == 0)
  {
    goto LABEL_671;
  }

  *&v527[9] = *&v700[9];
  v526 = v699;
  *v527 = *v700;
  if ((v384 & 1) == 0)
  {
    goto LABEL_671;
  }

  v528 = v383;
  if ((v382 & 1) == 0)
  {
    goto LABEL_671;
  }

  v529 = v381;
  if ((v380 & 1) == 0)
  {
    goto LABEL_671;
  }

  v530 = v379;
  if ((v378 & 1) == 0)
  {
    goto LABEL_671;
  }

  v531 = v377;
  if ((v92 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v532 = v92;
  if ((v376 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v533 = v376;
  if (!HIBYTE(v375))
  {
    goto LABEL_671;
  }

  v534 = v375;
  v535 = BYTE2(v375);
  if ((v374 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v536 = v374;
  if ((v373 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v537 = v373;
  if ((v698 & 1) == 0)
  {
    goto LABEL_671;
  }

  v210 = v697;
  v697 = 0;
  v538 = v210;
  if ((v372 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v539 = v372;
  if ((v696 & 1) == 0)
  {
    goto LABEL_671;
  }

  v211 = v694;
  v694 = 0;
  v540 = v211;
  v212 = v695;
  v695 = 0;
  v541 = v212;
  if ((v693 & 1) == 0)
  {
    goto LABEL_671;
  }

  v213 = v691;
  v691 = 0;
  v542 = v213;
  v214 = v692;
  v692 = 0;
  v543 = v214;
  if ((v690 & 1) == 0)
  {
    goto LABEL_671;
  }

  v215 = v688;
  v688 = 0;
  v544 = v215;
  v216 = v689;
  v689 = 0;
  v545 = v216;
  if ((v371 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v546 = v371;
  if (v370 <= 0xFFu)
  {
    goto LABEL_671;
  }

  v547 = v370;
  if ((v369 & 0x10000) == 0)
  {
    goto LABEL_671;
  }

  v548 = v369;
  if ((v687 & 1) == 0)
  {
    goto LABEL_671;
  }

  v217 = v686;
  v686 = 0;
  v549 = v217;
  if ((v685 & 1) == 0)
  {
    goto LABEL_671;
  }

  v550 = v683;
  v551 = v684;
  if ((v465 & 1) == 0)
  {
    goto LABEL_671;
  }

  v552 = v441;
  if ((v682 & 1) == 0)
  {
    goto LABEL_671;
  }

  v218 = v680;
  v680 = 0;
  v553 = v218;
  v219 = v681;
  v681 = 0;
  v554 = v219;
  if ((v679 & 1) == 0)
  {
    goto LABEL_671;
  }

  v0 = v466;
  std::__optional_move_base<WebCore::ApplicationManifest,false>::__optional_move_base[abi:sn200100](v555, &v676);
  if ((v368 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v555[280] = v368;
  if ((v367 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v555[281] = v367;
  if ((v366 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v555[282] = v366;
  if ((v365 & 0x100000000) == 0)
  {
    goto LABEL_671;
  }

  v555[283] = v365;
  if ((v675 & 1) == 0)
  {
    goto LABEL_671;
  }

  WebKit::UserContentControllerParameters::UserContentControllerParameters(v556, &v669);
  if ((v668 & 1) == 0)
  {
    goto LABEL_671;
  }

  v6 = v466;
  std::__optional_move_base<WebKit::WebExtensionControllerParameters,false>::__optional_move_base[abi:sn200100](&v557, &v665);
  if ((v664 & 1) == 0)
  {
    goto LABEL_671;
  }

  LOBYTE(v558) = 0;
  v559 = 0;
  if (v663 == 1)
  {
    v254 = v662;
    v662 = 0;
    v558 = v254;
    v559 = 1;
  }

  if (v661 & 1) == 0 || (v560 = v659, v561 = v660, (v658 & 1) == 0) || (v220 = v657, v657 = 0, v562 = v220, (v656 & 1) == 0) || (v221 = v654, v654 = 0, v563 = v221, v222 = v655, v655 = 0, v564 = v222, (v653 & 1) == 0) || (v223 = v652, v652 = 0, v565 = v223, (v145 & 1) == 0) || (v566 = v198, (v464 & 1) == 0) || ((LOBYTE(v567) = 0, v571 = 0, (v463) ? (v224 = 0, v567 = v331, v568 = v414, v569 = v330, v570 = v329, v571 = 1, v331 = 0) : (v224 = v414), !((v363 | v364) >> 48) || (v572 = v361 | v362 | v363, v573 = (v361 | v362 | v363) >> 32, (v360 & 0x100000000) == 0) || (v574 = v360, (v651 & 1) == 0) || (v225 = v650, v650 = 0, v575 = v225, (v359 & 0x100000000) == 0) || (v576 = v359, (v358 & 0x100000000) == 0) || (v577 = v358, (v357 & 0x100000000) == 0) || (v578 = v357, (v356 & 0x100000000) == 0) || (v579 = v356, (v355 & 0x100000000) == 0) || (v580 = v355, (v354 & 0x100000000) == 0) || (v581 = v354, (v353 & 0x100000000) == 0) || (v582 = v353, (v352 & 0x100000000) == 0) || (v583 = v352, (v351 & 0x100000000) == 0) || (v584 = v351, (v350 & 0x100000000) == 0) || (v585 = v350, (v349 & 0x100000000) == 0) || (v586 = v349, (v348 & 0x100000000) == 0) || (v587 = v348, (v347 & 0x100000000) == 0) || (v588 = v347, (v346 & 0x100000000) == 0) || (v589 = v346, (v345 & 1) == 0) || (v590 = v343, (v342 & 1) == 0) || (v591 = v341, (v340 & 1) == 0) || (v592 = v339, (v338 & 0x100) == 0) || (v593 = v338, (v337 & 0x100000000) == 0) || (v594 = v337, (v336 & 0x100000000) == 0) || (v595 = v336, (v649 & 1) == 0) || (std::__optional_move_base<WebKit::RemotePageParameters,false>::__optional_move_base[abi:sn200100](v596, &v641), v18 = v344, (v335 & 0x100000000) == 0) || (v596[232] = v335, v597 = v721, v598 = v722, *v599 = *v723, *&v599[15] = *&v723[15], v600 = v334, (v333 & 1) == 0) || (v601 = v332, (v640 & 1) == 0) || (v226 = v639, v639 = 0, v602 = v226, (v638 & 1) == 0) || (v603 = v636, v604 = v637, (v190 & 0x10000) == 0) || (v605 = v190, (v635 & 1) == 0) || (std::__optional_move_base<WebCore::WindowFeatures,false>::__optional_move_base[abi:sn200100](v606, &v631), (v630 & 1) == 0) || (v227 = v628, v628 = 0, v607 = v227, v228 = v629, v629 = 0, v608 = v228, (v627 & 1) == 0) || (v229 = v625, v625 = 0, v609 = v229, v230 = v626, v626 = 0, v610 = v230, (v624 & 1) == 0) || (v231 = v623, v623 = 0, v611 = v231, (v622 & 1) == 0) || (v612 = v619, v613 = v620, v614 = v621, (v618 & 1) == 0) || (v232 = v617, v617 = 0, v615 = v232, (v201 & 1) == 0)))
  {
LABEL_671:
    __break(1u);
LABEL_672:
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v17);
    goto LABEL_616;
  }

  v616 = v200;
  *(WebKit::WebPageCreationParameters::WebPageCreationParameters(v2, v466) + 1680) = 1;
  WebKit::WebPageCreationParameters::~WebPageCreationParameters(v466, v233);
  v6 = 0;
  v0 = 0;
LABEL_575:
  if (v618 == 1)
  {
    v234 = v617;
    v617 = 0;
    if (v234)
    {
      if (atomic_fetch_add_explicit(v234, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v234, v17);
      }
    }
  }

  if (v624 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v623);
  }

  if (v627 == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v625, v17);
  }

  if (v630 == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v628, v17);
  }

  if (v635 == 1 && v634[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v634, v17);
  }

  if (v640 == 1)
  {
    v235 = v639;
    v639 = 0;
    if (v235)
    {
      if (atomic_fetch_add_explicit(v235, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v235, v17);
      }
    }
  }

  if (v649 == 1 && v648 == 1)
  {
    if (v647[120] == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData(v647, v17);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v646, v17);
    v259 = v645;
    v645 = 0;
    if (v259)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v259, v17);
    }

    v260 = v644;
    v644 = 0;
    if (v260 && atomic_fetch_add_explicit(v260, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v260, v17);
    }

    v261 = v641;
    v641 = 0;
    if (v261 && atomic_fetch_add_explicit(v261, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v261, v17);
    }
  }

  if (v651 == 1)
  {
    v236 = v650;
    v650 = 0;
    if (v236)
    {
      if (atomic_fetch_add_explicit(v236, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v236, v17);
      }
    }
  }

  if ((v464 & v463) == 1 && v331)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v331, v224);
  }

  if (v653 == 1 && v652)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v652, v17);
  }

  if (v656 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v654, v17);
  }

  if (v658 == 1)
  {
    v237 = v657;
    v657 = 0;
    if (v237)
    {
      if (atomic_fetch_add_explicit(v237, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v237, v17);
      }
    }
  }

  if (v664 == 1 && v663 == 1 && (v662 & 0x8000000000000) != 0)
  {
    v264 = (v662 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v662 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v264);
      WTF::fastFree(v264, v17);
    }
  }

  if (v668 == 1 && v667[16] == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v667, v17);
  }

  if (v675 == 1)
  {
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v674, v17);
    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v673, v238);
    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v672, v239);
    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v671, v240);
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v670, v241);
  }

  if (v679 == 1 && v678 == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(&v676, v17);
  }

  if (v682 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v680, v17);
  }

  v242 = v465;
  if (!v6)
  {
    v242 = 0;
  }

  if (v242 == 1)
  {
    goto LABEL_672;
  }

LABEL_616:
  if (v687 == 1)
  {
    v243 = v686;
    v686 = 0;
    if (v243)
    {
      if (atomic_fetch_add_explicit(v243, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v243, v17);
      }
    }
  }

  if (v690 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v688, v17);
  }

  if (v693 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v691, v17);
  }

  if (v696 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v694, v17);
  }

  if (v698 == 1 && (v697 & 0x8000000000000) != 0)
  {
    v262 = (v697 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v697 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v262);
      WTF::fastFree(v262, v17);
    }
  }

  if (v704 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v702, v17);
  }

  if (v708 == 1)
  {
    v244 = v707;
    v707 = 0;
    if (v244)
    {
      if (atomic_fetch_add_explicit(v244, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v244, v17);
      }
    }
  }

  if (v713 == 1 && (v712 & 0x8000000000000) != 0)
  {
    v263 = (v712 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v712 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v263);
      WTF::fastFree(v263, v17);
    }
  }

  if (v18 && v0 && atomic_fetch_add_explicit(v0, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v0, v17);
  }

  if (v720 == 1)
  {
    if (v717)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v717, DWORD2(v717));
    }

    if (v714)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v714, DWORD2(v714));
    }
  }
}