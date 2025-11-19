uint64_t sub_19B4D340C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

double sub_19B4D3428(uint64_t a1)
{
  *a1 = &unk_1F0E38D20;
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
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
  return result;
}

void sub_19B4D3480(PB::Base *this)
{
  *this = &unk_1F0E38D20;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }

  PB::Base::~Base(this);
}

void sub_19B4D3554(PB::Base *a1)
{
  sub_19B4D3480(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D358C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "dark0");
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "dark1");
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "dark2");
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "dark3");
  }

  v17 = *(a1 + 224);
  if ((v17 & 4) != 0)
  {
    v18 = *(a1 + 216);
    PB::TextFormatter::format(this, "error");
    v17 = *(a1 + 224);
  }

  if ((v17 & 8) != 0)
  {
    v19 = *(a1 + 220);
    PB::TextFormatter::format(this, "frameNum");
  }

  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "ledCurrent");
  }

  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  while (v23 != v24)
  {
    v25 = *v23++;
    PB::TextFormatter::format(this, "light0");
  }

  v26 = *(a1 + 152);
  v27 = *(a1 + 160);
  while (v26 != v27)
  {
    v28 = *v26++;
    PB::TextFormatter::format(this, "light1");
  }

  v29 = *(a1 + 176);
  v30 = *(a1 + 184);
  while (v29 != v30)
  {
    v31 = *v29++;
    PB::TextFormatter::format(this, "rxGain");
  }

  v32 = *(a1 + 224);
  if (v32)
  {
    v33 = *(a1 + 200);
    PB::TextFormatter::format(this, "sensorTime");
    v32 = *(a1 + 224);
  }

  if ((v32 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 208));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D37B0(uint64_t a1, PB::Reader *this)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (v17)
        {
          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v49 = v15++ > 8;
          if (v49)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(this + 24) = 1;
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
        v49 = v9++ > 8;
        if (v49)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 160);
                  while (1)
                  {
                    v147 = *(a1 + 168);
                    if (v32 >= v147)
                    {
                      v148 = *(a1 + 152);
                      v149 = v32 - v148;
                      v150 = (v32 - v148) >> 2;
                      v151 = v150 + 1;
                      if ((v150 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v152 = v147 - v148;
                      if (v152 >> 1 > v151)
                      {
                        v151 = v152 >> 1;
                      }

                      if (v152 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v153 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v153 = v151;
                      }

                      if (v153)
                      {
                        sub_19B4C4FA8(a1 + 152, v153);
                      }

                      v154 = (v32 - v148) >> 2;
                      v155 = (4 * v150);
                      v156 = (4 * v150 - 4 * v154);
                      *v155 = 0;
                      v32 = (v155 + 1);
                      memcpy(v156, v148, v149);
                      v157 = *(a1 + 152);
                      *(a1 + 152) = v156;
                      *(a1 + 160) = v32;
                      *(a1 + 168) = 0;
                      if (v157)
                      {
                        operator delete(v157);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 160) = v32;
                    v159 = *(this + 1);
                    v158 = *(this + 2);
                    v160 = *this;
                    v161 = 0;
                    v162 = 0;
                    if (v159 > 0xFFFFFFFFFFFFFFF5 || v159 + 10 > v158)
                    {
                      break;
                    }

                    v169 = 0;
                    v170 = (v160 + v159);
                    v171 = v159 + 1;
                    while (1)
                    {
                      v167 = v171;
                      *(this + 1) = v171;
                      v172 = *v170++;
                      v169 |= (v172 & 0x7F) << v161;
                      if ((v172 & 0x80) == 0)
                      {
                        break;
                      }

                      v161 += 7;
                      ++v171;
                      v49 = v162++ > 8;
                      if (v49)
                      {
                        goto LABEL_243;
                      }
                    }

LABEL_246:
                    *(v32 - 1) = v169;
                    if (v167 >= v158 || (*(this + 24) & 1) != 0)
                    {
                      goto LABEL_374;
                    }
                  }

                  v169 = 0;
                  v164 = v158 - v159;
                  if (v158 < v159)
                  {
                    v164 = 0;
                  }

                  v165 = (v160 + v159);
                  v166 = v159 + 1;
                  while (v164)
                  {
                    v167 = v166;
                    v168 = *v165;
                    *(this + 1) = v167;
                    v169 |= (v168 & 0x7F) << v161;
                    if ((v168 & 0x80) == 0)
                    {
                      if (*(this + 24))
                      {
                        LODWORD(v169) = 0;
                      }

                      goto LABEL_246;
                    }

                    v161 += 7;
                    --v164;
                    ++v165;
                    v166 = v167 + 1;
                    v49 = v162++ > 8;
                    if (v49)
                    {
LABEL_243:
                      LODWORD(v169) = 0;
                      goto LABEL_246;
                    }
                  }

LABEL_373:
                  *(this + 24) = 1;
                  *(v32 - 1) = 0;
                }

                goto LABEL_374;
              }

              v288 = *(a1 + 160);
              v287 = *(a1 + 168);
              if (v288 >= v287)
              {
                v319 = *(a1 + 152);
                v320 = v288 - v319;
                v321 = (v288 - v319) >> 2;
                v322 = v321 + 1;
                if ((v321 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v323 = v287 - v319;
                if (v323 >> 1 > v322)
                {
                  v322 = v323 >> 1;
                }

                if (v323 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v324 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v324 = v322;
                }

                if (v324)
                {
                  sub_19B4C4FA8(a1 + 152, v324);
                }

                v416 = (v288 - v319) >> 2;
                v417 = (4 * v321);
                v418 = (4 * v321 - 4 * v416);
                *v417 = 0;
                v268 = v417 + 1;
                memcpy(v418, v319, v320);
                v419 = *(a1 + 152);
                *(a1 + 152) = v418;
                *(a1 + 160) = v268;
                *(a1 + 168) = 0;
                if (v419)
                {
                  operator delete(v419);
                }
              }

              else
              {
                *v288 = 0;
                v268 = v288 + 4;
              }

              *(a1 + 160) = v268;
              v421 = *(this + 1);
              v420 = *(this + 2);
              v422 = *this;
              if (v421 <= 0xFFFFFFFFFFFFFFF5 && v421 + 10 <= v420)
              {
                v423 = 0;
                v424 = 0;
                v352 = 0;
                v425 = (v422 + v421);
                v426 = v421 + 1;
                while (1)
                {
                  *(this + 1) = v426;
                  v427 = *v425++;
                  v352 |= (v427 & 0x7F) << v423;
                  if ((v427 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v423 += 7;
                  ++v426;
                  v49 = v424++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v428 = 0;
              v429 = 0;
              v352 = 0;
              v16 = v420 >= v421;
              v430 = v420 - v421;
              if (!v16)
              {
                v430 = 0;
              }

              v431 = (v422 + v421);
              v432 = v421 + 1;
              while (v430)
              {
                v433 = *v431;
                *(this + 1) = v432;
                v352 |= (v433 & 0x7F) << v428;
                if ((v433 & 0x80) == 0)
                {
LABEL_631:
                  if (*(this + 24))
                  {
                    LODWORD(v352) = 0;
                  }

                  goto LABEL_633;
                }

                v428 += 7;
                --v430;
                ++v431;
                ++v432;
                v49 = v429++ > 8;
                if (v49)
                {
LABEL_629:
                  LODWORD(v352) = 0;
                  goto LABEL_633;
                }
              }

              goto LABEL_630;
            case 0xB:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 184);
                  do
                  {
                    v234 = *(a1 + 192);
                    if (v32 >= v234)
                    {
                      v235 = *(a1 + 176);
                      v236 = v32 - v235;
                      v237 = (v32 - v235) >> 2;
                      v238 = v237 + 1;
                      if ((v237 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v239 = v234 - v235;
                      if (v239 >> 1 > v238)
                      {
                        v238 = v239 >> 1;
                      }

                      if (v239 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v240 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v240 = v238;
                      }

                      if (v240)
                      {
                        sub_19B4C4FA8(a1 + 176, v240);
                      }

                      v241 = (v32 - v235) >> 2;
                      v242 = (4 * v237);
                      v243 = (4 * v237 - 4 * v241);
                      *v242 = 0;
                      v32 = (v242 + 1);
                      memcpy(v243, v235, v236);
                      v244 = *(a1 + 176);
                      *(a1 + 176) = v243;
                      *(a1 + 184) = v32;
                      *(a1 + 192) = 0;
                      if (v244)
                      {
                        operator delete(v244);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 184) = v32;
                    v246 = *(this + 1);
                    v245 = *(this + 2);
                    v247 = *this;
                    v248 = 0;
                    v249 = 0;
                    if (v246 > 0xFFFFFFFFFFFFFFF5 || v246 + 10 > v245)
                    {
                      v256 = 0;
                      v251 = v245 - v246;
                      if (v245 < v246)
                      {
                        v251 = 0;
                      }

                      v252 = (v247 + v246);
                      v253 = v246 + 1;
                      while (1)
                      {
                        if (!v251)
                        {
                          goto LABEL_373;
                        }

                        v254 = v253;
                        v255 = *v252;
                        *(this + 1) = v254;
                        v256 |= (v255 & 0x7F) << v248;
                        if ((v255 & 0x80) == 0)
                        {
                          break;
                        }

                        v248 += 7;
                        --v251;
                        ++v252;
                        v253 = v254 + 1;
                        v49 = v249++ > 8;
                        if (v49)
                        {
LABEL_367:
                          LODWORD(v256) = 0;
                          goto LABEL_370;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v256) = 0;
                      }
                    }

                    else
                    {
                      v256 = 0;
                      v257 = (v247 + v246);
                      v258 = v246 + 1;
                      while (1)
                      {
                        v254 = v258;
                        *(this + 1) = v258;
                        v259 = *v257++;
                        v256 |= (v259 & 0x7F) << v248;
                        if ((v259 & 0x80) == 0)
                        {
                          break;
                        }

                        v248 += 7;
                        ++v258;
                        v49 = v249++ > 8;
                        if (v49)
                        {
                          goto LABEL_367;
                        }
                      }
                    }

LABEL_370:
                    *(v32 - 1) = v256;
                  }

                  while (v254 < v245 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v294 = *(a1 + 184);
              v293 = *(a1 + 192);
              if (v294 >= v293)
              {
                v337 = *(a1 + 176);
                v338 = v294 - v337;
                v339 = (v294 - v337) >> 2;
                v340 = v339 + 1;
                if ((v339 + 1) >> 62)
                {
LABEL_641:
                  sub_19B5BE690();
                }

                v341 = v293 - v337;
                if (v341 >> 1 > v340)
                {
                  v340 = v341 >> 1;
                }

                if (v341 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v342 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v342 = v340;
                }

                if (v342)
                {
                  sub_19B4C4FA8(a1 + 176, v342);
                }

                v470 = (v294 - v337) >> 2;
                v471 = (4 * v339);
                v472 = (4 * v339 - 4 * v470);
                *v471 = 0;
                v268 = v471 + 1;
                memcpy(v472, v337, v338);
                v473 = *(a1 + 176);
                *(a1 + 176) = v472;
                *(a1 + 184) = v268;
                *(a1 + 192) = 0;
                if (v473)
                {
                  operator delete(v473);
                }
              }

              else
              {
                *v294 = 0;
                v268 = v294 + 4;
              }

              *(a1 + 184) = v268;
              v475 = *(this + 1);
              v474 = *(this + 2);
              v476 = *this;
              if (v475 <= 0xFFFFFFFFFFFFFFF5 && v475 + 10 <= v474)
              {
                v477 = 0;
                v478 = 0;
                v352 = 0;
                v479 = (v476 + v475);
                v480 = v475 + 1;
                while (1)
                {
                  *(this + 1) = v480;
                  v481 = *v479++;
                  v352 |= (v481 & 0x7F) << v477;
                  if ((v481 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v477 += 7;
                  ++v480;
                  v49 = v478++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v482 = 0;
              v483 = 0;
              v352 = 0;
              v16 = v474 >= v475;
              v484 = v474 - v475;
              if (!v16)
              {
                v484 = 0;
              }

              v485 = (v476 + v475);
              v486 = v475 + 1;
              while (v484)
              {
                v487 = *v485;
                *(this + 1) = v486;
                v352 |= (v487 & 0x7F) << v482;
                if ((v487 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v482 += 7;
                --v484;
                ++v485;
                ++v486;
                v49 = v483++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 0xC:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 112);
                  do
                  {
                    v85 = *(a1 + 120);
                    if (v32 >= v85)
                    {
                      v86 = *(a1 + 104);
                      v87 = v32 - v86;
                      v88 = (v32 - v86) >> 2;
                      v89 = v88 + 1;
                      if ((v88 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v90 = v85 - v86;
                      if (v90 >> 1 > v89)
                      {
                        v89 = v90 >> 1;
                      }

                      if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v91 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v91 = v89;
                      }

                      if (v91)
                      {
                        sub_19B4C4FA8(a1 + 104, v91);
                      }

                      v92 = (v32 - v86) >> 2;
                      v93 = (4 * v88);
                      v94 = (4 * v88 - 4 * v92);
                      *v93 = 0;
                      v32 = (v93 + 1);
                      memcpy(v94, v86, v87);
                      v95 = *(a1 + 104);
                      *(a1 + 104) = v94;
                      *(a1 + 112) = v32;
                      *(a1 + 120) = 0;
                      if (v95)
                      {
                        operator delete(v95);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 112) = v32;
                    v97 = *(this + 1);
                    v96 = *(this + 2);
                    v98 = *this;
                    v99 = 0;
                    v100 = 0;
                    if (v97 > 0xFFFFFFFFFFFFFFF5 || v97 + 10 > v96)
                    {
                      v107 = 0;
                      v102 = v96 - v97;
                      if (v96 < v97)
                      {
                        v102 = 0;
                      }

                      v103 = (v98 + v97);
                      v104 = v97 + 1;
                      while (1)
                      {
                        if (!v102)
                        {
                          goto LABEL_373;
                        }

                        v105 = v104;
                        v106 = *v103;
                        *(this + 1) = v105;
                        v107 |= (v106 & 0x7F) << v99;
                        if ((v106 & 0x80) == 0)
                        {
                          break;
                        }

                        v99 += 7;
                        --v102;
                        ++v103;
                        v104 = v105 + 1;
                        v49 = v100++ > 8;
                        if (v49)
                        {
LABEL_155:
                          LODWORD(v107) = 0;
                          goto LABEL_158;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v107) = 0;
                      }
                    }

                    else
                    {
                      v107 = 0;
                      v108 = (v98 + v97);
                      v109 = v97 + 1;
                      while (1)
                      {
                        v105 = v109;
                        *(this + 1) = v109;
                        v110 = *v108++;
                        v107 |= (v110 & 0x7F) << v99;
                        if ((v110 & 0x80) == 0)
                        {
                          break;
                        }

                        v99 += 7;
                        ++v109;
                        v49 = v100++ > 8;
                        if (v49)
                        {
                          goto LABEL_155;
                        }
                      }
                    }

LABEL_158:
                    *(v32 - 1) = v107;
                  }

                  while (v105 < v96 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v272 = *(a1 + 112);
              v271 = *(a1 + 120);
              if (v272 >= v271)
              {
                v307 = *(a1 + 104);
                v308 = v272 - v307;
                v309 = (v272 - v307) >> 2;
                v310 = v309 + 1;
                if ((v309 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v311 = v271 - v307;
                if (v311 >> 1 > v310)
                {
                  v310 = v311 >> 1;
                }

                if (v311 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v312 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v312 = v310;
                }

                if (v312)
                {
                  sub_19B4C4FA8(a1 + 104, v312);
                }

                v380 = (v272 - v307) >> 2;
                v381 = (4 * v309);
                v382 = (4 * v309 - 4 * v380);
                *v381 = 0;
                v268 = v381 + 1;
                memcpy(v382, v307, v308);
                v383 = *(a1 + 104);
                *(a1 + 104) = v382;
                *(a1 + 112) = v268;
                *(a1 + 120) = 0;
                if (v383)
                {
                  operator delete(v383);
                }
              }

              else
              {
                *v272 = 0;
                v268 = v272 + 4;
              }

              *(a1 + 112) = v268;
              v385 = *(this + 1);
              v384 = *(this + 2);
              v386 = *this;
              if (v385 <= 0xFFFFFFFFFFFFFFF5 && v385 + 10 <= v384)
              {
                v387 = 0;
                v388 = 0;
                v352 = 0;
                v389 = (v386 + v385);
                v390 = v385 + 1;
                while (1)
                {
                  *(this + 1) = v390;
                  v391 = *v389++;
                  v352 |= (v391 & 0x7F) << v387;
                  if ((v391 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v387 += 7;
                  ++v390;
                  v49 = v388++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v392 = 0;
              v393 = 0;
              v352 = 0;
              v16 = v384 >= v385;
              v394 = v384 - v385;
              if (!v16)
              {
                v394 = 0;
              }

              v395 = (v386 + v385);
              v396 = v385 + 1;
              while (v394)
              {
                v397 = *v395;
                *(this + 1) = v396;
                v352 |= (v397 & 0x7F) << v392;
                if ((v397 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v392 += 7;
                --v394;
                ++v395;
                ++v396;
                v49 = v393++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 64);
                  do
                  {
                    v112 = *(a1 + 72);
                    if (v32 >= v112)
                    {
                      v113 = *(a1 + 56);
                      v114 = v32 - v113;
                      v115 = (v32 - v113) >> 2;
                      v116 = v115 + 1;
                      if ((v115 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v117 = v112 - v113;
                      if (v117 >> 1 > v116)
                      {
                        v116 = v117 >> 1;
                      }

                      if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v118 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v118 = v116;
                      }

                      if (v118)
                      {
                        sub_19B4C4FA8(a1 + 56, v118);
                      }

                      v119 = (v32 - v113) >> 2;
                      v120 = (4 * v115);
                      v121 = (4 * v115 - 4 * v119);
                      *v120 = 0;
                      v32 = (v120 + 1);
                      memcpy(v121, v113, v114);
                      v122 = *(a1 + 56);
                      *(a1 + 56) = v121;
                      *(a1 + 64) = v32;
                      *(a1 + 72) = 0;
                      if (v122)
                      {
                        operator delete(v122);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 64) = v32;
                    v124 = *(this + 1);
                    v123 = *(this + 2);
                    v125 = *this;
                    v126 = 0;
                    v127 = 0;
                    if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
                    {
                      v134 = 0;
                      v129 = v123 - v124;
                      if (v123 < v124)
                      {
                        v129 = 0;
                      }

                      v130 = (v125 + v124);
                      v131 = v124 + 1;
                      while (1)
                      {
                        if (!v129)
                        {
                          goto LABEL_373;
                        }

                        v132 = v131;
                        v133 = *v130;
                        *(this + 1) = v132;
                        v134 |= (v133 & 0x7F) << v126;
                        if ((v133 & 0x80) == 0)
                        {
                          break;
                        }

                        v126 += 7;
                        --v129;
                        ++v130;
                        v131 = v132 + 1;
                        v49 = v127++ > 8;
                        if (v49)
                        {
LABEL_197:
                          LODWORD(v134) = 0;
                          goto LABEL_200;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v134) = 0;
                      }
                    }

                    else
                    {
                      v134 = 0;
                      v135 = (v125 + v124);
                      v136 = v124 + 1;
                      while (1)
                      {
                        v132 = v136;
                        *(this + 1) = v136;
                        v137 = *v135++;
                        v134 |= (v137 & 0x7F) << v126;
                        if ((v137 & 0x80) == 0)
                        {
                          break;
                        }

                        v126 += 7;
                        ++v136;
                        v49 = v127++ > 8;
                        if (v49)
                        {
                          goto LABEL_197;
                        }
                      }
                    }

LABEL_200:
                    *(v32 - 1) = v134;
                  }

                  while (v132 < v123 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v286 = *(a1 + 64);
              v285 = *(a1 + 72);
              if (v286 >= v285)
              {
                v313 = *(a1 + 56);
                v314 = v286 - v313;
                v315 = (v286 - v313) >> 2;
                v316 = v315 + 1;
                if ((v315 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v317 = v285 - v313;
                if (v317 >> 1 > v316)
                {
                  v316 = v317 >> 1;
                }

                if (v317 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v318 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v318 = v316;
                }

                if (v318)
                {
                  sub_19B4C4FA8(a1 + 56, v318);
                }

                v398 = (v286 - v313) >> 2;
                v399 = (4 * v315);
                v400 = (4 * v315 - 4 * v398);
                *v399 = 0;
                v268 = v399 + 1;
                memcpy(v400, v313, v314);
                v401 = *(a1 + 56);
                *(a1 + 56) = v400;
                *(a1 + 64) = v268;
                *(a1 + 72) = 0;
                if (v401)
                {
                  operator delete(v401);
                }
              }

              else
              {
                *v286 = 0;
                v268 = v286 + 4;
              }

              *(a1 + 64) = v268;
              v403 = *(this + 1);
              v402 = *(this + 2);
              v404 = *this;
              if (v403 <= 0xFFFFFFFFFFFFFFF5 && v403 + 10 <= v402)
              {
                v405 = 0;
                v406 = 0;
                v352 = 0;
                v407 = (v404 + v403);
                v408 = v403 + 1;
                while (1)
                {
                  *(this + 1) = v408;
                  v409 = *v407++;
                  v352 |= (v409 & 0x7F) << v405;
                  if ((v409 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v405 += 7;
                  ++v408;
                  v49 = v406++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v410 = 0;
              v411 = 0;
              v352 = 0;
              v16 = v402 >= v403;
              v412 = v402 - v403;
              if (!v16)
              {
                v412 = 0;
              }

              v413 = (v404 + v403);
              v414 = v403 + 1;
              while (v412)
              {
                v415 = *v413;
                *(this + 1) = v414;
                v352 |= (v415 & 0x7F) << v410;
                if ((v415 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v410 += 7;
                --v412;
                ++v413;
                ++v414;
                v49 = v411++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 8:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 88);
                  do
                  {
                    v182 = *(a1 + 96);
                    if (v32 >= v182)
                    {
                      v183 = *(a1 + 80);
                      v184 = v32 - v183;
                      v185 = (v32 - v183) >> 2;
                      v186 = v185 + 1;
                      if ((v185 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v187 = v182 - v183;
                      if (v187 >> 1 > v186)
                      {
                        v186 = v187 >> 1;
                      }

                      if (v187 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v188 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v188 = v186;
                      }

                      if (v188)
                      {
                        sub_19B4C4FA8(a1 + 80, v188);
                      }

                      v189 = (v32 - v183) >> 2;
                      v190 = (4 * v185);
                      v191 = (4 * v185 - 4 * v189);
                      *v190 = 0;
                      v32 = (v190 + 1);
                      memcpy(v191, v183, v184);
                      v192 = *(a1 + 80);
                      *(a1 + 80) = v191;
                      *(a1 + 88) = v32;
                      *(a1 + 96) = 0;
                      if (v192)
                      {
                        operator delete(v192);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 88) = v32;
                    v194 = *(this + 1);
                    v193 = *(this + 2);
                    v195 = *this;
                    v196 = 0;
                    v197 = 0;
                    if (v194 > 0xFFFFFFFFFFFFFFF5 || v194 + 10 > v193)
                    {
                      v204 = 0;
                      v199 = v193 - v194;
                      if (v193 < v194)
                      {
                        v199 = 0;
                      }

                      v200 = (v195 + v194);
                      v201 = v194 + 1;
                      while (1)
                      {
                        if (!v199)
                        {
                          goto LABEL_373;
                        }

                        v202 = v201;
                        v203 = *v200;
                        *(this + 1) = v202;
                        v204 |= (v203 & 0x7F) << v196;
                        if ((v203 & 0x80) == 0)
                        {
                          break;
                        }

                        v196 += 7;
                        --v199;
                        ++v200;
                        v201 = v202 + 1;
                        v49 = v197++ > 8;
                        if (v49)
                        {
LABEL_289:
                          LODWORD(v204) = 0;
                          goto LABEL_292;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v204) = 0;
                      }
                    }

                    else
                    {
                      v204 = 0;
                      v205 = (v195 + v194);
                      v206 = v194 + 1;
                      while (1)
                      {
                        v202 = v206;
                        *(this + 1) = v206;
                        v207 = *v205++;
                        v204 |= (v207 & 0x7F) << v196;
                        if ((v207 & 0x80) == 0)
                        {
                          break;
                        }

                        v196 += 7;
                        ++v206;
                        v49 = v197++ > 8;
                        if (v49)
                        {
                          goto LABEL_289;
                        }
                      }
                    }

LABEL_292:
                    *(v32 - 1) = v204;
                  }

                  while (v202 < v193 && (*(this + 24) & 1) == 0);
                }

                goto LABEL_374;
              }

              v290 = *(a1 + 88);
              v289 = *(a1 + 96);
              if (v290 >= v289)
              {
                v325 = *(a1 + 80);
                v326 = v290 - v325;
                v327 = (v290 - v325) >> 2;
                v328 = v327 + 1;
                if ((v327 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v329 = v289 - v325;
                if (v329 >> 1 > v328)
                {
                  v328 = v329 >> 1;
                }

                if (v329 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v330 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v330 = v328;
                }

                if (v330)
                {
                  sub_19B4C4FA8(a1 + 80, v330);
                }

                v434 = (v290 - v325) >> 2;
                v435 = (4 * v327);
                v436 = (4 * v327 - 4 * v434);
                *v435 = 0;
                v268 = v435 + 1;
                memcpy(v436, v325, v326);
                v437 = *(a1 + 80);
                *(a1 + 80) = v436;
                *(a1 + 88) = v268;
                *(a1 + 96) = 0;
                if (v437)
                {
                  operator delete(v437);
                }
              }

              else
              {
                *v290 = 0;
                v268 = v290 + 4;
              }

              *(a1 + 88) = v268;
              v439 = *(this + 1);
              v438 = *(this + 2);
              v440 = *this;
              if (v439 <= 0xFFFFFFFFFFFFFFF5 && v439 + 10 <= v438)
              {
                v441 = 0;
                v442 = 0;
                v352 = 0;
                v443 = (v440 + v439);
                v444 = v439 + 1;
                while (1)
                {
                  *(this + 1) = v444;
                  v445 = *v443++;
                  v352 |= (v445 & 0x7F) << v441;
                  if ((v445 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v441 += 7;
                  ++v444;
                  v49 = v442++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v446 = 0;
              v447 = 0;
              v352 = 0;
              v16 = v438 >= v439;
              v448 = v438 - v439;
              if (!v16)
              {
                v448 = 0;
              }

              v449 = (v440 + v439);
              v450 = v439 + 1;
              while (v448)
              {
                v451 = *v449;
                *(this + 1) = v450;
                v352 |= (v451 & 0x7F) << v446;
                if ((v451 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v446 += 7;
                --v448;
                ++v449;
                ++v450;
                v49 = v447++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            case 9:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_640;
                }

                if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
                {
                  v32 = *(a1 + 136);
                  do
                  {
                    v33 = *(a1 + 144);
                    if (v32 >= v33)
                    {
                      v34 = *(a1 + 128);
                      v35 = v32 - v34;
                      v36 = (v32 - v34) >> 2;
                      v37 = v36 + 1;
                      if ((v36 + 1) >> 62)
                      {
                        goto LABEL_641;
                      }

                      v38 = v33 - v34;
                      if (v38 >> 1 > v37)
                      {
                        v37 = v38 >> 1;
                      }

                      if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v39 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v39 = v37;
                      }

                      if (v39)
                      {
                        sub_19B4C4FA8(a1 + 128, v39);
                      }

                      v40 = (v32 - v34) >> 2;
                      v41 = (4 * v36);
                      v42 = (4 * v36 - 4 * v40);
                      *v41 = 0;
                      v32 = (v41 + 1);
                      memcpy(v42, v34, v35);
                      v43 = *(a1 + 128);
                      *(a1 + 128) = v42;
                      *(a1 + 136) = v32;
                      *(a1 + 144) = 0;
                      if (v43)
                      {
                        operator delete(v43);
                      }
                    }

                    else
                    {
                      *v32 = 0;
                      v32 += 4;
                    }

                    *(a1 + 136) = v32;
                    v45 = *(this + 1);
                    v44 = *(this + 2);
                    v46 = *this;
                    v47 = 0;
                    v48 = 0;
                    v49 = v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v44;
                    if (v49)
                    {
                      v55 = 0;
                      v50 = v44 - v45;
                      if (v44 < v45)
                      {
                        v50 = 0;
                      }

                      v51 = (v46 + v45);
                      v52 = v45 + 1;
                      while (1)
                      {
                        if (!v50)
                        {
                          goto LABEL_373;
                        }

                        v53 = v52;
                        v54 = *v51;
                        *(this + 1) = v53;
                        v55 |= (v54 & 0x7F) << v47;
                        if ((v54 & 0x80) == 0)
                        {
                          break;
                        }

                        v47 += 7;
                        --v50;
                        ++v51;
                        v52 = v53 + 1;
                        v49 = v48++ > 8;
                        if (v49)
                        {
LABEL_71:
                          LODWORD(v55) = 0;
                          goto LABEL_74;
                        }
                      }

                      if (*(this + 24))
                      {
                        LODWORD(v55) = 0;
                      }
                    }

                    else
                    {
                      v55 = 0;
                      v56 = (v46 + v45);
                      v57 = v45 + 1;
                      while (1)
                      {
                        v53 = v57;
                        *(this + 1) = v57;
                        v58 = *v56++;
                        v55 |= (v58 & 0x7F) << v47;
                        if ((v58 & 0x80) == 0)
                        {
                          break;
                        }

                        v47 += 7;
                        ++v57;
                        v49 = v48++ > 8;
                        if (v49)
                        {
                          goto LABEL_71;
                        }
                      }
                    }

LABEL_74:
                    *(v32 - 1) = v55;
                  }

                  while (v53 < v44 && (*(this + 24) & 1) == 0);
                }

LABEL_374:
                PB::Reader::recallMark();
                goto LABEL_634;
              }

              v267 = *(a1 + 136);
              v266 = *(a1 + 144);
              if (v267 >= v266)
              {
                v295 = *(a1 + 128);
                v296 = v267 - v295;
                v297 = (v267 - v295) >> 2;
                v298 = v297 + 1;
                if ((v297 + 1) >> 62)
                {
                  goto LABEL_641;
                }

                v299 = v266 - v295;
                if (v299 >> 1 > v298)
                {
                  v298 = v299 >> 1;
                }

                if (v299 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v300 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v300 = v298;
                }

                if (v300)
                {
                  sub_19B4C4FA8(a1 + 128, v300);
                }

                v343 = (v267 - v295) >> 2;
                v344 = (4 * v297);
                v345 = (4 * v297 - 4 * v343);
                *v344 = 0;
                v268 = v344 + 1;
                memcpy(v345, v295, v296);
                v346 = *(a1 + 128);
                *(a1 + 128) = v345;
                *(a1 + 136) = v268;
                *(a1 + 144) = 0;
                if (v346)
                {
                  operator delete(v346);
                }
              }

              else
              {
                *v267 = 0;
                v268 = v267 + 4;
              }

              *(a1 + 136) = v268;
              v348 = *(this + 1);
              v347 = *(this + 2);
              v349 = *this;
              if (v348 <= 0xFFFFFFFFFFFFFFF5 && v348 + 10 <= v347)
              {
                v350 = 0;
                v351 = 0;
                v352 = 0;
                v353 = (v349 + v348);
                v354 = v348 + 1;
                while (1)
                {
                  *(this + 1) = v354;
                  v355 = *v353++;
                  v352 |= (v355 & 0x7F) << v350;
                  if ((v355 & 0x80) == 0)
                  {
                    goto LABEL_633;
                  }

                  v350 += 7;
                  ++v354;
                  v49 = v351++ > 8;
                  if (v49)
                  {
                    goto LABEL_629;
                  }
                }
              }

              v356 = 0;
              v357 = 0;
              v352 = 0;
              v16 = v347 >= v348;
              v358 = v347 - v348;
              if (!v16)
              {
                v358 = 0;
              }

              v359 = (v349 + v348);
              v360 = v348 + 1;
              while (v358)
              {
                v361 = *v359;
                *(this + 1) = v360;
                v352 |= (v361 & 0x7F) << v356;
                if ((v361 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v356 += 7;
                --v358;
                ++v359;
                ++v360;
                v49 = v357++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 224) |= 4u;
            v139 = *(this + 1);
            v138 = *(this + 2);
            v140 = *this;
            if (v139 > 0xFFFFFFFFFFFFFFF5 || v139 + 10 > v138)
            {
              v273 = 0;
              v274 = 0;
              v143 = 0;
              v16 = v138 >= v139;
              v275 = v138 - v139;
              if (!v16)
              {
                v275 = 0;
              }

              v276 = (v140 + v139);
              v277 = v139 + 1;
              while (1)
              {
                if (!v275)
                {
                  LODWORD(v143) = 0;
                  *(this + 24) = 1;
                  goto LABEL_490;
                }

                v278 = *v276;
                *(this + 1) = v277;
                v143 |= (v278 & 0x7F) << v273;
                if ((v278 & 0x80) == 0)
                {
                  break;
                }

                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v49 = v274++ > 8;
                if (v49)
                {
LABEL_398:
                  LODWORD(v143) = 0;
                  goto LABEL_490;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v143) = 0;
              }
            }

            else
            {
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v144 = (v140 + v139);
              v145 = v139 + 1;
              while (1)
              {
                *(this + 1) = v145;
                v146 = *v144++;
                v143 |= (v146 & 0x7F) << v141;
                if ((v146 & 0x80) == 0)
                {
                  break;
                }

                v141 += 7;
                ++v145;
                v49 = v142++ > 8;
                if (v49)
                {
                  goto LABEL_398;
                }
              }
            }

LABEL_490:
            *(a1 + 216) = v143;
            goto LABEL_634;
          case 5:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_640;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v32 = *(a1 + 16);
                do
                {
                  v208 = *(a1 + 24);
                  if (v32 >= v208)
                  {
                    v209 = *(a1 + 8);
                    v210 = v32 - v209;
                    v211 = (v32 - v209) >> 2;
                    v212 = v211 + 1;
                    if ((v211 + 1) >> 62)
                    {
                      goto LABEL_641;
                    }

                    v213 = v208 - v209;
                    if (v213 >> 1 > v212)
                    {
                      v212 = v213 >> 1;
                    }

                    if (v213 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v214 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v214 = v212;
                    }

                    if (v214)
                    {
                      sub_19B4C4FA8(a1 + 8, v214);
                    }

                    v215 = (v32 - v209) >> 2;
                    v216 = (4 * v211);
                    v217 = (4 * v211 - 4 * v215);
                    *v216 = 0;
                    v32 = (v216 + 1);
                    memcpy(v217, v209, v210);
                    v218 = *(a1 + 8);
                    *(a1 + 8) = v217;
                    *(a1 + 16) = v32;
                    *(a1 + 24) = 0;
                    if (v218)
                    {
                      operator delete(v218);
                    }
                  }

                  else
                  {
                    *v32 = 0;
                    v32 += 4;
                  }

                  *(a1 + 16) = v32;
                  v220 = *(this + 1);
                  v219 = *(this + 2);
                  v221 = *this;
                  v222 = 0;
                  v223 = 0;
                  if (v220 > 0xFFFFFFFFFFFFFFF5 || v220 + 10 > v219)
                  {
                    v230 = 0;
                    v225 = v219 - v220;
                    if (v219 < v220)
                    {
                      v225 = 0;
                    }

                    v226 = (v221 + v220);
                    v227 = v220 + 1;
                    while (1)
                    {
                      if (!v225)
                      {
                        goto LABEL_373;
                      }

                      v228 = v227;
                      v229 = *v226;
                      *(this + 1) = v228;
                      v230 |= (v229 & 0x7F) << v222;
                      if ((v229 & 0x80) == 0)
                      {
                        break;
                      }

                      v222 += 7;
                      --v225;
                      ++v226;
                      v227 = v228 + 1;
                      v49 = v223++ > 8;
                      if (v49)
                      {
LABEL_328:
                        LODWORD(v230) = 0;
                        goto LABEL_331;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v230) = 0;
                    }
                  }

                  else
                  {
                    v230 = 0;
                    v231 = (v221 + v220);
                    v232 = v220 + 1;
                    while (1)
                    {
                      v228 = v232;
                      *(this + 1) = v232;
                      v233 = *v231++;
                      v230 |= (v233 & 0x7F) << v222;
                      if ((v233 & 0x80) == 0)
                      {
                        break;
                      }

                      v222 += 7;
                      ++v232;
                      v49 = v223++ > 8;
                      if (v49)
                      {
                        goto LABEL_328;
                      }
                    }
                  }

LABEL_331:
                  *(v32 - 1) = v230;
                }

                while (v228 < v219 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_374;
            }

            v292 = *(a1 + 16);
            v291 = *(a1 + 24);
            if (v292 >= v291)
            {
              v331 = *(a1 + 8);
              v332 = v292 - v331;
              v333 = (v292 - v331) >> 2;
              v334 = v333 + 1;
              if ((v333 + 1) >> 62)
              {
                goto LABEL_641;
              }

              v335 = v291 - v331;
              if (v335 >> 1 > v334)
              {
                v334 = v335 >> 1;
              }

              if (v335 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v336 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v336 = v334;
              }

              if (v336)
              {
                sub_19B4C4FA8(a1 + 8, v336);
              }

              v452 = (v292 - v331) >> 2;
              v453 = (4 * v333);
              v454 = (4 * v333 - 4 * v452);
              *v453 = 0;
              v268 = v453 + 1;
              memcpy(v454, v331, v332);
              v455 = *(a1 + 8);
              *(a1 + 8) = v454;
              *(a1 + 16) = v268;
              *(a1 + 24) = 0;
              if (v455)
              {
                operator delete(v455);
              }
            }

            else
            {
              *v292 = 0;
              v268 = v292 + 4;
            }

            *(a1 + 16) = v268;
            v457 = *(this + 1);
            v456 = *(this + 2);
            v458 = *this;
            if (v457 <= 0xFFFFFFFFFFFFFFF5 && v457 + 10 <= v456)
            {
              v459 = 0;
              v460 = 0;
              v352 = 0;
              v461 = (v458 + v457);
              v462 = v457 + 1;
              while (1)
              {
                *(this + 1) = v462;
                v463 = *v461++;
                v352 |= (v463 & 0x7F) << v459;
                if ((v463 & 0x80) == 0)
                {
                  goto LABEL_633;
                }

                v459 += 7;
                ++v462;
                v49 = v460++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }
            }

            v464 = 0;
            v465 = 0;
            v352 = 0;
            v16 = v456 >= v457;
            v466 = v456 - v457;
            if (!v16)
            {
              v466 = 0;
            }

            v467 = (v458 + v457);
            v468 = v457 + 1;
            while (v466)
            {
              v469 = *v467;
              *(this + 1) = v468;
              v352 |= (v469 & 0x7F) << v464;
              if ((v469 & 0x80) == 0)
              {
                goto LABEL_631;
              }

              v464 += 7;
              --v466;
              ++v467;
              ++v468;
              v49 = v465++ > 8;
              if (v49)
              {
                goto LABEL_629;
              }
            }

LABEL_630:
            LODWORD(v352) = 0;
            *(this + 24) = 1;
LABEL_633:
            *(v268 - 1) = v352;
            goto LABEL_634;
          case 6:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_640;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v32 = *(a1 + 40);
                do
                {
                  v59 = *(a1 + 48);
                  if (v32 >= v59)
                  {
                    v60 = *(a1 + 32);
                    v61 = v32 - v60;
                    v62 = (v32 - v60) >> 2;
                    v63 = v62 + 1;
                    if ((v62 + 1) >> 62)
                    {
                      goto LABEL_641;
                    }

                    v64 = v59 - v60;
                    if (v64 >> 1 > v63)
                    {
                      v63 = v64 >> 1;
                    }

                    if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v65 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v65)
                    {
                      sub_19B4C4FA8(a1 + 32, v65);
                    }

                    v66 = (v32 - v60) >> 2;
                    v67 = (4 * v62);
                    v68 = (4 * v62 - 4 * v66);
                    *v67 = 0;
                    v32 = (v67 + 1);
                    memcpy(v68, v60, v61);
                    v69 = *(a1 + 32);
                    *(a1 + 32) = v68;
                    *(a1 + 40) = v32;
                    *(a1 + 48) = 0;
                    if (v69)
                    {
                      operator delete(v69);
                    }
                  }

                  else
                  {
                    *v32 = 0;
                    v32 += 4;
                  }

                  *(a1 + 40) = v32;
                  v71 = *(this + 1);
                  v70 = *(this + 2);
                  v72 = *this;
                  v73 = 0;
                  v74 = 0;
                  if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v70)
                  {
                    v81 = 0;
                    v76 = v70 - v71;
                    if (v70 < v71)
                    {
                      v76 = 0;
                    }

                    v77 = (v72 + v71);
                    v78 = v71 + 1;
                    while (1)
                    {
                      if (!v76)
                      {
                        goto LABEL_373;
                      }

                      v79 = v78;
                      v80 = *v77;
                      *(this + 1) = v79;
                      v81 |= (v80 & 0x7F) << v73;
                      if ((v80 & 0x80) == 0)
                      {
                        break;
                      }

                      v73 += 7;
                      --v76;
                      ++v77;
                      v78 = v79 + 1;
                      v49 = v74++ > 8;
                      if (v49)
                      {
LABEL_113:
                        LODWORD(v81) = 0;
                        goto LABEL_116;
                      }
                    }

                    if (*(this + 24))
                    {
                      LODWORD(v81) = 0;
                    }
                  }

                  else
                  {
                    v81 = 0;
                    v82 = (v72 + v71);
                    v83 = v71 + 1;
                    while (1)
                    {
                      v79 = v83;
                      *(this + 1) = v83;
                      v84 = *v82++;
                      v81 |= (v84 & 0x7F) << v73;
                      if ((v84 & 0x80) == 0)
                      {
                        break;
                      }

                      v73 += 7;
                      ++v83;
                      v49 = v74++ > 8;
                      if (v49)
                      {
                        goto LABEL_113;
                      }
                    }
                  }

LABEL_116:
                  *(v32 - 1) = v81;
                }

                while (v79 < v70 && (*(this + 24) & 1) == 0);
              }

              goto LABEL_374;
            }

            v270 = *(a1 + 40);
            v269 = *(a1 + 48);
            if (v270 >= v269)
            {
              v301 = *(a1 + 32);
              v302 = v270 - v301;
              v303 = (v270 - v301) >> 2;
              v304 = v303 + 1;
              if ((v303 + 1) >> 62)
              {
                goto LABEL_641;
              }

              v305 = v269 - v301;
              if (v305 >> 1 > v304)
              {
                v304 = v305 >> 1;
              }

              if (v305 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v306 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v306 = v304;
              }

              if (v306)
              {
                sub_19B4C4FA8(a1 + 32, v306);
              }

              v362 = (v270 - v301) >> 2;
              v363 = (4 * v303);
              v364 = (4 * v303 - 4 * v362);
              *v363 = 0;
              v268 = v363 + 1;
              memcpy(v364, v301, v302);
              v365 = *(a1 + 32);
              *(a1 + 32) = v364;
              *(a1 + 40) = v268;
              *(a1 + 48) = 0;
              if (v365)
              {
                operator delete(v365);
              }
            }

            else
            {
              *v270 = 0;
              v268 = v270 + 4;
            }

            *(a1 + 40) = v268;
            v367 = *(this + 1);
            v366 = *(this + 2);
            v368 = *this;
            if (v367 > 0xFFFFFFFFFFFFFFF5 || v367 + 10 > v366)
            {
              v374 = 0;
              v375 = 0;
              v352 = 0;
              v16 = v366 >= v367;
              v376 = v366 - v367;
              if (!v16)
              {
                v376 = 0;
              }

              v377 = (v368 + v367);
              v378 = v367 + 1;
              while (v376)
              {
                v379 = *v377;
                *(this + 1) = v378;
                v352 |= (v379 & 0x7F) << v374;
                if ((v379 & 0x80) == 0)
                {
                  goto LABEL_631;
                }

                v374 += 7;
                --v376;
                ++v377;
                ++v378;
                v49 = v375++ > 8;
                if (v49)
                {
                  goto LABEL_629;
                }
              }

              goto LABEL_630;
            }

            v369 = 0;
            v370 = 0;
            v352 = 0;
            v371 = (v368 + v367);
            v372 = v367 + 1;
            while (1)
            {
              *(this + 1) = v372;
              v373 = *v371++;
              v352 |= (v373 & 0x7F) << v369;
              if ((v373 & 0x80) == 0)
              {
                goto LABEL_633;
              }

              v369 += 7;
              ++v372;
              v49 = v370++ > 8;
              if (v49)
              {
                goto LABEL_629;
              }
            }
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 224) |= 2u;
            v111 = *(this + 1);
            if (v111 <= 0xFFFFFFFFFFFFFFF7 && v111 + 8 <= *(this + 2))
            {
              *(a1 + 208) = *(*this + v111);
              *(this + 1) += 8;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_634;
          case 2:
            *(a1 + 224) |= 1u;
            v174 = *(this + 1);
            v173 = *(this + 2);
            v175 = *this;
            if (v174 > 0xFFFFFFFFFFFFFFF5 || v174 + 10 > v173)
            {
              v279 = 0;
              v280 = 0;
              v178 = 0;
              v16 = v173 >= v174;
              v281 = v173 - v174;
              if (!v16)
              {
                v281 = 0;
              }

              v282 = (v175 + v174);
              v283 = v174 + 1;
              while (1)
              {
                if (!v281)
                {
                  v178 = 0;
                  *(this + 24) = 1;
                  goto LABEL_493;
                }

                v284 = *v282;
                *(this + 1) = v283;
                v178 |= (v284 & 0x7F) << v279;
                if ((v284 & 0x80) == 0)
                {
                  break;
                }

                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v49 = v280++ > 8;
                if (v49)
                {
LABEL_406:
                  v178 = 0;
                  goto LABEL_493;
                }
              }

              if (*(this + 24))
              {
                v178 = 0;
              }
            }

            else
            {
              v176 = 0;
              v177 = 0;
              v178 = 0;
              v179 = (v175 + v174);
              v180 = v174 + 1;
              while (1)
              {
                *(this + 1) = v180;
                v181 = *v179++;
                v178 |= (v181 & 0x7F) << v176;
                if ((v181 & 0x80) == 0)
                {
                  break;
                }

                v176 += 7;
                ++v180;
                v49 = v177++ > 8;
                if (v49)
                {
                  goto LABEL_406;
                }
              }
            }

LABEL_493:
            *(a1 + 200) = v178;
            goto LABEL_634;
          case 3:
            *(a1 + 224) |= 8u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v260 = 0;
              v261 = 0;
              v28 = 0;
              v16 = v23 >= v24;
              v262 = v23 - v24;
              if (!v16)
              {
                v262 = 0;
              }

              v263 = (v25 + v24);
              v264 = v24 + 1;
              while (1)
              {
                if (!v262)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_487;
                }

                v265 = *v263;
                *(this + 1) = v264;
                v28 |= (v265 & 0x7F) << v260;
                if ((v265 & 0x80) == 0)
                {
                  break;
                }

                v260 += 7;
                --v262;
                ++v263;
                ++v264;
                v49 = v261++ > 8;
                if (v49)
                {
LABEL_384:
                  LODWORD(v28) = 0;
                  goto LABEL_487;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v49 = v27++ > 8;
                if (v49)
                {
                  goto LABEL_384;
                }
              }
            }

LABEL_487:
            *(a1 + 220) = v28;
            goto LABEL_634;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_640:
        v488 = 0;
        return v488 & 1;
      }

LABEL_634:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v488 = v4 ^ 1;
  return v488 & 1;
}

uint64_t sub_19B4D55AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 224);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 208));
    v4 = *(v3 + 224);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_33:
      v31 = *(v3 + 220);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 224) & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 224) & 1) == 0)
  {
    goto LABEL_3;
  }

  v30 = *(v3 + 200);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v4 & 4) != 0)
  {
LABEL_5:
    v5 = *(v3 + 216);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_6:
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = PB::Writer::writeVarInt(this);
  }

  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::writeVarInt(this);
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    result = PB::Writer::writeVarInt(this);
  }

  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    result = PB::Writer::writeVarInt(this);
  }

  v18 = *(v3 + 128);
  v19 = *(v3 + 136);
  while (v18 != v19)
  {
    v20 = *v18++;
    result = PB::Writer::writeVarInt(this);
  }

  v21 = *(v3 + 152);
  v22 = *(v3 + 160);
  while (v21 != v22)
  {
    v23 = *v21++;
    result = PB::Writer::writeVarInt(this);
  }

  v24 = *(v3 + 176);
  v25 = *(v3 + 184);
  while (v24 != v25)
  {
    v26 = *v24++;
    result = PB::Writer::writeVarInt(this);
  }

  v28 = *(v3 + 104);
  v27 = *(v3 + 112);
  while (v28 != v27)
  {
    v29 = *v28++;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B4D5748(uint64_t result)
{
  *result = &unk_1F0E30148;
  *(result + 56) = 0;
  return result;
}

void sub_19B4D5770(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D57A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "base", *(a1 + 24));
    v5 = *(a1 + 56);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 28);
  PB::TextFormatter::format(this, "broken");
  v5 = *(a1 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = *(a1 + 32);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "peak", *(a1 + 36));
  v5 = *(a1 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a1 + 40);
  PB::TextFormatter::format(this, "sensor");
  v5 = *(a1 + 56);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  v5 = *(a1 + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a1 + 44);
  PB::TextFormatter::format(this, "sequenceNumber");
  v5 = *(a1 + 56);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a1 + 48);
  PB::TextFormatter::format(this, "status");
  v5 = *(a1 + 56);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "temp", *(a1 + 52));
  if ((*(a1 + 56) & 2) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D592C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_176;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 56) |= 0x100u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v80 = v2 - v39;
              v81 = (v40 + v39);
              v82 = v39 + 1;
              while (1)
              {
                if (!v80)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_155;
                }

                v83 = v82;
                v84 = *v81;
                *(this + 1) = v83;
                v43 |= (v84 & 0x7F) << v78;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                --v80;
                ++v81;
                v82 = v83 + 1;
                v14 = v79++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_154;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_154:
              v2 = v83;
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

LABEL_155:
            *(a1 + 48) = v43;
            goto LABEL_172;
          }

          if (v22 == 7)
          {
            *(a1 + 56) |= 0x80u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v73 = v2 - v31;
              v74 = (v32 + v31);
              v75 = v31 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_151;
                }

                v76 = v75;
                v77 = *v74;
                *(this + 1) = v76;
                v35 |= (v77 & 0x7F) << v71;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                --v73;
                ++v74;
                v75 = v76 + 1;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_150;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_150:
              v2 = v76;
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

LABEL_151:
            *(a1 + 44) = v35;
            goto LABEL_172;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 56) |= 0x40u;
              v47 = *(this + 1);
              v2 = *(this + 2);
              v48 = *this;
              if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
              {
                v85 = 0;
                v86 = 0;
                v51 = 0;
                if (v2 <= v47)
                {
                  v2 = *(this + 1);
                }

                v87 = v2 - v47;
                v88 = (v48 + v47);
                v89 = v47 + 1;
                while (1)
                {
                  if (!v87)
                  {
                    LODWORD(v51) = 0;
                    *(this + 24) = 1;
                    goto LABEL_159;
                  }

                  v90 = v89;
                  v91 = *v88;
                  *(this + 1) = v90;
                  v51 |= (v91 & 0x7F) << v85;
                  if ((v91 & 0x80) == 0)
                  {
                    break;
                  }

                  v85 += 7;
                  --v87;
                  ++v88;
                  v89 = v90 + 1;
                  v14 = v86++ > 8;
                  if (v14)
                  {
                    LODWORD(v51) = 0;
                    goto LABEL_158;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v51) = 0;
                }

LABEL_158:
                v2 = v90;
              }

              else
              {
                v49 = 0;
                v50 = 0;
                v51 = 0;
                v52 = (v48 + v47);
                v53 = v47 + 1;
                while (1)
                {
                  v2 = v53;
                  *(this + 1) = v53;
                  v54 = *v52++;
                  v51 |= (v54 & 0x7F) << v49;
                  if ((v54 & 0x80) == 0)
                  {
                    break;
                  }

                  v49 += 7;
                  ++v53;
                  v14 = v50++ > 8;
                  if (v14)
                  {
                    LODWORD(v51) = 0;
                    break;
                  }
                }
              }

LABEL_159:
              *(a1 + 40) = v51;
              goto LABEL_172;
            case 9:
              *(a1 + 56) |= 0x10u;
              v63 = *(this + 1);
              v2 = *(this + 2);
              v64 = *this;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v106 = 0;
                v107 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(this + 1);
                }

                v108 = v2 - v63;
                v109 = (v64 + v63);
                v110 = v63 + 1;
                while (1)
                {
                  if (!v108)
                  {
                    LODWORD(v67) = 0;
                    *(this + 24) = 1;
                    goto LABEL_171;
                  }

                  v111 = v110;
                  v112 = *v109;
                  *(this + 1) = v111;
                  v67 |= (v112 & 0x7F) << v106;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  --v108;
                  ++v109;
                  v110 = v111 + 1;
                  v14 = v107++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    goto LABEL_170;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_170:
                v2 = v111;
              }

              else
              {
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = (v64 + v63);
                v69 = v63 + 1;
                while (1)
                {
                  v2 = v69;
                  *(this + 1) = v69;
                  v70 = *v68++;
                  v67 |= (v70 & 0x7F) << v65;
                  if ((v70 & 0x80) == 0)
                  {
                    break;
                  }

                  v65 += 7;
                  ++v69;
                  v14 = v66++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    break;
                  }
                }
              }

LABEL_171:
              *(a1 + 32) = v67;
              goto LABEL_172;
            case 0xA:
              *(a1 + 56) |= 1u;
              v23 = *(this + 1);
              v2 = *(this + 2);
              v24 = *this;
              if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
              {
                v92 = 0;
                v93 = 0;
                v27 = 0;
                if (v2 <= v23)
                {
                  v2 = *(this + 1);
                }

                v94 = v2 - v23;
                v95 = (v24 + v23);
                v96 = v23 + 1;
                while (1)
                {
                  if (!v94)
                  {
                    v27 = 0;
                    *(this + 24) = 1;
                    goto LABEL_163;
                  }

                  v97 = v96;
                  v98 = *v95;
                  *(this + 1) = v97;
                  v27 |= (v98 & 0x7F) << v92;
                  if ((v98 & 0x80) == 0)
                  {
                    break;
                  }

                  v92 += 7;
                  --v94;
                  ++v95;
                  v96 = v97 + 1;
                  v14 = v93++ > 8;
                  if (v14)
                  {
                    v27 = 0;
                    goto LABEL_162;
                  }
                }

                if (*(this + 24))
                {
                  v27 = 0;
                }

LABEL_162:
                v2 = v97;
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
                    v27 = 0;
                    break;
                  }
                }
              }

LABEL_163:
              *(a1 + 8) = v27;
              goto LABEL_172;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 56) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_67:
            *(this + 24) = 1;
            goto LABEL_172;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_140;
        }

        if (v22 == 2)
        {
          *(a1 + 56) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_67;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_140;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 56) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 52) = *(*this + v2);
LABEL_140:
            v2 = *(this + 1) + 4;
LABEL_141:
            *(this + 1) = v2;
            goto LABEL_172;
          case 4:
            *(a1 + 56) |= 8u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v99 = 0;
              v100 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v101 = v2 - v55;
              v102 = (v56 + v55);
              v103 = v55 + 1;
              while (1)
              {
                if (!v101)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_167;
                }

                v104 = v103;
                v105 = *v102;
                *(this + 1) = v104;
                v59 |= (v105 & 0x7F) << v99;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                --v101;
                ++v102;
                v103 = v104 + 1;
                v14 = v100++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_166;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_166:
              v2 = v104;
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = (v56 + v55);
              v61 = v55 + 1;
              while (1)
              {
                v2 = v61;
                *(this + 1) = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_167:
            *(a1 + 28) = v59;
            goto LABEL_172;
          case 5:
            *(a1 + 56) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_141;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v113 = 0;
        return v113 & 1;
      }

      v2 = *(this + 1);
LABEL_172:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_176:
  v113 = v4 ^ 1;
  return v113 & 1;
}

uint64_t sub_19B4D6214(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 56);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = *(v3 + 32);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 56) & 1) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_21:
  v10 = *(v3 + 8);

  return PB::Writer::writeVarInt(this);
}

double sub_19B4D6364(uint64_t a1)
{
  *a1 = &unk_1F0E2D240;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_19B4D63A0(uint64_t a1)
{
  *a1 = &unk_1F0E2D240;
  v4 = (a1 + 56);
  sub_19B4C4D80(&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(a1);
}

void sub_19B4D6420(uint64_t a1)
{
  sub_19B4D63A0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D6458(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 104);
  if (v5)
  {
    v19 = *(a1 + 80);
    PB::TextFormatter::format(this, "conchaDropped");
    v5 = *(a1 + 104);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 104) & 2) == 0)
  {
    goto LABEL_3;
  }

  v20 = *(a1 + 84);
  PB::TextFormatter::format(this, "conchaRecovered");
  v5 = *(a1 + 104);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  v21 = *(a1 + 88);
  PB::TextFormatter::format(this, "iedState");
  if ((*(a1 + 104) & 8) != 0)
  {
LABEL_5:
    v6 = *(a1 + 92);
    PB::TextFormatter::format(this, "location");
  }

LABEL_6:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(this, "mean", v9);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, this, "optical");
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x10) != 0)
  {
    v14 = *(a1 + 96);
    PB::TextFormatter::format(this, "tragusDropped");
    v13 = *(a1 + 104);
  }

  if ((v13 & 0x20) != 0)
  {
    v15 = *(a1 + 100);
    PB::TextFormatter::format(this, "tragusRecovered");
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(this, "variance", v18);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D6608(uint64_t a1, PB::Reader *this)
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
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            sub_19B48E17C();
          }

          if (v23 == 4)
          {
            if (v22 != 2)
            {
              v117 = *(a1 + 16);
              v116 = *(a1 + 24);
              if (v117 >= v116)
              {
                v151 = *(a1 + 8);
                v152 = v117 - v151;
                v153 = (v117 - v151) >> 2;
                v154 = v153 + 1;
                if ((v153 + 1) >> 62)
                {
                  goto LABEL_230;
                }

                v155 = v116 - v151;
                if (v155 >> 1 > v154)
                {
                  v154 = v155 >> 1;
                }

                if (v155 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v156 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v156 = v154;
                }

                if (v156)
                {
                  sub_19B4C4FA8(a1 + 8, v156);
                }

                v163 = (v117 - v151) >> 2;
                v164 = (4 * v153);
                v165 = (4 * v153 - 4 * v163);
                *v164 = 0;
                v118 = v164 + 1;
                memcpy(v165, v151, v152);
                v166 = *(a1 + 8);
                *(a1 + 8) = v165;
                *(a1 + 16) = v118;
                *(a1 + 24) = 0;
                if (v166)
                {
                  operator delete(v166);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 4;
              }

              *(a1 + 16) = v118;
LABEL_219:
              v171 = *(this + 1);
              if (v171 <= 0xFFFFFFFFFFFFFFFBLL && v171 + 4 <= *(this + 2))
              {
                *(v118 - 1) = *(*this + v171);
                *(this + 1) += 4;
              }

              else
              {
                *(this + 24) = 1;
              }

              goto LABEL_223;
            }

            if (PB::Reader::placeMark())
            {
              goto LABEL_229;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 16);
              v44 = *(a1 + 24);
              if (v45 >= v44)
              {
                v47 = *(a1 + 8);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_230;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_19B4C4FA8(a1 + 8, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 8);
                *(a1 + 8) = v55;
                *(a1 + 16) = v46;
                *(a1 + 24) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(a1 + 16) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
LABEL_171:
                *(this + 24) = 1;
                goto LABEL_172;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_172;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(a1 + 104) |= 8u;
            v68 = *(this + 1);
            v67 = *(this + 2);
            v69 = *this;
            if (v68 > 0xFFFFFFFFFFFFFFF5 || v68 + 10 > v67)
            {
              v125 = 0;
              v126 = 0;
              v72 = 0;
              v17 = v67 >= v68;
              v127 = v67 - v68;
              if (!v17)
              {
                v127 = 0;
              }

              v128 = (v69 + v68);
              v129 = v68 + 1;
              while (1)
              {
                if (!v127)
                {
                  LODWORD(v72) = 0;
                  *(this + 24) = 1;
                  goto LABEL_203;
                }

                v130 = *v128;
                *(this + 1) = v129;
                v72 |= (v130 & 0x7F) << v125;
                if ((v130 & 0x80) == 0)
                {
                  break;
                }

                v125 += 7;
                --v127;
                ++v128;
                ++v129;
                v14 = v126++ > 8;
                if (v14)
                {
LABEL_144:
                  LODWORD(v72) = 0;
                  goto LABEL_203;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = (v69 + v68);
              v74 = v68 + 1;
              while (1)
              {
                *(this + 1) = v74;
                v75 = *v73++;
                v72 |= (v75 & 0x7F) << v70;
                if ((v75 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                ++v74;
                v14 = v71++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }
              }
            }

LABEL_203:
            *(a1 + 92) = v72;
            goto LABEL_223;
          }

          if (v23 == 2)
          {
            *(a1 + 104) |= 4u;
            v34 = *(this + 1);
            v33 = *(this + 2);
            v35 = *this;
            if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33)
            {
              v110 = 0;
              v111 = 0;
              v38 = 0;
              v17 = v33 >= v34;
              v112 = v33 - v34;
              if (!v17)
              {
                v112 = 0;
              }

              v113 = (v35 + v34);
              v114 = v34 + 1;
              while (1)
              {
                if (!v112)
                {
                  LODWORD(v38) = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v115 = *v113;
                *(this + 1) = v114;
                v38 |= (v115 & 0x7F) << v110;
                if ((v115 & 0x80) == 0)
                {
                  break;
                }

                v110 += 7;
                --v112;
                ++v113;
                ++v114;
                v14 = v111++ > 8;
                if (v14)
                {
LABEL_126:
                  LODWORD(v38) = 0;
                  goto LABEL_197;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = (v35 + v34);
              v40 = v34 + 1;
              while (1)
              {
                *(this + 1) = v40;
                v41 = *v39++;
                v38 |= (v41 & 0x7F) << v36;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v40;
                v14 = v37++ > 8;
                if (v14)
                {
                  goto LABEL_126;
                }
              }
            }

LABEL_197:
            *(a1 + 88) = v38;
            goto LABEL_223;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v22 != 2)
          {
            v144 = *(a1 + 40);
            v143 = *(a1 + 48);
            if (v144 >= v143)
            {
              v157 = *(a1 + 32);
              v158 = v144 - v157;
              v159 = (v144 - v157) >> 2;
              v160 = v159 + 1;
              if ((v159 + 1) >> 62)
              {
LABEL_230:
                sub_19B5BE690();
              }

              v161 = v143 - v157;
              if (v161 >> 1 > v160)
              {
                v160 = v161 >> 1;
              }

              if (v161 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v162 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v162 = v160;
              }

              if (v162)
              {
                sub_19B4C4FA8(a1 + 32, v162);
              }

              v167 = (v144 - v157) >> 2;
              v168 = (4 * v159);
              v169 = (4 * v159 - 4 * v167);
              *v168 = 0;
              v118 = v168 + 1;
              memcpy(v169, v157, v158);
              v170 = *(a1 + 32);
              *(a1 + 32) = v169;
              *(a1 + 40) = v118;
              *(a1 + 48) = 0;
              if (v170)
              {
                operator delete(v170);
              }
            }

            else
            {
              *v144 = 0;
              v118 = v144 + 4;
            }

            *(a1 + 40) = v118;
            goto LABEL_219;
          }

          if (PB::Reader::placeMark())
          {
            goto LABEL_229;
          }

          v85 = *(this + 1);
          v86 = *(this + 2);
          while (v85 < v86 && (*(this + 24) & 1) == 0)
          {
            v88 = *(a1 + 40);
            v87 = *(a1 + 48);
            if (v88 >= v87)
            {
              v90 = *(a1 + 32);
              v91 = v88 - v90;
              v92 = (v88 - v90) >> 2;
              v93 = v92 + 1;
              if ((v92 + 1) >> 62)
              {
                goto LABEL_230;
              }

              v94 = v87 - v90;
              if (v94 >> 1 > v93)
              {
                v93 = v94 >> 1;
              }

              if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v95 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v95 = v93;
              }

              if (v95)
              {
                sub_19B4C4FA8(a1 + 32, v95);
              }

              v96 = (v88 - v90) >> 2;
              v97 = (4 * v92);
              v98 = (4 * v92 - 4 * v96);
              *v97 = 0;
              v89 = v97 + 1;
              memcpy(v98, v90, v91);
              v99 = *(a1 + 32);
              *(a1 + 32) = v98;
              *(a1 + 40) = v89;
              *(a1 + 48) = 0;
              if (v99)
              {
                operator delete(v99);
              }
            }

            else
            {
              *v88 = 0;
              v89 = v88 + 4;
            }

            *(a1 + 40) = v89;
            v100 = *(this + 1);
            if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
            {
              goto LABEL_171;
            }

            *(v89 - 1) = *(*this + v100);
            v86 = *(this + 2);
            v85 = *(this + 1) + 4;
            *(this + 1) = v85;
          }

LABEL_172:
          PB::Reader::recallMark();
          goto LABEL_223;
        }

        if (v23 == 6)
        {
          *(a1 + 104) |= 1u;
          v59 = *(this + 1);
          v58 = *(this + 2);
          v60 = *this;
          if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v58)
          {
            v119 = 0;
            v120 = 0;
            v63 = 0;
            v17 = v58 >= v59;
            v121 = v58 - v59;
            if (!v17)
            {
              v121 = 0;
            }

            v122 = (v60 + v59);
            v123 = v59 + 1;
            while (1)
            {
              if (!v121)
              {
                LODWORD(v63) = 0;
                *(this + 24) = 1;
                goto LABEL_200;
              }

              v124 = *v122;
              *(this + 1) = v123;
              v63 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              --v121;
              ++v122;
              ++v123;
              v14 = v120++ > 8;
              if (v14)
              {
LABEL_136:
                LODWORD(v63) = 0;
                goto LABEL_200;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v63) = 0;
            }
          }

          else
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = (v60 + v59);
            v65 = v59 + 1;
            while (1)
            {
              *(this + 1) = v65;
              v66 = *v64++;
              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              ++v65;
              v14 = v62++ > 8;
              if (v14)
              {
                goto LABEL_136;
              }
            }
          }

LABEL_200:
          *(a1 + 80) = v63;
          goto LABEL_223;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(a1 + 104) |= 0x10u;
            v77 = *(this + 1);
            v76 = *(this + 2);
            v78 = *this;
            if (v77 > 0xFFFFFFFFFFFFFFF5 || v77 + 10 > v76)
            {
              v131 = 0;
              v132 = 0;
              v81 = 0;
              v17 = v76 >= v77;
              v133 = v76 - v77;
              if (!v17)
              {
                v133 = 0;
              }

              v134 = (v78 + v77);
              v135 = v77 + 1;
              while (1)
              {
                if (!v133)
                {
                  LODWORD(v81) = 0;
                  *(this + 24) = 1;
                  goto LABEL_206;
                }

                v136 = *v134;
                *(this + 1) = v135;
                v81 |= (v136 & 0x7F) << v131;
                if ((v136 & 0x80) == 0)
                {
                  break;
                }

                v131 += 7;
                --v133;
                ++v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
LABEL_152:
                  LODWORD(v81) = 0;
                  goto LABEL_206;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = (v78 + v77);
              v83 = v77 + 1;
              while (1)
              {
                *(this + 1) = v83;
                v84 = *v82++;
                v81 |= (v84 & 0x7F) << v79;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                ++v83;
                v14 = v80++ > 8;
                if (v14)
                {
                  goto LABEL_152;
                }
              }
            }

LABEL_206:
            *(a1 + 96) = v81;
            goto LABEL_223;
          case 8:
            *(a1 + 104) |= 2u;
            v102 = *(this + 1);
            v101 = *(this + 2);
            v103 = *this;
            if (v102 > 0xFFFFFFFFFFFFFFF5 || v102 + 10 > v101)
            {
              v145 = 0;
              v146 = 0;
              v106 = 0;
              v17 = v101 >= v102;
              v147 = v101 - v102;
              if (!v17)
              {
                v147 = 0;
              }

              v148 = (v103 + v102);
              v149 = v102 + 1;
              while (1)
              {
                if (!v147)
                {
                  LODWORD(v106) = 0;
                  *(this + 24) = 1;
                  goto LABEL_212;
                }

                v150 = *v148;
                *(this + 1) = v149;
                v106 |= (v150 & 0x7F) << v145;
                if ((v150 & 0x80) == 0)
                {
                  break;
                }

                v145 += 7;
                --v147;
                ++v148;
                ++v149;
                v14 = v146++ > 8;
                if (v14)
                {
LABEL_170:
                  LODWORD(v106) = 0;
                  goto LABEL_212;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = 0;
              v107 = (v103 + v102);
              v108 = v102 + 1;
              while (1)
              {
                *(this + 1) = v108;
                v109 = *v107++;
                v106 |= (v109 & 0x7F) << v104;
                if ((v109 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                ++v108;
                v14 = v105++ > 8;
                if (v14)
                {
                  goto LABEL_170;
                }
              }
            }

LABEL_212:
            *(a1 + 84) = v106;
            goto LABEL_223;
          case 9:
            *(a1 + 104) |= 0x20u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v137 = 0;
              v138 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v139 = v24 - v25;
              if (!v17)
              {
                v139 = 0;
              }

              v140 = (v26 + v25);
              v141 = v25 + 1;
              while (1)
              {
                if (!v139)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_209;
                }

                v142 = *v140;
                *(this + 1) = v141;
                v29 |= (v142 & 0x7F) << v137;
                if ((v142 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
LABEL_160:
                  LODWORD(v29) = 0;
                  goto LABEL_209;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                *(this + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
                if (v14)
                {
                  goto LABEL_160;
                }
              }
            }

LABEL_209:
            *(a1 + 100) = v29;
            goto LABEL_223;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_229:
        v172 = 0;
        return v172 & 1;
      }

LABEL_223:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

  v172 = v4 ^ 1;
  return v172 & 1;
}

uint64_t sub_19B4D7188(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 104);
  if ((v4 & 8) != 0)
  {
    v5 = *(result + 92);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 104);
  }

  if ((v4 & 4) != 0)
  {
    v6 = *(v3 + 88);
    result = PB::Writer::writeVarInt(this);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v16 = *(v3 + 104);
  if (v16)
  {
    v17 = *(v3 + 80);
    result = PB::Writer::writeVarInt(this);
    v16 = *(v3 + 104);
    if ((v16 & 0x10) == 0)
    {
LABEL_16:
      if ((v16 & 2) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v19 = *(v3 + 84);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 104) & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v3 + 104) & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v16 = *(v3 + 104);
  if ((v16 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  if ((v16 & 0x20) == 0)
  {
    return result;
  }

LABEL_22:
  v20 = *(v3 + 100);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4D72CC(uint64_t result)
{
  *result = &unk_1F0E2DCF8;
  *(result + 44) = 0;
  return result;
}

void sub_19B4D72F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D732C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "conchaTemp");
    v5 = *(a1 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "prescalar");
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a1 + 28);
  PB::TextFormatter::format(this, "pwrState");
  v5 = *(a1 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = *(a1 + 32);
  PB::TextFormatter::format(this, "tragusTemp");
  v5 = *(a1 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v12 = *(a1 + 40);
  PB::TextFormatter::format(this, "valid");
  if ((*(a1 + 44) & 0x40) != 0)
  {
LABEL_9:
    v6 = *(a1 + 36);
    PB::TextFormatter::format(this, "wdtPeriod");
  }

LABEL_10:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D7470(uint64_t a1, PB::Reader *this)
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
            goto LABEL_167;
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(a1 + 44) |= 2u;
            v65 = *(this + 1);
            v2 = *(this + 2);
            v66 = *this;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v65;
              v83 = (v66 + v65);
              v84 = v65 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v69) = 0;
                  *(this + 24) = 1;
                  goto LABEL_146;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v69 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v69) = 0;
                  goto LABEL_145;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }

LABEL_145:
              v2 = v85;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(this + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  break;
                }
              }
            }

LABEL_146:
            *(a1 + 16) = v69;
            goto LABEL_163;
          }

          if (v22 == 8)
          {
            *(a1 + 44) |= 0x20u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v110 = v2 - v47;
              v111 = (v48 + v47);
              v112 = v47 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v51) = 0;
                  *(this + 24) = 1;
                  goto LABEL_162;
                }

                v113 = v112;
                v114 = *v111;
                *(this + 1) = v113;
                v51 |= (v114 & 0x7F) << v108;
                if ((v114 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                v112 = v113 + 1;
                v14 = v109++ > 8;
                if (v14)
                {
                  LODWORD(v51) = 0;
                  goto LABEL_161;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_161:
              v2 = v113;
            }

            else
            {
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = (v48 + v47);
              v53 = v47 + 1;
              while (1)
              {
                v2 = v53;
                *(this + 1) = v53;
                v54 = *v52++;
                v51 |= (v54 & 0x7F) << v49;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                ++v53;
                v14 = v50++ > 8;
                if (v14)
                {
                  LODWORD(v51) = 0;
                  break;
                }
              }
            }

LABEL_162:
            *(a1 + 32) = v51;
            goto LABEL_163;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 44) |= 8u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v73 = 0;
              v74 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v75 = v2 - v55;
              v76 = (v56 + v55);
              v77 = v55 + 1;
              while (1)
              {
                if (!v75)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_142;
                }

                v78 = v77;
                v79 = *v76;
                *(this + 1) = v78;
                v59 |= (v79 & 0x7F) << v73;
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
                  LODWORD(v59) = 0;
                  goto LABEL_141;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_141:
              v2 = v78;
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = (v56 + v55);
              v61 = v55 + 1;
              while (1)
              {
                v2 = v61;
                *(this + 1) = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_142:
            *(a1 + 24) = v59;
            goto LABEL_163;
          }

          if (v22 == 6)
          {
            *(a1 + 44) |= 0x40u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v96 = v2 - v31;
              v97 = (v32 + v31);
              v98 = v31 + 1;
              while (1)
              {
                if (!v96)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_154;
                }

                v99 = v98;
                v100 = *v97;
                *(this + 1) = v99;
                v35 |= (v100 & 0x7F) << v94;
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
                  LODWORD(v35) = 0;
                  goto LABEL_153;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_153:
              v2 = v99;
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

LABEL_154:
            *(a1 + 36) = v35;
            goto LABEL_163;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 44) |= 0x80u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v64 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v63 = *(*this + v2++);
            *(this + 1) = v2;
            v64 = v63 != 0;
          }

          *(a1 + 40) = v64;
          goto LABEL_163;
        }

        if (v22 == 4)
        {
          *(a1 + 44) |= 0x10u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v103 = v2 - v39;
            v104 = (v40 + v39);
            v105 = v39 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v43) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v106 = v105;
              v107 = *v104;
              *(this + 1) = v106;
              v43 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_157;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_157:
            v2 = v106;
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

LABEL_158:
          *(a1 + 28) = v43;
          goto LABEL_163;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 44) |= 1u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_163;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 4u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v23;
            v90 = (v24 + v23);
            v91 = v23 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_150;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v27 |= (v93 & 0x7F) << v87;
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
                LODWORD(v27) = 0;
                goto LABEL_149;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_149:
            v2 = v92;
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

LABEL_150:
          *(a1 + 20) = v27;
          goto LABEL_163;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(this + 1);
LABEL_163:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_167:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t sub_19B4D7CDC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = *(v3 + 40);
  result = PB::Writer::write(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_17:
  v11 = *(v3 + 32);

  return PB::Writer::writeVarInt(this);
}

double sub_19B4D7DF4(uint64_t a1)
{
  *a1 = &unk_1F0E2D048;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_19B4D7E24(uint64_t a1)
{
  *a1 = &unk_1F0E2D048;
  v4 = *(a1 + 40);
  v2 = (a1 + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  sub_19B4C5250((a1 + 32), 0);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    sub_19B4C51F4(a1 + 24, v5);
  }

  sub_19B4C5250((a1 + 16), 0);
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(a1);
}

void sub_19B4D7EE4(uint64_t a1)
{
  sub_19B4D7E24(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D7F1C(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "config");
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  if (a1[5])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D7FF8(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 2)
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B4D838C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (v3[2])
  {
    result = PB::Writer::write();
  }

  if (v3[4])
  {
    result = PB::Writer::write();
  }

  if (v3[3])
  {
    result = PB::Writer::write();
  }

  if (v3[5])
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_19B4D842C(uint64_t result)
{
  *result = &unk_1F0E38D58;
  *(result + 36) = 0;
  return result;
}

void sub_19B4D8454(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D848C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if ((v5 & 0x20) != 0)
  {
    v7 = *(a1 + 32);
    PB::TextFormatter::format(this, "asleep");
    v5 = *(a1 + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "averageConfidence");
  v5 = *(a1 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a1 + 20);
  PB::TextFormatter::format(this, "consecutiveEpochs");
  v5 = *(a1 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = *(a1 + 33);
  PB::TextFormatter::format(this, "initialized");
  v5 = *(a1 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "rawConfidence", *(a1 + 24));
  v5 = *(a1 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v11 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 36) & 0x10) != 0)
  {
LABEL_8:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D85B0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_129;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 36) |= 1u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v61 = v2 - v47;
              v62 = (v48 + v47);
              v63 = v47 + 1;
              while (1)
              {
                if (!v61)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_112;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v51 |= (v65 & 0x7F) << v59;
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
                  v51 = 0;
                  goto LABEL_111;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_111:
              v2 = v64;
            }

            else
            {
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = (v48 + v47);
              v53 = v47 + 1;
              while (1)
              {
                v2 = v53;
                *(this + 1) = v53;
                v54 = *v52++;
                v51 |= (v54 & 0x7F) << v49;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                ++v53;
                v14 = v50++ > 8;
                if (v14)
                {
                  v51 = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(a1 + 8) = v51;
            goto LABEL_125;
          case 2:
            *(a1 + 36) |= 0x20u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v58 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v57 = *(*this + v2++);
              *(this + 1) = v2;
              v58 = v57 != 0;
            }

            *(a1 + 32) = v58;
            goto LABEL_125;
          case 3:
            *(a1 + 36) |= 2u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v82 = v2 - v31;
              v83 = (v32 + v31);
              v84 = v31 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_124;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v35 |= (v86 & 0x7F) << v80;
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
                  LODWORD(v35) = 0;
                  goto LABEL_123;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_123:
              v2 = v85;
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

LABEL_124:
            *(a1 + 16) = v35;
            goto LABEL_125;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 36) |= 0x40u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v56 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v55 = *(*this + v2++);
            *(this + 1) = v2;
            v56 = v55 != 0;
          }

          *(a1 + 33) = v56;
          goto LABEL_125;
        }

        if (v22 == 7)
        {
          *(a1 + 36) |= 4u;
          v39 = *(this + 1);
          v2 = *(this + 2);
          v40 = *this;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v39;
            v76 = (v40 + v39);
            v77 = v39 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v43) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v43 |= (v79 & 0x7F) << v73;
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
                LODWORD(v43) = 0;
                goto LABEL_119;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_119:
            v2 = v78;
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

LABEL_120:
          *(a1 + 20) = v43;
          goto LABEL_125;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 36) |= 8u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 24) = *(*this + v2);
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_125;
        }

        if (v22 == 5)
        {
          *(a1 + 36) |= 0x10u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v23;
            v69 = (v24 + v23);
            v70 = v23 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v27 |= (v72 & 0x7F) << v66;
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
                LODWORD(v27) = 0;
                goto LABEL_115;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_115:
            v2 = v71;
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

LABEL_116:
          *(a1 + 28) = v27;
          goto LABEL_125;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v87 = 0;
        return v87 & 1;
      }

      v2 = *(this + 1);
LABEL_125:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_129:
  v87 = v4 ^ 1;
  return v87 & 1;
}

uint64_t sub_19B4D8C48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 36);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 36) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 32);
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v3 + 33);
    result = PB::Writer::write(this);
    if ((*(v3 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_15:
  v10 = *(v3 + 20);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4D8D44(uint64_t result)
{
  *result = &unk_1F0E38D90;
  *(result + 32) = 0;
  return result;
}

void sub_19B4D8D6C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D8DA4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "activity");
    v5 = *(a1 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "confidenceLevel");
  v5 = *(a1 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "consecutiveEpochs");
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "sensorTime");
  if ((*(a1 + 32) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "sequenceNumber");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D8E88(uint64_t a1, PB::Reader *this)
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
            goto LABEL_140;
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
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(a1 + 32) |= 1u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v80 = v3 - v56;
            v81 = (v57 + v56);
            v82 = v56 + 1;
            while (1)
            {
              if (!v80)
              {
                v60 = 0;
                *(this + 24) = 1;
                goto LABEL_127;
              }

              v83 = v82;
              v84 = *v81;
              *(this + 1) = v83;
              v60 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              --v80;
              ++v81;
              v82 = v83 + 1;
              v14 = v79++ > 8;
              if (v14)
              {
                v60 = 0;
                goto LABEL_126;
              }
            }

            if (*(this + 24))
            {
              v60 = 0;
            }

LABEL_126:
            v3 = v83;
          }

          else
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            while (1)
            {
              v3 = v62;
              *(this + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
                v60 = 0;
                break;
              }
            }
          }

LABEL_127:
          *(a1 + 8) = v60;
          goto LABEL_136;
        }

        if (v23 == 2)
        {
          *(a1 + 32) |= 2u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v94 = v3 - v32;
            v95 = (v33 + v32);
            v96 = v32 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_135;
              }

              v97 = v96;
              v98 = *v95;
              *(this + 1) = v97;
              v36 |= (v98 & 0x7F) << v92;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              --v94;
              ++v95;
              v96 = v97 + 1;
              v14 = v93++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                goto LABEL_134;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_134:
            v3 = v97;
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            while (1)
            {
              v3 = v38;
              *(this + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                break;
              }
            }
          }

LABEL_135:
          *(a1 + 16) = v36;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 32) |= 4u;
            v40 = *(this + 1);
            v2 = *(this + 2);
            v41 = *this;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
            {
              v64 = 0;
              v65 = 0;
              v44 = 0;
              if (v2 <= v40)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v66 = v3 - v40;
              v67 = (v41 + v40);
              v68 = v40 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v44) = 0;
                  *(this + 24) = 1;
                  goto LABEL_119;
                }

                v69 = v68;
                v70 = *v67;
                *(this + 1) = v69;
                v44 |= (v70 & 0x7F) << v64;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                --v66;
                ++v67;
                v68 = v69 + 1;
                v14 = v65++ > 8;
                if (v14)
                {
                  LODWORD(v44) = 0;
                  goto LABEL_118;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }

LABEL_118:
              v3 = v69;
            }

            else
            {
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = (v41 + v40);
              v46 = v40 + 1;
              while (1)
              {
                v3 = v46;
                *(this + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v14 = v43++ > 8;
                if (v14)
                {
                  LODWORD(v44) = 0;
                  break;
                }
              }
            }

LABEL_119:
            *(a1 + 20) = v44;
            goto LABEL_136;
          case 4:
            *(a1 + 32) |= 0x10u;
            v48 = *(this + 1);
            v2 = *(this + 2);
            v49 = *this;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v73 = v3 - v48;
              v74 = (v49 + v48);
              v75 = v48 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v52) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v76 = v75;
                v77 = *v74;
                *(this + 1) = v76;
                v52 |= (v77 & 0x7F) << v71;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                --v73;
                ++v74;
                v75 = v76 + 1;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  goto LABEL_122;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_122:
              v3 = v76;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(this + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_123:
            *(a1 + 28) = v52;
            goto LABEL_136;
          case 5:
            *(a1 + 32) |= 8u;
            v24 = *(this + 1);
            v2 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v28 = 0;
              if (v2 <= v24)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v87 = v3 - v24;
              v88 = (v25 + v24);
              v89 = v24 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_131;
                }

                v90 = v89;
                v91 = *v88;
                *(this + 1) = v90;
                v28 |= (v91 & 0x7F) << v85;
                if ((v91 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                --v87;
                ++v88;
                v89 = v90 + 1;
                v14 = v86++ > 8;
                if (v14)
                {
                  LODWORD(v28) = 0;
                  goto LABEL_130;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }

LABEL_130:
              v3 = v90;
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                v3 = v30;
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  LODWORD(v28) = 0;
                  break;
                }
              }
            }

LABEL_131:
            *(a1 + 24) = v28;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v99 = 0;
        return v99 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_136:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_140:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_19B4D9534(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v9 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B4D95F8(uint64_t result)
{
  *result = &unk_1F0E2CC20;
  *(result + 8) = 0;
  *(result + 40) = 0;
  *(result + 60) = 0;
  return result;
}

void sub_19B4D9620(PB::Base *this)
{
  *this = &unk_1F0E2CC20;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B4D96D4(PB::Base *a1)
{
  sub_19B4D9620(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4D970C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 60) & 0x20) != 0)
  {
    v5 = *(a1 + 56);
    PB::TextFormatter::format(this, "detectedSteps");
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "firstStepFeatures");
  }

  v7 = *(a1 + 60);
  if ((v7 & 8) != 0)
  {
    v9 = *(a1 + 48);
    PB::TextFormatter::format(this, "fsmEndState");
    v7 = *(a1 + 60);
    if ((v7 & 0x10) == 0)
    {
LABEL_7:
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 60) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 52);
  PB::TextFormatter::format(this, "fsmStartState");
  v7 = *(a1 + 60);
  if ((v7 & 1) == 0)
  {
LABEL_8:
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "impulseEndTime", *(a1 + 16));
  v7 = *(a1 + 60);
  if ((v7 & 2) == 0)
  {
LABEL_9:
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  PB::TextFormatter::format(this, "impulseStartTime", *(a1 + 24));
  if ((*(a1 + 60) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "imuTimestamp", *(a1 + 32));
  }

LABEL_11:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "stepLikelihoodFeatures");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4D987C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_94;
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            operator new();
          }

          if (v22 == 8)
          {
            operator new();
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 60) |= 1u;
            v38 = *(this + 1);
            if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
            {
LABEL_51:
              *(this + 24) = 1;
              goto LABEL_90;
            }

            *(a1 + 16) = *(*this + v38);
            goto LABEL_81;
          }

          if (v22 == 6)
          {
            *(a1 + 60) |= 0x20u;
            v32 = *(this + 1);
            if (v32 >= *(this + 2))
            {
              v35 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v33 = v32 + 1;
              v34 = *(*this + v32);
              *(this + 1) = v33;
              v35 = v34 != 0;
            }

            *(a1 + 56) = v35;
            goto LABEL_90;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 60) |= 8u;
          v40 = *(this + 1);
          v39 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
          {
            v48 = 0;
            v49 = 0;
            v44 = 0;
            v17 = v39 >= v40;
            v50 = v39 - v40;
            if (!v17)
            {
              v50 = 0;
            }

            v51 = (v41 + v40);
            v52 = v40 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_86;
              }

              v53 = *v51;
              *(this + 1) = v52;
              v44 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              --v50;
              ++v51;
              ++v52;
              v14 = v49++ > 8;
              if (v14)
              {
LABEL_69:
                LODWORD(v44) = 0;
                goto LABEL_86;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            while (1)
            {
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_86:
          *(a1 + 48) = v44;
          goto LABEL_90;
        }

        if (v22 == 4)
        {
          *(a1 + 60) |= 2u;
          v36 = *(this + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 24) = *(*this + v36);
          goto LABEL_81;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 60) |= 4u;
          v37 = *(this + 1);
          if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 32) = *(*this + v37);
LABEL_81:
          *(this + 1) += 8;
          goto LABEL_90;
        }

        if (v22 == 2)
        {
          *(a1 + 60) |= 0x10u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v54 = 0;
            v55 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v56 = v23 - v24;
            if (!v17)
            {
              v56 = 0;
            }

            v57 = (v25 + v24);
            v58 = v24 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_89;
              }

              v59 = *v57;
              *(this + 1) = v58;
              v28 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              --v56;
              ++v57;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
LABEL_77:
                LODWORD(v28) = 0;
                goto LABEL_89;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_89:
          *(a1 + 52) = v28;
          goto LABEL_90;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v61 = 0;
        return v61 & 1;
      }

LABEL_90:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_94:
  v61 = v4 ^ 1;
  return v61 & 1;
}

uint64_t sub_19B4D9E30(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(result + 60) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v3 + 52);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 16));
  if ((*(v3 + 60) & 0x20) != 0)
  {
LABEL_7:
    v5 = *(v3 + 56);
    result = PB::Writer::write(this);
  }

LABEL_8:
  v6 = *(v3 + 40);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 8);
  if (v7)
  {

    return PB::Writer::writeSubmessage(this, v7);
  }

  return result;
}

uint64_t sub_19B4D9F3C(uint64_t result)
{
  *result = &unk_1F0E30110;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_19B4D9F64(PB::Base *this)
{
  *this = &unk_1F0E30110;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B4D9FC8(PB::Base *a1)
{
  sub_19B4D9F64(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DA000(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "hostState");
    v5 = *(a1 + 52);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(a1 + 44);
    PB::TextFormatter::format(this, "location");
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "s7q8");
  }

  v11 = *(a1 + 52);
  if ((v11 & 8) != 0)
  {
    v12 = *(a1 + 48);
    PB::TextFormatter::format(this, "sensorState");
    v11 = *(a1 + 52);
  }

  if (v11)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DA0F0(uint64_t a1, PB::Reader *this)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_167;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v39 = v15++ > 8;
          if (v39)
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
          v39 = v9++ > 8;
          if (v39)
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

      v21 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v21 == 1)
        {
          *(a1 + 52) |= 4u;
          v69 = *(this + 1);
          v68 = *(this + 2);
          v70 = *this;
          if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v68)
          {
            v89 = 0;
            v90 = 0;
            v73 = 0;
            v16 = v68 >= v69;
            v91 = v68 - v69;
            if (!v16)
            {
              v91 = 0;
            }

            v92 = (v70 + v69);
            v93 = v69 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v73) = 0;
                *(this + 24) = 1;
                goto LABEL_141;
              }

              v94 = *v92;
              *(this + 1) = v93;
              v73 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              ++v93;
              v39 = v90++ > 8;
              if (v39)
              {
LABEL_116:
                LODWORD(v73) = 0;
                goto LABEL_141;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v73) = 0;
            }
          }

          else
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            while (1)
            {
              *(this + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              ++v75;
              v39 = v72++ > 8;
              if (v39)
              {
                goto LABEL_116;
              }
            }
          }

LABEL_141:
          *(a1 + 44) = v73;
          goto LABEL_163;
        }

        if (v21 == 2)
        {
          *(a1 + 52) |= 1u;
          v49 = *(this + 1);
          if (v49 <= 0xFFFFFFFFFFFFFFF7 && v49 + 8 <= *(this + 2))
          {
            *(a1 + 32) = *(*this + v49);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_163;
        }
      }

      else
      {
        switch(v21)
        {
          case 3:
            *(a1 + 52) |= 8u;
            v51 = *(this + 1);
            v50 = *(this + 2);
            v52 = *this;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v77 = 0;
              v78 = 0;
              v55 = 0;
              v16 = v50 >= v51;
              v79 = v50 - v51;
              if (!v16)
              {
                v79 = 0;
              }

              v80 = (v52 + v51);
              v81 = v51 + 1;
              while (1)
              {
                if (!v79)
                {
                  LODWORD(v55) = 0;
                  *(this + 24) = 1;
                  goto LABEL_135;
                }

                v82 = *v80;
                *(this + 1) = v81;
                v55 |= (v82 & 0x7F) << v77;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                --v79;
                ++v80;
                ++v81;
                v39 = v78++ > 8;
                if (v39)
                {
LABEL_100:
                  LODWORD(v55) = 0;
                  goto LABEL_135;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v55) = 0;
              }
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = (v52 + v51);
              v57 = v51 + 1;
              while (1)
              {
                *(this + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v39 = v54++ > 8;
                if (v39)
                {
                  goto LABEL_100;
                }
              }
            }

LABEL_135:
            *(a1 + 48) = v55;
            goto LABEL_163;
          case 4:
            *(a1 + 52) |= 2u;
            v60 = *(this + 1);
            v59 = *(this + 2);
            v61 = *this;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v83 = 0;
              v84 = 0;
              v64 = 0;
              v16 = v59 >= v60;
              v85 = v59 - v60;
              if (!v16)
              {
                v85 = 0;
              }

              v86 = (v61 + v60);
              v87 = v60 + 1;
              while (1)
              {
                if (!v85)
                {
                  LODWORD(v64) = 0;
                  *(this + 24) = 1;
                  goto LABEL_138;
                }

                v88 = *v86;
                *(this + 1) = v87;
                v64 |= (v88 & 0x7F) << v83;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                --v85;
                ++v86;
                ++v87;
                v39 = v84++ > 8;
                if (v39)
                {
LABEL_108:
                  LODWORD(v64) = 0;
                  goto LABEL_138;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(this + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v39 = v63++ > 8;
                if (v39)
                {
                  goto LABEL_108;
                }
              }
            }

LABEL_138:
            *(a1 + 40) = v64;
            goto LABEL_163;
          case 5:
            if ((v10 & 7) == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_169;
              }

              if (*(this + 1) < *(this + 2) && (*(this + 24) & 1) == 0)
              {
                v22 = *(a1 + 16);
                while (1)
                {
                  v23 = *(a1 + 24);
                  if (v22 >= v23)
                  {
                    v24 = *(a1 + 8);
                    v25 = v22 - v24;
                    v26 = (v22 - v24) >> 2;
                    v27 = v26 + 1;
                    if ((v26 + 1) >> 62)
                    {
                      goto LABEL_170;
                    }

                    v28 = v23 - v24;
                    if (v28 >> 1 > v27)
                    {
                      v27 = v28 >> 1;
                    }

                    if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v29 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v29 = v27;
                    }

                    if (v29)
                    {
                      sub_19B4C4FA8(a1 + 8, v29);
                    }

                    v30 = (v22 - v24) >> 2;
                    v31 = (4 * v26);
                    v32 = (4 * v26 - 4 * v30);
                    *v31 = 0;
                    v22 = (v31 + 1);
                    memcpy(v32, v24, v25);
                    v33 = *(a1 + 8);
                    *(a1 + 8) = v32;
                    *(a1 + 16) = v22;
                    *(a1 + 24) = 0;
                    if (v33)
                    {
                      operator delete(v33);
                    }
                  }

                  else
                  {
                    *v22 = 0;
                    v22 += 4;
                  }

                  *(a1 + 16) = v22;
                  v35 = *(this + 1);
                  v34 = *(this + 2);
                  v36 = *this;
                  v37 = 0;
                  v38 = 0;
                  v39 = v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34;
                  if (v39)
                  {
                    break;
                  }

                  v45 = 0;
                  v46 = (v36 + v35);
                  v47 = v35 + 1;
                  while (1)
                  {
                    v43 = v47;
                    *(this + 1) = v47;
                    v48 = *v46++;
                    v45 |= (v48 & 0x7F) << v37;
                    if ((v48 & 0x80) == 0)
                    {
                      break;
                    }

                    v37 += 7;
                    ++v47;
                    v39 = v38++ > 8;
                    if (v39)
                    {
                      goto LABEL_59;
                    }
                  }

LABEL_62:
                  *(v22 - 1) = v45;
                  if (v43 >= v34 || (*(this + 24) & 1) != 0)
                  {
                    goto LABEL_129;
                  }
                }

                v45 = 0;
                v40 = v34 - v35;
                if (v34 < v35)
                {
                  v40 = 0;
                }

                v41 = (v36 + v35);
                v42 = v35 + 1;
                while (v40)
                {
                  v43 = v42;
                  v44 = *v41;
                  *(this + 1) = v43;
                  v45 |= (v44 & 0x7F) << v37;
                  if ((v44 & 0x80) == 0)
                  {
                    if (*(this + 24))
                    {
                      LODWORD(v45) = 0;
                    }

                    goto LABEL_62;
                  }

                  v37 += 7;
                  --v40;
                  ++v41;
                  v42 = v43 + 1;
                  v39 = v38++ > 8;
                  if (v39)
                  {
LABEL_59:
                    LODWORD(v45) = 0;
                    goto LABEL_62;
                  }
                }

                *(this + 24) = 1;
                *(v22 - 1) = 0;
              }

LABEL_129:
              PB::Reader::recallMark();
            }

            else
            {
              v96 = *(a1 + 16);
              v95 = *(a1 + 24);
              if (v96 >= v95)
              {
                v98 = *(a1 + 8);
                v99 = v96 - v98;
                v100 = (v96 - v98) >> 2;
                v101 = v100 + 1;
                if ((v100 + 1) >> 62)
                {
LABEL_170:
                  sub_19B5BE690();
                }

                v102 = v95 - v98;
                if (v102 >> 1 > v101)
                {
                  v101 = v102 >> 1;
                }

                if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v103 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v101;
                }

                if (v103)
                {
                  sub_19B4C4FA8(a1 + 8, v103);
                }

                v104 = (v96 - v98) >> 2;
                v105 = (4 * v100);
                v106 = (4 * v100 - 4 * v104);
                *v105 = 0;
                v97 = v105 + 1;
                memcpy(v106, v98, v99);
                v107 = *(a1 + 8);
                *(a1 + 8) = v106;
                *(a1 + 16) = v97;
                *(a1 + 24) = 0;
                if (v107)
                {
                  operator delete(v107);
                }
              }

              else
              {
                *v96 = 0;
                v97 = v96 + 4;
              }

              *(a1 + 16) = v97;
              v109 = *(this + 1);
              v108 = *(this + 2);
              v110 = *this;
              if (v109 > 0xFFFFFFFFFFFFFFF5 || v109 + 10 > v108)
              {
                v117 = 0;
                v118 = 0;
                v113 = 0;
                v16 = v108 >= v109;
                v119 = v108 - v109;
                if (!v16)
                {
                  v119 = 0;
                }

                v120 = (v110 + v109);
                v121 = v109 + 1;
                while (1)
                {
                  if (!v119)
                  {
                    LODWORD(v113) = 0;
                    *(this + 24) = 1;
                    goto LABEL_162;
                  }

                  v122 = *v120;
                  *(this + 1) = v121;
                  v113 |= (v122 & 0x7F) << v117;
                  if ((v122 & 0x80) == 0)
                  {
                    break;
                  }

                  v117 += 7;
                  --v119;
                  ++v120;
                  ++v121;
                  v39 = v118++ > 8;
                  if (v39)
                  {
LABEL_158:
                    LODWORD(v113) = 0;
                    goto LABEL_162;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v113) = 0;
                }
              }

              else
              {
                v111 = 0;
                v112 = 0;
                v113 = 0;
                v114 = (v110 + v109);
                v115 = v109 + 1;
                while (1)
                {
                  *(this + 1) = v115;
                  v116 = *v114++;
                  v113 |= (v116 & 0x7F) << v111;
                  if ((v116 & 0x80) == 0)
                  {
                    break;
                  }

                  v111 += 7;
                  ++v115;
                  v39 = v112++ > 8;
                  if (v39)
                  {
                    goto LABEL_158;
                  }
                }
              }

LABEL_162:
              *(v97 - 1) = v113;
            }

            goto LABEL_163;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_169:
        v123 = 0;
        return v123 & 1;
      }

LABEL_163:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_167:
  v123 = v4 ^ 1;
  return v123 & 1;
}

uint64_t sub_19B4DA918(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 4) != 0)
  {
    v9 = *(result + 44);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v10 = *(v3 + 48);
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 52) & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 52) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 52);
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v4 & 2) != 0)
  {
LABEL_5:
    v5 = *(v3 + 40);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_6:
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

double sub_19B4DA9D4(uint64_t a1)
{
  *a1 = &unk_1F0E2EA88;
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void sub_19B4DAA20(PB::Base *this)
{
  *this = &unk_1F0E2EA88;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

void sub_19B4DAAD4(PB::Base *a1)
{
  sub_19B4DAA20(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B4DAB0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accelDecimated", v7);
  }

  if ((*(a1 + 192) & 2) != 0)
  {
    PB::TextFormatter::format(this, "accelFrontVariance", *(a1 + 160));
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelMean", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "accelNormAutocorr", v13);
  }

  v14 = *(a1 + 192);
  if ((v14 & 4) != 0)
  {
    PB::TextFormatter::format(this, "accelNormMean", *(a1 + 164));
    v14 = *(a1 + 192);
  }

  if ((v14 & 8) != 0)
  {
    PB::TextFormatter::format(this, "accelNormVariance", *(a1 + 168));
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "accelVariance", v17);
  }

  v18 = *(a1 + 192);
  if ((v18 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "currentAngleDelta", *(a1 + 172));
    v18 = *(a1 + 192);
    if ((v18 & 0x20) == 0)
    {
LABEL_17:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v18 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v28 = *(a1 + 176);
  PB::TextFormatter::format(this, "currentMotionState");
  if ((*(a1 + 192) & 0x40) != 0)
  {
LABEL_18:
    v19 = *(a1 + 180);
    PB::TextFormatter::format(this, "lagAtMaxAutocorr");
  }

LABEL_19:
  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(this, "lastBaseline", v22);
  }

  v23 = *(a1 + 192);
  if ((v23 & 0x80) != 0)
  {
    PB::TextFormatter::format(this, "maxAutocorr", *(a1 + 184));
    v23 = *(a1 + 192);
  }

  if (v23)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 152));
  }

  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  while (v24 != v25)
  {
    v26 = *v24++;
    PB::TextFormatter::format(this, "walkingBaseline", v26);
  }

  if ((*(a1 + 192) & 0x100) != 0)
  {
    v27 = *(a1 + 188);
    PB::TextFormatter::format(this, "widthAtMaxAutocorr");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B4DAD70(uint64_t a1, PB::Reader *this)
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
        goto LABEL_310;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 192) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 152) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_305;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v101 = *(this + 1);
            v102 = *(this + 2);
            while (v101 < v102 && (*(this + 24) & 1) == 0)
            {
              v104 = *(a1 + 16);
              v103 = *(a1 + 24);
              if (v104 >= v103)
              {
                v106 = *(a1 + 8);
                v107 = v104 - v106;
                v108 = (v104 - v106) >> 2;
                v109 = v108 + 1;
                if ((v108 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v110 = v103 - v106;
                if (v110 >> 1 > v109)
                {
                  v109 = v110 >> 1;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v111 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  sub_19B4C4FA8(a1 + 8, v111);
                }

                v112 = (v104 - v106) >> 2;
                v113 = (4 * v108);
                v114 = (4 * v108 - 4 * v112);
                *v113 = 0;
                v105 = v113 + 1;
                memcpy(v114, v106, v107);
                v115 = *(a1 + 8);
                *(a1 + 8) = v114;
                *(a1 + 16) = v105;
                *(a1 + 24) = 0;
                if (v115)
                {
                  operator delete(v115);
                }
              }

              else
              {
                *v104 = 0;
                v105 = v104 + 4;
              }

              *(a1 + 16) = v105;
              v116 = *(this + 1);
              if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v105 - 1) = *(*this + v116);
              v102 = *(this + 2);
              v101 = *(this + 1) + 4;
              *(this + 1) = v101;
            }

            goto LABEL_185;
          }

          v169 = *(a1 + 16);
          v168 = *(a1 + 24);
          if (v169 >= v168)
          {
            v208 = *(a1 + 8);
            v209 = v169 - v208;
            v210 = (v169 - v208) >> 2;
            v211 = v210 + 1;
            if ((v210 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v212 = v168 - v208;
            if (v212 >> 1 > v211)
            {
              v211 = v212 >> 1;
            }

            if (v212 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v213 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v213 = v211;
            }

            if (v213)
            {
              sub_19B4C4FA8(a1 + 8, v213);
            }

            v236 = (v169 - v208) >> 2;
            v237 = (4 * v210);
            v238 = (4 * v210 - 4 * v236);
            *v237 = 0;
            v155 = v237 + 1;
            memcpy(v238, v208, v209);
            v239 = *(a1 + 8);
            *(a1 + 8) = v238;
            *(a1 + 16) = v155;
            *(a1 + 24) = 0;
            if (v239)
            {
              operator delete(v239);
            }
          }

          else
          {
            *v169 = 0;
            v155 = v169 + 4;
          }

          *(a1 + 16) = v155;
          goto LABEL_300;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v60 = *(this + 1);
            v61 = *(this + 2);
            while (v60 < v61 && (*(this + 24) & 1) == 0)
            {
              v63 = *(a1 + 40);
              v62 = *(a1 + 48);
              if (v63 >= v62)
              {
                v65 = *(a1 + 32);
                v66 = v63 - v65;
                v67 = (v63 - v65) >> 2;
                v68 = v67 + 1;
                if ((v67 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v69 = v62 - v65;
                if (v69 >> 1 > v68)
                {
                  v68 = v69 >> 1;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v70 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  sub_19B4C4FA8(a1 + 32, v70);
                }

                v71 = (v63 - v65) >> 2;
                v72 = (4 * v67);
                v73 = (4 * v67 - 4 * v71);
                *v72 = 0;
                v64 = v72 + 1;
                memcpy(v73, v65, v66);
                v74 = *(a1 + 32);
                *(a1 + 32) = v73;
                *(a1 + 40) = v64;
                *(a1 + 48) = 0;
                if (v74)
                {
                  operator delete(v74);
                }
              }

              else
              {
                *v63 = 0;
                v64 = v63 + 4;
              }

              *(a1 + 40) = v64;
              v75 = *(this + 1);
              if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v64 - 1) = *(*this + v75);
              v61 = *(this + 2);
              v60 = *(this + 1) + 4;
              *(this + 1) = v60;
            }

            goto LABEL_185;
          }

          v159 = *(a1 + 40);
          v158 = *(a1 + 48);
          if (v159 >= v158)
          {
            v196 = *(a1 + 32);
            v197 = v159 - v196;
            v198 = (v159 - v196) >> 2;
            v199 = v198 + 1;
            if ((v198 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v200 = v158 - v196;
            if (v200 >> 1 > v199)
            {
              v199 = v200 >> 1;
            }

            if (v200 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v201 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v201 = v199;
            }

            if (v201)
            {
              sub_19B4C4FA8(a1 + 32, v201);
            }

            v228 = (v159 - v196) >> 2;
            v229 = (4 * v198);
            v230 = (4 * v198 - 4 * v228);
            *v229 = 0;
            v155 = v229 + 1;
            memcpy(v230, v196, v197);
            v231 = *(a1 + 32);
            *(a1 + 32) = v230;
            *(a1 + 40) = v155;
            *(a1 + 48) = 0;
            if (v231)
            {
              operator delete(v231);
            }
          }

          else
          {
            *v159 = 0;
            v155 = v159 + 4;
          }

          *(a1 + 40) = v155;
          goto LABEL_300;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v76 = *(this + 1);
            v77 = *(this + 2);
            while (v76 < v77 && (*(this + 24) & 1) == 0)
            {
              v79 = *(a1 + 88);
              v78 = *(a1 + 96);
              if (v79 >= v78)
              {
                v81 = *(a1 + 80);
                v82 = v79 - v81;
                v83 = (v79 - v81) >> 2;
                v84 = v83 + 1;
                if ((v83 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v85 = v78 - v81;
                if (v85 >> 1 > v84)
                {
                  v84 = v85 >> 1;
                }

                if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v86 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v86 = v84;
                }

                if (v86)
                {
                  sub_19B4C4FA8(a1 + 80, v86);
                }

                v87 = (v79 - v81) >> 2;
                v88 = (4 * v83);
                v89 = (4 * v83 - 4 * v87);
                *v88 = 0;
                v80 = v88 + 1;
                memcpy(v89, v81, v82);
                v90 = *(a1 + 80);
                *(a1 + 80) = v89;
                *(a1 + 88) = v80;
                *(a1 + 96) = 0;
                if (v90)
                {
                  operator delete(v90);
                }
              }

              else
              {
                *v79 = 0;
                v80 = v79 + 4;
              }

              *(a1 + 88) = v80;
              v91 = *(this + 1);
              if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v80 - 1) = *(*this + v91);
              v77 = *(this + 2);
              v76 = *(this + 1) + 4;
              *(this + 1) = v76;
            }

            goto LABEL_185;
          }

          v167 = *(a1 + 88);
          v166 = *(a1 + 96);
          if (v167 >= v166)
          {
            v202 = *(a1 + 80);
            v203 = v167 - v202;
            v204 = (v167 - v202) >> 2;
            v205 = v204 + 1;
            if ((v204 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v206 = v166 - v202;
            if (v206 >> 1 > v205)
            {
              v205 = v206 >> 1;
            }

            if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v207 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v207 = v205;
            }

            if (v207)
            {
              sub_19B4C4FA8(a1 + 80, v207);
            }

            v232 = (v167 - v202) >> 2;
            v233 = (4 * v204);
            v234 = (4 * v204 - 4 * v232);
            *v233 = 0;
            v155 = v233 + 1;
            memcpy(v234, v202, v203);
            v235 = *(a1 + 80);
            *(a1 + 80) = v234;
            *(a1 + 88) = v155;
            *(a1 + 96) = 0;
            if (v235)
            {
              operator delete(v235);
            }
          }

          else
          {
            *v167 = 0;
            v155 = v167 + 4;
          }

          *(a1 + 88) = v155;
          goto LABEL_300;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 64);
              v44 = *(a1 + 72);
              if (v45 >= v44)
              {
                v47 = *(a1 + 56);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_19B4C4FA8(a1 + 56, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 56);
                *(a1 + 56) = v55;
                *(a1 + 64) = v46;
                *(a1 + 72) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(a1 + 64) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_185;
          }

          v157 = *(a1 + 64);
          v156 = *(a1 + 72);
          if (v157 >= v156)
          {
            v190 = *(a1 + 56);
            v191 = v157 - v190;
            v192 = (v157 - v190) >> 2;
            v193 = v192 + 1;
            if ((v192 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v194 = v156 - v190;
            if (v194 >> 1 > v193)
            {
              v193 = v194 >> 1;
            }

            if (v194 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v195 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v195 = v193;
            }

            if (v195)
            {
              sub_19B4C4FA8(a1 + 56, v195);
            }

            v224 = (v157 - v190) >> 2;
            v225 = (4 * v192);
            v226 = (4 * v192 - 4 * v224);
            *v225 = 0;
            v155 = v225 + 1;
            memcpy(v226, v190, v191);
            v227 = *(a1 + 56);
            *(a1 + 56) = v226;
            *(a1 + 64) = v155;
            *(a1 + 72) = 0;
            if (v227)
            {
              operator delete(v227);
            }
          }

          else
          {
            *v157 = 0;
            v155 = v157 + 4;
          }

          *(a1 + 64) = v155;
          goto LABEL_300;
        case 6u:
          *(a1 + 192) |= 0x80u;
          v117 = *(this + 1);
          if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 184) = *(*this + v117);
          goto LABEL_304;
        case 7u:
          *(a1 + 192) |= 0x40u;
          v135 = *(this + 1);
          v134 = *(this + 2);
          v136 = *this;
          if (v135 <= 0xFFFFFFFFFFFFFFF5 && v135 + 10 <= v134)
          {
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = (v136 + v135);
            v141 = v135 + 1;
            do
            {
              *(this + 1) = v141;
              v142 = *v140++;
              v139 |= (v142 & 0x7F) << v137;
              if ((v142 & 0x80) == 0)
              {
                goto LABEL_278;
              }

              v137 += 7;
              ++v141;
              v14 = v138++ > 8;
            }

            while (!v14);
LABEL_211:
            LODWORD(v139) = 0;
            goto LABEL_278;
          }

          v170 = 0;
          v171 = 0;
          v139 = 0;
          v17 = v134 >= v135;
          v172 = v134 - v135;
          if (!v17)
          {
            v172 = 0;
          }

          v173 = (v136 + v135);
          v174 = v135 + 1;
          while (2)
          {
            if (v172)
            {
              v175 = *v173;
              *(this + 1) = v174;
              v139 |= (v175 & 0x7F) << v170;
              if (v175 < 0)
              {
                v170 += 7;
                --v172;
                ++v173;
                ++v174;
                v14 = v171++ > 8;
                if (v14)
                {
                  goto LABEL_211;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v139) = 0;
              }
            }

            else
            {
              LODWORD(v139) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_278:
          *(a1 + 180) = v139;
          goto LABEL_306;
        case 8u:
          *(a1 + 192) |= 0x100u;
          v93 = *(this + 1);
          v92 = *(this + 2);
          v94 = *this;
          if (v93 <= 0xFFFFFFFFFFFFFFF5 && v93 + 10 <= v92)
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            do
            {
              *(this + 1) = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
            }

            while (!v14);
LABEL_199:
            LODWORD(v97) = 0;
            goto LABEL_275;
          }

          v160 = 0;
          v161 = 0;
          v97 = 0;
          v17 = v92 >= v93;
          v162 = v92 - v93;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v94 + v93);
          v164 = v93 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(this + 1) = v164;
              v97 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_199;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v97) = 0;
              }
            }

            else
            {
              LODWORD(v97) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(a1 + 188) = v97;
          goto LABEL_306;
        case 9u:
          *(a1 + 192) |= 4u;
          v152 = *(this + 1);
          if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 164) = *(*this + v152);
          goto LABEL_304;
        case 0xAu:
          *(a1 + 192) |= 8u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 168) = *(*this + v59);
          goto LABEL_304;
        case 0xBu:
          *(a1 + 192) |= 0x20u;
          v144 = *(this + 1);
          v143 = *(this + 2);
          v145 = *this;
          if (v144 <= 0xFFFFFFFFFFFFFFF5 && v144 + 10 <= v143)
          {
            v146 = 0;
            v147 = 0;
            v148 = 0;
            v149 = (v145 + v144);
            v150 = v144 + 1;
            do
            {
              *(this + 1) = v150;
              v151 = *v149++;
              v148 |= (v151 & 0x7F) << v146;
              if ((v151 & 0x80) == 0)
              {
                goto LABEL_281;
              }

              v146 += 7;
              ++v150;
              v14 = v147++ > 8;
            }

            while (!v14);
LABEL_219:
            LODWORD(v148) = 0;
            goto LABEL_281;
          }

          v176 = 0;
          v177 = 0;
          v148 = 0;
          v17 = v143 >= v144;
          v178 = v143 - v144;
          if (!v17)
          {
            v178 = 0;
          }

          v179 = (v145 + v144);
          v180 = v144 + 1;
          while (2)
          {
            if (v178)
            {
              v181 = *v179;
              *(this + 1) = v180;
              v148 |= (v181 & 0x7F) << v176;
              if (v181 < 0)
              {
                v176 += 7;
                --v178;
                ++v179;
                ++v180;
                v14 = v177++ > 8;
                if (v14)
                {
                  goto LABEL_219;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v148) = 0;
              }
            }

            else
            {
              LODWORD(v148) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_281:
          *(a1 + 176) = v148;
          goto LABEL_306;
        case 0xCu:
          *(a1 + 192) |= 0x10u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 172) = *(*this + v41);
          goto LABEL_304;
        case 0xDu:
          *(a1 + 192) |= 2u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_302;
          }

          *(a1 + 160) = *(*this + v58);
          goto LABEL_304;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_312:
              v245 = 0;
              return v245 & 1;
            }

            v118 = *(this + 1);
            v119 = *(this + 2);
            while (v118 < v119 && (*(this + 24) & 1) == 0)
            {
              v121 = *(a1 + 112);
              v120 = *(a1 + 120);
              if (v121 >= v120)
              {
                v123 = *(a1 + 104);
                v124 = v121 - v123;
                v125 = (v121 - v123) >> 2;
                v126 = v125 + 1;
                if ((v125 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v127 = v120 - v123;
                if (v127 >> 1 > v126)
                {
                  v126 = v127 >> 1;
                }

                if (v127 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v128 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v128 = v126;
                }

                if (v128)
                {
                  sub_19B4C4FA8(a1 + 104, v128);
                }

                v129 = (v121 - v123) >> 2;
                v130 = (4 * v125);
                v131 = (4 * v125 - 4 * v129);
                *v130 = 0;
                v122 = v130 + 1;
                memcpy(v131, v123, v124);
                v132 = *(a1 + 104);
                *(a1 + 104) = v131;
                *(a1 + 112) = v122;
                *(a1 + 120) = 0;
                if (v132)
                {
                  operator delete(v132);
                }
              }

              else
              {
                *v121 = 0;
                v122 = v121 + 4;
              }

              *(a1 + 112) = v122;
              v133 = *(this + 1);
              if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(this + 2))
              {
                goto LABEL_184;
              }

              *(v122 - 1) = *(*this + v133);
              v119 = *(this + 2);
              v118 = *(this + 1) + 4;
              *(this + 1) = v118;
            }

LABEL_185:
            PB::Reader::recallMark();
          }

          else
          {
            v183 = *(a1 + 112);
            v182 = *(a1 + 120);
            if (v183 >= v182)
            {
              v214 = *(a1 + 104);
              v215 = v183 - v214;
              v216 = (v183 - v214) >> 2;
              v217 = v216 + 1;
              if ((v216 + 1) >> 62)
              {
LABEL_313:
                sub_19B5BE690();
              }

              v218 = v182 - v214;
              if (v218 >> 1 > v217)
              {
                v217 = v218 >> 1;
              }

              if (v218 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v219 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v219 = v217;
              }

              if (v219)
              {
                sub_19B4C4FA8(a1 + 104, v219);
              }

              v240 = (v183 - v214) >> 2;
              v241 = (4 * v216);
              v242 = (4 * v216 - 4 * v240);
              *v241 = 0;
              v155 = v241 + 1;
              memcpy(v242, v214, v215);
              v243 = *(a1 + 104);
              *(a1 + 104) = v242;
              *(a1 + 112) = v155;
              *(a1 + 120) = 0;
              if (v243)
              {
                operator delete(v243);
              }
            }

            else
            {
              *v183 = 0;
              v155 = v183 + 4;
            }

            *(a1 + 112) = v155;
LABEL_300:
            v244 = *(this + 1);
            if (v244 <= 0xFFFFFFFFFFFFFFFBLL && v244 + 4 <= *(this + 2))
            {
              *(v155 - 1) = *(*this + v244);
LABEL_304:
              v24 = *(this + 1) + 4;
LABEL_305:
              *(this + 1) = v24;
            }

            else
            {
LABEL_302:
              *(this + 24) = 1;
            }
          }

LABEL_306:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_310;
          }

          break;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_312;
            }

            v25 = *(this + 1);
            v26 = *(this + 2);
            while (v25 < v26 && (*(this + 24) & 1) == 0)
            {
              v28 = *(a1 + 136);
              v27 = *(a1 + 144);
              if (v28 >= v27)
              {
                v30 = *(a1 + 128);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_313;
                }

                v34 = v27 - v30;
                if (v34 >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v35 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_19B4C4FA8(a1 + 128, v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(a1 + 128);
                *(a1 + 128) = v38;
                *(a1 + 136) = v29;
                *(a1 + 144) = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v28 = 0;
                v29 = v28 + 4;
              }

              *(a1 + 136) = v29;
              v40 = *(this + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
              {
LABEL_184:
                *(this + 24) = 1;
                goto LABEL_185;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

            goto LABEL_185;
          }

          v154 = *(a1 + 136);
          v153 = *(a1 + 144);
          if (v154 >= v153)
          {
            v184 = *(a1 + 128);
            v185 = v154 - v184;
            v186 = (v154 - v184) >> 2;
            v187 = v186 + 1;
            if ((v186 + 1) >> 62)
            {
              goto LABEL_313;
            }

            v188 = v153 - v184;
            if (v188 >> 1 > v187)
            {
              v187 = v188 >> 1;
            }

            if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v189 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v189 = v187;
            }

            if (v189)
            {
              sub_19B4C4FA8(a1 + 128, v189);
            }

            v220 = (v154 - v184) >> 2;
            v221 = (4 * v186);
            v222 = (4 * v186 - 4 * v220);
            *v221 = 0;
            v155 = v221 + 1;
            memcpy(v222, v184, v185);
            v223 = *(a1 + 128);
            *(a1 + 128) = v222;
            *(a1 + 136) = v155;
            *(a1 + 144) = 0;
            if (v223)
            {
              operator delete(v223);
            }
          }

          else
          {
            *v154 = 0;
            v155 = v154 + 4;
          }

          *(a1 + 136) = v155;
          goto LABEL_300;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_312;
          }

          goto LABEL_306;
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

LABEL_310:
  v245 = v4 ^ 1;
  return v245 & 1;
}