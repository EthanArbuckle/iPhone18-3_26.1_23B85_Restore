uint64_t sub_19B55211C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_35;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        operator new();
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v22 = *(this + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v22);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if (!PB::Reader::skip(this))
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B552348(uint64_t result, PB::Writer *this)
{
  v2 = result;
  if (*(result + 24))
  {
    result = PB::Writer::write(this, *(result + 16));
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return result;
}

double sub_19B5523B0(uint64_t a1)
{
  *a1 = &unk_1F0E2FD90;
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return result;
}

void sub_19B552420(PB::Base *this)
{
  *this = &unk_1F0E2FD90;
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
    *(this + 23) = v6;
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

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }

  PB::Base::~Base(this);
}

void sub_19B552534(PB::Base *a1)
{
  sub_19B552420(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55256C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accelBias", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelBiasCov", v10);
  }

  v11 = *(a1 + 340);
  if ((v11 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "cameraImageResolutionHeight", *(a1 + 328));
    v11 = *(a1 + 340);
  }

  if ((v11 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "cameraImageResolutionWidth", *(a1 + 332));
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(this, "cameraIntrinsics", v14);
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "cameraPose", v17);
  }

  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "gyroBias", v20);
  }

  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  while (v21 != v22)
  {
    v23 = *v21++;
    PB::TextFormatter::format(this, "gyroBiasCov", v23);
  }

  v24 = *(a1 + 340);
  if (v24)
  {
    PB::TextFormatter::format(this, "machContinuousOriginTimestamp", *(a1 + 296));
    v24 = *(a1 + 340);
  }

  if ((v24 & 2) != 0)
  {
    PB::TextFormatter::format(this, "machContinuousTimestamp", *(a1 + 304));
  }

  v25 = *(a1 + 176);
  v26 = *(a1 + 184);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(this, "orientation", v27);
  }

  v28 = *(a1 + 152);
  v29 = *(a1 + 160);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::TextFormatter::format(this, "orientationCov", v30);
  }

  if ((*(a1 + 340) & 4) != 0)
  {
    PB::TextFormatter::format(this, "originTimestamp", *(a1 + 312));
  }

  v31 = *(a1 + 224);
  v32 = *(a1 + 232);
  while (v31 != v32)
  {
    v33 = *v31++;
    PB::TextFormatter::format(this, "position", v33);
  }

  v34 = *(a1 + 200);
  v35 = *(a1 + 208);
  while (v34 != v35)
  {
    v36 = *v34++;
    PB::TextFormatter::format(this, "positionCov", v36);
  }

  v37 = *(a1 + 340);
  if ((v37 & 8) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 320));
    v37 = *(a1 + 340);
  }

  if ((v37 & 0x40) != 0)
  {
    v38 = *(a1 + 336);
    PB::TextFormatter::format(this, "trackingState");
  }

  v39 = *(a1 + 272);
  v40 = *(a1 + 280);
  while (v39 != v40)
  {
    v41 = *v39++;
    PB::TextFormatter::format(this, "velocity", v41);
  }

  v42 = *(a1 + 248);
  v43 = *(a1 + 256);
  while (v42 != v43)
  {
    v44 = *v42++;
    PB::TextFormatter::format(this, "velocityCov", v44);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B552894(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_471;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 340) |= 0x40u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_424;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_312:
            LODWORD(v28) = 0;
            goto LABEL_424;
          }

          v244 = 0;
          v245 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v246 = v23 - v24;
          if (!v17)
          {
            v246 = 0;
          }

          v247 = (v25 + v24);
          v248 = v24 + 1;
          while (2)
          {
            if (v246)
            {
              v249 = *v247;
              *(this + 1) = v248;
              v28 |= (v249 & 0x7F) << v244;
              if (v249 < 0)
              {
                v244 += 7;
                --v246;
                ++v247;
                ++v248;
                v14 = v245++ > 8;
                if (v14)
                {
                  goto LABEL_312;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_424:
          *(a1 + 336) = v28;
          goto LABEL_467;
        case 2u:
          *(a1 + 340) |= 4u;
          v147 = *(this + 1);
          if (v147 > 0xFFFFFFFFFFFFFFF7 || v147 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 312) = *(*this + v147);
          goto LABEL_465;
        case 3u:
          *(a1 + 340) |= 1u;
          v113 = *(this + 1);
          if (v113 > 0xFFFFFFFFFFFFFFF7 || v113 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 296) = *(*this + v113);
          goto LABEL_465;
        case 4u:
          *(a1 + 340) |= 8u;
          v130 = *(this + 1);
          if (v130 > 0xFFFFFFFFFFFFFFF7 || v130 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 320) = *(*this + v130);
          goto LABEL_465;
        case 5u:
          *(a1 + 340) |= 2u;
          v80 = *(this + 1);
          if (v80 > 0xFFFFFFFFFFFFFFF7 || v80 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 304) = *(*this + v80);
          goto LABEL_465;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v149 = *(this + 1);
            v150 = *(this + 2);
            while (v149 < v150 && (*(this + 24) & 1) == 0)
            {
              v152 = *(a1 + 184);
              v151 = *(a1 + 192);
              if (v152 >= v151)
              {
                v154 = *(a1 + 176);
                v155 = v152 - v154;
                v156 = (v152 - v154) >> 3;
                v157 = v156 + 1;
                if ((v156 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v158 = v151 - v154;
                if (v158 >> 2 > v157)
                {
                  v157 = v158 >> 2;
                }

                if (v158 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v159 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v159 = v157;
                }

                if (v159)
                {
                  sub_19B4C50F0(a1 + 176, v159);
                }

                v160 = (v152 - v154) >> 3;
                v161 = (8 * v156);
                v162 = (8 * v156 - 8 * v160);
                *v161 = 0;
                v153 = v161 + 1;
                memcpy(v162, v154, v155);
                v163 = *(a1 + 176);
                *(a1 + 176) = v162;
                *(a1 + 184) = v153;
                *(a1 + 192) = 0;
                if (v163)
                {
                  operator delete(v163);
                }
              }

              else
              {
                *v152 = 0;
                v153 = v152 + 8;
              }

              *(a1 + 184) = v153;
              v164 = *(this + 1);
              if (v164 > 0xFFFFFFFFFFFFFFF7 || v164 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v153 - 1) = *(*this + v164);
              v150 = *(this + 2);
              v149 = *(this + 1) + 8;
              *(this + 1) = v149;
            }

            goto LABEL_290;
          }

          v253 = *(a1 + 184);
          v252 = *(a1 + 192);
          if (v253 >= v252)
          {
            v304 = *(a1 + 176);
            v305 = v253 - v304;
            v306 = (v253 - v304) >> 3;
            v307 = v306 + 1;
            if ((v306 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v308 = v252 - v304;
            if (v308 >> 2 > v307)
            {
              v307 = v308 >> 2;
            }

            if (v308 >= 0x7FFFFFFFFFFFFFF8)
            {
              v309 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v309 = v307;
            }

            if (v309)
            {
              sub_19B4C50F0(a1 + 176, v309);
            }

            v362 = (v253 - v304) >> 3;
            v363 = (8 * v306);
            v364 = (8 * v306 - 8 * v362);
            *v363 = 0;
            v233 = v363 + 1;
            memcpy(v364, v304, v305);
            v365 = *(a1 + 176);
            *(a1 + 176) = v364;
            *(a1 + 184) = v233;
            *(a1 + 192) = 0;
            if (v365)
            {
              operator delete(v365);
            }
          }

          else
          {
            *v253 = 0;
            v233 = v253 + 8;
          }

          *(a1 + 184) = v233;
          goto LABEL_461;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v181 = *(this + 1);
            v182 = *(this + 2);
            while (v181 < v182 && (*(this + 24) & 1) == 0)
            {
              v184 = *(a1 + 112);
              v183 = *(a1 + 120);
              if (v184 >= v183)
              {
                v186 = *(a1 + 104);
                v187 = v184 - v186;
                v188 = (v184 - v186) >> 3;
                v189 = v188 + 1;
                if ((v188 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v190 = v183 - v186;
                if (v190 >> 2 > v189)
                {
                  v189 = v190 >> 2;
                }

                if (v190 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v191 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v191 = v189;
                }

                if (v191)
                {
                  sub_19B4C50F0(a1 + 104, v191);
                }

                v192 = (v184 - v186) >> 3;
                v193 = (8 * v188);
                v194 = (8 * v188 - 8 * v192);
                *v193 = 0;
                v185 = v193 + 1;
                memcpy(v194, v186, v187);
                v195 = *(a1 + 104);
                *(a1 + 104) = v194;
                *(a1 + 112) = v185;
                *(a1 + 120) = 0;
                if (v195)
                {
                  operator delete(v195);
                }
              }

              else
              {
                *v184 = 0;
                v185 = v184 + 8;
              }

              *(a1 + 112) = v185;
              v196 = *(this + 1);
              if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v185 - 1) = *(*this + v196);
              v182 = *(this + 2);
              v181 = *(this + 1) + 8;
              *(this + 1) = v181;
            }

            goto LABEL_290;
          }

          v257 = *(a1 + 112);
          v256 = *(a1 + 120);
          if (v257 >= v256)
          {
            v316 = *(a1 + 104);
            v317 = v257 - v316;
            v318 = (v257 - v316) >> 3;
            v319 = v318 + 1;
            if ((v318 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v320 = v256 - v316;
            if (v320 >> 2 > v319)
            {
              v319 = v320 >> 2;
            }

            if (v320 >= 0x7FFFFFFFFFFFFFF8)
            {
              v321 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v321 = v319;
            }

            if (v321)
            {
              sub_19B4C50F0(a1 + 104, v321);
            }

            v370 = (v257 - v316) >> 3;
            v371 = (8 * v318);
            v372 = (8 * v318 - 8 * v370);
            *v371 = 0;
            v233 = v371 + 1;
            memcpy(v372, v316, v317);
            v373 = *(a1 + 104);
            *(a1 + 104) = v372;
            *(a1 + 112) = v233;
            *(a1 + 120) = 0;
            if (v373)
            {
              operator delete(v373);
            }
          }

          else
          {
            *v257 = 0;
            v233 = v257 + 8;
          }

          *(a1 + 112) = v233;
          goto LABEL_461;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v131 = *(this + 1);
            v132 = *(this + 2);
            while (v131 < v132 && (*(this + 24) & 1) == 0)
            {
              v134 = *(a1 + 280);
              v133 = *(a1 + 288);
              if (v134 >= v133)
              {
                v136 = *(a1 + 272);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 3;
                v139 = v138 + 1;
                if ((v138 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v140 = v133 - v136;
                if (v140 >> 2 > v139)
                {
                  v139 = v140 >> 2;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v141 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_19B4C50F0(a1 + 272, v141);
                }

                v142 = (v134 - v136) >> 3;
                v143 = (8 * v138);
                v144 = (8 * v138 - 8 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(a1 + 272);
                *(a1 + 272) = v144;
                *(a1 + 280) = v135;
                *(a1 + 288) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 8;
              }

              *(a1 + 280) = v135;
              v146 = *(this + 1);
              if (v146 > 0xFFFFFFFFFFFFFFF7 || v146 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v135 - 1) = *(*this + v146);
              v132 = *(this + 2);
              v131 = *(this + 1) + 8;
              *(this + 1) = v131;
            }

            goto LABEL_290;
          }

          v251 = *(a1 + 280);
          v250 = *(a1 + 288);
          if (v251 >= v250)
          {
            v298 = *(a1 + 272);
            v299 = v251 - v298;
            v300 = (v251 - v298) >> 3;
            v301 = v300 + 1;
            if ((v300 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v302 = v250 - v298;
            if (v302 >> 2 > v301)
            {
              v301 = v302 >> 2;
            }

            if (v302 >= 0x7FFFFFFFFFFFFFF8)
            {
              v303 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v303 = v301;
            }

            if (v303)
            {
              sub_19B4C50F0(a1 + 272, v303);
            }

            v358 = (v251 - v298) >> 3;
            v359 = (8 * v300);
            v360 = (8 * v300 - 8 * v358);
            *v359 = 0;
            v233 = v359 + 1;
            memcpy(v360, v298, v299);
            v361 = *(a1 + 272);
            *(a1 + 272) = v360;
            *(a1 + 280) = v233;
            *(a1 + 288) = 0;
            if (v361)
            {
              operator delete(v361);
            }
          }

          else
          {
            *v251 = 0;
            v233 = v251 + 8;
          }

          *(a1 + 280) = v233;
          goto LABEL_461;
        case 9u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_473:
              v383 = 0;
              return v383 & 1;
            }

            v215 = *(this + 1);
            v216 = *(this + 2);
            while (v215 < v216 && (*(this + 24) & 1) == 0)
            {
              v218 = *(a1 + 16);
              v217 = *(a1 + 24);
              if (v218 >= v217)
              {
                v220 = *(a1 + 8);
                v221 = v218 - v220;
                v222 = (v218 - v220) >> 3;
                v223 = v222 + 1;
                if ((v222 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v224 = v217 - v220;
                if (v224 >> 2 > v223)
                {
                  v223 = v224 >> 2;
                }

                if (v224 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v225 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v225 = v223;
                }

                if (v225)
                {
                  sub_19B4C50F0(a1 + 8, v225);
                }

                v226 = (v218 - v220) >> 3;
                v227 = (8 * v222);
                v228 = (8 * v222 - 8 * v226);
                *v227 = 0;
                v219 = v227 + 1;
                memcpy(v228, v220, v221);
                v229 = *(a1 + 8);
                *(a1 + 8) = v228;
                *(a1 + 16) = v219;
                *(a1 + 24) = 0;
                if (v229)
                {
                  operator delete(v229);
                }
              }

              else
              {
                *v218 = 0;
                v219 = v218 + 8;
              }

              *(a1 + 16) = v219;
              v230 = *(this + 1);
              if (v230 > 0xFFFFFFFFFFFFFFF7 || v230 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v219 - 1) = *(*this + v230);
              v216 = *(this + 2);
              v215 = *(this + 1) + 8;
              *(this + 1) = v215;
            }

LABEL_290:
            PB::Reader::recallMark();
          }

          else
          {
            v261 = *(a1 + 16);
            v260 = *(a1 + 24);
            if (v261 >= v260)
            {
              v328 = *(a1 + 8);
              v329 = v261 - v328;
              v330 = (v261 - v328) >> 3;
              v331 = v330 + 1;
              if ((v330 + 1) >> 61)
              {
LABEL_474:
                sub_19B5BE690();
              }

              v332 = v260 - v328;
              if (v332 >> 2 > v331)
              {
                v331 = v332 >> 2;
              }

              if (v332 >= 0x7FFFFFFFFFFFFFF8)
              {
                v333 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v333 = v331;
              }

              if (v333)
              {
                sub_19B4C50F0(a1 + 8, v333);
              }

              v378 = (v261 - v328) >> 3;
              v379 = (8 * v330);
              v380 = (8 * v330 - 8 * v378);
              *v379 = 0;
              v233 = v379 + 1;
              memcpy(v380, v328, v329);
              v381 = *(a1 + 8);
              *(a1 + 8) = v380;
              *(a1 + 16) = v233;
              *(a1 + 24) = 0;
              if (v381)
              {
                operator delete(v381);
              }
            }

            else
            {
              *v261 = 0;
              v233 = v261 + 8;
            }

            *(a1 + 16) = v233;
LABEL_461:
            v382 = *(this + 1);
            if (v382 <= 0xFFFFFFFFFFFFFFF7 && v382 + 8 <= *(this + 2))
            {
              *(v233 - 1) = *(*this + v382);
LABEL_465:
              v198 = *(this + 1) + 8;
LABEL_466:
              *(this + 1) = v198;
            }

            else
            {
LABEL_463:
              *(this + 24) = 1;
            }
          }

LABEL_467:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_471;
          }

          break;
        case 0xAu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v97 = *(this + 1);
            v98 = *(this + 2);
            while (v97 < v98 && (*(this + 24) & 1) == 0)
            {
              v100 = *(a1 + 232);
              v99 = *(a1 + 240);
              if (v100 >= v99)
              {
                v102 = *(a1 + 224);
                v103 = v100 - v102;
                v104 = (v100 - v102) >> 3;
                v105 = v104 + 1;
                if ((v104 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v106 = v99 - v102;
                if (v106 >> 2 > v105)
                {
                  v105 = v106 >> 2;
                }

                if (v106 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v107 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v107 = v105;
                }

                if (v107)
                {
                  sub_19B4C50F0(a1 + 224, v107);
                }

                v108 = (v100 - v102) >> 3;
                v109 = (8 * v104);
                v110 = (8 * v104 - 8 * v108);
                *v109 = 0;
                v101 = v109 + 1;
                memcpy(v110, v102, v103);
                v111 = *(a1 + 224);
                *(a1 + 224) = v110;
                *(a1 + 232) = v101;
                *(a1 + 240) = 0;
                if (v111)
                {
                  operator delete(v111);
                }
              }

              else
              {
                *v100 = 0;
                v101 = v100 + 8;
              }

              *(a1 + 232) = v101;
              v112 = *(this + 1);
              if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v101 - 1) = *(*this + v112);
              v98 = *(this + 2);
              v97 = *(this + 1) + 8;
              *(this + 1) = v97;
            }

            goto LABEL_290;
          }

          v241 = *(a1 + 232);
          v240 = *(a1 + 240);
          if (v241 >= v240)
          {
            v286 = *(a1 + 224);
            v287 = v241 - v286;
            v288 = (v241 - v286) >> 3;
            v289 = v288 + 1;
            if ((v288 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v290 = v240 - v286;
            if (v290 >> 2 > v289)
            {
              v289 = v290 >> 2;
            }

            if (v290 >= 0x7FFFFFFFFFFFFFF8)
            {
              v291 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v291 = v289;
            }

            if (v291)
            {
              sub_19B4C50F0(a1 + 224, v291);
            }

            v350 = (v241 - v286) >> 3;
            v351 = (8 * v288);
            v352 = (8 * v288 - 8 * v350);
            *v351 = 0;
            v233 = v351 + 1;
            memcpy(v352, v286, v287);
            v353 = *(a1 + 224);
            *(a1 + 224) = v352;
            *(a1 + 232) = v233;
            *(a1 + 240) = 0;
            if (v353)
            {
              operator delete(v353);
            }
          }

          else
          {
            *v241 = 0;
            v233 = v241 + 8;
          }

          *(a1 + 232) = v233;
          goto LABEL_461;
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v199 = *(this + 1);
            v200 = *(this + 2);
            while (v199 < v200 && (*(this + 24) & 1) == 0)
            {
              v202 = *(a1 + 160);
              v201 = *(a1 + 168);
              if (v202 >= v201)
              {
                v204 = *(a1 + 152);
                v205 = v202 - v204;
                v206 = (v202 - v204) >> 3;
                v207 = v206 + 1;
                if ((v206 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v208 = v201 - v204;
                if (v208 >> 2 > v207)
                {
                  v207 = v208 >> 2;
                }

                if (v208 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v209 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v209 = v207;
                }

                if (v209)
                {
                  sub_19B4C50F0(a1 + 152, v209);
                }

                v210 = (v202 - v204) >> 3;
                v211 = (8 * v206);
                v212 = (8 * v206 - 8 * v210);
                *v211 = 0;
                v203 = v211 + 1;
                memcpy(v212, v204, v205);
                v213 = *(a1 + 152);
                *(a1 + 152) = v212;
                *(a1 + 160) = v203;
                *(a1 + 168) = 0;
                if (v213)
                {
                  operator delete(v213);
                }
              }

              else
              {
                *v202 = 0;
                v203 = v202 + 8;
              }

              *(a1 + 160) = v203;
              v214 = *(this + 1);
              if (v214 > 0xFFFFFFFFFFFFFFF7 || v214 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v203 - 1) = *(*this + v214);
              v200 = *(this + 2);
              v199 = *(this + 1) + 8;
              *(this + 1) = v199;
            }

            goto LABEL_290;
          }

          v259 = *(a1 + 160);
          v258 = *(a1 + 168);
          if (v259 >= v258)
          {
            v322 = *(a1 + 152);
            v323 = v259 - v322;
            v324 = (v259 - v322) >> 3;
            v325 = v324 + 1;
            if ((v324 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v326 = v258 - v322;
            if (v326 >> 2 > v325)
            {
              v325 = v326 >> 2;
            }

            if (v326 >= 0x7FFFFFFFFFFFFFF8)
            {
              v327 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v327 = v325;
            }

            if (v327)
            {
              sub_19B4C50F0(a1 + 152, v327);
            }

            v374 = (v259 - v322) >> 3;
            v375 = (8 * v324);
            v376 = (8 * v324 - 8 * v374);
            *v375 = 0;
            v233 = v375 + 1;
            memcpy(v376, v322, v323);
            v377 = *(a1 + 152);
            *(a1 + 152) = v376;
            *(a1 + 160) = v233;
            *(a1 + 168) = 0;
            if (v377)
            {
              operator delete(v377);
            }
          }

          else
          {
            *v259 = 0;
            v233 = v259 + 8;
          }

          *(a1 + 160) = v233;
          goto LABEL_461;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v64 = *(this + 1);
            v65 = *(this + 2);
            while (v64 < v65 && (*(this + 24) & 1) == 0)
            {
              v67 = *(a1 + 136);
              v66 = *(a1 + 144);
              if (v67 >= v66)
              {
                v69 = *(a1 + 128);
                v70 = v67 - v69;
                v71 = (v67 - v69) >> 3;
                v72 = v71 + 1;
                if ((v71 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v73 = v66 - v69;
                if (v73 >> 2 > v72)
                {
                  v72 = v73 >> 2;
                }

                if (v73 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v74 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v74 = v72;
                }

                if (v74)
                {
                  sub_19B4C50F0(a1 + 128, v74);
                }

                v75 = (v67 - v69) >> 3;
                v76 = (8 * v71);
                v77 = (8 * v71 - 8 * v75);
                *v76 = 0;
                v68 = v76 + 1;
                memcpy(v77, v69, v70);
                v78 = *(a1 + 128);
                *(a1 + 128) = v77;
                *(a1 + 136) = v68;
                *(a1 + 144) = 0;
                if (v78)
                {
                  operator delete(v78);
                }
              }

              else
              {
                *v67 = 0;
                v68 = v67 + 8;
              }

              *(a1 + 136) = v68;
              v79 = *(this + 1);
              if (v79 > 0xFFFFFFFFFFFFFFF7 || v79 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v68 - 1) = *(*this + v79);
              v65 = *(this + 2);
              v64 = *(this + 1) + 8;
              *(this + 1) = v64;
            }

            goto LABEL_290;
          }

          v237 = *(a1 + 136);
          v236 = *(a1 + 144);
          if (v237 >= v236)
          {
            v274 = *(a1 + 128);
            v275 = v237 - v274;
            v276 = (v237 - v274) >> 3;
            v277 = v276 + 1;
            if ((v276 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v278 = v236 - v274;
            if (v278 >> 2 > v277)
            {
              v277 = v278 >> 2;
            }

            if (v278 >= 0x7FFFFFFFFFFFFFF8)
            {
              v279 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v279 = v277;
            }

            if (v279)
            {
              sub_19B4C50F0(a1 + 128, v279);
            }

            v342 = (v237 - v274) >> 3;
            v343 = (8 * v276);
            v344 = (8 * v276 - 8 * v342);
            *v343 = 0;
            v233 = v343 + 1;
            memcpy(v344, v274, v275);
            v345 = *(a1 + 128);
            *(a1 + 128) = v344;
            *(a1 + 136) = v233;
            *(a1 + 144) = 0;
            if (v345)
            {
              operator delete(v345);
            }
          }

          else
          {
            *v237 = 0;
            v233 = v237 + 8;
          }

          *(a1 + 136) = v233;
          goto LABEL_461;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v81 = *(this + 1);
            v82 = *(this + 2);
            while (v81 < v82 && (*(this + 24) & 1) == 0)
            {
              v84 = *(a1 + 256);
              v83 = *(a1 + 264);
              if (v84 >= v83)
              {
                v86 = *(a1 + 248);
                v87 = v84 - v86;
                v88 = (v84 - v86) >> 3;
                v89 = v88 + 1;
                if ((v88 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v90 = v83 - v86;
                if (v90 >> 2 > v89)
                {
                  v89 = v90 >> 2;
                }

                if (v90 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v91 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v91 = v89;
                }

                if (v91)
                {
                  sub_19B4C50F0(a1 + 248, v91);
                }

                v92 = (v84 - v86) >> 3;
                v93 = (8 * v88);
                v94 = (8 * v88 - 8 * v92);
                *v93 = 0;
                v85 = v93 + 1;
                memcpy(v94, v86, v87);
                v95 = *(a1 + 248);
                *(a1 + 248) = v94;
                *(a1 + 256) = v85;
                *(a1 + 264) = 0;
                if (v95)
                {
                  operator delete(v95);
                }
              }

              else
              {
                *v84 = 0;
                v85 = v84 + 8;
              }

              *(a1 + 256) = v85;
              v96 = *(this + 1);
              if (v96 > 0xFFFFFFFFFFFFFFF7 || v96 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v85 - 1) = *(*this + v96);
              v82 = *(this + 2);
              v81 = *(this + 1) + 8;
              *(this + 1) = v81;
            }

            goto LABEL_290;
          }

          v239 = *(a1 + 256);
          v238 = *(a1 + 264);
          if (v239 >= v238)
          {
            v280 = *(a1 + 248);
            v281 = v239 - v280;
            v282 = (v239 - v280) >> 3;
            v283 = v282 + 1;
            if ((v282 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v284 = v238 - v280;
            if (v284 >> 2 > v283)
            {
              v283 = v284 >> 2;
            }

            if (v284 >= 0x7FFFFFFFFFFFFFF8)
            {
              v285 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v285 = v283;
            }

            if (v285)
            {
              sub_19B4C50F0(a1 + 248, v285);
            }

            v346 = (v239 - v280) >> 3;
            v347 = (8 * v282);
            v348 = (8 * v282 - 8 * v346);
            *v347 = 0;
            v233 = v347 + 1;
            memcpy(v348, v280, v281);
            v349 = *(a1 + 248);
            *(a1 + 248) = v348;
            *(a1 + 256) = v233;
            *(a1 + 264) = 0;
            if (v349)
            {
              operator delete(v349);
            }
          }

          else
          {
            *v239 = 0;
            v233 = v239 + 8;
          }

          *(a1 + 256) = v233;
          goto LABEL_461;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v165 = *(this + 1);
            v166 = *(this + 2);
            while (v165 < v166 && (*(this + 24) & 1) == 0)
            {
              v168 = *(a1 + 40);
              v167 = *(a1 + 48);
              if (v168 >= v167)
              {
                v170 = *(a1 + 32);
                v171 = v168 - v170;
                v172 = (v168 - v170) >> 3;
                v173 = v172 + 1;
                if ((v172 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v174 = v167 - v170;
                if (v174 >> 2 > v173)
                {
                  v173 = v174 >> 2;
                }

                if (v174 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v175 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v175 = v173;
                }

                if (v175)
                {
                  sub_19B4C50F0(a1 + 32, v175);
                }

                v176 = (v168 - v170) >> 3;
                v177 = (8 * v172);
                v178 = (8 * v172 - 8 * v176);
                *v177 = 0;
                v169 = v177 + 1;
                memcpy(v178, v170, v171);
                v179 = *(a1 + 32);
                *(a1 + 32) = v178;
                *(a1 + 40) = v169;
                *(a1 + 48) = 0;
                if (v179)
                {
                  operator delete(v179);
                }
              }

              else
              {
                *v168 = 0;
                v169 = v168 + 8;
              }

              *(a1 + 40) = v169;
              v180 = *(this + 1);
              if (v180 > 0xFFFFFFFFFFFFFFF7 || v180 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v169 - 1) = *(*this + v180);
              v166 = *(this + 2);
              v165 = *(this + 1) + 8;
              *(this + 1) = v165;
            }

            goto LABEL_290;
          }

          v255 = *(a1 + 40);
          v254 = *(a1 + 48);
          if (v255 >= v254)
          {
            v310 = *(a1 + 32);
            v311 = v255 - v310;
            v312 = (v255 - v310) >> 3;
            v313 = v312 + 1;
            if ((v312 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v314 = v254 - v310;
            if (v314 >> 2 > v313)
            {
              v313 = v314 >> 2;
            }

            if (v314 >= 0x7FFFFFFFFFFFFFF8)
            {
              v315 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v315 = v313;
            }

            if (v315)
            {
              sub_19B4C50F0(a1 + 32, v315);
            }

            v366 = (v255 - v310) >> 3;
            v367 = (8 * v312);
            v368 = (8 * v312 - 8 * v366);
            *v367 = 0;
            v233 = v367 + 1;
            memcpy(v368, v310, v311);
            v369 = *(a1 + 32);
            *(a1 + 32) = v368;
            *(a1 + 40) = v233;
            *(a1 + 48) = 0;
            if (v369)
            {
              operator delete(v369);
            }
          }

          else
          {
            *v255 = 0;
            v233 = v255 + 8;
          }

          *(a1 + 40) = v233;
          goto LABEL_461;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v48 = *(this + 1);
            v49 = *(this + 2);
            while (v48 < v49 && (*(this + 24) & 1) == 0)
            {
              v51 = *(a1 + 208);
              v50 = *(a1 + 216);
              if (v51 >= v50)
              {
                v53 = *(a1 + 200);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 3;
                v56 = v55 + 1;
                if ((v55 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v57 = v50 - v53;
                if (v57 >> 2 > v56)
                {
                  v56 = v57 >> 2;
                }

                if (v57 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v58 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = v56;
                }

                if (v58)
                {
                  sub_19B4C50F0(a1 + 200, v58);
                }

                v59 = (v51 - v53) >> 3;
                v60 = (8 * v55);
                v61 = (8 * v55 - 8 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(a1 + 200);
                *(a1 + 200) = v61;
                *(a1 + 208) = v52;
                *(a1 + 216) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                *v51 = 0;
                v52 = v51 + 8;
              }

              *(a1 + 208) = v52;
              v63 = *(this + 1);
              if (v63 > 0xFFFFFFFFFFFFFFF7 || v63 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v52 - 1) = *(*this + v63);
              v49 = *(this + 2);
              v48 = *(this + 1) + 8;
              *(this + 1) = v48;
            }

            goto LABEL_290;
          }

          v235 = *(a1 + 208);
          v234 = *(a1 + 216);
          if (v235 >= v234)
          {
            v268 = *(a1 + 200);
            v269 = v235 - v268;
            v270 = (v235 - v268) >> 3;
            v271 = v270 + 1;
            if ((v270 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v272 = v234 - v268;
            if (v272 >> 2 > v271)
            {
              v271 = v272 >> 2;
            }

            if (v272 >= 0x7FFFFFFFFFFFFFF8)
            {
              v273 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v273 = v271;
            }

            if (v273)
            {
              sub_19B4C50F0(a1 + 200, v273);
            }

            v338 = (v235 - v268) >> 3;
            v339 = (8 * v270);
            v340 = (8 * v270 - 8 * v338);
            *v339 = 0;
            v233 = v339 + 1;
            memcpy(v340, v268, v269);
            v341 = *(a1 + 200);
            *(a1 + 200) = v340;
            *(a1 + 208) = v233;
            *(a1 + 216) = 0;
            if (v341)
            {
              operator delete(v341);
            }
          }

          else
          {
            *v235 = 0;
            v233 = v235 + 8;
          }

          *(a1 + 208) = v233;
          goto LABEL_461;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v114 = *(this + 1);
            v115 = *(this + 2);
            while (v114 < v115 && (*(this + 24) & 1) == 0)
            {
              v117 = *(a1 + 88);
              v116 = *(a1 + 96);
              if (v117 >= v116)
              {
                v119 = *(a1 + 80);
                v120 = v117 - v119;
                v121 = (v117 - v119) >> 3;
                v122 = v121 + 1;
                if ((v121 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v123 = v116 - v119;
                if (v123 >> 2 > v122)
                {
                  v122 = v123 >> 2;
                }

                if (v123 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v124 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v124 = v122;
                }

                if (v124)
                {
                  sub_19B4C50F0(a1 + 80, v124);
                }

                v125 = (v117 - v119) >> 3;
                v126 = (8 * v121);
                v127 = (8 * v121 - 8 * v125);
                *v126 = 0;
                v118 = v126 + 1;
                memcpy(v127, v119, v120);
                v128 = *(a1 + 80);
                *(a1 + 80) = v127;
                *(a1 + 88) = v118;
                *(a1 + 96) = 0;
                if (v128)
                {
                  operator delete(v128);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 8;
              }

              *(a1 + 88) = v118;
              v129 = *(this + 1);
              if (v129 > 0xFFFFFFFFFFFFFFF7 || v129 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v118 - 1) = *(*this + v129);
              v115 = *(this + 2);
              v114 = *(this + 1) + 8;
              *(this + 1) = v114;
            }

            goto LABEL_290;
          }

          v243 = *(a1 + 88);
          v242 = *(a1 + 96);
          if (v243 >= v242)
          {
            v292 = *(a1 + 80);
            v293 = v243 - v292;
            v294 = (v243 - v292) >> 3;
            v295 = v294 + 1;
            if ((v294 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v296 = v242 - v292;
            if (v296 >> 2 > v295)
            {
              v295 = v296 >> 2;
            }

            if (v296 >= 0x7FFFFFFFFFFFFFF8)
            {
              v297 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v297 = v295;
            }

            if (v297)
            {
              sub_19B4C50F0(a1 + 80, v297);
            }

            v354 = (v243 - v292) >> 3;
            v355 = (8 * v294);
            v356 = (8 * v294 - 8 * v354);
            *v355 = 0;
            v233 = v355 + 1;
            memcpy(v356, v292, v293);
            v357 = *(a1 + 80);
            *(a1 + 80) = v356;
            *(a1 + 88) = v233;
            *(a1 + 96) = 0;
            if (v357)
            {
              operator delete(v357);
            }
          }

          else
          {
            *v243 = 0;
            v233 = v243 + 8;
          }

          *(a1 + 88) = v233;
          goto LABEL_461;
        case 0x11u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v32 = *(this + 1);
            v33 = *(this + 2);
            while (v32 < v33 && (*(this + 24) & 1) == 0)
            {
              v35 = *(a1 + 64);
              v34 = *(a1 + 72);
              if (v35 >= v34)
              {
                v37 = *(a1 + 56);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 3;
                v40 = v39 + 1;
                if ((v39 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v41 = v34 - v37;
                if (v41 >> 2 > v40)
                {
                  v40 = v41 >> 2;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v42 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_19B4C50F0(a1 + 56, v42);
                }

                v43 = (v35 - v37) >> 3;
                v44 = (8 * v39);
                v45 = (8 * v39 - 8 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(a1 + 56);
                *(a1 + 56) = v45;
                *(a1 + 64) = v36;
                *(a1 + 72) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 8;
              }

              *(a1 + 64) = v36;
              v47 = *(this + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(this + 2))
              {
LABEL_289:
                *(this + 24) = 1;
                goto LABEL_290;
              }

              *(v36 - 1) = *(*this + v47);
              v33 = *(this + 2);
              v32 = *(this + 1) + 8;
              *(this + 1) = v32;
            }

            goto LABEL_290;
          }

          v232 = *(a1 + 64);
          v231 = *(a1 + 72);
          if (v232 >= v231)
          {
            v262 = *(a1 + 56);
            v263 = v232 - v262;
            v264 = (v232 - v262) >> 3;
            v265 = v264 + 1;
            if ((v264 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v266 = v231 - v262;
            if (v266 >> 2 > v265)
            {
              v265 = v266 >> 2;
            }

            if (v266 >= 0x7FFFFFFFFFFFFFF8)
            {
              v267 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v267 = v265;
            }

            if (v267)
            {
              sub_19B4C50F0(a1 + 56, v267);
            }

            v334 = (v232 - v262) >> 3;
            v335 = (8 * v264);
            v336 = (8 * v264 - 8 * v334);
            *v335 = 0;
            v233 = v335 + 1;
            memcpy(v336, v262, v263);
            v337 = *(a1 + 56);
            *(a1 + 56) = v336;
            *(a1 + 64) = v233;
            *(a1 + 72) = 0;
            if (v337)
            {
              operator delete(v337);
            }
          }

          else
          {
            *v232 = 0;
            v233 = v232 + 8;
          }

          *(a1 + 64) = v233;
          goto LABEL_461;
        case 0x12u:
          *(a1 + 340) |= 0x20u;
          v148 = *(this + 1);
          if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 332) = *(*this + v148);
          goto LABEL_248;
        case 0x13u:
          *(a1 + 340) |= 0x10u;
          v197 = *(this + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 328) = *(*this + v197);
LABEL_248:
          v198 = *(this + 1) + 4;
          goto LABEL_466;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_473;
          }

          goto LABEL_467;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_471:
  v383 = v4 ^ 1;
  return v383 & 1;
}

uint64_t sub_19B5540C4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 340);
  if ((v4 & 0x40) != 0)
  {
    v42 = *(result + 336);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 340);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*(result + 340) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 312));
  v4 = *(v3 + 340);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    result = PB::Writer::write(this, *(v3 + 320));
    if ((*(v3 + 340) & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 296));
  v4 = *(v3 + 340);
  if ((v4 & 8) != 0)
  {
    goto LABEL_50;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_6:
    result = PB::Writer::write(this, *(v3 + 304));
  }

LABEL_7:
  v5 = *(v3 + 176);
  v6 = *(v3 + 184);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 272);
  v12 = *(v3 + 280);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  while (v14 != v15)
  {
    v16 = *v14++;
    result = PB::Writer::write(this, v16);
  }

  v17 = *(v3 + 224);
  v18 = *(v3 + 232);
  while (v17 != v18)
  {
    v19 = *v17++;
    result = PB::Writer::write(this, v19);
  }

  v20 = *(v3 + 152);
  v21 = *(v3 + 160);
  while (v20 != v21)
  {
    v22 = *v20++;
    result = PB::Writer::write(this, v22);
  }

  v23 = *(v3 + 128);
  v24 = *(v3 + 136);
  while (v23 != v24)
  {
    v25 = *v23++;
    result = PB::Writer::write(this, v25);
  }

  v26 = *(v3 + 248);
  v27 = *(v3 + 256);
  while (v26 != v27)
  {
    v28 = *v26++;
    result = PB::Writer::write(this, v28);
  }

  v29 = *(v3 + 32);
  v30 = *(v3 + 40);
  while (v29 != v30)
  {
    v31 = *v29++;
    result = PB::Writer::write(this, v31);
  }

  v32 = *(v3 + 200);
  v33 = *(v3 + 208);
  while (v32 != v33)
  {
    v34 = *v32++;
    result = PB::Writer::write(this, v34);
  }

  v35 = *(v3 + 80);
  v36 = *(v3 + 88);
  while (v35 != v36)
  {
    v37 = *v35++;
    result = PB::Writer::write(this, v37);
  }

  v38 = *(v3 + 56);
  v39 = *(v3 + 64);
  while (v38 != v39)
  {
    v40 = *v38++;
    result = PB::Writer::write(this, v40);
  }

  v41 = *(v3 + 340);
  if ((v41 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 332));
    v41 = *(v3 + 340);
  }

  if ((v41 & 0x10) != 0)
  {
    v43 = *(v3 + 328);

    return PB::Writer::write(this, v43);
  }

  return result;
}

uint64_t sub_19B554348(uint64_t result)
{
  *result = &unk_1F0E2B520;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 112) = 0;
  return result;
}

void sub_19B554370(PB::Base *this)
{
  *this = &unk_1F0E2B520;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5543D4(PB::Base *a1)
{
  sub_19B554370(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55440C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 112);
  if (v5)
  {
    PB::TextFormatter::format(this, "currentTimestamp", *(a1 + 32));
    v5 = *(a1 + 112);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "latestInertialTimestamp", *(a1 + 40));
  v5 = *(a1 + 112);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "latestInertialTimestampMeta", *(a1 + 48));
  v5 = *(a1 + 112);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "positionX", *(a1 + 56));
  v5 = *(a1 + 112);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "positionY", *(a1 + 64));
  v5 = *(a1 + 112);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "positionZ", *(a1 + 72));
  v5 = *(a1 + 112);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "predictionComputeTimeMeta", *(a1 + 80));
  v5 = *(a1 + 112);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  PB::TextFormatter::format(this, "predictionTimeMeta", *(a1 + 88));
  if ((*(a1 + 112) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "propagationTimeMeta", *(a1 + 96));
  }

LABEL_11:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "rotationMatrixElement", v8);
  }

  if ((*(a1 + 112) & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "targetTimestamp", *(a1 + 104));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5545C8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_111;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_111;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 > 8)
        {
          switch(v22)
          {
            case 9:
              *(a1 + 112) |= 0x80u;
              v48 = *(this + 1);
              if (v48 > 0xFFFFFFFFFFFFFFF7 || v48 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 88) = *(*this + v48);
              goto LABEL_106;
            case 0xA:
              *(a1 + 112) |= 0x100u;
              v45 = *(this + 1);
              if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 96) = *(*this + v45);
              goto LABEL_106;
            case 0xB:
              *(a1 + 112) |= 0x40u;
              v25 = *(this + 1);
              if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 80) = *(*this + v25);
              goto LABEL_106;
          }
        }

        else
        {
          switch(v22)
          {
            case 6:
              *(a1 + 112) |= 0x10u;
              v47 = *(this + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 64) = *(*this + v47);
              goto LABEL_106;
            case 7:
              *(a1 + 112) |= 0x20u;
              v44 = *(this + 1);
              if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 72) = *(*this + v44);
              goto LABEL_106;
            case 8:
              *(a1 + 112) |= 4u;
              v23 = *(this + 1);
              if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 48) = *(*this + v23);
LABEL_106:
              *(this + 1) += 8;
              goto LABEL_107;
          }
        }

        goto LABEL_86;
      }

      if (v22 <= 2)
      {
        break;
      }

      if (v22 == 3)
      {
        *(a1 + 112) |= 2u;
        v46 = *(this + 1);
        if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(this + 2))
        {
          goto LABEL_104;
        }

        *(a1 + 40) = *(*this + v46);
        goto LABEL_106;
      }

      if (v22 != 4)
      {
        if (v22 == 5)
        {
          *(a1 + 112) |= 8u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 56) = *(*this + v24);
          goto LABEL_106;
        }

        goto LABEL_86;
      }

      if ((v10 & 7) != 2)
      {
        v50 = *(a1 + 16);
        v49 = *(a1 + 24);
        if (v50 >= v49)
        {
          v52 = *(a1 + 8);
          v53 = v50 - v52;
          v54 = (v50 - v52) >> 3;
          v55 = v54 + 1;
          if ((v54 + 1) >> 61)
          {
LABEL_114:
            sub_19B5BE690();
          }

          v56 = v49 - v52;
          if (v56 >> 2 > v55)
          {
            v55 = v56 >> 2;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF8)
          {
            v57 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            sub_19B4C50F0(a1 + 8, v57);
          }

          v58 = (v50 - v52) >> 3;
          v59 = (8 * v54);
          v60 = (8 * v54 - 8 * v58);
          *v59 = 0;
          v51 = v59 + 1;
          memcpy(v60, v52, v53);
          v61 = *(a1 + 8);
          *(a1 + 8) = v60;
          *(a1 + 16) = v51;
          *(a1 + 24) = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *v50 = 0;
          v51 = v50 + 8;
        }

        *(a1 + 16) = v51;
        v62 = *(this + 1);
        if (v62 > 0xFFFFFFFFFFFFFFF7 || v62 + 8 > *(this + 2))
        {
LABEL_104:
          *(this + 24) = 1;
          goto LABEL_107;
        }

        *(v51 - 1) = *(*this + v62);
        goto LABEL_106;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_113;
      }

      v28 = *(this + 1);
      v29 = *(this + 2);
      while (v28 < v29 && (*(this + 24) & 1) == 0)
      {
        v31 = *(a1 + 16);
        v30 = *(a1 + 24);
        if (v31 >= v30)
        {
          v33 = *(a1 + 8);
          v34 = v31 - v33;
          v35 = (v31 - v33) >> 3;
          v36 = v35 + 1;
          if ((v35 + 1) >> 61)
          {
            goto LABEL_114;
          }

          v37 = v30 - v33;
          if (v37 >> 2 > v36)
          {
            v36 = v37 >> 2;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            sub_19B4C50F0(a1 + 8, v38);
          }

          v39 = (v31 - v33) >> 3;
          v40 = (8 * v35);
          v41 = (8 * v35 - 8 * v39);
          *v40 = 0;
          v32 = v40 + 1;
          memcpy(v41, v33, v34);
          v42 = *(a1 + 8);
          *(a1 + 8) = v41;
          *(a1 + 16) = v32;
          *(a1 + 24) = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v31 = 0;
          v32 = v31 + 8;
        }

        *(a1 + 16) = v32;
        v43 = *(this + 1);
        if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v32 - 1) = *(*this + v43);
        v29 = *(this + 2);
        v28 = *(this + 1) + 8;
        *(this + 1) = v28;
      }

      PB::Reader::recallMark();
LABEL_107:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_111;
      }
    }

    if (v22 == 1)
    {
      *(a1 + 112) |= 1u;
      v27 = *(this + 1);
      if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
      {
        goto LABEL_104;
      }

      *(a1 + 32) = *(*this + v27);
      goto LABEL_106;
    }

    if (v22 == 2)
    {
      *(a1 + 112) |= 0x200u;
      v26 = *(this + 1);
      if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
      {
        goto LABEL_104;
      }

      *(a1 + 104) = *(*this + v26);
      goto LABEL_106;
    }

LABEL_86:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_113:
      v63 = 0;
      return v63 & 1;
    }

    goto LABEL_107;
  }

LABEL_111:
  v63 = v4 ^ 1;
  return v63 & 1;
}

uint64_t sub_19B554BEC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 112);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 112) & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    result = PB::Writer::write(this, *(v3 + 104));
    if ((*(v3 + 112) & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  result = PB::Writer::write(this, *(result + 32));
  v4 = *(v3 + 112);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v4 & 2) != 0)
  {
LABEL_4:
    result = PB::Writer::write(this, *(v3 + 40));
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 112);
  if ((v8 & 8) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 56));
    v8 = *(v3 + 112);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  result = PB::Writer::write(this, *(v3 + 64));
  v8 = *(v3 + 112);
  if ((v8 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 72));
  v8 = *(v3 + 112);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v8 = *(v3 + 112);
  if ((v8 & 0x80) == 0)
  {
LABEL_13:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 96));
    if ((*(v3 + 112) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 88));
  v8 = *(v3 + 112);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v8 & 0x40) == 0)
  {
    return result;
  }

LABEL_25:
  v9 = *(v3 + 80);

  return PB::Writer::write(this, v9);
}

double sub_19B554D68(uint64_t a1)
{
  *a1 = &unk_1F0E2FD58;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B554D9C(PB::Base *this)
{
  *this = &unk_1F0E2FD58;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B554E10(PB::Base *a1)
{
  sub_19B554D9C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B554E48(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "so3", v7);
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "translation", v10);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B554F10(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(this + 24) = 1;
        goto LABEL_107;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v25 = *(this + 1);
          v26 = *(this + 2);
          while (v25 < v26 && (*(this + 24) & 1) == 0)
          {
            v28 = *(a1 + 16);
            v27 = *(a1 + 24);
            if (v28 >= v27)
            {
              v30 = *(a1 + 8);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                goto LABEL_110;
              }

              v34 = v27 - v30;
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
                sub_19B4C50F0(a1 + 8, v35);
              }

              v36 = (v28 - v30) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(a1 + 8);
              *(a1 + 8) = v38;
              *(a1 + 16) = v29;
              *(a1 + 24) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = 0;
              v29 = v28 + 8;
            }

            *(a1 + 16) = v29;
            v40 = *(this + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(v29 - 1) = *(*this + v40);
            v26 = *(this + 2);
            v25 = *(this + 1) + 8;
            *(this + 1) = v25;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v58 = *(a1 + 16);
        v57 = *(a1 + 24);
        if (v58 >= v57)
        {
          v62 = *(a1 + 8);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v66 = v57 - v62;
          if (v66 >> 2 > v65)
          {
            v65 = v66 >> 2;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v67 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_19B4C50F0(a1 + 8, v67);
          }

          v74 = (v58 - v62) >> 3;
          v75 = (8 * v64);
          v76 = (8 * v64 - 8 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(a1 + 8);
          *(a1 + 8) = v76;
          *(a1 + 16) = v59;
          *(a1 + 24) = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 8;
        }

        *(a1 + 16) = v59;
LABEL_98:
        v82 = *(this + 1);
        if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(this + 2))
        {
LABEL_100:
          *(this + 24) = 1;
          goto LABEL_103;
        }

        *(v59 - 1) = *(*this + v82);
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(a1 + 64) |= 1u;
        v24 = *(this + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
        {
          goto LABEL_100;
        }

        *(a1 + 56) = *(*this + v24);
LABEL_102:
        *(this + 1) += 8;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_109:
        v83 = 0;
        return v83 & 1;
      }

LABEL_103:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
      }

      v41 = *(this + 1);
      v42 = *(this + 2);
      while (v41 < v42 && (*(this + 24) & 1) == 0)
      {
        v44 = *(a1 + 40);
        v43 = *(a1 + 48);
        if (v44 >= v43)
        {
          v46 = *(a1 + 32);
          v47 = v44 - v46;
          v48 = (v44 - v46) >> 3;
          v49 = v48 + 1;
          if ((v48 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v50 = v43 - v46;
          if (v50 >> 2 > v49)
          {
            v49 = v50 >> 2;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF8)
          {
            v51 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          if (v51)
          {
            sub_19B4C50F0(a1 + 32, v51);
          }

          v52 = (v44 - v46) >> 3;
          v53 = (8 * v48);
          v54 = (8 * v48 - 8 * v52);
          *v53 = 0;
          v45 = v53 + 1;
          memcpy(v54, v46, v47);
          v55 = *(a1 + 32);
          *(a1 + 32) = v54;
          *(a1 + 40) = v45;
          *(a1 + 48) = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          *v44 = 0;
          v45 = v44 + 8;
        }

        *(a1 + 40) = v45;
        v56 = *(this + 1);
        if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
        {
LABEL_74:
          *(this + 24) = 1;
          goto LABEL_75;
        }

        *(v45 - 1) = *(*this + v56);
        v42 = *(this + 2);
        v41 = *(this + 1) + 8;
        *(this + 1) = v41;
      }

      goto LABEL_75;
    }

    v61 = *(a1 + 40);
    v60 = *(a1 + 48);
    if (v61 >= v60)
    {
      v68 = *(a1 + 32);
      v69 = v61 - v68;
      v70 = (v61 - v68) >> 3;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
LABEL_110:
        sub_19B5BE690();
      }

      v72 = v60 - v68;
      if (v72 >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        sub_19B4C50F0(a1 + 32, v73);
      }

      v78 = (v61 - v68) >> 3;
      v79 = (8 * v70);
      v80 = (8 * v70 - 8 * v78);
      *v79 = 0;
      v59 = v79 + 1;
      memcpy(v80, v68, v69);
      v81 = *(a1 + 32);
      *(a1 + 32) = v80;
      *(a1 + 40) = v59;
      *(a1 + 48) = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }

    else
    {
      *v61 = 0;
      v59 = v61 + 8;
    }

    *(a1 + 40) = v59;
    goto LABEL_98;
  }

LABEL_107:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_19B55548C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 64))
  {
    result = PB::Writer::write(this, *(result + 56));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_19B555510(uint64_t result)
{
  *result = &unk_1F0E305E0;
  *(result + 88) = 0;
  return result;
}

void sub_19B555538(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B555570(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if (v5)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 8));
    v5 = *(a1 + 88);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "grade", *(a1 + 16));
  v5 = *(a1 + 88);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = *(a1 + 72);
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 88);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a1 + 84);
  PB::TextFormatter::format(this, "hasGps");
  v5 = *(a1 + 88);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a1 + 85);
  PB::TextFormatter::format(this, "hasStrideCal");
  v5 = *(a1 + 88);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "heartRate", *(a1 + 24));
  v5 = *(a1 + 88);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "heartRateConfidence", *(a1 + 32));
  v5 = *(a1 + 88);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "hrTime", *(a1 + 40));
  v5 = *(a1 + 88);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a1 + 86);
  PB::TextFormatter::format(this, "isStroller");
  v5 = *(a1 + 88);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a1 + 76);
  PB::TextFormatter::format(this, "metSource");
  v5 = *(a1 + 88);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "mets", *(a1 + 48));
  v5 = *(a1 + 88);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "pace", *(a1 + 56));
  v5 = *(a1 + 88);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "startDate", *(a1 + 64));
  if ((*(a1 + 88) & 0x400) != 0)
  {
LABEL_15:
    v6 = *(a1 + 80);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_16:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B555774(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_127;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 88) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_107;
        case 2u:
          *(a1 + 88) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_107;
        case 3u:
          *(a1 + 88) |= 0x200u;
          v34 = *(this + 1);
          v2 = *(this + 2);
          v35 = *this;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v59 = 0;
            v60 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(this + 1);
            }

            v61 = v2 - v34;
            v62 = (v35 + v34);
            v63 = v34 + 1;
            while (1)
            {
              if (!v61)
              {
                LODWORD(v38) = 0;
                *(this + 24) = 1;
                goto LABEL_118;
              }

              v64 = v63;
              v65 = *v62;
              *(this + 1) = v64;
              v38 |= (v65 & 0x7F) << v59;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              --v61;
              ++v62;
              v63 = v64 + 1;
              v14 = v60++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_117:
                v2 = v64;
                goto LABEL_118;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_117;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(this + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_118:
          *(a1 + 76) = v38;
          goto LABEL_123;
        case 4u:
          *(a1 + 88) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_107;
        case 5u:
          *(a1 + 88) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_107;
        case 6u:
          *(a1 + 88) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_107;
        case 7u:
          *(a1 + 88) |= 0x100u;
          v42 = *(this + 1);
          v2 = *(this + 2);
          v43 = *this;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v46 = 0;
            if (v2 <= v42)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v42;
            v69 = (v43 + v42);
            v70 = v42 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v46) = 0;
                *(this + 24) = 1;
                goto LABEL_122;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v46 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v46) = 0;
LABEL_121:
                v2 = v71;
                goto LABEL_122;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v46) = 0;
            }

            goto LABEL_121;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = (v43 + v42);
          v48 = v42 + 1;
          do
          {
            v2 = v48;
            *(this + 1) = v48;
            v49 = *v47++;
            v46 |= (v49 & 0x7F) << v44;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_122;
            }

            v44 += 7;
            ++v48;
            v14 = v45++ > 8;
          }

          while (!v14);
          LODWORD(v46) = 0;
LABEL_122:
          *(a1 + 72) = v46;
          goto LABEL_123;
        case 8u:
          *(a1 + 88) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_107;
        case 9u:
          *(a1 + 88) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_73;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_107;
        case 0xAu:
          *(a1 + 88) |= 0x800u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 84) = v33;
          goto LABEL_123;
        case 0xBu:
          *(a1 + 88) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v51 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v50 = *(*this + v2++);
            *(this + 1) = v2;
            v51 = v50 != 0;
          }

          *(a1 + 85) = v51;
          goto LABEL_123;
        case 0xCu:
          *(a1 + 88) |= 0x400u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v52 = 0;
            v53 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v54 = v2 - v22;
            v55 = (v23 + v22);
            v56 = v22 + 1;
            while (1)
            {
              if (!v54)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_114;
              }

              v57 = v56;
              v58 = *v55;
              *(this + 1) = v57;
              v26 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              --v54;
              ++v55;
              v56 = v57 + 1;
              v14 = v53++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_113:
                v2 = v57;
                goto LABEL_114;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_113;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_114;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_114:
          *(a1 + 80) = v26;
          goto LABEL_123;
        case 0xDu:
          *(a1 + 88) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 86) = v31;
          goto LABEL_123;
        case 0xEu:
          *(a1 + 88) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_73:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v2);
LABEL_107:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_123;
        default:
          if (!PB::Reader::skip(this))
          {
            v73 = 0;
            return v73 & 1;
          }

          v2 = *(this + 1);
LABEL_123:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_127;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_127:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_19B555EB8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 88);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 88);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = *(v3 + 84);
  result = PB::Writer::write(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v8 = *(v3 + 85);
  result = PB::Writer::write(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v10 = *(v3 + 86);
    result = PB::Writer::write(this);
    if ((*(v3 + 88) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  v9 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 88);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_29:
  v11 = *(v3 + 40);

  return PB::Writer::write(this, v11);
}

uint64_t sub_19B556078(uint64_t result)
{
  *result = &unk_1F0E2EFC8;
  *(result + 40) = 0;
  return result;
}

void sub_19B5560A0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5560D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "hr", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "hrTime", *(a1 + 16));
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "time", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "vo2", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B55619C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_47;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_43:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B556424(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 8));
      if ((*(v3 + 40) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5564CC(uint64_t result)
{
  *result = &unk_1F0E30260;
  *(result + 72) = 0;
  return result;
}

void sub_19B5564F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55652C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 72);
  if (v5)
  {
    PB::TextFormatter::format(this, "durationInSeconds", *(a1 + 8));
    v5 = *(a1 + 72);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "estimatedVo2Max", *(a1 + 16));
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "filteredVo2Max", *(a1 + 24));
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "hrMax", *(a1 + 32));
  v5 = *(a1 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "hrMin", *(a1 + 40));
  v5 = *(a1 + 72);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(a1 + 64);
  PB::TextFormatter::format(this, "sessionType");
  v5 = *(a1 + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "startTime", *(a1 + 48));
  v5 = *(a1 + 72);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "variance", *(a1 + 56));
  if ((*(a1 + 72) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(a1 + 68);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B556690(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_103;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 72) |= 0x100u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v41 = v2 - v31;
              v42 = (v32 + v31);
              v43 = v31 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
                }

                v44 = v43;
                v45 = *v42;
                *(this + 1) = v44;
                v35 |= (v45 & 0x7F) << v39;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                --v41;
                ++v42;
                v43 = v44 + 1;
                v14 = v40++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_93:
              v2 = v44;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(this + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_94:
            *(a1 + 68) = v35;
            goto LABEL_99;
          }

          if (v22 == 4)
          {
            *(a1 + 72) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_68:
              *(this + 24) = 1;
              goto LABEL_99;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_88;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 72) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_88;
          }

          if (v22 == 2)
          {
            *(a1 + 72) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_88;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 72) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_88;
        }

        if (v22 == 6)
        {
          *(a1 + 72) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_88;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 72) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_88;
          case 8:
            *(a1 + 72) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_68;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_88:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_99;
          case 9:
            *(a1 + 72) |= 0x80u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v46 = 0;
              v47 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v48 = v2 - v23;
              v49 = (v24 + v23);
              v50 = v23 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_98;
                }

                v51 = v50;
                v52 = *v49;
                *(this + 1) = v51;
                v27 |= (v52 & 0x7F) << v46;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                --v48;
                ++v49;
                v50 = v51 + 1;
                v14 = v47++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_97;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_97:
              v2 = v51;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(this + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_98:
            *(a1 + 64) = v27;
            goto LABEL_99;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_99:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_103:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B556C00(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 48));
    v4 = *(v3 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 72);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 72);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 72);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 72) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 72);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 64);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B556D34(uint64_t result)
{
  *result = &unk_1F0E2E6D0;
  *(result + 20) = 0;
  return result;
}

void sub_19B556D5C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B556D94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 12);
    PB::TextFormatter::format(this, "basebandHint");
    v5 = *(a1 + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 13);
  PB::TextFormatter::format(this, "btHint");
  v5 = *(a1 + 20);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(a1 + 14);
  PB::TextFormatter::format(this, "gpsHint");
  v5 = *(a1 + 20);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(a1 + 15);
  PB::TextFormatter::format(this, "motionHint");
  v5 = *(a1 + 20);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = *(a1 + 8);
  PB::TextFormatter::format(this, "vehicularData");
  if ((*(a1 + 20) & 0x20) != 0)
  {
LABEL_7:
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "wifiHint");
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B556E98(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_77;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:
            *(a1 + 20) |= 0x20u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v37 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v36 = *(*this + v3++);
              *(this + 1) = v3;
              v37 = v36 != 0;
            }

            *(a1 + 16) = v37;
            goto LABEL_73;
          case 5:
            *(a1 + 20) |= 4u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v41 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v40 = *(*this + v3++);
              *(this + 1) = v3;
              v41 = v40 != 0;
            }

            *(a1 + 13) = v41;
            goto LABEL_73;
          case 6:
            *(a1 + 20) |= 1u;
            v26 = *(this + 1);
            v2 = *(this + 2);
            v27 = *this;
            if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
            {
              v42 = 0;
              v43 = 0;
              v30 = 0;
              if (v2 <= v26)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v44 = v3 - v26;
              v45 = (v27 + v26);
              v46 = v26 + 1;
              while (1)
              {
                if (!v44)
                {
                  LODWORD(v30) = 0;
                  *(this + 24) = 1;
                  goto LABEL_72;
                }

                v47 = v46;
                v48 = *v45;
                *(this + 1) = v47;
                v30 |= (v48 & 0x7F) << v42;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                --v44;
                ++v45;
                v46 = v47 + 1;
                v14 = v43++ > 8;
                if (v14)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_71;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v30) = 0;
              }

LABEL_71:
              v3 = v47;
            }

            else
            {
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v31 = (v27 + v26);
              v32 = v26 + 1;
              while (1)
              {
                v3 = v32;
                *(this + 1) = v32;
                v33 = *v31++;
                v30 |= (v33 & 0x7F) << v28;
                if ((v33 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                ++v32;
                v14 = v29++ > 8;
                if (v14)
                {
                  LODWORD(v30) = 0;
                  break;
                }
              }
            }

LABEL_72:
            *(a1 + 8) = v30;
            goto LABEL_73;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(a1 + 20) |= 0x10u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v35 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v34 = *(*this + v3++);
              *(this + 1) = v3;
              v35 = v34 != 0;
            }

            *(a1 + 15) = v35;
            goto LABEL_73;
          case 2:
            *(a1 + 20) |= 8u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v39 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v38 = *(*this + v3++);
              *(this + 1) = v3;
              v39 = v38 != 0;
            }

            *(a1 + 14) = v39;
            goto LABEL_73;
          case 3:
            *(a1 + 20) |= 2u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v25 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = *(*this + v3++);
              *(this + 1) = v3;
              v25 = v24 != 0;
            }

            *(a1 + 12) = v25;
            goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v49 = 0;
        return v49 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_73:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_77:
  v49 = v4 ^ 1;
  return v49 & 1;
}

uint64_t sub_19B557290(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(result + 15);
    result = PB::Writer::write(this);
    v4 = *(v3 + 20);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 14);
  result = PB::Writer::write(this);
  v4 = *(v3 + 20);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(v3 + 12);
  result = PB::Writer::write(this);
  v4 = *(v3 + 20);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = *(v3 + 13);
    result = PB::Writer::write(this);
    if ((*(v3 + 20) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  v8 = *(v3 + 16);
  result = PB::Writer::write(this);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v10 = *(v3 + 8);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B557370(uint64_t result)
{
  *result = &unk_1F0E2C408;
  *(result + 60) = 0;
  return result;
}

void sub_19B557398(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5573D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 24);
    PB::TextFormatter::format(this, "sourceX");
    v5 = *(a1 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 28);
  PB::TextFormatter::format(this, "sourceY");
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a1 + 32);
  PB::TextFormatter::format(this, "sourceZ");
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 60);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "velocityUncX", *(a1 + 36));
  v5 = *(a1 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "velocityUncY", *(a1 + 40));
  v5 = *(a1 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "velocityUncZ", *(a1 + 44));
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "velocityX", *(a1 + 48));
  v5 = *(a1 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "velocityY", *(a1 + 52));
  if ((*(a1 + 60) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "velocityZ", *(a1 + 56));
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B557574(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_130;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_74:
              *(this + 24) = 1;
              goto LABEL_126;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 8;
            goto LABEL_110;
          }

          if (v22 == 2)
          {
            *(a1 + 60) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 48) = *(*this + v2);
LABEL_109:
            v2 = *(this + 1) + 4;
LABEL_110:
            *(this + 1) = v2;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 60) |= 0x200u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_74;
              }

              *(a1 + 52) = *(*this + v2);
              goto LABEL_109;
            case 4:
              *(a1 + 60) |= 0x400u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_74;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_109;
            case 5:
              *(a1 + 60) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_74;
              }

              *(a1 + 36) = *(*this + v2);
              goto LABEL_109;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 60) |= 8u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v63 = v2 - v39;
              v64 = (v40 + v39);
              v65 = v39 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_125;
                }

                v66 = v65;
                v67 = *v64;
                *(this + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_124;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_124:
              v2 = v66;
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v40 + v39);
              v45 = v39 + 1;
              while (1)
              {
                v2 = v45;
                *(this + 1) = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_125:
            *(a1 + 28) = v43;
            goto LABEL_126;
          case 0xA:
            *(a1 + 60) |= 0x10u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_117;
                }

                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_116;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_116:
              v2 = v52;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(this + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_117:
            *(a1 + 32) = v35;
            goto LABEL_126;
          case 0xB:
            *(a1 + 60) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 60) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_109;
          case 7:
            *(a1 + 60) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(a1 + 44) = *(*this + v2);
            goto LABEL_109;
          case 8:
            *(a1 + 60) |= 4u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v56 = v2 - v23;
              v57 = (v24 + v23);
              v58 = v23 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_121;
                }

                v59 = v58;
                v60 = *v57;
                *(this + 1) = v59;
                v27 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_120;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_120:
              v2 = v59;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(this + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_121:
            *(a1 + 24) = v27;
            goto LABEL_126;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_126:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_130:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_19B557C38(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 60);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(result + 60) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v7 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 60) & 2) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  v6 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v3 + 16);

  return PB::Writer::write(this, v8);
}

uint64_t sub_19B557DA4(uint64_t result)
{
  *result = &unk_1F0E2F9D8;
  *(result + 12) = 0;
  return result;
}

void sub_19B557DCC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B557E04(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "isDeviceVibrating");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B557E64(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_34;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        v3 = *(this + 2);
        if (v2 >= v3)
        {
          v24 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v23 = *(*this + v2++);
          *(this + 1) = v2;
          v24 = v23 != 0;
        }

        *(a1 + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B558018(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    v2 = *(result + 8);
    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B558038(uint64_t result)
{
  *result = &unk_1F0E2BB80;
  *(result + 20) = 0;
  return result;
}

void sub_19B558060(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B558098(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "shouldSuppress");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B558114(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_56;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v3 = *(this + 1);
        v2 = *(this + 2);
        if (v3 >= v2)
        {
          v32 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v31 = *(*this + v3++);
          *(this + 1) = v3;
          v32 = v31 != 0;
        }

        *(a1 + 16) = v32;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v33 = 0;
          v34 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v35 = v3 - v23;
          v36 = (v24 + v23);
          v37 = v23 + 1;
          while (1)
          {
            if (!v35)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_51;
            }

            v38 = v37;
            v39 = *v36;
            *(this + 1) = v38;
            v27 |= (v39 & 0x7F) << v33;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            --v35;
            ++v36;
            v37 = v38 + 1;
            v14 = v34++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_50:
          v3 = v38;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_51:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v40 = 0;
          return v40 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_56:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B5583D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B558440(uint64_t result)
{
  *result = &unk_1F0E2BB48;
  *(result + 116) = 0;
  return result;
}

void sub_19B558468(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5584A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "absMeanGravX", *(a1 + 16));
    v5 = *(a1 + 116);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "accelFFTBin1", *(a1 + 20));
  v5 = *(a1 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "accelFFTBin2", *(a1 + 24));
  v5 = *(a1 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "accelFFTBin3", *(a1 + 28));
  v5 = *(a1 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "accelFFTBin4", *(a1 + 32));
  v5 = *(a1 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "accelFFTBin5", *(a1 + 36));
  v5 = *(a1 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "accelFFTBin6", *(a1 + 40));
  v5 = *(a1 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "accelFFTBinDotPressureFFTBin", *(a1 + 44));
  v5 = *(a1 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "fFTBin1", *(a1 + 48));
  v5 = *(a1 + 116);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "fFTBin2", *(a1 + 52));
  v5 = *(a1 + 116);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "fFTBin3", *(a1 + 56));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "fFTBin4", *(a1 + 60));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "fFTBin5", *(a1 + 64));
  v5 = *(a1 + 116);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "meanGravX", *(a1 + 68));
  v5 = *(a1 + 116);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "meanGravY", *(a1 + 72));
  v5 = *(a1 + 116);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "meanGravZ", *(a1 + 76));
  v5 = *(a1 + 116);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "medianLux", *(a1 + 80));
  v5 = *(a1 + 116);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "medianPocketProbability", *(a1 + 84));
  v5 = *(a1 + 116);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "pressureFFTBin1", *(a1 + 88));
  v5 = *(a1 + 116);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "pressureFFTBin2", *(a1 + 92));
  v5 = *(a1 + 116);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "pressureFFTBin3", *(a1 + 96));
  v5 = *(a1 + 116);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "pressureFFTBin4", *(a1 + 100));
  v5 = *(a1 + 116);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "pressureFFTBin5", *(a1 + 104));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "pressureFFTBin6", *(a1 + 108));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(this, "stdPressure", *(a1 + 112));
  if (*(a1 + 116))
  {
LABEL_27:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_28:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B558824(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_126;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v30 = 0;
            v31 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v32 = v2 - v22;
            v33 = (v23 + v22);
            v34 = v22 + 1;
            while (1)
            {
              if (!v32)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_124;
              }

              v35 = v34;
              v36 = *v33;
              *(this + 1) = v35;
              v26 |= (v36 & 0x7F) << v30;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              --v32;
              ++v33;
              v34 = v35 + 1;
              v14 = v31++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_123;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_123:
            v2 = v35;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(this + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_124;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_124:
          *(a1 + 8) = v26;
          goto LABEL_117;
        case 2u:
          *(a1 + 116) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_116;
        case 3u:
          *(a1 + 116) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_116;
        case 4u:
          *(a1 + 116) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_116;
        case 5u:
          *(a1 + 116) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_116;
        case 6u:
          *(a1 + 116) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_116;
        case 7u:
          *(a1 + 116) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_116;
        case 8u:
          *(a1 + 116) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_116;
        case 9u:
          *(a1 + 116) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_116;
        case 0xAu:
          *(a1 + 116) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_116;
        case 0xBu:
          *(a1 + 116) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_116;
        case 0xCu:
          *(a1 + 116) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_116;
        case 0xDu:
          *(a1 + 116) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_116;
        case 0xEu:
          *(a1 + 116) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_116;
        case 0xFu:
          *(a1 + 116) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_116;
        case 0x10u:
          *(a1 + 116) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_116;
        case 0x11u:
          *(a1 + 116) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_116;
        case 0x12u:
          *(a1 + 116) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_116;
        case 0x13u:
          *(a1 + 116) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_116;
        case 0x14u:
          *(a1 + 116) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_116;
        case 0x15u:
          *(a1 + 116) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_116;
        case 0x16u:
          *(a1 + 116) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_116;
        case 0x17u:
          *(a1 + 116) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_116;
        case 0x18u:
          *(a1 + 116) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_116;
        case 0x19u:
          *(a1 + 116) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_116;
        case 0x1Au:
          *(a1 + 116) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_104:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v2);
LABEL_116:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v37 = 0;
            return v37 & 1;
          }

          v2 = *(this + 1);
LABEL_117:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_126;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_126:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B559048(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 116);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 116);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 116);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 116);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 116);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_12:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_14:
    if ((v4 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_17:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_18:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 116);
  if ((v4 & 0x80) == 0)
  {
LABEL_19:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_20:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 0x100000) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 116);
  if ((v4 & 0x400000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 116);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    result = PB::Writer::write(this, *(v3 + 44));
    if ((*(v3 + 116) & 2) == 0)
    {
      return result;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 116);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_53:
  v6 = *(v3 + 16);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B559358(uint64_t result)
{
  *result = &unk_1F0E2B950;
  *(result + 64) = 0;
  return result;
}

void sub_19B559380(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5593B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "bagObstructed", *(a1 + 16));
    v5 = *(a1 + 64);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "closeCoveredBagObstructed", *(a1 + 20));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "closeCoveredObstructed", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "closeCoveredPocketObstructed", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "inHandObstructed", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "looseCoveredBagObstructed", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "looseCoveredObstructed", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "looseCoveredPocketObstructed", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "obstructed", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "otherObstructed", *(a1 + 52));
  v5 = *(a1 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "pocketObstructed", *(a1 + 56));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v6 = *(a1 + 8);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 64) & 0x1000) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "visible", *(a1 + 60));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B55959C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_87;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 64) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v30 = 0;
            v31 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v32 = v2 - v22;
            v33 = (v23 + v22);
            v34 = v22 + 1;
            while (1)
            {
              if (!v32)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_82;
              }

              v35 = v34;
              v36 = *v33;
              *(this + 1) = v35;
              v26 |= (v36 & 0x7F) << v30;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              --v32;
              ++v33;
              v34 = v35 + 1;
              v14 = v31++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_81;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_81:
            v2 = v35;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(this + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_82;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_82:
          *(a1 + 8) = v26;
          goto LABEL_83;
        case 2u:
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_77;
        case 3u:
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_77;
        case 4u:
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_77;
        case 5u:
          *(a1 + 64) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_77;
        case 6u:
          *(a1 + 64) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_77;
        case 7u:
          *(a1 + 64) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_77;
        case 8u:
          *(a1 + 64) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_77;
        case 9u:
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_77;
        case 0xAu:
          *(a1 + 64) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_77;
        case 0xBu:
          *(a1 + 64) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_77;
        case 0xCu:
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_77;
        case 0xDu:
          *(a1 + 64) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_67:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v2);
LABEL_77:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_83;
        default:
          if (!PB::Reader::skip(this))
          {
            v37 = 0;
            return v37 & 1;
          }

          v2 = *(this + 1);
LABEL_83:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_87;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_87:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_19B559AEC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_27:
  v6 = *(v3 + 40);

  return PB::Writer::write(this, v6);
}

uint64_t sub_19B559C90(uint64_t result)
{
  *result = &unk_1F0E2E1C8;
  *(result + 84) = 0;
  return result;
}

void sub_19B559CB8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B559CF0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 84);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "currentEventTag");
    v5 = *(a1 + 84);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "currentState");
  v5 = *(a1 + 84);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "filteredGravityX", *(a1 + 24));
  v5 = *(a1 + 84);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "filteredGravityY", *(a1 + 28));
  v5 = *(a1 + 84);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "filteredGravityZ", *(a1 + 32));
  v5 = *(a1 + 84);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "gravityAngle", *(a1 + 36));
  v5 = *(a1 + 84);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "gravityShift", *(a1 + 40));
  v5 = *(a1 + 84);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "isMovingFiltered", *(a1 + 44));
  v5 = *(a1 + 84);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "lux", *(a1 + 48));
  v5 = *(a1 + 84);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "luxBaseline", *(a1 + 52));
  v5 = *(a1 + 84);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "luxShift", *(a1 + 56));
  v5 = *(a1 + 84);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(a1 + 60);
  PB::TextFormatter::format(this, "motionType");
  v5 = *(a1 + 84);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a1 + 64);
  PB::TextFormatter::format(this, "orientation");
  v5 = *(a1 + 84);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "pocketProbEnter", *(a1 + 68));
  v5 = *(a1 + 84);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "pocketProbExit", *(a1 + 72));
  v5 = *(a1 + 84);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 76));
  v5 = *(a1 + 84);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v11 = *(a1 + 80);
  PB::TextFormatter::format(this, "shouldSuppress");
  v5 = *(a1 + 84);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_41:
  v12 = *(a1 + 81);
  PB::TextFormatter::format(this, "sufficientMotion");
  if (*(a1 + 84))
  {
LABEL_20:
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_21:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B559F94(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_175;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 84) |= 1u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v22;
            v90 = (v23 + v22);
            v91 = v22 + 1;
            while (1)
            {
              if (!v89)
              {
                v26 = 0;
                *(this + 24) = 1;
                goto LABEL_166;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v26 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_165;
              }
            }

            if (*(this + 24))
            {
              v26 = 0;
            }

LABEL_165:
            v2 = v92;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(this + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_166;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_166:
          *(a1 + 8) = v26;
          goto LABEL_171;
        case 2u:
          *(a1 + 84) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v55 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v54 = *(*this + v2++);
            *(this + 1) = v2;
            v55 = v54 != 0;
          }

          *(a1 + 80) = v55;
          goto LABEL_171;
        case 3u:
          *(a1 + 84) |= 4u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v38;
            v76 = (v39 + v38);
            v77 = v38 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v42 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              --v75;
              ++v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_157:
                v2 = v78;
                goto LABEL_158;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_157;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_158;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_158:
          *(a1 + 20) = v42;
          goto LABEL_171;
        case 4u:
          *(a1 + 84) |= 0x2000u;
          v46 = *(this + 1);
          v2 = *(this + 2);
          v47 = *this;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v46;
            v83 = (v47 + v46);
            v84 = v46 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v50) = 0;
                *(this + 24) = 1;
                goto LABEL_162;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v50 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              --v82;
              ++v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_161:
                v2 = v85;
                goto LABEL_162;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_161;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(this + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_162;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_162:
          *(a1 + 64) = v50;
          goto LABEL_171;
        case 5u:
          *(a1 + 84) |= 0x1000u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v30;
            v69 = (v31 + v30);
            v70 = v30 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_154;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v34 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_153:
                v2 = v71;
                goto LABEL_154;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_153;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_154;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_154:
          *(a1 + 60) = v34;
          goto LABEL_171;
        case 6u:
          *(a1 + 84) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_145;
        case 7u:
          *(a1 + 84) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_145;
        case 8u:
          *(a1 + 84) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_145;
        case 9u:
          *(a1 + 84) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_145;
        case 0xAu:
          *(a1 + 84) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_145;
        case 0xBu:
          *(a1 + 84) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_145;
        case 0xCu:
          *(a1 + 84) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_145;
        case 0xDu:
          *(a1 + 84) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_145;
        case 0xEu:
          *(a1 + 84) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_145;
        case 0xFu:
          *(a1 + 84) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_145;
        case 0x10u:
          *(a1 + 84) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_97;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_145;
        case 0x11u:
          *(a1 + 84) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_97:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 44) = *(*this + v2);
LABEL_145:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          goto LABEL_171;
        case 0x12u:
          *(a1 + 84) |= 2u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v96 = v2 - v56;
            v97 = (v57 + v56);
            v98 = v56 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_170;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v60 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              --v96;
              ++v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_169:
                v2 = v99;
                goto LABEL_170;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_169;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_170;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_170:
          *(a1 + 16) = v60;
          goto LABEL_171;
        case 0x13u:
          *(a1 + 84) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v64 = *(*this + v2++);
            *(this + 1) = v2;
            v65 = v64 != 0;
          }

          *(a1 + 81) = v65;
          goto LABEL_171;
        default:
          if (!PB::Reader::skip(this))
          {
            v101 = 0;
            return v101 & 1;
          }

          v2 = *(this + 1);
LABEL_171:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_175;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_175:
  v101 = v4 ^ 1;
  return v101 & 1;
}