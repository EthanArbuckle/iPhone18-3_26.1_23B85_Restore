uint64_t sub_10013D248(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = a1 + 8;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v464) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          v11 = [a2 data];
          [v11 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v464 & 0x7F) << v6;
        if ((v464 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v8 = 0;
          goto LABEL_15;
        }
      }

      if ([a2 hasError])
      {
        v8 = 0;
      }

LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v8 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v8 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v8 >> 3];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v464) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v464 & 0x7F) << v16;
          if ((v464 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 384) |= 2uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v464 & 0x7F) << v23;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v12 = v24++ >= 9;
              if (v12)
              {
                v29 = 0;
LABEL_806:
                v453 = 40;
                goto LABEL_807;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

            goto LABEL_806;
          case 2:
            v193 = 0;
            v194 = 0;
            v195 = 0;
            *(a1 + 384) |= 0x400uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v196 = [a2 position] + 1;
              if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
              {
                v198 = [a2 data];
                [v198 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v195 |= (v464 & 0x7F) << v193;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v193 += 7;
              v12 = v194++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_790;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v195;
            }

LABEL_790:
            v454 = 80;
            goto LABEL_949;
          case 3:
            v43 = PBReaderReadString();
            v44 = 88;
            goto LABEL_332;
          case 4:
            v237 = 0;
            v238 = 0;
            v239 = 0;
            *(a1 + 384) |= 0x4000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v240 = [a2 position] + 1;
              if (v240 >= [a2 position] && (v241 = objc_msgSend(a2, "position") + 1, v241 <= objc_msgSend(a2, "length")))
              {
                v242 = [a2 data];
                [v242 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v239 |= (v464 & 0x7F) << v237;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v237 += 7;
              v12 = v238++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_817;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v239;
            }

LABEL_817:
            v454 = 120;
            goto LABEL_949;
          case 5:
            v218 = 0;
            v219 = 0;
            v220 = 0;
            *(v5 + 384) |= 4u;
            while (1)
            {
              LOBYTE(v464) = 0;
              v221 = [a2 position] + 1;
              if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
              {
                v223 = [a2 data];
                [v223 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v220 |= (v464 & 0x7F) << v218;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v218 += 7;
              v12 = v219++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_802;
              }
            }

            v174 = (v220 != 0) & ~[a2 hasError];
LABEL_802:
            v455 = 378;
            goto LABEL_944;
          case 6:
            v156 = 0;
            v157 = 0;
            v158 = 0;
            *(a1 + 384) |= 0x80000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v159 = [a2 position] + 1;
              if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
              {
                v161 = [a2 data];
                [v161 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v158 |= (v464 & 0x7F) << v156;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v156 += 7;
              v12 = v157++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_768;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v158;
            }

LABEL_768:
            v454 = 152;
            goto LABEL_949;
          case 7:
            v279 = 0;
            v280 = 0;
            v281 = 0;
            *(a1 + 384) |= 0x8000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v282 = [a2 position] + 1;
              if (v282 >= [a2 position] && (v283 = objc_msgSend(a2, "position") + 1, v283 <= objc_msgSend(a2, "length")))
              {
                v284 = [a2 data];
                [v284 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v281 |= (v464 & 0x7F) << v279;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v279 += 7;
              v12 = v280++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_845;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v281;
            }

LABEL_845:
            v454 = 124;
            goto LABEL_949;
          case 8:
            v231 = 0;
            v232 = 0;
            v233 = 0;
            *(a1 + 384) |= 0x10000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v234 = [a2 position] + 1;
              if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
              {
                v236 = [a2 data];
                [v236 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v233 |= (v464 & 0x7F) << v231;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v231 += 7;
              v12 = v232++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_813;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v233;
            }

LABEL_813:
            v454 = 128;
            goto LABEL_949;
          case 9:
            v261 = 0;
            v262 = 0;
            v263 = 0;
            *(a1 + 384) |= 0x1000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v264 = [a2 position] + 1;
              if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
              {
                v266 = [a2 data];
                [v266 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v263 |= (v464 & 0x7F) << v261;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v261 += 7;
              v12 = v262++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_833;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v263;
            }

LABEL_833:
            v454 = 312;
            goto LABEL_949;
          case 10:
            v205 = 0;
            v206 = 0;
            v207 = 0;
            *(a1 + 384) |= 0x200uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v208 = [a2 position] + 1;
              if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
              {
                v210 = [a2 data];
                [v210 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v207 |= (v464 & 0x7F) << v205;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v205 += 7;
              v12 = v206++ >= 9;
              if (v12)
              {
                v211 = 0;
                goto LABEL_798;
              }
            }

            if ([a2 hasError])
            {
              v211 = 0;
            }

            else
            {
              v211 = v207;
            }

LABEL_798:
            v42 = -(v211 & 1) ^ (v211 >> 1);
            v454 = 76;
            goto LABEL_949;
          case 12:
            v243 = 0;
            v244 = 0;
            v245 = 0;
            *(a1 + 384) |= 8uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v246 = [a2 position] + 1;
              if (v246 >= [a2 position] && (v247 = objc_msgSend(a2, "position") + 1, v247 <= objc_msgSend(a2, "length")))
              {
                v248 = [a2 data];
                [v248 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v245 |= (v464 & 0x7F) << v243;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v243 += 7;
              v12 = v244++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_821;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v245;
            }

LABEL_821:
            v454 = 52;
            goto LABEL_949;
          case 16:
            v327 = 0;
            v328 = 0;
            v329 = 0;
            *(v5 + 384) |= 2u;
            while (1)
            {
              LOBYTE(v464) = 0;
              v330 = [a2 position] + 1;
              if (v330 >= [a2 position] && (v331 = objc_msgSend(a2, "position") + 1, v331 <= objc_msgSend(a2, "length")))
              {
                v332 = [a2 data];
                [v332 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v329 |= (v464 & 0x7F) << v327;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v327 += 7;
              v12 = v328++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_873;
              }
            }

            v174 = (v329 != 0) & ~[a2 hasError];
LABEL_873:
            v455 = 377;
            goto LABEL_944;
          case 17:
            v303 = 0;
            v304 = 0;
            v305 = 0;
            *(a1 + 384) |= 0x1000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v306 = [a2 position] + 1;
              if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
              {
                v308 = [a2 data];
                [v308 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v305 |= (v464 & 0x7F) << v303;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v303 += 7;
              v12 = v304++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_861;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v305;
            }

LABEL_861:
            v454 = 112;
            goto LABEL_949;
          case 20:
            v43 = PBReaderReadData();
            v44 = 336;
            goto LABEL_332;
          case 21:
            v339 = 0;
            v340 = 0;
            v341 = 0;
            *(a1 + 384) |= 0x2000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v342 = [a2 position] + 1;
              if (v342 >= [a2 position] && (v343 = objc_msgSend(a2, "position") + 1, v343 <= objc_msgSend(a2, "length")))
              {
                v344 = [a2 data];
                [v344 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v341 |= (v464 & 0x7F) << v339;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v339 += 7;
              v12 = v340++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_881;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v341;
            }

LABEL_881:
            v454 = 236;
            goto LABEL_949;
          case 22:
            v345 = 0;
            v346 = 0;
            v347 = 0;
            *(a1 + 384) |= 0x4000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v348 = [a2 position] + 1;
              if (v348 >= [a2 position] && (v349 = objc_msgSend(a2, "position") + 1, v349 <= objc_msgSend(a2, "length")))
              {
                v350 = [a2 data];
                [v350 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v347 |= (v464 & 0x7F) << v345;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v345 += 7;
              v12 = v346++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_885;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v347;
            }

LABEL_885:
            v454 = 192;
            goto LABEL_949;
          case 23:
            v138 = 0;
            v139 = 0;
            v140 = 0;
            *(a1 + 384) |= 0x8000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v141 = [a2 position] + 1;
              if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
              {
                v143 = [a2 data];
                [v143 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v140 |= (v464 & 0x7F) << v138;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v138 += 7;
              v12 = v139++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_756;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v140;
            }

LABEL_756:
            v454 = 196;
            goto LABEL_949;
          case 24:
            v363 = 0;
            v364 = 0;
            v365 = 0;
            *(a1 + 384) |= 0x200000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v366 = [a2 position] + 1;
              if (v366 >= [a2 position] && (v367 = objc_msgSend(a2, "position") + 1, v367 <= objc_msgSend(a2, "length")))
              {
                v368 = [a2 data];
                [v368 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v365 |= (v464 & 0x7F) << v363;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v363 += 7;
              v12 = v364++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_895;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v365;
            }

LABEL_895:
            v454 = 160;
            goto LABEL_949;
          case 28:
            v162 = 0;
            v163 = 0;
            v164 = 0;
            *(a1 + 384) |= 0x80uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v165 = [a2 position] + 1;
              if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
              {
                v167 = [a2 data];
                [v167 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v164 |= (v464 & 0x7F) << v162;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              v12 = v163++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_772;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v164;
            }

LABEL_772:
            v454 = 68;
            goto LABEL_949;
          case 29:
            v285 = 0;
            v286 = 0;
            v287 = 0;
            *(a1 + 384) |= 0x800000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v288 = [a2 position] + 1;
              if (v288 >= [a2 position] && (v289 = objc_msgSend(a2, "position") + 1, v289 <= objc_msgSend(a2, "length")))
              {
                v290 = [a2 data];
                [v290 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v287 |= (v464 & 0x7F) << v285;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v285 += 7;
              v12 = v286++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_849;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v287;
            }

LABEL_849:
            v454 = 300;
            goto LABEL_949;
          case 32:
            v120 = 0;
            v121 = 0;
            v122 = 0;
            *(a1 + 384) |= 0x100000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v123 = [a2 position] + 1;
              if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
              {
                v125 = [a2 data];
                [v125 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v122 |= (v464 & 0x7F) << v120;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v120 += 7;
              v12 = v121++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_744;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v122;
            }

LABEL_744:
            v454 = 356;
            goto LABEL_949;
          case 33:
            v168 = 0;
            v169 = 0;
            v170 = 0;
            *(a1 + 384) |= 0x1000000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v171 = [a2 position] + 1;
              if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
              {
                v173 = [a2 data];
                [v173 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v170 |= (v464 & 0x7F) << v168;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              v12 = v169++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_774;
              }
            }

            v174 = (v170 != 0) & ~[a2 hasError];
LABEL_774:
            v455 = 372;
            goto LABEL_944;
          case 34:
            v255 = 0;
            v256 = 0;
            v257 = 0;
            *(a1 + 384) |= 4uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v258 = [a2 position] + 1;
              if (v258 >= [a2 position] && (v259 = objc_msgSend(a2, "position") + 1, v259 <= objc_msgSend(a2, "length")))
              {
                v260 = [a2 data];
                [v260 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v257 |= (v464 & 0x7F) << v255;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v255 += 7;
              v12 = v256++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_829;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v257;
            }

LABEL_829:
            v454 = 48;
            goto LABEL_949;
          case 35:
            v199 = 0;
            v200 = 0;
            v201 = 0;
            *(a1 + 384) |= 0x8000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v202 = [a2 position] + 1;
              if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
              {
                v204 = [a2 data];
                [v204 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v201 |= (v464 & 0x7F) << v199;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v199 += 7;
              v12 = v200++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_794;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v201;
            }

LABEL_794:
            v454 = 324;
            goto LABEL_949;
          case 36:
            v315 = 0;
            v316 = 0;
            v317 = 0;
            *(a1 + 384) |= 0x4000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v318 = [a2 position] + 1;
              if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 1, v319 <= objc_msgSend(a2, "length")))
              {
                v320 = [a2 data];
                [v320 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v317 |= (v464 & 0x7F) << v315;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v315 += 7;
              v12 = v316++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_869;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v317;
            }

LABEL_869:
            v454 = 320;
            goto LABEL_949;
          case 44:
            v181 = 0;
            v182 = 0;
            v183 = 0;
            *(a1 + 384) |= 0x800uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v184 = [a2 position] + 1;
              if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
              {
                v186 = [a2 data];
                [v186 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v183 |= (v464 & 0x7F) << v181;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v181 += 7;
              v12 = v182++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_782;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v183;
            }

LABEL_782:
            v454 = 96;
            goto LABEL_949;
          case 54:
            v114 = 0;
            v115 = 0;
            v116 = 0;
            *(a1 + 384) |= 0x40000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v117 = [a2 position] + 1;
              if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
              {
                v119 = [a2 data];
                [v119 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v116 |= (v464 & 0x7F) << v114;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              v12 = v115++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_740;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v116;
            }

LABEL_740:
            v454 = 208;
            goto LABEL_949;
          case 55:
            v101 = objc_alloc_init(CapEvent);
            [a1 addCapEvent:v101];
            v464 = 0;
            v465 = 0;
            if (!PBReaderPlaceMark() || (sub_1001129E0(v101, a2) & 1) == 0)
            {
              goto LABEL_966;
            }

            goto LABEL_659;
          case 56:
            v187 = 0;
            v188 = 0;
            v189 = 0;
            *(a1 + 384) |= 0x2000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v190 = [a2 position] + 1;
              if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
              {
                v192 = [a2 data];
                [v192 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v189 |= (v464 & 0x7F) << v187;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v187 += 7;
              v12 = v188++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_786;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v189;
            }

LABEL_786:
            v454 = 188;
            goto LABEL_949;
          case 58:
            v225 = 0;
            v226 = 0;
            v227 = 0;
            *(v5 + 384) |= 0x10u;
            while (1)
            {
              LOBYTE(v464) = 0;
              v228 = [a2 position] + 1;
              if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
              {
                v230 = [a2 data];
                [v230 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v227 |= (v464 & 0x7F) << v225;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v225 += 7;
              v12 = v226++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_809;
              }
            }

            v174 = (v227 != 0) & ~[a2 hasError];
LABEL_809:
            v455 = 380;
            goto LABEL_944;
          case 59:
            v321 = 0;
            v322 = 0;
            v323 = 0;
            *(v5 + 384) |= 8u;
            while (1)
            {
              LOBYTE(v464) = 0;
              v324 = [a2 position] + 1;
              if (v324 >= [a2 position] && (v325 = objc_msgSend(a2, "position") + 1, v325 <= objc_msgSend(a2, "length")))
              {
                v326 = [a2 data];
                [v326 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v323 |= (v464 & 0x7F) << v321;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v321 += 7;
              v12 = v322++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_871;
              }
            }

            v174 = (v323 != 0) & ~[a2 hasError];
LABEL_871:
            v455 = 379;
            goto LABEL_944;
          case 60:
            v101 = objc_alloc_init(RbData);
            [a1 addRbData:v101];
            v464 = 0;
            v465 = 0;
            if (!PBReaderPlaceMark() || (sub_100056EE4(v101, a2) & 1) == 0)
            {
              goto LABEL_966;
            }

            goto LABEL_659;
          case 61:
            v89 = 0;
            v90 = 0;
            v91 = 0;
            *(a1 + 384) |= 0x20000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v92 = [a2 position] + 1;
              if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
              {
                v94 = [a2 data];
                [v94 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v91 |= (v464 & 0x7F) << v89;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              v12 = v90++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_724;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v91;
            }

LABEL_724:
            v454 = 204;
            goto LABEL_949;
          case 62:
            v150 = 0;
            v151 = 0;
            v152 = 0;
            *(a1 + 384) |= 0x20000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v153 = [a2 position] + 1;
              if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
              {
                v155 = [a2 data];
                [v155 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v152 |= (v464 & 0x7F) << v150;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              v12 = v151++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_764;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v152;
            }

LABEL_764:
            v454 = 132;
            goto LABEL_949;
          case 63:
            v333 = 0;
            v334 = 0;
            v335 = 0;
            *(a1 + 384) |= 0x400000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v336 = [a2 position] + 1;
              if (v336 >= [a2 position] && (v337 = objc_msgSend(a2, "position") + 1, v337 <= objc_msgSend(a2, "length")))
              {
                v338 = [a2 data];
                [v338 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v335 |= (v464 & 0x7F) << v333;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v333 += 7;
              v12 = v334++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_877;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v335;
            }

LABEL_877:
            v454 = 296;
            goto LABEL_949;
          case 64:
            v405 = 0;
            v406 = 0;
            v407 = 0;
            *(a1 + 384) |= 0x100uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v408 = [a2 position] + 1;
              if (v408 >= [a2 position] && (v409 = objc_msgSend(a2, "position") + 1, v409 <= objc_msgSend(a2, "length")))
              {
                v410 = [a2 data];
                [v410 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v407 |= (v464 & 0x7F) << v405;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v405 += 7;
              v12 = v406++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_921;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v407;
            }

LABEL_921:
            v454 = 72;
            goto LABEL_949;
          case 65:
            v108 = 0;
            v109 = 0;
            v110 = 0;
            *(a1 + 384) |= 0x80000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v111 = [a2 position] + 1;
              if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
              {
                v113 = [a2 data];
                [v113 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v110 |= (v464 & 0x7F) << v108;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              v12 = v109++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_736;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v110;
            }

LABEL_736:
            v454 = 352;
            goto LABEL_949;
          case 66:
            v101 = objc_alloc_init(HcStat);
            [a1 addHcStat:v101];
            v464 = 0;
            v465 = 0;
            if (!PBReaderPlaceMark() || (sub_10012EC24(v101, a2) & 1) == 0)
            {
              goto LABEL_966;
            }

            goto LABEL_659;
          case 68:
            v102 = 0;
            v103 = 0;
            v104 = 0;
            *(a1 + 384) |= 0x10000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v105 = [a2 position] + 1;
              if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
              {
                v107 = [a2 data];
                [v107 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v104 |= (v464 & 0x7F) << v102;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              v12 = v103++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_732;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v104;
            }

LABEL_732:
            v454 = 248;
            goto LABEL_949;
          case 69:
            v95 = 0;
            v96 = 0;
            v97 = 0;
            *(a1 + 384) |= 0x8000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v98 = [a2 position] + 1;
              if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
              {
                v100 = [a2 data];
                [v100 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v97 |= (v464 & 0x7F) << v95;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              v12 = v96++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_728;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v97;
            }

LABEL_728:
            v454 = 244;
            goto LABEL_949;
          case 70:
            v175 = 0;
            v176 = 0;
            v177 = 0;
            *(a1 + 384) |= 0x800000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v178 = [a2 position] + 1;
              if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
              {
                v180 = [a2 data];
                [v180 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v177 |= (v464 & 0x7F) << v175;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v175 += 7;
              v12 = v176++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_778;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v177;
            }

LABEL_778:
            v454 = 228;
            goto LABEL_949;
          case 71:
            v249 = 0;
            v250 = 0;
            v251 = 0;
            *(a1 + 384) |= 0x100000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v252 = [a2 position] + 1;
              if (v252 >= [a2 position] && (v253 = objc_msgSend(a2, "position") + 1, v253 <= objc_msgSend(a2, "length")))
              {
                v254 = [a2 data];
                [v254 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v251 |= (v464 & 0x7F) << v249;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v249 += 7;
              v12 = v250++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_825;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v251;
            }

LABEL_825:
            v454 = 264;
            goto LABEL_949;
          case 72:
            v357 = 0;
            v358 = 0;
            v359 = 0;
            *(a1 + 384) |= 0x80000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v360 = [a2 position] + 1;
              if (v360 >= [a2 position] && (v361 = objc_msgSend(a2, "position") + 1, v361 <= objc_msgSend(a2, "length")))
              {
                v362 = [a2 data];
                [v362 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v359 |= (v464 & 0x7F) << v357;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v357 += 7;
              v12 = v358++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_891;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v359;
            }

LABEL_891:
            v454 = 260;
            goto LABEL_949;
          case 73:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 384) |= 0x400000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v464 & 0x7F) << v57;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v12 = v58++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_708;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v59;
            }

LABEL_708:
            v454 = 224;
            goto LABEL_949;
          case 74:
            v132 = 0;
            v133 = 0;
            v134 = 0;
            *(a1 + 384) |= 0x200000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v135 = [a2 position] + 1;
              if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
              {
                v137 = [a2 data];
                [v137 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v134 |= (v464 & 0x7F) << v132;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v132 += 7;
              v12 = v133++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_752;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v134;
            }

LABEL_752:
            v454 = 220;
            goto LABEL_949;
          case 75:
            v267 = 0;
            v268 = 0;
            v269 = 0;
            *(a1 + 384) |= 0x4000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v270 = [a2 position] + 1;
              if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 1, v271 <= objc_msgSend(a2, "length")))
              {
                v272 = [a2 data];
                [v272 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v269 |= (v464 & 0x7F) << v267;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v267 += 7;
              v12 = v268++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_837;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v269;
            }

LABEL_837:
            v454 = 240;
            goto LABEL_949;
          case 76:
            v297 = 0;
            v298 = 0;
            v299 = 0;
            *(a1 + 384) |= 0x1000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v300 = [a2 position] + 1;
              if (v300 >= [a2 position] && (v301 = objc_msgSend(a2, "position") + 1, v301 <= objc_msgSend(a2, "length")))
              {
                v302 = [a2 data];
                [v302 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v299 |= (v464 & 0x7F) << v297;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v297 += 7;
              v12 = v298++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_857;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v299;
            }

LABEL_857:
            v454 = 232;
            goto LABEL_949;
          case 77:
            v417 = 0;
            v418 = 0;
            v419 = 0;
            *(a1 + 384) |= 0x20000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v420 = [a2 position] + 1;
              if (v420 >= [a2 position] && (v421 = objc_msgSend(a2, "position") + 1, v421 <= objc_msgSend(a2, "length")))
              {
                v422 = [a2 data];
                [v422 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v419 |= (v464 & 0x7F) << v417;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v417 += 7;
              v12 = v418++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_929;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v419;
            }

LABEL_929:
            v454 = 252;
            goto LABEL_949;
          case 78:
            v273 = 0;
            v274 = 0;
            v275 = 0;
            *(a1 + 384) |= 0x10uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v276 = [a2 position] + 1;
              if (v276 >= [a2 position] && (v277 = objc_msgSend(a2, "position") + 1, v277 <= objc_msgSend(a2, "length")))
              {
                v278 = [a2 data];
                [v278 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v275 |= (v464 & 0x7F) << v273;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v273 += 7;
              v12 = v274++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_841;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v275;
            }

LABEL_841:
            v454 = 56;
            goto LABEL_949;
          case 80:
            if ((v8 & 7) == 2)
            {
              v464 = 0;
              v465 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v82 = [a2 position];
                if (v82 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v83 = 0;
                v84 = 0;
                v85 = 0;
                while (1)
                {
                  v466 = 0;
                  v86 = [a2 position] + 1;
                  if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
                  {
                    v88 = [a2 data];
                    [v88 getBytes:&v466 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v85 |= (v466 & 0x7F) << v83;
                  if ((v466 & 0x80) == 0)
                  {
                    break;
                  }

                  v83 += 7;
                  v12 = v84++ >= 9;
                  if (v12)
                  {
                    goto LABEL_128;
                  }
                }

                [a2 hasError];
LABEL_128:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v463 = v5;
              v457 = 0;
              v458 = 0;
              v459 = 0;
              while (1)
              {
                LOBYTE(v464) = 0;
                v460 = [a2 position] + 1;
                if (v460 >= [a2 position] && (v461 = objc_msgSend(a2, "position") + 1, v461 <= objc_msgSend(a2, "length")))
                {
                  v462 = [a2 data];
                  [v462 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v459 |= (v464 & 0x7F) << v457;
                if ((v464 & 0x80) == 0)
                {
                  break;
                }

                v457 += 7;
                v12 = v458++ >= 9;
                if (v12)
                {
                  goto LABEL_963;
                }
              }

              [a2 hasError];
LABEL_963:
              PBRepeatedUInt32Add();
              v5 = v463;
            }

            break;
          case 82:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 384) |= 0x2000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v66 = [a2 position] + 1;
              if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v65 |= (v464 & 0x7F) << v63;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v12 = v64++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_712;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v65;
            }

LABEL_712:
            v454 = 116;
            goto LABEL_949;
          case 86:
            v101 = objc_alloc_init(AudioQuality);
            objc_storeStrong((a1 + 168), v101);
            v464 = 0;
            v465 = 0;
            if (PBReaderPlaceMark() && (sub_1000E3F64(v101, a2) & 1) != 0)
            {
              goto LABEL_659;
            }

            goto LABEL_966;
          case 90:
            v399 = 0;
            v400 = 0;
            v401 = 0;
            *(a1 + 384) |= 0x2000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v402 = [a2 position] + 1;
              if (v402 >= [a2 position] && (v403 = objc_msgSend(a2, "position") + 1, v403 <= objc_msgSend(a2, "length")))
              {
                v404 = [a2 data];
                [v404 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v401 |= (v464 & 0x7F) << v399;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v399 += 7;
              v12 = v400++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_917;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v401;
            }

LABEL_917:
            v454 = 316;
            goto LABEL_949;
          case 91:
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 384) |= 0x400000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v464 & 0x7F) << v75;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v12 = v76++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_720;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v77;
            }

LABEL_720:
            v454 = 364;
            goto LABEL_949;
          case 92:
            v309 = 0;
            v310 = 0;
            v311 = 0;
            *(a1 + 384) |= 0x40000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v312 = [a2 position] + 1;
              if (v312 >= [a2 position] && (v313 = objc_msgSend(a2, "position") + 1, v313 <= objc_msgSend(a2, "length")))
              {
                v314 = [a2 data];
                [v314 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v311 |= (v464 & 0x7F) << v309;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v309 += 7;
              v12 = v310++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_865;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v311;
            }

LABEL_865:
            v454 = 136;
            goto LABEL_949;
          case 94:
            v351 = 0;
            v352 = 0;
            v353 = 0;
            *(a1 + 384) |= 0x2000000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v354 = [a2 position] + 1;
              if (v354 >= [a2 position] && (v355 = objc_msgSend(a2, "position") + 1, v355 <= objc_msgSend(a2, "length")))
              {
                v356 = [a2 data];
                [v356 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v353 |= (v464 & 0x7F) << v351;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v351 += 7;
              v12 = v352++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_887;
              }
            }

            v174 = (v353 != 0) & ~[a2 hasError];
LABEL_887:
            v455 = 373;
            goto LABEL_944;
          case 95:
            v69 = 0;
            v70 = 0;
            v71 = 0;
            *(a1 + 384) |= 0x40uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v72 = [a2 position] + 1;
              if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v71 |= (v464 & 0x7F) << v69;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              v12 = v70++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_716;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v71;
            }

LABEL_716:
            v454 = 64;
            goto LABEL_949;
          case 96:
            v387 = 0;
            v388 = 0;
            v389 = 0;
            *(a1 + 384) |= 0x20uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v390 = [a2 position] + 1;
              if (v390 >= [a2 position] && (v391 = objc_msgSend(a2, "position") + 1, v391 <= objc_msgSend(a2, "length")))
              {
                v392 = [a2 data];
                [v392 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v389 |= (v464 & 0x7F) << v387;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v387 += 7;
              v12 = v388++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_909;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v389;
            }

LABEL_909:
            v454 = 60;
            goto LABEL_949;
          case 98:
            v101 = objc_alloc_init(RfMeasInfo);
            [a1 addRfMeasInfo:v101];
            v464 = 0;
            v465 = 0;
            if (!PBReaderPlaceMark() || (sub_100006590(v101, a2) & 1) == 0)
            {
LABEL_966:

              return 0;
            }

LABEL_659:
            PBReaderRecallMark();

            break;
          case 99:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 384) |= 0x100000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v464 & 0x7F) << v36;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v12 = v37++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_696;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_696:
            v454 = 156;
            goto LABEL_949;
          case 100:
            v423 = 0;
            v424 = 0;
            v425 = 0;
            *(a1 + 384) |= 0x200000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v426 = [a2 position] + 1;
              if (v426 >= [a2 position] && (v427 = objc_msgSend(a2, "position") + 1, v427 <= objc_msgSend(a2, "length")))
              {
                v428 = [a2 data];
                [v428 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v425 |= (v464 & 0x7F) << v423;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v423 += 7;
              v12 = v424++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_933;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v425;
            }

LABEL_933:
            v454 = 280;
            goto LABEL_949;
          case 101:
            v435 = 0;
            v436 = 0;
            v437 = 0;
            *(a1 + 384) |= 0x40000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v438 = [a2 position] + 1;
              if (v438 >= [a2 position] && (v439 = objc_msgSend(a2, "position") + 1, v439 <= objc_msgSend(a2, "length")))
              {
                v440 = [a2 data];
                [v440 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v437 |= (v464 & 0x7F) << v435;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v435 += 7;
              v12 = v436++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_941;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v437;
            }

LABEL_941:
            v454 = 256;
            goto LABEL_949;
          case 102:
            v369 = 0;
            v370 = 0;
            v371 = 0;
            *(a1 + 384) |= &_mh_execute_header;
            while (1)
            {
              LOBYTE(v464) = 0;
              v372 = [a2 position] + 1;
              if (v372 >= [a2 position] && (v373 = objc_msgSend(a2, "position") + 1, v373 <= objc_msgSend(a2, "length")))
              {
                v374 = [a2 data];
                [v374 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v371 |= (v464 & 0x7F) << v369;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v369 += 7;
              v12 = v370++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_899;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v371;
            }

LABEL_899:
            v454 = 216;
            goto LABEL_949;
          case 103:
            v375 = 0;
            v376 = 0;
            v377 = 0;
            *(a1 + 384) |= 0x40000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v378 = [a2 position] + 1;
              if (v378 >= [a2 position] && (v379 = objc_msgSend(a2, "position") + 1, v379 <= objc_msgSend(a2, "length")))
              {
                v380 = [a2 data];
                [v380 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v377 |= (v464 & 0x7F) << v375;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v375 += 7;
              v12 = v376++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_903;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v377;
            }

LABEL_903:
            v454 = 348;
            goto LABEL_949;
          case 104:
            v144 = 0;
            v145 = 0;
            v146 = 0;
            *(a1 + 384) |= 0x10000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v147 = [a2 position] + 1;
              if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
              {
                v149 = [a2 data];
                [v149 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v146 |= (v464 & 0x7F) << v144;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v144 += 7;
              v12 = v145++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_760;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v146;
            }

LABEL_760:
            v454 = 328;
            goto LABEL_949;
          case 105:
            v393 = 0;
            v394 = 0;
            v395 = 0;
            *(a1 + 384) |= 0x80000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v396 = [a2 position] + 1;
              if (v396 >= [a2 position] && (v397 = objc_msgSend(a2, "position") + 1, v397 <= objc_msgSend(a2, "length")))
              {
                v398 = [a2 data];
                [v398 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v395 |= (v464 & 0x7F) << v393;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v393 += 7;
              v12 = v394++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_913;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v395;
            }

LABEL_913:
            v454 = 212;
            goto LABEL_949;
          case 106:
            v43 = PBReaderReadData();
            v44 = 272;
LABEL_332:
            v224 = *(a1 + v44);
            *(a1 + v44) = v43;

            break;
          case 110:
            v411 = 0;
            v412 = 0;
            v413 = 0;
            *(a1 + 384) |= 0x1000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v414 = [a2 position] + 1;
              if (v414 >= [a2 position] && (v415 = objc_msgSend(a2, "position") + 1, v415 <= objc_msgSend(a2, "length")))
              {
                v416 = [a2 data];
                [v416 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v413 |= (v464 & 0x7F) << v411;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v411 += 7;
              v12 = v412++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_925;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v413;
            }

LABEL_925:
            v454 = 184;
            goto LABEL_949;
          case 111:
            v429 = 0;
            v430 = 0;
            v431 = 0;
            *(a1 + 384) |= 0x800000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v432 = [a2 position] + 1;
              if (v432 >= [a2 position] && (v433 = objc_msgSend(a2, "position") + 1, v433 <= objc_msgSend(a2, "length")))
              {
                v434 = [a2 data];
                [v434 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v431 |= (v464 & 0x7F) << v429;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v429 += 7;
              v12 = v430++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_937;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v431;
            }

LABEL_937:
            v454 = 180;
            goto LABEL_949;
          case 112:
            v212 = 0;
            v213 = 0;
            v214 = 0;
            *(a1 + 384) |= 0x4000000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v215 = [a2 position] + 1;
              if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
              {
                v217 = [a2 data];
                [v217 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v214 |= (v464 & 0x7F) << v212;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v212 += 7;
              v12 = v213++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_800;
              }
            }

            v174 = (v214 != 0) & ~[a2 hasError];
LABEL_800:
            v455 = 374;
            goto LABEL_944;
          case 113:
            v441 = 0;
            v442 = 0;
            v443 = 0;
            *(a1 + 384) |= 0x8000000000000000;
            while (1)
            {
              LOBYTE(v464) = 0;
              v444 = [a2 position] + 1;
              if (v444 >= [a2 position] && (v445 = objc_msgSend(a2, "position") + 1, v445 <= objc_msgSend(a2, "length")))
              {
                v446 = [a2 data];
                [v446 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v443 |= (v464 & 0x7F) << v441;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v441 += 7;
              v12 = v442++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_943;
              }
            }

            v174 = (v443 != 0) & ~[a2 hasError];
LABEL_943:
            v455 = 375;
            goto LABEL_944;
          case 114:
            v381 = 0;
            v382 = 0;
            v383 = 0;
            *(v5 + 384) |= 1u;
            while (1)
            {
              LOBYTE(v464) = 0;
              v384 = [a2 position] + 1;
              if (v384 >= [a2 position] && (v385 = objc_msgSend(a2, "position") + 1, v385 <= objc_msgSend(a2, "length")))
              {
                v386 = [a2 data];
                [v386 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v383 |= (v464 & 0x7F) << v381;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v381 += 7;
              v12 = v382++ >= 9;
              if (v12)
              {
                LOBYTE(v174) = 0;
                goto LABEL_905;
              }
            }

            v174 = (v383 != 0) & ~[a2 hasError];
LABEL_905:
            v455 = 376;
LABEL_944:
            *(a1 + v455) = v174;
            break;
          case 120:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 384) |= 0x400000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v464 & 0x7F) << v45;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v12 = v46++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_700;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v47;
            }

LABEL_700:
            v454 = 176;
            goto LABEL_949;
          case 121:
            v126 = 0;
            v127 = 0;
            v128 = 0;
            *(a1 + 384) |= 0x10000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v129 = [a2 position] + 1;
              if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
              {
                v131 = [a2 data];
                [v131 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v128 |= (v464 & 0x7F) << v126;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v126 += 7;
              v12 = v127++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_748;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v128;
            }

LABEL_748:
            v454 = 200;
            goto LABEL_949;
          case 124:
            v291 = 0;
            v292 = 0;
            v293 = 0;
            *(a1 + 384) |= 0x800000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v294 = [a2 position] + 1;
              if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
              {
                v296 = [a2 data];
                [v296 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v293 |= (v464 & 0x7F) << v291;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v291 += 7;
              v12 = v292++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_853;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v293;
            }

LABEL_853:
            v454 = 368;
            goto LABEL_949;
          case 127:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 384) |= 0x20000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v464 & 0x7F) << v51;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v12 = v52++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_704;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v53;
            }

LABEL_704:
            v454 = 344;
            goto LABEL_949;
          case 128:
            v447 = 0;
            v448 = 0;
            v449 = 0;
            *(a1 + 384) |= 0x200000000000000uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v450 = [a2 position] + 1;
              if (v450 >= [a2 position] && (v451 = objc_msgSend(a2, "position") + 1, v451 <= objc_msgSend(a2, "length")))
              {
                v452 = [a2 data];
                [v452 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v449 |= (v464 & 0x7F) << v447;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v447 += 7;
              v12 = v448++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_948;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v449;
            }

LABEL_948:
            v454 = 360;
LABEL_949:
            *(a1 + v454) = v42;
            break;
          case 129:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 384) |= 1uLL;
            while (1)
            {
              LOBYTE(v464) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v464 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v464 & 0x7F) << v30;
              if ((v464 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v12 = v31++ >= 9;
              if (v12)
              {
                v29 = 0;
                goto LABEL_692;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v32;
            }

LABEL_692:
            v453 = 32;
LABEL_807:
            *(a1 + v453) = v29;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              break;
            }

            return result;
        }
      }

      v456 = [a2 position];
    }

    while (v456 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100147F78(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v111) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v111 & 0x7F) << v5;
      if ((v111 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v12 >> 3;
    v14 = [NSNumber numberWithUnsignedInt:v13];
    v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v111) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v111 & 0x7F) << v16;
        if ((v111 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      NSLog(@"Unknown tag: %x:%u", v13, v22);
      goto LABEL_210;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 96) |= 2u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v111 & 0x7F) << v23;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_181;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_181:
        v108 = 16;
        goto LABEL_186;
      case 2:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 96) |= 1u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v111 & 0x7F) << v62;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_185;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v64;
        }

LABEL_185:
        v108 = 8;
LABEL_186:
        *(a1 + v108) = v29;
        goto LABEL_210;
      case 3:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v111 & 0x7F) << v49;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_173;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v51;
        }

LABEL_173:
        v107 = 24;
        goto LABEL_209;
      case 4:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 96) |= 0x40u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v111 & 0x7F) << v83;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_196;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v85;
        }

LABEL_196:
        v107 = 56;
        goto LABEL_209;
      case 5:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 96) |= 0x800u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v111 & 0x7F) << v89;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_200;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v91;
        }

LABEL_200:
        v107 = 88;
        goto LABEL_209;
      case 7:
        v55 = objc_alloc_init(KMibInfo);
        objc_storeStrong((a1 + 40), v55);
        v111 = 0;
        v112 = 0;
        if (!PBReaderPlaceMark() || !sub_100132D38(v55, a2))
        {
          goto LABEL_212;
        }

        goto LABEL_100;
      case 9:
        v55 = objc_alloc_init(Sib);
        [a1 addSib:v55];
        v111 = 0;
        v112 = 0;
        if (PBReaderPlaceMark() && sub_10000FC48(v55, a2))
        {
LABEL_100:
          PBReaderRecallMark();

LABEL_210:
          v109 = [a2 position];
          if (v109 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_212:

        return 0;
      case 18:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 96) |= 8u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v111 & 0x7F) << v68;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_190;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v70;
        }

LABEL_190:
        v107 = 28;
        goto LABEL_209;
      case 19:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 96) |= 0x400u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v111 & 0x7F) << v101;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v11 = v102++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_208;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v103;
        }

LABEL_208:
        v107 = 84;
        goto LABEL_209;
      case 20:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 96) |= 0x80u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v111 & 0x7F) << v95;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_204;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v97;
        }

LABEL_204:
        v107 = 60;
        goto LABEL_209;
      case 21:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 96) |= 0x100u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v111 & 0x7F) << v37;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v39;
        }

LABEL_165:
        v107 = 64;
        goto LABEL_209;
      case 22:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 96) |= 0x10u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v111 & 0x7F) << v56;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_177;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v58;
        }

LABEL_177:
        v107 = 48;
        goto LABEL_209;
      case 23:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 96) |= 0x200u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v111 & 0x7F) << v43;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_169;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v45;
        }

LABEL_169:
        v107 = 80;
        goto LABEL_209;
      case 24:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 96) |= 0x20u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v111 & 0x7F) << v30;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_161:
        v107 = 52;
LABEL_209:
        *(a1 + v107) = v36;
        goto LABEL_210;
      case 26:
        v74 = PBReaderReadString();
        v75 = *(a1 + 32);
        *(a1 + 32) = v74;

        goto LABEL_210;
      case 27:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 96) |= 0x1000u;
        while (1)
        {
          LOBYTE(v111) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v111 & 0x7F) << v76;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            LOBYTE(v82) = 0;
            goto LABEL_192;
          }
        }

        v82 = (v78 != 0) & ~[a2 hasError];
LABEL_192:
        *(a1 + 92) = v82;
        goto LABEL_210;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_210;
        }

        return 0;
    }
  }
}

uint64_t sub_10014B024(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v53 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v53 & 0x7F) << v16;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_42:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 > 4)
        {
          if (v13 == 5)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 24) |= 8u;
            while (1)
            {
              v54 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v54 & 0x7F) << v43;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_89;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v45;
            }

LABEL_89:
            v49 = 20;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_54:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_91;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 24) |= 2u;
            while (1)
            {
              v52 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v52 & 0x7F) << v30;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v32;
            }

LABEL_81:
            v49 = 12;
          }
        }

        else if (v13 == 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v56 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v56 & 0x7F) << v37;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v39;
          }

LABEL_85:
          v49 = 16;
        }

        else
        {
          if (v13 != 3)
          {
            goto LABEL_54;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v55 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v55 & 0x7F) << v23;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_77:
          v49 = 8;
        }

        *(a1 + v49) = v29;
      }

LABEL_91:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10014BC9C(id a1)
{
  if (qword_10037A540 != -1)
  {
    sub_100285C70();
  }

  v1 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v3 = "+[SPLog bootstrap]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: log subsystem bootstrapped", buf, 0xCu);
  }

  NSLog(@"***##: %s", "+[SPLog bootstrap]_block_invoke");
}

uint64_t sub_10014C184(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v63 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v63 & 0x7F) << v16;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_43:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v62 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v62 & 0x7F) << v50;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v52;
            }

LABEL_95:
            v57 = 8;
          }

          else
          {
            if (v13 != 2)
            {
LABEL_82:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_105;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v61 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v61 & 0x7F) << v30;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_103:
            v57 = 16;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 28) |= 2u;
              while (1)
              {
                v60 = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v60 & 0x7F) << v37;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_87;
                }
              }

              if ([a2 hasError])
              {
                v36 = 0;
              }

              else
              {
                v36 = v39;
              }

LABEL_87:
              v57 = 12;
              break;
            case 4:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 28) |= 8u;
              while (1)
              {
                v65 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v65 & 0x7F) << v43;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  v49 = 0;
                  goto LABEL_91;
                }
              }

              if ([a2 hasError])
              {
                v49 = 0;
              }

              else
              {
                v49 = v45;
              }

LABEL_91:
              v36 = -(v49 & 1) ^ (v49 >> 1);
              v57 = 20;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 0x10u;
              while (1)
              {
                v64 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v64 & 0x7F) << v23;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_99;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

LABEL_99:
              v36 = -(v29 & 1) ^ (v29 >> 1);
              v57 = 24;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v57) = v36;
      }

LABEL_105:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10014D3F0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v63 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v63 & 0x7F) << v16;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_43:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v62 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v62 & 0x7F) << v48;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v50;
            }

LABEL_95:
            v55 = 8;
          }

          else
          {
            if (v13 != 2)
            {
LABEL_82:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_105;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v61 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v61 & 0x7F) << v30;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v32;
            }

LABEL_103:
            v55 = 20;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 28) |= 0x10u;
              while (1)
              {
                v60 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v60 & 0x7F) << v36;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_87;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v38;
              }

LABEL_87:
              v55 = 24;
              break;
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 28) |= 4u;
              while (1)
              {
                v59 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v59 & 0x7F) << v42;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_91;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v44;
              }

LABEL_91:
              v55 = 16;
              break;
            case 5:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 28) |= 2u;
              while (1)
              {
                v58 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v58 & 0x7F) << v23;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_99;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

LABEL_99:
              v55 = 12;
              break;
            default:
              goto LABEL_82;
          }
        }

        *(a1 + v55) = v29;
      }

LABEL_105:
      v56 = [a2 position];
    }

    while (v56 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10014E45C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v42 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42 & 0x7F) << v16;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_41;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_41:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 == 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 16) |= 1u;
          while (1)
          {
            v40 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v40 & 0x7F) << v30;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_60:
          v37 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 16) |= 2u;
          while (1)
          {
            v41 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_56;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_56:
          v37 = 12;
        }

        *(a1 + v37) = v29;
      }

LABEL_62:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10014F060(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52[0] & 0x7F) << v5;
        if ((v52[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v12 >> 3];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v52[0] & 0x7F) << v16;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_42:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_78;
      }

      if (v13 == 5)
      {
        if ((v12 & 7) == 2)
        {
          v52[0] = 0;
          v52[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v37 = [a2 position];
            if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v38 = 0;
            v39 = 0;
            v40 = 0;
            while (1)
            {
              v53 = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v53 & 0x7F) << v38;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                goto LABEL_66;
              }
            }

            [a2 hasError];
LABEL_66:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          while (1)
          {
            LOBYTE(v52[0]) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v52[0] & 0x7F) << v46;
            if ((v52[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              goto LABEL_91;
            }
          }

          [a2 hasError];
LABEL_91:
          PBRepeatedUInt32Add();
        }

        goto LABEL_78;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v52[0] & 0x7F) << v23;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_76:
        v44 = 32;
LABEL_77:
        *(a1 + v44) = v29;
        goto LABEL_78;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    *(a1 + 40) |= 2u;
    while (1)
    {
      LOBYTE(v52[0]) = 0;
      v33 = [a2 position] + 1;
      if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
      {
        v35 = [a2 data];
        [v35 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v32 |= (v52[0] & 0x7F) << v30;
      if ((v52[0] & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v11 = v31++ >= 9;
      if (v11)
      {
        v29 = 0;
        goto LABEL_72;
      }
    }

    if ([a2 hasError])
    {
      v29 = 0;
    }

    else
    {
      v29 = v32;
    }

LABEL_72:
    v44 = 36;
    goto LABEL_77;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100150264(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61[0] & 0x7F) << v5;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v61[0] & 0x7F) << v16;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_42:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_111;
      }

      if (v13 > 11)
      {
        break;
      }

      if (v13 == 1)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v61[0] & 0x7F) << v37;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_93;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_93:
        *(a1 + 8) = v43;
        goto LABEL_111;
      }

      if (v13 == 2)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v61[0] & 0x7F) << v52;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v54;
        }

LABEL_109:
        v58 = 16;
        goto LABEL_110;
      }

      if (v13 != 3)
      {
        goto LABEL_69;
      }

      v30 = objc_alloc_init(CellularWcdmaTxRxHist);
      [a1 addHistPerBand:v30];
      v61[0] = 0;
      v61[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10007E984(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_111:
      v59 = [a2 position];
      if (v59 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 13)
    {
      if (v13 == 12)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v61[0] & 0x7F) << v44;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v46;
        }

LABEL_97:
        v58 = 32;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v61[0] & 0x7F) << v23;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_101:
        v58 = 48;
      }

LABEL_110:
      *(a1 + v58) = v29;
      goto LABEL_111;
    }

    if (v13 == 14)
    {
      v50 = PBReaderReadData();
      v51 = *(a1 + 40);
      *(a1 + 40) = v50;

      goto LABEL_111;
    }

    if (v13 == 15)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 56) |= 0x10u;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v61[0] & 0x7F) << v31;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_105;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v33;
      }

LABEL_105:
      v58 = 52;
      goto LABEL_110;
    }

LABEL_69:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_111;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100156834(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v158 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v158 & 0x7F) << v5;
        if ((v158 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v158 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v158 & 0x7F) << v16;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 112) |= 1u;
            while (1)
            {
              v158 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v158 & 0x7F) << v23;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_267:
                *(a1 + 8) = v29;
                goto LABEL_309;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

            goto LABEL_267;
          case 2:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 112) |= 0x10000u;
            while (1)
            {
              v158 = 0;
              v103 = [a2 position] + 1;
              if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
              {
                v105 = [a2 data];
                [v105 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v102 |= (v158 & 0x7F) << v100;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v11 = v101++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_275;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v102;
            }

LABEL_275:
            v156 = 84;
            goto LABEL_308;
          case 3:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 112) |= 0x20000u;
            while (1)
            {
              v158 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v158 & 0x7F) << v56;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_243;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v58;
            }

LABEL_243:
            v156 = 96;
            goto LABEL_308;
          case 4:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 112) |= 0x1000u;
            while (1)
            {
              v158 = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v158 & 0x7F) << v94;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_271;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v96;
            }

LABEL_271:
            v156 = 60;
            goto LABEL_308;
          case 5:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 112) |= 0x40000u;
            while (1)
            {
              v158 = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v158 & 0x7F) << v62;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_247;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v64;
            }

LABEL_247:
            v156 = 100;
            goto LABEL_308;
          case 6:
            v82 = 0;
            v83 = 0;
            v84 = 0;
            *(a1 + 112) |= 0x800u;
            while (1)
            {
              v158 = 0;
              v85 = [a2 position] + 1;
              if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
              {
                v87 = [a2 data];
                [v87 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v84 |= (v158 & 0x7F) << v82;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              v11 = v83++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_259;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v84;
            }

LABEL_259:
            v156 = 56;
            goto LABEL_308;
          case 7:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            *(a1 + 112) |= 0x400u;
            while (1)
            {
              v158 = 0;
              v109 = [a2 position] + 1;
              if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
              {
                v111 = [a2 data];
                [v111 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v108 |= (v158 & 0x7F) << v106;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v11 = v107++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_279;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v108;
            }

LABEL_279:
            v156 = 52;
            goto LABEL_308;
          case 8:
            v68 = PBReaderReadData();
            v69 = 88;
            goto LABEL_160;
          case 9:
            v131 = 0;
            v132 = 0;
            v133 = 0;
            *(a1 + 112) |= 2u;
            while (1)
            {
              v158 = 0;
              v134 = [a2 position] + 1;
              if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
              {
                v136 = [a2 data];
                [v136 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v133 |= (v158 & 0x7F) << v131;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v11 = v132++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_295;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v133;
            }

LABEL_295:
            v156 = 16;
            goto LABEL_308;
          case 10:
            v125 = 0;
            v126 = 0;
            v127 = 0;
            *(a1 + 112) |= 8u;
            while (1)
            {
              v158 = 0;
              v128 = [a2 position] + 1;
              if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
              {
                v130 = [a2 data];
                [v130 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v127 |= (v158 & 0x7F) << v125;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              v11 = v126++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_291;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v127;
            }

LABEL_291:
            v156 = 24;
            goto LABEL_308;
          case 11:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 112) |= 4u;
            while (1)
            {
              v158 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v158 & 0x7F) << v50;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_239;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v52;
            }

LABEL_239:
            v156 = 20;
            goto LABEL_308;
          case 12:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 112) |= 0x80000u;
            while (1)
            {
              v158 = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v158 & 0x7F) << v88;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_263;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v90;
            }

LABEL_263:
            v156 = 104;
            goto LABEL_308;
          case 13:
            v70 = 0;
            v71 = 0;
            v72 = 0;
            *(a1 + 112) |= 0x80u;
            while (1)
            {
              v158 = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v158 & 0x7F) << v70;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_251;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v72;
            }

LABEL_251:
            v156 = 40;
            goto LABEL_308;
          case 14:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 112) |= 0x100000u;
            while (1)
            {
              v158 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v158 & 0x7F) << v43;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                LOBYTE(v49) = 0;
                goto LABEL_235;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_235:
            *(a1 + 108) = v49;
            goto LABEL_309;
          case 15:
            v113 = 0;
            v114 = 0;
            v115 = 0;
            *(a1 + 112) |= 0x100u;
            while (1)
            {
              v158 = 0;
              v116 = [a2 position] + 1;
              if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
              {
                v118 = [a2 data];
                [v118 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v115 |= (v158 & 0x7F) << v113;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v113 += 7;
              v11 = v114++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_283;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v115;
            }

LABEL_283:
            v156 = 44;
            goto LABEL_308;
          case 16:
            v119 = 0;
            v120 = 0;
            v121 = 0;
            *(a1 + 112) |= 0x200u;
            while (1)
            {
              v158 = 0;
              v122 = [a2 position] + 1;
              if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
              {
                v124 = [a2 data];
                [v124 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v121 |= (v158 & 0x7F) << v119;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              v11 = v120++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_287;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v121;
            }

LABEL_287:
            v156 = 48;
            goto LABEL_308;
          case 17:
            v144 = 0;
            v145 = 0;
            v146 = 0;
            *(a1 + 112) |= 0x40u;
            while (1)
            {
              v158 = 0;
              v147 = [a2 position] + 1;
              if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
              {
                v149 = [a2 data];
                [v149 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v146 |= (v158 & 0x7F) << v144;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v144 += 7;
              v11 = v145++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_303;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v146;
            }

LABEL_303:
            v156 = 36;
            goto LABEL_308;
          case 18:
            v138 = 0;
            v139 = 0;
            v140 = 0;
            *(a1 + 112) |= 0x4000u;
            while (1)
            {
              v158 = 0;
              v141 = [a2 position] + 1;
              if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
              {
                v143 = [a2 data];
                [v143 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v140 |= (v158 & 0x7F) << v138;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v138 += 7;
              v11 = v139++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_299;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v140;
            }

LABEL_299:
            v156 = 68;
            goto LABEL_308;
          case 21:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 112) |= 0x10u;
            while (1)
            {
              v158 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v158 & 0x7F) << v30;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_229;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_229:
            v156 = 28;
            goto LABEL_308;
          case 22:
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 112) |= 0x20u;
            while (1)
            {
              v158 = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v158 & 0x7F) << v76;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_255;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v78;
            }

LABEL_255:
            v156 = 32;
            goto LABEL_308;
          case 23:
            v150 = 0;
            v151 = 0;
            v152 = 0;
            *(a1 + 112) |= 0x2000u;
            while (1)
            {
              v158 = 0;
              v153 = [a2 position] + 1;
              if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
              {
                v155 = [a2 data];
                [v155 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v152 |= (v158 & 0x7F) << v150;
              if ((v158 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              v11 = v151++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_307;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v152;
            }

LABEL_307:
            v156 = 64;
            goto LABEL_308;
          case 24:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 112) |= 0x8000u;
            break;
          case 25:
            v68 = PBReaderReadData();
            v69 = 72;
LABEL_160:
            v112 = *(a1 + v69);
            *(a1 + v69) = v68;

            goto LABEL_309;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_309;
            }

            return result;
        }

        while (1)
        {
          v158 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v158 & 0x7F) << v37;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_233;
          }
        }

        v36 = [a2 hasError] ? 0 : v39;
LABEL_233:
        v156 = 80;
LABEL_308:
        *(a1 + v156) = v36;
      }

LABEL_309:
      v157 = [a2 position];
    }

    while (v157 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10015AD2C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v140) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v140 & 0x7F) << v5;
      if ((v140 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v12 >> 3;
    v14 = [NSNumber numberWithUnsignedInt:v13];
    v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v140) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v140 & 0x7F) << v16;
        if ((v140 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      NSLog(@"Unknown tag: %x:%u", v13, v22);
      goto LABEL_274;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 116) |= 1u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v140 & 0x7F) << v23;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_238;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_238:
        *(a1 + 8) = v29;
        goto LABEL_274;
      case 2:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 116) |= 0x10u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v140 & 0x7F) << v82;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_242;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v84;
        }

LABEL_242:
        v137 = 28;
        goto LABEL_273;
      case 3:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 116) |= 0x800u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v140 & 0x7F) << v58;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_222;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v60;
        }

LABEL_222:
        v137 = 56;
        goto LABEL_273;
      case 4:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 116) |= 0x40u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v140 & 0x7F) << v70;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_230;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v72;
        }

LABEL_230:
        v137 = 36;
        goto LABEL_273;
      case 5:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 116) |= 8u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v140 & 0x7F) << v40;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_210;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v42;
        }

LABEL_210:
        v137 = 24;
        goto LABEL_273;
      case 6:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 116) |= 0x80u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v140 & 0x7F) << v100;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_254;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v102;
        }

LABEL_254:
        v137 = 40;
        goto LABEL_273;
      case 7:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 116) |= 0x400u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v140 & 0x7F) << v106;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v11 = v107++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_258;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v108;
        }

LABEL_258:
        v137 = 52;
        goto LABEL_273;
      case 8:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 116) |= 0x100u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v140 & 0x7F) << v76;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_234;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v78;
        }

LABEL_234:
        v137 = 44;
        goto LABEL_273;
      case 9:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 116) |= 0x200u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v140 & 0x7F) << v125;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_268;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v127;
        }

LABEL_268:
        v137 = 48;
        goto LABEL_273;
      case 10:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 116) |= 0x20u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v140 & 0x7F) << v52;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_218;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v54;
        }

LABEL_218:
        v137 = 32;
        goto LABEL_273;
      case 11:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 116) |= 0x20000u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v140 & 0x7F) << v118;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v11 = v119++ >= 9;
          if (v11)
          {
            LOBYTE(v124) = 0;
            goto LABEL_264;
          }
        }

        v124 = (v120 != 0) & ~[a2 hasError];
LABEL_264:
        *(a1 + 112) = v124;
        goto LABEL_274;
      case 12:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 116) |= 0x2000u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v140 & 0x7F) << v33;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_206;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v35;
        }

LABEL_206:
        v137 = 76;
        goto LABEL_273;
      case 13:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 116) |= 0x1000u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v140 & 0x7F) << v46;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_214;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v48;
        }

LABEL_214:
        v137 = 72;
        goto LABEL_273;
      case 14:
        v32 = objc_alloc_init(BandCombo);
        objc_storeStrong((a1 + 64), v32);
        v140 = 0;
        v141 = 0;
        if (PBReaderPlaceMark() && sub_10002201C(v32, a2))
        {
          goto LABEL_157;
        }

        goto LABEL_276;
      case 15:
        v32 = objc_alloc_init(NwUeCapMimoStat);
        [a1 addNwUeCapStat:v32];
        v140 = 0;
        v141 = 0;
        if (PBReaderPlaceMark() && sub_1001639BC(v32, a2))
        {
LABEL_157:
          PBReaderRecallMark();

LABEL_274:
          v138 = [a2 position];
          if (v138 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_276:

        return 0;
      case 16:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 116) |= 0x4000u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v140 & 0x7F) << v64;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_226;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v66;
        }

LABEL_226:
        v137 = 80;
        goto LABEL_273;
      case 17:
        v30 = PBReaderReadData();
        v31 = *(a1 + 96);
        *(a1 + 96) = v30;

        goto LABEL_274;
      case 18:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 116) |= 0x10000u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v140 & 0x7F) << v88;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v11 = v89++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_246;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v90;
        }

LABEL_246:
        v137 = 108;
        goto LABEL_273;
      case 19:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 116) |= 0x8000u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v140 & 0x7F) << v112;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_262;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v114;
        }

LABEL_262:
        v137 = 104;
        goto LABEL_273;
      case 20:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 116) |= 2u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v140 & 0x7F) << v131;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_272;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v133;
        }

LABEL_272:
        v137 = 16;
        goto LABEL_273;
      case 21:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 116) |= 4u;
        while (1)
        {
          LOBYTE(v140) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v140 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v140 & 0x7F) << v94;
          if ((v140 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_250;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v96;
        }

LABEL_250:
        v137 = 20;
LABEL_273:
        *(a1 + v137) = v39;
        goto LABEL_274;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_274;
        }

        return 0;
    }
  }
}

uint64_t sub_10015E720(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v40 & 0x7F) << v16;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_38:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_81;
      }

      if (v13 <= 7)
      {
        if (v13 > 3)
        {
          if (v13 == 4)
          {
            v23 = objc_alloc_init(HoFromEutranCount);
            [a1 addFromLteHoCount:v23];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_100174B8C(v23, a2))
            {
LABEL_94:

              return 0;
            }

            goto LABEL_80;
          }

          if (v13 == 6)
          {
            v23 = objc_alloc_init(ReFromEutranCount);
            [a1 addFromLteReselCount:v23];
            goto LABEL_75;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v40 & 0x7F) << v31;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_92;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v33;
            }

LABEL_92:
            *(a1 + 8) = v37;
            goto LABEL_81;
          }

          if (v13 == 2)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v40 & 0x7F) << v24;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_88;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_88:
            *(a1 + 24) = v30;
            goto LABEL_81;
          }
        }
      }

      else if (v13 <= 11)
      {
        if (v13 == 8)
        {
          v23 = objc_alloc_init(ReFromEutranCount);
          [a1 addFromLteRedirCount:v23];
LABEL_75:
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !sub_1000C7994(v23, a2))
          {
            goto LABEL_94;
          }

LABEL_80:
          PBReaderRecallMark();

          goto LABEL_81;
        }

        if (v13 == 11)
        {
          v23 = objc_alloc_init(HoFromUtranCount);
          objc_storeStrong((a1 + 56), v23);
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !sub_10014F060(v23, a2))
          {
            goto LABEL_94;
          }

          goto LABEL_80;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xC:
            v23 = objc_alloc_init(ReselFromUtranCount);
            objc_storeStrong((a1 + 72), v23);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_100052B7C(v23, a2))
            {
              goto LABEL_94;
            }

            goto LABEL_80;
          case 0xE:
            v23 = objc_alloc_init(RedirFromUtranCount);
            [a1 addWtolRedirCount:v23];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_100194F1C(v23, a2))
            {
              goto LABEL_94;
            }

            goto LABEL_80;
          case 0x10:
            v23 = objc_alloc_init(ReselFromDoCount);
            [a1 addCtolReselCount:v23];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_10011EAC0(v23, a2))
            {
              goto LABEL_94;
            }

            goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001607BC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v40 & 0x7F) << v16;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_36:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_70;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v23 = objc_alloc_init(EgwErrcNbrGeranMeas);
          [a1 addMeasNbrGeran:v23];
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !sub_100166E28(v23, a2))
          {
LABEL_72:

            return 0;
          }

          goto LABEL_61;
        }

        if (v13 == 15)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v40 & 0x7F) << v24;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_65:
          *(a1 + 32) = v30;
          goto LABEL_70;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_69:
          *(a1 + 8) = v37;
          goto LABEL_70;
        }

        if (v13 == 2)
        {
          v23 = objc_alloc_init(EgwErrcNbrUtraMeas);
          [a1 addMeasNbrUtra:v23];
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !sub_10012C6B4(v23, a2))
          {
            goto LABEL_72;
          }

LABEL_61:
          PBReaderRecallMark();

          goto LABEL_70;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_70:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100162014(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v78 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78 & 0x7F) << v5;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v85 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v85 & 0x7F) << v16;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_44:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_150;
      }

      if (v13 <= 5)
      {
        if (v13 > 3)
        {
          if (v13 == 4)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v83 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v83 & 0x7F) << v55;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_136;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v57;
            }

LABEL_136:
            v76 = 16;
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 52) |= 0x40u;
            while (1)
            {
              v82 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v82 & 0x7F) << v36;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_124;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v38;
            }

LABEL_124:
            v76 = 44;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v86 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v86 & 0x7F) << v48;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v54 = 0;
                goto LABEL_132;
              }
            }

            if ([a2 hasError])
            {
              v54 = 0;
            }

            else
            {
              v54 = v50;
            }

LABEL_132:
            *(a1 + 8) = v54;
            goto LABEL_150;
          }

          if (v13 != 3)
          {
            goto LABEL_115;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v84 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v84 & 0x7F) << v30;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_120;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_120:
          v76 = 20;
        }

        goto LABEL_149;
      }

      if (v13 <= 12)
      {
        if (v13 == 6)
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v87 = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              v72 = [a2 data];
              [v72 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v87 & 0x7F) << v67;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v69;
          }

LABEL_144:
          v76 = 24;
        }

        else
        {
          if (v13 != 12)
          {
LABEL_115:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_150;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v81 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v81 & 0x7F) << v42;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_128;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v44;
          }

LABEL_128:
          v76 = 28;
        }

        goto LABEL_149;
      }

      if (v13 == 13)
      {
        break;
      }

      if (v13 != 14)
      {
        if (v13 != 15)
        {
          goto LABEL_115;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 52) |= 0x80u;
        while (1)
        {
          v79 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v79 & 0x7F) << v23;
          if ((v79 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_148:
        v76 = 48;
        goto LABEL_149;
      }

      v73 = PBReaderReadData();
      v74 = *(a1 + 32);
      *(a1 + 32) = v73;

LABEL_150:
      v77 = [a2 position];
      if (v77 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    *(a1 + 52) |= 0x20u;
    while (1)
    {
      v80 = 0;
      v64 = [a2 position] + 1;
      if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
      {
        v66 = [a2 data];
        [v66 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v63 |= (v80 & 0x7F) << v61;
      if ((v80 & 0x80) == 0)
      {
        break;
      }

      v61 += 7;
      v11 = v62++ >= 9;
      if (v11)
      {
        v29 = 0;
        goto LABEL_140;
      }
    }

    if ([a2 hasError])
    {
      v29 = 0;
    }

    else
    {
      v29 = v63;
    }

LABEL_140:
    v76 = 40;
LABEL_149:
    *(a1 + v76) = v29;
    goto LABEL_150;
  }

  return [a2 hasError] ^ 1;
}