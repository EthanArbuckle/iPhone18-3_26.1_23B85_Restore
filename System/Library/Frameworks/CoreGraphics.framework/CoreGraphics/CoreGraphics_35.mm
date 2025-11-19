void indexed_converter_info(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (*(a3 + 80) && (BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(a1 + 200)), v34 = 0, (v9 = CGCMSConverterCreate(*(a1 + 24), BaseColorSpace, *(a1 + 84), *(a1 + 80), *(a1 + 72), &v34)) != 0))
  {
    v14 = v9;
    lookup_table = create_lookup_table(*(a1 + 200), BaseColorSpace, v9, *(a3 + 80), v10, v11, v12, v13);
    *(a4 + 24) = lookup_table;
    CFRelease(v14);
  }

  else
  {
    lookup_table = 0;
  }

  v16 = *(a2 + 80);
  if (v16)
  {
    v17 = *(a1 + 200);
    if (v17 && (v18 = *(v17 + 24), *(v18 + 28) == 5))
    {
      v19 = *(*(v18 + 96) + 8);
    }

    else
    {
      v19 = 1.84467441e19;
    }

    if (*v16 == 0.0 && v16[1] == v19)
    {
      v20 = 0;
      v21 = 0;
    }

    else if (*v16 == v19 && v16[1] == 0.0)
    {
      v20 = 1;
      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 2;
    }

    v22 = lookup_table;
    if (lookup_table)
    {
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(a1 + 216);
      if (!v20)
      {
LABEL_30:
        *(a4 + 32) = v21;
        return;
      }
    }

    v23 = *(a1 + 208);
    v24 = *(a1 + 40);
    v25 = malloc_type_calloc(v24 * v23, 1uLL, 0x100004077774924uLL);
    v26 = v25;
    if (v23 && v25)
    {
      v27 = 0;
      v28 = &v22[v24 * (v23 - 1)];
      v29 = v25;
      do
      {
        v30 = v28;
        v31 = v29;
        for (i = v24; i; --i)
        {
          v33 = *v30++;
          *v31++ = v33;
        }

        ++v27;
        v29 += v24;
        v28 -= v24;
      }

      while (v27 != v23);
    }

    if (lookup_table)
    {
      free(lookup_table);
    }

    *(a4 + 24) = v26;
    goto LABEL_30;
  }
}

uint64_t convert_indexed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 1.0;
  if (*(a4 + 32) == 2)
  {
    v11 = (*(*(a2 + 80) + 8) - **(a2 + 80)) / (*(a1 + 208) - 1);
    v12 = 1.0;
    v13 = v11 < 0.0 || v11 > 1.0;
    if (v11 <= 1.0 || v11 < 0.0)
    {
      v12 = 0.0;
    }

    if (v13)
    {
      v10 = v12;
    }

    else
    {
      v10 = (*(*(a2 + 80) + 8) - **(a2 + 80)) / (*(a1 + 208) - 1);
    }
  }

  v14 = (a3 + 40);
  v15 = *(a2 + 48);
  v16 = v15 != 8 || (*(a3 + 40) - 7) > 2;
  v327 = *(a4 + 32);
  if (!v16)
  {
    v53 = *(a3 + 48);
    _ZF = v53 - 1 < 2 || v53 == 4;
    if (!_ZF)
    {
      _CGHandleAssert("convert_indexed_1_2_4_bit", 4127, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "bits_per_component == 1 || bits_per_component == 2 || bits_per_component == 4", "%lu bits per component content unhandled here", a6, a7, a8, *(a3 + 48));
    }

    v55 = *(a4 + 24);
    if (!v55)
    {
      v55 = *(a1 + 216);
    }

    v57 = *(a2 + 8);
    v56 = *(a2 + 16);
    v58 = *a2;
    v59 = *a3;
    v60 = *(a1 + 40);
    memcpy(__dst, (a2 + 40), 0x130uLL);
    BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v62, v63, v64, v65, v66, v67, v68);
    if (v55)
    {
      v71 = *(a2 + 64);
      if (v71 == 8)
      {
        v72 = 1;
      }

      else
      {
        v72 = *(a2 + 64);
      }

      if (v71 == 9)
      {
        v73 = 3;
      }

      else
      {
        v73 = v72;
      }

      v74 = *(a3 + 64);
      if (v74 == 9)
      {
        v74 = 3;
      }

      else if (v74 == 8)
      {
        v74 = 1;
      }

      v325 = (v73 & 0xFFFFFFFD) == 4;
      v149 = flt_18439D2B8[v53 == 2];
      if (v53 == 1)
      {
        v149 = 0.0039216;
      }

      if (v56)
      {
        v150 = *(a2 + 24);
        v151 = *(a3 + 24);
        v152 = (*(a1 + 208) - 1);
        v154 = (v74 - 5) < 0xFFFFFFFC || (v73 - 5) < 0xFFFFFFFE;
        _ZF = v73 == 4;
        v155 = -1;
        if (!_ZF)
        {
          v155 = 1;
        }

        v156 = v53 - 24;
        while (!v57)
        {
LABEL_123:
          v58 = (v58 + v150);
          v59 += v151;
          if (!--v56)
          {
            return 1;
          }
        }

        LODWORD(i) = 0;
        v158 = 0;
        v159 = v58 + v325;
        v160 = v57;
        v161 = v59;
        while (1)
        {
          v162 = *v159;
          if (v10 != 1.0)
          {
            v70 = v162 * v10 + 0.5 + **(a2 + 80);
            v162 = v70;
          }

          if (v154)
          {
            LOBYTE(v163) = -1;
            if (!v74)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v163 = v159[v155];
            if (v327 == 2)
            {
              v70 = fmax(fmin(v163 * (*(*(a2 + 80) + 24) - *(*(a2 + 80) + 16)) + 0.5 + *(*(a2 + 80) + 16) * 255.0, 255.0), 0.0);
              v163 = v70;
            }

            else if (v327 == 1)
            {
              LOBYTE(v163) = ~v163;
            }
          }

          if (v74 == 4 || v74 == 2)
          {
            if (v53 < 0x19)
            {
              v164 = v53;
              if (i >= 8)
              {
                goto LABEL_98;
              }
            }

            else
            {
              if (i >= 8)
              {
                for (i = i; i > 7; *v161++ = v158 >> i)
                {
                  i -= 8;
                }
              }

              v158 = (v163 >> v156) | (v158 << 24);
              LODWORD(i) = i | 0x18;
              v164 = v53 - 24;
LABEL_98:
              v165 = (i - 8);
              do
              {
                LODWORD(i) = i - 8;
                *v161++ = v158 >> v165;
                v165 -= 8;
              }

              while (i > 7);
            }

            v158 = ~(-1 << v164) & v163 | (v158 << v164);
            LODWORD(i) = i + v164;
          }

LABEL_101:
          if (v60)
          {
            v166 = 0;
            v167 = (v152 - v162) & ((v152 - v162) >> 31);
            v168 = v55 + v60 * (v162 + ((v152 - v162) & ((v152 - v162) >> 31)));
            while (1)
            {
              LOBYTE(v70) = *(v168 + v166);
              *&v70 = v149 * LODWORD(v70);
              LODWORD(v167) = llroundf(*&v70);
              if (v53 >= 0x19)
              {
                break;
              }

              v169 = v53;
              if (i >= 8)
              {
                goto LABEL_109;
              }

LABEL_111:
              v158 = ~(-1 << v169) & v167 | (v158 << v169);
              LODWORD(i) = i + v169;
              if (++v166 == v60)
              {
                goto LABEL_112;
              }
            }

            if (i >= 8)
            {
              for (i = i; i > 7; *v161++ = v158 >> i)
              {
                i -= 8;
              }
            }

            v158 = (v167 >> v156) | (v158 << 24);
            LODWORD(i) = i | 0x18;
            v169 = v53 - 24;
LABEL_109:
            v170 = (i - 8);
            do
            {
              LODWORD(i) = i - 8;
              *v161++ = v158 >> v170;
              v170 -= 8;
            }

            while (i > 7);
            goto LABEL_111;
          }

LABEL_112:
          if ((v74 & 0xFFFFFFFD) == 1)
          {
            if (v53 < 0x19)
            {
              v171 = v53;
              if (i >= 8)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (i >= 8)
              {
                for (i = i; i > 7; *v161++ = v158 >> i)
                {
                  i -= 8;
                }
              }

              v158 = (v163 >> v156) | (v158 << 24);
              LODWORD(i) = i | 0x18;
              v171 = v53 - 24;
LABEL_119:
              v172 = (i - 8);
              do
              {
                LODWORD(i) = i - 8;
                *v161++ = v158 >> v172;
                v172 -= 8;
              }

              while (i > 7);
            }

            v158 = ~(-1 << v171) & v163 | (v158 << v171);
            LODWORD(i) = i + v171;
          }

          v159 += BitsPerPixel >> 3;
          if (!--v160)
          {
            goto LABEL_123;
          }
        }
      }

      return 1;
    }

    v113 = "convert_indexed_1_2_4_bit";
LABEL_294:
    CGPostError("%s : Unable to complete color conversion", v38, v39, v40, v41, v42, v43, v44, v113);
    return 0;
  }

  if (v15 == 8)
  {
    v17 = *(a4 + 24);
    if (!v17)
    {
      v17 = *(a1 + 216);
    }

    v307 = v17;
    v18 = *(a2 + 16);
    v306 = *(a2 + 8);
    v19 = *a2;
    v20 = *a3;
    v21 = *(a1 + 40);
    memcpy(__dst, (a2 + 40), 0x130uLL);
    v29 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v22, v23, v24, v25, v26, v27, v28);
    memcpy(__dst, (a3 + 40), 0x130uLL);
    v37 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v30, v31, v32, v33, v34, v35, v36);
    if (!v307)
    {
      v113 = "convert_indexed_8bit";
      goto LABEL_294;
    }

    v322 = v29;
    v45 = *v14;
    if (*v14 > 5 || ((1 << v45) & 0x36) == 0)
    {
      _CGHandleAssert("convert_indexed_8bit", 4224, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "unhandled component type %u", v42, v43, v44, *v14);
    }

    v46 = v37;
    v304 = *(a3 + 24);
    v305 = *(a2 + 24);
    v47 = *(a1 + 208);
    Type = CGColorSpaceGetType(*(a1 + 24));
    memset(&v336, 0, sizeof(v336));
    memset(&v335, 0, sizeof(v335));
    memset(&v334, 0, sizeof(v334));
    if (Type == 5)
    {
      CGColorSpaceGetLabData(*(a1 + 24), v48, v49, v50, &v334);
      v52 = 1132462080;
    }

    else
    {
      v52 = 1132396544;
    }

    v173 = *&v52;
    v174 = v327;
    v175 = v18;
    v177 = v306;
    v176 = v307;
    v178 = v19;
    v179 = v20;
    v180 = a2;
    v181 = *(a2 + 64);
    v183 = v304;
    v182 = v305;
    if (v181 == 9)
    {
      v181 = 3;
    }

    else if (v181 == 8)
    {
      v181 = 1;
    }

    v186 = *(a3 + 64);
    if (v186 == 9)
    {
      v187 = 3;
    }

    else if (v186 == 8)
    {
      v187 = 1;
    }

    else
    {
      v187 = *(a3 + 64);
    }

    v309 = (v181 & 0xFFFFFFFD) == 4;
    v189 = v187 == 2 || (v187 & 0xFFFFFFFD) == 4;
    v308 = v189;
    if (v18)
    {
      v190 = v322 >> 3;
      v191 = v46 >> 3;
      v192 = (v47 - 1);
      v194 = (v181 - 5) < 0xFFFFFFFE || (v187 - 5) < 0xFFFFFFFC;
      if (v181 == 4)
      {
        v195 = -1;
      }

      else
      {
        v195 = 1;
      }

      v318 = v46 >> 5;
      v321 = v195;
      v326 = v46 >> 4;
      v302 = v190;
      v303 = v187;
      v301 = v46 >> 3;
      v299 = v194;
      v300 = (v47 - 1);
      while (!v177)
      {
LABEL_242:
        v178 = (v178 + v182);
        v179 += v183;
        if (!--v175)
        {
          v186 = *(a3 + 64);
          goto LABEL_244;
        }
      }

      v196 = (v179 + 4 * v308);
      v197 = (v179 + 2 * v308);
      v198 = (v179 + v308);
      v199 = v178 + v309;
      v200 = v177;
      v201 = v197;
      while (1)
      {
        v202 = *v199;
        if (v10 != 1.0)
        {
          v202 = (v202 * v10 + 0.5 + **(v180 + 80));
        }

        v332 = v335;
        v333 = v336;
        permuteMap = v334;
        if (v21)
        {
          v203 = 0;
          v204 = v176 + v21 * (v202 + ((v192 - v202) & ((v192 - v202) >> 31)));
          v205 = 32;
          do
          {
            if (v45 > 3)
            {
              if (v45 == 4)
              {
                __dst[1] = v332;
                __dst[2] = v333;
                width = permuteMap.width;
                v210 = 1.0;
                __dst[0] = permuteMap;
                v211 = 0.0;
                if (Type == 5)
                {
                  if (v203)
                  {
                    if (v203 <= 2)
                    {
                      v211 = *(&__dst[0].data + v205);
                      v210 = *(&__dst[0].height + v205);
                    }
                  }

                  else
                  {
                    v210 = 100.0;
                  }
                }

                LOBYTE(width) = *(v204 + v203);
                v196[v203] = v211 + (((v210 - v211) * width) / v173);
              }

              else
              {
                __dst[1] = v332;
                __dst[2] = v333;
                v206 = permuteMap.width;
                v207 = 1.0;
                __dst[0] = permuteMap;
                v208 = 0.0;
                if (Type == 5)
                {
                  if (v203)
                  {
                    if (v203 <= 2)
                    {
                      v208 = *(&__dst[0].data + v205);
                      v207 = *(&__dst[0].height + v205);
                    }
                  }

                  else
                  {
                    v207 = 100.0;
                  }
                }

                LOBYTE(v206) = *(v204 + v203);
                _S0 = v208 + (((v207 - v208) * v206) / v173);
                __asm { FCVT            H0, S0 }

                *&v197[2 * v203] = LOWORD(_S0);
              }
            }

            else if (v45 == 1)
            {
              v198[v203] = *(v204 + v203);
            }

            else
            {
              if (v45 != 2)
              {
                _CGHandleAssert("write_out_pixel", 3967, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", v187, v191, v192, v45);
              }

              v201[v203] = *(v204 + v203) | (*(v204 + v203) << 8);
            }

            ++v203;
            v205 += 16;
          }

          while (v21 != v203);
        }

        if (v187)
        {
          if (v194)
          {
            LOWORD(v215) = 255;
          }

          else
          {
            v215 = v199[v321];
            if (v174 == 2)
            {
              v215 = fmax(fmin(v215 * (*(*(v180 + 80) + 24) - *(*(v180 + 80) + 16)) + 0.5 + *(*(v180 + 80) + 16) * 255.0, 255.0), 0.0);
            }

            else if (v174 == 1)
            {
              LOWORD(v215) = ~v215;
            }
          }

          if (v187 > 6)
          {
LABEL_340:
            _CGHandleAssert("write_out_alpha", 4062, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled alpha info %u", v187, v191, v192, v187);
          }

          if (((1 << v187) & 0x2A) != 0)
          {
            v216 = &v198[v21];
            v217 = &v201[v21];
            v218 = &v197[2 * v21];
            v219 = &v196[v21];
          }

          else
          {
            if (((1 << v187) & 0x54) == 0)
            {
              goto LABEL_340;
            }

            v216 = v198 - 1;
            v217 = v201 - 1;
            v218 = (v197 - 2);
            v219 = v196 - 1;
          }

          if (v45 > 3)
          {
            if (v45 == 4)
            {
              if (v215 == 0xFF)
              {
                *v219 = 1.0;
                goto LABEL_231;
              }

              v229 = v215 / 255.0;
              *v219 = v229;
              if (v187 > 2)
              {
                goto LABEL_231;
              }

              if (!v215)
              {
                if (v21)
                {
                  v311 = v179;
                  v313 = v178;
                  v315 = v175;
                  bzero(v196, 4 * v21);
                  v194 = v299;
                  v192 = v300;
                  v191 = v301;
                  v190 = v302;
                  v187 = v303;
                  v183 = v304;
                  v182 = v305;
                  v177 = v306;
                  v179 = v311;
                  v178 = v313;
                  v175 = v315;
                  v176 = v307;
                  v174 = v327;
                  v180 = a2;
                }

LABEL_231:
                v199 += v190;
LABEL_232:
                v196 += v318;
                goto LABEL_236;
              }

              v230 = v196;
              v231 = v21;
              if (!v21)
              {
                goto LABEL_231;
              }

              do
              {
                *v230 = *v230 * *v219;
                ++v230;
                --v231;
              }

              while (v231);
            }

            else
            {
              if (v215 == 0xFF)
              {
                *v218 = COERCE_UNSIGNED_INT(1.0);
LABEL_234:
                v199 += v190;
LABEL_235:
                v197 += 2 * v326;
                goto LABEL_236;
              }

              _S0 = v215 / 255.0;
              __asm { FCVT            H0, S0 }

              *v218 = *&_S0;
              if (v187 > 2)
              {
                goto LABEL_234;
              }

              if (!v215)
              {
                if (v21)
                {
                  v310 = v179;
                  v312 = v178;
                  v314 = v175;
                  bzero(v197, 2 * v21);
                  v194 = v299;
                  v192 = v300;
                  v191 = v301;
                  v190 = v302;
                  v187 = v303;
                  v183 = v304;
                  v182 = v305;
                  v177 = v306;
                  v179 = v310;
                  v178 = v312;
                  v175 = v314;
                  v176 = v307;
                  v174 = v327;
                  v180 = a2;
                }

                goto LABEL_234;
              }

              v224 = v197;
              v225 = v21;
              if (!v21)
              {
                goto LABEL_234;
              }

              do
              {
                *v224 = *v224 * *v218;
                ++v224;
                --v225;
              }

              while (v225);
            }
          }

          else if (v45 == 1)
          {
            *v216 = v215;
            if (!v21 || v187 > 2 || v215 == 0xFF)
            {
              v199 += v190;
LABEL_229:
              v198 += v191;
              goto LABEL_236;
            }

            v226 = v215 | (v215 << 8);
            v227 = v198;
            v228 = v21;
            do
            {
              *v227 = (v226 * *v227 + 0x7FFF) >> 16;
              ++v227;
              --v228;
            }

            while (v228);
          }

          else
          {
            if (v45 != 2)
            {
              _CGHandleAssert("write_out_alpha", 4080, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", v187, v191, v192, v45);
            }

            *v217 = v215 | (v215 << 8);
            if (!v21 || v187 > 2 || v215 == 0xFF)
            {
              v199 += v190;
              goto LABEL_227;
            }

            v220 = v215 | (v215 << 8);
            v221 = v201;
            v222 = v21;
            do
            {
              *v221 = (v220 * *v221 + 0x7FFF) >> 16;
              ++v221;
              --v222;
            }

            while (v222);
          }
        }

        v199 += v190;
        if (v45 > 3)
        {
          if (v45 != 4)
          {
            goto LABEL_235;
          }

          goto LABEL_232;
        }

        if (v45 == 1)
        {
          goto LABEL_229;
        }

        if (v45 != 2)
        {
          _CGHandleAssert("increment_dest_pointer", 4116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", v187, v191, v192, v45);
        }

LABEL_227:
        v201 += v326;
LABEL_236:
        if (!--v200)
        {
          goto LABEL_242;
        }
      }
    }

LABEL_244:
    if ((v186 - 1) > 8)
    {
      v232 = 0;
    }

    else
    {
      v232 = qword_1844E0DE8[v186 - 1];
    }

    if (*(a3 + 68) == 0x2000 && *(a3 + 40) == 1 && v232 + *(a3 + 56) == 4)
    {
      v233 = *a3;
      v234 = *(a3 + 8) * *(a3 + 16);
      LODWORD(permuteMap.data) = 66051;
      __dst[0].data = v233;
      __dst[0].height = 1;
      __dst[0].width = v234 & 0x3FFFFFFFFFFFFFFFLL;
      __dst[0].rowBytes = 4 * v234;
      vImagePermuteChannels_ARGB8888(__dst, __dst, &permuteMap, 0);
    }

    return 1;
  }

  if (v15 == 32)
  {
    if (*(a2 + 40) == 4)
    {
      v114 = *(a4 + 24);
      memcpy(__dst, (a2 + 40), 0x130uLL);
      if (CGBitmapPixelInfoGetBitsPerPixel(__dst, v115, v116, v117, v118, v119, v120, v121) != 32 || *(a2 + 48) != 32)
      {
        memcpy(__dst, (a2 + 40), 0x130uLL);
        v280 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v273, v274, v275, v276, v277, v278, v279);
        _CGHandleAssert("convert_indexed_float", 4425, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "CGBitmapPixelInfoGetBitsPerPixel(src->pixel_info) == 32 && CGBitmapPixelInfoGetBitsPerComponent(src->pixel_info) == 32", "invalid pixel type bpp %lu bpc %lu", v281, v282, v283, v280);
      }

      if (!v114)
      {
        v114 = *(a1 + 216);
      }

      v123 = *(a2 + 8);
      v122 = *(a2 + 16);
      v124 = *a2;
      v125 = a3;
      v126 = *a3;
      v127 = *(a1 + 40);
      memcpy(__dst, (a2 + 40), 0x130uLL);
      v135 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v128, v129, v130, v131, v132, v133, v134);
      memcpy(__dst, v14, 0x130uLL);
      v143 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v136, v137, v138, v139, v140, v141, v142);
      if (!v114)
      {
        v113 = "convert_indexed_float";
        goto LABEL_294;
      }

      v320 = v143;
      v324 = v135;
      v106 = *v14;
      if (v106 > 5 || ((1 << v106) & 0x36) == 0)
      {
        _CGHandleAssert("convert_indexed_float", 4450, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "invalid destination component type %u", v42, v43, v44, v106);
      }

      v329 = *(a2 + 24);
      v144 = *(v125 + 24);
      v317 = *(a1 + 208);
      v147 = CGColorSpaceGetType(*(a1 + 24));
      memset(&v336, 0, sizeof(v336));
      memset(&v335, 0, sizeof(v335));
      memset(&v334, 0, sizeof(v334));
      if (v147 == 5)
      {
        CGColorSpaceGetLabData(*(a1 + 24), v108, v145, v146, &v334);
        v148 = 256.0;
      }

      else
      {
        v148 = 255.0;
      }

      v110 = v329;
      if (v122)
      {
        v235 = v10;
        v236 = v320 >> 6;
        do
        {
          if (v123)
          {
            v237 = v123;
            v238 = v124;
            v239 = v126;
            v240 = v126;
            v241 = v126;
            v242 = v126;
            do
            {
              v243 = *v238 * 255.0;
              if (v235 != 1.0)
              {
                v243 = **(a2 + 80) + ((v243 * v235) + 0.5);
              }

              v244 = fmaxf(v243, 0.0);
              if (v244 > 255.0)
              {
                v244 = 255.0;
              }

              v332 = v335;
              v333 = v336;
              permuteMap = v334;
              if (v127)
              {
                v245 = 0;
                v246 = v114 + v127 * (((v317 - 1 - v244) & (((v317 - 1) - v244) >> 31)) + v244);
                v108 = 32;
                do
                {
                  if (v106 > 3)
                  {
                    if (v106 == 4)
                    {
                      __dst[1] = v332;
                      __dst[2] = v333;
                      v250 = permuteMap.width;
                      v251 = 1.0;
                      __dst[0] = permuteMap;
                      v252 = 0.0;
                      if (v147 == 5)
                      {
                        if (v245)
                        {
                          if (v245 <= 2)
                          {
                            v145 = __dst + v108;
                            v252 = *(&__dst[0].data + v108);
                            v251 = *(&__dst[0].height + v108);
                          }
                        }

                        else
                        {
                          v145 = 1120403456;
                          v251 = 100.0;
                        }
                      }

                      LOBYTE(v250) = *(v246 + v245);
                      *(v239 + 4 * v245) = v252 + (((v251 - v252) * v250) / v148);
                    }

                    else
                    {
                      __dst[1] = v332;
                      __dst[2] = v333;
                      v247 = permuteMap.width;
                      v248 = 1.0;
                      __dst[0] = permuteMap;
                      v249 = 0.0;
                      if (v147 == 5)
                      {
                        if (v245)
                        {
                          if (v245 <= 2)
                          {
                            v145 = __dst + v108;
                            v249 = *(&__dst[0].data + v108);
                            v248 = *(&__dst[0].height + v108);
                          }
                        }

                        else
                        {
                          v145 = 1120403456;
                          v248 = 100.0;
                        }
                      }

                      LOBYTE(v247) = *(v246 + v245);
                      _S5 = v249 + (((v248 - v249) * v247) / v148);
                      __asm { FCVT            H5, S5 }

                      *(v240 + 2 * v245) = LOWORD(_S5);
                    }
                  }

                  else if (v106 == 1)
                  {
                    v145 = *(v246 + v245);
                    *(v242 + v245) = v145;
                  }

                  else
                  {
                    if (v106 != 2)
                    {
LABEL_335:
                      _CGHandleAssert("write_out_pixel", 3967, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", v108, v145, v110, v106);
                    }

                    v145 = *(v246 + v245) | (*(v246 + v245) << 8);
                    *(v241 + 2 * v245) = *(v246 + v245) | (*(v246 + v245) << 8);
                  }

                  ++v245;
                  v108 += 16;
                }

                while (v127 != v245);
              }

              if (v106 > 3)
              {
                if (v106 == 4)
                {
                  v239 += 4 * (v320 >> 7);
                }

                else
                {
                  v240 += 2 * v236;
                }
              }

              else if (v106 == 1)
              {
                v242 += v320 >> 5;
              }

              else
              {
                if (v106 != 2)
                {
LABEL_338:
                  _CGHandleAssert("increment_dest_pointer", 4116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", v108, v145, v110, v106);
                }

                v241 += 2 * v236;
              }

              v238 += v324 >> 5;
              --v237;
            }

            while (v237);
          }

          v124 = (v124 + v329);
          v126 += v144;
          --v122;
        }

        while (v122);
      }

      return 1;
    }

LABEL_341:
    CGPostError("%s : Unable to complete color conversion", a2, a3, a4, a5, a6, a7, a8, "convert_indexed");
    _CGHandleAssert("convert_indexed", 4508, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "", "Unimplemented", v295, v296, v297, v298);
  }

  if (v15 != 16)
  {
    goto LABEL_341;
  }

  v75 = *(a2 + 40);
  if (v75 != 5)
  {
    if (v75 == 2)
    {
      v76 = *(a4 + 24);
      memcpy(__dst, (a2 + 40), 0x130uLL);
      if (CGBitmapPixelInfoGetBitsPerPixel(__dst, v77, v78, v79, v80, v81, v82, v83) != 16 || *(a2 + 48) != 16 || *(a2 + 40) != 2)
      {
        memcpy(__dst, (a2 + 40), 0x130uLL);
        v291 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v284, v285, v286, v287, v288, v289, v290);
        _CGHandleAssert("convert_indexed_16bit", 4298, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "CGBitmapPixelInfoGetBitsPerPixel(src->pixel_info) == 16 && CGBitmapPixelInfoGetBitsPerComponent(src->pixel_info) == 16 && CGBitmapPixelInfoGetCGPixelComponentType(src->pixel_info) == kCGPixelComponent16BitInteger", "bpp %lu  bpc %lu  type %u", v292, v293, v294, v291);
      }

      if (!v76)
      {
        v76 = *(a1 + 216);
      }

      v85 = *(a2 + 8);
      v84 = *(a2 + 16);
      v86 = *a2;
      v87 = a3;
      v88 = *a3;
      v89 = *(a1 + 40);
      memcpy(__dst, (a2 + 40), 0x130uLL);
      v97 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v90, v91, v92, v93, v94, v95, v96);
      memcpy(__dst, v14, 0x130uLL);
      v105 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v98, v99, v100, v101, v102, v103, v104);
      if (!v76)
      {
        v113 = "convert_indexed_16bit";
        goto LABEL_294;
      }

      v319 = v105;
      v323 = v97;
      v106 = *v14;
      if (v106 > 5 || ((1 << v106) & 0x36) == 0)
      {
        _CGHandleAssert("convert_indexed_16bit", 4323, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "invalid destination component type = %u", v42, v43, v44, v106);
      }

      v328 = *(a2 + 24);
      v107 = *(v87 + 24);
      v316 = *(a1 + 208);
      v111 = CGColorSpaceGetType(*(a1 + 24));
      memset(&v336, 0, sizeof(v336));
      memset(&v335, 0, sizeof(v335));
      memset(&v334, 0, sizeof(v334));
      if (v111 == 5)
      {
        CGColorSpaceGetLabData(*(a1 + 24), v108, v109, v110, &v334);
        v112 = 256.0;
      }

      else
      {
        v112 = 255.0;
      }

      v145 = v328;
      if (v84)
      {
        v254 = v319 >> 5;
        do
        {
          if (v85)
          {
            v255 = v85;
            v256 = v86;
            v257 = v88;
            v258 = v88;
            v259 = v88;
            v260 = v88;
            do
            {
              v261 = *v256;
              if (v10 != 1.0)
              {
                v261 = (v261 * v10 + 0.5 + **(a2 + 80));
              }

              v262 = v261 >> 8;
              v332 = v335;
              v333 = v336;
              permuteMap = v334;
              if (v89)
              {
                v263 = 0;
                v264 = v76 + v89 * (v262 + ((v316 - 1 - v262) & (((v316 - 1) - v262) >> 31)));
                v265 = 32;
                do
                {
                  if (v106 > 3)
                  {
                    if (v106 == 4)
                    {
                      __dst[1] = v332;
                      __dst[2] = v333;
                      v269 = permuteMap.width;
                      v270 = 1.0;
                      __dst[0] = permuteMap;
                      v271 = 0.0;
                      if (v111 == 5)
                      {
                        if (v263)
                        {
                          if (v263 <= 2)
                          {
                            v108 = __dst + v265;
                            v271 = *(&__dst[0].data + v265);
                            v270 = *(&__dst[0].height + v265);
                          }
                        }

                        else
                        {
                          v108 = 1120403456;
                          v270 = 100.0;
                        }
                      }

                      LOBYTE(v269) = *(v264 + v263);
                      *(v257 + 4 * v263) = v271 + (((v270 - v271) * v269) / v112);
                    }

                    else
                    {
                      __dst[1] = v332;
                      __dst[2] = v333;
                      v266 = permuteMap.width;
                      v267 = 1.0;
                      __dst[0] = permuteMap;
                      v268 = 0.0;
                      if (v111 == 5)
                      {
                        if (v263)
                        {
                          if (v263 <= 2)
                          {
                            v108 = __dst + v265;
                            v268 = *(&__dst[0].data + v265);
                            v267 = *(&__dst[0].height + v265);
                          }
                        }

                        else
                        {
                          v108 = 1120403456;
                          v267 = 100.0;
                        }
                      }

                      LOBYTE(v266) = *(v264 + v263);
                      _S3 = v268 + (((v267 - v268) * v266) / v112);
                      __asm { FCVT            H3, S3 }

                      *(v258 + 2 * v263) = LOWORD(_S3);
                    }
                  }

                  else if (v106 == 1)
                  {
                    v108 = *(v264 + v263);
                    *(v260 + v263) = v108;
                  }

                  else
                  {
                    if (v106 != 2)
                    {
                      goto LABEL_335;
                    }

                    v108 = *(v264 + v263) | (*(v264 + v263) << 8);
                    *(v259 + 2 * v263) = *(v264 + v263) | (*(v264 + v263) << 8);
                  }

                  ++v263;
                  v265 += 16;
                }

                while (v89 != v263);
              }

              if (v106 > 3)
              {
                if (v106 == 4)
                {
                  v257 += 4 * (v319 >> 6);
                }

                else
                {
                  v258 += 2 * v254;
                }
              }

              else if (v106 == 1)
              {
                v260 += v319 >> 4;
              }

              else
              {
                if (v106 != 2)
                {
                  goto LABEL_338;
                }

                v259 += 2 * v254;
              }

              v256 = (v256 + 2 * (v323 >> 4));
              --v255;
            }

            while (v255);
          }

          v86 = (v86 + v328);
          v88 += v107;
          --v84;
        }

        while (v84);
      }

      return 1;
    }

    goto LABEL_341;
  }

  v184 = *(a4 + 24);

  return convert_indexed_float16(a1, a2, a3, v184, v10);
}

uint64_t convert_indexed_float16(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v121 = a1;
  v120 = a2;
  v119 = a3;
  v118 = a4;
  v117 = a5;
  memcpy(__dst, (a2 + 40), sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v5, v6, v7, v8, v9, v10, v11);
  v13 = 0;
  if (BitsPerPixel == 16)
  {
    memcpy(v115, (v120 + 40), sizeof(v115));
    BitsPerComponent = CGBitmapPixelInfoGetBitsPerComponent(v115[1]);
    v13 = 0;
    if (BitsPerComponent == 16)
    {
      memcpy(v114, (v120 + 40), sizeof(v114));
      v13 = CGBitmapPixelInfoGetBitsPerComponent(v114[0]) == 5;
    }
  }

  if (!v13)
  {
    memcpy(v113, (v120 + 40), sizeof(v113));
    v22 = CGBitmapPixelInfoGetBitsPerPixel(v113, v15, v16, v17, v18, v19, v20, v21);
    memcpy(v112, (v120 + 40), sizeof(v112));
    CGBitmapPixelInfoGetBitsPerComponent(v112[1]);
    memcpy(v111, (v120 + 40), sizeof(v111));
    CGBitmapPixelInfoGetBitsPerComponent(v111[0]);
    _CGHandleAssert("convert_indexed_float16", 4361, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "CGBitmapPixelInfoGetBitsPerPixel(src->pixel_info) == 16 && CGBitmapPixelInfoGetBitsPerComponent(src->pixel_info) == 16 && CGBitmapPixelInfoGetCGPixelComponentType(src->pixel_info) == kCGPixelComponent16BitFloat", "bpp %lu  bpc %lu  type %u", v23, v24, v25, v22);
  }

  if (!v118)
  {
    v118 = *(v121 + 216);
  }

  v110 = *(v120 + 8);
  v109 = *(v120 + 16);
  v108 = *v120;
  v107 = *v119;
  v106 = *(v121 + 40);
  memcpy(v104, (v120 + 40), sizeof(v104));
  v105 = CGBitmapPixelInfoGetBitsPerPixel(v104, v26, v27, v28, v29, v30, v31, v32) >> 4;
  memcpy(v102, v119 + 5, sizeof(v102));
  v103 = CGBitmapPixelInfoGetBitsPerPixel(v102, v33, v34, v35, v36, v37, v38, v39) >> 4;
  v101 = *(v120 + 24);
  v100 = v119[3];
  v99 = *(v121 + 208) - 1;
  if (v118)
  {
    memcpy(v96, v119 + 5, sizeof(v96));
    v97 = CGBitmapPixelInfoGetBitsPerComponent(v96[0]);
    v50 = 1;
    if (v97 != 1)
    {
      v50 = 1;
      if (v97 != 2)
      {
        v50 = 1;
        if (v97 != 5)
        {
          v50 = v97 == 4;
        }
      }
    }

    if (!v50)
    {
      _CGHandleAssert("convert_indexed_float16", 4386, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "dst_component == kCGPixelComponent8BitInteger || dst_component == kCGPixelComponent16BitInteger || dst_component == kCGPixelComponent16BitFloat || dst_component == kCGPixelComponent32BitFloat", "invalid destination component type %u", v47, v48, v49, v97);
    }

    Type = CGColorSpaceGetType(*(v121 + 24));
    memset(__b, 0, sizeof(__b));
    if (Type == 5)
    {
      CGColorSpaceGetLabData(*(v121 + 24), v51, v52, v53, __b);
    }

    else
    {
      memset(__b, 0, sizeof(__b));
    }

    v54 = 256.0;
    if (Type != 5)
    {
      v54 = 255.0;
    }

    v93 = v54;
    v55 = v117;
    v92 = v55;
    while (v109--)
    {
      v91 = v110;
      v90 = v108;
      v89 = v107;
      v88 = v107;
      v87 = v107;
      for (i = v107; v91--; increment_dest_pointer(v97, &v89, &v88, &v87, &i, v103, v79, v80))
      {
        _H0 = *v90;
        __asm { FCVT            S0, H0 }

        _S0 = _S0 * 255.0;
        __asm { FCVT            H0, S0 }

        v85 = LOWORD(_S0);
        if (v92 != 1.0)
        {
          v65 = **(v120 + 80);
          _H1 = v85;
          __asm { FCVT            S1, H1 }

          _S0 = v65 + ((_S1 * v92) + 0.5);
          __asm { FCVT            H0, S0 }

          v85 = LOWORD(_S0);
        }

        _H0 = v85;
        __asm { FCVT            S0, H0 }

        if (_S0 <= 0.0)
        {
          _S0 = 0.0;
        }

        else
        {
          _H0 = v85;
          __asm { FCVT            S0, H0 }
        }

        if (_S0 <= 255.0)
        {
          _H0 = v85;
          __asm { FCVT            S0, H0 }

          if (_S0 <= 0.0)
          {
            _S0 = 0;
          }

          else
          {
            _H0 = v85;
            __asm { FCVT            S0, H0 }
          }
        }

        else
        {
          _S0 = 1132396544;
        }

        __asm { FCVT            H0, S0 }

        v85 = _H0;
        __asm { FCVT            S0, H0 }

        v84 = _S0;
        pixel_ptr = get_pixel_ptr(v118, v84, v99, v106);
        memcpy(v82, __b, sizeof(v82));
        write_out_pixel(v97, v89, v88, v87, i, pixel_ptr, Type, v82, v93, v106);
        v90 += v105;
      }

      v108 = (v108 + v101);
      v107 += v100;
    }

    v122 = 1;
    v98 = 1;
  }

  else
  {
    CGPostError("%s : Unable to complete color conversion", v40, v41, v42, v43, v44, v45, v46, "convert_indexed_float16");
    v122 = 0;
    v98 = 1;
  }

  return v122 & 1;
}

uint64_t write_out_pixel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, float a9, uint64_t a10)
{
  if (a10)
  {
    v10 = 0;
    v11 = 32;
    do
    {
      if (result > 3)
      {
        if (result == 4)
        {
          v17 = a8[3];
          v29 = a8[2];
          v30 = v17;
          v18 = a8[5];
          v31 = a8[4];
          v32 = v18;
          v19 = a8[1];
          v20 = 1.0;
          v27 = *a8;
          v28 = v19;
          v21 = 0.0;
          if (a7 == 5)
          {
            if (v10)
            {
              if (v10 <= 2)
              {
                v21 = *(&v27 + v11);
                v20 = *(&v27 + v11 + 8);
              }
            }

            else
            {
              v20 = 100.0;
            }
          }

          LOBYTE(v19) = *(a6 + v10);
          *(a5 + 4 * v10) = v21 + (((v20 - v21) * v19) / a9);
        }

        else
        {
          if (result != 5)
          {
LABEL_24:
            _CGHandleAssert("write_out_pixel", 3967, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", a6, a7, a8, result);
          }

          v12 = a8[3];
          v29 = a8[2];
          v30 = v12;
          v13 = a8[5];
          v31 = a8[4];
          v32 = v13;
          v14 = a8[1];
          v15 = 1.0;
          v27 = *a8;
          v28 = v14;
          v16 = 0.0;
          if (a7 == 5)
          {
            if (v10)
            {
              if (v10 <= 2)
              {
                v16 = *(&v27 + v11);
                v15 = *(&v27 + v11 + 8);
              }
            }

            else
            {
              v15 = 100.0;
            }
          }

          LOBYTE(v14) = *(a6 + v10);
          _S1 = v16 + (((v15 - v16) * v14) / a9);
          __asm { FCVT            H1, S1 }

          *(a4 + 2 * v10) = LOWORD(_S1);
        }
      }

      else if (result == 1)
      {
        *(a2 + v10) = *(a6 + v10);
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_24;
        }

        *(a3 + 2 * v10) = *(a6 + v10) | (*(a6 + v10) << 8);
      }

      ++v10;
      v11 += 16;
    }

    while (a10 != v10);
  }

  return result;
}

uint64_t increment_dest_pointer(uint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 3)
  {
    if (result == 4)
    {
      *a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      if (result != 5)
      {
        goto LABEL_10;
      }

      *a4 += a6 & 0xFFFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    if (result != 1)
    {
      if (result == 2)
      {
        *a3 += a6 & 0xFFFFFFFFFFFFFFFELL;
        return result;
      }

LABEL_10:
      _CGHandleAssert("increment_dest_pointer", 4116, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "0", "unhandled component type %u", a6, a7, a8, result);
    }

    *a2 += a6;
  }

  return result;
}

uint64_t convert_src_data_to_float(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 64) ? 3 : 0;
  v6 = *(a2 + 64) ? 128 : 96;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  srcs.data = *a2;
  v9 = vextq_s8(v7, v7, 8uLL);
  *&srcs.height = v9;
  if (!v8)
  {
    v19 = v7.i64[0];
    memcpy(__dst, (a2 + 40), sizeof(__dst));
    v8 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v10, v11, v12, v13, v14, v15, v16) >> 3) * v19;
    v7 = *(a2 + 8);
    v9 = vextq_s8(v7, v7, 8uLL);
  }

  srcs.rowBytes = v8;
  *__dst = *(a1 + 32);
  *&__dst[8] = v9;
  *&__dst[24] = (v7.i64[0] * v6) >> 3;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  if (vImageConvert_AnyToAny(v2, &srcs, __dst, v17, 0x10u))
  {
    return 0xFFFFFFFFLL;
  }

  return v5;
}

BOOL convert_float_to_dst_data(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  srcs.data = *(a1 + 40);
  v5 = *(a3 + 8);
  v6 = vextq_s8(v5, v5, 8uLL);
  *&srcs.height = v6;
  v7 = 12;
  if (a2)
  {
    v7 = 16;
  }

  v8 = v5.i64[0];
  srcs.rowBytes = v7 * v5.i64[0];
  v9 = *(a3 + 24);
  v19.data = *a3;
  *&v19.height = v6;
  if (!v9)
  {
    memcpy(__dst, (a3 + 40), sizeof(__dst));
    v9 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v10, v11, v12, v13, v14, v15, v16) >> 3) * v8;
  }

  v19.rowBytes = v9;
  v17 = *(a1 + 24);
  return v17 && vImageConvert_AnyToAny(v3, &srcs, &v19, v17, 0x10u) == 0;
}

uint64_t (*__convert_using_colorsync_transform_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformConvert");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  convert_using_colorsync_transform_f = v1;
  return result;
}

uint64_t convert_Lab_to_device(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 40);
  if (v8 != *(a3 + 40) || v8 > 5 || ((1 << v8) & 0x36) == 0)
  {
    _CGHandleAssert("convert_Lab_to_device", 3791, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "src_component == dst_component && (src_component == kCGPixelComponent8BitInteger || src_component == kCGPixelComponent16BitInteger || src_component == kCGPixelComponent16BitFloat || src_component == kCGPixelComponent32BitFloat)", "invalid src (%u) dest (%u) component types", a6, a7, a8, *(a2 + 40));
  }

  Type = CGColorSpaceGetType(*(a1 + 24));
  if (Type != 1)
  {
    v15 = Type;
    memcpy(__dst, a3, sizeof(__dst));
    v23 = *(a3 + 8);
    v24 = *(a3 + 16);
    if (!is_mul_ok(v23, v24) || (v25 = v23 * v24, !is_mul_ok(v25, 3uLL)) || (v26 = 3 * v25, v27 = *(a3 + 48) >> 3, !is_mul_ok(v26, v27)) || (v28 = malloc_type_calloc(v26 * v27, 1uLL, 0xB00B3B8AuLL)) == 0)
    {
      CGPostError("%s : Unable to allocate", v16, v17, v18, v19, v20, v21, v22, "convert_Lab_to_device");
      return 0;
    }

    v29 = v28;
    __dst[0] = v28;
    Lab_to_rgb(a2, __dst);
    if (v15 == 2)
    {
      rgb_to_cmyk(__dst, a3);
    }

    else
    {
      if (v15)
      {
        v14 = 0;
        goto LABEL_22;
      }

      rgb_to_gray(__dst, a3);
    }

    v14 = 1;
LABEL_22:
    free(v29);
    return v14;
  }

  Lab_to_rgb(a2, a3);
  return 1;
}

void Lab_to_rgb(uint64_t *a1, uint64_t *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2 + 5;
  v5 = *a2;
  memcpy(__dst, a1 + 5, sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v6, v7, v8, v9, v10, v11, v12);
  v14 = v4;
  v15 = v3;
  memcpy(__dst, v14, sizeof(__dst));
  v23 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v16, v17, v18, v19, v20, v21, v22);
  v25 = a1[2];
  if (v25)
  {
    v26 = 0;
    v27 = a1[6];
    v28 = BitsPerPixel >> 3;
    v29 = v23 >> 3;
    v30 = a1[1];
    do
    {
      if (v30)
      {
        v31 = 0;
        v32 = v5;
        v44 = v15;
        do
        {
          switch(v27)
          {
            case 32:
              pixel_Lab_to_rgb(v32, v15);
              break;
            case 16:
              LOWORD(v24) = *v15;
              v38 = *(v15 + 3) - 128;
              __dst[0] = (LODWORD(v24) * 100.0) / 65535.0;
              __dst[1] = v38;
              __dst[2] = v38;
              pixel_Lab_to_rgb(&v45, __dst);
              v39 = v46;
              v40 = (v45 * 65535.0 + 0.5);
              if (v40 >= 255)
              {
                v40 = 255;
              }

              *v32 = v40 & ~(v40 >> 31);
              v41 = (v39 * 65535.0 + 0.5);
              if (v41 >= 255)
              {
                v41 = 255;
              }

              *(v32 + 2) = v41 & ~(v41 >> 31);
              v24 = v47 * 65535.0 + 0.5;
              v42 = v24;
              if (v24 >= 255)
              {
                v42 = 255;
              }

              *(v32 + 4) = v42 & ~(v42 >> 31);
              break;
            case 8:
              LOBYTE(v24) = *v15;
              v33 = *(v15 + 1) - 128;
              __dst[0] = (LODWORD(v24) * 100.0) / 255.0;
              __dst[1] = v33;
              __dst[2] = v33;
              pixel_Lab_to_rgb(&v45, __dst);
              v34 = v46;
              v35 = (v45 * 255.0 + 0.5);
              if (v35 >= 255)
              {
                v35 = 255;
              }

              *v32 = v35 & ~(v35 >> 31);
              v36 = (v34 * 255.0 + 0.5);
              if (v36 >= 255)
              {
                v36 = 255;
              }

              *(v32 + 1) = v36 & ~(v36 >> 31);
              v24 = v47 * 255.0 + 0.5;
              v37 = v24;
              if (v24 >= 255)
              {
                v37 = 255;
              }

              *(v32 + 2) = v37 & ~(v37 >> 31);
              break;
          }

          v15 += v28;
          v32 += v29;
          ++v31;
          v30 = a1[1];
        }

        while (v31 < v30);
        v25 = a1[2];
        v15 = v44;
      }

      v15 += a1[3];
      v5 += a2[3];
      ++v26;
    }

    while (v26 < v25);
  }
}

unint64_t rgb_to_gray(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2 + 5;
  v6 = *a2;
  memcpy(v39, a1 + 5, sizeof(v39));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(v39, v7, v8, v9, v10, v11, v12, v13);
  memcpy(v39, v5, sizeof(v39));
  result = CGBitmapPixelInfoGetBitsPerPixel(v39, v15, v16, v17, v18, v19, v20, v21);
  v25 = a1[2];
  if (v25)
  {
    v26 = 0;
    v27 = a1[6];
    v28 = a1[1];
    v29 = v28;
    do
    {
      if (v29)
      {
        v30 = 0;
        v31 = (v4 + 4);
        v32 = v6;
        do
        {
          switch(v27)
          {
            case 32:
              v24 = v31[1];
              v23 = *v31 * 0.59 + *(v31 - 1) * 0.3 + v24 * 0.11;
              *&v23 = v23;
              if (*&v23 <= 1.0)
              {
                *&v24 = *&v23;
              }

              else
              {
                *&v24 = 1.0;
              }

              if (*&v23 >= 0.0)
              {
                *&v23 = *&v24;
              }

              else
              {
                *&v23 = 0.0;
              }

              *v32 = LODWORD(v23);
              break;
            case 16:
              LOWORD(v23) = *(v31 - 2);
              LOWORD(v24) = *(v31 - 1);
              *&v36 = *&v24 * 0.59;
              v37 = *&v36 + *&v23 * 0.3;
              LOWORD(v36) = *v31;
              v24 = v36;
              v23 = v37 + v24 * 0.11;
              v38 = v23;
              if (v23 >= 255)
              {
                v38 = 255;
              }

              *v32 = v38 & ~(v38 >> 31);
              break;
            case 8:
              LOBYTE(v23) = *(v31 - 4);
              LOBYTE(v24) = *(v31 - 3);
              *&v33 = *&v24 * 0.59;
              v34 = *&v33 + *&v23 * 0.3;
              LOBYTE(v33) = *(v31 - 2);
              v24 = v33;
              v23 = v34 + v24 * 0.11;
              v35 = v23;
              if (v23 >= 255)
              {
                v35 = 255;
              }

              *v32 = v35 & ~(v35 >> 31);
              v28 = a1[1];
              break;
          }

          v32 = (v32 + (result >> 3));
          ++v30;
          v31 = (v31 + (BitsPerPixel >> 3));
        }

        while (v30 < v28);
        v25 = a1[2];
        v29 = v28;
      }

      v4 += a1[3];
      v6 = (v6 + a2[3]);
      ++v26;
    }

    while (v26 < v25);
  }

  return result;
}

unint64_t rgb_to_cmyk(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a2 + 5;
  v6 = *a2;
  memcpy(v63, a1 + 5, sizeof(v63));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(v63, v7, v8, v9, v10, v11, v12, v13);
  memcpy(v63, v5, sizeof(v63));
  result = CGBitmapPixelInfoGetBitsPerPixel(v63, v15, v16, v17, v18, v19, v20, v21);
  v23 = a1[2];
  if (v23)
  {
    v24 = 0;
    v25 = a1[6];
    v26 = result >> 3;
    v27 = a1[1];
    v28 = v27;
    do
    {
      if (v28)
      {
        v29 = 0;
        v30 = (v4 + 4);
        v31 = (v6 + 12);
        do
        {
          switch(v25)
          {
            case 32:
              v41 = 1.0 - *(v30 - 1);
              v42 = 1.0 - *v30;
              v43 = 1.0 - v30[1];
              if (v42 <= v43)
              {
                v44 = 1.0 - *v30;
              }

              else
              {
                v44 = 1.0 - v30[1];
              }

              if (v41 <= v43)
              {
                v43 = 1.0 - *(v30 - 1);
              }

              if (v41 <= v42)
              {
                v45 = v43;
              }

              else
              {
                v45 = v44;
              }

              if (v41 <= 1.0)
              {
                v46 = 1.0 - *(v30 - 1);
              }

              else
              {
                v46 = 1.0;
              }

              if (v41 >= 0.0)
              {
                v47 = v46;
              }

              else
              {
                v47 = 0.0;
              }

              v48 = v47 - v45;
              if (v48 <= 1.0)
              {
                v49 = v48;
              }

              else
              {
                v49 = 1.0;
              }

              if (v48 >= 0.0)
              {
                v50 = v49;
              }

              else
              {
                v50 = 0.0;
              }

              *(v31 - 3) = v50;
              v51 = 1.0 - *v30;
              if (v51 <= 1.0)
              {
                v52 = 1.0 - *v30;
              }

              else
              {
                v52 = 1.0;
              }

              if (v51 >= 0.0)
              {
                v53 = v52;
              }

              else
              {
                v53 = 0.0;
              }

              v54 = v53 - v45;
              if (v54 <= 1.0)
              {
                v55 = v54;
              }

              else
              {
                v55 = 1.0;
              }

              if (v54 >= 0.0)
              {
                v56 = v55;
              }

              else
              {
                v56 = 0.0;
              }

              *(v31 - 2) = v56;
              v57 = 1.0 - v30[1];
              if (v57 <= 1.0)
              {
                v58 = 1.0 - v30[1];
              }

              else
              {
                v58 = 1.0;
              }

              if (v57 >= 0.0)
              {
                v59 = v58;
              }

              else
              {
                v59 = 0.0;
              }

              v60 = v59 - v45;
              if (v60 <= 1.0)
              {
                v61 = v60;
              }

              else
              {
                v61 = 1.0;
              }

              if (v60 >= 0.0)
              {
                v62 = v61;
              }

              else
              {
                v62 = 0.0;
              }

              *(v31 - 1) = v62;
              *v31 = v45;
              break;
            case 16:
              v36 = *(v30 - 2);
              v37 = *(v30 - 1);
              if (v36 > v37)
              {
                v37 = *(v30 - 2);
              }

              if (v37 <= *v30)
              {
                LOWORD(v37) = *v30;
              }

              v38 = ~v37;
              if (v36 <= 0xFF00)
              {
                LOBYTE(v36) = 0;
              }

              *(v31 - 6) = (~v36 - v38) & ~((~v36 - v38) >> 31);
              v39 = *(v30 - 1);
              if (v39 <= 0xFF00)
              {
                LOBYTE(v39) = 0;
              }

              *(v31 - 5) = (~v39 - v38) & ~((~v39 - v38) >> 31);
              v40 = *v30;
              if (v40 <= 0xFF00)
              {
                LOBYTE(v40) = 0;
              }

              result = (~v40 - v38) & ~((~v40 - v38) >> 31);
              *(v31 - 4) = result;
              *(v31 - 3) = v38;
              break;
            case 8:
              v32 = *(v30 - 4);
              v33 = *(v30 - 3);
              if (v32 > v33)
              {
                v33 = *(v30 - 4);
              }

              if (v33 <= *(v30 - 2))
              {
                v33 = *(v30 - 2);
              }

              result = ~v33;
              *(v31 - 12) = (~v32 - result) & ~(((v32 ^ 0xFF) - result) >> 31);
              v34 = (*(v30 - 3) ^ 0xFF) - result;
              *(v31 - 11) = v34 & ~(v34 >> 31);
              v35 = (*(v30 - 2) ^ 0xFF) - result;
              *(v31 - 10) = v35 & ~(v35 >> 31);
              *(v31 - 9) = result;
              v27 = a1[1];
              break;
          }

          ++v29;
          v30 = (v30 + (BitsPerPixel >> 3));
          v31 = (v31 + v26);
        }

        while (v29 < v27);
        v23 = a1[2];
        v28 = v27;
      }

      v4 += a1[3];
      v6 += a2[3];
      ++v24;
    }

    while (v24 < v23);
  }

  return result;
}

void pixel_Lab_to_rgb(uint64_t a1, float *a2)
{
  v3 = (*a2 + 16.0) / 116.0;
  v4 = v3 + (a2[1] * 0.002);
  v5 = v3 + (a2[2] * -0.005);
  if (v4 <= 0.0008856)
  {
    v6 = (v4 + -0.13793) * 0.12842;
  }

  else
  {
    v6 = v4 * (v4 * v4);
  }

  if (v3 <= 0.0008856)
  {
    v7 = (v3 + -0.13793) * 0.12842;
  }

  else
  {
    v7 = (v3 * v3) * v3;
  }

  if (v5 <= 0.0008856)
  {
    v8 = (v5 + -0.13793) * 0.12842;
  }

  else
  {
    v8 = v5 * (v5 * v5);
  }

  v9 = v6 * 0.9642;
  v10 = v8 * 0.8249;
  v11 = ((v7 * -0.22899) + (v9 * 0.071983)) + (v10 * 1.4054);
  v12 = vmla_n_f32(vmla_n_f32(vmul_n_f32(0x3FF548AABFCF06B3, v7), 0xBF7A91CE4048954ALL, v9), 0x3D0907CEBEFB344DLL, v10);
  v22 = v12.f32[0];
  v23 = powf(v12.f32[1], 0.45455);
  v13.f32[0] = powf(v22, 0.45455);
  v13.f32[1] = v23;
  __asm { FMOV            V2.2S, #1.0 }

  *a1 = vbic_s8(vbsl_s8(vcgt_f32(v13, _D2), _D2, v13), vcltz_f32(v13));
  v19 = powf(v11, 0.45455);
  v20 = 1.0;
  if (v19 <= 1.0)
  {
    v20 = v19;
  }

  _NF = v19 < 0.0;
  v21 = 0.0;
  if (!_NF)
  {
    v21 = v20;
  }

  *(a1 + 8) = v21;
}

double null_buffer_converter_info@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t convert_device(uint64_t a1, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3, uint64_t a4)
{
  Type = CGColorSpaceGetType(*(a1 + 24));
  v9 = CGColorSpaceGetType(*(a1 + 32));
  if (v9 >= 3)
  {
    _CGHandleAssert("convert_device", 3678, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "(int)srcType >= kCGColorSpaceDeviceGray && (int)srcType <= kCGColorSpaceDeviceCMYK", "invalid src colorspace type %d", v11, v12, v13, v9);
  }

  if (Type >= 3)
  {
    _CGHandleAssert("convert_device", 3679, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "(int)dstType >= kCGColorSpaceDeviceGray && (int)dstType <= kCGColorSpaceDeviceCMYK", "invalid dest colorspace type %d", v11, v12, v13, Type);
  }

  v14 = *(a4 + 48);
  v17[2] = *(a4 + 32);
  v17[3] = v14;
  v17[4] = *(a4 + 64);
  v18 = *(a4 + 80);
  v15 = *(a4 + 16);
  v17[0] = *a4;
  v17[1] = v15;
  return convert_using_vImageConverter(a1, a2, a3, v17, v10, v11, v12, v13);
}

char *create_gray_to_RGBX8_texture(const __CFData *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc_type_calloc(4 * a2, 1uLL, 0xCCE7D5EBuLL);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (v2)
    {
      v6 = v4 + 3;
      v7 = (BytePtr + 4);
      do
      {
        v8 = (*(v7 - 2) + 128) >> 8;
        if (v8 >= 0xFF)
        {
          LOBYTE(v8) = -1;
        }

        *(v6 - 3) = v8;
        v9 = (*(v7 - 1) + 128) >> 8;
        if (v9 >= 0xFF)
        {
          LOBYTE(v9) = -1;
        }

        *(v6 - 2) = v9;
        v10 = *v7;
        v7 += 3;
        v11 = (v10 + 128) >> 8;
        if (v11 >= 0xFF)
        {
          LOBYTE(v11) = -1;
        }

        *(v6 - 1) = v11;
        *v6 = -1;
        v6 += 4;
        --v2;
      }

      while (v2);
    }
  }

  return v4;
}

char *create_RGB_to_RGBX8_texture(const __CFData *a1, uint64_t a2)
{
  v4 = a2 * a2;
  v5 = malloc_type_calloc(4 * a2 * a2 * a2, 1uLL, 0x3D2C2725uLL);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (a2)
    {
      v7 = 0;
      v8 = v5 + 3;
      v9 = BytePtr + 4;
      do
      {
        v10 = 0;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v11;
          v14 = v12;
          v15 = a2;
          do
          {
            v16 = (*(v13 - 2) + 128) >> 8;
            if (v16 >= 0xFF)
            {
              LOBYTE(v16) = -1;
            }

            *(v14 - 3) = v16;
            v17 = (*(v13 - 1) + 128) >> 8;
            if (v17 >= 0xFF)
            {
              LOBYTE(v17) = -1;
            }

            *(v14 - 2) = v17;
            v18 = (*v13 + 128) >> 8;
            if (v18 >= 0xFF)
            {
              LOBYTE(v18) = -1;
            }

            *(v14 - 1) = v18;
            *v14 = -1;
            v14 += 4;
            v13 += 6 * v4;
            --v15;
          }

          while (v15);
          ++v10;
          v12 += 4 * a2;
          v11 += 6 * a2;
        }

        while (v10 != a2);
        ++v7;
        v8 += 4 * v4;
        v9 += 6;
      }

      while (v7 != a2);
    }
  }

  return v5;
}

char *create_RGB_to_RGBX16_texture(const __CFData *a1, uint64_t a2)
{
  v4 = a2 * a2;
  v5 = malloc_type_calloc(8 * a2 * a2 * a2, 1uLL, 0x160C2EDCuLL);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (a2)
    {
      v7 = 0;
      v8 = v5 + 4;
      v9 = BytePtr + 4;
      do
      {
        v10 = 0;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v11;
          v14 = v12;
          v15 = a2;
          do
          {
            *(v14 - 2) = *(v13 - 2);
            *(v14 - 1) = *(v13 - 1);
            *v14 = *v13;
            v14[1] = -1;
            v14 += 4;
            v13 += 6 * v4;
            --v15;
          }

          while (v15);
          ++v10;
          v12 += 4 * a2;
          v11 += 6 * a2;
        }

        while (v10 != a2);
        ++v7;
        v8 += 8 * v4;
        v9 += 6;
      }

      while (v7 != a2);
    }
  }

  return v5;
}

int8x8_t *create_RGB_to_RGBXF_texture(const __CFData *a1, uint64_t a2)
{
  v4 = a2 * a2;
  v5 = malloc_type_calloc(16 * a2 * a2 * a2, 1uLL, 0xFCBA3C72uLL);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (a2)
    {
      v7 = 0;
      v8 = BytePtr + 4;
      v9 = v5 + 1;
      v10 = vdup_n_s32(0x477FFF00u);
      __asm { FMOV            V1.2S, #1.0 }

      do
      {
        v16 = 0;
        v17 = v9;
        v18 = v8;
        do
        {
          v19 = v17;
          v20 = v18;
          v21 = a2;
          do
          {
            v22.i32[0] = *(v20 - 2);
            v22.i32[1] = *(v20 - 1);
            v23 = vdiv_f32(vcvt_f32_u32(v22), v10);
            v24 = vbsl_s8(vcgt_f32(v23, _D1), _D1, v23);
            v19[-1] = v24;
            v24.i16[0] = *v20;
            v25 = v24.u32[0] / 65535.0;
            if (v25 > 1.0)
            {
              v25 = 1.0;
            }

            *v19->i32 = v25;
            v19->i32[1] = 1065353216;
            v20 += 3 * v4;
            v19 += 2;
            --v21;
          }

          while (v21);
          ++v16;
          v18 += 3 * a2;
          v17 += 2 * a2;
        }

        while (v16 != a2);
        ++v7;
        v8 += 6;
        v9 += 2 * v4;
      }

      while (v7 != a2);
    }
  }

  return v5;
}

uint64_t (*__create_calibrated_lookup_texture_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCopyProperty");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  create_calibrated_lookup_texture_f = v1;
  return result;
}

uint64_t (*__create_calibrated_parametric_data_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCopyProperty");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  create_calibrated_parametric_data_f = v1;
  return result;
}

uint64_t insertSpacesBefore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = rint((v6 - *(a4 + 16)) / *(a4 + 8));
  [*a4 setSpaces:v7 & ~(v7 >> 63) beforeWordAtIndex:a1];
  *(a4 + 16) = v6 + *(a2 + 32);
  return 1;
}

void *CGPDFSourceCreateForJBIG2(const void *a1, uint64_t a2, uint64_t a3)
{
  result = CGPDFSourceCreate(a1, a2, a3);
  if (result)
  {
    v4 = result;
    jbig2_filter = pdf_source_create_jbig2_filter(result, 0, 0);
    CFRelease(v4);
    return jbig2_filter;
  }

  return result;
}

_BYTE *pdf_source_create_jbig2_filter(const void *a1, CGPDFStream *a2, CGPDFDictionary *a3)
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040169B3756uLL);
  if (result)
  {
    v7 = result;
    value = 0;
    v18 = 0;
    result[24] = 0;
    if (a1)
    {
      CFRetain(a1);
    }

    *v7 = a1;
    if (CGPDFDictionaryGetStream(a3, "JBIG2Globals", &value))
    {
      if (value)
      {
        Mutable = CFSetCreateMutable(0, 0, 0);
        v17 = a2;
        if (a2)
        {
          while (!CFSetContainsValue(Mutable, a2))
          {
            CFSetAddValue(Mutable, v17);
            if (v17)
            {
              v9 = *(v17 + 6);
            }

            else
            {
              v9 = 0;
            }

            dict = 0;
            if (!CGPDFDictionaryGetDictionary(v9, "DecodeParms", &dict) && !CGPDFDictionaryGetDictionary(v9, "DP", &dict) || !dict || !CGPDFDictionaryGetStream(dict, "JBIG2Globals", &v17))
            {
              v17 = 0;
              goto LABEL_28;
            }

            a2 = v17;
            if (!v17)
            {
              goto LABEL_28;
            }
          }

          pdf_error("JBIG2Filter: JBIG2Globals reference loop");
          goto LABEL_32;
        }

LABEL_28:
        CFRelease(Mutable);
        v15 = CGPDFStreamCreateFilterChain(value, &v18);
        *(v7 + 1) = v15;
        if (!v15 || v18)
        {
LABEL_32:
          jbig2_filter_finalize(v7);
          return 0;
        }

        v10 = v15;
LABEL_19:
        v11 = *v7;
        if ((didLoadVTable & 1) == 0)
        {
          pthread_once(&loadVTable_once, doLoadVTable);
        }

        if (jbig2_vtable && (v12 = *(jbig2_vtable + 8)) != 0)
        {
          v13 = v12(v11, v10);
        }

        else
        {
          v13 = 0;
        }

        *(v7 + 2) = v13;
        result = CGPDFSourceCreateInternal(0x1000uLL);
        if (result)
        {
          result[209] = 1;
          v14 = *&off_1EF238400;
          *(result + 3) = pdf_source_create_jbig2_filter_callbacks;
          *(result + 4) = v14;
          *(result + 10) = v7;
          return result;
        }

        goto LABEL_32;
      }
    }

    else
    {
      value = 0;
    }

    v10 = 0;
    *(v7 + 1) = 0;
    goto LABEL_19;
  }

  return result;
}

void jbig2_filter_finalize(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if ((didLoadVTable & 1) == 0)
    {
      pthread_once(&loadVTable_once, doLoadVTable);
    }

    if (jbig2_vtable)
    {
      v3 = *(jbig2_vtable + 16);
      if (v3)
      {
        v3(v2);
      }
    }

    v4 = a1[1];
    if (v4)
    {
      CFRelease(v4);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t jbig2_filter_refill(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if ((didLoadVTable & 1) == 0)
  {
    pthread_once(&loadVTable_once, doLoadVTable);
  }

  if (!jbig2_vtable || (v8 = *(jbig2_vtable + 24)) == 0 || (result = v8(v7, a2, a3)) == 0)
  {
    result = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t jbig2_filter_rewind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 24) = 0;
  CGPDFSourceRewind(*a1, a2, a3, a4, a5, a6, a7, a8);
  result = CGPDFSourceRewind(*(a1 + 8), v9, v10, v11, v12, v13, v14, v15);
  v17 = *(a1 + 16);
  if ((didLoadVTable & 1) == 0)
  {
    result = pthread_once(&loadVTable_once, doLoadVTable);
  }

  if (jbig2_vtable)
  {
    v18 = *(jbig2_vtable + 32);
    if (v18)
    {

      return v18(v17);
    }
  }

  return result;
}

void rips_release(void *a1)
{
  v1 = *(a1 + 2) - 1;
  *(a1 + 2) = v1;
  if (!v1)
  {
    free(a1);
  }
}

uint64_t CGPDFStringCreateWithCFString(const __CFString *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v11[0] = 0;
  v12.location = 0;
  v12.length = Length;
  v4 = 0;
  if (CFStringGetBytes(a1, v12, 0x10000100u, 0, 1u, 0, 0, v11) >= Length)
  {
    v5 = MEMORY[0x1EEE9AC00](v11[0] + 2, v3);
    v8 = v11 - v7;
    if (v5 == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11 - v7;
    }

    if (v6 >= 0x402)
    {
      v9 = malloc_type_malloc(v5, 0x983DDC52uLL);
    }

    *v9 = -2;
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a1, v13, 0x10000100u, 0, 1u, v9 + 2, v11[0], 0);
    v4 = CGPDFStringCreate(0, v9, 2 * Length + 2, 1, 1);
    if (v9 != v8)
    {
      free(v9);
    }
  }

  return v4;
}

CFTypeRef CGPDFStringRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGPDFStringRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t CGPDFStringGetLength(size_t string)
{
  if (string)
  {
    v1 = string;
    if (*(string + 24))
    {
      decrypt_string(string);
    }

    return *(v1 + 72);
  }

  return string;
}

void decrypt_string(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 64) & 1) == 0 && (*(a1 + 32) | *(a1 + 40) || *(a1 + 48) | *(a1 + 56)))
  {
    v2 = *(*(a1 + 24) + 40);
    if (!v2)
    {
      goto LABEL_25;
    }

    v3 = *(a1 + 48) | *(a1 + 56);
    v4 = v3 ? *(a1 + 48) : *(a1 + 32);
    v5 = v3 ? *(a1 + 56) : *(a1 + 40);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_25;
    }

    if (*(v6 + 184) != 1)
    {
      goto LABEL_25;
    }

    v7 = *(v2 + 40);
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = a1 + 80;
    v9 = *(a1 + 72);
    if ((*(v7 + 12) & 1) == 0)
    {
      v19 = 0;
      if (!get_object_key(v7, v4, v5, v20, &v19))
      {
        goto LABEL_25;
      }

      v10 = *(v7 + 8);
      if ((v10 - 2) >= 2)
      {
        if (v10 != 1)
        {
          goto LABEL_25;
        }

        RC4 = CGCryptorCreateRC4(v20, v19);
        if (!RC4)
        {
          goto LABEL_25;
        }

        v18 = RC4;
        CGCryptorProcessBytes(RC4, (a1 + 80), v9, (a1 + 80), v9, 0);
        CGCryptorRelease(v18);
      }

      else
      {
        v11 = pdf_aes_create(v20, v19);
        if (!v11)
        {
          goto LABEL_25;
        }

        v12 = v11;
        v13 = pdf_aes_process_buffer(v11, (a1 + 80), (a1 + 80), v9);
        pdf_aes_free(v12);
        if (!v13)
        {
          goto LABEL_25;
        }

        v14 = *(v8 + v9 - 1);
        v15 = v9 >= v14;
        v16 = v9 - v14;
        if (v15)
        {
          v9 = v16;
        }

        else
        {
          pdf_error("invalid AES padding.");
        }

        if (v9 > 0xF)
        {
          v9 -= 16;
          memmove((a1 + 80), (a1 + 96), v9);
        }

        else
        {
          pdf_error("invalid AES padding.");
          v9 = 0;
        }
      }
    }

    *(a1 + 72) = v9;
    *(v8 + v9) = 0;
LABEL_25:
    *(a1 + 64) |= 1u;
  }

  os_unfair_lock_unlock((a1 + 16));
}

const unsigned __int8 *__cdecl CGPDFStringGetBytePtr(const unsigned __int8 *string)
{
  if (string)
  {
    v1 = string;
    if (*(string + 3))
    {
      decrypt_string(string);
    }

    return v1 + 80;
  }

  return string;
}

uint64_t CGPDFStringPrint(uint64_t result, FILE *a2)
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = *MEMORY[0x1E69E9848];
    }

    if (*(result + 24))
    {
      decrypt_string(result);
      if (*(v2 + 24))
      {
        decrypt_string(v2);
      }
    }

    v4 = *(v2 + 72);
    fputc(40, v3);
    if (v4)
    {
      v5 = (v2 + 80);
      v6 = MEMORY[0x1E69E9830];
      do
      {
        v7 = *v5++;
        v8 = v7;
        if (v7 < 0)
        {
          if (__maskrune(v8, 0x40000uLL))
          {
LABEL_12:
            if (v8 - 40 <= 0x34 && ((1 << (v8 - 40)) & 0x10000000000003) != 0)
            {
              fputc(92, v3);
            }

            fputc(v8, v3);
            goto LABEL_20;
          }
        }

        else if ((*(v6 + 4 * v8 + 60) & 0x40000) != 0)
        {
          goto LABEL_12;
        }

        fprintf(v3, "\\%03o", v8);
LABEL_20:
        --v4;
      }

      while (v4);
    }

    return fputc(41, v3);
  }

  return result;
}

void Type1CSubset::emit_font_file(Type1CSubset *this, uint64_t a2)
{
  embedded_font_data = Type1Subset::create_embedded_font_data(this);
  if (embedded_font_data)
  {
    v5 = embedded_font_data;
    v6 = **(*(this + 1) + 8);
    v7 = PDFStreamCreateWithObjectNumber(v6, a2);
    PDFDocumentBeginObject(*v7, v7[1], v8, v9, v10, v11, v12, v13);
    PDFDocumentPrintf(*v7, "<<", v14, v15, v16, v17, v18, v19, v28);
    PDFDocumentPrintf(v6, "/Subtype /Type1C", v20, v21, v22, v23, v24, v25, v29);
    PDFStreamBeginData(v7);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    CGDataConsumerPutBytes(v7[3], BytePtr, Length);
    PDFStreamEndData(v7);
    PDFStreamEnd(v7);
    PDFStreamRelease(v7);

    CFRelease(v5);
  }
}

void Type1CSubset::~Type1CSubset(Type1CSubset *this)
{
  FontSubset::~FontSubset(this);

  JUMPOUT(0x1865EE610);
}

void FontSubset::~FontSubset(FontSubset *this)
{
  *this = &unk_1EF244530;
  std::__tree<unsigned long>::destroy(*(this + 15));
  std::__tree<unsigned long>::destroy(*(this + 12));
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

CFMutableArrayRef CGPDFDocumentCopyOutputIntents(__CFArray *a1)
{
  Mutable = a1;
  if (a1)
  {
    dict = 0;
    value = 0;
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    catalog = pdf_document_get_catalog(**(*(Mutable + 2) + 16));
    if (CGPDFDictionaryGetArray(catalog, "OutputIntents", &value) && value && (v3 = *(value + 3) - *(value + 2)) != 0)
    {
      v4 = v3 >> 3;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v5 = 0;
      v6 = MEMORY[0x1E695E9D8];
      v7 = MEMORY[0x1E695E9E8];
      do
      {
        if (CGPDFArrayGetDictionary(value, v5, &dict))
        {
          v8 = CFDictionaryCreateMutable(0, 0, v6, v7);
          CGPDFDictionaryApplyFunction(dict, build_output_intent, v8);
          CFArrayAppendValue(Mutable, v8);
          CFRelease(v8);
        }

        ++v5;
      }

      while (v4 != v5);
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void build_output_intent(const char *a1, uint64_t a2, void *cf)
{
  if (!a2)
  {
    return;
  }

  v5 = *(a2 + 8);
  if (v5 == 5)
  {
    v7 = *(a2 + 32);
    v8 = CFGetAllocator(cf);
    v6 = CFStringCreateWithCString(v8, v7, 0x600u);
LABEL_6:
    v9 = v6;
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5 == 6)
  {
    v6 = CGPDFStringCopyTextString(*(a2 + 32));
    goto LABEL_6;
  }

  format = CGPDFDataFormatRaw;
  if (v5 == 9)
  {
    v10 = CGPDFStreamCopyData(*(a2 + 32), &format);
    if (v10)
    {
      v11 = v10;
      v9 = format ? 0 : CGColorSpaceCreateWithICCData(v10);
      CFRelease(v11);
      if (v9)
      {
LABEL_13:
        v12 = CFGetAllocator(cf);
        v13 = CFStringCreateWithCString(v12, a1, 0x600u);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(cf, v13, v9);
          CFRelease(v14);
        }

        CFRelease(v9);
      }
    }
  }
}

CGFloat *CGPDFFunctionCreateFunction(CGFloat *result)
{
  if (result)
  {
    value = 0;
    v1 = *(result + 2);
    if (v1 == 9)
    {
      v2 = *(result + 4);
      if (!v2)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v3 = (v2 + 48);
    }

    else
    {
      if (v1 != 8)
      {
        pdf_error("invalid function: not a dictionary or stream.");
        return 0;
      }

      v2 = 0;
      v3 = (result + 4);
    }

    v4 = *v3;
LABEL_8:
    if (CGPDFDictionaryGetInteger(v4, "FunctionType", &value))
    {
      if (value <= 2)
      {
        if (value)
        {
          if (value == 2)
          {
            if (!v2)
            {
              return cg_function_type2_create(v4);
            }

LABEL_55:
            pdf_error("invalid function: not a dictionary.");
            return 0;
          }

LABEL_32:
          return 0;
        }

        if (!v2)
        {
          pdf_error("invalid Type 0 function: not a stream.");
          return 0;
        }

        result = malloc_type_calloc(1uLL, 0x58uLL, 0x10900401C976371uLL);
        if (!result)
        {
          return result;
        }

        v20 = result;
        v58[0] = 0;
        v56 = 0;
        v21 = *(v2 + 48);
        v22 = pdf_dictionary_copy_numbers(v21, "Domain", &v56);
        *(v20 + 1) = v22;
        if (!v22 || !v56 || (v56 & 1) != 0)
        {
          goto LABEL_100;
        }

        *v20 = v56 >> 1;
        v23 = pdf_dictionary_copy_numbers(v21, "Range", &v56);
        *(v20 + 3) = v23;
        if (!v23 || !v56 || (v56 & 1) != 0)
        {
          goto LABEL_100;
        }

        *(v20 + 2) = v56 >> 1;
        v24 = malloc_type_malloc(8 * *v20, 0x100004000313F17uLL);
        *(v20 + 6) = v24;
        if (!v24)
        {
LABEL_100:
          type0_release(v20);
          return 0;
        }

        if (!CGPDFDictionaryGetIntegers(v21, "Size", v24, *v20))
        {
          goto LABEL_100;
        }

        v25 = *v20;
        if (*v20)
        {
          v26 = *(v20 + 6);
          while (1)
          {
            v28 = *v26++;
            v27 = v28;
            if (v28 <= 0)
            {
              pdf_error("invalid function: every domain of a sampling function must have at least one sample.");
              goto LABEL_100;
            }

            if (v27 > 9.00719925e15)
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_48;
            }
          }

          pdf_error("invalid function: sample count is out of range.");
          goto LABEL_100;
        }

LABEL_48:
        if (!CGPDFDictionaryGetInteger(v21, "BitsPerSample", v58) || (v58[0] - 1) > 0x1F || (v29 = vcnt_s8(v58[0]), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] >= 2uLL))
        {
          goto LABEL_100;
        }

        v20[7] = *v58;
        if (CGPDFDictionaryGetInteger(v21, "Order", v58))
        {
          v30 = v58[0];
          if ((v58[0] & 0xFFFFFFFFFFFFFFFDLL) != 1)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v30 = 1;
        }

        *(v20 + 8) = v30;
        v34 = *v20;
        if (*v20)
        {
          v35 = *(v20 + 6);
          v36 = 1.0;
          do
          {
            v37 = *v35++;
            v36 = v36 * v37;
            --v34;
          }

          while (v34);
          v38 = v36 * 0.125;
        }

        else
        {
          v38 = 0.125;
        }

        v39 = ceil(v38 * *(v20 + 7) * *(v20 + 2));
        if (v39 > 1.12589991e15)
        {
          pdf_error("invalid function: arithmetic overflow.");
          goto LABEL_100;
        }

        v54 = v39;
        v40 = malloc_type_malloc(v39, 0x8CAB7267uLL);
        *(v20 + 10) = v40;
        if (!v40)
        {
          goto LABEL_100;
        }

        if (CGPDFStreamGetData(v2, v40, v54) != v54)
        {
          pdf_error("invalid function: failed to read %zu bytes.");
          goto LABEL_100;
        }

        *(v20 + 9) = v54;
        v41 = malloc_type_malloc(16 * *v20, 0x100004000313F17uLL);
        *(v20 + 5) = v41;
        if (!v41)
        {
          goto LABEL_100;
        }

        if (!CGPDFDictionaryGetNumbers(v21, "Encode", v41, 2 * *v20))
        {
          v42 = *v20;
          if (*v20)
          {
            v43 = *(v20 + 6);
            v44 = (*(v20 + 5) + 8);
            do
            {
              *(v44 - 1) = 0.0;
              v45 = *v43++;
              *v44 = (v45 - 1);
              v44 += 2;
              --v42;
            }

            while (v42);
          }
        }

        v46 = malloc_type_malloc(16 * *(v20 + 2), 0x100004000313F17uLL);
        *(v20 + 4) = v46;
        if (!v46)
        {
          goto LABEL_100;
        }

        Numbers = CGPDFDictionaryGetNumbers(v21, "Decode", v46, 2 * *(v20 + 2));
        v48 = *(v20 + 2);
        if (Numbers)
        {
          v49 = *(v20 + 3);
        }

        else
        {
          v49 = *(v20 + 3);
          if (v48)
          {
            v50 = (*(v20 + 4) + 8);
            v51 = (v49 + 1);
            v52 = *(v20 + 2);
            do
            {
              *(v50 - 1) = *(v51 - 1);
              v53 = *v51;
              v51 += 2;
              *v50 = v53;
              v50 += 2;
              --v52;
            }

            while (v52);
          }
        }

        result = CGFunctionCreate(v20, *v20, *(v20 + 1), v48, v49, &type0_callbacks);
        if (!result)
        {
          pdf_error("unable to create Type 0 function.");
          goto LABEL_100;
        }

        v33 = copy_pdf_description_21139;
LABEL_76:
        *(result + 11) = v33;
        return result;
      }

      if (value == 3)
      {
        if (!v2)
        {
          return cg_function_type3_create(v4);
        }

        goto LABEL_55;
      }

      if (value != 4)
      {
        goto LABEL_32;
      }

      if (!v2)
      {
        pdf_error("invalid Type 4 function: not a stream.");
        return 0;
      }

      result = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00400F0CD34FuLL);
      if (!result)
      {
        return result;
      }

      v5 = result;
      v56 = 0;
      v6 = *(v2 + 48);
      v7 = pdf_dictionary_copy_numbers(v6, "Domain", &v56);
      *(v5 + 8) = v7;
      if (!v7 || !v56 || (v56 & 1) != 0)
      {
        goto LABEL_64;
      }

      *v5 = v56 >> 1;
      v8 = pdf_dictionary_copy_numbers(v6, "Range", &v56);
      *(v5 + 24) = v8;
      if (!v8 || !v56 || (v56 & 1) != 0)
      {
        goto LABEL_64;
      }

      *(v5 + 16) = v56 >> 1;
      v57 = 0;
      v9 = CGPDFStreamCreateFilterChain(v2, &v57);
      v10 = v9;
      if (!v9 || v57)
      {
        if (!v9)
        {
LABEL_68:
          *(v5 + 32) = 0;
          goto LABEL_64;
        }
      }

      else
      {
        v11 = malloc_type_malloc(0x20uLL, 0x103004057E7F81CuLL);
        if (v11)
        {
          v18 = v11;
          v11[2] = 0;
          v11[3] = 0;
          *v11 = v10;
          v11[1] = 0;
          if (type4_lexer_scan(v11, v58, v12, v13, v14, v15, v16, v17) == 123)
          {
            v19 = scan(v18);
          }

          else
          {
            v19 = 0;
          }

          free(v18[1]);
          free(v18);
          CFRelease(v10);
          *(v5 + 32) = v19;
          if (v19)
          {
            v31 = evaluation_create(v5);
            *(v5 + 48) = v31;
            if (v31)
            {
              v32 = evaluation_create(v5);
              *(v5 + 40) = v32;
              if (v32)
              {
                result = CGFunctionCreate(v5, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), &type4_callbacks);
                if (result)
                {
                  v33 = copy_pdf_description;
                  goto LABEL_76;
                }

                pdf_error("unable to create Type 4 function.");
              }
            }
          }

LABEL_64:
          type4_release(v5);
          return 0;
        }
      }

      CFRelease(v10);
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

CGPDFReal *pdf_dictionary_copy_numbers(CGPDFDictionary *a1, const char *a2, uint64_t *a3)
{
  array = 0;
  value = 0.0;
  if (!CGPDFDictionaryGetArray(a1, a2, &array))
  {
    return 0;
  }

  if (!array)
  {
    v4 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = (*(array + 3) - *(array + 2)) >> 3;
  if (a3)
  {
LABEL_4:
    *a3 = v4;
  }

LABEL_5:
  v5 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
  __CFSetLastAllocationEventName();
  if (v5 && v4)
  {
    v6 = 0;
    while (CGPDFArrayGetNumber(array, v6, &value))
    {
      v5[v6++] = value;
      if (v4 == v6)
      {
        return v5;
      }
    }

    free(v5);
    return 0;
  }

  return v5;
}

double *CGPDFTextStyleCreate(const void *a1, const void *a2, const void *a3, double a4, double a5, double a6)
{
  v6 = 0;
  if (a1)
  {
    if (a4 >= 0.0 && a2 != 0)
    {
      v14 = malloc_type_malloc(0x38uLL, 0x1020040AA3C56B0uLL);
      v6 = v14;
      if (v14)
      {
        *v14 = 1;
        CFRetain(a1);
        *(v6 + 1) = a1;
        v6[2] = round(a4);
        CFRetain(a2);
        *(v6 + 3) = a2;
        if (a3)
        {
          CFRetain(a3);
        }

        *(v6 + 4) = a3;
        v15 = round(a5 * 1000.0) / 1000.0;
        v6[5] = v15;
        v6[6] = round(a6);
        if (v15 < 0.001 || 6.28318531 - v15 < 0.001)
        {
          v6[5] = 0.0;
        }
      }
    }
  }

  return v6;
}

void CGPDFTextStyleRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[1];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[3];
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = a1[4];
      if (v5)
      {
        CFRelease(v5);
      }

      free(a1);
    }
  }
}

uint64_t CGPDFTextStyleEqualToPDFTextStyle(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = CGColorEqualToColor(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = CGColorEqualToColor(*(a1 + 32), *(a2 + 32));
    if (result)
    {
      return *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
    }
  }

  return result;
}

void ccitt_fax_filter_finalize(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      v3 = v2[4];
      if (v3)
      {
        free(v3);
      }

      free(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t ccitt_fax_filter_refill(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v6 = a1;
  v7 = *(a1 + 32);
  if (*v7 != 4)
  {
    v92 = *(v7 + 4);
    if ((v92 & 6) == 4)
    {
      v93 = *(v7 + 20);
      if ((v93 & 7) != 0)
      {
        *(v7 + 16) >>= v93 & 7;
        *(v7 + 20) = v93 & 0xFFFFFFF8;
      }
    }

    if (*(v7 + 24))
    {
      m = *(v7 + 20);
LABEL_141:
      for (i = 1; ; i = *(v7 + 24) + 1)
      {
        *(v7 + 24) = i;
        while (1)
        {
          if (m <= 7)
          {
            v96 = (*(v7 + 64))(*(v7 + 72));
            if (v96 == -1)
            {
              if (!*(v7 + 20))
              {
                goto LABEL_189;
              }

              m = 8;
            }

            else
            {
              v97 = *(v7 + 20);
              *(v7 + 16) |= TIFFBitRevTable[v96] << v97;
              m = v97 + 8;
            }
          }

          v98 = *(v7 + 16);
          if (v98)
          {
            break;
          }

          m -= 8;
          *(v7 + 16) = v98 >> 8;
          *(v7 + 20) = m;
        }

        if ((v98 & 1) == 0)
        {
          do
          {
            v99 = v98;
            --m;
            v98 >>= 1;
          }

          while ((v99 & 2) == 0);
        }

        v100 = m - 1;
        v101 = v98 >> 1;
        *(v7 + 16) = v101;
        *(v7 + 20) = m - 1;
        if (*(v7 + 4))
        {
          break;
        }

        if (m <= 11)
        {
          v102 = (*(v7 + 64))(*(v7 + 72));
          if (v102 == -1)
          {
            if (!*(v7 + 20))
            {
              goto LABEL_189;
            }

            v101 = *(v7 + 16);
            goto LABEL_165;
          }

          v103 = *(v7 + 20);
          v101 = *(v7 + 16) | (TIFFBitRevTable[v102] << v103);
          v100 = v103 + 8;
          *(v7 + 16) = v101;
          *(v7 + 20) = v103 + 8;
          if (v103 <= 2)
          {
            v104 = (*(v7 + 64))(*(v7 + 72));
            v101 = *(v7 + 16);
            if (v104 != -1)
            {
              v105 = *(v7 + 20);
              v101 |= TIFFBitRevTable[v104] << v105;
              *(v7 + 16) = v101;
              v100 = v105 + 8;
LABEL_166:
              *(v7 + 20) = v100;
              goto LABEL_167;
            }

LABEL_165:
            v100 = 11;
            goto LABEL_166;
          }
        }

LABEL_167:
        if ((v101 & 0x7FF) != 0)
        {
          goto LABEL_250;
        }

        m = v100 - 11;
        *(v7 + 20) = v100 - 11;
        v110 = v101 >> 11;
LABEL_175:
        *(v7 + 16) = v110;
      }

      if (m <= 12)
      {
        v106 = (*(v7 + 64))(*(v7 + 72));
        if (v106 == -1)
        {
          if (!*(v7 + 20))
          {
            goto LABEL_189;
          }

          v101 = *(v7 + 16);
          goto LABEL_171;
        }

        v107 = *(v7 + 20);
        v101 = *(v7 + 16) | (TIFFBitRevTable[v106] << v107);
        v100 = v107 + 8;
        *(v7 + 16) = v101;
        *(v7 + 20) = v107 + 8;
        if (v107 <= 3)
        {
          v108 = (*(v7 + 64))(*(v7 + 72));
          v101 = *(v7 + 16);
          if (v108 != -1)
          {
            v109 = *(v7 + 20);
            v101 |= TIFFBitRevTable[v108] << v109;
            *(v7 + 16) = v101;
            v100 = v109 + 8;
            goto LABEL_172;
          }

LABEL_171:
          v100 = 12;
LABEL_172:
          *(v7 + 20) = v100;
        }
      }

      if ((v101 & 0xFFE) == 0)
      {
        m = v100 - 12;
        *(v7 + 20) = v100 - 12;
        v110 = v101 >> 12;
        goto LABEL_175;
      }

LABEL_250:
      v147 = *(v7 + 24);
      if (v147 >= 2 && v147 != 6)
      {
        fprintf(*MEMORY[0x1E69E9848], "Line %d: bad RTC (%d EOLs)\n", *(v7 + 60), v147);
        v147 = *(v7 + 24);
      }

      v116 = v147 > 5;
      if (v92)
      {
LABEL_254:
        if (v116)
        {
          goto LABEL_489;
        }

        m = *(v7 + 20);
LABEL_256:
        *(v7 + 24) = 0;
        if (m <= 0)
        {
          v148 = (*(v7 + 64))(*(v7 + 72));
          if (v148 == -1)
          {
            if (!*(v7 + 20))
            {
              goto LABEL_489;
            }

            m = 1;
          }

          else
          {
            v149 = *(v7 + 20);
            *(v7 + 16) |= TIFFBitRevTable[v148] << v149;
            m = v149 + 8;
          }
        }

        v312 = a2;
        v313 = a3;
        v159 = m - 1;
        v13 = *(v7 + 12);
        v160 = *(v7 + 16);
        v161 = v160 >> 1;
        *(v7 + 16) = v160 >> 1;
        *(v7 + 20) = v159;
        v8 = *(v7 + 48);
        if ((v160 & 1) == 0)
        {
          v314 = v6;
          if (v13 < 1)
          {
            v163 = 0;
            v19 = *(v7 + 48);
            goto LABEL_558;
          }

          LOWORD(v162) = 0;
          v163 = 0;
          j = 0;
          v165 = *(v7 + 40);
          v168 = *v165;
          v167 = v165 + 1;
          v166 = v168;
          v19 = *(v7 + 48);
          while (1)
          {
            if (v159 <= 6)
            {
              v169 = (*(v7 + 64))(*(v7 + 72));
              if (v169 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_635;
                }

                v161 = *(v7 + 16);
                v159 = 7;
              }

              else
              {
                v170 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v169] << v170);
                v159 = v170 + 8;
              }
            }

            v171 = &pdf_TIFFFaxMainTable + 4 * (v161 & 0x7F);
            v172 = v171[1];
            v159 -= v172;
            v161 >>= v172;
            *(v7 + 16) = v161;
            *(v7 + 20) = v159;
            v173 = *v171;
            if (v173 >= 4)
            {
              break;
            }

            if (v173 == 1)
            {
              v208 = *(v7 + 40) + 2 * *(v7 + 56);
              if (v19 != v8 && v166 <= v163)
              {
                v209 = v167 + 1;
                do
                {
                  if (v209 >= v208)
                  {
                    break;
                  }

                  v210 = *(v209 - 1);
                  v211 = *v209;
                  v209 += 2;
                  v166 += v210 + v211;
                }

                while (v166 <= v163);
                v167 = v209 - 1;
              }

              if (v167 < v208)
              {
                v212 = v166 + *v167;
                j += v212 - v163;
                if ((v167 + 1) < v208)
                {
                  v213 = v167[1];
                  v167 += 2;
                  v166 = v212 + v213;
                  v163 = v212;
                  goto LABEL_366;
                }

                v163 = v166 + *v167;
              }

              goto LABEL_555;
            }

            if (v173 != 2)
            {
              if (v173 != 3)
              {
                goto LABEL_554;
              }

              v174 = *(v7 + 56);
              if (v19 != v8 && v166 <= v163)
              {
                v175 = v167 + 1;
                do
                {
                  if (v175 >= *(v7 + 40) + 2 * v174)
                  {
                    break;
                  }

                  v176 = *(v175 - 1);
                  v177 = *v175;
                  v175 += 2;
                  v166 += v176 + v177;
                }

                while (v166 <= v163);
                v167 = v175 - 1;
              }

              v163 = v166;
              if (v19 < *(v7 + 48) + 2 * v174)
              {
                *v19++ = j + v162 + v166;
              }

              if (v167 < *(v7 + 40) + 2 * v174)
              {
                j = 0;
                v178 = *v167++;
                v166 += v178;
                goto LABEL_366;
              }

              goto LABEL_558;
            }

            if (((v19 - v8) & 2) != 0)
            {
              while (1)
              {
                if (v159 > 12)
                {
                  goto LABEL_355;
                }

                v200 = (*(v7 + 64))(*(v7 + 72));
                if (v200 == -1)
                {
                  if (!*(v7 + 20))
                  {
                    goto LABEL_635;
                  }

                  v161 = *(v7 + 16);
                }

                else
                {
                  v201 = *(v7 + 20);
                  v161 = *(v7 + 16) | (TIFFBitRevTable[v200] << v201);
                  v159 = v201 + 8;
                  *(v7 + 16) = v161;
                  *(v7 + 20) = v201 + 8;
                  if (v201 > 4)
                  {
                    goto LABEL_355;
                  }

                  v202 = (*(v7 + 64))(*(v7 + 72));
                  v161 = *(v7 + 16);
                  if (v202 != -1)
                  {
                    v203 = *(v7 + 20);
                    v161 |= TIFFBitRevTable[v202] << v203;
                    v159 = v203 + 8;
                    goto LABEL_355;
                  }
                }

                v159 = 13;
LABEL_355:
                v204 = &pdf_TIFFFaxBlackTable + 4 * (v161 & 0x1FFF);
                v205 = v204[1];
                v159 -= v205;
                v161 >>= v205;
                *(v7 + 16) = v161;
                *(v7 + 20) = v159;
                v206 = *v204;
                if ((v206 - 10) >= 2)
                {
                  if (v206 != 8)
                  {
                    goto LABEL_554;
                  }

                  v222 = *(v204 + 1);
                  if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                  {
                    *v19++ = v222 + j;
                  }

                  for (j = 0; ; j += v222)
                  {
                    v163 += v222;
                    if (v159 > 11)
                    {
                      goto LABEL_394;
                    }

                    v223 = (*(v7 + 64))(*(v7 + 72));
                    if (v223 == -1)
                    {
                      if (!*(v7 + 20))
                      {
                        goto LABEL_635;
                      }

                      v161 = *(v7 + 16);
                    }

                    else
                    {
                      v224 = *(v7 + 20);
                      v161 = *(v7 + 16) | (TIFFBitRevTable[v223] << v224);
                      v159 = v224 + 8;
                      *(v7 + 16) = v161;
                      *(v7 + 20) = v224 + 8;
                      if (v224 > 3)
                      {
                        goto LABEL_394;
                      }

                      v225 = (*(v7 + 64))(*(v7 + 72));
                      v161 = *(v7 + 16);
                      if (v225 != -1)
                      {
                        v226 = *(v7 + 20);
                        v161 |= TIFFBitRevTable[v225] << v226;
                        v159 = v226 + 8;
                        goto LABEL_394;
                      }
                    }

                    v159 = 12;
LABEL_394:
                    v219 = &pdf_TIFFFaxWhiteTable + 4 * (v161 & 0xFFF);
                    v227 = v219[1];
                    v159 -= v227;
                    v161 >>= v227;
                    *(v7 + 16) = v161;
                    *(v7 + 20) = v159;
                    v228 = *v219;
                    if (v228 != 9 && v228 != 11)
                    {
                      if (v228 != 7)
                      {
                        goto LABEL_554;
                      }

                      goto LABEL_403;
                    }

                    v222 = *(v219 + 1);
                  }
                }

                v207 = *(v204 + 1);
                j += v207;
                v163 += v207;
              }
            }

            while (1)
            {
              if (v159 > 11)
              {
                goto LABEL_341;
              }

              v191 = (*(v7 + 64))(*(v7 + 72));
              if (v191 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_635;
                }

                v161 = *(v7 + 16);
              }

              else
              {
                v192 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v191] << v192);
                v159 = v192 + 8;
                *(v7 + 16) = v161;
                *(v7 + 20) = v192 + 8;
                if (v192 > 3)
                {
                  goto LABEL_341;
                }

                v193 = (*(v7 + 64))(*(v7 + 72));
                v161 = *(v7 + 16);
                if (v193 != -1)
                {
                  v194 = *(v7 + 20);
                  v161 |= TIFFBitRevTable[v193] << v194;
                  v159 = v194 + 8;
                  goto LABEL_341;
                }
              }

              v159 = 12;
LABEL_341:
              v195 = &pdf_TIFFFaxWhiteTable + 4 * (v161 & 0xFFF);
              v196 = v195[1];
              v159 -= v196;
              v161 >>= v196;
              *(v7 + 16) = v161;
              *(v7 + 20) = v159;
              v197 = *v195;
              if (v197 != 9 && v197 != 11)
              {
                break;
              }

              v199 = *(v195 + 1);
              j += v199;
              v163 += v199;
            }

            if (v197 != 7)
            {
              goto LABEL_554;
            }

            v214 = *(v195 + 1);
            if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v19++ = v214 + j;
            }

            j = 0;
            while (2)
            {
              v163 += v214;
              if (v159 > 12)
              {
                goto LABEL_380;
              }

              v215 = (*(v7 + 64))(*(v7 + 72));
              if (v215 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_635;
                }

                v161 = *(v7 + 16);
              }

              else
              {
                v216 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v215] << v216);
                v159 = v216 + 8;
                *(v7 + 16) = v161;
                *(v7 + 20) = v216 + 8;
                if (v216 > 4)
                {
                  goto LABEL_380;
                }

                v217 = (*(v7 + 64))(*(v7 + 72));
                v161 = *(v7 + 16);
                if (v217 != -1)
                {
                  v218 = *(v7 + 20);
                  v161 |= TIFFBitRevTable[v217] << v218;
                  v159 = v218 + 8;
                  goto LABEL_380;
                }
              }

              v159 = 13;
LABEL_380:
              v219 = &pdf_TIFFFaxBlackTable + 4 * (v161 & 0x1FFF);
              v220 = v219[1];
              v159 -= v220;
              v161 >>= v220;
              *(v7 + 16) = v161;
              *(v7 + 20) = v159;
              v221 = *v219;
              if ((v221 - 10) < 2)
              {
                v214 = *(v219 + 1);
                j += v214;
                continue;
              }

              break;
            }

            if (v221 != 8)
            {
LABEL_554:
              *(v7 + 28) = 1;
              goto LABEL_555;
            }

LABEL_403:
            v230 = *(v219 + 1);
            v231 = *(v7 + 56);
            if (v19 < *(v7 + 48) + 2 * v231)
            {
              *v19++ = v230 + j;
            }

            v163 += v230;
            if (v19 != v8 && (v166 <= v163 ? (v232 = v166 < v13) : (v232 = 0), v232))
            {
              v233 = *(v7 + 40) + 2 * v231;
              v234 = v167 + 1;
              do
              {
                if (v234 >= v233)
                {
                  break;
                }

                v235 = *(v234 - 1);
                v236 = *v234;
                v234 += 2;
                v166 += v235 + v236;
              }

              while (v166 <= v163 && v166 < v13);
              j = 0;
              v167 = v234 - 1;
            }

            else
            {
              j = 0;
            }

LABEL_366:
            v162 = -v163;
            if (v163 >= v13)
            {
              if (j)
              {
                if (v159 <= 0)
                {
                  v281 = (*(v7 + 64))(*(v7 + 72));
                  if (v281 != -1)
                  {
                    v282 = *(v7 + 20);
                    v161 = *(v7 + 16) | (TIFFBitRevTable[v281] << v282);
                    v159 = v282 + 8;
                    *(v7 + 16) = v161;
                    *(v7 + 20) = v159;
                    goto LABEL_627;
                  }

                  if (*(v7 + 20))
                  {
                    v159 = 1;
                    *(v7 + 20) = 1;
                    v161 = *(v7 + 16);
                    goto LABEL_627;
                  }

LABEL_636:
                  if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                  {
                    *v19++ = j;
                  }

LABEL_638:
                  if (v163 != v13)
                  {
                    v273 = v163 > v13;
                    v6 = v314;
                    if (v163 > v13 && v19 > v8)
                    {
                      v306 = v19 - 1;
                      v307 = v19 - 1;
                      do
                      {
                        v308 = *v307--;
                        v163 -= v308;
                        v273 = v163 > v13;
                        v309 = v163 > v13 && v306 > v8;
                        v306 = v307;
                      }

                      while (v309);
                      v19 = v307 + 1;
                    }

                    if (v163 < v13)
                    {
                      v310 = *(v7 + 48) + 2 * *(v7 + 56);
                      if (((v19 - v8) & 2) != 0 && v19 < v310)
                      {
                        *v19++ = 0;
                      }

                      if (v19 >= v310)
                      {
                        goto LABEL_489;
                      }

                      result = 0;
                      v279 = v163 & ~(v163 >> 31);
                      goto LABEL_615;
                    }

LABEL_653:
                    if (!v273)
                    {
                      goto LABEL_489;
                    }

                    v311 = *(v7 + 48) + 2 * *(v7 + 56);
                    if (v19 < v311)
                    {
                      *v19++ = v13;
                    }

                    if (v19 >= v311)
                    {
                      goto LABEL_489;
                    }

                    result = 0;
                    *v19 = 0;
                    goto LABEL_490;
                  }

LABEL_599:
                  result = 0;
LABEL_600:
                  v6 = v314;
                  goto LABEL_490;
                }

LABEL_627:
                if (v161)
                {
                  *(v7 + 16) = v161 >> 1;
                  *(v7 + 20) = v159 - 1;
                }

                else
                {
                  *(v7 + 28) = 1;
                }

LABEL_556:
                if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                {
                  *v19++ = j;
                }
              }

LABEL_558:
              if (v163 == v13)
              {
                v6 = v314;
                goto LABEL_580;
              }

              v257 = v163 > v13;
              v6 = v314;
              if (v163 > v13 && v19 > v8)
              {
                v285 = v19 - 1;
                v286 = v19 - 1;
                do
                {
                  v287 = *v286--;
                  v163 -= v287;
                  v257 = v163 > v13;
                  v288 = v163 > v13 && v285 > v8;
                  v285 = v286;
                }

                while (v288);
                v19 = v286 + 1;
              }

              if (v163 < v13)
              {
                v289 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v19 - v8) & 2) != 0 && v19 < v289)
                {
                  *v19++ = 0;
                }

                if (v19 >= v289)
                {
                  goto LABEL_580;
                }

                v263 = v163 & ~(v163 >> 31);
                goto LABEL_574;
              }

              goto LABEL_575;
            }
          }

          if (*v171 <= 4u)
          {
            v185 = *(v7 + 56);
            if (v19 != v8 && v166 <= v163)
            {
              v186 = v167 + 1;
              do
              {
                if (v186 >= *(v7 + 40) + 2 * v185)
                {
                  break;
                }

                v187 = *(v186 - 1);
                v188 = *v186;
                v186 += 2;
                v166 += v187 + v188;
              }

              while (v166 <= v163);
              v167 = v186 - 1;
            }

            v189 = *(v171 + 1);
            if (v19 < *(v7 + 48) + 2 * v185)
            {
              *v19++ = v189 + j + v162 + v166;
            }

            v163 = v166 + v189;
            if (v167 < *(v7 + 40) + 2 * v185)
            {
              j = 0;
              v190 = *v167++;
              v166 += v190;
              goto LABEL_366;
            }

            goto LABEL_558;
          }

          switch(v173)
          {
            case 5u:
              if (v19 != v8 && v166 <= v163)
              {
                v179 = v167 + 1;
                do
                {
                  if (v179 >= *(v7 + 40) + 2 * *(v7 + 56))
                  {
                    break;
                  }

                  v180 = *(v179 - 1);
                  v181 = *v179;
                  v179 += 2;
                  v166 += v180 + v181;
                }

                while (v166 <= v163);
                v167 = v179 - 1;
              }

              v182 = v163 + *(v171 + 1);
              v36 = __OFSUB__(v166, v182);
              v183 = v166 - v182;
              if (v183 < 0 == v36)
              {
                if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
                {
                  *v19++ = v183 + j;
                }

                j = 0;
                v163 += v183;
                v184 = *--v167;
                v166 -= v184;
                goto LABEL_366;
              }

              break;
            case 6u:
              if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = v13 - v163;
              }

              break;
            case 0xCu:
              if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = v13 - v163;
              }

              if (v159 <= 3)
              {
                v283 = (*(v7 + 64))(*(v7 + 72));
                if (v283 == -1)
                {
                  if (!*(v7 + 20))
                  {
LABEL_635:
                    if (j)
                    {
                      goto LABEL_636;
                    }

                    goto LABEL_638;
                  }

                  v161 = *(v7 + 16);
                  v159 = 4;
                }

                else
                {
                  v284 = *(v7 + 20);
                  v161 = *(v7 + 16) | (TIFFBitRevTable[v283] << v284);
                  v159 = v284 + 8;
                }
              }

              if ((v161 & 0xF) != 0)
              {
                *(v7 + 28) = 1;
              }

              result = 0;
              *(v7 + 16) = v161 >> 4;
              *(v7 + 20) = v159 - 4;
              *(v7 + 24) = 1;
              goto LABEL_600;
            default:
              goto LABEL_554;
          }

LABEL_555:
          if (j)
          {
            goto LABEL_556;
          }

          goto LABEL_558;
        }

        v238 = 0;
        v19 = *(v7 + 48);
LABEL_419:
        for (k = 0; ; k += v247)
        {
          if (v159 > 11)
          {
            goto LABEL_428;
          }

          v240 = (*(v7 + 64))(*(v7 + 72));
          if (v240 == -1)
          {
            if (!*(v7 + 20))
            {
LABEL_511:
              if (k && v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = k;
              }

              if (v238 == v13)
              {
                goto LABEL_489;
              }

              v273 = v238 > v13;
              if (v238 > v13 && v19 > v8)
              {
                v274 = v19 - 1;
                v275 = v19 - 1;
                do
                {
                  v276 = *v275--;
                  v238 -= v276;
                  v273 = v238 > v13;
                  v277 = v238 > v13 && v274 > v8;
                  v274 = v275;
                }

                while (v277);
                v19 = v275 + 1;
              }

              if (v238 < v13)
              {
                v278 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v19 - v8) & 2) != 0 && v19 < v278)
                {
                  *v19++ = 0;
                }

                if (v19 >= v278)
                {
                  goto LABEL_489;
                }

                result = 0;
                v279 = v238 & ~(v238 >> 31);
                goto LABEL_615;
              }

              goto LABEL_653;
            }

            v161 = *(v7 + 16);
          }

          else
          {
            v241 = *(v7 + 20);
            v161 = *(v7 + 16) | (TIFFBitRevTable[v240] << v241);
            v159 = v241 + 8;
            *(v7 + 16) = v161;
            *(v7 + 20) = v241 + 8;
            if (v241 > 3)
            {
              goto LABEL_428;
            }

            v242 = (*(v7 + 64))(*(v7 + 72));
            v161 = *(v7 + 16);
            if (v242 != -1)
            {
              v243 = *(v7 + 20);
              v161 |= TIFFBitRevTable[v242] << v243;
              v159 = v243 + 8;
              goto LABEL_428;
            }
          }

          v159 = 12;
LABEL_428:
          v244 = &pdf_TIFFFaxWhiteTable + 4 * (v161 & 0xFFF);
          v245 = v244[1];
          v159 -= v245;
          v161 >>= v245;
          *(v7 + 16) = v161;
          *(v7 + 20) = v159;
          v246 = *v244;
          if (v246 >= 0xB)
          {
            if (v246 != 11)
            {
              goto LABEL_453;
            }
          }

          else if (v246 != 9)
          {
            if (v246 != 7)
            {
              goto LABEL_455;
            }

            v248 = *(v244 + 1);
            if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v19++ = v248 + k;
            }

            v238 += v248;
            if (v238 >= v13)
            {
              goto LABEL_459;
            }

            k = 0;
            while (2)
            {
              if (v159 > 12)
              {
                goto LABEL_446;
              }

              v249 = (*(v7 + 64))(*(v7 + 72));
              if (v249 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_511;
                }

                v161 = *(v7 + 16);
              }

              else
              {
                v250 = *(v7 + 20);
                v161 = *(v7 + 16) | (TIFFBitRevTable[v249] << v250);
                v159 = v250 + 8;
                *(v7 + 16) = v161;
                *(v7 + 20) = v250 + 8;
                if (v250 > 4)
                {
                  goto LABEL_446;
                }

                v251 = (*(v7 + 64))(*(v7 + 72));
                v161 = *(v7 + 16);
                if (v251 != -1)
                {
                  v252 = *(v7 + 20);
                  v161 |= TIFFBitRevTable[v251] << v252;
                  v159 = v252 + 8;
                  goto LABEL_446;
                }
              }

              v159 = 13;
LABEL_446:
              v253 = &pdf_TIFFFaxBlackTable + 4 * (v161 & 0x1FFF);
              v254 = v253[1];
              v159 -= v254;
              v161 >>= v254;
              *(v7 + 16) = v161;
              *(v7 + 20) = v159;
              v246 = *v253;
              if (v246 - 10 < 2)
              {
                v255 = *(v253 + 1);
                v238 += v255;
                k += v255;
                continue;
              }

              break;
            }

            if (v246 != 8)
            {
LABEL_453:
              if (v246 == 12)
              {
                *(v7 + 24) = 1;
              }

              else
              {
LABEL_455:
                *(v7 + 28) = 1;
              }

              if (k && v19 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v19++ = k;
              }

LABEL_459:
              if (v238 == v13)
              {
                goto LABEL_580;
              }

              v257 = v238 > v13;
              if (v238 > v13 && v19 > v8)
              {
                v258 = v19 - 1;
                v259 = v19 - 1;
                do
                {
                  v260 = *v259--;
                  v238 -= v260;
                  v257 = v238 > v13;
                  v261 = v238 > v13 && v258 > v8;
                  v258 = v259;
                }

                while (v261);
                v19 = v259 + 1;
              }

              if (v238 < v13)
              {
                v262 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v19 - v8) & 2) != 0 && v19 < v262)
                {
                  *v19++ = 0;
                }

                if (v19 >= v262)
                {
                  goto LABEL_580;
                }

                v263 = v238 & ~(v238 >> 31);
LABEL_574:
                *v19++ = v13 - v263;
                goto LABEL_580;
              }

LABEL_575:
              if (v257)
              {
                v290 = *(v7 + 48) + 2 * *(v7 + 56);
                if (v19 < v290)
                {
                  *v19++ = v13;
                }

                if (v19 < v290)
                {
                  *v19++ = 0;
                }
              }

              goto LABEL_580;
            }

            v256 = *(v253 + 1);
            if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v19++ = v256 + k;
            }

            v238 += v256;
            if (v238 >= v13)
            {
              goto LABEL_459;
            }

            goto LABEL_419;
          }

          v247 = *(v244 + 1);
          v238 += v247;
        }
      }

LABEL_190:
      if (v116)
      {
        goto LABEL_489;
      }

      m = *(v7 + 20);
      goto LABEL_193;
    }

    for (m = *(v7 + 20); ; *(v7 + 20) = m)
    {
      if (m > 10)
      {
        goto LABEL_186;
      }

      v111 = (*(v7 + 64))(*(v7 + 72));
      if (v111 == -1)
      {
        break;
      }

      v112 = *(v7 + 20);
      m = v112 + 8;
      *(v7 + 16) |= TIFFBitRevTable[v111] << v112;
      *(v7 + 20) = v112 + 8;
      if (v112 > 2)
      {
        goto LABEL_186;
      }

      v113 = (*(v7 + 64))(*(v7 + 72));
      if (v113 == -1)
      {
        goto LABEL_184;
      }

      v114 = *(v7 + 20);
      *(v7 + 16) |= TIFFBitRevTable[v113] << v114;
      m = v114 + 8;
LABEL_185:
      *(v7 + 20) = m;
LABEL_186:
      v115 = *(v7 + 16);
      if ((v115 & 0x7FF) == 0)
      {
        goto LABEL_141;
      }

      if ((*(v7 + 4) & 2) == 0)
      {
        if (v92)
        {
          goto LABEL_256;
        }

LABEL_193:
        v313 = a3;
        v117 = 0;
        *(v7 + 24) = 0;
        v118 = *(v7 + 48);
        v119 = *(v7 + 12);
        v120 = v118;
LABEL_194:
        for (n = 0; ; n += v131)
        {
          if (m > 11)
          {
            goto LABEL_202;
          }

          v122 = (*(v7 + 64))(*(v7 + 72));
          if (v122 == -1)
          {
            if (!*(v7 + 20))
            {
LABEL_268:
              if (n && v120 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v120++ = n;
              }

              if (v117 == v119)
              {
                goto LABEL_489;
              }

              v153 = v117 > v119;
              if (v117 > v119 && v120 > v118)
              {
                v154 = v120 - 1;
                v155 = v120 - 1;
                do
                {
                  v156 = *v155--;
                  v117 -= v156;
                  v153 = v117 > v119;
                  v157 = v117 > v119 && v154 > v118;
                  v154 = v155;
                }

                while (v157);
                v120 = v155 + 1;
              }

              if (v117 >= v119)
              {
                if (!v153)
                {
                  goto LABEL_489;
                }

                v280 = *(v7 + 48) + 2 * *(v7 + 56);
                if (v120 < v280)
                {
                  *v120++ = v119;
                }

                if (v120 >= v280)
                {
                  goto LABEL_489;
                }

                result = 0;
                *v120 = 0;
              }

              else
              {
                v158 = *(v7 + 48) + 2 * *(v7 + 56);
                if (((v120 - v118) & 2) != 0 && v120 < v158)
                {
                  *v120++ = 0;
                }

                if (v120 >= v158)
                {
                  goto LABEL_489;
                }

                result = 0;
                *v120 = v119 - (v117 & ~(v117 >> 31));
              }

              goto LABEL_490;
            }
          }

          else
          {
            v123 = *(v7 + 20);
            m = v123 + 8;
            *(v7 + 16) |= TIFFBitRevTable[v122] << v123;
            *(v7 + 20) = v123 + 8;
            if (v123 > 3)
            {
              goto LABEL_202;
            }

            v124 = (*(v7 + 64))(*(v7 + 72));
            if (v124 != -1)
            {
              v125 = *(v7 + 20);
              *(v7 + 16) |= TIFFBitRevTable[v124] << v125;
              m = v125 + 8;
              goto LABEL_202;
            }
          }

          m = 12;
LABEL_202:
          v126 = *(v7 + 16);
          v127 = &pdf_TIFFFaxWhiteTable + 4 * (v126 & 0xFFF);
          v128 = v127[1];
          m -= v128;
          v129 = v126 >> v128;
          *(v7 + 16) = v129;
          *(v7 + 20) = m;
          v130 = *v127;
          if (v130 >= 0xB)
          {
            if (v130 != 11)
            {
              goto LABEL_227;
            }
          }

          else if (v130 != 9)
          {
            if (v130 != 7)
            {
              goto LABEL_229;
            }

            v132 = *(v127 + 1);
            if (v120 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v120++ = v132 + n;
            }

            v117 += v132;
            if (v117 >= v119)
            {
              goto LABEL_233;
            }

            n = 0;
            while (2)
            {
              if (m > 12)
              {
                goto LABEL_220;
              }

              v133 = (*(v7 + 64))(*(v7 + 72));
              if (v133 == -1)
              {
                if (!*(v7 + 20))
                {
                  goto LABEL_268;
                }

                v129 = *(v7 + 16);
              }

              else
              {
                v134 = *(v7 + 20);
                v129 = *(v7 + 16) | (TIFFBitRevTable[v133] << v134);
                m = v134 + 8;
                *(v7 + 16) = v129;
                *(v7 + 20) = v134 + 8;
                if (v134 > 4)
                {
                  goto LABEL_220;
                }

                v135 = (*(v7 + 64))(*(v7 + 72));
                v129 = *(v7 + 16);
                if (v135 != -1)
                {
                  v136 = *(v7 + 20);
                  v129 |= TIFFBitRevTable[v135] << v136;
                  m = v136 + 8;
                  goto LABEL_220;
                }
              }

              m = 13;
LABEL_220:
              v137 = &pdf_TIFFFaxBlackTable + 4 * (v129 & 0x1FFF);
              v138 = v137[1];
              m -= v138;
              v129 >>= v138;
              *(v7 + 16) = v129;
              *(v7 + 20) = m;
              v130 = *v137;
              if (v130 - 10 < 2)
              {
                v139 = *(v137 + 1);
                v117 += v139;
                n += v139;
                continue;
              }

              break;
            }

            if (v130 != 8)
            {
LABEL_227:
              if (v130 == 12)
              {
                *(v7 + 24) = 1;
              }

              else
              {
LABEL_229:
                *(v7 + 28) = 1;
              }

              if (n && v120 < *(v7 + 48) + 2 * *(v7 + 56))
              {
                *v120++ = n;
              }

              goto LABEL_233;
            }

            v140 = *(v137 + 1);
            if (v120 < *(v7 + 48) + 2 * *(v7 + 56))
            {
              *v120++ = v140 + n;
            }

            v117 += v140;
            if (v117 >= v119)
            {
LABEL_233:
              if (v117 != v119)
              {
                v141 = v117 > v119;
                if (v117 > v119 && v120 > v118)
                {
                  v142 = v120 - 1;
                  v143 = v120 - 1;
                  do
                  {
                    v144 = *v143--;
                    v117 -= v144;
                    v141 = v117 > v119;
                    v145 = v117 > v119 && v142 > v118;
                    v142 = v143;
                  }

                  while (v145);
                  v120 = v143 + 1;
                }

                if (v117 >= v119)
                {
                  if (v141)
                  {
                    v152 = *(v7 + 48) + 2 * *(v7 + 56);
                    if (v120 < v152)
                    {
                      *v120++ = v119;
                    }

                    if (v120 < v152)
                    {
                      *v120++ = 0;
                    }
                  }
                }

                else
                {
                  v146 = *(v7 + 48) + 2 * *(v7 + 56);
                  if (((v120 - v118) & 2) != 0 && v120 < v146)
                  {
                    *v120++ = 0;
                  }

                  if (v120 < v146)
                  {
                    *v120++ = v119 - (v117 & ~(v117 >> 31));
                  }
                }
              }

              if (*(v7 + 28))
              {
                goto LABEL_489;
              }

              fill_runs(a2, v118, v120, v119, *(v7 + 4) & 0x10);
              goto LABEL_583;
            }

            goto LABEL_194;
          }

          v131 = *(v127 + 1);
          v117 += v131;
        }
      }

      --m;
      *(v7 + 16) = v115 >> 1;
    }

    if (!*(v7 + 20))
    {
LABEL_189:
      v116 = 1;
      if (v92)
      {
        goto LABEL_254;
      }

      goto LABEL_190;
    }

LABEL_184:
    m = 11;
    goto LABEL_185;
  }

  v312 = a2;
  v313 = a3;
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v12 = *v9;
  v11 = v9 + 1;
  v10 = v12;
  v13 = *(v7 + 12);
  if ((*(v7 + 4) & 4) != 0)
  {
    v14 = *(v7 + 20);
    if ((v14 & 7) != 0)
    {
      *(v7 + 16) >>= v14 & 7;
      *(v7 + 20) = v14 & 0xFFFFFFF8;
    }
  }

  v314 = a1;
  if (v13 < 1)
  {
    v16 = 0;
    v19 = v8;
    goto LABEL_486;
  }

  LOWORD(v15) = 0;
  v16 = 0;
  ii = 0;
  v18 = *(v7 + 20);
  v19 = v8;
  do
  {
    if (v18 <= 6)
    {
      v20 = (*(v7 + 64))(*(v7 + 72));
      if (v20 == -1)
      {
        if (!*(v7 + 20))
        {
          goto LABEL_595;
        }

        v18 = 7;
      }

      else
      {
        v21 = *(v7 + 20);
        *(v7 + 16) |= TIFFBitRevTable[v20] << v21;
        v18 = v21 + 8;
      }
    }

    v22 = *(v7 + 16);
    v23 = &pdf_TIFFFaxMainTable + 4 * (v22 & 0x7F);
    v24 = v23[1];
    v18 -= v24;
    v25 = v22 >> v24;
    *(v7 + 16) = v25;
    *(v7 + 20) = v18;
    v26 = *v23;
    if (v26 >= 4)
    {
      if (*v23 <= 4u)
      {
        v39 = *(v7 + 56);
        if (v19 != v8 && v10 <= v16)
        {
          v40 = v11 + 1;
          do
          {
            if (v40 >= *(v7 + 40) + 2 * v39)
            {
              break;
            }

            v41 = *(v40 - 1);
            v42 = *v40;
            v40 += 2;
            v10 += v41 + v42;
          }

          while (v10 <= v16);
          v11 = v40 - 1;
        }

        v43 = *(v23 + 1);
        if (v19 < *(v7 + 48) + 2 * v39)
        {
          *v19++ = v43 + ii + v15 + v10;
        }

        v16 = v10 + v43;
        if (v11 < *(v7 + 40) + 2 * v39)
        {
          ii = 0;
          v44 = *v11++;
          v10 += v44;
          goto LABEL_84;
        }

        goto LABEL_486;
      }

      if (v26 == 5)
      {
        if (v19 != v8 && v10 <= v16)
        {
          v32 = v11 + 1;
          do
          {
            if (v32 >= *(v7 + 40) + 2 * *(v7 + 56))
            {
              break;
            }

            v33 = *(v32 - 1);
            v34 = *v32;
            v32 += 2;
            v10 += v33 + v34;
          }

          while (v10 <= v16);
          v11 = v32 - 1;
        }

        v35 = v16 + *(v23 + 1);
        v36 = __OFSUB__(v10, v35);
        v37 = v10 - v35;
        if (v37 < 0 == v36)
        {
          if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
          {
            *v19++ = v37 + ii;
          }

          ii = 0;
          v16 += v37;
          v38 = *--v11;
          v10 -= v38;
          goto LABEL_84;
        }

LABEL_483:
        if (ii)
        {
          goto LABEL_484;
        }

        goto LABEL_486;
      }

      if (v26 == 6)
      {
        if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
        {
          *v19++ = v13 - v16;
        }

        goto LABEL_483;
      }

      if (v26 != 12)
      {
        goto LABEL_482;
      }

      if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
      {
        *v19++ = v13 - v16;
      }

      if (v18 <= 3)
      {
        v264 = (*(v7 + 64))(*(v7 + 72));
        if (v264 == -1)
        {
          if (!*(v7 + 20))
          {
LABEL_595:
            if (!ii)
            {
              goto LABEL_598;
            }

            goto LABEL_596;
          }

          v25 = *(v7 + 16);
          v18 = 4;
        }

        else
        {
          v265 = *(v7 + 20);
          v25 = *(v7 + 16) | (TIFFBitRevTable[v264] << v265);
          v18 = v265 + 8;
        }
      }

      if ((v25 & 0xF) != 0)
      {
        *(v7 + 28) = 1;
      }

      v295 = v25 >> 4;
      *(v7 + 16) = v295;
      *(v7 + 20) = v18 - 4;
      *(v7 + 24) = 1;
      v6 = v314;
      if (v18 <= 16)
      {
        v296 = (*(v7 + 64))(*(v7 + 72));
        if (v296 == -1)
        {
          if (!*(v7 + 20))
          {
            goto LABEL_489;
          }

          v295 = *(v7 + 16);
          goto LABEL_618;
        }

        v297 = *(v7 + 20);
        v295 = *(v7 + 16) | (TIFFBitRevTable[v296] << v297);
        *(v7 + 16) = v295;
        *(v7 + 20) = v297 + 8;
        if (v297 <= 4)
        {
          v298 = (*(v7 + 64))(*(v7 + 72));
          v295 = *(v7 + 16);
          if (v298 != -1)
          {
            v299 = *(v7 + 20);
            v295 |= TIFFBitRevTable[v298] << v299;
            *(v7 + 16) = v295;
            v300 = v299 + 8;
LABEL_619:
            *(v7 + 20) = v300;
            goto LABEL_620;
          }

LABEL_618:
          v300 = 13;
          goto LABEL_619;
        }
      }

LABEL_620:
      if ((v295 & 0x1FFF) == 0x1001)
      {
        goto LABEL_489;
      }

      result = 0;
      *(v7 + 28) = 1;
      goto LABEL_490;
    }

    if (v26 == 1)
    {
      v62 = *(v7 + 40) + 2 * *(v7 + 56);
      if (v19 != v8 && v10 <= v16)
      {
        v63 = v11 + 1;
        do
        {
          if (v63 >= v62)
          {
            break;
          }

          v64 = *(v63 - 1);
          v65 = *v63;
          v63 += 2;
          v10 += v64 + v65;
        }

        while (v10 <= v16);
        v11 = v63 - 1;
      }

      if (v11 < v62)
      {
        v66 = v10 + *v11;
        ii += v66 - v16;
        if ((v11 + 1) < v62)
        {
          v67 = v11[1];
          v11 += 2;
          v10 = v66 + v67;
          v16 = v66;
          goto LABEL_84;
        }

        v16 = v10 + *v11;
      }

      goto LABEL_483;
    }

    if (v26 != 2)
    {
      if (v26 != 3)
      {
        goto LABEL_482;
      }

      v27 = *(v7 + 56);
      if (v19 != v8 && v10 <= v16)
      {
        v28 = v11 + 1;
        do
        {
          if (v28 >= *(v7 + 40) + 2 * v27)
          {
            break;
          }

          v29 = *(v28 - 1);
          v30 = *v28;
          v28 += 2;
          v10 += v29 + v30;
        }

        while (v10 <= v16);
        v11 = v28 - 1;
      }

      v16 = v10;
      if (v19 < *(v7 + 48) + 2 * v27)
      {
        *v19++ = ii + v15 + v10;
      }

      if (v11 < *(v7 + 40) + 2 * v27)
      {
        ii = 0;
        v31 = *v11++;
        v10 += v31;
        goto LABEL_84;
      }

      goto LABEL_486;
    }

    if (((v19 - v8) & 2) != 0)
    {
      while (1)
      {
        if (v18 > 12)
        {
          goto LABEL_73;
        }

        v54 = (*(v7 + 64))(*(v7 + 72));
        if (v54 == -1)
        {
          if (!*(v7 + 20))
          {
            goto LABEL_595;
          }

          v25 = *(v7 + 16);
        }

        else
        {
          v55 = *(v7 + 20);
          v25 = *(v7 + 16) | (TIFFBitRevTable[v54] << v55);
          v18 = v55 + 8;
          *(v7 + 16) = v25;
          *(v7 + 20) = v55 + 8;
          if (v55 > 4)
          {
            goto LABEL_73;
          }

          v56 = (*(v7 + 64))(*(v7 + 72));
          v25 = *(v7 + 16);
          if (v56 != -1)
          {
            v57 = *(v7 + 20);
            v25 |= TIFFBitRevTable[v56] << v57;
            v18 = v57 + 8;
            goto LABEL_73;
          }
        }

        v18 = 13;
LABEL_73:
        v58 = &pdf_TIFFFaxBlackTable + 4 * (v25 & 0x1FFF);
        v59 = v58[1];
        v18 -= v59;
        v25 >>= v59;
        *(v7 + 16) = v25;
        *(v7 + 20) = v18;
        v60 = *v58;
        if ((v60 - 10) >= 2)
        {
          if (v60 != 8)
          {
            goto LABEL_482;
          }

          v76 = *(v58 + 1);
          if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
          {
            *v19++ = v76 + ii;
          }

          for (ii = 0; ; ii += v76)
          {
            v16 += v76;
            if (v18 > 11)
            {
              goto LABEL_112;
            }

            v77 = (*(v7 + 64))(*(v7 + 72));
            if (v77 == -1)
            {
              if (!*(v7 + 20))
              {
                goto LABEL_595;
              }

              v25 = *(v7 + 16);
            }

            else
            {
              v78 = *(v7 + 20);
              v25 = *(v7 + 16) | (TIFFBitRevTable[v77] << v78);
              v18 = v78 + 8;
              *(v7 + 16) = v25;
              *(v7 + 20) = v78 + 8;
              if (v78 > 3)
              {
                goto LABEL_112;
              }

              v79 = (*(v7 + 64))(*(v7 + 72));
              v25 = *(v7 + 16);
              if (v79 != -1)
              {
                v80 = *(v7 + 20);
                v25 |= TIFFBitRevTable[v79] << v80;
                v18 = v80 + 8;
                goto LABEL_112;
              }
            }

            v18 = 12;
LABEL_112:
            v73 = &pdf_TIFFFaxWhiteTable + 4 * (v25 & 0xFFF);
            v81 = v73[1];
            v18 -= v81;
            v25 >>= v81;
            *(v7 + 16) = v25;
            *(v7 + 20) = v18;
            v82 = *v73;
            if (v82 != 9 && v82 != 11)
            {
              if (v82 != 7)
              {
                goto LABEL_482;
              }

              goto LABEL_121;
            }

            v76 = *(v73 + 1);
          }
        }

        v61 = *(v58 + 1);
        ii += v61;
        v16 += v61;
      }
    }

    while (1)
    {
      if (v18 > 11)
      {
        goto LABEL_59;
      }

      v45 = (*(v7 + 64))(*(v7 + 72));
      if (v45 == -1)
      {
        if (!*(v7 + 20))
        {
          goto LABEL_595;
        }

        v25 = *(v7 + 16);
      }

      else
      {
        v46 = *(v7 + 20);
        v25 = *(v7 + 16) | (TIFFBitRevTable[v45] << v46);
        v18 = v46 + 8;
        *(v7 + 16) = v25;
        *(v7 + 20) = v46 + 8;
        if (v46 > 3)
        {
          goto LABEL_59;
        }

        v47 = (*(v7 + 64))(*(v7 + 72));
        v25 = *(v7 + 16);
        if (v47 != -1)
        {
          v48 = *(v7 + 20);
          v25 |= TIFFBitRevTable[v47] << v48;
          v18 = v48 + 8;
          goto LABEL_59;
        }
      }

      v18 = 12;
LABEL_59:
      v49 = &pdf_TIFFFaxWhiteTable + 4 * (v25 & 0xFFF);
      v50 = v49[1];
      v18 -= v50;
      v25 >>= v50;
      *(v7 + 16) = v25;
      *(v7 + 20) = v18;
      v51 = *v49;
      if (v51 != 9 && v51 != 11)
      {
        break;
      }

      v53 = *(v49 + 1);
      ii += v53;
      v16 += v53;
    }

    if (v51 != 7)
    {
      goto LABEL_482;
    }

    v68 = *(v49 + 1);
    if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
    {
      *v19++ = v68 + ii;
    }

    ii = 0;
    while (2)
    {
      v16 += v68;
      if (v18 > 12)
      {
        goto LABEL_98;
      }

      v69 = (*(v7 + 64))(*(v7 + 72));
      if (v69 == -1)
      {
        if (!*(v7 + 20))
        {
          goto LABEL_595;
        }

        v25 = *(v7 + 16);
      }

      else
      {
        v70 = *(v7 + 20);
        v25 = *(v7 + 16) | (TIFFBitRevTable[v69] << v70);
        v18 = v70 + 8;
        *(v7 + 16) = v25;
        *(v7 + 20) = v70 + 8;
        if (v70 > 4)
        {
          goto LABEL_98;
        }

        v71 = (*(v7 + 64))(*(v7 + 72));
        v25 = *(v7 + 16);
        if (v71 != -1)
        {
          v72 = *(v7 + 20);
          v25 |= TIFFBitRevTable[v71] << v72;
          v18 = v72 + 8;
          goto LABEL_98;
        }
      }

      v18 = 13;
LABEL_98:
      v73 = &pdf_TIFFFaxBlackTable + 4 * (v25 & 0x1FFF);
      v74 = v73[1];
      v18 -= v74;
      v25 >>= v74;
      *(v7 + 16) = v25;
      *(v7 + 20) = v18;
      v75 = *v73;
      if ((v75 - 10) < 2)
      {
        v68 = *(v73 + 1);
        ii += v68;
        continue;
      }

      break;
    }

    if (v75 != 8)
    {
LABEL_482:
      *(v7 + 28) = 1;
      goto LABEL_483;
    }

LABEL_121:
    v84 = *(v73 + 1);
    v85 = *(v7 + 56);
    if (v19 < *(v7 + 48) + 2 * v85)
    {
      *v19++ = v84 + ii;
    }

    v16 += v84;
    if (v19 != v8 && (v10 <= v16 ? (v86 = v10 < v13) : (v86 = 0), v86))
    {
      v87 = *(v7 + 40) + 2 * v85;
      v88 = v11 + 1;
      do
      {
        if (v88 >= v87)
        {
          break;
        }

        v89 = *(v88 - 1);
        v90 = *v88;
        v88 += 2;
        v10 += v89 + v90;
      }

      while (v10 <= v16 && v10 < v13);
      ii = 0;
      v11 = v88 - 1;
    }

    else
    {
      ii = 0;
    }

LABEL_84:
    v15 = -v16;
  }

  while (v16 < v13);
  if (!ii)
  {
    goto LABEL_486;
  }

  if (v18 > 0)
  {
    goto LABEL_544;
  }

  v150 = (*(v7 + 64))(*(v7 + 72));
  if (v150 != -1)
  {
    v151 = *(v7 + 20);
    v25 = *(v7 + 16) | (TIFFBitRevTable[v150] << v151);
    *(v7 + 16) = v25;
    v18 = v151 + 8;
    goto LABEL_543;
  }

  if (!*(v7 + 20))
  {
LABEL_596:
    if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
    {
      *v19++ = ii;
    }

LABEL_598:
    if (v16 != v13)
    {
      v273 = v16 > v13;
      v6 = v314;
      if (v16 > v13 && v19 > v8)
      {
        v301 = v19 - 1;
        v302 = v19 - 1;
        do
        {
          v303 = *v302--;
          v16 -= v303;
          v273 = v16 > v13;
          v304 = v16 > v13 && v301 > v8;
          v301 = v302;
        }

        while (v304);
        v19 = v302 + 1;
      }

      if (v16 < v13)
      {
        v305 = *(v7 + 48) + 2 * *(v7 + 56);
        if (((v19 - v8) & 2) != 0 && v19 < v305)
        {
          *v19++ = 0;
        }

        if (v19 >= v305)
        {
          goto LABEL_489;
        }

        result = 0;
        v279 = v16 & ~(v16 >> 31);
LABEL_615:
        *v19 = v13 - v279;
        goto LABEL_490;
      }

      goto LABEL_653;
    }

    goto LABEL_599;
  }

  v25 = *(v7 + 16);
  v18 = 1;
LABEL_543:
  *(v7 + 20) = v18;
LABEL_544:
  if (v25)
  {
    *(v7 + 16) = v25 >> 1;
    *(v7 + 20) = v18 - 1;
  }

  else
  {
    *(v7 + 28) = 1;
  }

LABEL_484:
  if (v19 < *(v7 + 48) + 2 * *(v7 + 56))
  {
    *v19++ = ii;
  }

LABEL_486:
  if (v16 == v13)
  {
    v6 = v314;
  }

  else
  {
    v266 = v16 > v13;
    v6 = v314;
    if (v16 > v13 && v19 > v8)
    {
      v267 = v19 - 1;
      v268 = v19 - 1;
      do
      {
        v269 = *v268--;
        v16 -= v269;
        v266 = v16 > v13;
        v270 = v16 > v13 && v267 > v8;
        v267 = v268;
      }

      while (v270);
      v19 = v268 + 1;
    }

    if (v16 >= v13)
    {
      if (v266)
      {
        v272 = *(v7 + 48) + 2 * *(v7 + 56);
        if (v19 < v272)
        {
          *v19++ = v13;
        }

        if (v19 < v272)
        {
          *v19++ = 0;
        }
      }
    }

    else
    {
      v271 = *(v7 + 48) + 2 * *(v7 + 56);
      if (((v19 - v8) & 2) != 0 && v19 < v271)
      {
        *v19++ = 0;
      }

      if (v19 < v271)
      {
        *v19++ = v13 - (v16 & ~(v16 >> 31));
      }
    }
  }

  if (*(v7 + 24) > 0)
  {
LABEL_489:
    result = 0;
    goto LABEL_490;
  }

LABEL_580:
  fill_runs(v312, v8, v19, v13, *(v7 + 4) & 0x10);
  v291 = *(v7 + 48);
  if (v19 < v291 + 2 * *(v7 + 56))
  {
    *v19 = 0;
  }

  v292 = *(v7 + 40);
  *(v7 + 40) = v291;
  *(v7 + 48) = v292;
LABEL_583:
  result = v313;
  ++*(v7 + 60);
  v293 = *(v6 + 16);
  v36 = __OFSUB__(v293, 1);
  v294 = v293 - 1;
  if (v294 < 0 == v36)
  {
    *(v6 + 16) = v294;
    if (!v294)
    {
LABEL_490:
      *(v6 + 8) = 1;
    }
  }

  return result;
}

CFTypeID CGLayerGetTypeID(void)
{
  if (_block_invoke_once_2327 != -1)
  {
    dispatch_once(&_block_invoke_once_2327, &__block_literal_global_5_2328);
  }

  return CGLayerGetTypeID_layer_type_id;
}

CGLayerRef CGLayerRetain(CGLayerRef layer)
{
  if (layer)
  {
    CFRetain(layer);
  }

  return layer;
}

void CGLayerRelease(CGLayerRef layer)
{
  if (layer)
  {
    CFRelease(layer);
  }
}

CGSize CGLayerGetSize(CGLayerRef layer)
{
  v1 = (layer + 24);
  p_height = (layer + 32);
  if (!layer)
  {
    v1 = &CGSizeZero;
    p_height = &CGSizeZero.height;
  }

  v3 = *p_height;
  width = v1->width;
  result.height = v3;
  result.width = width;
  return result;
}

CGContextRef CGLayerGetContext(CGContextRef layer)
{
  if (layer)
  {
    return *(layer + 2);
  }

  return layer;
}

void CGContextDrawLayerInRect(CGContextRef context, CGRect rect, CGLayerRef layer)
{
  if (!context)
  {
    v12 = 0;
LABEL_9:
    handle_invalid_context("CGContextDrawLayerInRect", v12, v3, v4, v5, v6, v7, v8);
    return;
  }

  if (*(context + 4) != 1129601108)
  {
    v12 = context;
    goto LABEL_9;
  }

  if (layer)
  {
    v9 = *(layer + 2);
    if (v9)
    {
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(v10 + 216);
        if (v11)
        {
          v11(rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
        }
      }
    }
  }
}

uint64_t rip_auto_context_draw_layer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v13 = 120;
    pthread_mutex_lock(0x78);
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 288);
  v13 = v12 + 120;
  pthread_mutex_lock((v12 + 120));
  if (!v12)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(v12 + 88);
  if (!v14)
  {
    v14 = *(v12 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v12, a7);
  v22 = *(v12 + 112);
  v23 = *(a7 + 120);
  if (*(v23 + 48) >= v22)
  {
    v22 = *(v23 + 48);
  }

  *(v12 + 112) = v22;
  if (v14)
  {
    v24 = *(v14 + 40);
    if (v24)
    {
      v25 = *(v24 + 216);
      if (v25)
      {
        v26 = v25(a2, a3, a4, a5);
      }

      else
      {
        v26 = 1006;
      }
    }

    else
    {
      v26 = 0;
    }

    *(v12 + 105) |= rip_auto_context_contains_transparency(v12, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v26 = 0;
  }

  pthread_mutex_unlock(v13);
  return v26;
}

void update_colored_pattern_info_2365(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (cf && *(cf + 185) == 1)
  {
    if (v3 != cf)
    {
      if (v3)
      {
        CFRelease(v3);
      }

      CFRetain(cf);
      *a1 = cf;
      v13 = CGBitmapContextCreateWithCallbacks(2uLL, 2uLL, 0, 0, 0, 0, 0, v5);
      v14 = *(cf + 21);
      if (v14)
      {
        v14(*(cf + 10), v13);
      }

      v15 = *(CGContextGetDelegate(v13, v6, v7, v8, v9, v10, v11, v12) + 288);
      *(a1 + 8) = *(v15 + 104);
      v16 = *(v15 + 100);
      *(a1 + 12) = *(v15 + 116);
      *(a1 + 16) = v16;
      *(a1 + 20) = *(v15 + 108);
      if (v13)
      {

        CFRelease(v13);
      }
    }
  }

  else if (v3)
  {
    CFRelease(v3);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t rip_auto_context_get_layer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  if (!a1)
  {
    v14 = 120;
    pthread_mutex_lock(0x78);
    v13 = 0;
    goto LABEL_6;
  }

  v13 = *(a1 + 288);
  v14 = v13 + 120;
  pthread_mutex_lock((v13 + 120));
  if (!v13)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = *(v13 + 88);
  if (!v15)
  {
    v15 = *(v13 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v13, a7);
  v23 = *(v13 + 112);
  v24 = *(a7 + 120);
  if (*(v24 + 48) >= v23)
  {
    v23 = *(v24 + 48);
  }

  *(v13 + 112) = v23;
  if (v15)
  {
    v25 = *(v15 + 40);
    if (v25 && (v26 = *(v25 + 208)) != 0)
    {
      v12 = v26(a2, a3, a4, a5);
    }

    else
    {
      v12 = 0;
    }

    *(v13 + 105) |= rip_auto_context_contains_transparency(v13, v16, v17, v18, v19, v20, v21, v22);
  }

  pthread_mutex_unlock(v14);
  return v12;
}

uint64_t rip_auto_context_draw_display_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = 120;
    pthread_mutex_lock(0x78);
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 288);
  v5 = v4 + 120;
  pthread_mutex_lock((v4 + 120));
  if (!v4)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(v4 + 88);
  if (!v6)
  {
    v6 = *(v4 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v4, a3);
  v14 = *(v4 + 112);
  v15 = *(a3 + 120);
  if (*(v15 + 48) >= v14)
  {
    v14 = *(v15 + 48);
  }

  *(v4 + 112) = v14;
  if (v6)
  {
    v16 = *(v6 + 40);
    if (v16)
    {
      v17 = *(v16 + 128);
      if (v17)
      {
        v18 = v17();
      }

      else
      {
        v18 = 1006;
      }
    }

    else
    {
      v18 = 0;
    }

    *(v4 + 105) |= rip_auto_context_contains_transparency(v4, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v5);
  return v18;
}

uint64_t rip_auto_context_draw_images(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v13 = 120;
    pthread_mutex_lock(0x78);
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(a1 + 288);
  v13 = v12 + 120;
  pthread_mutex_lock((v12 + 120));
  if (!v12)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = *(v12 + 88);
  if (!v15)
  {
    v15 = *(v12 + 80);
  }

LABEL_7:
  if (a7)
  {
    v16 = a5;
    v17 = a7;
    do
    {
      v18 = *v16++;
      rip_adaptive_bitmap_context_update_content_info_from_image(v12, v18);
      --v17;
    }

    while (v17);
  }

  if (v15)
  {
    v19 = CGContextDelegateDrawImages(*(v15 + 40), a2, a3, a4, a5, a6, a7, v14);
    *(v12 + 105) |= rip_auto_context_contains_transparency(v12, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v19 = 0;
  }

  pthread_mutex_unlock(v13);
  return v19;
}

uint64_t rip_auto_context_draw_lines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  if (!a1)
  {
    v10 = 120;
    pthread_mutex_lock(0x78);
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 288);
  v10 = v9 + 120;
  pthread_mutex_lock((v9 + 120));
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = *(v9 + 88);
  if (!v11)
  {
    v11 = *(v9 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v9, a3);
  v12 = *(v9 + 112);
  v13 = *(a3 + 120);
  if (*(v13 + 48) >= v12)
  {
    v12 = *(v13 + 48);
  }

  *(v9 + 112) = v12;
  if (v11)
  {
    CGContextDelegateDrawLines(*(v11 + 40), a2, a3, a4, a5);
    *(v9 + 105) |= rip_auto_context_contains_transparency(v9, v14, v15, v16, v17, v18, v19, v20);
  }

  return pthread_mutex_unlock(v10);
}

double rip_auto_context_get_bounds(uint64_t a1)
{
  if (!a1)
  {
    v2 = 120;
    pthread_mutex_lock(0x78);
    goto LABEL_9;
  }

  v1 = *(a1 + 288);
  v2 = v1 + 120;
  pthread_mutex_lock((v1 + 120));
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 88);
  if (!v3)
  {
    v3 = *(v1 + 80);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    v7 = 0x7FF0000000000000;
    goto LABEL_10;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
LABEL_9:
    v7 = 0xFFDFFFFFFFFFFFFFLL;
LABEL_10:
    v6 = *&v7;
    goto LABEL_11;
  }

  v6 = v5();
LABEL_11:
  pthread_mutex_unlock(v2);
  return v6;
}

uint64_t rip_auto_context_get_transform@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 288);
  }

  else
  {
    v3 = 0;
  }

  *a2 = CGAffineTransformIdentity;
  pthread_mutex_lock((v3 + 120));
  if (v3)
  {
    v4 = *(v3 + 88);
    if (v4 || (v4 = *(v3 + 80)) != 0)
    {
      v5 = *(v4 + 40);
      if (v5 && (v6 = *(v5 + 40)) != 0)
      {
        v6();
      }

      else
      {
        *a2 = CGAffineTransformIdentity;
      }
    }
  }

  return pthread_mutex_unlock((v3 + 120));
}

uint64_t SimpleFont::emit_definitions(uint64_t this)
{
  v1 = *(this + 64);
  v2 = *(this + 72);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 16))(v3);
  }

  return this;
}

void SimpleFont::emit_references(SimpleFont *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 8);
  for (i = *(this + 9); v8 != i; ++v8)
  {
    v10 = *v8;
    if (*(*v8 + 104))
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }

      PDFDocumentPrintNameReferencePair(**(*(v10 + 8) + 8), "/%N %R", v11, *(v10 + 48), a5, a6, a7, a8);
    }
  }
}

void SimpleFont::add_glyphs_to_layout(SimpleFont *this, uint64_t a2, unsigned __int16 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (*a3 != a3[1])
  {
    while (1)
    {
      v11 = v8;
      v12 = *v8++;
      for (i = SimpleFont::get_subset_for_glyph(this, v12, a3, a4, a5, a6, a7, a8); v8 != a3[1]; ++v8)
      {
        if (SimpleFont::get_subset_for_glyph(this, *v8, a3, a4, a5, a6, a7, a8) != i)
        {
          break;
        }
      }

      if (i)
      {
        break;
      }

      if (v8 == a3[1])
      {
        return;
      }
    }

    if (v11 != v8)
    {
      std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((i + 88), *v11);
      operator new();
    }

    __break(1u);
  }
}

void sub_1840449E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *SimpleFont::get_subset_for_glyph(SimpleFont *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  v11 = (this + 96);
  v10 = *(this + 12);
  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = (this + 96);
  do
  {
    v13 = *(v10 + 16);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v10;
    }

    v10 = v10[v15];
  }

  while (v10);
  if (v12 == v11 || *(v12 + 16) > a2)
  {
LABEL_10:
    v16 = *(this + 8);
    v17 = *(this + 9);
    if (v16 == v17)
    {
      v18 = (*(*this + 48))(this, 1);
      v19 = v18;
      v21 = *(this + 9);
      v20 = *(this + 10);
      if (v21 >= v20)
      {
        v23 = *(this + 8);
        v24 = (v21 - v23) >> 3;
        if ((v24 + 1) >> 61)
        {
          goto LABEL_58;
        }

        v25 = v20 - v23;
        v26 = v25 >> 2;
        if (v25 >> 2 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v27);
        }

        v28 = (8 * v24);
        *v28 = v19;
        v17 = 8 * v24 + 8;
        v29 = *(this + 8);
        v30 = *(this + 9) - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = *(this + 8);
        *(this + 8) = v31;
        *(this + 9) = v17;
        *(this + 10) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v21 = v18;
        v17 = (v21 + 1);
      }

      *(this + 9) = v17;
      v16 = *(this + 8);
    }

    if (v16 != v17)
    {
      if (FontSubset::add_glyph(*v16, a2))
      {
        if (*(this + 8) != *(this + 9))
        {
          goto LABEL_48;
        }

        goto LABEL_56;
      }

      v34 = *(this + 8);
      v33 = *(this + 9);
      if ((v33 - v34) < 9)
      {
LABEL_34:
        v35 = (*(*this + 48))(this, 0);
        if ((FontSubset::add_glyph(v35, a2) & 1) == 0)
        {
          goto LABEL_57;
        }

        v37 = *(this + 9);
        v36 = *(this + 10);
        if (v37 < v36)
        {
          *v37 = v35;
          v38 = (v37 + 1);
LABEL_47:
          *(this + 9) = v38;
LABEL_48:
          v48 = *v11;
          if (!*v11)
          {
LABEL_54:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v12 = v48;
              v49 = *(v48 + 16);
              if (v49 <= a2)
              {
                break;
              }

              v48 = *v12;
              if (!*v12)
              {
                goto LABEL_54;
              }
            }

            if (v49 >= a2)
            {
              return v12[5];
            }

            v48 = v12[1];
            if (!v48)
            {
              goto LABEL_54;
            }
          }
        }

        v39 = *(this + 8);
        v40 = (v37 - v39) >> 3;
        if (!((v40 + 1) >> 61))
        {
          v41 = v36 - v39;
          v42 = v41 >> 2;
          if (v41 >> 2 <= (v40 + 1))
          {
            v42 = v40 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v43 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v43);
          }

          *(8 * v40) = v35;
          v38 = 8 * v40 + 8;
          v44 = *(this + 8);
          v45 = *(this + 9) - v44;
          v46 = (8 * v40 - v45);
          memcpy(v46, v44, v45);
          v47 = *(this + 8);
          *(this + 8) = v46;
          *(this + 9) = v38;
          *(this + 10) = 0;
          if (v47)
          {
            operator delete(v47);
          }

          goto LABEL_47;
        }

LABEL_58:
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      if (v34 != v33)
      {
        if (FontSubset::add_glyph(*(v33 - 8), a2))
        {
          if (*(this + 8) != *(this + 9))
          {
            goto LABEL_48;
          }

          goto LABEL_56;
        }

        goto LABEL_34;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    _CGHandleAssert("add_glyph", 65, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Fonts/SimpleFont.cc", "subset->add_glyph(glyph)", "glyph addition failed", a6, a7, a8, v50);
  }

  return v12[5];
}

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 26);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t SimpleFont::SimpleFont(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4)
{
  *a1 = &unk_1EF23EF78;
  *(a1 + 8) = a2;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 16) = cf;
  *(a1 + 24) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *a1 = &unk_1EF238718;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  return a1;
}

void SimpleFont::~SimpleFont(SimpleFont *this)
{
  *this = &unk_1EF238718;
  v2 = *(this + 8);
  v3 = *(this + 9);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  std::__tree<unsigned long>::destroy(*(this + 12));
  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  PDFFont::~PDFFont(this);
}

void *PDFWriterCreate(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040D897577FuLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    if (a1)
    {
      CFRetain(a1);
      *v2 = a1;
      v2[1] = 0;
      v2[3] = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void PDFWriterPrintf(_BYTE **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    PDFWriterVPrintf(a1, a2, &a9, a4, a5, a6, a7, a8);
  }
}

void PDFWriterVPrintf(_BYTE **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v361 = a3;
  if (a1)
  {
    v8 = a2;
    v10 = *a1;
    if (a1[3] > 0x48 || *(a1 + 16) == 1)
    {
      emit_whitespace(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v360 = 0;
    v11 = *MEMORY[0x1E695E480];
    v358 = *MEMORY[0x1E695E480];
    bytesDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      while (1)
      {
        v12 = *v8;
        if (v12 > 0x1F)
        {
          break;
        }

        if (v12 == 10)
        {
          *(a1 + 17) = 0;
          emit_newline(a1, a2, a3, a4, a5, a6, a7, a8);
          ++v8;
        }

        else
        {
          if (!*v8)
          {
            return;
          }

LABEL_15:
          v360 = *v8;
          a1[3] += CGDataConsumerPutBytes(v10, &v360, 1);
          *(a1 + 16) = 1;
          ++v8;
        }
      }

      if (v12 == 32)
      {
        emit_whitespace(a1, a2, a3, a4, a5, a6, a7, a8);
        ++v8;
      }

      else
      {
        if (v12 != 37)
        {
          goto LABEL_15;
        }

        v13 = v8[1];
        if (v13 == 42)
        {
          v14 = v8[2];
          v8 += 3;
        }

        else
        {
          v8 += 2;
          v14 = v13;
        }

        if (v14 > 84)
        {
          if (v14 <= 101)
          {
            if (v14 > 97)
            {
              if (v14 != 98)
              {
                if (v14 == 99)
                {
                  v157 = v361;
                  v361 += 8;
                  v38 = CGDataConsumerPrintf(v10, "%c", a3, a4, a5, a6, a7, a8, *v157);
                  goto LABEL_133;
                }

                if (v14 == 100)
                {
                  v27 = v361;
                  v361 += 8;
                  LODWORD(v27) = *v27;
                  goto LABEL_44;
                }

                goto LABEL_105;
              }

              v162 = v361;
              v361 += 8;
              if (*v162)
              {
                v163 = "true";
              }

              else
              {
                v163 = "false";
              }

              v164 = v10;
LABEL_78:
              v38 = CGDataConsumerPrintf(v164, v163, a3, a4, a5, a6, a7, a8, v328);
              goto LABEL_133;
            }

            if (v14 != 85)
            {
              if (v14 == 88)
              {
                v59 = v361;
                v361 += 8;
                v60 = *v59;
                v361 = v59 + 16;
                v66 = CFDataCreateWithBytesNoCopy(v11, *(v59 + 1), v60, bytesDeallocator);
                v67 = a1;
                v68 = v66;
                v69 = 1;
                goto LABEL_70;
              }

              goto LABEL_105;
            }

            v249 = v361;
            v361 += 8;
            v250 = CFURLCopyAbsoluteURL(*v249);
            if (v250)
            {
              v66 = v250;
              v251 = CFURLCreateData(v11, v250, 0x8000100u, 0);
              v26 = print_data(a1, v251, 0, v252, v253, v254, v255, v256, v328);
              if (v251)
              {
                CFRelease(v251);
              }

LABEL_72:
              CFRelease(v66);
              goto LABEL_134;
            }

LABEL_132:
            v38 = print_data(a1, 0, 0, a4, a5, a6, a7, a8, v328);
            goto LABEL_133;
          }

          if (v14 <= 113)
          {
            if (v14 == 102)
            {
              v258 = v361;
              v361 += 8;
              v38 = PDFWriteNumber(v10, *v258, a2, a3, a4, a5, a6, a7, a8, v328);
              goto LABEL_133;
            }

            if (v14 != 109)
            {
              goto LABEL_105;
            }

            v71 = v361;
            v361 += 8;
            v72 = *v71;
            v73 = *a1;
            if (v13 != 42)
            {
              CGDataConsumerPrintf(v73, "[", a3, a4, a5, a6, a7, a8, v328);
              v73 = *a1;
            }

            v74 = PDFWriteNumber(v73, *v72, a2, a3, a4, a5, a6, a7, a8, v328);
            v81 = &v74[CGDataConsumerPrintf(*a1, " ", v75, v76, v77, v78, v79, v80, v329)];
            v89 = PDFWriteNumber(*a1, v72[1], v82, v83, v84, v85, v86, v87, v88, v330);
            v96 = &v81[&CGDataConsumerPrintf(*a1, " ", v90, v91, v92, v93, v94, v95, v331)[v89]];
            v104 = PDFWriteNumber(*a1, v72[2], v97, v98, v99, v100, v101, v102, v103, v332);
            v111 = &CGDataConsumerPrintf(*a1, " ", v105, v106, v107, v108, v109, v110, v333)[v104];
            v119 = &v96[&PDFWriteNumber(*a1, v72[3], v112, v113, v114, v115, v116, v117, v118, v334)[v111]];
            v126 = CGDataConsumerPrintf(*a1, " ", v120, v121, v122, v123, v124, v125, v335);
            v134 = &PDFWriteNumber(*a1, v72[4], v127, v128, v129, v130, v131, v132, v133, v336)[v126];
            v141 = &CGDataConsumerPrintf(*a1, " ", v135, v136, v137, v138, v139, v140, v337)[v134];
            v26 = &v119[&PDFWriteNumber(*a1, v72[5], v142, v143, v144, v145, v146, v147, v148, v338)[v141]];
            if (v13 != 42)
            {
              v26 = &v26[CGDataConsumerPrintf(*a1, "]", a3, a4, a5, a6, a7, a8, v328)];
            }
          }

          else
          {
            if (v14 != 114)
            {
              if (v14 == 115)
              {
                v159 = v361;
                v361 += 8;
                v38 = CGDataConsumerPrintf(v10, "%s", a3, a4, a5, a6, a7, a8, *v159);
                goto LABEL_133;
              }

              if (v14 == 122)
              {
                v37 = v361;
                v361 += 8;
                v27 = *v37;
LABEL_44:
                v38 = CGDataConsumerPrintf(v10, "%d", a3, a4, a5, a6, a7, a8, v27);
LABEL_133:
                v26 = v38;
                goto LABEL_134;
              }

LABEL_105:
              v360 = v14;
              goto LABEL_106;
            }

            v166 = v361;
            v361 += 8;
            v167 = *v166;
            if (v167[1] == INFINITY || *v167 == INFINITY)
            {
              v169 = &CGRectZero;
            }

            else
            {
              v169 = v167;
            }

            v170 = *a1;
            if (v13 == 42)
            {
              x = v169->origin.x;
              width = v169->size.width;
              height = v169->size.height;
              if (width < 0.0 || height < 0.0)
              {
                y = v169->origin.y;
                *&x = CGRectStandardize(*&x);
              }

              v357 = PDFWriteNumber(v170, x, a2, a3, a4, a5, a6, a7, a8, v328);
              v355 = CGDataConsumerPrintf(*a1, " ", v263, v264, v265, v266, v267, v268, v347);
              v276 = *a1;
              v277 = v169->origin.y;
              v278 = v169->size.width;
              v279 = v169->size.height;
              if (v278 < 0.0 || v279 < 0.0)
              {
                v280 = v169->origin.x;
                *(&v277 - 1) = CGRectStandardize(*(&v277 - 1));
              }

              v281 = PDFWriteNumber(v276, v277, v269, v270, v271, v272, v273, v274, v275, v348);
              v295 = CGDataConsumerPrintf(*a1, " ", v282, v283, v284, v285, v286, v287, v349);
              v296 = *a1;
              v297 = v169->size.width;
              v298 = v169->size.height;
              if (v297 < 0.0 || v298 < 0.0)
              {
                v299 = v169->origin.x;
                v300 = v169->origin.y;
                *(&v297 - 2) = CGRectStandardize(*(&v297 - 2));
              }

              v301 = PDFWriteNumber(v296, v297, v288, v289, v290, v291, v292, v293, v294, v350);
              v315 = CGDataConsumerPrintf(*a1, " ", v302, v303, v304, v305, v306, v307, v351);
              v316 = *a1;
              v317 = v169->size.width;
              v318 = v169->size.height;
              if (v317 < 0.0 || v318 < 0.0)
              {
                v319 = v169->origin.x;
                v320 = v169->origin.y;
                *(&v318 - 3) = CGRectStandardize(*(&v317 - 2));
              }

              v26 = &v357[v355 + &v295[v281] + &v315[v301] + PDFWriteNumber(v316, v318, v308, v309, v310, v311, v312, v313, v314, v352)];
            }

            else
            {
              v356 = CGDataConsumerPrintf(*a1, "[", a3, a4, a5, a6, a7, a8, v328);
              v178 = *a1;
              v179 = v169->origin.x;
              v180 = v169->size.width;
              v181 = v169->size.height;
              if (v180 < 0.0 || v181 < 0.0)
              {
                v182 = v169->origin.y;
                *&v179 = CGRectStandardize(*&v179);
              }

              v354 = PDFWriteNumber(v178, v179, v171, v172, v173, v174, v175, v176, v177, v339);
              v353 = CGDataConsumerPrintf(*a1, " ", v183, v184, v185, v186, v187, v188, v340);
              v196 = *a1;
              v197 = v169->origin.y;
              v198 = v169->size.width;
              v199 = v169->size.height;
              if (v198 < 0.0 || v199 < 0.0)
              {
                v200 = v169->origin.x;
                *(&v197 - 1) = CGRectStandardize(*(&v197 - 1));
              }

              v201 = PDFWriteNumber(v196, v197, v189, v190, v191, v192, v193, v194, v195, v341);
              v215 = CGDataConsumerPrintf(*a1, " ", v202, v203, v204, v205, v206, v207, v342);
              v216 = *a1;
              v217 = v169->origin.x;
              v218 = v169->size.width;
              v219 = v169->size.height;
              if (v218 < 0.0 || v219 < 0.0)
              {
                v220 = v169->origin.y;
                *&v217 = CGRectStandardize(*&v217);
              }

              v221 = PDFWriteNumber(v216, v217 + v218, v208, v209, v210, v211, v212, v213, v214, v343);
              v235 = CGDataConsumerPrintf(*a1, " ", v222, v223, v224, v225, v226, v227, v344);
              v236 = *a1;
              v237 = v169->origin.y;
              v238 = v169->size.width;
              v239 = v169->size.height;
              if (v238 < 0.0 || v239 < 0.0)
              {
                v240 = v169->origin.x;
                *(&v237 - 1) = CGRectStandardize(*(&v237 - 1));
              }

              v241 = &v354[&v353[v356] + &v215[v201] + v235 + v221];
              v242 = PDFWriteNumber(v236, v237 + v239, v228, v229, v230, v231, v232, v233, v234, v345);
              v26 = &v241[&CGDataConsumerPrintf(*a1, "]", v243, v244, v245, v246, v247, v248, v346)[v242]];
            }

            v11 = v358;
          }
        }

        else
        {
          if (v14 > 77)
          {
            if (v14 <= 81)
            {
              if (v14 == 78)
              {
                v257 = v361;
                v361 += 8;
                v38 = print_name(a1, *v257, a3, a4, a5, a6, a7, a8);
                goto LABEL_133;
              }

              if (v14 == 79)
              {
                v70 = v361;
                v361 += 8;
                v38 = CGDataConsumerPrintf(v10, "%llu", a3, a4, a5, a6, a7, a8, *v70);
                goto LABEL_133;
              }

              goto LABEL_105;
            }

            if (v14 == 82)
            {
              v165 = v361;
              v361 += 8;
              v328 = *v165;
              v164 = v10;
              v163 = "%lu 0 R";
              goto LABEL_78;
            }

            if (v14 == 83)
            {
              v158 = v361;
              v361 += 8;
              v38 = print_ascii_string(a1, *v158, a3, a4, a5, a6, a7, a8, v328);
              goto LABEL_133;
            }

            v28 = v361;
            v361 += 8;
            v29 = *v28;
            if (*v28)
            {
              ExternalRepresentation = CFStringCreateExternalRepresentation(v11, *v28, 0x600u, 0);
              if (ExternalRepresentation)
              {
                v36 = ExternalRepresentation;
LABEL_38:
                v26 = print_data(a1, v36, 0, v31, v32, v33, v34, v35, v328);
                CFRelease(v36);
                goto LABEL_134;
              }

              Length = CFStringGetLength(v29);
              if (Length)
              {
                v322 = Length;
                v323 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
                if (v323)
                {
                  v324 = v323;
                  v363.location = 0;
                  v363.length = v322;
                  CFStringGetCharacters(v29, v363, v323);
                  Mutable = CFDataCreateMutable(v11, 0);
                  if (Mutable)
                  {
                    v36 = Mutable;
                    *bytes = -2;
                    CFDataAppendBytes(Mutable, bytes, 2);
                    if (v322 >= 1)
                    {
                      v326 = v324;
                      do
                      {
                        v327 = *v326++;
                        *bytes = bswap32(v327) >> 16;
                        CFDataAppendBytes(v36, bytes, 2);
                        --v322;
                      }

                      while (v322);
                    }

                    free(v324);
                    goto LABEL_38;
                  }

                  free(v324);
                }
              }
            }

            goto LABEL_132;
          }

          if (v14 <= 64)
          {
            if (v14 == 37)
            {
              v360 = 37;
              *(a1 + 17) = 1;
LABEL_106:
              v38 = CGDataConsumerPutBytes(v10, &v360, 1);
              goto LABEL_133;
            }

            if (v14 != 47)
            {
              goto LABEL_105;
            }

            v39 = v361;
            v361 += 8;
            v40 = *v39;
            v41 = CFStringGetLength(*v39);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v41, 0x8000100u);
            v43 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x5C26AC41uLL);
            if (v43)
            {
              v44 = v43;
              if (CFStringGetCString(v40, v43, MaximumSizeForEncoding + 1, 0x8000100u))
              {
                v57 = CGDataConsumerPrintf(*a1, "/", v45, v46, v47, v48, v49, v50, v328);
                if (v13 == 42)
                {
                  v58 = v44;
                }

                else
                {
                  v58 = v44 + 1;
                }

                v26 = &v57[print_name(a1, v58, v51, v52, v53, v54, v55, v56)];
              }

              else
              {
                v26 = 0;
              }

              free(v44);
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            if (v14 == 65)
            {
              v160 = v361;
              v361 += 8;
              v161 = *v160;
              v361 = v160 + 16;
              v66 = CFDataCreateWithBytesNoCopy(v11, *(v160 + 1), v161, bytesDeallocator);
              v67 = a1;
              v68 = v66;
              v69 = 0;
LABEL_70:
              v156 = print_data(v67, v68, v69, v61, v62, v63, v64, v65, v328);
LABEL_71:
              v26 = v156;
              if (!v66)
              {
                goto LABEL_134;
              }

              goto LABEL_72;
            }

            if (v14 == 68)
            {
              v149 = v361;
              v361 += 8;
              v66 = PDFCreateDateString(*v149);
              v156 = print_ascii_string(a1, v66, v150, v151, v152, v153, v154, v155, v328);
              goto LABEL_71;
            }

            if (v14 != 71)
            {
              goto LABEL_105;
            }

            v15 = v361;
            v361 += 8;
            v16 = *v15;
            v361 = v15 + 16;
            v17 = *(v15 + 1);
            for (i = CGDataConsumerPutBytes(v10, "<", 1); v16; --v16)
            {
              v25 = *v17++;
              i += CGDataConsumerPrintf(v10, "%04x", v18, v19, v20, v21, v22, v23, v25);
            }

            v26 = (CGDataConsumerPutBytes(v10, ">", 1) + i);
          }
        }

LABEL_134:
        a1[3] = &v26[a1[3]];
        *(a1 + 16) = 1;
      }
    }
  }
}

_BYTE *emit_whitespace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) < 0x49uLL)
  {
    result = CGDataConsumerPrintf(*a1, " ", a3, a4, a5, a6, a7, a8, v10);
    *(a1 + 24) += result;
    *(a1 + 16) = 0;
  }

  else
  {

    return emit_newline(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

_BYTE *print_ascii_string(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a1;
  if (a2)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], a2, 0x600u, 0);
    if (ExternalRepresentation)
    {
      v16 = ExternalRepresentation;
      v17 = print_data(v9, ExternalRepresentation, 0, v11, v12, v13, v14, v15, v19);
      CFRelease(v16);
      return v17;
    }

    pdf_error("Warning: can't convert string to ASCII.");
    a1 = v9;
  }

  return print_data(a1, 0, 0, a4, a5, a6, a7, a8, a9);
}

uint64_t print_name(_BYTE **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; ; i += v15)
  {
    v12 = *a2++;
    v11 = v12;
    if (v12 <= 0x3E)
    {
      if (((1 << v11) & 0x5000832800000000) != 0)
      {
        goto LABEL_9;
      }

      if (!v11)
      {
        break;
      }
    }

    if ((v11 - 91) <= 0x22 && ((1 << (v11 - 91)) & 0x500000005) != 0)
    {
LABEL_9:
      v14 = *a1;
LABEL_10:
      v15 = CGDataConsumerPrintf(v14, "#%02x", a3, a4, a5, a6, a7, a8, v11);
      continue;
    }

    v14 = *a1;
    if ((v11 - 127) <= 0xFFFFFFA1)
    {
      goto LABEL_10;
    }

    v15 = CGDataConsumerPrintf(v14, "%c", a3, a4, a5, a6, a7, a8, v11);
  }

  return i;
}

_BYTE *print_data(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = theData;
  v12 = *(a1 + 8);
  if (v12)
  {
    if (theData)
    {
      v13 = *(*v12 + 280);
      if (v13)
      {
        Length = CFDataGetLength(theData);
        Value = CFDictionaryGetValue(*(v12 + 16), @"kCGPDFContextEncryptionCipher");
        if (Value && ((v16 = Value, CFEqual(Value, @"kCGPDFContextEncryptionCipherAESv2")) || CFEqual(v16, @"kCGPDFContextEncryptionCipherAESv3")))
        {
          v17 = Length + 32;
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v17 = Length;
        }

        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v17);
        if (Mutable)
        {
          v21 = Mutable;
          v35 = Length;
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          v23 = MutableBytePtr;
          if (v18)
          {
            *MutableBytePtr = *(v12 + 108);
            v23 = MutableBytePtr + 16;
            v17 -= 16;
            v24 = 16;
          }

          else
          {
            v24 = 0;
          }

          pdf_cryptor = get_pdf_cryptor(v12, v13);
          v36 = 0;
          BytePtr = CFDataGetBytePtr(v10);
          CGCryptorProcessBytes(pdf_cryptor, BytePtr, v35, v23, v17, &v36);
          v28 = v36 + v24;
          if (v18)
          {
            CGCryptorDrain(pdf_cryptor, &v23[v36], v17 - v36, &v36);
            v28 += v36;
          }

          CFDataSetLength(v21, v28);
          CGCryptorRelease(pdf_cryptor);
          v34 = PDFWriteCFData(*a1, v21, a3, v29, v30, v31, v32, v33, v35);
          CFRelease(v21);
          return v34;
        }
      }
    }

    v19 = *a1;
    theData = 0;
  }

  else
  {
    v19 = *a1;
  }

  return PDFWriteCFData(v19, theData, a3, a4, a5, a6, a7, a8, a9);
}

_BYTE *emit_newline(_BYTE **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = CGDataConsumerPrintf(*a1, "\n", a3, a4, a5, a6, a7, a8, v16);
  if (*(a1 + 17) == 1)
  {
    result = CGDataConsumerPrintf(*a1, "%%%% ", v10, v11, v12, v13, v14, v15, v17);
  }

  *(a1 + 16) = 0;
  a1[3] = 0;
  return result;
}

uint64_t *PDFWriterBeginObject(uint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = a2;
    v10 = result;
    if (result[3])
    {
      emit_newline(result, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = *v10;
    if (a3)
    {
      if (v11)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      *a3 = v12;
    }

    return CGDataConsumerPrintf(v11, "%lu 0 obj\n", a3, a4, a5, a6, a7, a8, v9);
  }

  return result;
}

_BYTE *PDFWriterEndObject(_BYTE *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = result;
    if (*(result + 3))
    {
      emit_newline(result, a2, a3, a4, a5, a6, a7, a8);
    }

    result = CGDataConsumerPrintf(*v9, "endobj\n", a3, a4, a5, a6, a7, a8, v11);
    if (a2)
    {
      v10 = *v9;
      if (*v9)
      {
        v10 = *(v10 + 48);
      }

      *a2 = v10;
    }
  }

  return result;
}

void PDFWriterAnnotate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if ((didHandleDefaults & 1) == 0)
    {
      pthread_once(&once_16914, handleDefaults);
    }

    if (shouldAnnotate == 1)
    {
      if (*(a1 + 24))
      {
        PDFWriterPrintf(a1, "\n", a3, a4, a5, a6, a7, a8, v22);
      }

      PDFWriterPrintf(a1, "%%%% ", a3, a4, a5, a6, a7, a8, v22);
      PDFWriterVPrintf(a1, a2, &a9, v11, v12, v13, v14, v15);
      PDFWriterPrintf(a1, "\n", v16, v17, v18, v19, v20, v21, v23);
    }
  }
}

__CFString *color_copy_format_description(unint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<CGColor %p> ", a1);
  if (a1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(a1, v4, v5, v6, v7, v8, v9, v10);
    }

    else
    {
      ColorSpace = *(a1 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  v12 = CFCopyDescription(ColorSpace);
  if (v12)
  {
    v13 = v12;
    CFStringAppend(Mutable, @"[");
    CFStringAppend(Mutable, v13);
    CFStringAppend(Mutable, @"] ");
    CFRelease(v13);
  }

  if (CGColorSpaceGetModel(*(a1 + 24)) == kCGColorSpaceModelRGB)
  {
    v14 = *(a1 + 64);
    if (v14 == 0.0)
    {
      CFStringAppend(Mutable, @"headroom unknown ");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"headroom = %f ", v14);
    }
  }

  CFStringAppend(Mutable, @"( ");
  Components = CGColorGetComponents(a1);
  v23 = 0;
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((a1 & 0x8000000000000000) != 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(a1, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    NumberOfComponents = *(a1 + 56);
  }

  while (v23 < NumberOfComponents)
  {
    CFStringAppendFormat(Mutable, 0, @"%g ", *&Components[v23++]);
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_15:
    NumberOfComponents = 0;
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

CGColorSpaceRef CGTaggedColorGetColorSpace(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *MEMORY[0x1E69E5910];
  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v9 = 7;
  }

  else
  {
    v9 = *MEMORY[0x1E69E5910];
  }

  v10 = v9 ^ a1;
  if ((v10 & 0x18) == 8)
  {
    v11 = (v10 >> 5) & 0x3F;
    v12 = 0;
    switch(v11)
    {
      case 0:
        return v12;
      case 1:
        goto LABEL_16;
      case 2:
        goto LABEL_17;
      case 4:
        goto LABEL_12;
      case 5:
        goto LABEL_15;
      case 7:
        v13 = @"kCGColorSpaceSRGB";
        goto LABEL_18;
      case 8:
        v13 = @"kCGColorSpaceAdobeRGB1998";
        goto LABEL_18;
      case 9:
        v13 = @"kCGColorSpaceGenericGrayGamma2_2";
        goto LABEL_18;
      case 12:
        v13 = @"kCGColorSpaceDisplayP3";
        goto LABEL_18;
      case 13:
        v13 = @"kCGColorSpaceDCIP3";
        goto LABEL_18;
      case 14:
        v13 = @"kCGColorSpaceExtendedSRGB";
        goto LABEL_18;
      case 15:
        v13 = @"kCGColorSpaceExtendedGray";
        goto LABEL_18;
      case 16:
        v13 = @"kCGColorSpaceLinearSRGB";
        goto LABEL_18;
      case 17:
        v13 = @"kCGColorSpaceExtendedLinearSRGB";
        goto LABEL_18;
      default:
        _CGHandleAssert("CGTaggedColorGetColorSpace", 36, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointerInternal.h", "0", "Unexpected color space %d", a6, a7, a8, v11);
    }
  }

  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v8 = 0;
  }

  v14 = v8 ^ a1;
  v15 = ((v8 ^ a1) >> 3) & 3;
  if (v15)
  {
    _CGHandleAssert("CGTaggedColorGetPlainSpace", 348, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointer.h", "TAGGED_PAYLOAD_COLOR_TYPE(payload) == kCGTaggedColorTypePlain", "invalid tagged color payload %llu", a6, a7, a8, v15);
  }

  v16 = (v14 >> 5) & 0x3F;
  if (v16 <= 1)
  {
    if (v16)
    {
LABEL_12:
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      goto LABEL_19;
    }

LABEL_16:
    v13 = @"kCGColorSpaceGenericRGB";
    goto LABEL_18;
  }

  if (v16 == 2)
  {
LABEL_17:
    v13 = @"kCGColorSpaceGenericGray";
LABEL_18:
    DeviceRGB = CGColorSpaceCreateWithName(v13);
    goto LABEL_19;
  }

  if (v16 != 3)
  {
    _CGHandleAssert("CGTaggedColorGetColorSpace", 45, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointerInternal.h", "0", "Unexpected color space %d", a6, a7, a8, (v10 >> 5) & 0x3F);
  }

LABEL_15:
  DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_19:
  v12 = DeviceRGB;
  if (DeviceRGB)
  {
    CFAutorelease(DeviceRGB);
  }

  return v12;
}

uint64_t CGTaggedColorGetNumberOfComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    LOWORD(v8) = 7;
  }

  v9 = (v8 ^ a1) >> 11;
  if (v9 >= 0x10 || ((0xFF0Fu >> v9) & 1) == 0)
  {
    _CGHandleAssert("CGTaggedColorGetNumberOfComponents", 376, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointer.h", "0", "invalid tagged payload storage flavor (%u)", a6, a7, a8, v9);
  }

  return qword_1844D5060[v9];
}

double CGTaggedColorGetComponents(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v8 = 0;
  }

  v9 = v8 ^ a1;
  v10 = (v8 ^ a1) >> 3;
  _ZF = (~(v8 ^ a1) & 7) == 0;
  v12 = 0xFFFFFFFFFF00000;
  if (_ZF)
  {
    v12 = 0xFFFFFFFF00000;
  }

  v13 = v12 & (v9 >> 3);
  v14 = v13 >> 20;
  v15 = (v10 >> 8) & 0x1F;
  if (v15 > 9)
  {
    if (v15 <= 12)
    {
      if (v15 == 10)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        result = *&v14 / 100.0;
        *(a2 + 16) = 0;
      }

      else
      {
        if (v15 != 11)
        {
          result = *&v14 / 100.0;
          *a2 = result;
          *(a2 + 8) = 0;
          return result;
        }

        *(a2 + 16) = 0x3FF0000000000000;
        __asm { FMOV            V0.2D, #1.0 }

        *a2 = _Q0;
        result = *&v14 / 100.0;
      }

LABEL_29:
      *(a2 + 24) = result;
      return result;
    }

    switch(v15)
    {
      case 13:
        result = *&v14 / 100.0;
        *a2 = result;
        *(a2 + 8) = 0x3FF0000000000000;
        return result;
      case 14:
        *a2 = 0;
        break;
      case 15:
        *a2 = 0x3FF0000000000000;
        break;
      default:
        goto LABEL_33;
    }

    result = *&v14 / 100.0;
    *(a2 + 8) = result;
  }

  else
  {
    if (v15 <= 2)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          result = (v9 >> 39) / 65535.0;
          *a2 = result;
          *(a2 + 8) = result;
          *(a2 + 16) = result;
          *(a2 + 24) = (v13 >> 20) / 65535.0;
          return result;
        }

        v19 = (v13 >> 20);
        v20 = (v9 >> 39);
        v21 = 65535.0;
        goto LABEL_27;
      }

      *a2 = BYTE3(v14) / 255.0;
      v17 = vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(v9), xmmword_18439C7F0)), 0xFF000000FFLL);
      v18.i64[0] = v17.u32[0];
      v18.i64[1] = v17.u32[1];
      *(a2 + 8) = vdivq_f64(vcvtq_f64_u64(v18), vdupq_n_s64(0x406FE00000000000uLL));
      result = (v13 >> 20) / 255.0;
      goto LABEL_29;
    }

    if (v15 == 3)
    {
      v19 = (v13 >> 20);
      v20 = (v9 >> 39);
      v21 = 100.0;
LABEL_27:
      result = v20 / v21;
      *a2 = result;
      *(a2 + 8) = v19 / v21;
      return result;
    }

    if (v15 != 8)
    {
      if (v15 == 9)
      {
        result = *&v14 / 100.0;
        *(a2 + 8) = result;
        *(a2 + 16) = result;
        *a2 = result;
        *(a2 + 24) = 0x3FF0000000000000;
        return result;
      }

LABEL_33:
      _CGHandleAssert("CGTaggedColorGetComponents", 459, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTaggedPointer.h", "0", "invalid tagged payload storage flavor (%u)", a6, a7, a8, v15);
    }

    result = *&v14 / 100.0;
    *(a2 + 8) = result;
    *(a2 + 16) = result;
    *a2 = result;
    *(a2 + 24) = 0;
  }

  return result;
}

os_log_t __CGTaggedColorCreate_block_invoke()
{
  result = os_log_create("com.apple.coregraphics", "color");
  CGTaggedColorCreate_log = result;
  return result;
}

CGColorRef CGColorCreateGenericCMYK(CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha)
{
  v19 = *MEMORY[0x1E69E9840];
  components[0] = cyan;
  components[1] = magenta;
  v16 = yellow;
  v17 = black;
  v18 = alpha;
  v5 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  v6 = CGColorCreate(v5, components);
  CGColorSpaceRelease(v5);
  if (!v6)
  {
    CGPostError("Color creation failed for CMYK colorspace %p, {%f, %f, %f %f, %f}", v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return v6;
}

CGColorRef CGColorCreateCopy(CGColorRef color)
{
  if (color)
  {
    CFRetain(color);
  }

  return color;
}

double CGTaggedColorGetAlpha(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = *MEMORY[0x1E69E9840];
  NumberOfComponents = CGTaggedColorGetNumberOfComponents(a1, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1EEE9AC00](NumberOfComponents, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11);
  CGTaggedColorGetComponents(a1, v12, v13, v14, v15, v16, v17, v18);
  return *&v12[8 * NumberOfComponents - 8];
}

CGFloat CGColorGetAlpha(CGColorRef color)
{
  if (!color)
  {
    return 0.0;
  }

  if ((color & 0x8000000000000000) != 0)
  {
    return CGTaggedColorGetAlpha(color, v1, v2, v3, v4, v5, v6, v7);
  }

  return *(color + *(color + 7) + 8);
}

void CGColorRelease(CGColorRef color)
{
  if (color)
  {
    CFRelease(color);
  }
}

uint64_t CGColorGetIdentifier(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return *(result + 16);
  }

  return result;
}

CGColorSpace *CGColorGetPatternBaseColor(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 185) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return *(a1 + 40);
  }

  result = CGColorSpaceGetBaseColorSpace(*(a1 + 24));
  if (result)
  {
    v4 = CGColorCreate(result, (a1 + 72));
    v5 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    if (v5)
    {
      if (v4)
      {
        CFRelease(v4);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

CFMutableDictionaryRef CGColorCopyPropertyList(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGColorContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
  }

  if (v2 != CGColorGetTypeID_color_type_id)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = CGColorSpaceCopyPropertyList(*(a1 + 24));
    if (!v4 || (v5 = v4, CFDictionarySetValue(Mutable, @"kCGColorSpace", v4), CFRelease(v5), CGCFDictionarySetFloat(Mutable, @"kCGColorContentHeadroom", *(a1 + 64)), (v6 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])) == 0) || (v7 = v6, CFDictionarySetValue(Mutable, @"kCGColorComponents", v6), CFRelease(v7), (v8 = *(a1 + 24)) == 0) || (v9 = *(*(v8 + 24) + 48)) == 0 || (Components = CGColorGetComponents(a1)) == 0)
    {
LABEL_16:
      CFRelease(Mutable);
      return 0;
    }

    if (v9 != -1)
    {
      v11 = Components;
      v12 = v9 + 1;
      while (1)
      {
        valuePtr = *v11;
        v13 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        CFArrayAppendValue(v7, v13);
        CFRelease(v14);
        ++v11;
        if (!--v12)
        {
          return Mutable;
        }
      }

      goto LABEL_16;
    }
  }

  return Mutable;
}

float *CGColorCreateWithPropertyList(const void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"kCGColorSpace");
  v4 = CGColorSpaceCreateWithPropertyList(Value);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(*(v4 + 3) + 48);
  v7 = CFDictionaryGetValue(a1, @"kCGColorComponents");
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == CFArrayGetTypeID() && (v10 = v6 + 1, CFArrayGetCount(v8) == v6 + 1))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *components = 0u;
      v19 = 0u;
      if (v6 != -1)
      {
        v11 = 0;
        v12 = components;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
          CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, v12);
          ++v11;
          ++v12;
        }

        while (v10 != v11);
      }

      v8 = CGColorCreate(v5, components);
      v17 = 0.0;
      Float = CGCFDictionaryGetFloat(a1, @"kCGColorContentHeadroom", &v17);
      v15 = v17;
      if (!Float)
      {
        v15 = 0.0;
      }

      v8[16] = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  CGColorSpaceRelease(v5);
  return v8;
}

uint64_t CGDisplayListEntryStateGetClipStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetClipStack", 20, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9 && !*(v9 + 8))
  {
    return MEMORY[0x10];
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetSoftMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetSoftMask", 34, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9 && (v10 = *(v9 + 16)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStyle", 48, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9 && (v10 = *(v9 + 24)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetBlackGeneration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetBlackGeneration", 62, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9 && (v10 = *(v9 + 32)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetUndercolorRemoval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetUndercolorRemoval", 76, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9 && (v10 = *(v9 + 40)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

double CGDisplayListEntryStateGetFlatness(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetFlatness", 90, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return *(v9 + 48);
  }

  else
  {
    return 0.0;
  }
}

double CGDisplayListEntryStateGetAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetAlpha", 100, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return *(v9 + 56);
  }

  else
  {
    return 1.0;
  }
}

uint64_t CGDisplayListEntryStateGetCompositeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetCompositeOperation", 110, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return ((*(v9 + 96) << 26) >> 26);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CGDisplayListEntryStateGetAntialias(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetAntialias", 120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return (*(v9 + 96) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetAlphaIsShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetAlphaIsShape", 130, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return *(v9 + 96) >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetColorRenderingIntent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetColorRenderingIntent", 140, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return ((*(v9 + 96) << 18) >> 26);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetFillOverprint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetFillOverprint", 150, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return (*(v9 + 97) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeOverprint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeOverprint", 160, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return *(v9 + 97) >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetOverprintMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetOverprintMode", 170, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    return *(v9 + 100);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetFillColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetFillColor", 181, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 56);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeColor", 196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

double CGDisplayListEntryStateGetStrokeWidth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeWidth", 210, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0.0;
  }
}

double CGDisplayListEntryStateGetStrokeWidthThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeWidthThreshold", 220, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    return *(v9 + 24);
  }

  else
  {
    return 0.0;
  }
}

double CGDisplayListEntryStateGetStrokeLimit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeLimit", 230, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    return *(v9 + 32);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeDash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeDash", 240, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9 && (v10 = *(v9 + 40)) != 0)
  {
    return *(v10 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetLineCap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetLineCap", 254, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    return *(v9 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetLineJoin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetLineJoin", 264, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    return *(v9 + 49);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryStateGetStrokeAdjust(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetStrokeAdjust", 274, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    LOBYTE(v9) = *(v9 + 50);
  }

  return v9 & 1;
}

__n128 CGDisplayListEntryStateGetBaseCTM@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetBaseCTM", 285, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a2, a3, a4, v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = &CGAffineTransformIdentity;
  }

  v8 = *&v7->c;
  *a5 = *&v7->a;
  *(a5 + 16) = v8;
  result = *&v7->tx;
  *(a5 + 32) = result;
  return result;
}

CGFloat CGDisplayListEntryStateGetPatternPhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetPatternPhase", 295, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = (v9 + 56);
  }

  else
  {
    v10 = &CGSizeZero;
  }

  return v10->width;
}

double CGDisplayListEntryStateGetSmoothness(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryStateGetSmoothness", 305, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntryState.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    return *(v9 + 72);
  }

  else
  {
    return 0.0;
  }
}

BOOL CGPDFBase14InfoGetAdvances(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 - 1;
  if ((a1 - 1) <= 0xD)
  {
    v6 = 0;
    v7 = *(&off_1E6E17948 + v3);
    do
    {
      v8 = *(a2 + v6);
      v9 = 0.0;
      if (v8)
      {
        v10 = bsearch(*(a2 + v6), *(v7 + 8), *v7, 0x10uLL, name_compare);
        if (v10)
        {
          v9 = v10[2];
        }

        else
        {
        }
      }

      *(a3 + v6) = v9;
      v6 += 8;
    }

    while (v6 != 2048);
  }

  return v3 < 0xE;
}

void *gmalloc_typed(size_t size, malloc_type_id_t a2)
{
  if ((size & 0x80000000) != 0)
  {
LABEL_4:
    exception = __cxa_allocate_exception(1uLL);
  }

  if (!size)
  {
    return 0;
  }

  result = malloc_type_malloc(size, a2);
  if (!result)
  {
    goto LABEL_4;
  }

  return result;
}

void *grealloc_typed(void *a1, size_t size, malloc_type_id_t type_id)
{
  if ((size & 0x80000000) != 0)
  {
LABEL_9:
    exception = __cxa_allocate_exception(1uLL);
  }

  if (size)
  {
    if (a1)
    {
      result = malloc_type_realloc(a1, size, type_id);
      if (!result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = malloc_type_malloc(size, type_id);
      if (!result)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    free(a1);
    return 0;
  }

  return result;
}

void *gmallocn_typed(unsigned int a1, unsigned int a2, malloc_type_id_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1 & 0x80000000) != 0 || 0x7FFFFFFF / a2 <= a1)
  {
    exception = __cxa_allocate_exception(1uLL);
  }

  v4 = a2 * a1;

  return gmalloc_typed(v4, a3);
}

void *greallocn_typed(void *a1, unsigned int a2, unsigned int a3, malloc_type_id_t type_id)
{
  if (a2)
  {
    if ((a2 & 0x80000000) != 0 || 0x7FFFFFFF / a3 <= a2)
    {
      exception = __cxa_allocate_exception(1uLL);
    }

    v4 = a3 * a2;

    return grealloc_typed(a1, v4, type_id);
  }

  else
  {
    free(a1);
    return 0;
  }
}

uint64_t CPRangeUnion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 0)
  {
    v4 = a1 + a2;
  }

  else
  {
    v4 = a1;
  }

  if (a4 <= 0)
  {
    v5 = a3 + a4;
  }

  else
  {
    v5 = a3;
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v4 = a1;
    v6 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t CPRangeIntersection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + a2;
  if (a2 <= 0)
  {
    v5 = a1 + a2;
  }

  else
  {
    v5 = a1;
  }

  if (a2 <= 0)
  {
    v4 = a1;
  }

  v6 = a3 + a4;
  if (a4 <= 0)
  {
    v7 = a3 + a4;
  }

  else
  {
    v7 = a3;
  }

  if (a4 <= 0)
  {
    v6 = a3;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v4 >= v6)
  {
    v4 = v6;
  }

  if (v4 <= v5)
  {
    v5 = 0;
  }

  if (!a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void ***CGPDFAdvancesCreate(uint64_t a1)
{
  v131 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 200);
  if (v2 == 1)
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x828uLL, 0x1020040591B0F2BuLL);
  __CFSetLastAllocationEventName();
  if (!v3)
  {
    return v3;
  }

  if ((v2 - 2) >= 4)
  {
    if ((v2 - 6) >= 2)
    {
      CGPDFAdvancesRelease(v3);
      return 0;
    }

    v8 = *(a1 + 16);
    value[0] = 0.0;
    array = 0;
    *advances = 0;
    v95 = 0;
    v96 = 0;
    if (CGPDFDictionaryGetNumber(v8, "DW", value))
    {
      v9 = *&value[0];
    }

    else
    {
      value[0] = 1000.0;
      v9 = 0x408F400000000000;
    }

    v31 = 0;
    v3[256] = v9;
    v32 = vdupq_lane_s64(v9, 0);
    do
    {
      *&v3[v31] = v32;
      v31 += 2;
    }

    while (v31 != 256);
    if (CGPDFDictionaryGetArray(v8, "W", advances))
    {
      if (*advances)
      {
        v33 = *(*advances + 24) - *(*advances + 16);
        if (v33)
        {
          v34 = 0;
          v35 = v33 >> 3;
          while (CGPDFArrayGetInteger(*advances, v34, &v96))
          {
            if (CGPDFArrayGetInteger(*advances, v34 + 1, &v95))
            {
              if (!CGPDFArrayGetNumber(*advances, v34 + 2, value))
              {
                break;
              }

              v42 = v96;
              if (v96 <= v95)
              {
                do
                {
                  add_horizontal_advance(v3, v42, value[0], v36, v37, v38, v39, v40, v41);
                  v43 = v42++ < v95;
                }

                while (v43);
              }

              v44 = 3;
            }

            else
            {
              if (!CGPDFArrayGetArray(*advances, v34 + 1, &array))
              {
                break;
              }

              if (array)
              {
                v45 = *(array + 3) - *(array + 2);
                if (v45)
                {
                  v46 = 0;
                  v47 = v45 >> 3;
                  while (CGPDFArrayGetNumber(array, v46, value))
                  {
                    add_horizontal_advance(v3, v46 + v96, value[0], v48, v49, v50, v51, v52, v53);
                    if (v47 == ++v46)
                    {
                      goto LABEL_62;
                    }
                  }

                  break;
                }
              }

LABEL_62:
              v44 = 2;
            }

            v34 += v44;
            if (v34 >= v35)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

LABEL_75:
    value[0] = 0.0;
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v92 = 0;
    *advances = 0x408B800000000000;
    array = 0xC08F400000000000;
    if (CGPDFDictionaryGetArray(v8, "DW2", &v92))
    {
      if (!v92 || *(v92 + 3) - *(v92 + 2) != 16 || !CGPDFArrayGetNumber(v92, 0, advances) || !CGPDFArrayGetNumber(v92, 1uLL, &array))
      {
        goto LABEL_107;
      }

      v55 = array;
      v56 = *advances;
    }

    else
    {
      v55 = 0xC08F400000000000;
      v56 = 0x408B800000000000;
    }

    v3[258] = v55;
    v3[259] = v56;
    if (!CGPDFDictionaryGetArray(v8, "W2", &v93))
    {
      return v3;
    }

    if (!v93)
    {
      return v3;
    }

    v57 = *(v93 + 3) - *(v93 + 2);
    if (!v57)
    {
      return v3;
    }

    v58 = 0;
    v59 = v57 >> 3;
    while (CGPDFArrayGetInteger(v93, v58, &v96))
    {
      if (CGPDFArrayGetInteger(v93, v58 + 1, &v95))
      {
        if (!CGPDFArrayGetNumber(v93, v58 + 2, &array) || !CGPDFArrayGetNumber(v93, v58 + 3, value) || !CGPDFArrayGetNumber(v93, v58 + 4, advances))
        {
          break;
        }

        v67 = v96;
        if (v96 <= v95)
        {
          do
          {
            add_vertical_advance(v3, v67, *&array, value[0], *advances, v61, v62, v63, v64, v65, v66);
            v43 = v67++ < v95;
          }

          while (v43);
        }

        v68 = 5;
      }

      else
      {
        if (!CGPDFArrayGetArray(v93, v58 + 1, &v94))
        {
          break;
        }

        if (v94)
        {
          v70 = *(v94 + 2);
          v69 = *(v94 + 3);
          v71 = (v69 - v70) >> 3;
          if (0xAAAAAAAAAAAAAAABLL * v71 > 0x5555555555555555)
          {
            break;
          }

          if (v69 != v70)
          {
            v72 = 0;
            while (CGPDFArrayGetNumber(v94, v72, &array))
            {
              v73 = v72 + 1;
              if (!CGPDFArrayGetNumber(v94, v73, value))
              {
                break;
              }

              v74 = v73 + 1;
              if (!CGPDFArrayGetNumber(v94, v74, advances))
              {
                break;
              }

              v81 = v96++;
              add_vertical_advance(v3, v81, *&array, value[0], *advances, v75, v76, v77, v78, v79, v80);
              v72 = v74 + 1;
              if (v72 >= v71)
              {
                goto LABEL_103;
              }
            }

            break;
          }
        }

LABEL_103:
        v68 = 2;
      }

      v58 += v68;
      if (v58 >= v59)
      {
        return v3;
      }
    }

LABEL_107:
    pdf_error(v60);
    return v3;
  }

  *advances = 0;
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (FontDescriptor)
  {
    value[0] = 0.0;
    Number = CGPDFDictionaryGetNumber(*(FontDescriptor + 32), "MissingWidth", value);
    v7 = value[0];
    if (!Number)
    {
      v7 = 0.0;
    }

    *advances = v7;
  }

  else
  {
    v7 = 0.0;
  }

  v10 = 0;
  v11 = vdupq_lane_s64(*&v7, 0);
  do
  {
    *&v3[v10] = v11;
    v10 += 2;
  }

  while (v10 != 256);
  v96 = 0;
  array = 0;
  v95 = 0;
  v12 = *(a1 + 16);
  if (!CGPDFDictionaryGetInteger(v12, "FirstChar", &v96))
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_22:
    pdf_error(v14);
    goto LABEL_23;
  }

  if (v96 > 0xFF)
  {
LABEL_23:
    v13 = *(a1 + 40);
    goto LABEL_24;
  }

  if (!CGPDFDictionaryGetInteger(v12, "LastChar", &v95))
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v95 > 0xFF || v96 > v95)
  {
    goto LABEL_22;
  }

  if (CGPDFDictionaryGetArray(v12, "Widths", &array))
  {
    if (array)
    {
      v54 = (*(array + 3) - *(array + 2)) >> 3;
    }

    else
    {
      v54 = 0;
    }

    v89 = v95;
    v90 = v96;
    if (v54 != v95 - v96 + 1)
    {
      v90 = v96;
      v91 = v96 + v54;
      if (v96 + v54 >= 256)
      {
        v91 = 256;
      }

      v89 = v91 - 1;
      v95 = v89;
    }

    if (v90 <= v89)
    {
      do
      {
        if (CGPDFArrayGetNumber(array, v90 - v96, advances))
        {
          v3[v90] = *advances;
        }

        v43 = v90++ < v95;
      }

      while (v43);
    }

    return v3;
  }

  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_24:
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  *value = 0u;
  Encoding = CGPDFFontGetEncoding(a1);
  v16 = Encoding;
  if (v13)
  {
    if (Encoding)
    {
      for (i = 0; i != 256; ++i)
      {
        *&value[i] = CGPDFEncodingGetNameForIndex(v16, i);
      }

      if (CGPDFBase14InfoGetAdvances(v13, value, v3))
      {
        return v3;
      }
    }
  }

  else
  {
    GlyphVector = CGPDFEncodingGetGlyphVector(Encoding);
    if (GlyphVector)
    {
      v19 = GlyphVector;
      Font = CGPDFFontGetFont(a1);
      if (Font)
      {
        v21 = Font;
        CGFontGetGlyphAdvances(Font, v19, 0x100uLL, advances);
        font_info = get_font_info(v21);
        if (font_info)
        {
          LODWORD(v23) = font_info[2];
          v24 = v23;
        }

        else
        {
          v24 = 0.0;
        }

        v82 = 0;
        v83 = vdupq_lane_s64(*&v24, 0);
        v84 = vdupq_n_s64(0x408F400000000000uLL);
        v85 = v3;
        do
        {
          v86 = *&advances[v82];
          v87.i64[0] = v86;
          v87.i64[1] = SDWORD1(v86);
          v88 = vcvtq_f64_s64(v87);
          v87.i64[0] = SDWORD2(v86);
          v87.i64[1] = SHIDWORD(v86);
          *v85 = vdivq_f64(vmulq_f64(v88, v84), v83);
          v85[1] = vdivq_f64(vmulq_f64(vcvtq_f64_s64(v87), v84), v83);
          v85 += 2;
          v82 += 4;
        }

        while (v82 != 256);
        return v3;
      }
    }
  }

  v25 = CGPDFFontGetEncoding(a1);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    *value = 0u;
    do
    {
      *&value[v27] = CGPDFEncodingGetNameForIndex(v26, v27);
      ++v27;
    }

    while (v27 != 256);
    v28 = CGPDFFontGetFont(a1);
    v29 = get_font_info(v28);
    if (v29 && v29[48] == 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = 5;
    }

    CGPDFBase14InfoGetAdvances(v30, value, v3);
  }

  else
  {
    memset_pattern16(v3, &unk_18439D040, 0x800uLL);
  }

  return v3;
}