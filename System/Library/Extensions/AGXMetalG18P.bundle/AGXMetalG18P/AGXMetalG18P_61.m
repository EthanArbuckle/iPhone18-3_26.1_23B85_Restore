void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELb0EEEvT1_SL_SB_NS_15iterator_traitsISL_E15difference_typeEb(unint64_t a1, __int128 *a2, char *a3, unint64_t a4, uint64_t a5, char a6)
{
  v523 = *MEMORY[0x29EDCA608];
  v513 = a4;
  if (a4 == a2)
  {
    return;
  }

  v7 = a2;
  while (1)
  {
    v9 = *a3;
    v10 = (v513 - *a3) >> 6;
    v11 = *a1;
    v12 = v7 - *a1;
    v13 = v12 >> 6;
    v14 = v10 + 8 * &a3[-a1] - (v12 >> 6);
    v15 = v14 - 2;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v264 = v513;
        if (v513 == v9)
        {
          v264 = *(a3 - 1) + 4096;
        }

        v265 = (v264 - 64);
        if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v264 - 48), v7, v7 + 8, (v264 - 64)))
        {
          v266 = *v7;
          v267 = v7[1];
          v268 = v7[3];
          v521 = v7[2];
          v522 = v268;
          v519 = v266;
          v520 = v267;
          v269 = *v265;
          v270 = v265[1];
          v271 = v265[3];
          v7[2] = v265[2];
          v7[3] = v271;
          *v7 = v269;
          v7[1] = v270;
          v272 = v519;
          v273 = v520;
          v274 = v522;
          v265[2] = v521;
          v265[3] = v274;
          *v265 = v272;
          v265[1] = v273;
        }

        return;
      }

      goto LABEL_13;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        v275 = (a1 + 8 * ((v13 + 1) >> 6));
        v276 = *v275 + (((v13 + 1) & 0x3F) << 6);
        v277 = v13 + 2;
        v278 = v513;
        goto LABEL_545;
      }

      v275 = (a1 - 8 * ((62 - v13) >> 6));
      v276 = *v275 + ((~(62 - v13) & 0x3F) << 6);
      v278 = v513;
      if (v12 == -64)
      {
        v277 = 1;
LABEL_545:
        v430 = (a1 + 8 * (v277 >> 6));
        v431 = *v430 + ((v277 & 0x3F) << 6);
        if (v278 == v9)
        {
LABEL_546:
          v278 = *(a3 - 1) + 4096;
        }
      }

      else
      {
        v457 = 61 - v13;
        v430 = (a1 - 8 * (v457 >> 6));
        v431 = *v430 + ((~v457 & 0x3F) << 6);
        if (v513 == v9)
        {
          goto LABEL_546;
        }
      }

      v432 = (v278 - 64);
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, v7, v275, v276, v430, v431);
      if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v278 - 48), v431, (v431 + 16), (v278 - 64)))
      {
        v434 = *(v431 + 16);
        v519 = *v431;
        v433 = v519;
        v520 = v434;
        v436 = *(v431 + 48);
        v521 = *(v431 + 32);
        v435 = v521;
        v522 = v436;
        v438 = *(v278 - 32);
        v437 = *(v278 - 16);
        v439 = *(v278 - 48);
        *v431 = *v432;
        *(v431 + 16) = v439;
        *(v431 + 32) = v438;
        *(v431 + 48) = v437;
        *(v278 - 32) = v435;
        *(v278 - 16) = v436;
        *v432 = v433;
        *(v278 - 48) = v434;
        if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v431 + 16), v276, (v276 + 16), v431))
        {
          v440 = *v276;
          v441 = *(v276 + 16);
          v442 = *(v276 + 48);
          v521 = *(v276 + 32);
          v522 = v442;
          v519 = v440;
          v520 = v441;
          v443 = *v431;
          v444 = *(v431 + 16);
          v445 = *(v431 + 48);
          *(v276 + 32) = *(v431 + 32);
          *(v276 + 48) = v445;
          *v276 = v443;
          *(v276 + 16) = v444;
          v446 = v520;
          *v431 = v519;
          *(v431 + 16) = v446;
          v447 = v522;
          *(v431 + 32) = v521;
          *(v431 + 48) = v447;
          if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v276 + 16), v7, v7 + 8, v276))
          {
            v448 = *v7;
            v449 = v7[1];
            v450 = v7[3];
            v521 = v7[2];
            v522 = v450;
            v519 = v448;
            v520 = v449;
            v451 = *v276;
            v452 = *(v276 + 16);
            v453 = *(v276 + 48);
            v7[2] = *(v276 + 32);
            v7[3] = v453;
            *v7 = v451;
            v7[1] = v452;
            v454 = v519;
            v455 = v520;
            v456 = v522;
            *(v276 + 32) = v521;
            *(v276 + 48) = v456;
            *v276 = v454;
            *(v276 + 16) = v455;
          }
        }
      }

      return;
    }

    if (v14 == 5)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        v260 = (a1 + 8 * ((v13 + 1) >> 6));
        v261 = (*v260 + (((v13 + 1) & 0x3F) << 6));
        v262 = v13 + 2;
        v263 = a3;
        goto LABEL_539;
      }

      v260 = (a1 - 8 * ((62 - v13) >> 6));
      v261 = (*v260 + ((~(62 - v13) & 0x3F) << 6));
      v263 = a3;
      if (v12 == -64)
      {
        v262 = 1;
LABEL_539:
        v423 = (a1 + 8 * (v262 >> 6));
        v424 = (*v423 + ((v262 & 0x3F) << 6));
        v425 = v13 + 3;
        v426 = v513;
LABEL_540:
        v427 = (a1 + 8 * (v425 >> 6));
        v428 = (*v427 + ((v425 & 0x3F) << 6));
        if (v426 == v9)
        {
          goto LABEL_541;
        }
      }

      else
      {
        v423 = (a1 - 8 * ((61 - v13) >> 6));
        v424 = (*v423 + ((~(61 - v13) & 0x3F) << 6));
        v426 = v513;
        if (v13 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v425 = 1;
          goto LABEL_540;
        }

        v509 = 60 - v13;
        v427 = (a1 - 8 * (v509 >> 6));
        v428 = (*v427 + ((~v509 & 0x3F) << 6));
        if (v513 == v9)
        {
LABEL_541:
          v429 = *(v263 - 8);
          v263 -= 8;
          v426 = v429 + 4096;
        }
      }

      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEvT1_SL_SL_SL_SL_SB_(a1, v7, v260, v261, v423, v424, v427, v428, v263, (v426 - 64));
      return;
    }

LABEL_13:
    if (v14 <= 23)
    {
      if (a6)
      {
        if (v7 == v513)
        {
          return;
        }

        v279 = (v7 + 4);
        while (2)
        {
          if (v279 - v11 == 4096)
          {
            v320 = *(a1 + 8);
            a1 += 8;
            v11 = v320;
            v279 = v320;
          }

          if (v279 == v513)
          {
            return;
          }

          v321 = a1;
          v322 = v279;
          if (v279 == v11)
          {
            v321 = (a1 - 8);
            v322 = *(a1 - 8) + 4096;
          }

          v317 = (v322 - 64);
          if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v279 + 8, (v322 - 64), (v322 - 48), v279))
          {
            v323 = *v279;
            v324 = v279[1];
            v325 = *(v279 + 1);
            v326 = *(v279 + 1);
            v327 = v279[8];
            v328 = v279[9];
            v329 = *(v279 + 5);
            v330 = *(v279 + 6);
            v331 = *(v279 + 14);
            LODWORD(v521) = *(v279 + 15);
            v332 = *(v279 + 22);
            v519 = v331;
            v520 = v332;
            v333 = *v317;
            v334 = *(v317 + 1);
            v335 = *(v317 + 3);
            *(v279 + 2) = *(v317 + 2);
            *(v279 + 3) = v335;
            *v279 = v333;
            *(v279 + 1) = v334;
            if (v317 != v7)
            {
              v336 = (v329 - 2);
              v337 = (v329 - 1);
              v338 = (v325 - 2);
              v339 = (v325 - 1);
              do
              {
                v343 = v317;
                if (v317 == *v321)
                {
                  v346 = *--v321;
                  v344 = (v346 + 4096);
                  if (v336 <= 7)
                  {
LABEL_434:
                    v345 = dword_29D2F49F8[v336];
                    goto LABEL_437;
                  }
                }

                else
                {
                  v344 = v317;
                  if (v336 <= 7)
                  {
                    goto LABEL_434;
                  }
                }

                v345 = 3;
LABEL_437:
                v347 = *(v344 - 11);
                v348 = v347 - 2;
                if ((v347 - 2) > 7)
                {
                  v349 = 3;
                  if (v337 > 8)
                  {
LABEL_439:
                    v350 = 1;
                    goto LABEL_442;
                  }
                }

                else
                {
                  v349 = dword_29D2F49F8[v348];
                  if (v337 > 8)
                  {
                    goto LABEL_439;
                  }
                }

                v350 = dword_29D2F4A18[v337];
LABEL_442:
                v351 = v347 - 1;
                if (v351 > 8)
                {
                  v352 = 1;
                }

                else
                {
                  v352 = dword_29D2F4A18[v351];
                }

                v317 = v344 - 32;
                if (v345 < v349)
                {
                  goto LABEL_431;
                }

                if (v349 >= v345)
                {
                  v357 = *(v344 - 24);
                  if (v327 < v357 || v357 >= v327 && (v350 < v352 || v352 >= v350 && v330 < *(v344 - 10)))
                  {
                    goto LABEL_431;
                  }
                }

                if (v348 > 7)
                {
                  v353 = 3;
                  if (v336 > 7)
                  {
LABEL_449:
                    v354 = 3;
                    if (v351 > 8)
                    {
                      goto LABEL_450;
                    }

                    goto LABEL_460;
                  }
                }

                else
                {
                  v353 = dword_29D2F49F8[v348];
                  if (v336 > 7)
                  {
                    goto LABEL_449;
                  }
                }

                v354 = dword_29D2F49F8[v336];
                if (v351 > 8)
                {
LABEL_450:
                  v355 = 1;
                  if (v337 <= 8)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_451;
                }

LABEL_460:
                v355 = dword_29D2F4A18[v351];
                if (v337 <= 8)
                {
LABEL_461:
                  v356 = dword_29D2F4A18[v337];
                  goto LABEL_462;
                }

LABEL_451:
                v356 = 1;
LABEL_462:
                if (v353 < v354 || v354 >= v353 && ((v358 = *(v344 - 24), v358 < v327) || v327 >= v358 && (v355 < v356 || v356 >= v355 && *(v344 - 10) < v330)))
                {
LABEL_420:
                  v317 = v343;
                  break;
                }

                v359 = *(v344 - 15);
                if ((v359 - 2) > 7)
                {
                  v360 = 3;
                  if (v338 > 7)
                  {
LABEL_471:
                    v361 = 3;
                    goto LABEL_474;
                  }
                }

                else
                {
                  v360 = dword_29D2F49F8[v359 - 2];
                  if (v338 > 7)
                  {
                    goto LABEL_471;
                  }
                }

                v361 = dword_29D2F49F8[v338];
LABEL_474:
                v362 = v359 - 1;
                if (v362 > 8)
                {
                  v363 = 1;
                  if (v339 > 8)
                  {
LABEL_476:
                    v364 = 1;
                    if (v360 < v361)
                    {
                      goto LABEL_431;
                    }

                    goto LABEL_480;
                  }
                }

                else
                {
                  v363 = dword_29D2F4A18[v362];
                  if (v339 > 8)
                  {
                    goto LABEL_476;
                  }
                }

                v364 = dword_29D2F4A18[v339];
                if (v360 < v361)
                {
                  goto LABEL_431;
                }

LABEL_480:
                if (v361 < v360)
                {
                  goto LABEL_420;
                }

                v365 = *v317;
                if (v365 >= v323 && (v323 < v365 || v363 >= v364 && (v364 < v363 || *(v344 - 14) >= v326)))
                {
                  goto LABEL_420;
                }

LABEL_431:
                v340 = *v317;
                v341 = *(v344 - 3);
                v342 = *(v344 - 1);
                *(v343 + 2) = *(v344 - 2);
                *(v343 + 3) = v342;
                *v343 = v340;
                *(v343 + 1) = v341;
              }

              while (v317 != v7);
            }

            *v317 = v323;
            v317[1] = v324;
            *(v317 + 1) = v325;
            *(v317 + 1) = v326;
            v317[8] = v327;
            v317[9] = v328;
            *(v317 + 5) = v329;
            *(v317 + 6) = v330;
            v318 = v521;
            v319 = v520;
            *(v317 + 14) = v519;
            *(v317 + 22) = v319;
            *(v317 + 15) = v318;
            v11 = *a1;
          }

          v279 += 32;
          continue;
        }
      }

      if (v7 == v513)
      {
        return;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        v417 = (a1 - 8 * ((62 - v13) >> 6));
        v418 = *v417;
        v419 = ~(62 - v13) & 0x3FLL;
      }

      else
      {
        v417 = (a1 + 8 * ((v13 + 1) >> 6));
        v418 = *v417;
        v419 = (v13 + 1) & 0x3F;
      }

      v458 = &v418[32 * v419];
      if (v458 == v513)
      {
        return;
      }

      while (1)
      {
        v459 = (v458 - v418) >> 6;
        if (v459 < 2)
        {
          v463 = 64 - v459;
          v461 = &v417[-(v463 >> 6)];
          v462 = &(*v461)[32 * (~v463 & 0x3F)];
        }

        else
        {
          v460 = v459 - 1;
          v461 = &v417[v460 >> 6];
          v462 = &(*v461)[32 * (v460 & 0x3F)];
        }

        v464 = v513;
        if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v458 + 8, v462, v462 + 8, v458))
        {
          break;
        }

LABEL_619:
        v458 += 32;
        if (v458 - v418 == 4096)
        {
          v508 = v417[1];
          ++v417;
          v418 = v508;
          v458 = v508;
        }

        if (v458 == v464)
        {
          return;
        }
      }

      v465 = *v458;
      v466 = v458[1];
      v467 = *(v458 + 1);
      v468 = *(v458 + 1);
      v469 = v458[8];
      v470 = v458[9];
      v471 = *(v458 + 5);
      v472 = *(v458 + 6);
      v473 = *(v458 + 14);
      v474 = *(v458 + 22);
      v475 = (v471 - 2);
      LODWORD(v521) = *(v458 + 15);
      v476 = (v471 - 1);
      v477 = (v467 - 2);
      v478 = (v467 - 1);
      v479 = v458;
      v519 = v473;
      v520 = v474;
      while (2)
      {
        while (2)
        {
          while (2)
          {
            v480 = v462;
            v481 = *v462;
            v482 = *(v462 + 1);
            v483 = *(v462 + 3);
            *(v479 + 2) = *(v462 + 2);
            *(v479 + 3) = v483;
            *v479 = v481;
            *(v479 + 1) = v482;
            if (v462 == *v461)
            {
              v486 = *--v461;
              v484 = (v486 + 4096);
              if (v475 > 7)
              {
                goto LABEL_568;
              }

LABEL_566:
              v485 = dword_29D2F49F8[v475];
            }

            else
            {
              v484 = v462;
              if (v475 <= 7)
              {
                goto LABEL_566;
              }

LABEL_568:
              v485 = 3;
            }

            v487 = *(v484 - 11);
            v488 = v487 - 2;
            if ((v487 - 2) > 7)
            {
              v489 = 3;
              if (v476 <= 8)
              {
                goto LABEL_573;
              }

LABEL_571:
              v490 = 1;
            }

            else
            {
              v489 = dword_29D2F49F8[v488];
              if (v476 > 8)
              {
                goto LABEL_571;
              }

LABEL_573:
              v490 = dword_29D2F4A18[v476];
            }

            v491 = v487 - 1;
            if (v491 > 8)
            {
              v492 = 1;
            }

            else
            {
              v492 = dword_29D2F4A18[v491];
            }

            v462 = v484 - 32;
            v479 = v480;
            if (v485 < v489)
            {
              continue;
            }

            break;
          }

          if (v489 >= v485)
          {
            v497 = *(v484 - 24);
            v479 = v480;
            if (v469 < v497)
            {
              continue;
            }

            if (v497 >= v469)
            {
              v479 = v480;
              if (v490 < v492)
              {
                continue;
              }

              if (v492 >= v490)
              {
                v479 = v480;
                if (v472 < *(v484 - 10))
                {
                  continue;
                }
              }
            }
          }

          break;
        }

        if (v488 > 7)
        {
          v493 = 3;
          if (v475 <= 7)
          {
            goto LABEL_592;
          }

LABEL_581:
          v494 = 3;
          if (v491 > 8)
          {
            goto LABEL_582;
          }

LABEL_593:
          v495 = dword_29D2F4A18[v491];
          if (v476 <= 8)
          {
            goto LABEL_594;
          }

LABEL_583:
          v496 = 1;
          if (v493 < v494)
          {
            goto LABEL_618;
          }
        }

        else
        {
          v493 = dword_29D2F49F8[v488];
          if (v475 > 7)
          {
            goto LABEL_581;
          }

LABEL_592:
          v494 = dword_29D2F49F8[v475];
          if (v491 <= 8)
          {
            goto LABEL_593;
          }

LABEL_582:
          v495 = 1;
          if (v476 > 8)
          {
            goto LABEL_583;
          }

LABEL_594:
          v496 = dword_29D2F4A18[v476];
          if (v493 < v494)
          {
            goto LABEL_618;
          }
        }

        if (v494 >= v493)
        {
          v498 = *(v484 - 24);
          if (v498 < v469 || v469 >= v498 && (v495 < v496 || v496 >= v495 && *(v484 - 10) < v472))
          {
LABEL_618:
            *v480 = v465;
            v480[1] = v466;
            *(v480 + 1) = v467;
            *(v480 + 1) = v468;
            v480[8] = v469;
            v480[9] = v470;
            *(v480 + 5) = v471;
            *(v480 + 6) = v472;
            v506 = v521;
            v507 = v520;
            *(v480 + 14) = v519;
            *(v480 + 22) = v507;
            *(v480 + 15) = v506;
            v418 = *v417;
            v464 = v513;
            goto LABEL_619;
          }
        }

        v499 = *(v484 - 15);
        if ((v499 - 2) > 7)
        {
          v500 = 3;
          if (v477 <= 7)
          {
            goto LABEL_605;
          }

LABEL_603:
          v501 = 3;
        }

        else
        {
          v500 = dword_29D2F49F8[v499 - 2];
          if (v477 > 7)
          {
            goto LABEL_603;
          }

LABEL_605:
          v501 = dword_29D2F49F8[v477];
        }

        v502 = v499 - 1;
        if (v502 > 8)
        {
          v503 = 1;
          if (v478 <= 8)
          {
            goto LABEL_610;
          }

LABEL_608:
          v504 = 1;
        }

        else
        {
          v503 = dword_29D2F4A18[v502];
          if (v478 > 8)
          {
            goto LABEL_608;
          }

LABEL_610:
          v504 = dword_29D2F4A18[v478];
        }

        v479 = v480;
        if (v500 >= v501)
        {
          if (v501 < v500)
          {
            goto LABEL_618;
          }

          v505 = *v462;
          v479 = v480;
          if (v505 >= v465)
          {
            if (v465 < v505)
            {
              goto LABEL_618;
            }

            v479 = v480;
            if (v503 >= v504)
            {
              if (v504 < v503)
              {
                goto LABEL_618;
              }

              v479 = v480;
              if (*(v484 - 14) >= v468)
              {
                goto LABEL_618;
              }
            }
          }
        }

        continue;
      }
    }

    v514 = v7;
    if (!a5)
    {
      if (v7 == v513)
      {
        return;
      }

      v280 = v15 >> 1;
      v281 = v15 >> 1;
      while (1)
      {
        v286 = (v7 - *a1) >> 6;
        if (!v281)
        {
          break;
        }

        v287 = v286 + v281;
        if (v286 + v281 < 1)
        {
          v291 = 63 - v287;
          LOBYTE(v287) = ~(63 - v287);
          v288 = (a1 - 8 * (v291 >> 6));
        }

        else
        {
          v288 = (a1 + 8 * (v287 >> 6));
        }

        v290 = (*v288 + ((v287 & 0x3F) << 6));
        if (v290 == v7)
        {
          v289 = 0;
          goto LABEL_394;
        }

        v289 = (((v287 & 0x3F) << 6) >> 6) + 8 * (v288 - a1) - v286;
        if (v280 >= v289)
        {
          goto LABEL_394;
        }

LABEL_384:
        v285 = v281-- <= 0;
        if (v285)
        {
          v366 = 8 * &a3[-a1] + ((v513 - *a3) >> 6) - ((v7 - *a1) >> 6);
          if (v366 < 2)
          {
            return;
          }

          while (2)
          {
            v367 = 0;
            v368 = *v7;
            v369 = v7[1];
            v370 = v7[3];
            v517 = v7[2];
            v518 = v370;
            v515 = v368;
            v516 = v369;
            v371 = v7;
            v372 = a1;
            do
            {
              v376 = v371;
              if (v367 != -1)
              {
                v377 = v367 + 1 + ((v371 - *v372) >> 6);
                if (v377 < 1)
                {
                  v378 = 63 - v377;
                  v372 -= v378 >> 6;
                  v371 = *v372 + ((~v378 & 0x3F) << 6);
                }

                else
                {
                  v372 += v377 >> 6;
                  v371 = *v372 + ((v377 & 0x3F) << 6);
                }
              }

              v379 = (2 * v367) | 1;
              v367 = 2 * v367 + 2;
              if (v367 < v366 && ((v380 = *v372, v381 = (v371 - *v372) >> 6, v381 < 0) ? (v382 = (v372[-((62 - v381) >> 6)] + ((~(62 - v381) & 0x3F) << 6))) : (v382 = (*(v372 + (((v381 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v381 + 1) & 0x3F) << 6))), std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v371 + 16), v382, v382 + 8, v371)))
              {
                v371 += 64;
                if (v371 - v380 == 4096)
                {
                  v383 = v372[1];
                  ++v372;
                  v371 = v383;
                }
              }

              else
              {
                v367 = v379;
              }

              v373 = *v371;
              v374 = *(v371 + 16);
              v375 = *(v371 + 48);
              v376[2] = *(v371 + 32);
              v376[3] = v375;
              *v376 = v373;
              v376[1] = v374;
            }

            while (v367 <= (v366 - 2) / 2);
            v385 = a3;
            v384 = v513;
            v386 = v513;
            if (*a3 == v513)
            {
              v386 = *(a3 - 1) + 4096;
            }

            v387 = (v386 - 64);
            v7 = v514;
            if (v386 - 64 == v371)
            {
              v406 = v515;
              v407 = v516;
              v408 = v518;
              *(v371 + 32) = v517;
              *(v371 + 48) = v408;
              *v371 = v406;
              *(v371 + 16) = v407;
            }

            else
            {
              v388 = *v387;
              v389 = *(v386 - 48);
              v390 = *(v386 - 16);
              *(v371 + 32) = *(v386 - 32);
              *(v371 + 48) = v390;
              *v371 = v388;
              *(v371 + 16) = v389;
              v391 = v371 + 64;
              if (v371 + 64 - *v372 == 4096)
              {
                v392 = v372[1];
                ++v372;
                v391 = v392;
              }

              v393 = v515;
              v394 = v516;
              v395 = v518;
              v387[2] = v517;
              v387[3] = v395;
              *v387 = v393;
              v387[1] = v394;
              if (v391 != v514)
              {
                v396 = *v372;
                v397 = (v514 - *a1) >> 6;
                v398 = ((v391 - *v372) >> 6) + 8 * (v372 - a1) - v397;
                v285 = v398 < 2;
                v399 = v398 - 2;
                if (!v285)
                {
                  v400 = v399 >> 1;
                  v401 = v514;
                  if (v399 < 2)
                  {
                    goto LABEL_514;
                  }

                  v402 = v397 + v400;
                  if (v402 < 1)
                  {
                    v401 = *(a1 - 8 * ((63 - v402) >> 6)) + ((~(63 - v402) & 0x3F) << 6);
                    if (v396 == v391)
                    {
                      goto LABEL_515;
                    }
                  }

                  else
                  {
                    v401 = *(a1 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v402 & 0x3F) << 6);
LABEL_514:
                    if (v396 == v391)
                    {
LABEL_515:
                      v391 = *(v372 - 1) + 4096;
                    }
                  }

                  v403 = (v391 - 64);
                  if (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v401 + 16), (v391 - 64), (v391 - 48), v401))
                  {
                    v404 = v403[1];
                    v519 = *v403;
                    v520 = v404;
                    v405 = v403[3];
                    v521 = v403[2];
                    v522 = v405;
                    do
                    {
                      v409 = v401;
                      v410 = *v401;
                      v411 = *(v401 + 16);
                      v412 = *(v401 + 48);
                      v403[2] = *(v401 + 32);
                      v403[3] = v412;
                      *v403 = v410;
                      v403[1] = v411;
                      if (!v400)
                      {
                        break;
                      }

                      v401 = v514;
                      if (v400 >= 3)
                      {
                        v413 = ((v400 - 1) >> 1) + ((v514 - *a1) >> 6);
                        if (v413 < 1)
                        {
                          v401 = *(a1 - 8 * ((63 - v413) >> 6)) + ((~(63 - v413) & 0x3F) << 6);
                        }

                        else
                        {
                          v401 = *(a1 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v413 & 0x3F) << 6);
                        }
                      }

                      v403 = v409;
                      v400 = (v400 - 1) >> 1;
                    }

                    while (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>((v401 + 16), &v519, &v520, v401));
                    v414 = v519;
                    v415 = v520;
                    v416 = v522;
                    v409[2] = v521;
                    v409[3] = v416;
                    *v409 = v414;
                    v409[1] = v415;
                    v385 = a3;
                    v384 = v513;
                  }
                }
              }
            }

            if (v384 == *v385)
            {
              a3 = v385 - 8;
              v384 = *(v385 - 1) + 4096;
            }

            v513 = v384 - 64;
            v285 = v366-- <= 2;
            if (v285)
            {
              return;
            }

            continue;
          }
        }
      }

      v289 = 0;
      v290 = v7;
LABEL_394:
      v292 = (2 * v289) | 1;
      v293 = v286 + v292;
      if (v293 < 1)
      {
        v297 = 63 - v293;
        v294 = (a1 - 8 * (v297 >> 6));
        v295 = *v294;
        v296 = ~v297 & 0x3FLL;
      }

      else
      {
        v294 = (a1 + 8 * (v293 >> 6));
        v295 = *v294;
        v296 = v293 & 0x3F;
      }

      v298 = (v295 + (v296 << 6));
      v299 = 2 * v289 + 2;
      if (v299 < v14 && ((v300 = v296 << 6 >> 6, v300 < 0) ? (v301 = (v294[-((62 - v300) >> 6)] + ((~(62 - v300) & 0x3F) << 6))) : (v301 = (*(v294 + (((v300 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v300 + 1) & 0x3F) << 6))), std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v298 + 8, v301, v301 + 8, v298)))
      {
        v298 += 32;
        if ((v298 - v295) == 4096)
        {
          v298 = v294[1];
        }
      }

      else
      {
        v299 = v292;
      }

      v7 = v514;
      if (!std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v298 + 8, v290, v290 + 8, v298))
      {
        v302 = *v290;
        v303 = v290[1];
        v304 = v290[3];
        v521 = v290[2];
        v522 = v304;
        v519 = v302;
        v520 = v303;
        do
        {
          v305 = v290;
          v290 = v298;
          v306 = *v298;
          v307 = *(v298 + 1);
          v308 = *(v298 + 3);
          v305[2] = *(v298 + 2);
          v305[3] = v308;
          *v305 = v306;
          v305[1] = v307;
          if (v280 < v299)
          {
            break;
          }

          v309 = (2 * v299) | 1;
          v310 = v309 + ((v514 - *a1) >> 6);
          if (v310 < 1)
          {
            v314 = 63 - v310;
            v311 = (a1 - 8 * (v314 >> 6));
            v312 = *v311;
            v313 = ~v314 & 0x3FLL;
          }

          else
          {
            v311 = (a1 + 8 * (v310 >> 6));
            v312 = *v311;
            v313 = v310 & 0x3F;
          }

          v298 = (v312 + (v313 << 6));
          v299 = 2 * v299 + 2;
          if (v299 < v14 && ((v315 = v313 << 6 >> 6, v315 < 0) ? (v316 = (v311[-((62 - v315) >> 6)] + ((~(62 - v315) & 0x3F) << 6))) : (v316 = (*(v311 + (((v315 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v315 + 1) & 0x3F) << 6))), std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v298 + 8, v316, v316 + 8, v298)))
          {
            v298 += 32;
            if ((v298 - v312) == 4096)
            {
              v298 = v311[1];
            }
          }

          else
          {
            v299 = v309;
          }
        }

        while (!std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v298 + 8, &v519, &v520, v298));
        v282 = v519;
        v283 = v520;
        v284 = v522;
        v290[2] = v521;
        v290[3] = v284;
        *v290 = v282;
        v290[1] = v283;
        v7 = v514;
      }

      goto LABEL_384;
    }

    v16 = v14 >> 1;
    v17 = v13 + (v14 >> 1);
    if (v14 < 0x81)
    {
      if (v17 < 1)
      {
        v29 = 63 - v17;
        v20 = (a1 - 8 * (v29 >> 6));
        v21 = (*v20 + ((~v29 & 0x3F) << 6));
      }

      else
      {
        v20 = (a1 + 8 * (v17 >> 6));
        v21 = (*v20 + ((v17 & 0x3F) << 6));
      }

      v30 = a5;
      v23 = a3;
      if (v10 < 2)
      {
        v31 = &a3[-8 * ((64 - v10) >> 6)];
        v32 = (*v31 + ((~(64 - v10) & 0x3F) << 6));
      }

      else
      {
        v31 = &a3[8 * ((v10 - 1) >> 6)];
        v32 = (*v31 + (((v10 - 1) & 0x3F) << 6));
      }

      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(v20, v21, a1, v7, v31, v32);
    }

    else
    {
      if (v17 < 1)
      {
        v22 = 63 - v17;
        v18 = (a1 - 8 * (v22 >> 6));
        v19 = (*v18 + ((~v22 & 0x3F) << 6));
      }

      else
      {
        v18 = (a1 + 8 * (v17 >> 6));
        v19 = (*v18 + ((v17 & 0x3F) << 6));
      }

      v23 = a3;
      if (v10 < 2)
      {
        v24 = &a3[-8 * ((64 - v10) >> 6)];
        v25 = (*v24 + ((~(64 - v10) & 0x3F) << 6));
      }

      else
      {
        v24 = &a3[8 * ((v10 - 1) >> 6)];
        v25 = (*v24 + (((v10 - 1) & 0x3F) << 6));
      }

      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, v7, v18, v19, v24, v25);
      v26 = (v7 - *a1) >> 6;
      if (v26 < 0)
      {
        v27 = (a1 - 8 * ((62 - v26) >> 6));
        v28 = (*v27 + ((~(62 - v26) & 0x3F) << 6));
      }

      else
      {
        v27 = (a1 + 8 * ((v26 + 1) >> 6));
        v28 = (*v27 + (((v26 + 1) & 0x3F) << 6));
      }

      v33 = v16 - 1;
      v34 = v26 + v16 - 1;
      if (v34 < 1)
      {
        v37 = 63 - v34;
        v35 = (a1 - 8 * (v37 >> 6));
        v36 = (*v35 + ((~v37 & 0x3F) << 6));
      }

      else
      {
        v35 = (a1 + 8 * (v34 >> 6));
        v36 = (*v35 + ((v34 & 0x3F) << 6));
      }

      v38 = (v513 - *a3) >> 6;
      if (v38 < 3)
      {
        v42 = 65 - v38;
        v40 = &a3[-8 * (v42 >> 6)];
        v41 = (*v40 + ((~v42 & 0x3F) << 6));
      }

      else
      {
        v39 = v38 - 2;
        v40 = &a3[8 * (v39 >> 6)];
        v41 = (*v40 + ((v39 & 0x3F) << 6));
      }

      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(v27, v28, v35, v36, v40, v41);
      v43 = (v7 - *a1) >> 6;
      if (v43 < -1)
      {
        v44 = (a1 - 8 * ((61 - v43) >> 6));
        v45 = (*v44 + ((~(61 - v43) & 0x3F) << 6));
      }

      else
      {
        v44 = (a1 + 8 * ((v43 + 2) >> 6));
        v45 = (*v44 + (((v43 + 2) & 0x3F) << 6));
      }

      v46 = v43 + v16 + 1;
      if (v46 < 1)
      {
        v49 = 63 - v46;
        v47 = (a1 - 8 * (v49 >> 6));
        v48 = (*v47 + ((~v49 & 0x3F) << 6));
      }

      else
      {
        v47 = (a1 + 8 * (v46 >> 6));
        v48 = (*v47 + ((v46 & 0x3F) << 6));
      }

      v50 = (v513 - *a3) >> 6;
      if (v50 < 4)
      {
        v54 = 66 - v50;
        v52 = &a3[-8 * (v54 >> 6)];
        v53 = (*v52 + ((~v54 & 0x3F) << 6));
      }

      else
      {
        v51 = v50 - 3;
        v52 = &a3[8 * (v51 >> 6)];
        v53 = (*v52 + ((v51 & 0x3F) << 6));
      }

      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(v44, v45, v47, v48, v52, v53);
      v55 = (v7 - *a1) >> 6;
      v56 = v55 + v33;
      if ((v55 + v33) < 1)
      {
        v59 = 63 - v56;
        v57 = (a1 - 8 * (v59 >> 6));
        v58 = (*v57 + ((~v59 & 0x3F) << 6));
      }

      else
      {
        v57 = (a1 + 8 * (v56 >> 6));
        v58 = (*v57 + ((v56 & 0x3F) << 6));
      }

      v60 = v55 + v16;
      if ((v55 + v16) < 1)
      {
        v63 = 63 - v60;
        v61 = (a1 - 8 * (v63 >> 6));
        v62 = (*v61 + ((~v63 & 0x3F) << 6));
      }

      else
      {
        v61 = (a1 + 8 * (v60 >> 6));
        v62 = (*v61 + ((v60 & 0x3F) << 6));
      }

      v64 = v55 + v16 + 1;
      if (v64 < 1)
      {
        v67 = 63 - v64;
        v65 = (a1 - 8 * (v67 >> 6));
        v66 = (*v65 + ((~v67 & 0x3F) << 6));
      }

      else
      {
        v65 = (a1 + 8 * (v64 >> 6));
        v66 = (*v65 + ((v64 & 0x3F) << 6));
      }

      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(v57, v58, v61, v62, v65, v66);
      v68 = v16 + ((v7 - *a1) >> 6);
      if (v68 < 1)
      {
        v69 = (*(a1 - 8 * ((63 - v68) >> 6)) + ((~(63 - v68) & 0x3F) << 6));
      }

      else
      {
        v69 = (*(a1 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v68 & 0x3F) << 6));
      }

      v30 = a5;
      v70 = *v7;
      v71 = v7[1];
      v72 = v7[3];
      v521 = v7[2];
      v522 = v72;
      v519 = v70;
      v520 = v71;
      v73 = *v69;
      v74 = v69[1];
      v75 = v69[3];
      v7[2] = v69[2];
      v7[3] = v75;
      *v7 = v73;
      v7[1] = v74;
      v76 = v520;
      *v69 = v519;
      v69[1] = v76;
      v77 = v522;
      v69[2] = v521;
      v69[3] = v77;
    }

    v78 = v30 - 1;
    if ((a6 & 1) == 0)
    {
      v79 = (v7 - *a1) >> 6;
      v80 = (v79 < 2 ? *(a1 - 8 * ((64 - v79) >> 6)) + ((~(64 - v79) & 0x3F) << 6) : *(a1 + (((v79 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v79 - 1) & 0x3F) << 6));
      if (!std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v80 + 8, v7, v7 + 8, v80))
      {
        v99 = *v7;
        v100 = v7[1];
        v101 = v7[3];
        v517 = v7[2];
        v518 = v101;
        v515 = v99;
        v516 = v100;
        v102 = *v23;
        v103 = (v513 - *v23) >> 6;
        if (v103 < 2)
        {
          v104 = &v23[-((64 - v103) >> 6)][32 * (~(64 - v103) & 0x3F)];
        }

        else
        {
          v104 = &(*(v23 + (((v103 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)))[32 * ((v103 - 1) & 0x3F)];
        }

        v105 = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(&v516, v104, v104 + 8, &v515);
        v106 = *a1;
        if (v105)
        {
          v107 = v514;
          do
          {
            v107 += 32;
            if (v107 - v106 == 4096)
            {
              v108 = *(a1 + 8);
              a1 += 8;
              v106 = v108;
              v107 = v108;
            }
          }

          while (!std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(&v516, v107, v107 + 8, &v515));
        }

        else
        {
          v107 = v514;
          do
          {
            v107 += 32;
            if (v107 - v106 == 4096)
            {
              v109 = *(a1 + 8);
              a1 += 8;
              v106 = v109;
              v107 = v109;
            }
          }

          while ((a1 < v23 || a1 == v23 && v107 < v513) && !std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(&v516, v107, v107 + 8, &v515));
        }

        a5 = v78;
        v110 = a1 == v23;
        if (a1 < v23 || (v112 = a3, v111 = v513, v110) && (v112 = a3, v111 = v513, v107 < v513))
        {
          v112 = a3;
          v113 = v513;
          do
          {
            if (v113 == v102)
            {
              v115 = *(v112 - 1);
              v112 -= 8;
              v102 = v115;
              v113 = v115 + 2048;
            }

            v111 = v113 - 32;
            v114 = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(&v516, v113 - 32, v113 - 24, &v515);
            v113 = v111;
          }

          while (v114);
        }

LABEL_108:
        if (a1 < v112 || a1 == v112 && v107 < v111)
        {
          v116 = *v107;
          v117 = *(v107 + 1);
          v118 = *(v107 + 3);
          v521 = *(v107 + 2);
          v522 = v118;
          v519 = v116;
          v520 = v117;
          v119 = *v111;
          v120 = *(v111 + 1);
          v121 = *(v111 + 3);
          *(v107 + 2) = *(v111 + 2);
          *(v107 + 3) = v121;
          *v107 = v119;
          *(v107 + 1) = v120;
          v122 = v519;
          v123 = v520;
          v124 = v522;
          *(v111 + 2) = v521;
          *(v111 + 3) = v124;
          *v111 = v122;
          *(v111 + 1) = v123;
          v106 = *a1;
          v125 = (DWORD1(v516) - 2);
          v126 = (DWORD1(v516) - 1);
          v127 = (DWORD1(v515) - 2);
          v128 = (DWORD1(v515) - 1);
          while (1)
          {
            v107 += 32;
            if (v107 - v106 == 4096)
            {
              v129 = *(a1 + 8);
              a1 += 8;
              v106 = v129;
              v107 = v129;
            }

            if (v125 > 7)
            {
              v130 = 3;
            }

            else
            {
              v130 = dword_29D2F49F8[v125];
            }

            v131 = *(v107 + 5);
            v132 = v131 - 2;
            if ((v131 - 2) > 7)
            {
              v133 = 3;
              if (v126 > 8)
              {
LABEL_119:
                v134 = 1;
                goto LABEL_122;
              }
            }

            else
            {
              v133 = dword_29D2F49F8[v132];
              if (v126 > 8)
              {
                goto LABEL_119;
              }
            }

            v134 = dword_29D2F4A18[v126];
LABEL_122:
            v135 = v131 - 1;
            if (v135 > 8)
            {
              v136 = 1;
              if (v130 < v133)
              {
                goto LABEL_166;
              }
            }

            else
            {
              v136 = dword_29D2F4A18[v135];
              if (v130 < v133)
              {
                goto LABEL_166;
              }
            }

            if (v133 >= v130)
            {
              v137 = v107[8];
              if (v516 < v137 || v137 >= v516 && (v134 < v136 || v136 >= v134 && SDWORD2(v516) < *(v107 + 6)))
              {
LABEL_166:
                v150 = *v112;
                while (1)
                {
                  if (v111 == v150)
                  {
                    v153 = *(v112 - 1);
                    v112 -= 8;
                    v150 = v153;
                    v151 = v153 + 2048;
                    if (v125 <= 7)
                    {
LABEL_169:
                      v152 = dword_29D2F49F8[v125];
                      goto LABEL_172;
                    }
                  }

                  else
                  {
                    v151 = v111;
                    if (v125 <= 7)
                    {
                      goto LABEL_169;
                    }
                  }

                  v152 = 3;
LABEL_172:
                  v154 = *(v151 - 11);
                  v155 = v154 - 2;
                  if ((v154 - 2) > 7)
                  {
                    v156 = 3;
                    if (v126 <= 8)
                    {
LABEL_176:
                      v157 = dword_29D2F4A18[v126];
                      goto LABEL_177;
                    }
                  }

                  else
                  {
                    v156 = dword_29D2F49F8[v155];
                    if (v126 <= 8)
                    {
                      goto LABEL_176;
                    }
                  }

                  v157 = 1;
LABEL_177:
                  v158 = v154 - 1;
                  if (v158 > 8)
                  {
                    v159 = 1;
                  }

                  else
                  {
                    v159 = dword_29D2F4A18[v158];
                  }

                  v111 = v151 - 32;
                  if (v152 >= v156)
                  {
                    if (v156 < v152 || (v164 = *(v151 - 24), v516 >= v164) && (v164 < v516 || v157 >= v159 && (v159 < v157 || SDWORD2(v516) >= *(v151 - 10))))
                    {
                      if (v155 > 7)
                      {
                        v160 = 3;
                        if (v125 > 7)
                        {
LABEL_184:
                          v161 = 3;
                          if (v158 > 8)
                          {
                            goto LABEL_185;
                          }

                          goto LABEL_196;
                        }
                      }

                      else
                      {
                        v160 = dword_29D2F49F8[v155];
                        if (v125 > 7)
                        {
                          goto LABEL_184;
                        }
                      }

                      v161 = dword_29D2F49F8[v125];
                      if (v158 > 8)
                      {
LABEL_185:
                        v162 = 1;
                        if (v126 > 8)
                        {
                          goto LABEL_186;
                        }

                        goto LABEL_197;
                      }

LABEL_196:
                      v162 = dword_29D2F4A18[v158];
                      if (v126 > 8)
                      {
LABEL_186:
                        v163 = 1;
                        if (v160 < v161)
                        {
                          goto LABEL_108;
                        }

                        goto LABEL_198;
                      }

LABEL_197:
                      v163 = dword_29D2F4A18[v126];
                      if (v160 < v161)
                      {
                        goto LABEL_108;
                      }

LABEL_198:
                      if (v161 >= v160)
                      {
                        v165 = *(v151 - 24);
                        if (v165 < v516 || v516 >= v165 && (v162 < v163 || v163 >= v162 && *(v151 - 10) < SDWORD2(v516)))
                        {
                          goto LABEL_108;
                        }
                      }

                      v166 = *(v151 - 15);
                      if ((v166 - 2) > 7)
                      {
                        v167 = 3;
                        if (v127 <= 7)
                        {
LABEL_208:
                          v168 = dword_29D2F49F8[v127];
                          goto LABEL_209;
                        }
                      }

                      else
                      {
                        v167 = dword_29D2F49F8[v166 - 2];
                        if (v127 <= 7)
                        {
                          goto LABEL_208;
                        }
                      }

                      v168 = 3;
LABEL_209:
                      v169 = v166 - 1;
                      if (v169 > 8)
                      {
                        v170 = 1;
                        if (v128 > 8)
                        {
                          goto LABEL_211;
                        }

LABEL_214:
                        v171 = dword_29D2F4A18[v128];
                        if (v167 >= v168)
                        {
                          goto LABEL_215;
                        }
                      }

                      else
                      {
                        v170 = dword_29D2F4A18[v169];
                        if (v128 <= 8)
                        {
                          goto LABEL_214;
                        }

LABEL_211:
                        v171 = 1;
                        if (v167 >= v168)
                        {
LABEL_215:
                          if (v168 < v167)
                          {
                            goto LABEL_108;
                          }

                          v172 = *v111;
                          if (v172 >= v515 && (v515 < v172 || v170 >= v171 && (v171 < v170 || *(v151 - 14) >= SDWORD2(v515))))
                          {
                            goto LABEL_108;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v132 > 7)
            {
              v138 = 3;
              if (v125 <= 7)
              {
                goto LABEL_139;
              }

LABEL_134:
              v139 = 3;
              if (v135 > 8)
              {
                goto LABEL_135;
              }

LABEL_140:
              v140 = dword_29D2F4A18[v135];
              if (v126 > 8)
              {
                goto LABEL_136;
              }

LABEL_141:
              v141 = dword_29D2F4A18[v126];
              if (v138 >= v139)
              {
                goto LABEL_142;
              }
            }

            else
            {
              v138 = dword_29D2F49F8[v132];
              if (v125 > 7)
              {
                goto LABEL_134;
              }

LABEL_139:
              v139 = dword_29D2F49F8[v125];
              if (v135 <= 8)
              {
                goto LABEL_140;
              }

LABEL_135:
              v140 = 1;
              if (v126 <= 8)
              {
                goto LABEL_141;
              }

LABEL_136:
              v141 = 1;
              if (v138 >= v139)
              {
LABEL_142:
                if (v139 < v138 || (v145 = v107[8], v145 >= v516) && (v516 < v145 || v140 >= v141 && (v141 < v140 || *(v107 + 6) >= SDWORD2(v516))))
                {
                  v142 = *(v107 + 1);
                  if ((v142 - 2) > 7)
                  {
                    v143 = 3;
                    if (v127 > 7)
                    {
LABEL_145:
                      v144 = 3;
                      goto LABEL_154;
                    }
                  }

                  else
                  {
                    v143 = dword_29D2F49F8[v142 - 2];
                    if (v127 > 7)
                    {
                      goto LABEL_145;
                    }
                  }

                  v144 = dword_29D2F49F8[v127];
LABEL_154:
                  v146 = v142 - 1;
                  if (v146 > 8)
                  {
                    v147 = 1;
                    if (v128 <= 8)
                    {
LABEL_159:
                      v148 = dword_29D2F4A18[v128];
                      if (v143 < v144)
                      {
                        goto LABEL_166;
                      }

                      goto LABEL_160;
                    }
                  }

                  else
                  {
                    v147 = dword_29D2F4A18[v146];
                    if (v128 <= 8)
                    {
                      goto LABEL_159;
                    }
                  }

                  v148 = 1;
                  if (v143 < v144)
                  {
                    goto LABEL_166;
                  }

LABEL_160:
                  if (v144 >= v143)
                  {
                    v149 = *v107;
                    if (v149 < v515 || v515 >= v149 && (v147 < v148 || v148 >= v147 && *(v107 + 2) < SDWORD2(v515)))
                    {
                      goto LABEL_166;
                    }
                  }
                }
              }
            }
          }
        }

        v173 = (v107 - v106) >> 6;
        if (v173 < 2)
        {
          v174 = (*(a1 - 8 * ((64 - v173) >> 6)) + ((~(64 - v173) & 0x3F) << 6));
          if (v174 != v514)
          {
            goto LABEL_226;
          }
        }

        else
        {
          v174 = (*(a1 + (((v173 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v173 - 1) & 0x3F) << 6));
          if (v174 == v514)
          {
            goto LABEL_227;
          }

LABEL_226:
          v175 = *v174;
          v176 = v174[1];
          v177 = v174[3];
          v514[2] = v174[2];
          v514[3] = v177;
          *v514 = v175;
          v514[1] = v176;
        }

LABEL_227:
        a6 = 0;
        v178 = v516;
        *v174 = v515;
        v174[1] = v178;
        v179 = v518;
        v174[2] = v517;
        v174[3] = v179;
        goto LABEL_5;
      }
    }

    v81 = *v7;
    v82 = v7[1];
    v83 = v7[3];
    v517 = v7[2];
    v518 = v83;
    v515 = v81;
    v516 = v82;
    v84 = v7;
    v85 = *a1;
    v86 = a1;
    do
    {
      v84 += 32;
      if (v84 - v85 == 4096)
      {
        v87 = v86[1];
        ++v86;
        v85 = v87;
        v84 = v87;
      }
    }

    while (std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v84 + 8, &v515, &v516, v84));
    v88 = (v84 - v85) >> 6;
    v511 = v78;
    if (v88 < 2)
    {
      v89 = &v86[-((64 - v88) >> 6)][32 * (~(64 - v88) & 0x3F)];
    }

    else
    {
      v89 = &(*(v86 + (((v88 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)))[32 * ((v88 - 1) & 0x3F)];
    }

    v91 = a3;
    v90 = v513;
    if (v89 == v514)
    {
      while (1)
      {
        if (v86 >= v91)
        {
          if (v86 != v91)
          {
            v94 = v90;
            goto LABEL_228;
          }

          if (v84 >= v90)
          {
            break;
          }
        }

        if (v90 == *v91)
        {
          v98 = *(v91 - 1);
          v91 -= 8;
          v90 = (v98 + 4096);
        }

        v94 = v90 - 32;
        v97 = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v90 - 24, &v515, &v516, v90 - 32);
        v90 = v94;
        if (v97)
        {
          goto LABEL_228;
        }
      }

      v94 = v90;
      v180 = v86 == v91;
      if (v86 >= v91)
      {
LABEL_231:
        v181 = !v180 || v84 >= v94;
        goto LABEL_237;
      }
    }

    else
    {
      v91 = a3;
      v92 = v513;
      v93 = *a3;
      do
      {
        if (v92 == v93)
        {
          v96 = *(v91 - 1);
          v91 -= 8;
          v93 = v96;
          v92 = v96 + 2048;
        }

        v94 = v92 - 32;
        v95 = std::__tuple_less<2ul>::operator()[abi:nn200100]<std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>,std::tuple<AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &,AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::Register &>>(v92 - 24, &v515, &v516, v92 - 32);
        v92 = v94;
      }

      while (!v95);
LABEL_228:
      v180 = v86 == v91;
      if (v86 >= v91)
      {
        goto LABEL_231;
      }
    }

    v181 = 0;
LABEL_237:
    if (v86 < v91 || v86 == v91 && v84 < v94)
    {
      v183 = *v84;
      v184 = *(v84 + 1);
      v185 = *(v84 + 3);
      v521 = *(v84 + 2);
      v522 = v185;
      v519 = v183;
      v520 = v184;
      v186 = *v94;
      v187 = *(v94 + 1);
      v188 = *(v94 + 3);
      *(v84 + 2) = *(v94 + 2);
      *(v84 + 3) = v188;
      *v84 = v186;
      *(v84 + 1) = v187;
      v189 = v519;
      v190 = v520;
      v191 = v522;
      *(v94 + 2) = v521;
      *(v94 + 3) = v191;
      *v94 = v189;
      *(v94 + 1) = v190;
      v85 = *v86;
      v192 = (DWORD1(v516) - 2);
      v193 = (DWORD1(v516) - 1);
      v194 = (DWORD1(v515) - 2);
      v195 = (DWORD1(v515) - 1);
      while (1)
      {
        v84 += 32;
        if (v84 - v85 == 4096)
        {
          v196 = v86[1];
          ++v86;
          v85 = v196;
          v84 = v196;
        }

        v197 = *(v84 + 5);
        v198 = v197 - 2;
        if ((v197 - 2) > 7)
        {
          v199 = 3;
          if (v192 <= 7)
          {
LABEL_247:
            v200 = dword_29D2F49F8[v192];
            goto LABEL_248;
          }
        }

        else
        {
          v199 = dword_29D2F49F8[v198];
          if (v192 <= 7)
          {
            goto LABEL_247;
          }
        }

        v200 = 3;
LABEL_248:
        v201 = v197 - 1;
        if (v201 > 8)
        {
          v202 = 1;
          if (v193 > 8)
          {
            goto LABEL_250;
          }

LABEL_253:
          v203 = dword_29D2F4A18[v193];
          if (v199 >= v200)
          {
            goto LABEL_254;
          }
        }

        else
        {
          v202 = dword_29D2F4A18[v201];
          if (v193 <= 8)
          {
            goto LABEL_253;
          }

LABEL_250:
          v203 = 1;
          if (v199 >= v200)
          {
LABEL_254:
            if (v200 < v199 || (v208 = v84[8], v208 >= v516) && (v516 < v208 || v202 >= v203 && (v203 < v202 || *(v84 + 6) >= SDWORD2(v516))))
            {
              if (v192 > 7)
              {
                v204 = 3;
                if (v198 > 7)
                {
LABEL_257:
                  v205 = 3;
                  if (v193 > 8)
                  {
                    goto LABEL_258;
                  }

                  goto LABEL_269;
                }
              }

              else
              {
                v204 = dword_29D2F49F8[v192];
                if (v198 > 7)
                {
                  goto LABEL_257;
                }
              }

              v205 = dword_29D2F49F8[v198];
              if (v193 > 8)
              {
LABEL_258:
                v206 = 1;
                if (v201 > 8)
                {
                  goto LABEL_259;
                }

                goto LABEL_270;
              }

LABEL_269:
              v206 = dword_29D2F4A18[v193];
              if (v201 > 8)
              {
LABEL_259:
                v207 = 1;
                if (v204 < v205)
                {
                  goto LABEL_295;
                }

                goto LABEL_271;
              }

LABEL_270:
              v207 = dword_29D2F4A18[v201];
              if (v204 < v205)
              {
                goto LABEL_295;
              }

LABEL_271:
              if (v205 >= v204)
              {
                v209 = v84[8];
                if (v516 < v209 || v209 >= v516 && (v206 < v207 || v207 >= v206 && SDWORD2(v516) < *(v84 + 6)))
                {
LABEL_295:
                  v217 = *v91;
                  while (1)
                  {
                    if (v94 == v217)
                    {
                      v219 = *(v91 - 1);
                      v91 -= 8;
                      v217 = v219;
                      v218 = v219 + 2048;
                    }

                    else
                    {
                      v218 = v94;
                    }

                    v220 = *(v218 - 11);
                    v221 = v220 - 2;
                    if ((v220 - 2) > 7)
                    {
                      v222 = 3;
                      if (v192 > 7)
                      {
LABEL_301:
                        v223 = 3;
                        goto LABEL_304;
                      }
                    }

                    else
                    {
                      v222 = dword_29D2F49F8[v221];
                      if (v192 > 7)
                      {
                        goto LABEL_301;
                      }
                    }

                    v223 = dword_29D2F49F8[v192];
LABEL_304:
                    v224 = v220 - 1;
                    if (v224 > 8)
                    {
                      v225 = 1;
                      if (v193 > 8)
                      {
LABEL_306:
                        v226 = 1;
                        goto LABEL_309;
                      }
                    }

                    else
                    {
                      v225 = dword_29D2F4A18[v224];
                      if (v193 > 8)
                      {
                        goto LABEL_306;
                      }
                    }

                    v226 = dword_29D2F4A18[v193];
LABEL_309:
                    v94 = v218 - 32;
                    if (v222 < v223)
                    {
                      goto LABEL_237;
                    }

                    if (v223 >= v222)
                    {
                      v227 = *(v218 - 24);
                      if (v227 < v516 || v516 >= v227 && (v225 < v226 || v226 >= v225 && *(v218 - 10) < SDWORD2(v516)))
                      {
                        goto LABEL_237;
                      }
                    }

                    if (v192 > 7)
                    {
                      v228 = 3;
                      if (v221 <= 7)
                      {
                        goto LABEL_323;
                      }

LABEL_318:
                      v229 = 3;
                      if (v193 > 8)
                      {
                        goto LABEL_319;
                      }

LABEL_324:
                      v230 = dword_29D2F4A18[v193];
                      if (v224 > 8)
                      {
                        goto LABEL_320;
                      }

LABEL_325:
                      v231 = dword_29D2F4A18[v224];
                      if (v228 >= v229)
                      {
                        goto LABEL_326;
                      }
                    }

                    else
                    {
                      v228 = dword_29D2F49F8[v192];
                      if (v221 > 7)
                      {
                        goto LABEL_318;
                      }

LABEL_323:
                      v229 = dword_29D2F49F8[v221];
                      if (v193 <= 8)
                      {
                        goto LABEL_324;
                      }

LABEL_319:
                      v230 = 1;
                      if (v224 <= 8)
                      {
                        goto LABEL_325;
                      }

LABEL_320:
                      v231 = 1;
                      if (v228 >= v229)
                      {
LABEL_326:
                        if (v229 < v228 || (v233 = *(v218 - 24), v516 >= v233) && (v233 < v516 || v230 >= v231 && (v231 < v230 || SDWORD2(v516) >= *(v218 - 10))))
                        {
                          if (v194 > 7)
                          {
                            v232 = 3;
                          }

                          else
                          {
                            v232 = dword_29D2F49F8[v194];
                          }

                          v234 = *(v218 - 15);
                          if ((v234 - 2) > 7)
                          {
                            v235 = 3;
                            if (v195 <= 8)
                            {
LABEL_340:
                              v236 = dword_29D2F4A18[v195];
                              goto LABEL_341;
                            }
                          }

                          else
                          {
                            v235 = dword_29D2F49F8[v234 - 2];
                            if (v195 <= 8)
                            {
                              goto LABEL_340;
                            }
                          }

                          v236 = 1;
LABEL_341:
                          v237 = v234 - 1;
                          if (v237 > 8)
                          {
                            v238 = 1;
                            if (v232 < v235)
                            {
                              goto LABEL_237;
                            }
                          }

                          else
                          {
                            v238 = dword_29D2F4A18[v237];
                            if (v232 < v235)
                            {
                              goto LABEL_237;
                            }
                          }

                          if (v235 >= v232)
                          {
                            v239 = *v94;
                            if (v515 < v239 || v239 >= v515 && (v236 < v238 || v238 >= v236 && SDWORD2(v515) < *(v218 - 14)))
                            {
                              goto LABEL_237;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (v194 > 7)
              {
                v210 = 3;
              }

              else
              {
                v210 = dword_29D2F49F8[v194];
              }

              v211 = *(v84 + 1);
              if ((v211 - 2) > 7)
              {
                v212 = 3;
                if (v195 <= 8)
                {
LABEL_284:
                  v213 = dword_29D2F4A18[v195];
                  goto LABEL_285;
                }
              }

              else
              {
                v212 = dword_29D2F49F8[v211 - 2];
                if (v195 <= 8)
                {
                  goto LABEL_284;
                }
              }

              v213 = 1;
LABEL_285:
              v214 = v211 - 1;
              if (v214 > 8)
              {
                v215 = 1;
                if (v210 >= v212)
                {
                  goto LABEL_289;
                }
              }

              else
              {
                v215 = dword_29D2F4A18[v214];
                if (v210 >= v212)
                {
LABEL_289:
                  if (v212 < v210)
                  {
                    goto LABEL_295;
                  }

                  v216 = *v84;
                  if (v515 >= v216 && (v216 < v515 || v213 >= v215 && (v215 < v213 || SDWORD2(v515) >= *(v84 + 2))))
                  {
                    goto LABEL_295;
                  }
                }
              }
            }
          }
        }
      }
    }

    v240 = (v84 - v85) >> 6;
    if (v240 < 2)
    {
      v244 = 64 - v240;
      v242 = &v86[-(v244 >> 6)];
      v243 = (*v242 + ((~v244 & 0x3F) << 6));
    }

    else
    {
      v241 = v240 - 1;
      v242 = &v86[v241 >> 6];
      v243 = (*v242 + ((v241 & 0x3F) << 6));
    }

    a5 = v511;
    if (v243 != v514)
    {
      v245 = *v243;
      v246 = v243[1];
      v247 = v243[3];
      v514[2] = v243[2];
      v514[3] = v247;
      *v514 = v245;
      v514[1] = v246;
    }

    v248 = v516;
    *v243 = v515;
    v243[1] = v248;
    v249 = v518;
    v243[2] = v517;
    v243[3] = v249;
    if (!v181)
    {
      goto LABEL_365;
    }

    EncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEEEEbT1_SL_SB = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEEEEbT1_SL_SB_(a1, v514, v242, v243);
    v251 = (v243 - *v242) >> 6;
    if (v251 < 0)
    {
      v255 = 62 - v251;
      v253 = &v242[-8 * (v255 >> 6)];
      v254 = (*v253 + ((~v255 & 0x3F) << 6));
    }

    else
    {
      v252 = v251 + 1;
      v253 = &v242[8 * (v252 >> 6)];
      v254 = (*v253 + ((v252 & 0x3F) << 6));
    }

    if (!_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEEEEbT1_SL_SB_(v253, v254, a3, v513))
    {
      if (!EncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEEEEbT1_SL_SB)
      {
LABEL_365:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELb0EEEvT1_SL_SB_NS_15iterator_traitsISL_E15difference_typeEb(a1, v514, v242, v243, v511, a6 & 1);
        a6 = 0;
      }

      v107 = (v243 + 4);
      if ((v243 - *v242 + 64) == 4096)
      {
        v256 = *(v242 + 1);
        v242 += 8;
        v107 = v256;
      }

      a1 = v242;
      goto LABEL_5;
    }

    v107 = v514;
    a3 = v242;
    v513 = v243;
    if (EncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEEEEbT1_SL_SB)
    {
      return;
    }

LABEL_5:
    v7 = v107;
    if (v513 == v107)
    {
      return;
    }
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    v420 = 62 - v13;
    v258 = (a1 - 8 * (v420 >> 6));
    v259 = (*v258 + ((~v420 & 0x3F) << 6));
  }

  else
  {
    v257 = v13 + 1;
    v258 = (a1 + 8 * (v257 >> 6));
    v259 = (*v258 + ((v257 & 0x3F) << 6));
  }

  v421 = a3;
  v422 = v513;
  if (v513 == v9)
  {
    v421 = (a3 - 8);
    v422 = *(a3 - 1) + 4096;
  }

  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN3AGX23ESLStateLoadEncoderGen2INS2_6HAL3007ClassesENS4_8EncodersEE10EslBuilder11finishRoundEvEUlRT_RT0_E_NS_16__deque_iteratorINS8_12InflightLoadEPSG_RSG_PSH_lLl64EEELi0EEEbT1_SL_SL_SB_(a1, v7, v258, v259, v421, (v422 - 64));
}

unsigned __int8 *AGXIotoInstruction_LDDEV::emit(AGXIotoInstruction_LDDEV *this, unsigned __int8 *a2)
{
  v220 = *MEMORY[0x29EDCA608];
  v3 = *(this + 42);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v20 = *(this + 9);
        v204 = *(this + 8);
        v205[0] = v20;
        *&v205[1] = *(this + 20);
        v21 = *(this + 5);
        v201[0] = *(this + 4);
        v201[1] = v21;
        v22 = *(this + 7);
        v202 = *(this + 6);
        v203 = v22;
        v23 = *(this + 1);
        v198[0] = *this;
        v198[1] = v23;
        v24 = *(this + 3);
        v199 = *(this + 2);
        v200 = v24;
        return AGXIotoInstruction_LDDEV_4::emit(v198, a2);
      case 4:
        v36 = *(this + 9);
        v204 = *(this + 8);
        v205[0] = v36;
        *&v205[1] = *(this + 20);
        v37 = *(this + 5);
        v201[0] = *(this + 4);
        v201[1] = v37;
        v38 = *(this + 7);
        v202 = *(this + 6);
        v203 = v38;
        v39 = *(this + 1);
        v198[0] = *this;
        v198[1] = v39;
        v40 = *(this + 3);
        v199 = *(this + 2);
        v200 = v40;
        return AGXIotoInstruction_LDDEV_2::emit(v198, a2);
      case 5:
        v10 = *(this + 9);
        v204 = *(this + 8);
        v205[0] = v10;
        *&v205[1] = *(this + 20);
        v11 = *(this + 5);
        v201[0] = *(this + 4);
        v201[1] = v11;
        v12 = *(this + 7);
        v202 = *(this + 6);
        v203 = v12;
        v13 = *(this + 1);
        v198[0] = *this;
        v198[1] = v13;
        v14 = *(this + 3);
        v199 = *(this + 2);
        v200 = v14;
        return AGXIotoInstruction_LDDEV_5::emit(v198, a2);
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v15 = *(this + 9);
        v204 = *(this + 8);
        v205[0] = v15;
        *&v205[1] = *(this + 20);
        v16 = *(this + 5);
        v201[0] = *(this + 4);
        v201[1] = v16;
        v17 = *(this + 7);
        v202 = *(this + 6);
        v203 = v17;
        v18 = *(this + 1);
        v198[0] = *this;
        v198[1] = v18;
        v19 = *(this + 3);
        v199 = *(this + 2);
        v200 = v19;
        return AGXIotoInstruction_LDDEV_0::emit(v198, a2);
      case 1:
        v31 = *(this + 9);
        v204 = *(this + 8);
        v205[0] = v31;
        *&v205[1] = *(this + 20);
        v32 = *(this + 5);
        v201[0] = *(this + 4);
        v201[1] = v32;
        v33 = *(this + 7);
        v202 = *(this + 6);
        v203 = v33;
        v34 = *(this + 1);
        v198[0] = *this;
        v198[1] = v34;
        v35 = *(this + 3);
        v199 = *(this + 2);
        v200 = v35;
        return AGXIotoInstruction_LDDEV_1::emit(v198, a2);
      case 2:
        v4 = *(this + 9);
        v204 = *(this + 8);
        v205[0] = v4;
        *&v205[1] = *(this + 20);
        v5 = *(this + 5);
        v201[0] = *(this + 4);
        v201[1] = v5;
        v6 = *(this + 7);
        v202 = *(this + 6);
        v203 = v6;
        v7 = *(this + 1);
        v198[0] = *this;
        v198[1] = v7;
        v8 = *(this + 3);
        v199 = *(this + 2);
        v200 = v8;
        return AGXIotoInstruction_LDDEV_3::emit(v198, a2);
    }
  }

  v26 = *(this + 9);
  v214 = *(this + 8);
  v215 = v26;
  v216 = *(this + 20);
  v27 = *(this + 5);
  v210 = *(this + 4);
  v211 = v27;
  v28 = *(this + 7);
  v212 = *(this + 6);
  v213 = v28;
  v29 = *(this + 1);
  v206 = *this;
  v207 = v29;
  v30 = *(this + 3);
  v208 = *(this + 2);
  v209 = v30;
  AGXIotoInstruction_LDDEV_0::emit(&v206, v217);
  if (!(*&v217[6] & 0x8004 | v217[4] & 3 | (2 * *&v217[6]) & 4) && (v217[2] & 7) == 3 && (~*v217 & 7) == 0)
  {
    AGXIotoInstruction_LDDEV_0::AGXIotoInstruction_LDDEV_0(v198, v217);
    if (operator==(v198, &v206))
    {
      *a2 = *v217;
      return a2 + 8;
    }
  }

  v41 = *(this + 9);
  v214 = *(this + 8);
  v215 = v41;
  v216 = *(this + 20);
  v42 = *(this + 5);
  v210 = *(this + 4);
  v211 = v42;
  v43 = *(this + 7);
  v212 = *(this + 6);
  v213 = v43;
  v44 = *(this + 1);
  v206 = *this;
  v207 = v44;
  v45 = *(this + 3);
  v208 = *(this + 2);
  v209 = v45;
  AGXIotoInstruction_LDDEV_1::emit(&v206, v217);
  if (!(v217[4] & 3 | (4 * ((*&v217[6] >> 1) & 1))) && (*&v217[6] & 0x8004) == 0x8000)
  {
    v51 = v218;
    if ((v218 & 1) == 0 && (v217[2] & 7) == 3 && (~*v217 & 7) == 0)
    {
      v202 = 0u;
      *(&v203 + 1) = 0x800000000;
      v204 = 0u;
      memset(v205, 0, 24);
      memset(v201, 0, sizeof(v201));
      v199 = 0u;
      v200 = 0u;
      memset(v198, 0, sizeof(v198));
      DWORD1(v200) = 3;
      HIDWORD(v200) = 8;
      HIDWORD(v198[1]) = 104;
      WORD4(v202) = 15;
      v67 = v218 >> 10;
      *&v203 = 0x100000001;
      WORD2(v202) = (*&v217[6] >> 5);
      BYTE12(v201[1]) = v67 & 2;
      switch((v218 >> 5) & 0x1B)
      {
        case 1:
          *(&v198[0] + 1) = 0;
          *&v198[1] = 0;
          DWORD1(v198[0]) = 2;
          break;
        case 2:
          v69 = xmmword_29D2F1B10;
          goto LABEL_63;
        case 3:
          v69 = xmmword_29D2F1B30;
          goto LABEL_63;
        case 4:
        case 5:
        case 6:
        case 7:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
LABEL_601:
          __break(1u);
          JUMPOUT(0x29CD88BB4);
        case 8:
          v69 = xmmword_29D2F1AE0;
          goto LABEL_63;
        case 9:
          v69 = xmmword_29D2F1AD0;
          goto LABEL_63;
        case 0xA:
          v69 = xmmword_29D2F1AC0;
          goto LABEL_63;
        case 0xB:
          v69 = xmmword_29D2F1AB0;
          goto LABEL_63;
        case 0x10:
          v69 = xmmword_29D2F1A60;
          goto LABEL_63;
        case 0x11:
          v69 = xmmword_29D2F1A50;
          goto LABEL_63;
        case 0x12:
          v69 = xmmword_29D2F1A40;
          goto LABEL_63;
        case 0x13:
          v69 = xmmword_29D2F1A30;
          goto LABEL_63;
        case 0x18:
          v69 = xmmword_29D2F19E0;
          goto LABEL_63;
        case 0x19:
          v69 = xmmword_29D2F19D0;
          goto LABEL_63;
        case 0x1A:
          v69 = xmmword_29D2F19C0;
          goto LABEL_63;
        case 0x1B:
          v69 = xmmword_29D2F17E0;
LABEL_63:
          *(v198 + 4) = v69;
          break;
        default:
          memset(v198 + 4, 0, 20);
          break;
      }

      BYTE8(v198[1]) = byte_29D2F4888[v67 & 0x38 | (*&v217[4] >> 13)];
      v70 = (v218 >> 5) & 4 | (*&v217[6] >> 13) & 3;
      if (v70 < 5)
      {
        LODWORD(v202) = dword_29D2F49E4[v70];
      }

      v71 = *&v217[4] >> 5;
      switch((4 * v218) & 8 | (*&v217[4] >> 9) & 4 | v71 & 3)
      {
        case 1:
          v72 = 2;
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          goto LABEL_83;
        case 2:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 4;
          goto LABEL_83;
        case 3:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 8;
          goto LABEL_83;
        case 4:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 9;
          goto LABEL_83;
        case 5:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 3;
          goto LABEL_83;
        case 6:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 7;
          goto LABEL_83;
        case 7:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 15;
          goto LABEL_83;
        case 8:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 5;
          goto LABEL_83;
        case 9:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 6;
          goto LABEL_83;
        case 0xA:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 10;
          goto LABEL_83;
        case 0xB:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 12;
          goto LABEL_83;
        case 0xC:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 13;
          goto LABEL_83;
        case 0xD:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 11;
          goto LABEL_83;
        case 0xE:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 14;
          goto LABEL_83;
        case 0xF:
          *(v205 + 12) = 8;
          BYTE8(v205[0]) = 0;
          LODWORD(v205[0]) = 0;
          BYTE4(v199) = 0;
          v73 = *v217 >> 3;
          goto LABEL_96;
        default:
          LODWORD(v205[0]) = 2;
          LODWORD(v205[1]) = 0;
          v72 = 1;
LABEL_83:
          BYTE4(v199) = v72;
          v73 = *v217 >> 3;
          WORD4(v204) = (*&v217[2] >> 1) & 0x60 | (v217[0] >> 3) & 0xFE | (*&v217[4] >> 2) & 1 | v71 & 0x80;
          BYTE8(v205[0]) = (v217[2] & 0x20) != 0;
          v74 = (*&v217[6] >> 2) & 4 | (*&v217[4] >> 3) & 3;
          if (v74 > 3)
          {
            if (v74 > 5)
            {
              if (v74 != 6)
              {
                v74 = 7;
              }
            }

            else if (v74 != 4)
            {
              v74 = 5;
            }
          }

          else if (v74 > 1)
          {
            if (v74 != 2)
            {
              v74 = 3;
            }
          }

          else
          {
            if (!v74)
            {
              HIDWORD(v205[0]) = 0;
              goto LABEL_96;
            }

            v74 = 1;
          }

          HIDWORD(v205[0]) = v74;
LABEL_96:
          DWORD1(v205[0]) = dword_29D2F27C0[v73 & 1 | (2 * ((v218 >> 10) & 1))];
          v75 = (*&v217[4] >> 7) & 3;
          if (v75 > 1)
          {
            v77 = v217[1];
            if (v75 == 2)
            {
              LOBYTE(v201[0]) = 0;
              LODWORD(v200) = 1;
              BYTE8(v200) = 0;
              v76 = v217[1] | (((*&v217[2] >> 3) & 1) << 9);
              goto LABEL_101;
            }

            LOBYTE(v201[0]) = 1;
            LODWORD(v200) = 2;
          }

          else
          {
            if (!v75)
            {
              LOBYTE(v201[0]) = 0;
              LODWORD(v200) = 3;
              BYTE8(v200) = 0;
              LOWORD(v76) = v217[1];
LABEL_101:
              WORD4(v199) = v76 & 0xFEFF | (((v218 & 4) != 0) << 8);
              goto LABEL_105;
            }

            LOBYTE(v201[0]) = 0;
            LODWORD(v200) = 2;
            v77 = v217[1];
          }

          WORD4(v199) = v77 & 0xFEFF | (((v218 & 4) != 0) << 8);
          BYTE8(v200) = (v217[2] & 8) != 0;
LABEL_105:
          v78 = (*&v217[4] >> 9) & 3;
          if (v78 > 1)
          {
            if (v78 == 2)
            {
              BYTE12(v201[1]) = (v218 >> 10) & 2;
              BYTE4(v201[1]) = 0;
              *(v201 + 12) = 0x100000001;
              DWORD2(v201[1]) = 8;
              WORD2(v201[0]) = (32 * *&v217[2]) & 0x200 | v217[3] & 0xFE | v217[6] & 1 | (((v218 & 0x10) != 0) << 8);
              goto LABEL_117;
            }

            BYTE12(v201[1]) = (v218 >> 10) & 2 | 1;
            HIDWORD(v201[0]) = 2;
            DWORD2(v201[1]) = 8;
            WORD2(v201[0]) = v217[6] & 1 | (2 * (*&v217[2] >> 9)) & 0xFEFF | (((v218 & 0x10) != 0) << 8);
            BYTE4(v201[1]) = (v217[2] & 0x10) != 0;
            if ((*&v217[2] & 0x100) == 0)
            {
              LODWORD(v201[1]) = 2;
              goto LABEL_117;
            }
          }

          else if (v78)
          {
            BYTE12(v201[1]) = (v218 >> 10) & 2;
            HIDWORD(v201[0]) = 2;
            DWORD2(v201[1]) = 8;
            WORD2(v201[0]) = v217[6] & 1 | (2 * (*&v217[2] >> 9)) & 0xFEFF | (((v218 >> 4) & 1) << 8);
            BYTE4(v201[1]) = (v217[2] & 0x10) != 0;
            if ((*&v217[2] & 0x100) == 0)
            {
              LODWORD(v201[1]) = 2;
              goto LABEL_117;
            }
          }

          else
          {
            BYTE12(v201[1]) = (v218 >> 10) & 2;
            HIDWORD(v201[0]) = 3;
            BYTE4(v201[1]) = 0;
            DWORD2(v201[1]) = 8;
            WORD2(v201[0]) = v217[6] & 1 | (2 * (*&v217[2] >> 9)) & 0xFEFF | (((v218 >> 4) & 1) << 8);
            if ((*&v217[2] & 0x100) == 0)
            {
              v79 = 2;
              goto LABEL_116;
            }
          }

          v79 = 1;
LABEL_116:
          LODWORD(v201[1]) = v79;
LABEL_117:
          v80 = (v218 >> 2) & 2 | (*&v217[6] >> 3) & 1 | v67 & 4;
          if (v80 != 7 && ((0x5Fu >> ((v218 >> 2) & 2 | ((v217[6] & 8) != 0) | v67 & 4)) & 1) != 0)
          {
            DWORD1(v205[1]) = dword_29D2F49C8[v80];
          }

          if (operator==(v198, &v206))
          {
            goto LABEL_121;
          }

          break;
      }
    }
  }

  v46 = *(this + 9);
  v214 = *(this + 8);
  v215 = v46;
  v216 = *(this + 20);
  v47 = *(this + 5);
  v210 = *(this + 4);
  v211 = v47;
  v48 = *(this + 7);
  v212 = *(this + 6);
  v213 = v48;
  v49 = *(this + 1);
  v206 = *this;
  v207 = v49;
  v50 = *(this + 3);
  v208 = *(this + 2);
  v209 = v50;
  AGXIotoInstruction_LDDEV_3::emit(&v206, v217);
  v51 = v218;
  if (!(v218 & 0x8004 | v217[6] & 3 | (2 * v218) & 4) && (~*&v217[2] & 7) == 0 && (~*v217 & 7) == 0)
  {
    AGXIotoInstruction_LDDEV_3::AGXIotoInstruction_LDDEV_3(v198, v217);
    if (operator==(v198, &v206))
    {
LABEL_121:
      *a2 = *v217;
      *(a2 + 4) = v51;
      return a2 + 10;
    }
  }

  v52 = *(this + 9);
  v214 = *(this + 8);
  v215 = v52;
  v216 = *(this + 20);
  v53 = *(this + 5);
  v210 = *(this + 4);
  v211 = v53;
  v54 = *(this + 7);
  v212 = *(this + 6);
  v213 = v54;
  v55 = *(this + 1);
  v206 = *this;
  v207 = v55;
  v56 = *(this + 3);
  v208 = *(this + 2);
  v209 = v56;
  AGXIotoInstruction_LDDEV_4::emit(&v206, v217);
  if (v217[6] & 3 | (4 * ((v218 >> 1) & 1)) || (v218 & 0x8004) != 0x8000 || (v218 & 0x10000) != 0 || (~*&v217[2] & 7) != 0 || (~*v217 & 7) != 0)
  {
LABEL_25:
    v57 = *(this + 9);
    v214 = *(this + 8);
    v215 = v57;
    v216 = *(this + 20);
    v58 = *(this + 5);
    v210 = *(this + 4);
    v211 = v58;
    v59 = *(this + 7);
    v212 = *(this + 6);
    v213 = v59;
    v60 = *(this + 1);
    v206 = *this;
    v207 = v60;
    v61 = *(this + 3);
    v208 = *(this + 2);
    v209 = v61;
    AGXIotoInstruction_LDDEV_2::emit(&v206, v217);
    if (v217[4] & 3 | (4 * ((*&v217[6] >> 1) & 1)) || (*&v217[6] & 0x8004) != 0x8000 || (v218 & 1) == 0 || (v217[2] & 7) != 3 || (~*v217 & 7) != 0)
    {
LABEL_26:
      v62 = *(this + 9);
      v204 = *(this + 8);
      v205[0] = v62;
      *&v205[1] = *(this + 20);
      v63 = *(this + 5);
      v201[0] = *(this + 4);
      v201[1] = v63;
      v64 = *(this + 7);
      v202 = *(this + 6);
      v203 = v64;
      v65 = *(this + 1);
      v198[0] = *this;
      v198[1] = v65;
      v66 = *(this + 3);
      v199 = *(this + 2);
      v200 = v66;
      AGXIotoInstruction_LDDEV_5::try_encode(&v206, v198);
      if ((v207 & 1) == 0)
      {
        return 0;
      }

      *a2 = v206;
      return a2 + 16;
    }

    v200 = 0u;
    v202 = 0u;
    v203 = 0u;
    memset(v198, 0, sizeof(v198));
    HIDWORD(v203) = 8;
    DWORD1(v200) = 3;
    HIDWORD(v200) = 8;
    HIDWORD(v198[1]) = 104;
    WORD4(v202) = 15;
    WORD2(v202) = (HIBYTE(v219) << 8) | (*&v217[6] >> 5);
    LOBYTE(v198[0]) = BYTE2(v218) & 1;
    v204 = 0u;
    memset(v205, 0, 24);
    memset(v201, 0, sizeof(v201));
    v199 = 0u;
    *&v203 = 0x100000001;
    BYTE12(v201[1]) = (v218 >> 10) & 2;
    switch((v218 >> 5) & 0x1B | (HIWORD(v218) >> 5) & 4 | (HIWORD(v218) >> 4) & 0x80 | (HIWORD(v218) >> 7) & 0x60)
    {
      case 0:
        memset(v198 + 4, 0, 20);
        break;
      case 1:
        *(&v198[0] + 1) = 0;
        *&v198[1] = 0;
        DWORD1(v198[0]) = 2;
        break;
      case 2:
        goto LABEL_278;
      case 3:
        goto LABEL_540;
      case 4:
        *(&v198[0] + 1) = 0;
        *&v198[1] = 0;
        DWORD1(v198[0]) = 1;
        break;
      case 5:
        goto LABEL_372;
      case 6:
        goto LABEL_482;
      case 7:
        goto LABEL_502;
      case 8:
        goto LABEL_462;
      case 9:
        goto LABEL_268;
      case 0xA:
        goto LABEL_256;
      case 0xB:
        goto LABEL_338;
      case 0xC:
        goto LABEL_499;
      case 0xD:
        goto LABEL_293;
      case 0xE:
        goto LABEL_263;
      case 0xF:
        goto LABEL_524;
      case 0x10:
        goto LABEL_455;
      case 0x11:
        goto LABEL_399;
      case 0x12:
        goto LABEL_379;
      case 0x13:
        goto LABEL_476;
      case 0x14:
        goto LABEL_521;
      case 0x15:
        goto LABEL_537;
      case 0x16:
        goto LABEL_305;
      case 0x17:
        goto LABEL_429;
      case 0x18:
        goto LABEL_275;
      case 0x19:
        goto LABEL_465;
      case 0x1A:
        goto LABEL_452;
      case 0x1B:
        goto LABEL_512;
      case 0x1C:
        goto LABEL_530;
      case 0x1D:
        goto LABEL_488;
      case 0x1E:
        goto LABEL_249;
      case 0x1F:
        goto LABEL_315;
      case 0x20:
        goto LABEL_308;
      case 0x21:
        goto LABEL_405;
      case 0x22:
        goto LABEL_472;
      case 0x23:
        goto LABEL_402;
      case 0x24:
        goto LABEL_344;
      case 0x25:
        goto LABEL_468;
      case 0x26:
        goto LABEL_432;
      case 0x27:
        goto LABEL_369;
      case 0x28:
        *&v115 = 0x100000001;
        *(&v115 + 1) = 0x100000001;
        goto LABEL_541;
      case 0x29:
        goto LABEL_425;
      case 0x2A:
        goto LABEL_446;
      case 0x2B:
        goto LABEL_422;
      case 0x2C:
        goto LABEL_302;
      case 0x2D:
        goto LABEL_443;
      case 0x2E:
        goto LABEL_415;
      case 0x2F:
        goto LABEL_298;
      case 0x30:
        goto LABEL_395;
      case 0x31:
        goto LABEL_419;
      case 0x32:
        goto LABEL_458;
      case 0x33:
        goto LABEL_440;
      case 0x34:
        goto LABEL_437;
      case 0x35:
        goto LABEL_286;
      case 0x36:
        goto LABEL_449;
      case 0x37:
        goto LABEL_328;
      case 0x38:
        goto LABEL_331;
      case 0x39:
        goto LABEL_485;
      case 0x3A:
        goto LABEL_491;
      case 0x3B:
        goto LABEL_382;
      case 0x3C:
        goto LABEL_496;
      case 0x3D:
        goto LABEL_508;
      case 0x3E:
        goto LABEL_533;
      case 0x3F:
        goto LABEL_365;
      case 0x40:
        goto LABEL_527;
      case 0x41:
        goto LABEL_341;
      case 0x42:
        goto LABEL_505;
      case 0x43:
        goto LABEL_385;
      case 0x44:
        goto LABEL_324;
      case 0x45:
        goto LABEL_360;
      case 0x46:
        goto LABEL_390;
      case 0x47:
        goto LABEL_515;
      case 0x48:
        goto LABEL_518;
      case 0x49:
        goto LABEL_351;
      case 0x4A:
        goto LABEL_479;
      case 0x4B:
        goto LABEL_412;
      case 0x4C:
        goto LABEL_408;
      case 0x4D:
        goto LABEL_348;
      case 0x4E:
        goto LABEL_334;
      case 0x4F:
        goto LABEL_354;
      case 0x50:
        goto LABEL_357;
      case 0x51:
        v127 = 1;
        goto LABEL_265;
      case 0x52:
        v107 = 1;
        goto LABEL_238;
      case 0x53:
        v113 = 1;
        goto LABEL_493;
      case 0x54:
        v121 = 1;
        goto LABEL_539;
      case 0x55:
        v99 = 1;
        goto LABEL_371;
      case 0x56:
        v114 = 1;
        goto LABEL_277;
      case 0x57:
        v120 = 1;
        goto LABEL_481;
      case 0x58:
        v178 = 1;
        goto LABEL_501;
      case 0x59:
        v157 = 1;
        goto LABEL_461;
      case 0x5A:
        v122 = 1;
        goto LABEL_267;
      case 0x5B:
        v119 = 1;
        goto LABEL_255;
      case 0x5C:
        v140 = 1;
        goto LABEL_337;
      case 0x5D:
        v101 = 1;
        goto LABEL_498;
      case 0x5E:
        v139 = 1;
        goto LABEL_292;
      case 0x5F:
        v102 = 1;
        goto LABEL_262;
      case 0x60:
        v165 = 1;
        goto LABEL_523;
      case 0x61:
        v155 = 1;
        goto LABEL_454;
      case 0x62:
        v158 = 1;
        goto LABEL_398;
      case 0x63:
        v129 = 1;
        goto LABEL_378;
      case 0x64:
        v163 = 1;
        goto LABEL_475;
      case 0x65:
        v154 = 1;
        goto LABEL_520;
      case 0x66:
        v174 = 1;
        goto LABEL_536;
      case 0x67:
        v138 = 1;
        goto LABEL_304;
      case 0x68:
        v104 = 1;
        goto LABEL_428;
      case 0x69:
        v109 = 1;
        goto LABEL_274;
      case 0x6A:
        v176 = 1;
        goto LABEL_464;
      case 0x6B:
        v142 = 1;
        goto LABEL_451;
      case 0x6C:
        v133 = 1;
        goto LABEL_511;
      case 0x6D:
        v177 = 1;
        goto LABEL_529;
      case 0x6E:
        v100 = 1;
        goto LABEL_487;
      case 0x6F:
        v97 = 1;
        goto LABEL_248;
      case 0x70:
        v143 = 1;
        goto LABEL_314;
      case 0x71:
        v147 = 1;
        goto LABEL_307;
      case 0x72:
        v135 = 1;
        goto LABEL_404;
      case 0x73:
        v153 = 1;
        goto LABEL_471;
      case 0x74:
        v170 = 1;
        goto LABEL_401;
      case 0x75:
        v145 = 1;
        goto LABEL_343;
      case 0x76:
        v125 = 1;
        goto LABEL_467;
      case 0x77:
        v98 = 1;
        goto LABEL_431;
      case 0x78:
        v105 = 1;
        goto LABEL_368;
      case 0x79:
        v150 = 1;
        goto LABEL_318;
      case 0x7A:
        v116 = 1;
        goto LABEL_424;
      case 0x7B:
        v172 = 1;
        goto LABEL_445;
      case 0x7C:
        v132 = 1;
        goto LABEL_421;
      case 0x7D:
        v137 = 1;
        goto LABEL_301;
      case 0x7E:
        v136 = 1;
        goto LABEL_442;
      case 0x7F:
        v141 = 1;
        goto LABEL_414;
      case 0x80:
        v128 = 1;
        goto LABEL_297;
      case 0x81:
        v131 = 1;
        goto LABEL_394;
      case 0x82:
        v160 = 1;
        goto LABEL_418;
      case 0x83:
        v169 = 1;
        goto LABEL_457;
      case 0x84:
        v103 = 1;
        goto LABEL_439;
      case 0x85:
        v108 = 1;
        goto LABEL_436;
      case 0x86:
        v130 = 1;
        goto LABEL_285;
      case 0x87:
        v134 = 1;
        goto LABEL_448;
      case 0x88:
        v112 = 1;
        goto LABEL_327;
      case 0x89:
        v118 = 1;
        goto LABEL_330;
      case 0x8A:
        v175 = 1;
        goto LABEL_484;
      case 0x8B:
        v171 = 1;
        goto LABEL_490;
      case 0x8C:
        v126 = 1;
        goto LABEL_381;
      case 0x8D:
        v162 = 1;
        goto LABEL_495;
      case 0x8E:
        v173 = 1;
        goto LABEL_507;
      case 0x8F:
        v167 = 1;
        goto LABEL_532;
      case 0x90:
        v159 = 1;
        goto LABEL_364;
      case 0x91:
        v144 = 1;
        goto LABEL_526;
      case 0x92:
        v117 = 1;
        goto LABEL_340;
      case 0x93:
        v146 = 1;
        goto LABEL_504;
      case 0x94:
        v161 = 1;
        goto LABEL_384;
      case 0x95:
        v123 = 1;
        goto LABEL_323;
      case 0x96:
        v149 = 1;
        goto LABEL_359;
      case 0x97:
        v111 = 1;
        goto LABEL_389;
      case 0x98:
        v156 = 1;
        goto LABEL_514;
      case 0x99:
        v168 = 1;
        goto LABEL_517;
      case 0x9A:
        v124 = 1;
        goto LABEL_350;
      case 0x9B:
        v166 = 1;
        goto LABEL_478;
      case 0x9C:
        v164 = 1;
        goto LABEL_411;
      case 0x9D:
        v152 = 1;
        goto LABEL_407;
      case 0x9E:
        v106 = 1;
        goto LABEL_347;
      case 0x9F:
        v110 = 1;
        goto LABEL_333;
      case 0xA0:
        v148 = 1;
        goto LABEL_353;
      case 0xA1:
        v151 = 1;
        goto LABEL_356;
      case 0xA2:
        v127 = 2;
LABEL_265:
        DWORD1(v198[1]) = v127;
        *(v198 + 12) = 0;
        *(v198 + 4) = 0;
        break;
      case 0xA3:
        v107 = 2;
LABEL_238:
        DWORD1(v198[1]) = v107;
        v115 = xmmword_29D2F1F10;
        goto LABEL_541;
      case 0xA4:
        v113 = 2;
LABEL_493:
        DWORD1(v198[1]) = v113;
        v115 = xmmword_29D2F1F00;
        goto LABEL_541;
      case 0xA5:
        v121 = 2;
LABEL_539:
        DWORD1(v198[1]) = v121;
LABEL_540:
        v115 = xmmword_29D2F1B30;
        goto LABEL_541;
      case 0xA6:
        v99 = 2;
LABEL_371:
        DWORD1(v198[1]) = v99;
LABEL_372:
        v115 = xmmword_29D2F1B20;
        goto LABEL_541;
      case 0xA7:
        v114 = 2;
LABEL_277:
        DWORD1(v198[1]) = v114;
LABEL_278:
        v115 = xmmword_29D2F1B10;
        goto LABEL_541;
      case 0xA8:
        v120 = 2;
LABEL_481:
        DWORD1(v198[1]) = v120;
LABEL_482:
        v115 = xmmword_29D2F1B00;
        goto LABEL_541;
      case 0xA9:
        v178 = 2;
LABEL_501:
        DWORD1(v198[1]) = v178;
LABEL_502:
        v115 = xmmword_29D2F1AF0;
        goto LABEL_541;
      case 0xAA:
        v157 = 2;
LABEL_461:
        DWORD1(v198[1]) = v157;
LABEL_462:
        v115 = xmmword_29D2F1AE0;
        goto LABEL_541;
      case 0xAB:
        v122 = 2;
LABEL_267:
        DWORD1(v198[1]) = v122;
LABEL_268:
        v115 = xmmword_29D2F1AD0;
        goto LABEL_541;
      case 0xAC:
        v119 = 2;
LABEL_255:
        DWORD1(v198[1]) = v119;
LABEL_256:
        v115 = xmmword_29D2F1AC0;
        goto LABEL_541;
      case 0xAD:
        v140 = 2;
LABEL_337:
        DWORD1(v198[1]) = v140;
LABEL_338:
        v115 = xmmword_29D2F1AB0;
        goto LABEL_541;
      case 0xAE:
        v101 = 2;
LABEL_498:
        DWORD1(v198[1]) = v101;
LABEL_499:
        v115 = xmmword_29D2F1AA0;
        goto LABEL_541;
      case 0xAF:
        v139 = 2;
LABEL_292:
        DWORD1(v198[1]) = v139;
LABEL_293:
        v115 = xmmword_29D2F1A90;
        goto LABEL_541;
      case 0xB0:
        v102 = 2;
LABEL_262:
        DWORD1(v198[1]) = v102;
LABEL_263:
        v115 = xmmword_29D2F1A80;
        goto LABEL_541;
      case 0xB1:
        v165 = 2;
LABEL_523:
        DWORD1(v198[1]) = v165;
LABEL_524:
        v115 = xmmword_29D2F1A70;
        goto LABEL_541;
      case 0xB2:
        v155 = 2;
LABEL_454:
        DWORD1(v198[1]) = v155;
LABEL_455:
        v115 = xmmword_29D2F1A60;
        goto LABEL_541;
      case 0xB3:
        v158 = 2;
LABEL_398:
        DWORD1(v198[1]) = v158;
LABEL_399:
        v115 = xmmword_29D2F1A50;
        goto LABEL_541;
      case 0xB4:
        v129 = 2;
LABEL_378:
        DWORD1(v198[1]) = v129;
LABEL_379:
        v115 = xmmword_29D2F1A40;
        goto LABEL_541;
      case 0xB5:
        v163 = 2;
LABEL_475:
        DWORD1(v198[1]) = v163;
LABEL_476:
        v115 = xmmword_29D2F1A30;
        goto LABEL_541;
      case 0xB6:
        v154 = 2;
LABEL_520:
        DWORD1(v198[1]) = v154;
LABEL_521:
        v115 = xmmword_29D2F1A20;
        goto LABEL_541;
      case 0xB7:
        v174 = 2;
LABEL_536:
        DWORD1(v198[1]) = v174;
LABEL_537:
        v115 = xmmword_29D2F1A10;
        goto LABEL_541;
      case 0xB8:
        v138 = 2;
LABEL_304:
        DWORD1(v198[1]) = v138;
LABEL_305:
        v115 = xmmword_29D2F1A00;
        goto LABEL_541;
      case 0xB9:
        v104 = 2;
LABEL_428:
        DWORD1(v198[1]) = v104;
LABEL_429:
        v115 = xmmword_29D2F19F0;
        goto LABEL_541;
      case 0xBA:
        v109 = 2;
LABEL_274:
        DWORD1(v198[1]) = v109;
LABEL_275:
        v115 = xmmword_29D2F19E0;
        goto LABEL_541;
      case 0xBB:
        v176 = 2;
LABEL_464:
        DWORD1(v198[1]) = v176;
LABEL_465:
        v115 = xmmword_29D2F19D0;
        goto LABEL_541;
      case 0xBC:
        v142 = 2;
LABEL_451:
        DWORD1(v198[1]) = v142;
LABEL_452:
        v115 = xmmword_29D2F19C0;
        goto LABEL_541;
      case 0xBD:
        v133 = 2;
LABEL_511:
        DWORD1(v198[1]) = v133;
LABEL_512:
        v115 = xmmword_29D2F17E0;
        goto LABEL_541;
      case 0xBE:
        v177 = 2;
LABEL_529:
        DWORD1(v198[1]) = v177;
LABEL_530:
        v115 = xmmword_29D2F19B0;
        goto LABEL_541;
      case 0xBF:
        v100 = 2;
LABEL_487:
        DWORD1(v198[1]) = v100;
LABEL_488:
        v115 = xmmword_29D2F19A0;
        goto LABEL_541;
      case 0xC0:
        v97 = 2;
LABEL_248:
        DWORD1(v198[1]) = v97;
LABEL_249:
        v115 = xmmword_29D2F1990;
        goto LABEL_541;
      case 0xC1:
        v143 = 2;
LABEL_314:
        DWORD1(v198[1]) = v143;
LABEL_315:
        v115 = xmmword_29D2F1980;
        goto LABEL_541;
      case 0xC2:
        v147 = 2;
LABEL_307:
        DWORD1(v198[1]) = v147;
LABEL_308:
        v115 = xmmword_29D2F1EF0;
        goto LABEL_541;
      case 0xC3:
        v135 = 2;
LABEL_404:
        DWORD1(v198[1]) = v135;
LABEL_405:
        v115 = xmmword_29D2F1EE0;
        goto LABEL_541;
      case 0xC4:
        v153 = 2;
LABEL_471:
        DWORD1(v198[1]) = v153;
LABEL_472:
        v115 = xmmword_29D2F1ED0;
        goto LABEL_541;
      case 0xC5:
        v170 = 2;
LABEL_401:
        DWORD1(v198[1]) = v170;
LABEL_402:
        v115 = xmmword_29D2F1EC0;
        goto LABEL_541;
      case 0xC6:
        v145 = 2;
LABEL_343:
        DWORD1(v198[1]) = v145;
LABEL_344:
        v115 = xmmword_29D2F1EB0;
        goto LABEL_541;
      case 0xC7:
        v125 = 2;
LABEL_467:
        DWORD1(v198[1]) = v125;
LABEL_468:
        v115 = xmmword_29D2F1EA0;
        goto LABEL_541;
      case 0xC8:
        v98 = 2;
LABEL_431:
        DWORD1(v198[1]) = v98;
LABEL_432:
        v115 = xmmword_29D2F1E90;
        goto LABEL_541;
      case 0xC9:
        v105 = 2;
LABEL_368:
        DWORD1(v198[1]) = v105;
LABEL_369:
        v115 = xmmword_29D2F1E80;
        goto LABEL_541;
      case 0xCA:
        v150 = 2;
LABEL_318:
        DWORD1(v198[1]) = v150;
        *&v115 = 0x100000001;
        *(&v115 + 1) = 0x100000001;
        goto LABEL_541;
      case 0xCB:
        v116 = 2;
LABEL_424:
        DWORD1(v198[1]) = v116;
LABEL_425:
        v115 = xmmword_29D2F1C40;
        goto LABEL_541;
      case 0xCC:
        v172 = 2;
LABEL_445:
        DWORD1(v198[1]) = v172;
LABEL_446:
        v115 = xmmword_29D2F1E70;
        goto LABEL_541;
      case 0xCD:
        v132 = 2;
LABEL_421:
        DWORD1(v198[1]) = v132;
LABEL_422:
        v115 = xmmword_29D2F1C30;
        goto LABEL_541;
      case 0xCE:
        v137 = 2;
LABEL_301:
        DWORD1(v198[1]) = v137;
LABEL_302:
        v115 = xmmword_29D2F1C20;
        goto LABEL_541;
      case 0xCF:
        v136 = 2;
LABEL_442:
        DWORD1(v198[1]) = v136;
LABEL_443:
        v115 = xmmword_29D2F1E60;
        goto LABEL_541;
      case 0xD0:
        v141 = 2;
LABEL_414:
        DWORD1(v198[1]) = v141;
LABEL_415:
        v115 = xmmword_29D2F1E50;
        goto LABEL_541;
      case 0xD1:
        v128 = 2;
LABEL_297:
        DWORD1(v198[1]) = v128;
LABEL_298:
        v115 = xmmword_29D2F1E40;
        goto LABEL_541;
      case 0xD2:
        v131 = 2;
LABEL_394:
        DWORD1(v198[1]) = v131;
LABEL_395:
        v115 = xmmword_29D2F1E30;
        goto LABEL_541;
      case 0xD3:
        v160 = 2;
LABEL_418:
        DWORD1(v198[1]) = v160;
LABEL_419:
        v115 = xmmword_29D2F1C10;
        goto LABEL_541;
      case 0xD4:
        v169 = 2;
LABEL_457:
        DWORD1(v198[1]) = v169;
LABEL_458:
        v115 = xmmword_29D2F1C00;
        goto LABEL_541;
      case 0xD5:
        v103 = 2;
LABEL_439:
        DWORD1(v198[1]) = v103;
LABEL_440:
        v115 = xmmword_29D2F1E20;
        goto LABEL_541;
      case 0xD6:
        v108 = 2;
LABEL_436:
        DWORD1(v198[1]) = v108;
LABEL_437:
        v115 = xmmword_29D2F1BF0;
        goto LABEL_541;
      case 0xD7:
        v130 = 2;
LABEL_285:
        DWORD1(v198[1]) = v130;
LABEL_286:
        v115 = xmmword_29D2F1BE0;
        goto LABEL_541;
      case 0xD8:
        v134 = 2;
LABEL_448:
        DWORD1(v198[1]) = v134;
LABEL_449:
        v115 = xmmword_29D2F1E10;
        goto LABEL_541;
      case 0xD9:
        v112 = 2;
LABEL_327:
        DWORD1(v198[1]) = v112;
LABEL_328:
        v115 = xmmword_29D2F1E00;
        goto LABEL_541;
      case 0xDA:
        v118 = 2;
LABEL_330:
        DWORD1(v198[1]) = v118;
LABEL_331:
        v115 = xmmword_29D2F1DF0;
        goto LABEL_541;
      case 0xDB:
        v175 = 2;
LABEL_484:
        DWORD1(v198[1]) = v175;
LABEL_485:
        v115 = xmmword_29D2F1DE0;
        goto LABEL_541;
      case 0xDC:
        v171 = 2;
LABEL_490:
        DWORD1(v198[1]) = v171;
LABEL_491:
        v115 = xmmword_29D2F1DD0;
        goto LABEL_541;
      case 0xDD:
        v126 = 2;
LABEL_381:
        DWORD1(v198[1]) = v126;
LABEL_382:
        v115 = xmmword_29D2F1DC0;
        goto LABEL_541;
      case 0xDE:
        v162 = 2;
LABEL_495:
        DWORD1(v198[1]) = v162;
LABEL_496:
        v115 = xmmword_29D2F1DB0;
        goto LABEL_541;
      case 0xDF:
        v173 = 2;
LABEL_507:
        DWORD1(v198[1]) = v173;
LABEL_508:
        v115 = xmmword_29D2F1DA0;
        goto LABEL_541;
      case 0xE0:
        v167 = 2;
LABEL_532:
        DWORD1(v198[1]) = v167;
LABEL_533:
        v115 = xmmword_29D2F1D90;
        goto LABEL_541;
      case 0xE1:
        v159 = 2;
LABEL_364:
        DWORD1(v198[1]) = v159;
LABEL_365:
        v115 = xmmword_29D2F1D80;
        goto LABEL_541;
      case 0xE2:
        v144 = 2;
LABEL_526:
        DWORD1(v198[1]) = v144;
LABEL_527:
        v115 = xmmword_29D2F1D70;
        goto LABEL_541;
      case 0xE3:
        v117 = 2;
LABEL_340:
        DWORD1(v198[1]) = v117;
LABEL_341:
        v115 = xmmword_29D2F1D60;
        goto LABEL_541;
      case 0xE4:
        v146 = 2;
LABEL_504:
        DWORD1(v198[1]) = v146;
LABEL_505:
        v115 = xmmword_29D2F1D50;
        goto LABEL_541;
      case 0xE5:
        v161 = 2;
LABEL_384:
        DWORD1(v198[1]) = v161;
LABEL_385:
        v115 = xmmword_29D2F1BD0;
        goto LABEL_541;
      case 0xE6:
        v123 = 2;
LABEL_323:
        DWORD1(v198[1]) = v123;
LABEL_324:
        v115 = xmmword_29D2F1BC0;
        goto LABEL_541;
      case 0xE7:
        v149 = 2;
LABEL_359:
        DWORD1(v198[1]) = v149;
LABEL_360:
        v115 = xmmword_29D2F1D40;
        goto LABEL_541;
      case 0xE8:
        v111 = 2;
LABEL_389:
        DWORD1(v198[1]) = v111;
LABEL_390:
        v115 = xmmword_29D2F1BB0;
        goto LABEL_541;
      case 0xE9:
        v156 = 2;
LABEL_514:
        DWORD1(v198[1]) = v156;
LABEL_515:
        v115 = xmmword_29D2F1BA0;
        goto LABEL_541;
      case 0xEA:
        v168 = 2;
LABEL_517:
        DWORD1(v198[1]) = v168;
LABEL_518:
        v115 = xmmword_29D2F1D30;
        goto LABEL_541;
      case 0xEB:
        v124 = 2;
LABEL_350:
        DWORD1(v198[1]) = v124;
LABEL_351:
        v115 = xmmword_29D2F1D20;
        goto LABEL_541;
      case 0xEC:
        v166 = 2;
LABEL_478:
        DWORD1(v198[1]) = v166;
LABEL_479:
        v115 = xmmword_29D2F1D10;
        goto LABEL_541;
      case 0xED:
        v164 = 2;
LABEL_411:
        DWORD1(v198[1]) = v164;
LABEL_412:
        v115 = xmmword_29D2F1D00;
        goto LABEL_541;
      case 0xEE:
        v152 = 2;
LABEL_407:
        DWORD1(v198[1]) = v152;
LABEL_408:
        v115 = xmmword_29D2F1B90;
        goto LABEL_541;
      case 0xEF:
        v106 = 2;
LABEL_347:
        DWORD1(v198[1]) = v106;
LABEL_348:
        v115 = xmmword_29D2F1B80;
        goto LABEL_541;
      case 0xF0:
        v110 = 2;
LABEL_333:
        DWORD1(v198[1]) = v110;
LABEL_334:
        v115 = xmmword_29D2F1CF0;
        goto LABEL_541;
      case 0xF1:
        v148 = 2;
LABEL_353:
        DWORD1(v198[1]) = v148;
LABEL_354:
        v115 = xmmword_29D2F1B70;
        goto LABEL_541;
      case 0xF2:
        v151 = 2;
LABEL_356:
        DWORD1(v198[1]) = v151;
LABEL_357:
        *&v115 = 0x200000002;
        *(&v115 + 1) = 0x200000002;
LABEL_541:
        *(v198 + 4) = v115;
        break;
      default:
        break;
    }

    v179 = v218 >> 10;
    BYTE8(v198[1]) = byte_29D2F48C8[(v179 & 0x38 | (*&v217[4] >> 13) | HIBYTE(HIWORD(v218)) & 0xC0u) ^ 0x80];
    v180 = (v218 >> 5) & 4 | (*&v217[6] >> 13) & 3;
    if (v180 <= 4)
    {
      LODWORD(v202) = dword_29D2F49E4[v180];
    }

    v181 = *&v217[4] >> 5;
    switch((4 * v218) & 8 | (*&v217[4] >> 9) & 4 | v181 & 3)
    {
      case 1:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 2;
        goto LABEL_562;
      case 2:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 4;
        goto LABEL_562;
      case 3:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 8;
        goto LABEL_562;
      case 4:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v183 = BYTE4(v199) & 0xF0;
        v184 = 9;
        goto LABEL_561;
      case 5:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 3;
        goto LABEL_562;
      case 6:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 7;
        goto LABEL_562;
      case 7:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) | 0xF;
        goto LABEL_562;
      case 8:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v183 = BYTE4(v199) & 0xF0;
        v184 = 5;
        goto LABEL_561;
      case 9:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 6;
        goto LABEL_562;
      case 0xA:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v183 = BYTE4(v199) & 0xF0;
        v184 = 10;
        goto LABEL_561;
      case 0xB:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 0xC;
        goto LABEL_562;
      case 0xC:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v183 = BYTE4(v199) & 0xF0;
        v184 = 13;
        goto LABEL_561;
      case 0xD:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v183 = BYTE4(v199) & 0xF0;
        v184 = 11;
LABEL_561:
        v182 = v183 | v184;
        goto LABEL_562;
      case 0xE:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 0xE;
        goto LABEL_562;
      case 0xF:
        BYTE8(v205[0]) &= ~1u;
        LODWORD(v205[0]) = 0;
        *(v205 + 12) = 8;
        BYTE4(v199) &= 0xF0u;
        v185 = *v217;
        v186 = *v217 >> 3;
        goto LABEL_575;
      default:
        LODWORD(v205[0]) = 2;
        LODWORD(v205[1]) = 0;
        v182 = BYTE4(v199) & 0xF0 | 1;
LABEL_562:
        BYTE4(v199) = v182;
        v185 = *v217;
        v186 = *v217 >> 3;
        WORD4(v204) |= (*&v217[2] >> 1) & 0x60 | v186 & 0x1E | (*&v217[4] >> 2) & 1 | v181 & 0x80;
        BYTE8(v205[0]) |= (v217[2] & 0x20) != 0;
        v187 = (*&v217[6] >> 2) & 4 | (*&v217[4] >> 3) & 3;
        if (v187 > 3)
        {
          if (v187 > 5)
          {
            if (v187 != 6)
            {
              v187 = 7;
            }
          }

          else if (v187 != 4)
          {
            v187 = 5;
          }
        }

        else if (v187 > 1)
        {
          if (v187 != 2)
          {
            v187 = 3;
          }
        }

        else
        {
          if (!v187)
          {
            HIDWORD(v205[0]) = 0;
            goto LABEL_575;
          }

          v187 = 1;
        }

        HIDWORD(v205[0]) = v187;
LABEL_575:
        DWORD1(v205[0]) = dword_29D2F27C0[v186 & 1 | (2 * ((v218 >> 10) & 1))];
        v188 = (*&v217[4] >> 7) & 3;
        if (v188 > 1)
        {
          if (v188 == 2)
          {
            LOBYTE(v201[0]) &= ~1u;
            LODWORD(v200) = 1;
            BYTE8(v200) &= ~1u;
            v189 = (v218 << 6) & 0x100;
            v190 = (v185 >> 8) & 0xFFFFFDFF | (((*&v217[2] >> 3) & 1) << 9) | WORD4(v199);
            goto LABEL_580;
          }

          v191 = LOBYTE(v201[0]) | 1;
        }

        else
        {
          if (!v188)
          {
            LOBYTE(v201[0]) &= ~1u;
            LODWORD(v200) = 3;
            BYTE8(v200) &= ~1u;
            v189 = (v218 << 6) & 0x100;
            v190 = WORD4(v199) | (v185 >> 8);
LABEL_580:
            WORD4(v199) = v190 | v189;
            goto LABEL_584;
          }

          v191 = v201[0] & 0xFE;
        }

        LOBYTE(v201[0]) = v191;
        LODWORD(v200) = 2;
        WORD4(v199) |= (v185 >> 8) | (v218 << 6) & 0x100;
        BYTE8(v200) |= (v217[2] & 8) != 0;
LABEL_584:
        v192 = (*&v217[4] >> 9) & 3;
        if (v192 > 1)
        {
          if (v192 == 2)
          {
            BYTE12(v201[1]) &= ~1u;
            BYTE4(v201[1]) &= ~1u;
            *(v201 + 12) = 0x100000001;
            DWORD2(v201[1]) = 8;
            WORD2(v201[0]) |= (32 * *&v217[2]) & 0x200 | v217[3] & 0xFE | v217[6] & 1 | (((v218 >> 4) & 1) << 8) | (HIWORD(v218) << 9) & 0xFC00;
LABEL_595:
            v195 = (v218 >> 2) & 2 | (*&v217[6] >> 3) & 1 | v179 & 4;
            if (v195 != 7 && ((0x5Fu >> v195) & 1) != 0)
            {
              DWORD1(v205[1]) = dword_29D2F49C8[v195];
            }

            if (operator==(v198, &v206))
            {
              v196 = v218;
              v197 = v219;
              *a2 = *v217;
              *(a2 + 6) = v197;
              *(a2 + 2) = v196;
              return a2 + 14;
            }

            goto LABEL_26;
          }

          v194 = BYTE12(v201[1]) | 1;
        }

        else
        {
          if (!v192)
          {
            BYTE12(v201[1]) &= ~1u;
            HIDWORD(v201[0]) = 3;
            BYTE4(v201[1]) &= ~1u;
            DWORD2(v201[1]) = 8;
            WORD2(v201[0]) |= v217[6] & 1 | (2 * (*&v217[2] >> 9)) | (16 * v218) & 0x100;
            if ((*&v217[2] & 0x100) == 0)
            {
              v193 = 2;
LABEL_594:
              LODWORD(v201[1]) = v193;
              goto LABEL_595;
            }

LABEL_593:
            v193 = 1;
            goto LABEL_594;
          }

          v194 = BYTE12(v201[1]) & 0xFE;
        }

        BYTE12(v201[1]) = v194;
        v193 = 2;
        HIDWORD(v201[0]) = 2;
        DWORD2(v201[1]) = 8;
        WORD2(v201[0]) |= v217[6] & 1 | (2 * (*&v217[2] >> 9)) | (16 * v218) & 0x100;
        BYTE4(v201[1]) |= (v217[2] & 0x10) != 0;
        if ((*&v217[2] & 0x100) == 0)
        {
          goto LABEL_594;
        }

        goto LABEL_593;
    }
  }

  v200 = 0u;
  memset(v201, 0, sizeof(v201));
  v198[1] = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  memset(v205, 0, 24);
  DWORD1(v203) = 1;
  HIDWORD(v203) = 8;
  DWORD1(v200) = 3;
  HIDWORD(v200) = 8;
  HIDWORD(v198[1]) = 104;
  WORD2(v202) = (v218 >> 5);
  BYTE4(v204) = (v217[4] & 8) != 0;
  v68 = HIWORD(v218) >> 10;
  v199 = 0u;
  v198[0] = 0u;
  BYTE12(v201[1]) = v68 & 2;
  switch((HIWORD(v218) >> 5) & 0x1B)
  {
    case 1:
      *(&v198[0] + 1) = 0;
      *&v198[1] = 0;
      goto LABEL_137;
    case 2:
      *(v198 + 4) = 0x100000002;
      break;
    case 3:
      DWORD2(v198[0]) = 1;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
      goto LABEL_601;
    case 8:
      *(v198 + 4) = 0x200000002;
      break;
    case 9:
      *(v198 + 12) = 1;
      break;
    case 0xA:
      v81 = 1;
      goto LABEL_131;
    case 0xB:
      *(v198 + 12) = 1;
LABEL_137:
      DWORD1(v198[0]) = 2;
      break;
    case 0x10:
      v82 = xmmword_29D2F1A60;
      goto LABEL_139;
    case 0x11:
      v82 = xmmword_29D2F1A50;
      goto LABEL_139;
    case 0x12:
      *(v198 + 12) = 2;
      break;
    case 0x13:
      v81 = 2;
LABEL_131:
      *(v198 + 12) = v81;
      DWORD1(v198[0]) = 1;
      break;
    case 0x18:
      *(&v198[0] + 1) = 0x200000002;
      break;
    case 0x19:
      v82 = xmmword_29D2F19D0;
      goto LABEL_139;
    case 0x1A:
      v82 = xmmword_29D2F19C0;
LABEL_139:
      *(v198 + 4) = v82;
      break;
    case 0x1B:
      LODWORD(v198[1]) = 1;
      break;
    default:
      memset(v198 + 4, 0, 20);
      break;
  }

  BYTE8(v198[1]) = byte_29D2F4888[v68 & 0x38 | (*&v217[6] >> 13)];
  v83 = (HIWORD(v218) >> 5) & 4 | (v218 >> 13) & 3;
  if (v83 <= 4)
  {
    LODWORD(v202) = dword_29D2F49E4[v83];
  }

  v84 = *&v217[6] >> 5;
  switch((4 * HIWORD(v218)) & 8 | (*&v217[6] >> 9) & 4 | v84 & 3)
  {
    case 1:
      v85 = *&v217[4] >> 2;
      v86 = 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      goto LABEL_159;
    case 2:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 4;
      goto LABEL_159;
    case 3:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 8;
      goto LABEL_159;
    case 4:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 9;
      goto LABEL_159;
    case 5:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 3;
      goto LABEL_159;
    case 6:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 7;
      goto LABEL_159;
    case 7:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 15;
      goto LABEL_159;
    case 8:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 5;
      goto LABEL_159;
    case 9:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 6;
      goto LABEL_159;
    case 0xA:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 10;
      goto LABEL_159;
    case 0xB:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 12;
      goto LABEL_159;
    case 0xC:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 13;
      goto LABEL_159;
    case 0xD:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 11;
      goto LABEL_159;
    case 0xE:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 14;
      goto LABEL_159;
    case 0xF:
      *(v205 + 12) = 8;
      BYTE8(v205[0]) = 0;
      LODWORD(v205[0]) = 0;
      BYTE4(v199) = 0;
      v87 = *v217 >> 3;
      goto LABEL_172;
    default:
      v85 = *&v217[4] >> 2;
      LODWORD(v205[0]) = 2;
      LODWORD(v205[1]) = 0;
      v86 = 1;
LABEL_159:
      BYTE4(v199) = v86;
      v87 = *v217 >> 3;
      WORD4(v204) = (*&v217[2] >> 1) & 0x60 | (v217[0] >> 3) & 0xFE | ((v85 & 1) << 8) | (*&v217[6] >> 2) & 1 | v84 & 0x80;
      BYTE8(v205[0]) = (v217[2] & 0x20) != 0;
      v88 = (v218 >> 2) & 4 | (*&v217[6] >> 3) & 3;
      if (v88 > 3)
      {
        if (v88 > 5)
        {
          if (v88 != 6)
          {
            v88 = 7;
          }
        }

        else if (v88 != 4)
        {
          v88 = 5;
        }
      }

      else if (v88 > 1)
      {
        if (v88 != 2)
        {
          v88 = 3;
        }
      }

      else
      {
        if (!v88)
        {
          HIDWORD(v205[0]) = 0;
          goto LABEL_172;
        }

        v88 = 1;
      }

      HIDWORD(v205[0]) = v88;
LABEL_172:
      DWORD1(v205[0]) = dword_29D2F27C0[v87 & 1 | (2 * ((HIWORD(v218) >> 10) & 1))];
      if ((v217[4] & 0x20) != 0)
      {
        LODWORD(v203) = 2;
        WORD4(v202) = (2 * *&v217[4]) & 0x80 | (((*&v217[4] >> 4) & 1) << 8) | v217[5] & 0x7F;
        BYTE8(v203) = *&v217[4] >> 15;
        LOBYTE(v204) = (v217[4] & 0x80) != 0;
      }

      else if ((v217[4] & 0x40) != 0)
      {
        LODWORD(v203) = 3;
        LOBYTE(v204) = 0;
        WORD4(v202) = (16 * *&v217[4]) & 0x100 | v217[4] & 0x80 | v217[5] & 0x7F;
        BYTE8(v203) = *&v217[4] >> 15;
      }

      else
      {
        LODWORD(v203) = 1;
        BYTE8(v203) = 0;
        LOBYTE(v204) = 0;
        switch(v217[5] & 0xF)
        {
          case 1:
            v89 = 1;
            goto LABEL_192;
          case 2:
            v89 = 2;
            goto LABEL_192;
          case 3:
            v89 = 3;
            goto LABEL_192;
          case 4:
            v89 = 4;
            goto LABEL_192;
          case 5:
            v89 = 5;
            goto LABEL_192;
          case 6:
            v89 = 6;
            goto LABEL_192;
          case 7:
            v89 = 7;
            goto LABEL_192;
          case 8:
            v89 = 8;
            goto LABEL_192;
          case 9:
            v89 = 9;
            goto LABEL_192;
          case 0xA:
            v89 = 10;
            goto LABEL_192;
          case 0xB:
            v89 = 11;
            goto LABEL_192;
          case 0xC:
            v89 = 12;
            goto LABEL_192;
          case 0xD:
            v89 = 13;
            goto LABEL_192;
          case 0xE:
            v89 = 14;
            goto LABEL_192;
          case 0xF:
            break;
          default:
            v89 = 15;
LABEL_192:
            WORD4(v202) = v89;
            break;
        }
      }

      v90 = (*&v217[6] >> 7) & 3;
      if (v90 > 1)
      {
        v92 = v217[1];
        if (v90 == 2)
        {
          LOBYTE(v201[0]) = 0;
          LODWORD(v200) = 1;
          BYTE8(v200) = 0;
          v91 = v217[1] | (((*&v217[2] >> 3) & 1) << 9);
          goto LABEL_198;
        }

        LOBYTE(v201[0]) = 1;
        LODWORD(v200) = 2;
      }

      else
      {
        if (!v90)
        {
          LOBYTE(v201[0]) = 0;
          LODWORD(v200) = 3;
          BYTE8(v200) = 0;
          LOWORD(v91) = v217[1];
LABEL_198:
          WORD4(v199) = v91 & 0xFEFF | (((v218 & 0x40000) != 0) << 8);
          goto LABEL_202;
        }

        LOBYTE(v201[0]) = 0;
        LODWORD(v200) = 2;
        v92 = v217[1];
      }

      WORD4(v199) = v92 & 0xFEFF | (((v218 & 0x40000) != 0) << 8);
      BYTE8(v200) = (v217[2] & 8) != 0;
LABEL_202:
      v93 = (*&v217[6] >> 9) & 3;
      if (v93 > 1)
      {
        if (v93 == 2)
        {
          BYTE12(v201[1]) = (HIWORD(v218) >> 10) & 2;
          BYTE4(v201[1]) = 0;
          *(v201 + 12) = 0x100000001;
          DWORD2(v201[1]) = 8;
          WORD2(v201[0]) = (32 * *&v217[2]) & 0x200 | v217[3] & 0xFE | v218 & 1 | (((v218 & 0x100000) != 0) << 8);
          goto LABEL_214;
        }

        BYTE12(v201[1]) = (HIWORD(v218) >> 10) & 2 | 1;
        HIDWORD(v201[0]) = 2;
        DWORD2(v201[1]) = 8;
        WORD2(v201[0]) = v218 & 1 | (2 * (*&v217[2] >> 9)) & 0xFEFF | (((v218 & 0x100000) != 0) << 8);
        BYTE4(v201[1]) = (v217[2] & 0x10) != 0;
        if ((*&v217[2] & 0x100) == 0)
        {
          LODWORD(v201[1]) = 2;
          goto LABEL_214;
        }
      }

      else if (v93)
      {
        BYTE12(v201[1]) = (HIWORD(v218) >> 10) & 2;
        HIDWORD(v201[0]) = 2;
        DWORD2(v201[1]) = 8;
        WORD2(v201[0]) = v218 & 1 | (2 * (*&v217[2] >> 9)) & 0xFEFF | (((HIWORD(v218) >> 4) & 1) << 8);
        BYTE4(v201[1]) = (v217[2] & 0x10) != 0;
        if ((*&v217[2] & 0x100) == 0)
        {
          LODWORD(v201[1]) = 2;
          goto LABEL_214;
        }
      }

      else
      {
        BYTE12(v201[1]) = (HIWORD(v218) >> 10) & 2;
        HIDWORD(v201[0]) = 3;
        BYTE4(v201[1]) = 0;
        DWORD2(v201[1]) = 8;
        WORD2(v201[0]) = v218 & 1 | (2 * (*&v217[2] >> 9)) & 0xFEFF | (((HIWORD(v218) >> 4) & 1) << 8);
        if ((*&v217[2] & 0x100) == 0)
        {
          v94 = 2;
          goto LABEL_213;
        }
      }

      v94 = 1;
LABEL_213:
      LODWORD(v201[1]) = v94;
LABEL_214:
      v95 = (HIWORD(v218) >> 2) & 2 | (v218 >> 3) & 1 | v68 & 4;
      if (v95 != 7 && ((0x5Fu >> ((HIWORD(v218) >> 2) & 2 | ((v218 & 8) != 0) | v68 & 4)) & 1) != 0)
      {
        DWORD1(v205[1]) = dword_29D2F49C8[v95];
      }

      if ((operator==(v198, &v206) & 1) == 0)
      {
        goto LABEL_25;
      }

      v96 = v218;
      *a2 = *v217;
      *(a2 + 2) = v96;
      result = a2 + 12;
      break;
  }

  return result;
}

void *std::deque<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
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

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *>>::emplace_back<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block *&>(a1, &v11);
}

void sub_29CD894B0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *AGXIotoInstruction_COPY::emit(AGXIotoInstruction_COPY *this, unsigned __int8 *a2)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = *(this + 23);
  if (v2 == 1)
  {
    v6 = *(this + 3);
    v48 = *(this + 2);
    v49 = v6;
    v50[0] = *(this + 4);
    *(v50 + 12) = *(this + 76);
    v7 = *(this + 1);
    v46 = *this;
    v47 = v7;
    return AGXIotoInstruction_COPY_1::emit(&v46, a2);
  }

  if (!v2)
  {
    v3 = *(this + 3);
    v48 = *(this + 2);
    v49 = v3;
    v50[0] = *(this + 4);
    *(v50 + 12) = *(this + 76);
    v4 = *(this + 1);
    v46 = *this;
    v47 = v4;
    return AGXIotoInstruction_COPY_0::emit(&v46, a2);
  }

  v9 = *(this + 3);
  v43 = *(this + 2);
  v44 = v9;
  v45[0] = *(this + 4);
  *(v45 + 12) = *(this + 76);
  v10 = *(this + 1);
  v41 = *this;
  v42 = v10;
  AGXIotoInstruction_COPY_0::emit(&v41, v51);
  if ((v51[2] & 7) != 1 || (v51[0] & 7) != 3)
  {
    goto LABEL_39;
  }

  v16 = 0;
  v49 = 0u;
  memset(v50, 0, 28);
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  DWORD1(v50[1]) = 8;
  v17 = *&v51[2] >> 13;
  HIDWORD(v47) = 35;
  if (v17 > 3)
  {
    if (*&v51[2] >> 13 > 5u)
    {
      if (v17 == 6)
      {
        LOBYTE(v17) = 32;
      }

      else
      {
        LOBYTE(v17) = 3;
      }
    }

    else if (v17 == 4)
    {
      LOBYTE(v17) = 8;
    }

    else
    {
      LOBYTE(v17) = 16;
    }
  }

  else if (*&v51[2] >> 13 > 1u)
  {
    if (v17 != 2)
    {
      LOBYTE(v17) = 4;
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_21;
    }

    LOBYTE(v17) = 1;
  }

  BYTE8(v47) = v17;
LABEL_21:
  if ((*&v51[2] & 0x200) != 0)
  {
    BYTE4(v49) = 0;
    HIDWORD(v48) = 4;
    *(&v49 + 1) = 0;
    LODWORD(v48) = 1;
    DWORD1(v48) = (*v51 >> 3) & 0x1E | (((*&v51[2] >> 5) & 1) << 16) | (*&v51[2] >> 1) & 0x60 | v51[3] & 1 | (((*&v51[2] >> 10) & 1) << 15);
  }

  else if ((*&v51[2] & 0x400) != 0)
  {
    BYTE4(v49) = 0;
    if ((v51[2] & 0x20) != 0)
    {
      *(&v49 + 1) = 0;
      LODWORD(v48) = 1;
      HIDWORD(v48) = 5;
    }

    else
    {
      LODWORD(v48) = 1;
      HIDWORD(v48) = 3;
      v16 = 8;
      *(&v49 + 1) = 8;
    }

    WORD2(v48) = (*&v51[2] >> 1) & 0x60 | (v51[0] >> 3) & 0xFE | v51[3] & 1;
  }

  else
  {
    LODWORD(v48) = 3;
    HIDWORD(v48) = 2;
    v16 = 8;
    *(&v49 + 1) = 8;
    WORD2(v48) = (*&v51[2] >> 1) & 0x60 | v51[3] & 1 | (*v51 >> 3) & 0x1E;
    BYTE4(v49) = (v51[2] & 0x20) != 0;
  }

  if ((*&v51[2] & 0x800) != 0)
  {
    if ((*v51 & 0x8000) != 0)
    {
      DWORD2(v50[0]) = 1;
      BYTE8(v50[1]) = 0;
      LOBYTE(v50[1]) = 0;
      LOWORD(v18) = (16 * *&v51[2]) & 0x80 | v51[1] & 0x7F;
    }

    else
    {
      DWORD2(v50[0]) = 3;
      BYTE8(v50[1]) = 0;
      LOBYTE(v50[1]) = 0;
      v18 = (*&v51[2] >> 4) & 0x100 | (((*&v51[2] >> 3) & 1) << 7) | v51[1];
    }

    LOWORD(v50[0]) = v18;
  }

  else
  {
    DWORD2(v50[0]) = 2;
    LOWORD(v50[0]) = (*&v51[2] >> 5) & 0x80 | v51[1] & 0x7F;
    BYTE8(v50[1]) = (v51[2] & 8) != 0;
    LOBYTE(v50[1]) = *v51 >> 15;
  }

  if ((v51[0] & 8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  HIDWORD(v50[0]) = v19;
  LODWORD(v49) = v19;
  if (operator==(&v46, &v41, *&v16, v12, v13, v14, v15))
  {
    *a2 = *v51;
    return a2 + 4;
  }

LABEL_39:
  v20 = *(this + 3);
  v43 = *(this + 2);
  v44 = v20;
  v45[0] = *(this + 4);
  *(v45 + 12) = *(this + 76);
  v21 = *(this + 1);
  v41 = *this;
  v42 = v21;
  AGXIotoInstruction_COPY_1::emit(&v41, v51);
  if ((v51[4] & 3 | (4 * ((*&v51[4] >> 11) & 1))) != 2 || (~*&v51[2] & 7) != 0 || (v51[0] & 7) != 3)
  {
    return 0;
  }

  v26 = 0;
  v46 = 0u;
  v47 = 0u;
  v49 = 0u;
  memset(v50, 0, 28);
  v48 = 0u;
  HIDWORD(v47) = 35;
  DWORD1(v50[1]) = 8;
  LOBYTE(v46) = (v51[6] & 0x10) != 0;
  BYTE8(v47) = (*&v51[6] >> 10) & 0x20 | (*v51 >> 10) & 0x1F | v51[2] & 0x40 | (((v51[0] & 8) != 0) << 7);
  if (*&v51[4] >= 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  LODWORD(v49) = v27;
  v28 = (*v51 >> 5) & 3;
  if (v28 > 1)
  {
    if (v28 == 3)
    {
      goto LABEL_51;
    }

    v29 = 1;
  }

  else
  {
    if (v28)
    {
      goto LABEL_51;
    }

    v29 = 2;
  }

  DWORD1(v46) = v29;
LABEL_51:
  v30 = (*&v51[4] >> 5) & 3;
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_59;
    }

    v31 = 1;
  }

  else if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 2;
  }

  DWORD2(v46) = v31;
LABEL_59:
  v32 = (*&v51[6] >> 5) & 3;
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_66;
    }

    v33 = 1;
  }

  else if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = 2;
  }

  HIDWORD(v46) = v33;
LABEL_66:
  v34 = (*&v51[6] >> 7) & 3;
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_73;
    }

    v35 = 1;
  }

  else if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = 2;
  }

  LODWORD(v47) = v35;
LABEL_73:
  v36 = (*&v51[6] >> 9) & 3;
  if (v36 > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_80;
    }

    v37 = 1;
  }

  else if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  DWORD1(v47) = v37;
LABEL_80:
  if ((v51[6] & 4) != 0)
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  HIDWORD(v50[0]) = v38;
  if ((v51[6] & 8) != 0)
  {
    LOBYTE(v50[1]) = 0;
    BYTE8(v50[1]) = 0;
    if ((v51[4] & 4) != 0)
    {
      DWORD2(v50[0]) = 1;
      v39 = (v51[6] << 7);
    }

    else
    {
      DWORD2(v50[0]) = 3;
      v39 = (*&v51[6] << 7) & 0x180;
    }

    LOWORD(v50[0]) = (*&v51[2] >> 9) & 0x7C | v51[1] & 3 | v39;
  }

  else
  {
    DWORD2(v50[0]) = 2;
    LOWORD(v50[0]) = v51[1] & 3 | ((v51[6] & 3) << 7) | (*&v51[2] >> 9) & 0x7C;
    LOBYTE(v50[1]) = *v51 >> 15;
    BYTE8(v50[1]) = (v51[4] & 4) != 0;
  }

  if ((*&v51[2] & 0x200) == 0)
  {
    BYTE4(v49) = 0;
    HIDWORD(v49) = 0;
    HIDWORD(v48) = 4;
    LODWORD(v48) = 1;
    DWORD1(v48) = (*v51 >> 3) & 0x12 | (((*&v51[2] >> 3) & 3) << 7) & 0x3FF | (*&v51[2] >> 1) & 0x40 | v51[3] & 1 | (((*&v51[2] >> 10) & 1) << 15) | (((*&v51[4] >> 3) & 3) << 10) & 0x8FFF | (((*&v51[4] >> 7) & 7) << 12) | (((*&v51[4] >> 10) & 1) << 16) | (*&v51[6] >> 9) & 0xC | v51[7] & 0x20 | (*&v51[6] >> 5) & 0x200;
    v40 = (*&v51[4] >> 12) & 7;
    if (v40 <= 3)
    {
      if (((*&v51[4] >> 12) & 7u) <= 1)
      {
        if (!v40)
        {
LABEL_93:
          DWORD2(v49) = 0;
          goto LABEL_109;
        }

        goto LABEL_98;
      }

      goto LABEL_104;
    }

    goto LABEL_99;
  }

  if ((*&v51[4] & 0x2000) == 0)
  {
    BYTE4(v49) = 0;
    HIDWORD(v48) = 5;
    LODWORD(v48) = 1;
    WORD2(v48) = (*v51 >> 3) & 0x12 | (((*&v51[2] >> 3) & 3) << 7) & 0xE3FF | (*&v51[2] >> 1) & 0x40 | v51[3] & 1 | (((*&v51[4] >> 3) & 3) << 10) & 0xEFFF | (((*&v51[4] >> 7) & 1) << 12) | (*&v51[6] >> 9) & 0xC | v51[7] & 0x20 | (*&v51[6] >> 5) & 0x200;
    HIDWORD(v49) = (*&v51[4] >> 12) & 1;
    v40 = v51[5] & 7;
    if (v40 <= 3)
    {
      if ((v51[5] & 7u) <= 1)
      {
        if (!v40)
        {
          goto LABEL_93;
        }

LABEL_98:
        v40 = 1;
LABEL_108:
        DWORD2(v49) = v40;
        goto LABEL_109;
      }

LABEL_104:
      if (v40 != 2)
      {
        v40 = 3;
      }

      goto LABEL_108;
    }

LABEL_99:
    if (v40 > 5)
    {
      if (v40 != 6)
      {
        v40 = 7;
      }
    }

    else if (v40 != 4)
    {
      v40 = 5;
    }

    goto LABEL_108;
  }

  if ((v51[4] & 0x10) != 0)
  {
    BYTE4(v49) = 0;
    v26 = 8;
    *(&v49 + 1) = 8;
    HIDWORD(v48) = 3;
    LODWORD(v48) = 1;
    WORD2(v48) = (*v51 >> 3) & 0x12 | (((*&v51[2] >> 3) & 3) << 7) | (*&v51[2] >> 1) & 0x40 | v51[3] & 1 | (*&v51[6] >> 9) & 0xC | v51[7] & 0x20;
  }

  else
  {
    v26 = 8;
    *(&v49 + 1) = 8;
    HIDWORD(v48) = 2;
    LODWORD(v48) = 3;
    WORD2(v48) = (*&v51[2] >> 1) & 0x40 | (((*&v51[2] >> 3) & 3) << 7) | v51[3] & 1 | (*v51 >> 3) & 0x12 | (*&v51[6] >> 9) & 0xC | v51[7] & 0x20;
    BYTE4(v49) = (v51[4] & 8) != 0;
  }

LABEL_109:
  if (operator==(&v46, &v41, *&v26, v22, v23, v24, v25))
  {
    *a2 = *v51;
    return a2 + 8;
  }

  return 0;
}

unsigned __int8 *AGXIotoInstruction_COPY_0::emit(AGXIotoInstruction_COPY_0 *this, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *(this + 24);
  if (v3 < 4u)
  {
    v4 = ((v3 & 2) == 0) & v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 24);
  if (*(this + 24))
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  if (v5 == 2)
  {
    v6 = 1;
  }

  if (v5 == 4)
  {
    v6 = 1;
  }

  if (v5 == 8)
  {
    v6 = 1;
  }

  v7 = (v5 < 4) & ((v3 & 2) >> 1) & *&v3;
  if (v5 == 16)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(this + 8);
  v10 = v9 == 3;
  v12 = *(this + 14);
  v11 = *(this + 15);
  v13 = *(this + 11);
  if (v12 != 8)
  {
    v10 = 0;
  }

  v14 = v13 == 2 && v10;
  v15 = *(this + 52);
  if (v11)
  {
    v14 = 0;
  }

  v16 = (v13 == 3) & ~(v15 | (v9 != 1) | (v12 != 8));
  if (v11)
  {
    v16 = 0;
  }

  v17 = (*(this + 18) & 0x180) == 0 && v14;
  if ((*(this + 18) & 0x180) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if ((v15 & 1) == 0 && !v11 && !v12 && v9 == 1)
  {
    v2 = (*(this + 18) & 0x1F80) == 0 && v13 == 5;
  }

  v20 = 0;
  v21 = v17 | v18 | v2;
  v22 = *(this + 9);
  if ((v15 & 1) == 0 && !v12 && v9 == 1 && v13 == 4)
  {
    v20 = (v11 | *(this + 9) & 0x7F80) == 0;
  }

  v23 = 0;
  v24 = (v5 == 32) | v7 | v8;
  v25 = *(this + 18);
  v50 = *(this + 32);
  v27 = (*(this + 32) & 0x100) == 0 && v25 == 2;
  v28 = v25 == 3;
  v29 = *(this + 88);
  if (v29)
  {
    v28 = 0;
  }

  if (*(this + 80))
  {
    v28 = 0;
  }

  if (v25 == 1 && (v29 & 1) == 0)
  {
    v23 = (*(this + 80) & 1) == 0 && v50 < 0x100u;
  }

  if (*this & 1 | *(this + 5) | *(this + 4) | *(this + 3) | *(this + 2) | *(this + 1))
  {
    v31 = 0;
  }

  else
  {
    v31 = *(this + 21) == 8;
  }

  v33 = v31 && *(this + 7) == 35;
  v34 = 3;
  LOWORD(v35) = 1;
  if ((v33 & v24 & (v21 | v20)) == 1 && (v27 || v28 || v23) && (*(this + 19) - 1) <= 1)
  {
    v36 = *(this + 12);
    if ((v36 - 1) <= 1)
    {
      v37 = *(this + 80) & 1;
      v38 = *(this + 24);
      if (v38 == 2)
      {
        v39 = 1;
      }

      else
      {
        v39 = v4;
      }

      if (v38 == 2)
      {
        v40 = 16385;
      }

      else
      {
        v40 = 24577;
      }

      if (v38 == 4)
      {
        v39 = 1;
      }

      if (v4)
      {
        v41 = 8193;
      }

      else
      {
        v41 = v40;
      }

      if (v38 == 8)
      {
        v42 = 1;
      }

      else
      {
        v42 = v39;
      }

      if (v38 == 8)
      {
        v43 = -32767;
      }

      else
      {
        v43 = -24575;
      }

      if (v38 == 16)
      {
        v42 = 1;
      }

      if (v39)
      {
        v44 = v41;
      }

      else
      {
        v44 = v43;
      }

      if (v7)
      {
        v45 = -8191;
      }

      else
      {
        v45 = 1;
      }

      if (v38 == 32)
      {
        v46 = -16383;
      }

      else
      {
        v46 = v45;
      }

      if (v42)
      {
        v46 = v44;
      }

      if (v5)
      {
        v35 = v46;
      }

      else
      {
        v35 = 1;
      }

      if (v21)
      {
        v47 = v37;
        if (v17)
        {
          v48 = (16 * ((v22 >> 1) & 0xF)) | 3;
          v35 |= (32 * (v15 & 1)) & 0x3F | ((v22 & 1) << 8) | (((v22 >> 5) & 3) << 6);
        }

        else if ((v18 | v2))
        {
          if (v18)
          {
            v48 = (16 * ((v22 >> 1) & 0xF)) | 3;
            v35 = v35 & 0xFFFFFA1F | 0x400 | (((v22 >> 5) & 3) << 6) & 0xFFFFFEFF | ((v22 & 1) << 8);
          }

          else
          {
            LOWORD(v48) = 3;
            if (v2)
            {
              v48 = (16 * ((v22 >> 1) & 0xF)) | 3;
              v35 |= (2 * v22) & 0xC0 | ((v22 & 1) << 8) | 0x420;
            }

            else
            {
              v35 |= 0x400u;
            }
          }
        }

        else
        {
          LOWORD(v48) = 3;
        }
      }

      else
      {
        LOWORD(v48) = 3;
        v47 = v37;
        if (v20)
        {
          v48 = (16 * ((v22 >> 1) & 0xF)) | 3;
          v35 |= (v22 >> 11) & 0x20 | (((v22 >> 5) & 3) << 6) & 0xFFFFFEFF | ((v22 & 1) << 8) | (v22 >> 5) & 0x400 | 0x200;
        }
      }

      if (v27)
      {
        LOWORD(v35) = ((32 * v50) | (8 * v29)) & 0x1008 | v35 & 0xE7F7;
        LOWORD(v48) = ((v50 & 0x7F) << 8) | (v47 << 15) | v48;
      }

      else if (v28 || v23)
      {
        v35 |= 0x800u;
        if (v28)
        {
          LOWORD(v48) = v48 & 0x80FF | ((v50 & 0x7F) << 8);
          v35 = ((16 * v50) | (v50 >> 4)) & 0x1008 | v35 & 0xFFFFEFF7;
        }

        else if (v23)
        {
          LOWORD(v48) = v48 | (v50 << 8) | 0x8000;
          v35 = v35 & 0xFFFFFFF7 | (8 * ((v50 >> 7) & 1));
        }
      }

      if (v36 == 1)
      {
        v34 = v48 & 0xFFF7;
      }

      else
      {
        v34 = v48 | 8;
      }
    }
  }

  *a2 = v34 | (v35 << 16);
  return a2 + 4;
}

unsigned __int8 *AGXIotoInstruction_COPY_1::emit(AGXIotoInstruction_COPY_1 *this, unsigned __int8 *a2)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  v4 = *(this + 18);
  v5 = *(this + 19);
  v6 = *(this + 88);
  v7 = (v6 & 1) == 0;
  v8 = v4 == 3 && (v6 & 1) == 0;
  if (v4 != 1)
  {
    v7 = 0;
  }

  v9 = (*(this + 80) & 1) == 0 && v8;
  v10 = (*(this + 80) & 1) == 0 && v7;
  v11 = *(this + 52);
  v12 = *(this + 14);
  v13 = *(this + 15);
  v14 = *(this + 8);
  v16 = v12 < 6 || (v12 & 0xFFFFFFFE) == 6;
  if (v11 & 1 | (v13 != 0) || v2 != 4)
  {
    v18 = 0;
    v21 = (*(this + 52) & 1) == 0 && v2 == 5 && v14 == 1;
    v17 = v21 && v16;
  }

  else
  {
    v17 = 0;
    v18 = v14 == 1 && v16;
  }

  v22 = 0;
  v24 = v2 == 2 && v14 == 3;
  if (v12 != 8)
  {
    v24 = 0;
  }

  if (v13)
  {
    v24 = 0;
  }

  v26 = v2 == 3 && v14 == 1;
  if (v11 & 1 | (v13 != 0) | (v12 != 8))
  {
    v26 = 0;
  }

  v30 = *(this + 7) == 35 && *(this + 21) == 8 && (v3 - 1) < 2 && (v5 - 1) < 2;
  v31 = v30 & (v4 == 2 || v9 || v10);
  LOWORD(v30) = 3;
  LOWORD(v32) = 7;
  LOWORD(v33) = 2;
  if (v31 == 1)
  {
    v34 = v17 | (v24 || v26);
    if ((v18 | v34))
    {
      v36 = *(this + 1);
      v35 = *(this + 2);
      v37 = *(this + 24);
      v30 = ((((v37 >> 1) & 1) << 11) | ((v37 & 1) << 10)) & 0xFFFFCFFF | (((v37 >> 2) & 1) << 12) & 0xFFFFDFFF | (((v37 >> 3) & 1) << 13) | (v37 >> 4) & 8 | (((v37 >> 4) & 1) << 14) | 3;
      if (v3 == 1)
      {
        v33 = 2;
      }

      else
      {
        v33 = -32766;
      }

      if (v36)
      {
        if (v36 == 1)
        {
          v30 = ((((v37 >> 1) & 1) << 11) | ((v37 & 1) << 10)) & 0xFFFFCF9F | (((v37 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v37 >> 3) & 1) << 13) | (v37 >> 4) & 8 | (((v37 >> 4) & 1) << 14) | 0x43;
        }

        else if (v36 == 2)
        {
          v30 = ((((v37 >> 1) & 1) << 11) | ((v37 & 1) << 10)) & 0xFFFFCF9F | (((v37 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v37 >> 3) & 1) << 13) | (v37 >> 4) & 8 | (((v37 >> 4) & 1) << 14) | 3;
        }
      }

      else
      {
        v30 = ((((v37 >> 1) & 1) << 11) | ((v37 & 1) << 10)) & 0xFFFFCF9F | (((v37 >> 2) & 1) << 12) & 0xFFFFDF9F | (((v37 >> 3) & 1) << 13) | (v37 >> 4) & 8 | (((v37 >> 4) & 1) << 14) | 0x23;
      }

      v39 = *(this + 3);
      v38 = *(this + 4);
      if (v35 == 1)
      {
        v33 |= 0x40u;
      }

      else if (!v35)
      {
        v33 |= 0x20u;
      }

      v40 = *(this + 5);
      v41 = ((v37 << 10) | (16 * *this)) & 0xFFFF801F;
      if (v39 == 1)
      {
        v41 |= 0x40u;
        if (v38)
        {
LABEL_80:
          if (v38 == 1)
          {
            v41 = v41 & 0xFFFFFE7F | 0x100;
            v42 = v37 & 0x40;
            if (v40)
            {
              goto LABEL_87;
            }

LABEL_91:
            v41 = v41 & 0xFFFFF9FF | 0x200;
LABEL_93:
            v32 = v42 | 7;
            v22 = v41 & 0xFFFFFFFB | (4 * (v5 != 1));
            if (v4 == 2)
            {
              v43 = *(this + 32);
              v32 = v32 & 0x7FF | (v43 >> 2 << 11);
              v22 = v22 & 0xFFFFFFF4 | (v43 >> 7) & 3;
              LOWORD(v30) = v30 & 0xFCFF | ((*(this + 80) & 1) << 15) | ((*(this + 32) & 3) << 8);
              v33 = v33 & 0xFFFFFFFB | (4 * (v6 & 1));
            }

            else if (v9 || v10)
            {
              v22 = v22 | 8;
              if (v9)
              {
                v44 = *(this + 32);
                v33 &= ~4u;
                LOWORD(v30) = v30 & 0xFCFF | ((*(this + 32) & 3) << 8);
                v32 = v32 & 0x7FF | (v44 >> 2 << 11);
                v22 = v22 & 0xFFFFFFFC | (v44 >> 7) & 3;
              }

              else if (v10)
              {
                v45 = *(this + 32);
                v33 |= 4u;
                LOWORD(v30) = v30 & 0xFCFF | ((*(this + 32) & 3) << 8);
                v32 = v32 & 0x7FF | (v45 >> 2 << 11);
                v22 = v22 & 0xFFFFFFFE | (v45 >> 7) & 1;
              }
            }

            if (v18)
            {
              v46 = *(this + 9);
              LOWORD(v30) = (8 * v46) & 0x90 | v30 & 0xFF6F;
              v32 = (v46 >> 4) & 0x18 | v32 & 0xFFFFF867 | (((v46 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v46 & 1) << 8) | (v46 >> 5) & 0x400;
              v33 = (v46 >> 7) & 0x18 | (v46 >> 5) & 0x380 | v33 & 0xFFFFF867 | (v46 >> 6) & 0x400;
              v22 = v22 & 0xFFFF87FF | (((v46 >> 2) & 3) << 11) & 0xFFFF9FFF | (((v46 >> 5) & 1) << 13) & 0xFFFFBFFF | (((v46 >> 9) & 1) << 14);
              if (v12 <= 7)
              {
                if (v12)
                {
                  switch(v12)
                  {
                    case 1u:
                      LOWORD(v33) = v33 & 0x8FFF | 0x1000;
                      break;
                    case 2u:
                      LOWORD(v33) = v33 & 0x8FFF | 0x2000;
                      break;
                    case 3u:
                      LOWORD(v33) = v33 & 0x8FFF | 0x3000;
                      break;
                    case 4u:
                      LOWORD(v33) = v33 & 0x8FFF | 0x4000;
                      break;
                    case 5u:
                      LOWORD(v33) = v33 & 0x8FFF | 0x5000;
                      break;
                    case 6u:
                      LOWORD(v33) = v33 & 0x8FFF | 0x6000;
                      break;
                    default:
                      LOWORD(v33) = v33 | 0x7000;
                      break;
                  }
                }

                else
                {
                  LOWORD(v33) = v33 & 0x8FFF;
                }
              }
            }

            else if (v34)
            {
              v32 |= 0x200u;
              if (v17)
              {
                v47 = *(this + 18);
                LOWORD(v30) = (8 * v47) & 0x90 | v30 & 0xFF6F;
                v32 = (v47 >> 4) & 0x18 | v32 & 0xFFFFFE67 | (((v47 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v47 & 1) << 8);
                v22 = v22 & 0xFFFF87FF | (((v47 >> 2) & 3) << 11) & 0xFFFF9FFF | (((v47 >> 5) & 1) << 13) & 0xFFFFBFFF | (((v47 >> 9) & 1) << 14);
                v33 = v33 & 0xFFFFCF67 | ((*(this + 15) & 1) << 12) | (v47 >> 7) & 0x18 | (v47 >> 5) & 0x80;
                if (v12 <= 7)
                {
                  if (v12)
                  {
                    switch(v12)
                    {
                      case 1u:
                        LOWORD(v33) = v33 & 0xD8FF | 0x100;
                        break;
                      case 2u:
                        LOWORD(v33) = v33 & 0xD8FF | 0x200;
                        break;
                      case 3u:
                        LOWORD(v33) = v33 & 0xD8FF | 0x300;
                        break;
                      case 4u:
                        LOWORD(v33) = v33 & 0xD8FF | 0x400;
                        break;
                      case 5u:
                        LOWORD(v33) = v33 & 0xD8FF | 0x500;
                        break;
                      case 6u:
                        LOWORD(v33) = v33 & 0xD8FF | 0x600;
                        break;
                      default:
                        LOWORD(v33) = v33 | 0x700;
                        break;
                    }
                  }

                  else
                  {
                    LOWORD(v33) = v33 & 0xD8FF;
                  }
                }
              }

              else if (v24 || v26)
              {
                v48 = v33 | 0x2000;
                if (v24)
                {
                  v33 = *(this + 18);
                  LOWORD(v30) = (8 * v33) & 0x90 | v30 & 0xFF6F;
                  v32 = (v33 >> 4) & 0x18 | v32 & 0xFFFFFE67 | (((v33 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v33 & 1) << 8);
                  v22 = v22 & 0xFFFFC7FF | (((v33 >> 2) & 3) << 11) & 0xFFFFDFFF | (((v33 >> 5) & 1) << 13);
                  LOWORD(v33) = v48 & 0xFFE7 | (8 * (v11 & 1));
                }

                else if (v26)
                {
                  LOWORD(v33) = v33 | 0x2010;
                  v49 = *(this + 18);
                  LOWORD(v30) = (8 * v49) & 0x90 | v30 & 0xFF6F;
                  v32 = (v49 >> 4) & 0x18 | v32 & 0xFFFFFE67 | (((v49 >> 6) & 1) << 7) & 0xFFFFFEFF | ((v49 & 1) << 8);
                  v22 = v22 & 0xFFFFC7FF | (((v49 >> 2) & 3) << 11) & 0xFFFFDFFF | (((v49 >> 5) & 1) << 13);
                }

                else
                {
                  LOWORD(v33) = v33 | 0x2000;
                }
              }
            }

            goto LABEL_138;
          }

          if (v38 == 2)
          {
            v41 &= 0xFFFFFE7F;
            v42 = v37 & 0x40;
            if (!v40)
            {
              goto LABEL_91;
            }

LABEL_87:
            if (v40 == 1)
            {
              v41 = v41 & 0xFFFFF9FF | 0x400;
            }

            else if (v40 == 2)
            {
              v41 &= 0xFFFFF9FF;
            }

            goto LABEL_93;
          }

LABEL_86:
          v42 = v37 & 0x40;
          if (v40)
          {
            goto LABEL_87;
          }

          goto LABEL_91;
        }
      }

      else
      {
        if (!v39)
        {
          v41 |= 0x20u;
        }

        if (v38)
        {
          goto LABEL_80;
        }
      }

      v41 = v41 & 0xFFFFFE7F | 0x80;
      goto LABEL_86;
    }
  }

LABEL_138:
  *a2 = (v22 << 48) | (v33 << 32) | (v32 << 16) | v30;
  return a2 + 8;
}

uint64_t operator==(uint64_t a1, uint64_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(a1 + 44);
  if (v7 != *(a2 + 44))
  {
    v8 = 0;
    goto LABEL_22;
  }

  v8 = 0;
  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      if (v7 == 4)
      {
        v9 = *(a1 + 36);
        v10 = *(a2 + 36);
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (v7 != 6)
    {
      if (v7 != 7)
      {
        goto LABEL_22;
      }

      v11 = ((*(a2 + 40) ^ *(a1 + 40)) & 7) == 0 && *(a1 + 36) == *(a2 + 36);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }

LABEL_16:
    v9 = *(a1 + 36);
    v10 = *(a2 + 36);
    goto LABEL_18;
  }

LABEL_10:
  v9 = *(a1 + 36);
  v10 = *(a2 + 36);
LABEL_18:
  v11 = v9 == v10;
LABEL_19:
  v8 = v11;
LABEL_22:
  v12 = *(a1 + 72);
  if (v12 != *(a2 + 72))
  {
    v13 = 0;
    goto LABEL_43;
  }

  v13 = 0;
  if (v12 > 3)
  {
    if (v12 <= 5)
    {
      if (v12 == 4)
      {
        v14 = *(a1 + 64);
        v15 = *(a2 + 64);
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (v12 != 6)
    {
      if (v12 != 7)
      {
        goto LABEL_43;
      }

      v16 = ((*(a2 + 68) ^ *(a1 + 68)) & 7) == 0 && *(a1 + 64) == *(a2 + 64);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }

LABEL_37:
    v14 = *(a1 + 64);
    v15 = *(a2 + 64);
    goto LABEL_39;
  }

LABEL_31:
  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
LABEL_39:
  v16 = v14 == v15;
LABEL_40:
  v13 = v16;
LABEL_43:
  a7.i32[0] = *(a1 + 20);
  v17 = vextq_s8(a7, a7, 4uLL);
  a6.i64[0] = *(a1 + 28);
  v18 = vextq_s8(v17, a6, 0xCuLL);
  v18.i32[3] = *(a1 + 48);
  v17.i32[0] = *(a2 + 20);
  a5.i64[0] = *(a2 + 28);
  v19 = vextq_s8(vextq_s8(v17, v17, 4uLL), a5, 0xCuLL);
  v19.i32[3] = *(a2 + 48);
  v20 = vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(*(a1 + 4), *(a2 + 4)), vceqq_s32(v18, v19)))) & (*(a1 + 56) == *(a2 + 56));
  if (*(a1 + 60) != *(a2 + 60))
  {
    v20 = 0;
  }

  if (*(a1 + 76) != *(a2 + 76))
  {
    v20 = 0;
  }

  if (((*a2 ^ *a1) & 1) == 0 && *(a1 + 84) == *(a2 + 84) && *(a2 + 24) == *(a1 + 24))
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  if ((*(a2 + 52) ^ *(a1 + 52)))
  {
    v23 = 0;
  }

  return v23 & (((((*(a2 + 80) ^ *(a1 + 80)) | (*(a2 + 88) ^ *(a1 + 88))) & 1) == 0) & v13 & v8);
}

const void **std::__split_buffer<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad *,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad *>>::emplace_front<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

const void **std::__for_each_segment[abi:nn200100]<std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const* const*,long,64l>,std::__copy_impl::_CopySegment<std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad const* const*,long,64l>,std::__deque_iterator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad&,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::InflightLoad**,long,64l>>>(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v10 = *v9;
      while (1)
      {
        v11 = (v10 - v8 + 4096) >> 6;
        if ((a4 - v7) >> 6 < v11)
        {
          v11 = (a4 - v7) >> 6;
        }

        v12 = v11 << 6;
        if (v11)
        {
          result = memmove(v8, v7, v11 << 6);
        }

        v7 += v12;
        if (v7 == a4)
        {
          break;
        }

        v13 = v9[1];
        ++v9;
        v10 = v13;
        v8 = v13;
      }

      v8 += v12;
      if ((*v9 + 4096) == v8)
      {
        v37 = v9[1];
        ++v9;
        v8 = v37;
      }
    }

    *a5 = v9;
  }

  else
  {
    v15 = result;
    v16 = *result + 4096;
    v17 = *a5;
    v8 = *(a5 + 8);
    if (v16 != __len)
    {
      v18 = *v17;
      while (1)
      {
        v19 = (v18 - v8 + 4096) >> 6;
        if ((v16 - v7) >> 6 < v19)
        {
          v19 = (v16 - v7) >> 6;
        }

        v20 = v19 << 6;
        if (v19)
        {
          result = memmove(v8, v7, v19 << 6);
        }

        v7 += v20;
        if (v7 == v16)
        {
          break;
        }

        v21 = v17[1];
        ++v17;
        v18 = v21;
        v8 = v21;
      }

      v8 += v20;
      if ((*v17 + 4096) == v8)
      {
        v22 = v17[1];
        ++v17;
        v8 = v22;
      }
    }

    *a5 = v17;
    *(a5 + 8) = v8;
    for (i = v15 + 1; i != a3; ++i)
    {
      v24 = 0;
      v25 = *i;
      v26 = *v17;
      while (1)
      {
        v27 = (v26 - v8 + 4096) >> 6;
        if ((4096 - v24) >> 6 < v27)
        {
          v27 = (4096 - v24) >> 6;
        }

        v28 = v27 << 6;
        if (v27)
        {
          result = memmove(v8, &v25[v24], v27 << 6);
        }

        v24 += v28;
        if (v24 == 4096)
        {
          break;
        }

        v29 = v17[1];
        ++v17;
        v26 = v29;
        v8 = v29;
      }

      v8 += v28;
      if ((*v17 + 4096) == v8)
      {
        v30 = v17[1];
        ++v17;
        v8 = v30;
      }

      *a5 = v17;
      *(a5 + 8) = v8;
    }

    v31 = *i;
    if (*i != a4)
    {
      v32 = *v17;
      while (1)
      {
        v33 = (v32 - v8 + 4096) >> 6;
        if ((a4 - v31) >> 6 < v33)
        {
          v33 = (a4 - v31) >> 6;
        }

        v34 = v33 << 6;
        if (v33)
        {
          result = memmove(v8, v31, v33 << 6);
        }

        v31 += v34;
        if (v31 == a4)
        {
          break;
        }

        v35 = v17[1];
        ++v17;
        v32 = v35;
        v8 = v35;
      }

      v8 += v34;
      if ((*v17 + 4096) == v8)
      {
        v36 = v17[1];
        ++v17;
        v8 = v36;
      }
    }

    *a5 = v17;
  }

  *(a5 + 8) = v8;
  return result;
}

unsigned __int8 *AGXIotoInstruction_LDDEV_0::emit(AGXIotoInstruction_LDDEV_0 *this, unsigned __int8 *a2)
{
  v2 = *(this + 24);
  if (v2 > 3)
  {
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v3 = (v2 < 2) & v2;
    v5 = (v2 & 1) == 0 && v2 > 1;
  }

  if (v2 == 32 || v2 == 64)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3;
  }

  if (!*(this + 24))
  {
    v7 = 1;
  }

  v108 = v5;
  v109 = v3;
  v8 = v5 | v7;
  if (v2 == 4)
  {
    v8 = 1;
  }

  if (v2 == 8)
  {
    v8 = 1;
  }

  if (v2 == 16)
  {
    v8 = 1;
  }

  v116 = v8;
  v9 = *(this + 24);
  v110 = v9;
  v10 = (v9 | 4) == 4 || (v9 & 0xFFFFFFFE) == 2;
  v115 = v10;
  v11 = *(this + 92);
  v12 = *(this + 39);
  v56 = v12 >= 6;
  v106 = v12;
  v13 = v12 & 0xFFFFFFFE;
  v15 = !v56 || v13 == 6;
  v16 = *(this + 36) & 0xF;
  v17 = *(this + 68);
  v18 = *(this + 36) == 2 && *(this + 40) == 0;
  v19 = !v18;
  v105 = *(this + 68);
  if (v18 && v16 == 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = ((v17 & 0x100) == 0) & v15;
  }

  else
  {
    if (v16 == 2)
    {
      v28 = v19;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v16 == 4)
      {
        v29 = v19;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        if (v16 == 8)
        {
          v30 = v19;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          if (v16 == 9)
          {
            v31 = v19;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            if (v16 == 3)
            {
              v32 = v19;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              if (v16 == 7)
              {
                v33 = v19;
              }

              else
              {
                v33 = 1;
              }

              if (v33)
              {
                v20 = 0;
                v21 = 0;
                v22 = 0;
                v27 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 0;
                v34 = (v16 == 15) & ~v19;
                if ((*(this + 68) & 0x100) != 0)
                {
                  v34 = 0;
                }

                v26 = v34 & v15;
              }

              else
              {
                v21 = 0;
                v22 = 0;
                v27 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 0;
                v26 = 0;
                v20 = ((v17 & 0x100) == 0) & v15;
              }
            }

            else
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v27 = 0;
              v23 = 0;
              v24 = 0;
              v26 = 0;
              v25 = ((v17 & 0x100) == 0) & v15;
            }
          }

          else
          {
            v20 = 0;
            v22 = 0;
            v27 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v21 = ((v17 & 0x100) == 0) & v15;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v27 = 0;
          v23 = 0;
          v25 = 0;
          v26 = 0;
          v24 = ((v17 & 0x100) == 0) & v15;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v27 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v22 = ((v17 & 0x100) == 0) & v15;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v27 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v23 = ((v17 & 0x100) == 0) & v15;
    }
  }

  v100 = v22;
  v97 = v21;
  v98 = v24;
  v96 = v20;
  v35 = v23 | v22 | v24 | v21 | v25 | v20;
  v36 = *(this + 12);
  v102 = v23;
  if (*(this + 64))
  {
    v39 = 0;
    v41 = 0;
    v42 = 0;
    v37 = (*(this + 20) & 0x100) == 0 && v36 == 2;
  }

  else
  {
    v37 = 0;
    v38 = v36 == 3;
    v39 = v36 == 2;
    v40 = v36 == 1;
    if (*(this + 56))
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = (*(this + 20) & 0x100) == 0 && v38;
    if ((*(this + 20) & 0x100) != 0)
    {
      v39 = 0;
    }

    v42 = (*(this + 20) & 0xFD00) == 0 && v40;
  }

  v95 = v26;
  v44 = v35 | v26;
  v111 = v41;
  v45 = v41 || v39 || v42;
  v46 = *(this + 22);
  v47 = *(this + 19);
  v112 = *(this + 20);
  v48 = v112 - 1;
  v104 = *(this + 20);
  v99 = v42;
  v103 = v39;
  if (*(this + 92))
  {
    v114 = 0;
  }

  else
  {
    v51 = (*(this + 84) & 1) == 0 && v47 == 3 && v46 == 8;
    if ((*(this + 34) & 0x100) != 0)
    {
      v51 = 0;
    }

    if (v48 >= 2)
    {
      v51 = 0;
    }

    v114 = v51;
  }

  v107 = v27;
  v101 = v37;
  v52 = v45 | v37;
  v53 = v11 & 1;
  v54 = v53 == 0;
  if (v47 != 2)
  {
    v54 = 0;
  }

  if (v46 == 8)
  {
    v55 = v11 & (v47 == 2);
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v56 = (*(this + 34) & 0x100) != 0 || v48 >= 2;
  v57 = !v56 && v54;
  v113 = v57;
  if (v56)
  {
    v55 = 0;
  }

  if (v53)
  {
    v62 = *(this + 34);
    v63 = 0;
  }

  else
  {
    v61 = (*(this + 84) & 1) == 0 && v47 == 1 && v112 == 1 && v46 == 8;
    v62 = *(this + 34);
    v63 = (*(this + 34) & 0xFD00) == 0 && v61;
  }

  v64 = 0;
  if (*this & 1 | *(this + 5) | *(this + 4) | *(this + 3) | *(this + 2) | *(this + 1) | *(this + 132) & 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = *(this + 28) == 1;
  }

  v66 = v65;
  if (*(this + 120))
  {
    v66 = 0;
  }

  if (*(this + 128))
  {
    v66 = 0;
  }

  if (*(this + 13) != 3)
  {
    v66 = 0;
  }

  if ((*(this + 92) & 2) != 0)
  {
    v66 = 0;
  }

  if (*(this + 40))
  {
    v66 = 0;
  }

  if (*(this + 29) != 1)
  {
    v66 = 0;
  }

  if (*(this + 31) != 8)
  {
    v66 = 0;
  }

  if (*(this + 15) != 8)
  {
    v66 = 0;
  }

  if (*(this + 7) != 104)
  {
    v66 = 0;
  }

  if (*(this + 8))
  {
    v66 = 0;
  }

  if (*(this + 52) != 15)
  {
    v66 = 0;
  }

  if (*(this + 50) >= 0x100u)
  {
    v66 = 0;
  }

  v67 = v66 & v116 & v115 & (v27 | v44);
  if ((*(this + 37) - 1) >= 2)
  {
    v67 = 0;
  }

  v68 = 7;
  LOWORD(v69) = 3;
  if (v67 & v52) == 1 && (v71 = v113, v70 = v114, (((v114 || v113) | v55 | v63)))
  {
    v72 = v55;
    v73 = *(this + 41);
    v74 = 0;
    if (v73 <= 1)
    {
      if (v109)
      {
        v75 = 0x2000;
      }

      else
      {
        v75 = 0x4000;
      }

      if (*(this + 24))
      {
        v76 = v109;
      }

      else
      {
        v76 = 1;
      }

      v77 = v108 | v76;
      if (!*(this + 24))
      {
        v75 = 0;
      }

      if (v2 == 4)
      {
        v78 = 1;
      }

      else
      {
        v78 = v77;
      }

      if (v2 == 4)
      {
        v79 = 24576;
      }

      else
      {
        v79 = 0x8000;
      }

      if (v2 == 8)
      {
        v78 = 1;
      }

      if (!v77)
      {
        v75 = v79;
      }

      if (v2 == 16)
      {
        v80 = 1;
      }

      else
      {
        v80 = v78;
      }

      if (v2 == 16)
      {
        v81 = -24576;
      }

      else
      {
        v81 = -16384;
      }

      v82 = 32 * *(this + 50);
      if (v2 == 32)
      {
        v80 = 1;
      }

      if (!v78)
      {
        v75 = v81;
      }

      if (v2 == 64)
      {
        v83 = -8192;
      }

      else
      {
        v83 = 0;
      }

      if (v80)
      {
        v74 = v75;
      }

      else
      {
        v74 = v83;
      }

      if (v110 != 3)
      {
        v84 = v62;
        if (v110 == 2)
        {
          v82 |= 0x4000u;
        }

        else if (!v110)
        {
          v82 |= 0x2000u;
          if (!v107)
          {
LABEL_222:
            if (v102)
            {
              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v86 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v86 | 0x20;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              if (v106)
              {
                if (v106 != 1)
                {
                  if (v106 != 2)
                  {
                    if (v106 == 3)
                    {
                      v74 = v86 | 0x38;
                      goto LABEL_298;
                    }

                    if (v106 != 4)
                    {
                      if (v106 != 5)
                      {
                        if (v106 != 6)
                        {
                          v74 = v86 | 0x38;
                          v82 |= 0x10u;
                          goto LABEL_299;
                        }

                        goto LABEL_335;
                      }

LABEL_295:
                      v74 = v74 & 0xFFE7 | 8;
                      v82 |= 0x10u;
                      goto LABEL_299;
                    }

                    goto LABEL_331;
                  }

                  goto LABEL_297;
                }

                goto LABEL_277;
              }

              goto LABEL_278;
            }

            if (v100)
            {
              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v87 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v87 | 0x40;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              switch(v106)
              {
                case 0u:
                  goto LABEL_278;
                case 1u:
                  goto LABEL_277;
                case 2u:
                  goto LABEL_297;
                case 3u:
                  v88 = 88;
LABEL_236:
                  v74 = v87 | v88;
                  goto LABEL_298;
                case 4u:
                  goto LABEL_331;
                case 5u:
                  goto LABEL_295;
              }

              if (v106 != 6)
              {
                v90 = 88;
LABEL_283:
                v74 = v87 | v90;
                v82 |= 0x10u;
                goto LABEL_299;
              }

              goto LABEL_335;
            }

            if (v98)
            {
              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v89 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v89 | 0x60;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              if (v106)
              {
                if (v106 != 1)
                {
                  if (v106 != 2)
                  {
                    if (v106 == 3)
                    {
                      v74 = v89 | 0x78;
                      goto LABEL_298;
                    }

                    if (v106 != 4)
                    {
                      if (v106 != 5)
                      {
                        if (v106 != 6)
                        {
                          v74 = v89 | 0x78;
                          v82 |= 0x10u;
                          goto LABEL_299;
                        }

                        goto LABEL_335;
                      }

                      goto LABEL_295;
                    }

LABEL_331:
                    v74 &= 0xFFE7u;
                    v82 |= 0x10u;
                    goto LABEL_299;
                  }

LABEL_297:
                  v74 = v74 & 0xFFE7 | 0x10;
                  goto LABEL_298;
                }

LABEL_277:
                v74 = v74 & 0xFFE7 | 8;
                goto LABEL_298;
              }

LABEL_278:
              v74 &= 0xFFE7u;
              goto LABEL_298;
            }

            if (v97)
            {
              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v87 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v87 | 0x800;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              switch(v106)
              {
                case 0u:
                  goto LABEL_278;
                case 1u:
                  goto LABEL_277;
                case 2u:
                  goto LABEL_297;
                case 3u:
                  v88 = 2072;
                  goto LABEL_236;
                case 4u:
                  goto LABEL_331;
                case 5u:
                  goto LABEL_295;
              }

              if (v106 != 6)
              {
                v90 = 2072;
                goto LABEL_283;
              }

LABEL_335:
              v74 = v74 & 0xFFE7 | 0x10;
              v82 |= 0x10u;
              goto LABEL_299;
            }

            if (v25)
            {
              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v87 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v87 | 0x820;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              switch(v106)
              {
                case 0u:
                  goto LABEL_278;
                case 1u:
                  goto LABEL_277;
                case 2u:
                  goto LABEL_297;
                case 3u:
                  v88 = 2104;
                  goto LABEL_236;
                case 4u:
                  goto LABEL_331;
                case 5u:
                  goto LABEL_295;
              }

              if (v106 != 6)
              {
                v90 = 2104;
                goto LABEL_283;
              }

              goto LABEL_335;
            }

            if (v96)
            {
              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v87 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v87 | 0x840;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              switch(v106)
              {
                case 0u:
                  goto LABEL_278;
                case 1u:
                  goto LABEL_277;
                case 2u:
                  goto LABEL_297;
                case 3u:
                  v88 = 2136;
                  goto LABEL_236;
                case 4u:
                  goto LABEL_331;
              }

              if (v106 != 5)
              {
                if (v106 != 6)
                {
                  v94 = 2136;
LABEL_347:
                  v74 = v87 | v94;
                  goto LABEL_348;
                }

LABEL_345:
                v74 = v74 & 0xFFE7 | 0x10;
                goto LABEL_348;
              }
            }

            else
            {
              LOWORD(v85) = 7;
              if (!v95)
              {
                v69 = 3;
                goto LABEL_299;
              }

              v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
              v87 = (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1)) | v74;
              v74 = v87 | 0x860;
              v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v106 > 7)
              {
                goto LABEL_299;
              }

              switch(v106)
              {
                case 0u:
                  goto LABEL_278;
                case 1u:
                  goto LABEL_277;
                case 2u:
                  goto LABEL_297;
                case 3u:
                  v88 = 2168;
                  goto LABEL_236;
                case 4u:
                  v74 = v87 & 0xF787 | 0x860;
LABEL_348:
                  v82 |= 0x10u;
                  v71 = v113;
                  v70 = v114;
LABEL_299:
                  v68 = v85 | (8 * (*(this + 37) != 1));
                  if (v111)
                  {
                    v74 &= 0xFE7Fu;
                    v68 |= v104 << 8;
                    goto LABEL_307;
                  }

                  if (v103)
                  {
                    v74 = v74 & 0xFE7F | 0x80;
                  }

                  else
                  {
                    if (!v101)
                    {
                      if (!v99)
                      {
LABEL_307:
                        if (v70)
                        {
                          v74 &= 0xF9FFu;
                          LOWORD(v69) = v69 | (v84 << 8) & 0xFE00;
                          v82 = v82 & 0xFFFFFFFE | v84 & 1;
                          if ((v112 - 1) <= 1)
                          {
                            if (v112 == 2)
                            {
                              LOWORD(v69) = v69 & 0xFEFF;
                              if (!v73)
                              {
                                goto LABEL_320;
                              }
                            }

                            else
                            {
                              LOWORD(v69) = v69 | 0x100;
                              if (!v73)
                              {
                                goto LABEL_320;
                              }
                            }

LABEL_328:
                            v64 = v82 | 8;
                            goto LABEL_329;
                          }

                          goto LABEL_327;
                        }

                        if (v71)
                        {
                          v74 = v74 & 0xF9FF | 0x200;
                        }

                        else
                        {
                          if (!v72)
                          {
                            if (v63)
                            {
                              v74 = v74 & 0xF9FF | 0x400;
                              v69 = (v84 >> 5) & 0x10 | (v84 >> 1 << 9) | v69 & 0xFFFFFFEF;
                              v82 = v82 & 0xFFFFFFFE | v84 & 1;
                            }

LABEL_327:
                            if (v73)
                            {
                              goto LABEL_328;
                            }

                            goto LABEL_320;
                          }

                          v74 |= 0x600u;
                        }

                        v82 = v82 & 0xFFFFFFFE | v84 & 1;
                        if (v112 == 2)
                        {
                          LOWORD(v69) = (v84 << 8) & 0xFE00 | (16 * (*(this + 84) & 1)) | v69 & 0xFEEF;
                          if (!v73)
                          {
                            goto LABEL_320;
                          }

                          goto LABEL_328;
                        }

                        LOWORD(v69) = (v84 << 8) & 0xFE00 | (16 * (*(this + 84) & 1)) | v69 & 0xFFEF | 0x100;
                        if (v73)
                        {
                          goto LABEL_328;
                        }

LABEL_320:
                        v64 = v82 & 0xFFFFFFF7;
                        goto LABEL_329;
                      }

                      v74 = v74 & 0xFE7F | 0x100;
                      v68 |= v104 << 8;
                      v91 = v69 & 0xFFFFFFF7;
                      v92 = (v104 >> 6) & 8;
LABEL_306:
                      v69 = v91 | v92;
                      goto LABEL_307;
                    }

                    v74 |= 0x180u;
                  }

                  v68 |= v104 << 8;
                  v91 = v69 & 0xFFFFFFF7;
                  v92 = 8 * (*(this + 56) & 1);
                  goto LABEL_306;
              }

              if (v106 != 5)
              {
                if (v106 != 6)
                {
                  v94 = 2168;
                  goto LABEL_347;
                }

                goto LABEL_345;
              }
            }

            v74 = v74 & 0xFFE7 | 8;
            goto LABEL_348;
          }

LABEL_215:
          v85 = (16 * ((v105 >> 1) & 0xF)) | 7;
          v74 |= (32 * *(this + 68)) & 0x1000 | (4 * (*(this + 68) & 1));
          v69 = (2 * v105) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
          if (v106 > 7)
          {
            goto LABEL_299;
          }

          switch(v106)
          {
            case 0u:
              goto LABEL_278;
            case 1u:
              goto LABEL_277;
            case 2u:
              goto LABEL_297;
            case 3u:
              v74 |= 0x18u;
LABEL_298:
              v82 &= ~0x10u;
              goto LABEL_299;
            case 4u:
              goto LABEL_331;
            case 5u:
              goto LABEL_295;
          }

          if (v106 != 6)
          {
            v74 |= 0x18u;
            v82 |= 0x10u;
            goto LABEL_299;
          }

          goto LABEL_335;
        }

        if (!v107)
        {
          goto LABEL_222;
        }

        goto LABEL_215;
      }

      v82 |= 0x6000u;
      v84 = v62;
      if (!v107)
      {
        goto LABEL_222;
      }

      goto LABEL_215;
    }
  }

  else
  {
    v74 = 0;
  }

LABEL_329:
  *a2 = (v64 << 48) | (v74 << 32) | (v69 << 16) | v68;
  return a2 + 8;
}

unsigned __int8 *AGXIotoInstruction_LDDEV_1::emit(AGXIotoInstruction_LDDEV_1 *this, unsigned __int8 *a2)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = *(this + 1);
  v7 = v5 == 0;
  v8 = v3 | v2 | v4;
  v9 = v8 == 0;
  if (v5 != 1)
  {
    v9 = 0;
  }

  v10 = v4 == 2 && *(this + 2) == 0;
  v11 = v5 == 2;
  v12 = v5 == 2 && v10;
  v13 = v6 == 2 && v5 == 0;
  v14 = v6 == 2 && v9;
  v311 = v14;
  v15 = v6 == 2 && v5 == 2;
  v16 = v8 == 0;
  v320 = *(this + 40);
  v17 = v5 | v6;
  v18 = v8 | v17;
  v19 = v16 && v13;
  v314 = v19;
  v20 = v16 && v15;
  v305 = v20;
  v317 = v18 == 0;
  v21 = v4 == 1 && *(this + 2) == 0;
  if (v6 == 1)
  {
    v22 = v11;
  }

  else
  {
    v7 = 0;
    v22 = 0;
  }

  v23 = v17 == 0;
  v24 = v17 == 0;
  v25 = v23 && v21;
  v302 = v25;
  v26 = v23 && v10;
  v292 = v26;
  if (v6)
  {
    v27 = 0;
  }

  else
  {
    v27 = v9;
  }

  v308 = v27;
  v300 = v21 && v7;
  v298 = v21 && v13;
  v272 = v15;
  v274 = v10;
  v318 = v21;
  v294 = v21 && v15;
  v290 = v10 && v7;
  if (v6)
  {
    v28 = 0;
  }

  else
  {
    v28 = v12;
  }

  v286 = v28;
  v270 = v22;
  if (v3)
  {
    v283 = 0;
  }

  else
  {
    v30 = v2 == 1 && v4 == 0;
    v283 = v30 && v24;
  }

  v31 = *(this + 24);
  v32 = v31 & 2;
  v33 = (v32 == 0) & v31;
  if (v31 < 4)
  {
    v34 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = v34;
  }

  else
  {
    v35 = 1;
  }

  v36 = v32 >> 1;
  v312 = v31 < 4u;
  v37 = (v32 >> 1) & ((v31 & 1) == 0);
  if (v31 < 4u)
  {
    v38 = (v32 >> 1) & ((v31 & 1) == 0);
  }

  else
  {
    v38 = 0;
  }

  v39 = v31 & 0xFC;
  v40 = v35 | v38;
  v251 = v34;
  v252 = v40;
  if (v31 == 4)
  {
    LOBYTE(v40) = 1;
  }

  v309 = v40;
  v42 = (~v31 & 0x3C) == 0 && v31 > 0xBFu;
  v295 = v42;
  v303 = v39 == 4;
  if (v39 == 4)
  {
    v43 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v43 = 0;
  }

  if (v39 == 4)
  {
    v44 = v37;
  }

  else
  {
    v44 = 0;
  }

  v315 = v39 == 8;
  if (v39 == 8)
  {
    v45 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v45 = 0;
  }

  if (v39 == 8)
  {
    v46 = v37;
  }

  else
  {
    v46 = 0;
  }

  v287 = v39 == 16;
  if (v39 == 16)
  {
    v47 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v47 = 0;
  }

  if (v39 == 16)
  {
    v48 = v37;
  }

  else
  {
    v48 = 0;
  }

  v285 = v39 == 20;
  if (v39 == 20)
  {
    v49 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v49 = 0;
  }

  if (v39 == 20)
  {
    v50 = v37;
  }

  else
  {
    v50 = 0;
  }

  if (v39 == 24)
  {
    v51 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v51 = 0;
  }

  if (v39 == 24)
  {
    v52 = v37;
  }

  else
  {
    v52 = 0;
  }

  v267 = v39 == 28;
  if (v39 == 28)
  {
    v53 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v53 = 0;
  }

  if (v39 == 28)
  {
    v54 = v37;
  }

  else
  {
    v54 = 0;
  }

  v263 = v39 == 32;
  if (v39 == 32)
  {
    v55 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v55 = 0;
  }

  if (v39 == 32)
  {
    v56 = v37;
  }

  else
  {
    v56 = 0;
  }

  v269 = v39 == 24;
  v268 = v39 == 36;
  if (v39 == 36)
  {
    v57 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v57 = 0;
  }

  if (v39 == 36)
  {
    v58 = v37;
  }

  else
  {
    v58 = 0;
  }

  v266 = v31 == 40;
  v265 = v39 == 40;
  if (v39 == 40)
  {
    v59 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v59 = 0;
  }

  if (v39 == 40)
  {
    v60 = v37;
  }

  else
  {
    v60 = 0;
  }

  v264 = v31 == 44;
  v262 = v39 == 44;
  if (v39 == 44)
  {
    v61 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v61 = 0;
  }

  v276 = v61;
  if (v39 == 44)
  {
    v62 = v37;
  }

  else
  {
    v62 = 0;
  }

  v277 = v62;
  v261 = v31 == 48;
  v256 = v39 == 48;
  if (v39 == 48)
  {
    v63 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v63 = 0;
  }

  if (v39 == 48)
  {
    v64 = v37;
  }

  else
  {
    v64 = 0;
  }

  v257 = v31 == 52;
  v306 = v39 == 52;
  if (v39 == 52)
  {
    v65 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v65 = 0;
  }

  v280 = v65;
  if (v39 == 52)
  {
    v66 = v37;
  }

  else
  {
    v66 = 0;
  }

  v259 = v31 == 56;
  v254 = v39 == 56;
  if (v39 == 56)
  {
    v67 = ((v31 & 2) == 0) & v31;
  }

  else
  {
    v67 = 0;
  }

  v281 = v67;
  if (v39 == 56)
  {
    v68 = v37;
  }

  else
  {
    v68 = 0;
  }

  v69 = v31 == 60;
  v70 = v36 & v31;
  if (v39 != 60)
  {
    v33 = 0;
  }

  v279 = v33;
  if (v39 == 60)
  {
    v71 = v37;
  }

  else
  {
    v71 = 0;
  }

  v278 = v71;
  v72 = v39 == 60;
  v73 = v309;
  if (v31 == 8)
  {
    v73 = 1;
  }

  v253 = v31;
  if (v31 == 16)
  {
    v73 = 1;
  }

  v249 = v295 & v70;
  v246 = v43;
  v247 = v312 & v70;
  v244 = v45;
  v245 = v44;
  v242 = v303 & v70;
  v243 = v46;
  v240 = v48;
  v241 = v47;
  v239 = v287 & v70;
  v237 = v285 & v70;
  v238 = v50;
  v235 = v52;
  v236 = v51;
  v233 = v53;
  v234 = v269 & v70;
  v74 = (v31 == 24) | (v31 == 20) | v49 | v50 | v285 & v70 | v51 | v52 | v269 & v70 | (v31 == 12) | v45 | v46 | v303 & v70 | v47 | v48 | v287 & v70 | (v31 == 128 || v31 == 64 || v31 == 32) | v295 & v70 | v312 & v70 | v43 | v44 | v73;
  v222 = v54;
  v223 = v55;
  v213 = v267 & v70;
  v214 = v315 & v70;
  v224 = v56;
  v225 = v57;
  v215 = v263 & v70;
  v75 = (v31 == 36) | (v31 == 28) | v53 | v54 | v267 & v70 | v315 & v70 | v55 | v56 | v263 & v70;
  v226 = v58;
  v227 = v59;
  v228 = v60;
  v229 = v63;
  v216 = v268 & v70;
  v217 = v265 & v70;
  v76 = v264 | v266 | v57 | v58 | v268 & v70 | v59 | v60 | v265 & v70;
  v218 = v262 & v70;
  v77 = v261 | v262 & v70 | v63;
  v78 = this;
  v230 = v64;
  v220 = v256 & v70;
  v79 = v257 | v77 | v64 | v256 & v70;
  v232 = v68;
  v221 = v254 & v70;
  v80 = v69 | v68 | v254 & v70;
  v81 = *(this + 39);
  v82 = v81 < 6 || (v81 & 0xFFFFFFFE) == 6;
  v83 = v318 && v270;
  v231 = v66;
  v219 = v306 & v70;
  v84 = v79 | v280 | v66 | v306 & v70;
  v85 = *(this + 36);
  v86 = v82;
  v87 = *(this + 36) & 0xF;
  v88 = v85 == 2 && v320 == 0;
  v89 = *(this + 68);
  v90 = !v88;
  if (v88 && v87 == 1)
  {
    v284 = 0;
    v291 = 0;
    v296 = 0;
    v299 = 0;
    v304 = 0;
    v310 = 0;
    v316 = 0;
    v313 = 0;
    v307 = 0;
    v301 = 0;
    v297 = 0;
    v293 = 0;
    v288 = 0;
    v319 = ((v89 & 0x100) == 0) & v86;
    v91 = v274;
  }

  else
  {
    if (v87 == 2)
    {
      v92 = v90;
    }

    else
    {
      v92 = 1;
    }

    v91 = v274;
    if (v92)
    {
      if (v87 == 4)
      {
        v93 = v90;
      }

      else
      {
        v93 = 1;
      }

      if (v93)
      {
        if (v87 == 8)
        {
          v94 = v90;
        }

        else
        {
          v94 = 1;
        }

        if (v94)
        {
          if (v87 == 9)
          {
            v95 = v90;
          }

          else
          {
            v95 = 1;
          }

          if (v95)
          {
            if (v87 == 3)
            {
              v96 = v90;
            }

            else
            {
              v96 = 1;
            }

            if (v96)
            {
              if (v87 == 7)
              {
                v97 = v90;
              }

              else
              {
                v97 = 1;
              }

              if (v97)
              {
                if (v87 == 15)
                {
                  v98 = v90;
                }

                else
                {
                  v98 = 1;
                }

                if (v98)
                {
                  if (v87 == 5)
                  {
                    v99 = v90;
                  }

                  else
                  {
                    v99 = 1;
                  }

                  if (v99)
                  {
                    if (v87 == 6)
                    {
                      v100 = v90;
                    }

                    else
                    {
                      v100 = 1;
                    }

                    if (v100)
                    {
                      if (v87 == 10)
                      {
                        v101 = v90;
                      }

                      else
                      {
                        v101 = 1;
                      }

                      if (v101)
                      {
                        if (v87 == 12)
                        {
                          v102 = v90;
                        }

                        else
                        {
                          v102 = 1;
                        }

                        if (v102)
                        {
                          if (v87 == 13)
                          {
                            v103 = v90;
                          }

                          else
                          {
                            v103 = 1;
                          }

                          if (v103)
                          {
                            if (v87 == 11)
                            {
                              v104 = v90;
                            }

                            else
                            {
                              v104 = 1;
                            }

                            if (v104)
                            {
                              HIDWORD(v284) = 0;
                              v291 = 0;
                              v296 = 0;
                              v299 = 0;
                              v304 = 0;
                              v310 = 0;
                              v316 = 0;
                              v319 = 0;
                              v313 = 0;
                              v307 = 0;
                              v301 = 0;
                              v297 = 0;
                              v293 = 0;
                              v288 = 0;
                              v105 = (v87 == 14) & ~v90;
                              if ((v89 & 0x100) != 0)
                              {
                                v105 = 0;
                              }

                              LODWORD(v284) = v105 & v86;
                            }

                            else
                            {
                              v291 = 0;
                              v296 = 0;
                              v299 = 0;
                              v304 = 0;
                              v310 = 0;
                              v316 = 0;
                              v319 = 0;
                              v313 = 0;
                              v307 = 0;
                              v301 = 0;
                              v297 = 0;
                              v293 = 0;
                              v288 = 0;
                              LODWORD(v284) = 0;
                              HIDWORD(v284) = ((v89 & 0x100) == 0) & v86;
                            }
                          }

                          else
                          {
                            v284 = 0;
                            v291 = 0;
                            v296 = 0;
                            v299 = 0;
                            v304 = 0;
                            v310 = 0;
                            v316 = 0;
                            v319 = 0;
                            v313 = 0;
                            v307 = 0;
                            v301 = 0;
                            v297 = 0;
                            v293 = 0;
                            v288 = ((v89 & 0x100) == 0) & v86;
                          }
                        }

                        else
                        {
                          v284 = 0;
                          v296 = 0;
                          v299 = 0;
                          v304 = 0;
                          v310 = 0;
                          v316 = 0;
                          v319 = 0;
                          v313 = 0;
                          v307 = 0;
                          v301 = 0;
                          v297 = 0;
                          v293 = 0;
                          v288 = 0;
                          v291 = ((v89 & 0x100) == 0) & v86;
                        }
                      }

                      else
                      {
                        v284 = 0;
                        v291 = 0;
                        v296 = 0;
                        v299 = 0;
                        v304 = 0;
                        v310 = 0;
                        v316 = 0;
                        v319 = 0;
                        v313 = 0;
                        v307 = 0;
                        v301 = 0;
                        v297 = 0;
                        v288 = 0;
                        v293 = ((v89 & 0x100) == 0) & v86;
                      }
                    }

                    else
                    {
                      v284 = 0;
                      v291 = 0;
                      v299 = 0;
                      v304 = 0;
                      v310 = 0;
                      v316 = 0;
                      v319 = 0;
                      v313 = 0;
                      v307 = 0;
                      v301 = 0;
                      v297 = 0;
                      v293 = 0;
                      v288 = 0;
                      v296 = ((v89 & 0x100) == 0) & v86;
                    }
                  }

                  else
                  {
                    v284 = 0;
                    v291 = 0;
                    v296 = 0;
                    v299 = 0;
                    v304 = 0;
                    v310 = 0;
                    v316 = 0;
                    v319 = 0;
                    v313 = 0;
                    v307 = 0;
                    v301 = 0;
                    v293 = 0;
                    v288 = 0;
                    v297 = ((v89 & 0x100) == 0) & v86;
                  }
                }

                else
                {
                  v284 = 0;
                  v291 = 0;
                  v296 = 0;
                  v304 = 0;
                  v310 = 0;
                  v316 = 0;
                  v319 = 0;
                  v313 = 0;
                  v307 = 0;
                  v301 = 0;
                  v297 = 0;
                  v293 = 0;
                  v288 = 0;
                  v299 = ((v89 & 0x100) == 0) & v86;
                }
              }

              else
              {
                v284 = 0;
                v291 = 0;
                v296 = 0;
                v299 = 0;
                v304 = 0;
                v310 = 0;
                v316 = 0;
                v319 = 0;
                v313 = 0;
                v307 = 0;
                v297 = 0;
                v293 = 0;
                v288 = 0;
                v301 = ((v89 & 0x100) == 0) & v86;
              }
            }

            else
            {
              v284 = 0;
              v291 = 0;
              v296 = 0;
              v299 = 0;
              v310 = 0;
              v316 = 0;
              v319 = 0;
              v313 = 0;
              v307 = 0;
              v301 = 0;
              v297 = 0;
              v293 = 0;
              v288 = 0;
              v304 = ((v89 & 0x100) == 0) & v86;
            }
          }

          else
          {
            v284 = 0;
            v291 = 0;
            v296 = 0;
            v299 = 0;
            v304 = 0;
            v310 = 0;
            v316 = 0;
            v319 = 0;
            v313 = 0;
            v301 = 0;
            v297 = 0;
            v293 = 0;
            v288 = 0;
            v307 = ((v89 & 0x100) == 0) & v86;
          }
        }

        else
        {
          v284 = 0;
          v291 = 0;
          v296 = 0;
          v299 = 0;
          v304 = 0;
          v316 = 0;
          v319 = 0;
          v313 = 0;
          v307 = 0;
          v301 = 0;
          v297 = 0;
          v293 = 0;
          v288 = 0;
          v310 = ((v89 & 0x100) == 0) & v86;
        }
      }

      else
      {
        v284 = 0;
        v291 = 0;
        v296 = 0;
        v299 = 0;
        v304 = 0;
        v310 = 0;
        v316 = 0;
        v319 = 0;
        v307 = 0;
        v301 = 0;
        v297 = 0;
        v293 = 0;
        v288 = 0;
        v313 = ((v89 & 0x100) == 0) & v86;
      }
    }

    else
    {
      v284 = 0;
      v291 = 0;
      v296 = 0;
      v299 = 0;
      v304 = 0;
      v310 = 0;
      v319 = 0;
      v313 = 0;
      v307 = 0;
      v301 = 0;
      v297 = 0;
      v293 = 0;
      v288 = 0;
      v316 = ((v89 & 0x100) == 0) & v86;
    }
  }

  v106 = v91 && v270;
  v107 = v83;
  v108 = v259 | v84;
  v109 = v80 | v279;
  v110 = v81 == 8 && (v85 | v320 | *(this + 152) & 1 | v87 | v89 & 1) == 0;
  v271 = *(this + 39);
  v111 = v91 && v272;
  v112 = v72 & v70;
  v113 = *(this + 12);
  if (*(this + 64))
  {
    v116 = 0;
    v115 = 0;
    v119 = 0;
    v117 = v113 == 2;
    v255 = *(this + 20);
  }

  else
  {
    v115 = (*(this + 56) & 1) == 0 && v113 == 3;
    v116 = v113 == 2;
    v255 = *(this + 20);
    v117 = 0;
    if (v113 == 1)
    {
      v116 = 0;
      v119 = (*(this + 56) & 1) == 0 && *(this + 20) < 0x400u;
    }

    else
    {
      v119 = 0;
    }
  }

  v120 = v109 | v278 | v112;
  v250 = v116;
  v248 = v119;
  v121 = v115 || v116 || v119;
  v122 = *(this + 92);
  v123 = *(this + 22);
  v124 = *(this + 19);
  v275 = *(this + 20);
  v125 = v275 - 1;
  v260 = v115;
  if (v122)
  {
    v273 = 0;
  }

  else
  {
    v129 = (*(this + 84) & 1) == 0 && v124 == 3 && v123 == 8 && v125 < 2;
    v273 = v129;
  }

  v130 = *(this + 37);
  v131 = (v317 || v314 || v311 || v308 || v305) | v302 | v300 | v298 | v83 | v294 | v292 | v290 | v286 | v106 | v111 | v283;
  v132 = v120 | v108 | v281 | v76 | v276 | v277 | v75 | v74;
  v258 = v117;
  v133 = v121 || v117;
  v134 = (v122 & 1) == 0;
  if (v124 != 2)
  {
    v134 = 0;
  }

  v135 = v123 != 8 || v125 >= 2;
  v136 = !v135 && v134;
  if (v135)
  {
    v137 = 0;
  }

  else
  {
    v137 = v122 & (v124 == 2);
  }

  v138 = *(this + 34);
  v143 = (v122 & 1) == 0 && (*(this + 84) & 1) == 0 && v124 == 1 && v275 == 1 && v123 == 8 && *(this + 34) < 0x400u;
  LOWORD(v144) = 0;
  v145 = (*(this + 28) == 1) & ~(*this | *(this + 132));
  if (*(this + 120))
  {
    v145 = 0;
  }

  if (*(this + 128))
  {
    v145 = 0;
  }

  if (*(this + 13) != 3)
  {
    v145 = 0;
  }

  if (v320)
  {
    v145 = 0;
  }

  if (*(this + 29) != 1)
  {
    v145 = 0;
  }

  if (*(this + 31) != 8)
  {
    v145 = 0;
  }

  if (*(this + 15) != 8)
  {
    v145 = 0;
  }

  if (*(this + 7) != 104)
  {
    v145 = 0;
  }

  if (*(this + 8))
  {
    v145 = 0;
  }

  if (*(this + 52) == 15)
  {
    v146 = v145;
  }

  else
  {
    v146 = 0;
  }

  v147 = v131 & v132;
  if (*(this + 50) >= 0x100u)
  {
    v146 = 0;
  }

  v148 = v146 & (v130 < 4) & (v319 | v316 | v313 | v310 | v307 | v304 | v301 | v299 | v297 | v296 | v293 | v291 | v288 | BYTE4(v284) | v284 | v110) & v133 & v147;
  v149 = 0x8000;
  v150 = 3;
  v151 = 7;
  if (v148 != 1)
  {
    LOWORD(v153) = 0;
    goto LABEL_745;
  }

  v152 = v273;
  LOWORD(v153) = 0;
  if (((v273 || v136) | v137 | v143))
  {
    v154 = v136;
    v155 = v137;
    v156 = v143;
    v157 = *(this + 24);
    v158 = *(this + 41);
    v159 = ((v122 >> 1) & 1) << 11;
    v160 = v253;
    if (!v317)
    {
      if (v314)
      {
        v159 |= 0x20u;
      }

      else if (v311)
      {
        v159 |= 0x40u;
      }

      else if (v308)
      {
        v159 |= 0x60u;
      }

      else if (v305)
      {
        v159 |= 0x100u;
      }

      else if (v302)
      {
        v159 |= 0x120u;
      }

      else if (v300)
      {
        v159 |= 0x140u;
      }

      else if (v298)
      {
        v159 |= 0x160u;
      }

      else if (v107)
      {
        v159 |= 0x200u;
      }

      else if (v294)
      {
        v159 |= 0x220u;
      }

      else if (v292)
      {
        v159 |= 0x240u;
      }

      else if (v290)
      {
        v159 |= 0x260u;
      }

      else if (v286)
      {
        v159 |= 0x300u;
      }

      else
      {
        if (v106)
        {
          v159 |= 0x320u;
        }

        else if (v111)
        {
          v159 |= 0x340u;
        }

        else if (v283)
        {
          v159 |= 0x360u;
        }

        v152 = v273;
        v155 = v137;
        v154 = v136;
        v156 = v143;
        v160 = v253;
        v78 = this;
      }
    }

    v161 = 32 * *(this + 50);
    if (v251)
    {
      v162 = 0x2000;
    }

    else
    {
      v162 = 0x4000;
    }

    if (!v160)
    {
      v162 = 0;
    }

    v163 = v160 == 4;
    if (v160 == 8)
    {
      v163 = 1;
      v164 = -32768;
    }

    else
    {
      v164 = -24576;
    }

    if (v160 == 4)
    {
      v164 = 24576;
    }

    if (v160 == 16)
    {
      v163 = 1;
    }

    v165 = v160 == 32 || v163;
    if (v160 == 32)
    {
      v166 = -16384;
    }

    else
    {
      v166 = -8192;
    }

    if (v160 == 64)
    {
      v167 = 1;
    }

    else
    {
      v167 = v165;
    }

    v168 = v252 | v167;
    if (v163)
    {
      v169 = v164;
    }

    else
    {
      v169 = v166;
    }

    if (v252)
    {
      v144 = v162;
    }

    else
    {
      v144 = v169;
    }

    if (v168)
    {
LABEL_502:
      v149 = v161 | 0x8000;
      if (v157)
      {
        if (v157 != 4)
        {
          switch(v157)
          {
            case 1:
              v149 = v161 & 0x1FE0 | 0x8000;
              v159 |= 0x80u;
              break;
            case 3:
              v149 = v161 | 0xE000;
              goto LABEL_506;
            case 2:
              v149 = v161 & 0x1FE0 | 0xC000;
              goto LABEL_506;
          }

LABEL_507:
          if (v319)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v144 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 <= 7)
            {
              v173 = v258;
              v172 = v260;
              v174 = v275 - 1;
              if (v271)
              {
                switch(v271)
                {
                  case 1u:
                    v175 = -2169;
LABEL_531:
                    v179 = v144 & v175;
LABEL_532:
                    LOWORD(v144) = v179 | 8;
                    v149 &= ~0x10u;
                    goto LABEL_699;
                  case 2u:
                    v181 = -2169;
LABEL_569:
                    v186 = v144 & v181;
LABEL_570:
                    LOWORD(v144) = v186 | 0x10;
                    v149 &= ~0x10u;
                    goto LABEL_699;
                  case 3u:
                    LOWORD(v144) = v144 | 0x18;
                    v149 &= ~0x10u;
                    goto LABEL_699;
                  case 4u:
                    v182 = -2169;
LABEL_606:
                    LOWORD(v144) = v144 & v182;
                    v149 |= 0x10u;
                    goto LABEL_699;
                  case 5u:
                    v188 = -2169;
LABEL_628:
                    v193 = v144 & v188;
LABEL_629:
                    LOWORD(v144) = v193 | 8;
                    v149 |= 0x10u;
                    goto LABEL_699;
                }

                if (v271 != 6)
                {
                  LOWORD(v144) = v144 | 0x18;
                  v149 |= 0x10u;
                  goto LABEL_699;
                }

                v189 = -2169;
                goto LABEL_649;
              }

              v180 = -2169;
LABEL_566:
              LOWORD(v144) = v144 & v180;
              v149 &= ~0x10u;
              goto LABEL_699;
            }

            goto LABEL_697;
          }

          if (v316)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v176 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v176 | 0x20;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 <= 7)
            {
              v173 = v258;
              v172 = v260;
              v174 = v275 - 1;
              if (v271)
              {
                switch(v271)
                {
                  case 1u:
                    v175 = -2137;
                    goto LABEL_531;
                  case 2u:
                    v181 = -2137;
                    goto LABEL_569;
                  case 3u:
                    LOWORD(v144) = v176 | 0x38;
                    v149 &= ~0x10u;
                    goto LABEL_699;
                  case 4u:
                    v182 = -2137;
                    goto LABEL_606;
                  case 5u:
                    v188 = -2137;
                    goto LABEL_628;
                }

                if (v271 != 6)
                {
                  LOWORD(v144) = v176 | 0x38;
                  v149 |= 0x10u;
                  goto LABEL_699;
                }

                v189 = -2137;
                goto LABEL_649;
              }

              v180 = -2137;
              goto LABEL_566;
            }

            goto LABEL_697;
          }

          if (v313)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v177 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v177 | 0x40;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 <= 7)
            {
              v173 = v258;
              v172 = v260;
              v174 = v275 - 1;
              switch(v271)
              {
                case 0u:
                  v180 = -2105;
                  goto LABEL_566;
                case 1u:
                  v175 = -2105;
                  goto LABEL_531;
                case 2u:
                  v181 = -2105;
                  goto LABEL_569;
                case 3u:
                  v187 = 88;
LABEL_573:
                  LOWORD(v144) = v177 | v187;
                  v149 &= ~0x10u;
                  goto LABEL_699;
                case 4u:
                  v182 = -2105;
                  goto LABEL_606;
                case 5u:
                  v188 = -2105;
                  goto LABEL_628;
                case 6u:
                  v189 = -2105;
                  goto LABEL_649;
              }

              v197 = 88;
LABEL_652:
              LOWORD(v144) = v177 | v197;
              v149 |= 0x10u;
              goto LABEL_699;
            }

            goto LABEL_697;
          }

          if (v310)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v178 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v178 | 0x60;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 <= 7)
            {
              v173 = v258;
              v172 = v260;
              v174 = v275 - 1;
              switch(v271)
              {
                case 0u:
                  v180 = -2073;
                  goto LABEL_566;
                case 1u:
                  v175 = -2073;
                  goto LABEL_531;
                case 2u:
                  v181 = -2073;
                  goto LABEL_569;
                case 3u:
                  LOWORD(v144) = v178 | 0x78;
                  v149 &= ~0x10u;
                  goto LABEL_699;
                case 4u:
                  v182 = -2073;
                  goto LABEL_606;
                case 5u:
                  v188 = -2073;
                  goto LABEL_628;
              }

              if (v271 != 6)
              {
                LOWORD(v144) = v178 | 0x78;
                v149 |= 0x10u;
                goto LABEL_699;
              }

              v189 = -2073;
LABEL_649:
              v196 = v144 & v189;
LABEL_650:
              LOWORD(v144) = v196 | 0x10;
              v149 |= 0x10u;
              goto LABEL_699;
            }

            goto LABEL_697;
          }

          if (v307)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v177 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v177 | 0x800;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 <= 7)
            {
              v173 = v258;
              v172 = v260;
              v174 = v275 - 1;
              switch(v271)
              {
                case 0u:
                  LOWORD(v144) = v177 & 0xF787 | 0x800;
                  v149 &= ~0x10u;
                  goto LABEL_699;
                case 1u:
                  v179 = v177 & 0xF787 | 0x800;
                  goto LABEL_532;
                case 2u:
                  v186 = v177 & 0xF787 | 0x800;
                  goto LABEL_570;
                case 3u:
                  v187 = 2072;
                  goto LABEL_573;
                case 4u:
                  LOWORD(v144) = v177 & 0xF787 | 0x800;
                  v149 |= 0x10u;
                  goto LABEL_699;
                case 5u:
                  v193 = v177 & 0xF787 | 0x800;
                  goto LABEL_629;
                case 6u:
                  v196 = v177 & 0xF787 | 0x800;
                  goto LABEL_650;
              }

              v197 = 2072;
              goto LABEL_652;
            }

            goto LABEL_697;
          }

          if (v304)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v177 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v177 | 0x820;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 <= 7)
            {
              v173 = v258;
              v172 = v260;
              v174 = v275 - 1;
              switch(v271)
              {
                case 0u:
                  v180 = -89;
                  goto LABEL_566;
                case 1u:
                  v175 = -89;
                  goto LABEL_531;
                case 2u:
                  v181 = -89;
                  goto LABEL_569;
                case 3u:
                  v187 = 2104;
                  goto LABEL_573;
                case 4u:
                  v182 = -89;
                  goto LABEL_606;
                case 5u:
                  v188 = -89;
                  goto LABEL_628;
                case 6u:
                  v189 = -89;
                  goto LABEL_649;
              }

              v197 = 2104;
              goto LABEL_652;
            }

LABEL_697:
            v173 = v258;
            v172 = v260;
LABEL_698:
            v174 = v275 - 1;
LABEL_699:
            if (v130 > 1)
            {
              v151 = v171 | 8;
              if (v130 != 2)
              {
LABEL_701:
                v153 = v159 | 0x400;
                if (!v172)
                {
LABEL_702:
                  if (v250)
                  {
                    v202 = v255;
                    v203 = v255 >> 8;
                    LOWORD(v144) = v144 & 0xFE7F | 0x80;
LABEL_710:
                    v153 = v153 & 0xFFFFFFFB | (4 * (v203 & 1));
                    v150 = v150 & 0xFFFFFFF7 | (8 * (*(this + 56) & 1));
                    v151 |= v202 << 8;
                    goto LABEL_711;
                  }

                  if (v173)
                  {
                    v202 = v255;
                    v203 = v255 >> 8;
                    LOWORD(v144) = v144 | 0x180;
                    goto LABEL_710;
                  }

                  if (!v248)
                  {
LABEL_711:
                    if (v152)
                    {
                      LOWORD(v144) = v144 & 0xF9FF;
                      LOWORD(v150) = v150 | (v138 << 8) & 0xFE00;
                      v149 = v149 & 0xFFFE | *(this + 34) & 1;
                      v153 = v153 & 0xFFFFFFEF | (16 * ((v138 >> 8) & 1));
                      if (v174 <= 1)
                      {
                        if (v275 == 2)
                        {
                          LOWORD(v150) = v150 & 0xFEFF;
                          if (v158 > 2)
                          {
                            goto LABEL_724;
                          }
                        }

                        else
                        {
                          LOWORD(v150) = v150 | 0x100;
                          if (v158 > 2)
                          {
                            goto LABEL_724;
                          }
                        }

LABEL_737:
                        if (v158)
                        {
                          if (v158 != 1)
                          {
                            if (v158 != 2)
                            {
                              goto LABEL_745;
                            }

                            v149 &= ~8u;
                            goto LABEL_741;
                          }

                          v149 |= 8u;
                        }

                        else
                        {
                          v149 &= ~8u;
                        }

                        LOWORD(v153) = v153 & 0xEFF7;
                        goto LABEL_745;
                      }

                      goto LABEL_736;
                    }

                    if (v154)
                    {
                      LOWORD(v144) = v144 & 0xF9FF | 0x200;
                    }

                    else
                    {
                      if (!v155)
                      {
                        if (v156)
                        {
                          LOWORD(v144) = v144 & 0xF9FF | 0x400;
                          v150 = (v138 >> 5) & 0x10 | (v138 >> 1 << 9) | v150 & 0xFFFFFFEF;
                          v149 = v149 & 0xFFFE | *(this + 34) & 1;
                          v153 = v153 & 0xFFFFFFEF | (16 * ((v138 >> 8) & 1));
                        }

LABEL_736:
                        if (v158 <= 2)
                        {
                          goto LABEL_737;
                        }

                        goto LABEL_724;
                      }

                      LOWORD(v144) = v144 | 0x600;
                    }

                    v149 = v149 & 0xFFFE | *(this + 34) & 1;
                    v153 = v153 & 0xFFFFFFEF | (16 * ((v138 >> 8) & 1));
                    if (v275 == 2)
                    {
                      LOWORD(v150) = (v138 << 8) & 0xFE00 | (16 * (*(this + 84) & 1)) | v150 & 0xFEEF;
                      if (v158 > 2)
                      {
                        goto LABEL_724;
                      }

                      goto LABEL_737;
                    }

                    LOWORD(v150) = (v138 << 8) & 0xFE00 | (16 * (*(this + 84) & 1)) | v150 & 0xFFEF | 0x100;
                    if (v158 <= 2)
                    {
                      goto LABEL_737;
                    }

LABEL_724:
                    if (v158 == 3)
                    {
                      v149 &= ~8u;
                      LOWORD(v153) = v153 & 0xEFF7 | 0x1000;
                      goto LABEL_745;
                    }

                    if (v158 != 4)
                    {
                      if (v158 == 5)
                      {
                        v149 &= ~8u;
                        LOWORD(v153) = v153 | 0x1008;
                      }

                      goto LABEL_745;
                    }

                    v149 |= 8u;
LABEL_741:
                    LOWORD(v153) = v153 & 0xEFF7 | 8;
                    goto LABEL_745;
                  }

                  LOWORD(v144) = v144 & 0xFE7F | 0x100;
                  v151 |= v255 << 8;
                  v150 = v150 & 0xFFFFFFF7 | (v255 >> 6) & 8;
                  v204 = v255 >> 8;
LABEL_707:
                  v153 = v153 & 0xFFFFFFFB | (4 * (v204 & 1));
                  goto LABEL_711;
                }

LABEL_706:
                LOWORD(v144) = v144 & 0xFE7F;
                v151 |= v255 << 8;
                v204 = v255 >> 8;
                goto LABEL_707;
              }
            }

            else
            {
              v151 = v171 & 0xFFF7;
              if (!v130)
              {
                goto LABEL_701;
              }
            }

            v153 = v159 & 0xFFFFFBFF;
            if (!v172)
            {
              goto LABEL_702;
            }

            goto LABEL_706;
          }

          if (v301)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v183 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v183 | 0x840;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            v184 = *(this + 39);
            if (v271 > 7)
            {
              goto LABEL_697;
            }

            switch(v271)
            {
              case 0u:
                LOWORD(v144) = v183 & 0xF787 | 0x840;
                goto LABEL_696;
              case 1u:
                v185 = v183 & 0xF787 | 0x840;
LABEL_618:
                LOWORD(v144) = v185 | 8;
LABEL_696:
                v149 &= ~0x10u;
                goto LABEL_697;
              case 2u:
                v192 = v183 & 0xF787 | 0x840;
LABEL_663:
                LOWORD(v144) = v192 | 0x10;
                goto LABEL_696;
              case 3u:
                v195 = 2136;
LABEL_666:
                LOWORD(v144) = v183 | v195;
                goto LABEL_696;
              case 4u:
                LOWORD(v144) = v183 & 0xF787 | 0x840;
                v149 |= 0x10u;
                goto LABEL_697;
            }

            goto LABEL_832;
          }

          if (v299)
          {
            v159 &= ~2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v183 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v183 | 0x860;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 > 7)
            {
              goto LABEL_697;
            }

            switch(v271)
            {
              case 0u:
                LOWORD(v144) = v183 & 0xF787 | 0x860;
                goto LABEL_696;
              case 1u:
                v185 = v183 & 0xF787 | 0x860;
                goto LABEL_618;
              case 2u:
                v192 = v183 & 0xF787 | 0x860;
                goto LABEL_663;
              case 3u:
                v195 = 2168;
                goto LABEL_666;
              case 4u:
                LOWORD(v144) = v183 & 0xF787 | 0x860;
                goto LABEL_840;
              case 5u:
                v207 = v183 & 0xF787 | 0x860;
                goto LABEL_834;
            }

            if (v271 != 6)
            {
              v212 = 2168;
              goto LABEL_839;
            }

            v211 = v183 & 0xF787 | 0x860;
LABEL_837:
            LOWORD(v144) = v211 | 0x10;
            goto LABEL_840;
          }

          if (v297)
          {
            v159 |= 2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v144 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 > 7)
            {
              goto LABEL_697;
            }

            if (v271)
            {
              switch(v271)
              {
                case 1u:
                  v190 = -2169;
LABEL_617:
                  v185 = v144 & v190;
                  goto LABEL_618;
                case 2u:
                  v192 = v144 & 0xF787;
                  goto LABEL_663;
                case 3u:
                  LOWORD(v144) = v144 | 0x18;
                  v149 &= ~0x10u;
                  goto LABEL_841;
              }

              if (v271 != 4)
              {
                if (v271 == 5)
                {
                  v207 = v144 & 0xF787;
                  goto LABEL_834;
                }

                if (v271 != 6)
                {
                  LOWORD(v144) = v144 | 0x18;
                  goto LABEL_840;
                }

                v211 = v144 & 0xF787;
                goto LABEL_837;
              }

              v206 = -2169;
LABEL_797:
              LOWORD(v144) = v144 & v206;
              goto LABEL_840;
            }

            v200 = -2169;
LABEL_695:
            LOWORD(v144) = v144 & v200;
            goto LABEL_696;
          }

          if (v296)
          {
            v159 |= 2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v191 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v191 | 0x20;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 > 7)
            {
              goto LABEL_697;
            }

            if (!v271)
            {
              v200 = -2137;
              goto LABEL_695;
            }

            if (v271 == 1)
            {
              v190 = -2137;
              goto LABEL_617;
            }

            if (v271 != 2)
            {
              if (v271 == 3)
              {
                LOWORD(v144) = v191 | 0x38;
                v149 &= ~0x10u;
                goto LABEL_841;
              }

              if (v271 != 4)
              {
                if (v271 == 5)
                {
                  v207 = v191 & 0xF787 | 0x20;
                  goto LABEL_834;
                }

                if (v271 != 6)
                {
                  LOWORD(v144) = v191 | 0x38;
                  goto LABEL_840;
                }

                v211 = v191 & 0xF787 | 0x20;
                goto LABEL_837;
              }

              v206 = -2137;
              goto LABEL_797;
            }

            v201 = -2137;
            goto LABEL_764;
          }

          if (v293)
          {
            v159 |= 2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v183 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v183 | 0x40;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 > 7)
            {
              goto LABEL_697;
            }

            switch(v271)
            {
              case 0u:
                v200 = -2105;
                goto LABEL_695;
              case 1u:
                v194 = -2105;
LABEL_658:
                v199 = v144 & v194;
LABEL_659:
                LOWORD(v144) = v199 | 8;
                v149 &= ~0x10u;
                goto LABEL_841;
              case 2u:
                v201 = -2105;
                goto LABEL_764;
            }

            if (v271 != 3)
            {
              if (v271 != 4)
              {
                if (v271 == 5)
                {
                  v207 = v183 & 0xF787 | 0x40;
                  goto LABEL_834;
                }

                if (v271 != 6)
                {
                  v212 = 88;
                  goto LABEL_839;
                }

                v211 = v183 & 0xF787 | 0x40;
                goto LABEL_837;
              }

              v206 = -2105;
              goto LABEL_797;
            }

            v210 = 88;
LABEL_768:
            LOWORD(v144) = v183 | v210;
            v149 &= ~0x10u;
            goto LABEL_841;
          }

          if (v291)
          {
            v159 |= 2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v198 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v198 | 0x60;
            v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
            if (v271 > 7)
            {
              goto LABEL_697;
            }

            if (v271)
            {
              if (v271 == 1)
              {
                v194 = -2073;
                goto LABEL_658;
              }

              if (v271 != 2)
              {
                if (v271 == 3)
                {
                  LOWORD(v144) = v198 | 0x78;
                  v149 &= ~0x10u;
                  goto LABEL_841;
                }

                if (v271 != 4)
                {
                  if (v271 == 5)
                  {
                    v207 = v198 & 0xF787 | 0x60;
                    goto LABEL_834;
                  }

                  if (v271 != 6)
                  {
                    LOWORD(v144) = v198 | 0x78;
                    goto LABEL_840;
                  }

                  v211 = v198 & 0xF787 | 0x60;
                  goto LABEL_837;
                }

                v206 = -2073;
                goto LABEL_797;
              }

              v201 = -2073;
LABEL_764:
              v209 = v144 & v201;
LABEL_765:
              LOWORD(v144) = v209 | 0x10;
              v149 &= ~0x10u;
              goto LABEL_841;
            }

            v208 = -2073;
          }

          else
          {
            if (v288)
            {
              v159 |= 2u;
              v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
              v183 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
              LOWORD(v144) = v183 | 0x800;
              v150 = (2 * v89) & 0xC0 | (32 * (*(v78 + 152) & 1)) | 3;
              if (v271 > 7)
              {
                goto LABEL_841;
              }

              switch(v271)
              {
                case 0u:
                  LOWORD(v144) = v183 & 0xF787 | 0x800;
                  v149 &= ~0x10u;
                  goto LABEL_841;
                case 1u:
                  v199 = v183 & 0xF787 | 0x800;
                  goto LABEL_659;
                case 2u:
                  v209 = v183 & 0xF787 | 0x800;
                  goto LABEL_765;
              }

              if (v271 != 3)
              {
                if (v271 == 4)
                {
                  LOWORD(v144) = v183 & 0xF787 | 0x800;
                  goto LABEL_840;
                }

                if (v271 == 5)
                {
                  v207 = v183 & 0xF787 | 0x800;
                  goto LABEL_834;
                }

                if (v271 != 6)
                {
                  v212 = 2072;
                  goto LABEL_839;
                }

                v211 = v183 & 0xF787 | 0x800;
                goto LABEL_837;
              }

              v210 = 2072;
              goto LABEL_768;
            }

            if (!HIDWORD(v284))
            {
              if (!v284)
              {
                if (v110)
                {
                  LOWORD(v144) = v144 | 0x860;
                  v159 |= 2u;
                }

                LOWORD(v171) = 7;
                goto LABEL_841;
              }

              v159 |= 2u;
              v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
              v183 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
              LOWORD(v144) = v183 | 0x840;
              v150 = (2 * v89) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
              if (v271 > 7)
              {
LABEL_841:
                v152 = v273;
                v155 = v137;
                v154 = v136;
                v173 = v258;
                v172 = v260;
                v156 = v143;
                goto LABEL_698;
              }

              switch(v271)
              {
                case 0u:
                  LOWORD(v144) = v183 & 0xF787 | 0x840;
                  v149 &= ~0x10u;
                  goto LABEL_841;
                case 1u:
                  v199 = v183 & 0xF787 | 0x840;
                  goto LABEL_659;
                case 2u:
                  v209 = v183 & 0xF787 | 0x840;
                  goto LABEL_765;
              }

              if (v271 != 3)
              {
                if (v271 != 4)
                {
                  v184 = *(this + 39);
LABEL_832:
                  if (v184 == 5)
                  {
                    v207 = v144 & 0xFFC7;
                    goto LABEL_834;
                  }

                  if (v271 == 6)
                  {
                    v211 = v144 & 0xFFC7;
                    goto LABEL_837;
                  }

                  v212 = 2136;
LABEL_839:
                  LOWORD(v144) = v183 | v212;
                  goto LABEL_840;
                }

                LOWORD(v144) = v183 & 0xF787 | 0x840;
LABEL_840:
                v149 |= 0x10u;
                goto LABEL_841;
              }

              v210 = 2136;
              goto LABEL_768;
            }

            v159 |= 2u;
            v171 = (16 * ((v89 >> 1) & 0xF)) | 7;
            v183 = v144 & 0xFFFFE79B | (4 * (v89 & 1)) | (((v89 >> 7) & 1) << 12);
            LOWORD(v144) = v183 | 0x820;
            v150 = (2 * v89) & 0xC0 | (32 * (*(this + 152) & 1)) | 3;
            if (v271 > 7)
            {
              goto LABEL_841;
            }

            if (v271)
            {
              if (v271 == 1)
              {
                v194 = -89;
                goto LABEL_658;
              }

              if (v271 == 2)
              {
                v201 = -89;
                goto LABEL_764;
              }

              if (v271 != 3)
              {
                if (v271 != 4)
                {
                  if (v271 != 5)
                  {
                    if (v271 == 6)
                    {
                      v211 = v183 & 0xF787 | 0x820;
                      goto LABEL_837;
                    }

                    v212 = 2104;
                    goto LABEL_839;
                  }

                  v207 = v183 & 0xF787 | 0x820;
LABEL_834:
                  LOWORD(v144) = v207 | 8;
                  goto LABEL_840;
                }

                v206 = -89;
                goto LABEL_797;
              }

              v210 = 2104;
              goto LABEL_768;
            }

            v208 = -89;
          }

          LOWORD(v144) = v144 & v208;
          v149 &= ~0x10u;
          goto LABEL_841;
        }

        v149 = v161 & 0x1FE0 | 0x8000;
      }

      else
      {
        v149 = v161 & 0x1FE0 | 0xA000;
      }

LABEL_506:
      v159 &= ~0x80u;
      goto LABEL_507;
    }

    if (v160 == 128)
    {
      v144 = 0;
      v159 |= 0x2000u;
      goto LABEL_502;
    }

    if (v249)
    {
      v159 |= 0x2000u;
      v144 = 0x2000;
      goto LABEL_502;
    }

    if (v247)
    {
      v159 |= 0x2000u;
      v144 = 0x4000;
      goto LABEL_502;
    }

    if (v246)
    {
      v159 |= 0x2000u;
      v144 = 24576;
      goto LABEL_502;
    }

    if (v245)
    {
      v159 |= 0x2000u;
      v144 = 0x8000;
      goto LABEL_502;
    }

    if (v244)
    {
      v159 |= 0x2000u;
      v144 = 40960;
      goto LABEL_502;
    }

    if (v243)
    {
      v159 |= 0x2000u;
      v144 = 49152;
      goto LABEL_502;
    }

    if (v160 == 12)
    {
      v159 |= 0x2000u;
      v144 = 57344;
      goto LABEL_502;
    }

    if (v242)
    {
      v144 = 0;
      v159 |= 0x4000u;
      goto LABEL_502;
    }

    if (v241)
    {
      v159 |= 0x4000u;
      v144 = 0x2000;
      goto LABEL_502;
    }

    if (v240)
    {
      v159 |= 0x4000u;
      v144 = 0x4000;
      goto LABEL_502;
    }

    if (v239)
    {
      v159 |= 0x4000u;
      v144 = 24576;
      goto LABEL_502;
    }

    if (v160 == 20)
    {
      v159 |= 0x4000u;
      v144 = 0x8000;
    }

    else if (v49)
    {
      v159 |= 0x4000u;
      v144 = 40960;
    }

    else if (v238)
    {
      v159 |= 0x4000u;
      v144 = 49152;
    }

    else if (v237)
    {
      v159 |= 0x4000u;
      v144 = 57344;
    }

    else if (v253 == 24)
    {
      v144 = 0;
      v159 |= 0x6000u;
    }

    else if (v236)
    {
      v159 |= 0x6000u;
      v144 = 0x2000;
    }

    else if (v235)
    {
      v159 |= 0x6000u;
      v144 = 0x4000;
    }

    else if (v234)
    {
      v159 |= 0x6000u;
      v144 = 24576;
    }

    else if (v253 == 28)
    {
      v159 |= 0x6000u;
      v144 = 0x8000;
    }

    else if (v233)
    {
      v159 |= 0x6000u;
      v144 = 40960;
    }

    else if (v222)
    {
      v159 |= 0x6000u;
      v144 = 49152;
    }

    else if (v213)
    {
      v159 |= 0x6000u;
      v144 = 57344;
    }

    else if (v214)
    {
      v144 = 0;
      v159 |= 0xFFFF8000;
    }

    else if (v223)
    {
      v159 |= 0xFFFF8000;
      v144 = 0x2000;
    }

    else if (v224)
    {
      v159 |= 0xFFFF8000;
      v144 = 0x4000;
    }

    else if (v215)
    {
      v159 |= 0xFFFF8000;
      v144 = 24576;
    }

    else if (v253 == 36)
    {
      v159 |= 0xFFFF8000;
      v144 = 0x8000;
    }

    else if (v225)
    {
      v159 |= 0xFFFF8000;
      v144 = 40960;
    }

    else if (v226)
    {
      v159 |= 0xFFFF8000;
      v144 = 49152;
    }

    else if (v216)
    {
      v159 |= 0xFFFF8000;
      v144 = 57344;
    }

    else if (v253 == 40)
    {
      v144 = 0;
      v159 |= 0xFFFFA000;
    }

    else if (v227)
    {
      v159 |= 0xFFFFA000;
      v144 = 0x2000;
    }

    else if (v228)
    {
      v159 |= 0xFFFFA000;
      v144 = 0x4000;
    }

    else if (v217)
    {
      v159 |= 0xFFFFA000;
      v144 = 24576;
    }

    else if (v253 == 44)
    {
      v159 |= 0xFFFFA000;
      v144 = 0x8000;
    }

    else if (v276)
    {
      v159 |= 0xFFFFA000;
      v144 = 40960;
    }

    else if (v277)
    {
      v159 |= 0xFFFFA000;
      v144 = 49152;
    }

    else if (v218)
    {
      v159 |= 0xFFFFA000;
      v144 = 57344;
    }

    else if (v253 == 48)
    {
      v144 = 0;
      v159 |= 0xFFFFC000;
    }

    else if (v229)
    {
      v159 |= 0xFFFFC000;
      v144 = 0x2000;
    }

    else if (v230)
    {
      v159 |= 0xFFFFC000;
      v144 = 0x4000;
    }

    else if (v220)
    {
      v159 |= 0xFFFFC000;
      v144 = 24576;
    }

    else if (v253 == 52)
    {
      v159 |= 0xFFFFC000;
      v144 = 0x8000;
    }

    else if (v280)
    {
      v159 |= 0xFFFFC000;
      v144 = 40960;
    }

    else if (v231)
    {
      v159 |= 0xFFFFC000;
      v144 = 49152;
    }

    else if (v219)
    {
      v159 |= 0xFFFFC000;
      v144 = 57344;
    }

    else
    {
      if (v253 == 56)
      {
        v144 = 0;
      }

      else
      {
        if (v281)
        {
          v144 = 0x2000;
        }

        else
        {
          v144 = 0x4000;
        }

        if (((v281 | v232) & 1) == 0)
        {
          v170 = v253 == 60 ? 1 : v221;
          v144 = v221 ? 24576 : -32768;
          if ((v170 & 1) == 0)
          {
            v144 = v279 ? -24576 : -16384;
            if (((v279 | v278) & 1) == 0)
            {
              if (v112)
              {
                v144 = -8192;
              }

              else
              {
                v144 = 0;
              }

              if (v112)
              {
                v159 |= 0xFFFFE000;
              }

              goto LABEL_501;
            }
          }
        }
      }

      v159 |= 0xFFFFE000;
    }

LABEL_501:
    v152 = v273;
    v155 = v137;
    v154 = v136;
    v156 = v143;
    v78 = this;
    goto LABEL_502;
  }

LABEL_745:
  *a2 = v151;
  *(a2 + 1) = v150;
  *(a2 + 2) = v144;
  *(a2 + 3) = v149;
  result = a2 + 10;
  *(a2 + 4) = v153;
  return result;
}