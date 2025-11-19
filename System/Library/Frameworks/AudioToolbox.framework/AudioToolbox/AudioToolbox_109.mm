unint64_t FLAC__lpc_compute_residual_from_qlp_coefficients(unint64_t result, int a2, unint64_t a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  v494 = a6;
  v493 = a5;
  v7 = a4 - 13;
  if (a4 >= 0xD)
  {
    if (a2 >= 1)
    {
      v38 = 0;
      v39 = a3 + 4 * a4;
      v40 = a3 + 120;
      v43 = a3 + 120 <= a3 + 124 && a3 + 124 <= v39 && v40 >= a3;
      v472 = v43;
      v44 = a3 + 116;
      v47 = a3 + 116 <= v40 && v40 <= v39 && v44 >= a3;
      v473 = v47;
      v48 = a3 + 112;
      v51 = a3 + 112 <= v44 && v44 <= v39 && v48 >= a3;
      v474 = v51;
      v52 = a3 + 108;
      v55 = a3 + 108 <= v48 && v48 <= v39 && v52 >= a3;
      v475 = v55;
      v56 = a3 + 104;
      v59 = a3 + 104 <= v52 && v52 <= v39 && v56 >= a3;
      v476 = v59;
      v60 = a3 + 100;
      v63 = a3 + 100 <= v56 && v56 <= v39 && v60 >= a3;
      v477 = v63;
      v64 = a3 + 96;
      v67 = a3 + 96 <= v60 && v60 <= v39 && v64 >= a3;
      v478 = v67;
      v68 = a3 + 92;
      v71 = a3 + 92 <= v64 && v64 <= v39 && v68 >= a3;
      v479 = v71;
      v72 = a3 + 88;
      v75 = a3 + 88 <= v68 && v68 <= v39 && v72 >= a3;
      v480 = v75;
      v76 = a3 + 84;
      v79 = a3 + 84 <= v72 && v72 <= v39 && v76 >= a3;
      v481 = v79;
      v80 = a3 + 80;
      v83 = a3 + 80 <= v76 && v76 <= v39 && v80 >= a3;
      v482 = v83;
      v84 = a3 + 76;
      v87 = a3 + 76 <= v80 && v80 <= v39 && v84 >= a3;
      v483 = v87;
      v88 = a3 + 72;
      v91 = a3 + 72 <= v84 && v84 <= v39 && v88 >= a3;
      v484 = v91;
      v92 = a3 + 68;
      v95 = a3 + 68 <= v88 && v88 <= v39 && v92 >= a3;
      v485 = v95;
      v96 = a3 + 64;
      v99 = a3 + 64 <= v92 && v92 <= v39 && v96 >= a3;
      v487 = v99;
      v100 = (a3 + 60);
      v103 = a3 + 60 <= v96 && v96 <= v39 && v100 >= a3;
      v489 = v103;
      v104 = (a3 + 56);
      v107 = a3 + 56 <= v100 && v100 <= v39 && v104 >= a3;
      v491 = v107;
      v108 = a3 + 52 > v104 || v104 > v39;
      v109 = 4 * a2;
      v110 = !v108;
      while (2)
      {
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        switch(v7)
        {
          case 0u:
            v129 = 0;
            v130 = *result;
            v131 = *(result + 8);
            v132 = *(result + 16);
            goto LABEL_405;
          case 1u:
            goto LABEL_395;
          case 2u:
            goto LABEL_385;
          case 3u:
            goto LABEL_375;
          case 4u:
            goto LABEL_365;
          case 5u:
            goto LABEL_355;
          case 6u:
            goto LABEL_345;
          case 7u:
            goto LABEL_335;
          case 8u:
            goto LABEL_325;
          case 9u:
            goto LABEL_315;
          case 0xAu:
            goto LABEL_305;
          case 0xBu:
            goto LABEL_295;
          case 0xCu:
            goto LABEL_285;
          case 0xDu:
            goto LABEL_275;
          case 0xEu:
            goto LABEL_265;
          case 0xFu:
            goto LABEL_255;
          case 0x10u:
            goto LABEL_245;
          case 0x11u:
            goto LABEL_235;
          case 0x12u:
            goto LABEL_225;
          case 0x13u:
            v134 = *result + v38;
            v135 = (v134 - 128);
            v136 = v134 - 124;
            if (v136 > *(result + 8) || v135 > v136 || v135 < *(result + 16))
            {
              goto LABEL_796;
            }

            v111 = *v135 * *(a3 + 124);
LABEL_225:
            if (!v472)
            {
              goto LABEL_796;
            }

            v139 = *result + v38;
            v140 = (v139 - 124);
            v141 = v139 - 120;
            v142 = v141 > *(result + 8) || v140 > v141;
            if (v142 || v140 < *(result + 16))
            {
              goto LABEL_796;
            }

            v112 = v111 + *v140 * *(a3 + 120);
LABEL_235:
            if (!v473)
            {
              goto LABEL_796;
            }

            v144 = *result + v38;
            v145 = (v144 - 120);
            v146 = v144 - 116;
            v147 = v146 > *(result + 8) || v145 > v146;
            if (v147 || v145 < *(result + 16))
            {
              goto LABEL_796;
            }

            v113 = v112 + *v145 * *(a3 + 116);
LABEL_245:
            if (!v474)
            {
              goto LABEL_796;
            }

            v149 = *result + v38;
            v150 = (v149 - 116);
            v151 = v149 - 112;
            v152 = v151 > *(result + 8) || v150 > v151;
            if (v152 || v150 < *(result + 16))
            {
              goto LABEL_796;
            }

            v114 = v113 + *v150 * *(a3 + 112);
LABEL_255:
            if (!v475)
            {
              goto LABEL_796;
            }

            v154 = *result + v38;
            v155 = (v154 - 112);
            v156 = v154 - 108;
            v157 = v156 > *(result + 8) || v155 > v156;
            if (v157 || v155 < *(result + 16))
            {
              goto LABEL_796;
            }

            v115 = v114 + *v155 * *(a3 + 108);
LABEL_265:
            if (!v476)
            {
              goto LABEL_796;
            }

            v159 = *result + v38;
            v160 = (v159 - 108);
            v161 = v159 - 104;
            v162 = v161 > *(result + 8) || v160 > v161;
            if (v162 || v160 < *(result + 16))
            {
              goto LABEL_796;
            }

            v116 = v115 + *v160 * *(a3 + 104);
LABEL_275:
            if (!v477)
            {
              goto LABEL_796;
            }

            v164 = *result + v38;
            v165 = (v164 - 104);
            v166 = v164 - 100;
            v167 = v166 > *(result + 8) || v165 > v166;
            if (v167 || v165 < *(result + 16))
            {
              goto LABEL_796;
            }

            v117 = v116 + *v165 * *(a3 + 100);
LABEL_285:
            if (!v478)
            {
              goto LABEL_796;
            }

            v169 = *result + v38;
            v170 = (v169 - 100);
            v171 = v169 - 96;
            v172 = v171 > *(result + 8) || v170 > v171;
            if (v172 || v170 < *(result + 16))
            {
              goto LABEL_796;
            }

            v118 = v117 + *v170 * *(a3 + 96);
LABEL_295:
            if (!v479)
            {
              goto LABEL_796;
            }

            v174 = *result + v38;
            v175 = (v174 - 96);
            v176 = v174 - 92;
            v177 = v176 > *(result + 8) || v175 > v176;
            if (v177 || v175 < *(result + 16))
            {
              goto LABEL_796;
            }

            v119 = v118 + *v175 * *(a3 + 92);
LABEL_305:
            if (!v480)
            {
              goto LABEL_796;
            }

            v179 = *result + v38;
            v180 = (v179 - 92);
            v181 = v179 - 88;
            v182 = v181 > *(result + 8) || v180 > v181;
            if (v182 || v180 < *(result + 16))
            {
              goto LABEL_796;
            }

            v120 = v119 + *v180 * *(a3 + 88);
LABEL_315:
            if (!v481)
            {
              goto LABEL_796;
            }

            v184 = *result + v38;
            v185 = (v184 - 88);
            v186 = v184 - 84;
            v187 = v186 > *(result + 8) || v185 > v186;
            if (v187 || v185 < *(result + 16))
            {
              goto LABEL_796;
            }

            v121 = v120 + *v185 * *(a3 + 84);
LABEL_325:
            if (!v482)
            {
              goto LABEL_796;
            }

            v189 = *result + v38;
            v190 = (v189 - 84);
            v191 = v189 - 80;
            v192 = v191 > *(result + 8) || v190 > v191;
            if (v192 || v190 < *(result + 16))
            {
              goto LABEL_796;
            }

            v122 = v121 + *v190 * *(a3 + 80);
LABEL_335:
            if (!v483)
            {
              goto LABEL_796;
            }

            v194 = *result + v38;
            v195 = (v194 - 80);
            v196 = v194 - 76;
            v197 = v196 > *(result + 8) || v195 > v196;
            if (v197 || v195 < *(result + 16))
            {
              goto LABEL_796;
            }

            v123 = v122 + *v195 * *(a3 + 76);
LABEL_345:
            if (!v484)
            {
              goto LABEL_796;
            }

            v199 = *result + v38;
            v200 = (v199 - 76);
            v201 = v199 - 72;
            v202 = v201 > *(result + 8) || v200 > v201;
            if (v202 || v200 < *(result + 16))
            {
              goto LABEL_796;
            }

            v124 = v123 + *v200 * *(a3 + 72);
LABEL_355:
            if (!v485)
            {
              goto LABEL_796;
            }

            v204 = *result + v38;
            v205 = (v204 - 72);
            v206 = v204 - 68;
            v207 = v206 > *(result + 8) || v205 > v206;
            if (v207 || v205 < *(result + 16))
            {
              goto LABEL_796;
            }

            v125 = v124 + *v205 * *(a3 + 68);
LABEL_365:
            if (!v487)
            {
              goto LABEL_796;
            }

            v209 = *result + v38;
            v210 = (v209 - 68);
            v211 = v209 - 64;
            v212 = v211 > *(result + 8) || v210 > v211;
            if (v212 || v210 < *(result + 16))
            {
              goto LABEL_796;
            }

            v126 = v125 + *v210 * *(a3 + 64);
LABEL_375:
            if (!v489)
            {
              goto LABEL_796;
            }

            v214 = *result + v38;
            v215 = (v214 - 64);
            v216 = v214 - 60;
            v217 = v216 > *(result + 8) || v215 > v216;
            if (v217 || v215 < *(result + 16))
            {
              goto LABEL_796;
            }

            v127 = v126 + *v215 * *v100;
LABEL_385:
            if (!v491)
            {
              goto LABEL_796;
            }

            v219 = *result + v38;
            v220 = (v219 - 60);
            v221 = v219 - 56;
            v222 = v221 > *(result + 8) || v220 > v221;
            if (v222 || v220 < *(result + 16))
            {
              goto LABEL_796;
            }

            v128 = v127 + *v220 * *v104;
LABEL_395:
            if (!v110)
            {
              goto LABEL_796;
            }

            v130 = *result;
            v131 = *(result + 8);
            v132 = *(result + 16);
            v224 = *result + v38;
            v225 = (v224 - 56);
            v226 = v224 - 52;
            v227 = v226 > v131 || v225 > v226;
            if (v227 || v225 < v132)
            {
              goto LABEL_796;
            }

            v129 = v128 + *v225 * *(a3 + 52);
LABEL_405:
            v229 = &v130[v38 / 4];
            v230 = &v130[v38 / 4 - 13];
            v231 = &v130[v38 / 4 - 12];
            v232 = v231 > v131 || v230 > v231;
            if (v232 || v230 < v132)
            {
              goto LABEL_796;
            }

            v234 = v229 - 44;
            if (v229 - 44 > v131 || v231 > v234)
            {
              goto LABEL_796;
            }

            v236 = &v130[v38 / 4 - 10];
            if (v236 > v131 || v234 > v236)
            {
              goto LABEL_796;
            }

            v238 = &v130[v38 / 4 - 9];
            if (v238 > v131)
            {
              goto LABEL_796;
            }

            if (v236 > v238)
            {
              goto LABEL_796;
            }

            v239 = &v130[v38 / 4 - 8];
            if (v239 > v131)
            {
              goto LABEL_796;
            }

            if (v238 > v239)
            {
              goto LABEL_796;
            }

            v240 = &v130[v38 / 4 - 7];
            if (v240 > v131)
            {
              goto LABEL_796;
            }

            if (v239 > v240)
            {
              goto LABEL_796;
            }

            v241 = &v130[v38 / 4 - 6];
            if (v241 > v131)
            {
              goto LABEL_796;
            }

            if (v240 > v241)
            {
              goto LABEL_796;
            }

            v242 = &v130[v38 / 4 - 5];
            if (v242 > v131)
            {
              goto LABEL_796;
            }

            if (v241 > v242)
            {
              goto LABEL_796;
            }

            v243 = &v130[v38 / 4 - 4];
            if (v243 > v131)
            {
              goto LABEL_796;
            }

            if (v242 > v243)
            {
              goto LABEL_796;
            }

            v244 = &v130[v38 / 4 - 3];
            if (v244 > v131)
            {
              goto LABEL_796;
            }

            if (v243 > v244)
            {
              goto LABEL_796;
            }

            v245 = &v130[v38 / 4 - 2];
            if (v245 > v131)
            {
              goto LABEL_796;
            }

            if (v244 > v245)
            {
              goto LABEL_796;
            }

            v246 = &v130[v38 / 4 - 1];
            if (v246 > v131 || v245 > v246 || v229 > v131 || v246 > v229)
            {
              goto LABEL_796;
            }

            v247 = vrev64q_s32(*(a3 + 36));
            v248 = vrev64q_s32(*(a3 + 20));
            v249 = vrev64q_s32(*(a3 + 4));
            v133 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(*&v130[v38 / 4 - 9], vextq_s8(v248, v248, 8uLL)), *v230, vextq_s8(v247, v247, 8uLL)), *v242, vextq_s8(v249, v249, 8uLL))) + *v246 * *a3 + v129;
LABEL_442:
            v250 = &v130[v38 / 4];
            v251 = &v130[v38 / 4 + 1];
            if (v251 > v131 || v250 > v251 || v250 < v132)
            {
              goto LABEL_796;
            }

            v494[v38 / 4] = *v250 - (v133 >> v493);
            v38 += 4;
            if (v109 == v38)
            {
              return result;
            }

            continue;
          default:
            v133 = 0;
            v130 = *result;
            v131 = *(result + 8);
            v132 = *(result + 16);
            goto LABEL_442;
        }
      }
    }
  }

  else if (a4 < 9)
  {
    if (a4 < 5)
    {
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          if (a2 >= 1)
          {
            v398 = (a3 + 4);
            if (a3 + 4 <= a3 + 8 && v398 >= a3)
            {
              v399 = *result;
              v400 = *(result + 8);
              v401 = a2;
              v402 = *(result + 16);
              while (1)
              {
                v403 = v399 - 2;
                v404 = v399 - 1;
                v405 = (v399 - 1) > v400 || v403 > v404;
                v406 = !v405 && v403 >= v402;
                if (!v406 || v399 > v400 || v404 > v399 || (v399 + 1) > v400 || v399 > v399 + 1)
                {
                  break;
                }

                v407 = *(v399 - 1);
                v408 = *(v399 - 2) * *v398;
                v409 = *v399++;
                *v494++ = v409 - ((v408 + v407 * *a3) >> a5);
                if (!--v401)
                {
                  return result;
                }
              }
            }

            goto LABEL_796;
          }
        }

        else if (a2 >= 1)
        {
          v464 = *result;
          v465 = *(result + 8);
          v466 = *(result + 16);
          v468 = a3 + 4 >= a3 && a3 + 4 <= a3 + 4 * a4;
          v469 = a2;
          while (1)
          {
            v470 = (v464 + 1) > v465 || v464 > v464 + 1;
            v471 = !v470 && v464 >= v466;
            if (!v471 || !v468 || v464 < 4 || (v464 - 1) < v466)
            {
              break;
            }

            *v494++ = *v464 - ((*(v464 - 1) * *a3) >> a5);
            ++v464;
            if (!--v469)
            {
              return result;
            }
          }

          goto LABEL_796;
        }
      }

      else if (a4 == 4)
      {
        if (a2 >= 1)
        {
          v306 = a3 + 16;
          v307 = (a3 + 12);
          if (a3 + 12 <= a3 + 16 && v307 >= a3)
          {
            v308 = 0;
            v309 = (a3 + 8);
            v310 = (a3 + 4);
            v311 = *result;
            v312 = *(result + 8);
            v313 = *(result + 16);
            v314 = 4 * a2;
            while (1)
            {
              v315 = &v311[v308 / 4];
              v316 = &v311[v308 / 4 - 4];
              result = &v311[v308 / 4 - 3];
              v317 = result > v312 || v316 > result;
              if (v317 || v316 < v313)
              {
                break;
              }

              v319 = v315 - 2;
              if ((v315 - 2) > v312)
              {
                break;
              }

              if (result > v319)
              {
                break;
              }

              if (v309 > v306)
              {
                break;
              }

              v320 = &v311[v308 / 4 - 1];
              if (v320 > v312)
              {
                break;
              }

              if (v319 > v320)
              {
                break;
              }

              if (v310 > v306)
              {
                break;
              }

              if (v315 > v312)
              {
                break;
              }

              if (v320 > v315)
              {
                break;
              }

              v321 = &v311[v308 / 4 + 1];
              if (v321 > v312 || v315 > v321)
              {
                break;
              }

              v322 = *v315 - ((*v316 * *v307 + *result * *v309 + *v319 * *v310 + *v320 * *a3) >> v493);
              result = v494;
              v494[v308 / 4] = v322;
              v308 += 4;
              if (v314 == v308)
              {
                return result;
              }
            }
          }

          goto LABEL_796;
        }
      }

      else if (a2 >= 1)
      {
        v432 = (a3 + 8);
        if (a3 + 8 <= a3 + 12 && v432 >= a3)
        {
          v433 = 0;
          v434 = (a3 + 4);
          v435 = *result;
          v436 = *(result + 8);
          v437 = *(result + 16);
          v438 = 4 * a2;
          while (1)
          {
            v439 = &v435[v433 / 4];
            result = &v435[v433 / 4 - 3];
            v440 = &v435[v433 / 4 - 2];
            v441 = v440 > v436 || result > v440;
            if (v441 || result < v437)
            {
              break;
            }

            v443 = v439 - 1;
            if ((v439 - 1) > v436)
            {
              break;
            }

            if (v440 > v443)
            {
              break;
            }

            if (v434 > a3 + 12)
            {
              break;
            }

            if (v439 > v436)
            {
              break;
            }

            if (v443 > v439)
            {
              break;
            }

            v444 = &v435[v433 / 4 + 1];
            if (v444 > v436 || v439 > v444)
            {
              break;
            }

            v445 = *result * *v432 + *v440 * *v434 + *v443 * *a3;
            result = a5;
            a6[v433 / 4] = *v439 - (v445 >> a5);
            v433 += 4;
            if (v438 == v433)
            {
              return result;
            }
          }
        }

        goto LABEL_796;
      }
    }

    else if (a4 < 7)
    {
      if (a4 == 6)
      {
        if (a2 >= 1)
        {
          v352 = a3 + 24;
          v353 = (a3 + 20);
          if (a3 + 20 <= a3 + 24 && v353 >= a3)
          {
            v354 = 0;
            v355 = (a3 + 16);
            v356 = (a3 + 12);
            v357 = (a3 + 8);
            v358 = (a3 + 4);
            v359 = *result;
            v360 = *(result + 8);
            result = *(result + 16);
            v361 = 4 * a2;
            while (1)
            {
              v362 = &v359[v354 / 4];
              v363 = &v359[v354 / 4 - 6];
              v364 = &v359[v354 / 4 - 5];
              v365 = v364 > v360 || v363 > v364;
              if (v365 || v363 < result)
              {
                break;
              }

              v367 = v362 - 4;
              if ((v362 - 4) > v360)
              {
                break;
              }

              if (v364 > v367)
              {
                break;
              }

              if (v355 > v352)
              {
                break;
              }

              v368 = &v359[v354 / 4 - 3];
              if (v368 > v360)
              {
                break;
              }

              if (v367 > v368)
              {
                break;
              }

              if (v356 > v352)
              {
                break;
              }

              v369 = &v359[v354 / 4 - 2];
              if (v369 > v360)
              {
                break;
              }

              if (v368 > v369)
              {
                break;
              }

              if (v357 > v352)
              {
                break;
              }

              v370 = &v359[v354 / 4 - 1];
              if (v370 > v360)
              {
                break;
              }

              if (v369 > v370)
              {
                break;
              }

              if (v358 > v352)
              {
                break;
              }

              if (v362 > v360)
              {
                break;
              }

              if (v370 > v362)
              {
                break;
              }

              v371 = &v359[v354 / 4 + 1];
              if (v371 > v360 || v362 > v371)
              {
                break;
              }

              v494[v354 / 4] = *v362 - ((*v363 * *v353 + *v364 * *v355 + *v367 * *v356 + *v368 * *v357 + *v369 * *v358 + *v370 * *a3) >> v493);
              v354 += 4;
              if (v361 == v354)
              {
                return result;
              }
            }
          }

          goto LABEL_796;
        }
      }

      else if (a2 >= 1)
      {
        v446 = a3 + 20;
        v447 = (a3 + 16);
        if (a3 + 16 <= a3 + 20 && v447 >= a3)
        {
          v448 = 0;
          v449 = (a3 + 12);
          v450 = (a3 + 8);
          v451 = (a3 + 4);
          v452 = *result;
          v453 = *(result + 8);
          v454 = *(result + 16);
          v455 = 4 * a2;
          while (1)
          {
            result = &v452[v448 / 4];
            v456 = &v452[v448 / 4 - 5];
            v457 = &v452[v448 / 4 - 4];
            v458 = v457 > v453 || v456 > v457;
            if (v458 || v456 < v454)
            {
              break;
            }

            v460 = (result - 12);
            if (result - 12 > v453)
            {
              break;
            }

            if (v457 > v460)
            {
              break;
            }

            if (v449 > v446)
            {
              break;
            }

            v461 = &v452[v448 / 4 - 2];
            if (v461 > v453)
            {
              break;
            }

            if (v460 > v461)
            {
              break;
            }

            if (v450 > v446)
            {
              break;
            }

            v462 = &v452[v448 / 4 - 1];
            if (v462 > v453)
            {
              break;
            }

            if (v461 > v462)
            {
              break;
            }

            if (v451 > v446)
            {
              break;
            }

            if (result > v453)
            {
              break;
            }

            if (v462 > result)
            {
              break;
            }

            v463 = &v452[v448 / 4 + 1];
            if (v463 > v453 || result > v463)
            {
              break;
            }

            result = (*result - ((*v456 * *v447 + *v457 * *v449 + *v460 * *v450 + *v461 * *v451 + *v462 * *a3) >> v493));
            v494[v448 / 4] = result;
            v448 += 4;
            if (v455 == v448)
            {
              return result;
            }
          }
        }

        goto LABEL_796;
      }
    }

    else if (a4 == 8)
    {
      if (a2 >= 1)
      {
        v254 = a3 + 32;
        v255 = (a3 + 28);
        if (a3 + 28 <= a3 + 32 && v255 >= a3)
        {
          v256 = 0;
          v257 = (a3 + 24);
          v258 = (a3 + 20);
          v259 = (a3 + 16);
          v260 = (a3 + 12);
          v261 = (a3 + 8);
          v262 = (a3 + 4);
          v263 = *result;
          v264 = *(result + 8);
          result = *(result + 16);
          v265 = 4 * a2;
          while (1)
          {
            v266 = &v263[v256 / 4];
            v267 = &v263[v256 / 4 - 8];
            v268 = &v263[v256 / 4 - 7];
            v269 = v268 > v264 || v267 > v268;
            if (v269 || v267 < result)
            {
              break;
            }

            v271 = v266 - 6;
            if ((v266 - 6) > v264)
            {
              break;
            }

            if (v268 > v271)
            {
              break;
            }

            if (v257 > v254)
            {
              break;
            }

            v272 = &v263[v256 / 4 - 5];
            if (v272 > v264)
            {
              break;
            }

            if (v271 > v272)
            {
              break;
            }

            if (v258 > v254)
            {
              break;
            }

            v273 = &v263[v256 / 4 - 4];
            if (v273 > v264)
            {
              break;
            }

            if (v272 > v273)
            {
              break;
            }

            if (v259 > v254)
            {
              break;
            }

            v274 = &v263[v256 / 4 - 3];
            if (v274 > v264)
            {
              break;
            }

            if (v273 > v274)
            {
              break;
            }

            if (v260 > v254)
            {
              break;
            }

            v275 = &v263[v256 / 4 - 2];
            if (v275 > v264)
            {
              break;
            }

            if (v274 > v275)
            {
              break;
            }

            if (v261 > v254)
            {
              break;
            }

            v276 = &v263[v256 / 4 - 1];
            if (v276 > v264)
            {
              break;
            }

            if (v275 > v276)
            {
              break;
            }

            if (v262 > v254)
            {
              break;
            }

            if (v266 > v264)
            {
              break;
            }

            if (v276 > v266)
            {
              break;
            }

            v277 = &v263[v256 / 4 + 1];
            if (v277 > v264 || v266 > v277)
            {
              break;
            }

            v494[v256 / 4] = *v266 - ((*v267 * *v255 + *v268 * *v257 + *v271 * *v258 + *v272 * *v259 + *v273 * *v260 + *v274 * *v261 + *v275 * *v262 + *v276 * *a3) >> v493);
            v256 += 4;
            if (v265 == v256)
            {
              return result;
            }
          }
        }

        goto LABEL_796;
      }
    }

    else if (a2 >= 1)
    {
      v410 = a3 + 28;
      v411 = (a3 + 24);
      if (a3 + 24 <= a3 + 28 && v411 >= a3)
      {
        v412 = 0;
        v413 = (a3 + 20);
        v414 = (a3 + 16);
        v415 = (a3 + 12);
        v416 = (a3 + 8);
        v417 = (a3 + 4);
        v419 = *result;
        v418 = *(result + 8);
        result = *(result + 16);
        v420 = 4 * a2;
        while (1)
        {
          v421 = &v419[v412 / 4];
          v422 = &v419[v412 / 4 - 7];
          v423 = &v419[v412 / 4 - 6];
          v424 = v423 > v418 || v422 > v423;
          if (v424 || v422 < result)
          {
            break;
          }

          v426 = v421 - 5;
          if ((v421 - 5) > v418)
          {
            break;
          }

          if (v423 > v426)
          {
            break;
          }

          if (v413 > v410)
          {
            break;
          }

          v427 = &v419[v412 / 4 - 4];
          if (v427 > v418)
          {
            break;
          }

          if (v426 > v427)
          {
            break;
          }

          if (v414 > v410)
          {
            break;
          }

          v428 = &v419[v412 / 4 - 3];
          if (v428 > v418)
          {
            break;
          }

          if (v427 > v428)
          {
            break;
          }

          if (v415 > v410)
          {
            break;
          }

          v429 = &v419[v412 / 4 - 2];
          if (v429 > v418)
          {
            break;
          }

          if (v428 > v429)
          {
            break;
          }

          if (v416 > v410)
          {
            break;
          }

          v430 = &v419[v412 / 4 - 1];
          if (v430 > v418)
          {
            break;
          }

          if (v429 > v430)
          {
            break;
          }

          if (v417 > v410)
          {
            break;
          }

          if (v421 > v418)
          {
            break;
          }

          if (v430 > v421)
          {
            break;
          }

          v431 = &v419[v412 / 4 + 1];
          if (v431 > v418 || v421 > v431)
          {
            break;
          }

          v494[v412 / 4] = *v421 - ((*v422 * *v411 + *v423 * *v413 + *v426 * *v414 + *v427 * *v415 + *v428 * *v416 + *v429 * *v417 + *v430 * *a3) >> v493);
          v412 += 4;
          if (v420 == v412)
          {
            return result;
          }
        }
      }

      goto LABEL_796;
    }
  }

  else if (a4 < 0xB)
  {
    if (a4 == 10)
    {
      if (a2 >= 1)
      {
        v278 = a3 + 40;
        v279 = (a3 + 36);
        if (a3 + 36 <= a3 + 40 && v279 >= a3)
        {
          v280 = 0;
          v281 = (a3 + 32);
          v282 = (a3 + 28);
          v283 = (a3 + 24);
          v284 = (a3 + 20);
          v285 = (a3 + 16);
          v286 = (a3 + 12);
          v287 = (a3 + 8);
          v288 = *result;
          v289 = *(result + 8);
          result = *(result + 16);
          v290 = (a3 + 4);
          v291 = 4 * a2;
          while (1)
          {
            v292 = &v288[v280 / 4];
            v293 = &v288[v280 / 4 - 10];
            v294 = &v288[v280 / 4 - 9];
            v295 = v294 > v289 || v293 > v294;
            if (v295 || v293 < result)
            {
              break;
            }

            v297 = v292 - 8;
            if ((v292 - 8) > v289)
            {
              break;
            }

            if (v294 > v297)
            {
              break;
            }

            if (v281 > v278)
            {
              break;
            }

            v298 = &v288[v280 / 4 - 7];
            if (v298 > v289)
            {
              break;
            }

            if (v297 > v298)
            {
              break;
            }

            if (v282 > v278)
            {
              break;
            }

            v299 = &v288[v280 / 4 - 6];
            if (v299 > v289)
            {
              break;
            }

            if (v298 > v299)
            {
              break;
            }

            if (v283 > v278)
            {
              break;
            }

            v300 = &v288[v280 / 4 - 5];
            if (v300 > v289)
            {
              break;
            }

            if (v299 > v300)
            {
              break;
            }

            if (v284 > v278)
            {
              break;
            }

            v301 = &v288[v280 / 4 - 4];
            if (v301 > v289)
            {
              break;
            }

            if (v300 > v301)
            {
              break;
            }

            if (v285 > v278)
            {
              break;
            }

            v302 = &v288[v280 / 4 - 3];
            if (v302 > v289)
            {
              break;
            }

            if (v301 > v302)
            {
              break;
            }

            if (v286 > v278)
            {
              break;
            }

            v303 = &v288[v280 / 4 - 2];
            if (v303 > v289)
            {
              break;
            }

            if (v302 > v303)
            {
              break;
            }

            if (v287 > v278)
            {
              break;
            }

            v304 = &v288[v280 / 4 - 1];
            if (v304 > v289)
            {
              break;
            }

            if (v303 > v304)
            {
              break;
            }

            if (v290 > v278)
            {
              break;
            }

            if (v292 > v289)
            {
              break;
            }

            if (v304 > v292)
            {
              break;
            }

            v305 = &v288[v280 / 4 + 1];
            if (v305 > v289 || v292 > v305)
            {
              break;
            }

            v494[v280 / 4] = *v292 - ((*v293 * *v279 + *v294 * *v281 + *v297 * *v282 + *v298 * *v283 + *v299 * *v284 + *v300 * *v285 + *v301 * *v286 + *v302 * *v287 + *v303 * *v290 + *v304 * *a3) >> v493);
            v280 += 4;
            if (v291 == v280)
            {
              return result;
            }
          }
        }

        goto LABEL_796;
      }
    }

    else if (a2 >= 1)
    {
      v372 = a3 + 36;
      v373 = (a3 + 32);
      if (a3 + 32 <= a3 + 36 && v373 >= a3)
      {
        v374 = 0;
        v375 = (a3 + 28);
        v376 = (a3 + 24);
        v377 = (a3 + 20);
        v378 = (a3 + 16);
        v379 = (a3 + 12);
        v380 = (a3 + 8);
        v381 = (a3 + 4);
        v382 = *result;
        v383 = *(result + 8);
        result = *(result + 16);
        v384 = 4 * a2;
        while (1)
        {
          v385 = &v382[v374 / 4];
          v386 = &v382[v374 / 4 - 9];
          v387 = &v382[v374 / 4 - 8];
          v388 = v387 > v383 || v386 > v387;
          if (v388 || v386 < result)
          {
            break;
          }

          v390 = v385 - 7;
          if ((v385 - 7) > v383)
          {
            break;
          }

          if (v387 > v390)
          {
            break;
          }

          if (v375 > v372)
          {
            break;
          }

          v391 = &v382[v374 / 4 - 6];
          if (v391 > v383)
          {
            break;
          }

          if (v390 > v391)
          {
            break;
          }

          if (v376 > v372)
          {
            break;
          }

          v392 = &v382[v374 / 4 - 5];
          if (v392 > v383)
          {
            break;
          }

          if (v391 > v392)
          {
            break;
          }

          if (v377 > v372)
          {
            break;
          }

          v393 = &v382[v374 / 4 - 4];
          if (v393 > v383)
          {
            break;
          }

          if (v392 > v393)
          {
            break;
          }

          if (v378 > v372)
          {
            break;
          }

          v394 = &v382[v374 / 4 - 3];
          if (v394 > v383)
          {
            break;
          }

          if (v393 > v394)
          {
            break;
          }

          if (v379 > v372)
          {
            break;
          }

          v395 = &v382[v374 / 4 - 2];
          if (v395 > v383)
          {
            break;
          }

          if (v394 > v395)
          {
            break;
          }

          if (v380 > v372)
          {
            break;
          }

          v396 = &v382[v374 / 4 - 1];
          if (v396 > v383)
          {
            break;
          }

          if (v395 > v396)
          {
            break;
          }

          if (v381 > v372)
          {
            break;
          }

          if (v385 > v383)
          {
            break;
          }

          if (v396 > v385)
          {
            break;
          }

          v397 = &v382[v374 / 4 + 1];
          if (v397 > v383 || v385 > v397)
          {
            break;
          }

          v494[v374 / 4] = *v385 - ((*v386 * *v373 + *v387 * *v375 + *v390 * *v376 + *v391 * *v377 + *v392 * *v378 + *v393 * *v379 + *v394 * *v380 + *v395 * *v381 + *v396 * *a3) >> v493);
          v374 += 4;
          if (v384 == v374)
          {
            return result;
          }
        }
      }

      goto LABEL_796;
    }
  }

  else if (a4 == 12)
  {
    if (a2 >= 1)
    {
      v8 = a3 + 48;
      v490 = (a3 + 44);
      if (a3 + 44 <= a3 + 48 && v490 >= a3)
      {
        v9 = 0;
        v10 = (a3 + 40);
        v11 = (a3 + 36);
        v12 = (a3 + 32);
        v13 = (a3 + 28);
        v14 = (a3 + 24);
        v15 = (a3 + 20);
        v16 = (a3 + 16);
        v17 = (a3 + 12);
        v18 = (a3 + 8);
        v19 = *result;
        v20 = *(result + 8);
        v488 = *(result + 16);
        v21 = (a3 + 4);
        v486 = 4 * a2;
        while (1)
        {
          v22 = &v19[v9 / 4];
          v23 = &v19[v9 / 4 - 12];
          v24 = &v19[v9 / 4 - 11];
          v25 = v24 > v20 || v23 > v24;
          if (v25 || v23 < v488)
          {
            break;
          }

          v27 = v22 - 10;
          if ((v22 - 10) > v20)
          {
            break;
          }

          if (v24 > v27)
          {
            break;
          }

          if (v10 > v8)
          {
            break;
          }

          v28 = &v19[v9 / 4 - 9];
          if (v28 > v20)
          {
            break;
          }

          if (v27 > v28)
          {
            break;
          }

          if (v11 > v8)
          {
            break;
          }

          v29 = &v19[v9 / 4 - 8];
          if (v29 > v20)
          {
            break;
          }

          if (v28 > v29)
          {
            break;
          }

          if (v12 > v8)
          {
            break;
          }

          v30 = &v19[v9 / 4 - 7];
          if (v30 > v20)
          {
            break;
          }

          if (v29 > v30)
          {
            break;
          }

          if (v13 > v8)
          {
            break;
          }

          v31 = &v19[v9 / 4 - 6];
          if (v31 > v20)
          {
            break;
          }

          if (v30 > v31)
          {
            break;
          }

          if (v14 > v8)
          {
            break;
          }

          v32 = &v19[v9 / 4 - 5];
          if (v32 > v20)
          {
            break;
          }

          if (v31 > v32)
          {
            break;
          }

          if (v15 > v8)
          {
            break;
          }

          v33 = &v19[v9 / 4 - 4];
          if (v33 > v20)
          {
            break;
          }

          if (v32 > v33)
          {
            break;
          }

          if (v16 > v8)
          {
            break;
          }

          v34 = &v19[v9 / 4 - 3];
          if (v34 > v20)
          {
            break;
          }

          if (v33 > v34)
          {
            break;
          }

          if (v17 > v8)
          {
            break;
          }

          result = &v19[v9 / 4 - 2];
          if (result > v20)
          {
            break;
          }

          if (v34 > result)
          {
            break;
          }

          if (v18 > v8)
          {
            break;
          }

          v35 = &v19[v9 / 4 - 1];
          if (v35 > v20)
          {
            break;
          }

          if (result > v35)
          {
            break;
          }

          if (v21 > v8)
          {
            break;
          }

          if (v22 > v20)
          {
            break;
          }

          if (v35 > v22)
          {
            break;
          }

          v36 = &v19[v9 / 4 + 1];
          if (v36 > v20 || v22 > v36)
          {
            break;
          }

          v37 = *v23 * *v490 + *v24 * *v10 + *v27 * *v11 + *v28 * *v12 + *v29 * *v13 + *v30 * *v14 + *v31 * *v15 + *v32 * *v16 + *v33 * *v17 + *v34 * *v18 + *result * *v21;
          result = *v22;
          v494[v9 / 4] = result - ((v37 + *v35 * *a3) >> v493);
          v9 += 4;
          if (v486 == v9)
          {
            return result;
          }
        }
      }

LABEL_796:
      __break(0x5519u);
    }
  }

  else if (a2 >= 1)
  {
    v323 = a3 + 44;
    v492 = (a3 + 40);
    if (a3 + 40 <= a3 + 44 && v492 >= a3)
    {
      v324 = 0;
      v325 = (a3 + 36);
      v326 = (a3 + 32);
      v327 = (a3 + 28);
      v328 = (a3 + 24);
      v329 = (a3 + 20);
      v330 = (a3 + 16);
      v331 = (a3 + 12);
      v332 = (a3 + 8);
      v333 = *result;
      v334 = *(result + 8);
      result = *(result + 16);
      v335 = (a3 + 4);
      v336 = 4 * a2;
      while (1)
      {
        v337 = &v333[v324 / 4];
        v338 = &v333[v324 / 4 - 11];
        v339 = &v333[v324 / 4 - 10];
        v340 = v339 > v334 || v338 > v339;
        if (v340 || v338 < result)
        {
          break;
        }

        v342 = v337 - 9;
        if ((v337 - 9) > v334)
        {
          break;
        }

        if (v339 > v342)
        {
          break;
        }

        if (v325 > v323)
        {
          break;
        }

        v343 = &v333[v324 / 4 - 8];
        if (v343 > v334)
        {
          break;
        }

        if (v342 > v343)
        {
          break;
        }

        if (v326 > v323)
        {
          break;
        }

        v344 = &v333[v324 / 4 - 7];
        if (v344 > v334)
        {
          break;
        }

        if (v343 > v344)
        {
          break;
        }

        if (v327 > v323)
        {
          break;
        }

        v345 = &v333[v324 / 4 - 6];
        if (v345 > v334)
        {
          break;
        }

        if (v344 > v345)
        {
          break;
        }

        if (v328 > v323)
        {
          break;
        }

        v346 = &v333[v324 / 4 - 5];
        if (v346 > v334)
        {
          break;
        }

        if (v345 > v346)
        {
          break;
        }

        if (v329 > v323)
        {
          break;
        }

        v347 = &v333[v324 / 4 - 4];
        if (v347 > v334)
        {
          break;
        }

        if (v346 > v347)
        {
          break;
        }

        if (v330 > v323)
        {
          break;
        }

        v348 = &v333[v324 / 4 - 3];
        if (v348 > v334)
        {
          break;
        }

        if (v347 > v348)
        {
          break;
        }

        if (v331 > v323)
        {
          break;
        }

        v349 = &v333[v324 / 4 - 2];
        if (v349 > v334)
        {
          break;
        }

        if (v348 > v349)
        {
          break;
        }

        if (v332 > v323)
        {
          break;
        }

        v350 = &v333[v324 / 4 - 1];
        if (v350 > v334)
        {
          break;
        }

        if (v349 > v350)
        {
          break;
        }

        if (v335 > v323)
        {
          break;
        }

        if (v337 > v334)
        {
          break;
        }

        if (v350 > v337)
        {
          break;
        }

        v351 = &v333[v324 / 4 + 1];
        if (v351 > v334 || v337 > v351)
        {
          break;
        }

        v494[v324 / 4] = *v337 - ((*v338 * *v492 + *v339 * *v325 + *v342 * *v326 + *v343 * *v327 + *v344 * *v328 + *v345 * *v329 + *v346 * *v330 + *v347 * *v331 + *v348 * *v332 + *v349 * *v335 + *v350 * *a3) >> v493);
        v324 += 4;
        if (v336 == v324)
        {
          return result;
        }
      }
    }

    goto LABEL_796;
  }

  return result;
}

uint64_t FLAC__fixed_compute_best_predictor_wide(uint64_t result, unsigned int a2, float *a3)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *result - 4;
  v8 = *result <= v4 && v6 <= v3 && v6 >= v5;
  if (!v8 || ((v9 = (v3 - 2), (v3 - 2) <= v6) ? (v10 = v9 >= v5) : (v10 = 0), !v10 || ((v11 = v3 - 3, (v3 - 3) <= v9) ? (v12 = v11 >= v5) : (v12 = 0), !v12 || ((v13 = v3 - 4, v3 - 4 <= v11) ? (v14 = v13 >= v5) : (v14 = 0), !v14))))
  {
LABEL_67:
    __break(0x5519u);
    return result;
  }

  v16 = 0;
  if (a2)
  {
    v19 = *(v3 - 2);
    v18 = *(v3 - 1);
    v20 = v18 - v19;
    v21 = *v11;
    v22 = v19 + *v13;
    v23 = v21 - v19 + v18 - v19;
    v24 = v23 - v22 + 2 * v21;
    v25 = a2;
    v26 = 0uLL;
    v27 = 0uLL;
    while (1)
    {
      v28 = (v3 + 1) > v4 || v3 >= v3 + 1;
      if (v28 || v3 < v5)
      {
        goto LABEL_67;
      }

      v31 = *v3++;
      v30 = v31;
      if (v31 >= 0)
      {
        v32 = v30;
      }

      else
      {
        v32 = -v30;
      }

      v16 += v32;
      v33 = v30 - v18;
      result = v33 - v20;
      v34 = result - v23;
      v20 = v33;
      v35.i64[0] = __PAIR64__(result, v33);
      v35.i32[2] = result - v23 - v24;
      v35.i32[3] = result - v23;
      v36 = vabsq_s32(v35);
      v27 = vaddw_high_u32(v27, v36);
      v26 = vaddw_u32(v26, *v36.i8);
      v18 = v30;
      v23 = result;
      v24 = v34;
      if (!--v25)
      {
        goto LABEL_40;
      }
    }
  }

  v26 = 0uLL;
  v27 = 0uLL;
LABEL_40:
  v37 = vbslq_s8(vcgtq_u64(v27, v26), v26, v27);
  v38 = vextq_s8(v37, v37, 8uLL).u64[0];
  v39 = v26.u64[1];
  v40 = v27.u64[1];
  v52 = v27.i64[0];
  if (v16 >= *&vbsl_s8(vcgtd_u64(v38, v37.u64[0]), *v37.i8, v38))
  {
    if (v26.i64[1] >= v27.i64[1])
    {
      v42 = v27.u64[1];
    }

    else
    {
      v42 = v26.u64[1];
    }

    v43 = v27.i64[0];
    if (v42 >= v27.i64[0])
    {
      v42 = v27.i64[0];
    }

    if (v26.i64[0] >= v42)
    {
      if (v27.i64[1] >= v27.i64[0])
      {
        v44 = 4;
      }

      else
      {
        v43 = v27.u64[1];
        v44 = 3;
      }

      if (v26.i64[1] >= v43)
      {
        v41 = v44;
      }

      else
      {
        v41 = 2;
      }
    }

    else
    {
      v41 = 1;
    }
  }

  else
  {
    v41 = 0;
  }

  v45 = 0.0;
  v46 = 0.0;
  if (v16)
  {
    v51 = v26.i64[0];
    v47 = log(v16 * 0.693147181 / a2);
    v26.i64[0] = v51;
    v46 = v47 / 0.693147181;
  }

  *a3 = v46;
  if (v26.i64[0])
  {
    v45 = log(v26.u64[0] * 0.693147181 / a2) / 0.693147181;
  }

  a3[1] = v45;
  v48 = 0.0;
  v49 = 0.0;
  if (v39)
  {
    v49 = log(v39 * 0.693147181 / a2) / 0.693147181;
  }

  a3[2] = v49;
  if (v40)
  {
    v48 = log(v40 * 0.693147181 / a2) / 0.693147181;
  }

  a3[3] = v48;
  if (v52)
  {
    v50 = log(v52 * 0.693147181 / a2) / 0.693147181;
  }

  else
  {
    v50 = 0.0;
  }

  a3[4] = v50;
  return v41;
}

uint64_t FLAC__fixed_compute_best_predictor(uint64_t result, unsigned int a2, float *a3)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *result - 4;
  v8 = *result <= v4 && v6 <= v3 && v6 >= v5;
  if (!v8 || ((v9 = (v3 - 2), (v3 - 2) <= v6) ? (v10 = v9 >= v5) : (v10 = 0), !v10 || ((v11 = v3 - 3, (v3 - 3) <= v9) ? (v12 = v11 >= v5) : (v12 = 0), !v12 || ((v13 = v3 - 4, v3 - 4 <= v11) ? (v14 = v13 >= v5) : (v14 = 0), !v14))))
  {
LABEL_70:
    __break(0x5519u);
    return result;
  }

  v16 = 0;
  if (a2)
  {
    v19 = *(v3 - 2);
    v18 = *(v3 - 1);
    v20 = v18 - v19;
    v21 = *v11;
    v22 = v19 + *v13;
    v23 = v21 - v19 + v18 - v19;
    v24 = v23 - v22 + 2 * v21;
    v25 = a2;
    v26 = 0uLL;
    while (1)
    {
      v27 = (v3 + 1) > v4 || v3 >= v3 + 1;
      if (v27 || v3 < v5)
      {
        goto LABEL_70;
      }

      v30 = *v3++;
      v29 = v30;
      if (v30 >= 0)
      {
        v31 = v29;
      }

      else
      {
        v31 = -v29;
      }

      v16 += v31;
      v32 = v29 - v18;
      result = v32 - v20;
      v33 = result - v23;
      v20 = v32;
      v34.i64[0] = __PAIR64__(result, v32);
      v34.i32[2] = result - v23;
      v34.i32[3] = result - v23 - v24;
      v26 = vaddq_s32(vabsq_s32(v34), v26);
      v18 = v29;
      v23 = result;
      v24 = v33;
      if (!--v25)
      {
        goto LABEL_40;
      }
    }
  }

  v26 = 0uLL;
LABEL_40:
  v35 = v26.u32[1];
  v36 = v26.u32[2];
  v37 = v26.u32[3];
  if (v16 >= vminvq_u32(v26))
  {
    if (v26.i32[1] >= v26.i32[2])
    {
      v39 = v26.u32[2];
    }

    else
    {
      v39 = v26.u32[1];
    }

    if (v39 >= v26.i32[3])
    {
      v39 = v26.u32[3];
    }

    if (v26.i32[0] >= v39)
    {
      if (v26.i32[2] >= v26.i32[3])
      {
        v40 = v26.u32[3];
      }

      else
      {
        v40 = v26.u32[2];
      }

      if (v26.i32[2] < v26.i32[3])
      {
        v41 = 3;
      }

      else
      {
        v41 = 4;
      }

      if (v26.i32[1] >= v40)
      {
        v38 = v41;
      }

      else
      {
        v38 = 2;
      }
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 0;
  }

  v42 = 0.0;
  v43 = 0.0;
  if (v16)
  {
    v48 = v26.i32[0];
    v44 = log(v16 * 0.693147181 / a2);
    v26.i32[0] = v48;
    v43 = v44 / 0.693147181;
  }

  *a3 = v43;
  if (v26.i32[0])
  {
    v42 = log(v26.u32[0] * 0.693147181 / a2) / 0.693147181;
  }

  a3[1] = v42;
  v45 = 0.0;
  v46 = 0.0;
  if (v35)
  {
    v46 = log(v35 * 0.693147181 / a2) / 0.693147181;
  }

  a3[2] = v46;
  if (v36)
  {
    v45 = log(v36 * 0.693147181 / a2) / 0.693147181;
  }

  a3[3] = v45;
  if (v37)
  {
    v47 = log(v37 * 0.693147181 / a2) / 0.693147181;
  }

  else
  {
    v47 = 0.0;
  }

  a3[4] = v47;
  return v38;
}

unint64_t precompute_partition_info_sums_(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = (a6 + a5) >> a8;
  v10 = (1 << a8);
  v11 = -a6;
  v12 = v9 - a6;
  if (a9 + 4 >= 32 - (__clz(v9) ^ 0x1F))
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v11 += v9;
      if (v22 < v11)
      {
        v23 = 0;
        v24 = v12 - v22;
        v25 = (result + 4 * v22);
        while (v25 >= result && (v25 + 1) <= a2 && v25 <= v25 + 1)
        {
          v27 = *v25++;
          LODWORD(v26) = v27;
          if (v27 >= 0)
          {
            v26 = v26;
          }

          else
          {
            v26 = -v26;
          }

          v23 += v26;
          if (!--v24)
          {
            v22 = v12;
            goto LABEL_30;
          }
        }

        goto LABEL_66;
      }

      v23 = 0;
LABEL_30:
      v28 = (a3 + 8 * v21);
      if (v28 < a3 || (v28 + 1) > a4 || v28 > v28 + 1)
      {
        goto LABEL_66;
      }

      *v28 = v23;
      ++v21;
      v12 += v9;
    }

    while (v21 != v10);
LABEL_34:
    if (a8 <= a7)
    {
      return result;
    }

    v29 = 0;
    v30 = 1 << a8;
    while (1)
    {
      v31 = v10;
      LODWORD(v10) = v10 >> 1;
      if (v31 >= 2)
      {
        break;
      }

LABEL_64:
      if (--a8 <= a7)
      {
        return result;
      }
    }

    v32 = v10;
    while (1)
    {
      v33 = (a3 + 8 * v29);
      v34 = v33 + 1;
      v35 = v33 < a3 || v34 > a4;
      v36 = v35 || v33 > v34;
      v37 = (a3 + 8 * (v29 + 1));
      v38 = v37 + 1;
      v39 = !v36 && v37 >= a3;
      v40 = !v39 || v38 > a4;
      v41 = v40 || v37 > v38;
      v42 = (a3 + 8 * v30);
      v43 = v42 + 1;
      v44 = !v41 && v42 >= a3;
      v45 = !v44 || v43 > a4;
      if (v45 || v42 > v43)
      {
        break;
      }

      ++v30;
      *v42 = *v37 + *v33;
      v29 += 2;
      if (!--v32)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v11 += v9;
      if (v14 < v11)
      {
        break;
      }

      v15 = 0;
LABEL_13:
      v20 = (a3 + 8 * v13);
      if (v20 < a3 || (v20 + 1) > a4 || v20 > v20 + 1)
      {
        goto LABEL_66;
      }

      *v20 = v15;
      ++v13;
      v12 += v9;
      if (v13 == v10)
      {
        goto LABEL_34;
      }
    }

    LODWORD(v15) = 0;
    v16 = v12 - v14;
    v17 = (result + 4 * v14);
    while (v17 >= result && (v17 + 1) <= a2 && v17 <= v17 + 1)
    {
      v19 = *v17++;
      v18 = v19;
      if (v19 < 0)
      {
        v18 = -v18;
      }

      v15 = (v18 + v15);
      if (!--v16)
      {
        v14 = v12;
        goto LABEL_13;
      }
    }
  }

LABEL_66:
  __break(0x5519u);
  return result;
}

void *FLAC__lpc_compute_autocorrelation(void *result, unsigned int a2, unsigned int a3, void *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = a4[2];
    v6 = a3;
    while (1)
    {
      v7 = (*a4 + v4);
      v8 = (v7 + 1) > a4[1] || v7 > v7 + 1;
      if (v8 || v7 < v5)
      {
        break;
      }

      *v7 = 0;
      v4 += 4;
      if (4 * a3 == v4)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_14:
    v10 = 0;
    v11 = result[2];
    v12 = 1;
    v13 = a2;
    while (1)
    {
      v14 = v12;
      v15 = (*result + 4 * v10);
      v16 = (v15 + 1) > result[1] || v15 > v15 + 1;
      if (v16 || v15 < v11)
      {
        break;
      }

      if (a3)
      {
        v18 = 0;
        v19 = *v15;
        v20 = v10;
        v21 = v6;
        do
        {
          v22 = (*result + 4 * v20);
          v23 = (v22 + 1) > result[1] || v22 > v22 + 1;
          if (v23 || v22 < v11)
          {
            goto LABEL_76;
          }

          v25 = (*a4 + v18);
          v26 = (v25 + 1) > a4[1] || v25 > v25 + 1;
          if (v26 || v25 < a4[2])
          {
            goto LABEL_76;
          }

          *v25 = *v25 + (v19 * *v22);
          v18 += 4;
          ++v20;
        }

        while (--v21);
      }

      --v13;
      ++v10;
      v12 = v14 + 1;
      if (v10 > a2 - a3)
      {
        if (v10 >= a2)
        {
          return result;
        }

        v28 = v14;
LABEL_45:
        if (v13 <= 1uLL)
        {
          v29 = 1;
        }

        else
        {
          v29 = v13;
        }

        v30 = (*result + 4 * v28);
        if ((v30 + 1) <= result[1] && v30 <= v30 + 1 && v30 >= v11)
        {
          v33 = 0;
          v34 = 4 * v29;
          v35 = *v30;
          v36 = v28;
          while (1)
          {
            v37 = (*result + 4 * v36);
            v38 = (v37 + 1) > result[1] || v37 > v37 + 1;
            if (v38 || v37 < v11)
            {
              break;
            }

            v40 = (*a4 + v33);
            v41 = (v40 + 1) > a4[1] || v40 > v40 + 1;
            if (v41 || v40 < a4[2])
            {
              break;
            }

            *v40 = *v40 + (v35 * *v37);
            ++v36;
            v33 += 4;
            if (v34 == v33)
            {
              ++v28;
              --v13;
              if (v28 != a2)
              {
                goto LABEL_45;
              }

              return result;
            }
          }
        }

        break;
      }
    }
  }

LABEL_76:
  __break(0x5519u);
  return result;
}

unint64_t append_to_verify_fifo_interleaved_(unint64_t result, void *a2, int a3, unsigned int a4, int a5)
{
  v5 = *(result + 196);
  if (a5)
  {
    v6 = 0;
    v7 = a4 * a3;
    while (!a4)
    {
LABEL_25:
      ++v5;
      if (++v6 == a5)
      {
        goto LABEL_26;
      }
    }

    v8 = a2[2];
    v9 = result;
    v10 = a4;
    while (1)
    {
      v11 = (*a2 + 4 * v7);
      v12 = (v11 + 1) > a2[1] || v11 > v11 + 1;
      v13 = !v12 && v11 >= v8;
      if (!v13 || v9 < result || (v9 + 3) > result + 192 || v9 > v9 + 3)
      {
        break;
      }

      v14 = (*v9 + 4 * v5);
      v15 = (v14 + 1) > v9[1] || v14 > v14 + 1;
      if (v15 || v14 < v9[2])
      {
        break;
      }

      *v14 = *v11;
      v9 += 3;
      ++v7;
      if (!--v10)
      {
        goto LABEL_25;
      }
    }

    __break(0x5519u);
  }

  else
  {
LABEL_26:
    *(result + 196) = v5;
  }

  return result;
}

uint64_t BitReader::ReadUInt(BitReader *this, int a2)
{
  v2 = *this;
  v3 = *(this + 5);
  v4 = *(*this + v3);
  v5 = *(this + 12);
  if (v5 == 128)
  {
    LODWORD(v3) = v3 - 1;
    *(this + 5) = v3;
    v6 = 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  *(this + 12) = v6;
  v7 = (v5 & v4) != 0;
  if (a2 >= 2)
  {
    for (i = 1; i != a2; ++i)
    {
      v9 = *(v2 + v3);
      if (v6 == 128)
      {
        LODWORD(v3) = v3 - 1;
        *(this + 5) = v3;
        v10 = 1;
      }

      else
      {
        v10 = 2 * v6;
      }

      *(this + 12) = v10;
      v7 = (((v6 & v9) != 0) << i) + v7;
      v6 = v10;
    }
  }

  return v7;
}

uint64_t BitReader::ArithDecode(BitReader *this, const unsigned int *a2, BOOL *a3)
{
  v4 = *(this + 6);
  v3 = *(this + 7);
  v5 = v3 >> 10;
  if (v4 >= (v3 & 0xFFFFFC00))
  {
    *a3 = 1;
  }

  v6 = *a2;
  v7 = (v4 / v5);
  if (v7 >= v6)
  {
    v11 = 1024 - v6;
    v13 = 16;
LABEL_8:
    v12 = v6;
    goto LABEL_9;
  }

  v8 = a2[1];
  v9 = (v8 >> 11) & 0x3FF;
  if (v7 >= v9)
  {
    v18 = a2[1] & 0x7FF;
    if (v7 < v18)
    {
      v19 = a2[3];
      v12 = (v19 >> 11) & 0x3FF;
      if (v7 >= v12)
      {
        v6 = a2[3] & 0x7FF;
        if (v7 >= v6)
        {
          v12 = v19 >> 21;
          if (v7 < v19 >> 21)
          {
            v11 = v12 - v6;
            v13 = 6;
            goto LABEL_8;
          }

          v11 = v18 - v12;
          v13 = 7;
        }

        else
        {
          v11 = v6 - v12;
          v13 = 5;
        }

        goto LABEL_9;
      }

      v11 = v12 - v9;
      v13 = 4;
LABEL_30:
      v12 = v9;
      goto LABEL_9;
    }

    v9 = v8 >> 21;
    if (v7 >= v8 >> 21)
    {
      v24 = a2[5];
      v12 = (v24 >> 11) & 0x3FF;
      if (v7 < v12)
      {
        v11 = v12 - v9;
        v13 = 12;
        goto LABEL_30;
      }

      v18 = a2[5] & 0x7FF;
      if (v7 < v18)
      {
        v11 = v18 - v12;
        v13 = 13;
        goto LABEL_9;
      }

      v12 = v24 >> 21;
      if (v7 >= v24 >> 21)
      {
        v11 = v6 - v12;
        v13 = 15;
        goto LABEL_9;
      }

      v11 = v12 - v18;
      v13 = 14;
    }

    else
    {
      v23 = a2[4];
      v12 = (v23 >> 11) & 0x3FF;
      if (v7 >= v12)
      {
        v6 = a2[4] & 0x7FF;
        if (v7 >= v6)
        {
          v12 = v23 >> 21;
          if (v7 < v23 >> 21)
          {
            v11 = v12 - v6;
            v13 = 10;
            goto LABEL_8;
          }

          v11 = v9 - v12;
          v13 = 11;
        }

        else
        {
          v11 = v6 - v12;
          v13 = 9;
        }

        goto LABEL_9;
      }

      v11 = v12 - v18;
      v13 = 8;
    }

    v12 = v18;
    goto LABEL_9;
  }

  v10 = a2[2];
  v11 = (v10 >> 11) & 0x3FF;
  if (v7 < v11)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v6 = a2[2] & 0x7FF;
  if (v7 < v6)
  {
    v12 = (v10 >> 11) & 0x3FF;
    v11 = v6 - v11;
    v13 = 1;
    goto LABEL_9;
  }

  v12 = v10 >> 21;
  if (v7 < v10 >> 21)
  {
    v11 = v12 - v6;
    v13 = 2;
    goto LABEL_8;
  }

  v11 = v9 - v12;
  v13 = 3;
LABEL_9:
  v14 = v11 * v5;
  v15 = v4 - v5 * v12;
  *(this + 6) = v15;
  *(this + 7) = v14;
  if (!HIWORD(v14))
  {
    if (v14 >= 0x100)
    {
      *(this + 6) = v15 << 8;
      *(this + 7) = v14 << 8;
      v20 = *this;
      v21 = *(this + 4);
      *(this + 4) = v21 + 1;
      v17 = *(v20 + v21) | (v15 << 8);
    }

    else
    {
      *(this + 6) = v15 << 16;
      *(this + 7) = v14 << 16;
      v16 = *(this + 4);
      v17 = __PAIR64__(v15, bswap32(*(*this + v16))) >> 16;
      *(this + 4) = v16 + 2;
    }

    *(this + 6) = v17 & 0xFFFFFF;
  }

  return v13;
}

uint64_t *lc3::Channel_Encoder::Encode(lc3::Channel_Encoder *this, const float *a2, int a3, unsigned __int8 *a4)
{
  v606 = a4;
  v608 = a3;
  v682 = *MEMORY[0x1E69E9840];
  v612 = this;
  v5 = *(this + 2);
  MEMORY[0x1EEE9AC00](this);
  v7 = &v604 - ((v6 + 15) & 0x7FFFFFFF0);
  if (v5)
  {
    memset(&v604 - ((v6 + 15) & 0x7FFFFFFF0), 255, v6);
  }

  v632 = 1191182336;
  v629.i64[0] = v7;
  MEMORY[0x19EAE6090](a2, 1, &v632, v7, 1, v5);
  v8 = v612;
  v9 = v629.i64[0];
  v10 = v608;
  v11 = atak::AttackDetector::Process((v612 + 104), v629.i64[0], v608);
  v615 = 8 * v10;
  v607 = ltpf::Encoder::Encode((v8 + 136), v9, 8 * v10);
  mdct::AnalysisFilterbank::TimeToFrequency((v612 + 16), v629.i64[0]);
  v13 = *v612;
  v12 = *(v612 + 1);
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v631[0] = v14;
  v631[1] = v14;
  v631[2] = v14;
  v631[3] = v14;
  v631[4] = v14;
  v631[5] = v14;
  v631[6] = v14;
  v631[7] = v14;
  v631[8] = v14;
  v631[9] = v14;
  v631[10] = v14;
  v631[11] = v14;
  v631[12] = v14;
  v631[13] = v14;
  v631[14] = v14;
  v631[15] = v14;
  Indices = band::GetIndices(v13, v12);
  v16 = Indices;
  v17 = 0;
  LODWORD(v627) = v13 == 8000 && v12 == 750;
  if (v13 == 8000 && v12 == 750)
  {
    v18 = 60;
  }

  else
  {
    v18 = 64;
  }

  v19 = v629.i64[0];
  while (v17 != v18)
  {
    v20 = Indices[v17];
    v21 = Indices[v17 + 1];
    v22 = 0.0;
    if (v21 > v20)
    {
      v23 = v21 - v20;
      v24 = (v19 + 4 * v20);
      do
      {
        v25 = *v24++;
        v22 = v22 + (v25 * v25);
        --v23;
      }

      while (v23);
    }

    *(v631 + v17++) = v22 / (v21 - v20);
  }

  v26 = 0;
  if (v13 <= 31999)
  {
    if (v13 != 16000)
    {
      v27 = 0;
      if (v13 != 24000)
      {
        goto LABEL_22;
      }

      v27 = 2;
      goto LABEL_21;
    }

    v26 = 1;
    v27 = 1;
  }

  else
  {
    if (v13 == 32000)
    {
      v27 = 3;
      goto LABEL_21;
    }

    if (v13 == 44100 || (v27 = 0, v13 == 48000))
    {
      v27 = 4;
LABEL_21:
      v26 = 1;
    }
  }

LABEL_22:
  if (v12 != 1000)
  {
    v28 = &GetBWStartIndices(lc3::Sample_Rate,lc3::Frame_Length)::kIndicesBWStart_7p5;
    v31 = -1;
    if (v13 <= 31999)
    {
      if (v13 == 16000)
      {
        v30 = 0;
      }

      else
      {
        if (v13 != 24000)
        {
LABEL_37:
          v28 = &GetBWStartIndices(lc3::Sample_Rate,lc3::Frame_Length)::kIndicesBWStart_7p5 + 16 * v31;
          v30 = -1;
          if (v13 > 31999 && (v13 == 44100 || v13 == 48000))
          {
            v30 = 3;
          }

          goto LABEL_55;
        }

        v28 = &unk_19B3A2800;
        v30 = 1;
      }
    }

    else
    {
      if (v13 != 32000)
      {
        if (v13 == 48000 || v13 == 44100)
        {
          v31 = 3;
        }

        goto LABEL_37;
      }

      v28 = &unk_19B3A2810;
      v30 = 2;
    }

LABEL_55:
    v32 = &GetBWStopIndices(lc3::Sample_Rate,lc3::Frame_Length)::kIndicesBWStop_7p5;
    goto LABEL_56;
  }

  v28 = &GetBWStartIndices(lc3::Sample_Rate,lc3::Frame_Length)::kIndicesBWStart;
  v29 = -1;
  if (v13 <= 31999)
  {
    if (v13 == 16000)
    {
      v30 = 0;
    }

    else
    {
      if (v13 != 24000)
      {
LABEL_28:
        v28 = &GetBWStartIndices(lc3::Sample_Rate,lc3::Frame_Length)::kIndicesBWStart + 16 * v29;
        v30 = -1;
        if (v13 > 31999 && (v13 == 44100 || v13 == 48000))
        {
          v30 = 3;
        }

        goto LABEL_53;
      }

      v28 = &unk_19B3A27C0;
      v30 = 1;
    }
  }

  else
  {
    if (v13 != 32000)
    {
      if (v13 == 48000 || v13 == 44100)
      {
        v29 = 3;
      }

      goto LABEL_28;
    }

    v28 = &unk_19B3A27D0;
    v30 = 2;
  }

LABEL_53:
  v32 = &GetBWStopIndices(lc3::Sample_Rate,lc3::Frame_Length)::kIndicesBWStop;
LABEL_56:
  v33 = &v32[16 * v30];
  if (v26)
  {
    v34 = 0;
    v35 = 0;
    if (v27 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v27;
    }

    do
    {
      v37 = *&v28[4 * v34];
      v38 = *&v33[4 * v34];
      v39 = 0.0;
      v40 = v38 - v37;
      if (v38 >= v37)
      {
        v41 = v631 + v37;
        do
        {
          v42 = *v41++;
          v39 = v39 + v42;
          ++v37;
        }

        while (v38 >= v37);
      }

      v43 = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds[v34++];
      if ((v39 / (v40 + 1)) >= v43)
      {
        v35 = v34;
      }
    }

    while (v34 != v36);
  }

  else
  {
    v35 = 0;
  }

  if (v35 != v27)
  {
    v624.i32[0] = v27;
    v625.i32[0] = v13;
    v626.i32[0] = v11;
    v44 = &band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::L_second_7p5;
    v628.i32[0] = v12;
    if (v12 == 1000)
    {
      v44 = &band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::L_second_10;
    }

    v45 = v44[v35];
    v46 = *&v28[4 * v35] + 1;
    v47 = v46 - v45;
    v48 = v46 - 2 * v45;
    while (v47 <= v46)
    {
      v49 = log10f((*(v631 + v48++) / *(v631 + v47++)) + 1.0e-31);
      if ((v49 * 10.0) > band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::threshCutoff[v35])
      {
        v27 = v35;
        v12 = v628.i32[0];
        v11 = v626.i32[0];
        v13 = v625.i32[0];
        goto LABEL_76;
      }
    }

    v12 = v628.i32[0];
    v11 = v626.i32[0];
    v13 = v625.i32[0];
    v27 = v624.i32[0];
  }

LABEL_76:
  if (v13 > 32000)
  {
    goto LABEL_89;
  }

  v50 = (v627 & 1) != 0 ? 60 : 64;
  v51 = v12 == 1000 ? -2 : -4;
  v52 = (v50 + v51);
  v53 = 0.0;
  v54 = v631;
  v55 = v52;
  do
  {
    v56 = *v54++;
    v53 = v53 + v56;
    --v55;
  }

  while (v55);
  v57 = v50 - v52;
  v58 = v631 + v52;
  v59 = 0.0;
  do
  {
    v60 = *v58++;
    v59 = v59 + v60;
    --v57;
  }

  while (v57);
  if (v59 <= (v53 * 30.0))
  {
LABEL_89:
    v617 = 0;
    v61 = v607;
  }

  else
  {
    v61 = v607 & 0xFFFF0000FFFFFFFFLL;
    v617 = 1;
  }

  *&v62 = 0xAAAAAAAAAAAAAAAALL;
  *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v630[0] = v62;
  v630[1] = v62;
  _ZF = v13 == 8000 && v12 == 750;
  *&v64 = -1;
  *(&v64 + 1) = -1;
  v662 = v64;
  v661 = v64;
  if (_ZF)
  {
    v65 = 60;
  }

  else
  {
    v65 = 64;
  }

  v660 = v64;
  v659 = v64;
  v658 = v64;
  v657 = v64;
  v656 = v64;
  v655 = v64;
  v654 = v64;
  v653 = v64;
  v652 = v64;
  v651 = v64;
  *&v650[48] = v64;
  *&v650[32] = v64;
  *&v650[16] = v64;
  *v650 = v64;
  v605 = v61;
  if (_ZF)
  {
    v67 = 64 - v65;
    if ((64 - v65) <= 1)
    {
      v68 = 1;
    }

    else
    {
      v68 = v67;
    }

    v69 = &v650[4];
    v70 = v631;
    do
    {
      v71 = *v70++;
      *(v69 - 1) = v71;
      *v69 = v71;
      v69 += 2;
      --v68;
    }

    while (v68);
    v66 = v650;
    memcpy(&v650[8 * v67], v631 + 4 * v67, 4 * (v65 - v67));
    *&v64 = -1;
    *(&v64 + 1) = -1;
  }

  else
  {
    v66 = v631;
  }

  *&v645[240] = v64;
  *&v645[228] = v64;
  *&v645[212] = v64;
  *&v645[196] = v64;
  *&v645[180] = v64;
  *&v645[164] = v64;
  *&v645[148] = v64;
  *&v645[132] = v64;
  *&v645[116] = v64;
  *&v645[100] = v64;
  *&v645[84] = v64;
  *&v645[68] = v64;
  *&v645[52] = v64;
  *&v645[36] = v64;
  *&v645[20] = v64;
  *&v645[4] = v64;
  *v645 = (v66[1] * 0.25) + (*v66 * 0.75);
  vDSP_conv(v66, 1, Smoothing(std::array<float,64ul> const&,int)::kCoeffs, 1, &v645[4], 1, 0x3FuLL, 3uLL);
  *&v645[252] = (v66[62] * 0.25) + (v66[63] * 0.75);
  if (v13 <= 31999)
  {
    v73 = 2;
    if (v13 != 24000)
    {
      v73 = 0;
    }

    if (v13 == 16000)
    {
      v72 = 1;
    }

    else
    {
      v72 = v73;
    }
  }

  else if (v13 == 32000)
  {
    v72 = 3;
  }

  else if (v13 == 44100 || v13 == 48000)
  {
    v72 = 4;
  }

  else
  {
    v72 = 0;
  }

  MEMORY[0x19EAE5FA0](v645, 1, &PreEmphasis(lc3::Sample_Rate,std::array<float,64ul> &)::kTilts + 256 * v72, 1, v645, 1, 64);
  *v650 = 0;
  vDSP_sve(v645, 1, v650, 0x40uLL);
  v74 = ldexpf(*v650, -6) * 0.0001;
  v75 = ldexpf(1.0, -32);
  if (v74 >= v75)
  {
    v75 = v74;
  }

  *v650 = v75;
  vDSP_vthr(v645, 1, v650, v645, 1, 0x40uLL);
  v76 = 0;
  v609 = 4000 * v27 + 4000;
  v628 = vdupq_n_s32(0xC01CEB3u);
  do
  {
    v77 = _simd_log2_f4(vaddq_f32(*&v645[v76], v628));
    v78.i64[0] = 0x3F0000003F000000;
    v78.i64[1] = 0x3F0000003F000000;
    *&v645[v76] = vmulq_f32(v77, v78);
    v76 += 16;
  }

  while (v76 != 256);
  v79 = 0;
  *&v80 = -1;
  *(&v80 + 1) = -1;
  v643 = v80;
  v644 = v80;
  v641 = v80;
  v642 = v80;
  v81 = *v645 * 0.083333;
  do
  {
    v81 = v81 + (*&BandEnergyGrouping(std::array<float,64ul> const&)::gWk[v79 + 1] * *&v645[v79 * 4]);
    ++v79;
  }

  while (v79 != 5);
  *&v641 = v81;
  v82 = &v645[20];
  for (i = 4; i != 60; i += 4)
  {
    v84 = vmul_f32(*&v82[-1].u32[2], 0x3E2AAAAB3DAAAAABLL);
    v85 = *v82++;
    v86 = vmulq_f32(v85, xmmword_19B0B32F0);
    *v86.i8 = vadd_f32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
    *(&v641 + i) = vaddv_f32(vadd_f32(vzip1_s32(v84, *v86.i8), vzip2_s32(v84, *v86.i8)));
  }

  v87 = *&v645[252] * 0.083333;
  v88 = BandEnergyGrouping(std::array<float,64ul> const&)::gWk;
  for (j = 59; j != 64; ++j)
  {
    v90 = *v88++;
    v87 = v87 + (v90 * *&v645[4 * j]);
  }

  v91 = 0;
  *(&v644 + 3) = v87;
  v92 = 0.0;
  do
  {
    v92 = (((v92 + COERCE_FLOAT(*(&v641 + v91))) + COERCE_FLOAT(HIDWORD(*(&v641 + v91)))) + COERCE_FLOAT(*(&v641 + v91 + 8))) + COERCE_FLOAT(HIDWORD(*(&v641 + v91)));
    v91 += 16;
  }

  while (v91 != 64);
  *v93.i32 = ldexpf(v92, -4);
  v95 = 0;
  v96 = vdupq_lane_s32(v93, 0);
  v97 = vdupq_n_s32(0x3F59999Au);
  do
  {
    v98 = vmulq_f32(vsubq_f32(*(&v641 + v95), v96), v97);
    *(&v641 + v95) = v98;
    v95 += 16;
  }

  while (v95 != 64);
  if (v11)
  {
    v99 = 0;
    *v650 = v641;
    *&v650[16] = v642;
    *&v650[32] = v643;
    *&v650[48] = v644;
    v100 = v641;
    v94.i32[0] = HIDWORD(v641);
    v98.i32[0] = DWORD2(v641);
    v101.f32[0] = vaddv_f32(*&v641) + *(&v641 + 2);
    v101.f32[1] = v101.f32[0] + *(&v641 + 3);
    *&v641 = vmul_f32(v101, 0x3E8000003EAAAAABLL);
    v102 = vdupq_lane_s32(*v94.i8, 0);
    v103 = vdupq_lane_s32(*v98.f32, 0);
    v94.u64[1] = v100;
    v104 = vdupq_lane_s32(v100, 0);
    v105 = vdupq_n_s32(0x3E4CCCCDu);
    do
    {
      v106 = *&v650[v99 + 16];
      v107 = vextq_s8(v102, v106, 0xCuLL);
      v108 = vextq_s8(v103, v107, 0xCuLL);
      v109 = vextq_s8(v94, v108, 0xCuLL);
      *(&v641 + v99 + 8) = vmulq_f32(vaddq_f32(v106, vaddq_f32(v107, vaddq_f32(v108, vaddq_f32(v109, vextq_s8(v104, v109, 0xCuLL))))), v105);
      v99 += 16;
      v102 = v106;
      v103 = v107;
      v94 = v108;
      v104 = v109;
    }

    while (v99 != 48);
    v110 = 0;
    v111.f32[0] = *&v650[48] + *&v650[52];
    v111.i32[1] = *&v650[52];
    *(&v644 + 1) = vmul_f32(vadd_f32(vadd_f32(v111, vdup_lane_s32(*&v650[56], 0)), vdup_lane_s32(*&v650[56], 1)), 0x3EAAAAAB3E800000);
    v112 = 0.0;
    do
    {
      v113 = *(&v641 + v110);
      v112 = (((v112 + v113.f32[0]) + COERCE_FLOAT(HIDWORD(*(&v641 + v110)))) + COERCE_FLOAT(*(&v641 + v110 + 8))) + v113.f32[3];
      v110 += 16;
    }

    while (v110 != 64);
    v113.i32[0] = 1050253722;
    if (v12 == 1000)
    {
      v113.f32[0] = 0.5;
    }

    v628 = v113;
    *v114.i32 = ldexpf(v112, -4);
    v115 = v628.f32[0];
    v116 = 0;
    v117 = vdupq_lane_s32(v114, 0);
    do
    {
      *(&v641 + v116) = vmulq_n_f32(vsubq_f32(*(&v641 + v116), v117), v115);
      v116 += 16;
    }

    while (v116 != 64);
  }

  v118 = 0;
  LODWORD(v119) = 0;
  memset(v630 + 8, 170, 24);
  v120 = 1.0e11;
  v121 = &sns::gLFCB;
  do
  {
    v122 = 0;
    v123 = 0uLL;
    do
    {
      v124 = vsubq_f32(*(&v641 + v122), *&v121[v122]);
      v123 = vmlaq_f32(v123, v124, v124);
      v122 += 16;
    }

    while (v122 != 32);
    v125 = vaddv_f32(vadd_f32(*v123.f32, *&vextq_s8(v123, v123, 8uLL)));
    if (v125 >= v120)
    {
      v119 = v119;
    }

    else
    {
      v120 = v125;
      v119 = v118;
    }

    ++v118;
    v121 += 32;
  }

  while (v118 != 32);
  v126 = 0;
  LODWORD(v127) = 0;
  LODWORD(v630[0]) = v119;
  v128 = 1.0e11;
  v129 = sns::gHFCB;
  do
  {
    v130 = 0uLL;
    v131 = v129;
    for (k = 2; k != 4; ++k)
    {
      v133 = *v131++;
      v134 = vsubq_f32(*(&v641 + k), v133);
      v130 = vmlaq_f32(v130, v134, v134);
    }

    v135 = vaddv_f32(vadd_f32(*v130.f32, *&vextq_s8(v130, v130, 8uLL)));
    if (v135 >= v128)
    {
      v127 = v127;
    }

    else
    {
      v128 = v135;
      v127 = v126;
    }

    ++v126;
    v129 += 2;
  }

  while (v126 != 32);
  v136 = 0;
  v137 = (&sns::gLFCB + 32 * v119);
  DWORD1(v630[0]) = v127;
  v138 = *v137;
  v139 = v137[1];
  v140 = &sns::gHFCB[2 * v127];
  v141 = v140[1];
  v639 = *v140;
  v640 = v141;
  v637 = v138;
  v638 = v139;
  *&v138 = -1;
  *(&v138 + 1) = -1;
  *&v650[48] = v138;
  *&v650[32] = v138;
  *&v650[16] = v138;
  *v650 = v138;
  do
  {
    *&v650[v136] = vsubq_f32(*(&v641 + v136), *(&v637 + v136));
    v136 += 16;
  }

  while (v136 != 64);
  v142 = 0;
  v635 = 0u;
  v636 = 0u;
  v633 = 0u;
  v634 = 0u;
  v143 = &sns::gDCTMatrix;
  do
  {
    v144 = 0;
    v145 = *(&v633 + v142);
    do
    {
      v145 = vmlaq_n_f32(v145, v143[v144], *&v650[v144]);
      v144 += 4;
    }

    while (v144 != 64);
    *(&v633 + v142++) = v145;
    ++v143;
  }

  while (v142 != 4);
  v146 = 0;
  *&v147 = -1;
  *(&v147 + 1) = -1;
  *&v645[224] = v147;
  *&v645[240] = v147;
  *&v645[192] = v147;
  *&v645[208] = v147;
  *&v645[160] = v147;
  *&v645[176] = v147;
  *&v645[128] = v147;
  *&v645[144] = v147;
  *&v645[96] = v147;
  *&v645[112] = v147;
  *&v645[64] = v147;
  *&v645[80] = v147;
  *&v645[32] = v147;
  *&v645[48] = v147;
  *v645 = v147;
  *&v645[16] = v147;
  *&v148 = 0xAAAAAAAAAAAAAAAALL;
  *(&v148 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v679 = v148;
  v678 = v148;
  v628 = v634;
  v625 = v636;
  v626 = v633;
  v624 = v635;
  v649 = v147;
  v648 = v147;
  v647 = v147;
  v646 = v147;
  do
  {
    *(&v646 + v146) = vabsq_f32(*(&v633 + v146));
    v146 += 16;
  }

  while (v146 != 64);
  v149 = 0;
  *&v150 = 0xAAAAAAAAAAAAAAAALL;
  *(&v150 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v677 = v150;
  v676 = v150;
  v675 = v150;
  v674 = v150;
  memset(&v650[8], 0, 32);
  v151 = 0.0;
  *&v650[48] = 0xAAAAAAAAAAAAAAAALL;
  *v650 = &v646;
  do
  {
    v151 = (((v151 + COERCE_FLOAT(*(&v646 + v149))) + COERCE_FLOAT(HIDWORD(*(&v646 + v149)))) + COERCE_FLOAT(*(&v646 + v149 + 8))) + COERCE_FLOAT(HIDWORD(*(&v646 + v149)));
    v149 += 16;
  }

  while (v149 != 64);
  v152 = 0.0;
  v153 = 0uLL;
  v154 = &v646;
  v155 = 8;
  v156 = 0uLL;
  v157 = 5.0 / v151;
  do
  {
    v158 = *v154++;
    v159 = vmovn_s32(vcvtq_s32_f32(vrndmq_f32(vmulq_n_f32(v158, v157))));
    *&v650[v155] = v159;
    v153 = vaddw_s16(v153, v159);
    v160 = vmulq_f32(v158, vcvtq_f32_s32(vmovl_s16(v159)));
    v156 = vmlal_s16(v156, v159, v159);
    v152 = (((v152 + v160.f32[0]) + v160.f32[1]) + v160.f32[2]) + v160.f32[3];
    v155 += 8;
  }

  while (v155 != 40);
  *&v650[44] = v152;
  *&v650[40] = vaddvq_s32(v153);
  v161 = *&v650[40];
  *&v650[48] = vaddvq_s32(v156);
  if (*&v650[40] <= 5)
  {
    do
    {
      Candidate::AddPulse(v650, 16);
      v161 = *&v650[40];
    }

    while (*&v650[40] < 6);
  }

  v680 = *&v650[8];
  v681 = *&v650[24];
  if (v161 <= 7)
  {
    do
    {
      Candidate::AddPulse(v650, 16);
    }

    while (*&v650[40] < 8);
  }

  v162 = 0;
  v163 = 0;
  v164 = 0;
  v678 = *&v650[8];
  v679 = *&v650[24];
  memset(&v650[28], 0, 24);
  v165 = 0.0;
  v166 = *v650;
  do
  {
    v167 = *&v650[2 * v162 + 8];
    v163 += v167;
    v165 = v165 + (v167 * *(*v650 + 4 * v162));
    v164 += v167 * v167;
    ++v162;
  }

  while (v162 != 10);
  *&v650[44] = v165;
  *&v650[40] = v163;
  *&v650[48] = v164;
  if (v163 <= 9)
  {
    do
    {
      Candidate::AddPulse(v650, 10);
    }

    while (*&v650[40] < 10);
    v166 = *v650;
  }

  v676 = *&v650[8];
  v677 = *&v650[24];
  v168 = *(v166 + 40);
  v169 = 10;
  for (m = 11; m != 16; ++m)
  {
    if ((*(v166 + 4 * m) * *(v166 + 4 * m)) > (v168 * v168))
    {
      v168 = *(v166 + 4 * m);
      v169 = m;
    }
  }

  v171 = 0;
  ++*&v650[2 * v169 + 8];
  v674 = *&v650[8];
  v675 = *&v650[24];
  v172 = vuzp1q_s16(vcltzq_f32(v624), vcltzq_f32(v625));
  v173 = vuzp1q_s16(vcltzq_f32(v626), vcltzq_f32(v628));
  do
  {
    v174 = (&v674 + v171);
    v175 = vbslq_s8(v172, vnegq_s16(*(&v674 + v171 + 16)), *(&v674 + v171 + 16));
    *v174 = vbslq_s8(v173, vnegq_s16(*(&v674 + v171)), *(&v674 + v171));
    v174[1] = v175;
    v171 += 32;
  }

  while (v171 != 128);
  v619 = 4000 * v27;
  v176 = 0;
  *&v177 = -1;
  *(&v177 + 1) = -1;
  v662 = v177;
  v661 = v177;
  v660 = v177;
  v659 = v177;
  v658 = v177;
  v657 = v177;
  v656 = v177;
  v655 = v177;
  v654 = v177;
  v653 = v177;
  v652 = v177;
  v651 = v177;
  *&v650[48] = v177;
  *&v650[32] = v177;
  v178 = &v650[32];
  *&v650[16] = v177;
  *v650 = v177;
  do
  {
    v179 = *(&v674 + v176);
    v180 = *(&v674 + v176 + 16);
    v181 = 1.0 / sqrtf(vaddvq_s32(vaddq_s32(vmlal_s16(vmull_s16(*v180.i8, *v180.i8), *v179.i8, *v179.i8), vmlal_high_s16(vmull_high_s16(v180, v180), v179, v179))));
    v178[-2] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v179.i8)), v181);
    v178[-1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v179)), v181);
    *v178 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v180.i8)), v181);
    v178[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v180)), v181);
    v178 += 4;
    v176 += 32;
  }

  while (v176 != 128);
  v182 = 0;
  v183 = 0;
  v184 = 0;
  *&v645[192] = v659;
  *&v645[208] = v660;
  *&v645[224] = v661;
  *&v645[240] = v662;
  *&v645[128] = v655;
  *&v645[144] = v656;
  *&v645[160] = v657;
  *&v645[176] = v658;
  *&v645[64] = v651;
  *&v645[80] = v652;
  *&v645[96] = v653;
  *&v645[112] = v654;
  v185 = v645;
  *v645 = *v650;
  *&v645[16] = *&v650[16];
  v186 = 3.4028e38;
  *&v645[32] = *&v650[32];
  *&v645[48] = *&v650[48];
  *&v187 = -1;
  *(&v187 + 1) = -1;
  do
  {
    v188 = sns::gNumAdjGains[v182];
    if (v188 >= 1)
    {
      for (n = 0; n != v188; ++n)
      {
        v190 = 0.0;
        if (v182 > 1)
        {
          if (v182 == 2)
          {
            v191 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gNearAdjGains[n];
          }

          else
          {
            if (v182 != 3)
            {
              goto LABEL_195;
            }

            v191 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gFarAdjGains[n];
          }
        }

        else if (v182)
        {
          if (v182 != 1)
          {
            goto LABEL_195;
          }

          v191 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gRegLFAdjGains[n];
        }

        else
        {
          v191 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gRegAdjGains[n];
        }

        v190 = *v191;
LABEL_195:
        v192 = 0;
        *&v650[48] = v187;
        *&v650[32] = v187;
        *&v650[16] = v187;
        *v650 = v187;
        do
        {
          *&v650[v192] = vmulq_n_f32(*&v185[v192], v190);
          v192 += 16;
        }

        while (v192 != 64);
        v193 = 0;
        v194 = 0uLL;
        do
        {
          v195 = vsubq_f32(*(&v633 + v193), *&v650[v193]);
          v194 = vmlaq_f32(v194, v195, v195);
          v193 += 16;
        }

        while (v193 != 64);
        v196 = vaddv_f32(vadd_f32(*v194.f32, *&vextq_s8(v194, v194, 8uLL)));
        if (v196 < v186)
        {
          v184 = n;
          v183 = v182;
          v186 = v196;
        }
      }
    }

    ++v182;
    v185 += 64;
  }

  while (v182 != 4);
  v197 = v183;
  DWORD2(v630[1]) = 0;
  if (v183 - 2 < 2)
  {
    v199 = 16;
LABEL_209:
    v198 = v197;
    MPVQenum(v199, &v674 + 16 * v197, &v630[1] + 1, &v630[1]);
    goto LABEL_210;
  }

  if (v183 == 1)
  {
    v199 = 10;
    goto LABEL_209;
  }

  v198 = v183;
  if (!v183)
  {
    *v650 = 0;
    MPVQenum(6, &v675 + 2, &v630[1] + 2, v650);
    DWORD2(v630[1]) = v650[0] & 1 | (2 * DWORD2(v630[1]));
    v199 = 10;
    v197 = 0;
    goto LABEL_209;
  }

LABEL_210:
  DWORD2(v630[0]) = v183 >> 1;
  HIDWORD(v630[0]) = v184;
  HIDWORD(v630[1]) = v183;
  v200 = 0.0;
  if (v183 > 1)
  {
    if (v183 != 2)
    {
      v201 = v619;
      if (v183 != 3)
      {
        goto LABEL_221;
      }

      v202 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gFarAdjGains[v184];
      goto LABEL_220;
    }

    v202 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gNearAdjGains[v184];
LABEL_219:
    v201 = v619;
LABEL_220:
    v200 = *v202;
    goto LABEL_221;
  }

  if (!v183)
  {
    v202 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gRegAdjGains[v184];
    goto LABEL_219;
  }

  v201 = v619;
  if (v183 == 1)
  {
    v202 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gRegLFAdjGains[v184];
    goto LABEL_220;
  }

LABEL_221:
  v203 = 0;
  v204 = &v645[64 * v198];
  *&v205 = -1;
  *(&v205 + 1) = -1;
  v649 = v205;
  v648 = v205;
  v647 = v205;
  v646 = v205;
  v206 = &sns::gDCTMatrix;
  v207 = v612;
  v208 = v629.i64[0];
  do
  {
    v209 = 0;
    v210 = 0uLL;
    do
    {
      v210 = vmlaq_f32(v210, *&v204[v209], *&v206[v209]);
      v209 += 16;
    }

    while (v209 != 64);
    *&v205 = *(&v637 + v203) + (v200 * vaddv_f32(vadd_f32(*v210.f32, *&vextq_s8(v210, v210, 8uLL))));
    *(&v646 + v203++) = v205;
    v206 += 64;
  }

  while (v203 != 16);
  *&v211 = -1;
  *(&v211 + 1) = -1;
  v662 = v211;
  v661 = v211;
  if (v627)
  {
    v212 = 60;
  }

  else
  {
    v212 = 64;
  }

  v660 = v211;
  v659 = v211;
  v658 = v211;
  v657 = v211;
  v656 = v211;
  v655 = v211;
  v654 = v211;
  v653 = v211;
  v652 = v211;
  v651 = v211;
  *&v650[48] = v211;
  *&v650[32] = v211;
  *&v650[16] = v211;
  *v650 = v211;
  sns::InterpolateScaleFactors(v650, &v646, v212, *&v211, *&v205);
  for (ii = 0; ii != 256; ii += 16)
  {
    v628 = vnegq_f32(*&v650[ii]);
    *&v214 = exp2f(v628.f32[1]);
    v627 = v214;
    *&v215 = exp2f(v628.f32[0]);
    DWORD1(v215) = v627;
    v627 = v215;
    v216 = exp2f(v628.f32[2]);
    v217 = v627;
    *(&v217 + 2) = v216;
    v627 = v217;
    v218 = exp2f(v628.f32[3]);
    v219 = v627;
    *(&v219 + 3) = v218;
    *&v650[ii] = v219;
  }

  v220 = 0;
  while (v220 != v18)
  {
    v221 = v220;
    v222 = v16[v220++];
    v223 = v16[v220];
    if (v222 < v223)
    {
      v224 = *&v650[4 * v221];
      v225 = v223 - v222;
      v226 = (v208 + 4 * v222);
      do
      {
        *v226 = v224 * *v226;
        ++v226;
        --v225;
      }

      while (v225);
    }
  }

  v227 = 0;
  v228 = 0;
  v229 = *(v207 + 1);
  v230 = 0;
  *v645 = 0;
  v616 = &v645[36];
  *&v645[4] = xmmword_19B3A8230;
  if (v609 <= 15999)
  {
    v231 = 1;
  }

  else
  {
    v231 = 2;
  }

  *&v645[20] = unk_19B3A8240;
  LODWORD(v618) = v229;
  if (v229 == 1000)
  {
    v232 = 480;
  }

  else
  {
    v232 = 360;
  }

  memset(&v645[36], 0, 64);
  v614 = v232;
  v610 = &gACOrderBits + 16 * (v232 > v615);
  *&v645[100] = v231;
  *&v645[102] = 0;
  v628.i64[0] = &v640 + 12;
  __asm { FMOV            V0.2S, #1.0 }

  v611 = _D0;
  v613 = vdupq_n_s32(0x3E3D3C19u);
  v622 = &v645[4];
  v623 = &v645[4];
  v236 = v645;
  while (2)
  {
    v626.i64[0] = v236;
    *&v237 = -1;
    *(&v237 + 1) = -1;
    v647 = v237;
    v646 = v237;
    v621 = v230;
    LODWORD(v627) = v228;
    v625.i64[0] = v231;
    if (v618 != 1000)
    {
      if (v201 <= 7999)
      {
        if (!v201)
        {
          v239 = v201;
          v238 = &gSubStarts_7p5;
          goto LABEL_269;
        }

        if (v201 == 4000)
        {
          v238 = &unk_19B3A7F90;
          v239 = 1;
          goto LABEL_269;
        }
      }

      else
      {
        switch(v201)
        {
          case 0x1F40:
            v238 = &unk_19B3A7FA8;
            v239 = 2;
            goto LABEL_269;
          case 0x2EE0:
            v238 = &unk_19B3A7FC0;
            v239 = 3;
            goto LABEL_269;
          case 0x3E80:
            v238 = &unk_19B3A7FD8;
            v239 = 4;
LABEL_269:
            v240 = &gSubStops_7p5;
            goto LABEL_270;
        }
      }

      v238 = &unk_19B3A7F60;
      v239 = -1;
      goto LABEL_269;
    }

    if (v201 <= 7999)
    {
      if (v201)
      {
        if (v201 != 4000)
        {
          goto LABEL_266;
        }

        v238 = &unk_19B3A7F18;
        v239 = 1;
      }

      else
      {
        v239 = v201;
        v238 = &gSubStarts;
      }
    }

    else
    {
      switch(v201)
      {
        case 0x1F40:
          v238 = &unk_19B3A7F30;
          v239 = 2;
          break;
        case 0x2EE0:
          v238 = &unk_19B3A7F48;
          v239 = 3;
          break;
        case 0x3E80:
          v238 = &unk_19B3A7F60;
          v239 = 4;
          break;
        default:
LABEL_266:
          v238 = &sqnt::gACFreq[1076];
          v239 = -1;
          break;
      }
    }

    v240 = &gSubStops;
LABEL_270:
    v241 = &v240[24 * v239];
    v242 = 0;
    *v650 = -1;
    *&v650[8] = -1;
    v243 = &v241[v227];
    v624.i64[0] = v227;
    v244 = &v238[v227];
    do
    {
      vDSP_svesq((v629.i64[0] + 4 * *&v244[v242]), 1, &v650[v242], (*&v243[v242] - *&v244[v242]));
      v242 += 4;
    }

    while (v242 != 12);
    v647 = 0u;
    v646 = 0u;
    v245.i32[0] = *v650;
    if (*v650 != 0.0 && *&v650[4] != 0.0 && *&v650[8] != 0.0)
    {
      v245.i32[1] = *&v650[4];
      *&v674 = vdiv_f32(v611, v245);
      *(&v674 + 2) = 1.0 / *&v650[8];
      v246 = &v241[v624.i64[0]];
      v247 = &v238[v624.i64[0]];
      for (jj = 1; jj != 9; ++jj)
      {
        for (kk = 0; kk != 12; kk += 4)
        {
          LODWORD(v641) = -1;
          vDSP_dotpr((v629.i64[0] + 4 * *&v247[kk]), 1, (v629.i64[0] + 4 * (*&v247[kk] + jj)), 1, &v641, (*&v246[kk] - (*&v247[kk] + jj)));
          *(&v646 + jj - 1) = *(&v646 + jj - 1) + (*&v641 * *(&v674 + kk));
        }
      }
    }

    v250 = 0;
    v251 = v624.i64[0];
    do
    {
      *(&v646 + v250 * 16) = vmulq_f32(LagWindow(std::array<float,8ul> &)::kLagWindow[v250], *(&v646 + v250 * 16));
      ++v250;
    }

    while (v250 != 2);
    v252 = 0;
    v253 = 0;
    *&v254 = -1;
    *(&v254 + 1) = -1;
    *&v650[16] = v254;
    *v650 = v254;
    v255 = 3.0;
    v256 = 1;
    v641 = v254;
    v642 = v254;
    do
    {
      v257 = -*(&v646 + v256 - 1);
      if (v256 <= 1)
      {
        v263 = v257 / v255;
      }

      else
      {
        v258 = &v641;
        v259 = v252;
        do
        {
          v260 = *v258++;
          v257 = v257 - (v260 * *&v645[v259 + 252]);
          v259 -= 4;
        }

        while (v259);
        v261 = 0;
        v262 = v628.i64[0];
        v263 = v257 / v255;
        do
        {
          *&v650[v261] = *(&v641 + v261) + (v263 * *(v262 + v252));
          v261 += 4;
          v262 -= 4;
        }

        while (v252 != v261);
      }

      *&v650[4 * v256 - 4] = v263;
      memcpy(&v641, v650, 4 * v256);
      v255 = v255 * (1.0 - (v263 * v263));
      ++v256;
      ++v253;
      v252 += 4;
    }

    while (v253 != 8);
    v264 = 3.0 / v255;
    v265 = v617;
    if ((3.0 / v255) <= 1.5)
    {
      v265 = 1;
    }

    v228 = v627 + 1;
    *&v645[102] = v627 + 1;
    v201 = v619;
    v266 = v621;
    v231 = v625.i64[0];
    if ((v265 & 1) == 0)
    {
      v267 = v264 < 2.0 && v614 > v615;
      v268 = (((2.0 - v264) * -0.15) + ((2.0 - v264) * -0.15)) + 1.0;
      if (!v267)
      {
        v268 = 1.0;
      }

      *&v269 = -1;
      *(&v269 + 1) = -1;
      v637 = v269;
      v638 = v269;
      if (v268 == 1.0)
      {
        v637 = v641;
        v638 = v642;
      }

      else
      {
        v270 = 0;
        v271 = v268;
        do
        {
          *(&v637 + v270) = v271 * *(&v641 + v270);
          v271 = v268 * v271;
          v270 += 4;
        }

        while (v270 != 32);
      }

      *&v650[16] = v638;
      *v650 = v637;
      *&v272 = -1;
      *(&v272 + 1) = -1;
      v675 = v272;
      v674 = v272;
      v633.i64[0] = -1;
      v633.i64[1] = -1;
      v634.i64[0] = -1;
      v634.i32[2] = -1;
      v634.i32[3] = HIDWORD(v638);
      v273 = -*(&v638 + 3);
      v274 = 1.0 - (v634.f32[3] * v634.f32[3]);
      v275 = 24;
      v276 = 7;
      do
      {
        v277 = 0;
        v278 = v275;
        do
        {
          *(&v674 + v277) = (*&v650[v277] + (v273 * *&v650[v278])) / v274;
          v278 -= 4;
          v277 += 4;
        }

        while (v278 != -4);
        memcpy(v650, &v674, 4 * v276);
        v275 -= 4;
        --v276;
        v279 = *&v650[4 * v276];
        v633.f32[v276] = v279;
        v273 = -v279;
        v274 = 1.0 - (v279 * v279);
      }

      while (v276);
      v280 = 0;
      memset(v650, 170, 16);
      do
      {
        *&v650[2 * v280] = llroundf(asinf(v633.f32[v280]) / 0.1848) + 8;
        ++v280;
      }

      while (v280 != 8);
      v281 = *v650;
      *&v623[8 * v266] = *v650;
      v282.i64[0] = 0xC1000000C1000000;
      v282.i64[1] = 0xC1000000C1000000;
      v625 = vmulq_f32(vaddq_f32(vcvtq_f32_s32(vmovl_high_s16(v281)), v282), v613);
      v620 = vmulq_f32(vaddq_f32(vcvtq_f32_s32(vmovl_s16(*v281.i8)), v282), v613);
      *&v283 = sinf(v620.f32[1]);
      v627 = v283;
      *&v284 = sinf(v620.f32[0]);
      DWORD1(v284) = v627;
      v627 = v284;
      v285 = sinf(v620.f32[2]);
      v286 = v627;
      *(&v286 + 2) = v285;
      v627 = v286;
      v287 = sinf(v620.f32[3]);
      v288 = v627;
      *(&v288 + 3) = v287;
      v627 = v288;
      v289.f32[0] = sinf(v625.f32[1]);
      v620 = v289;
      v290.f32[0] = sinf(v625.f32[0]);
      v290.i32[1] = v620.i32[0];
      v620 = v290;
      v291 = sinf(v625.f32[2]);
      v292 = v620;
      v292.f32[2] = v291;
      v620 = v292;
      v293 = sinf(v625.f32[3]);
      v294 = v620;
      v294.f32[3] = v293;
      v295 = &v616[8 * v266];
      *v295 = v627;
      *(v295 + 1) = v294;
      v296 = 8;
      v297 = 16;
      while (*(v626.i64[0] + 4 * v297) == 0.0)
      {
        --v297;
        --v296;
        if (v297 == 8)
        {
          v298 = 0;
          v299 = 0;
          *&v645[2 * v266] = 0;
          goto LABEL_318;
        }
      }

      v300 = v297 - 9;
      v301 = v300 + 1;
      *&v645[2 * v266] = v300 + 1;
      if (v300 > 0x7FFEu)
      {
        v298 = 0;
        v299 = 0;
      }

      else
      {
        v299 = 0;
        v298 = *&v610[2 * v301 - 2];
        v302 = &gACCoefBits;
        v303 = v622;
        do
        {
          v304 = *v303++;
          v299 += v302[v304];
          v302 += 17;
          --v296;
        }

        while (v296);
      }

LABEL_318:
      v305 = (v299 + v298) >> 11;
      if (((v299 + v298) & 0x7FF) != 0)
      {
        ++v305;
      }

      v228 = *&v645[102] + v305;
      *&v645[102] += v305;
      v231 = *&v645[100];
    }

    v230 = v266 + 1;
    v227 = v251 + 12;
    v236 = (v626.i64[0] + 32);
    v622 += 8;
    if (v230 < v231)
    {
      continue;
    }

    break;
  }

  v306 = v228;
  v307 = v231;
  v308 = v618;
  v309 = v609;
  StartFreqs = tns::GetStartFreqs(v618, v609);
  StopFreqs = tns::GetStopFreqs(v308, v309);
  memset(v650, 0, 32);
  v312 = v612;
  v313 = v629.i64[0];
  if (v307 >= 1)
  {
    v314 = 0;
    v315 = v616;
    do
    {
      v316 = *&v645[2 * v314];
      LODWORD(v317) = *&StartFreqs[4 * v314];
      v318 = *&StopFreqs[4 * v314];
      if (v316 >= 1 && v317 < v318)
      {
        v317 = v317;
        v320 = v616[8 * v314 + (v316 - 1)];
        do
        {
          v321 = v313[v317];
          v322 = *v650;
          *v650 = v321;
          v323 = &v650[4];
          v324 = (v316 - 1);
          v325 = v315;
          if (v316 >= 2)
          {
            do
            {
              v326 = *v325++;
              v327 = v322 + (v326 * v321);
              v321 = v321 + (v326 * v322);
              v322 = *v323;
              *v323++ = v327;
              --v324;
            }

            while (v324);
          }

          v313[v317++] = v321 + (v320 * v322);
        }

        while (v318 > v317);
      }

      ++v314;
      v315 += 8;
    }

    while (v314 != v307);
  }

  v328 = *(v312 + 3);
  MEMORY[0x1EEE9AC00](StopFreqs);
  v330 = (&v604 - ((v329 + 15) & 0x7FFFFFFF0));
  if (v328)
  {
    memset(&v604 - ((v329 + 15) & 0x7FFFFFFF0), 170, v329);
  }

  v331 = 0;
  *&v674 = 0xAAAAAAAA0000AAAALL;
  v332 = v607;
  v333 = *(v312 + 420);
  v621 = v330;
  if (v333 <= 31999)
  {
    if (v333 == 16000)
    {
      v331 = 1;
      goto LABEL_344;
    }

    if (v333 != 24000)
    {
      goto LABEL_344;
    }

LABEL_342:
    v331 = 2;
    goto LABEL_344;
  }

  if (v333 == 32000)
  {
    goto LABEL_342;
  }

  if (v333 == 44100 || v333 == 48000)
  {
    v331 = 3;
  }

LABEL_344:
  v334 = *(v312 + 423);
  v335 = v615;
  if (v615 >= 0xA01)
  {
    v336 = -5;
  }

  else
  {
    v336 = -4;
  }

  if (v615 >= 0x501)
  {
    v337 = v336;
  }

  else
  {
    v337 = -3;
  }

  v626.i64[0] = *(v312 + 423);
  v338 = v337 - vcvtps_s32_f32(log2f(vcvts_n_f32_u32(v334, 1uLL)));
  v625.i64[0] = v332;
  if (v332)
  {
    v339 = -11;
  }

  else
  {
    v339 = -1;
  }

  v340 = v335 + v339 - (v331 + v306) + v338 - 49;
  v341 = *(v312 + 424);
  v342 = 1;
  if (v341 <= 31999)
  {
    if (v341 == 24000)
    {
      v342 = 3;
    }

    else
    {
      v342 = 1;
    }

    if (v341 == 16000)
    {
      v342 = 2;
    }
  }

  else if (v341 == 32000)
  {
    v342 = 4;
  }

  else if (v341 == 44100 || v341 == 48000)
  {
    v342 = 5;
  }

  v343 = v615 / (10 * v342);
  if (v343 >= 0x73)
  {
    LOWORD(v343) = 115;
  }

  v344 = -5 * v342 - v343 - 105;
  v345 = 0.0;
  if ((*(v312 + 1704) & 1) == 0)
  {
    v345 = (fminf(fmaxf((*(v312 + 427) + *(v312 + 856)) - *(v312 + 858), -40.0), 40.0) * 0.2) + (*(v312 + 427) * 0.8);
  }

  *(v312 + 427) = v345;
  *(v312 + 856) = v340;
  v346 = *(v312 + 425);
  v347 = v344;
  GlobalGain = GetGlobalGain(v313, *(v312 + 425), v344, roundf(v345 + v340) * 1.4);
  v349 = fabsf(*v313);
  if (v346 >= 2)
  {
    v350 = v346 - 1;
    v351 = (v313 + 1);
    do
    {
      v352 = *v351++;
      v353 = fabsf(v352);
      if (v353 > v349)
      {
        v349 = v353;
      }

      --v350;
    }

    while (v350);
  }

  if (v349 <= 0.0)
  {
    v354 = 0;
  }

  else
  {
    v354 = (ceilf(log10f((v349 / 32768.0) + 1.0e-31) * 28.0) - v344);
  }

  v356 = v349 == 0.0 || GlobalGain < v354;
  if (v356)
  {
    v357 = v354;
  }

  else
  {
    v357 = GlobalGain;
  }

  *(v612 + 1704) = v356;
  LODWORD(v627) = v357;
  v358.f32[0] = __exp10f((v357 + v344) / 28.0);
  if (v626.i32[0] >= 4u)
  {
    v359 = vdupq_lane_s32(*v358.f32, 0);
    v360 = v626.i64[0] >> 2;
    v361.i64[0] = 0x8000000080000000;
    v361.i64[1] = 0x8000000080000000;
    __asm { FMOV            V2.4S, #1.0 }

    v363 = v629.i64[0];
    __asm { FMOV            V3.4S, #0.375 }

    v365 = v621;
    do
    {
      v366 = *v363++;
      v367 = vdivq_f32(v366, v359);
      *v365++ = vcvtq_s32_f32(vrndq_f32(vmlaq_f32(v367, _Q3, vandq_s8(vorrq_s8(vandq_s8(v367, v361), _Q2), vorrq_s8(vcltzq_f32(v367), vcgtzq_f32(v367))))));
      --v360;
    }

    while (v360);
  }

  v628 = v358;
  WORD4(v674) = v340;
  *v650 = -1431655766;
  v368 = v612;
  v369 = v621;
  v370 = sqnt::SpectrumQuantizer::EstimateBits(v612 + 420, &v674, v615, v621, v650);
  v371 = v370;
  v372 = SWORD1(v674);
  *(v368 + 858) = WORD1(v674);
  v373 = *v650;
  v374 = v674 - *v650;
  _VF = __OFSUB__(v374, 1);
  v375 = v374 - 1;
  if (v375 < 0 == _VF)
  {
    bzero((v369 + 4 * *v650), 4 * v375 + 4);
  }

  v376 = 0;
  v377 = SWORD4(v674);
  if (SWORD4(v674) >= v372)
  {
    v371 = 0;
  }

  WORD3(v674) = v371;
  if (v333 <= 31999)
  {
    if (v333 == 16000)
    {
      v376 = 1;
    }

    else if (v333 == 24000)
    {
      v376 = 2;
    }
  }

  else if (v333 == 32000)
  {
    v376 = 3;
  }

  else if (v333 == 44100 || v333 == 48000)
  {
    v376 = 4;
  }

  v378 = GetDelta(int,int)::t1[v376];
  if (v372 >= v378)
  {
    v381 = GetDelta(int,int)::t2[v376];
    v380 = v627;
    if (v381 <= v372)
    {
      v383 = GetDelta(int,int)::t3[v376];
      if (v383 <= v372)
      {
        v384 = v383;
      }

      else
      {
        v384 = v372;
      }

      v379 = v384 / 48.0;
    }

    else
    {
      v382 = vcvts_n_f32_s32(v378, 4uLL) + 3.0;
      v379 = v382 + ((((v381 / 48.0) - v382) * (v372 - v378)) / (v381 - v378));
    }
  }

  else
  {
    v379 = vcvts_n_f32_s32(v372 + 48, 4uLL);
    v380 = v627;
  }

  v385 = llroundf(v379);
  v386 = v385 + 2;
  if (v380 > 254)
  {
    goto LABEL_415;
  }

  if (v372 <= SWORD4(v674))
  {
    if (v380 < 1)
    {
LABEL_418:
      v390 = v605;
      v391 = v606;
      v392 = v608;
      goto LABEL_439;
    }

LABEL_415:
    v387 = SWORD4(v674) - v386;
    if (v387 > v372)
    {
      goto LABEL_416;
    }

    goto LABEL_418;
  }

  v387 = SWORD4(v674) - v386;
LABEL_416:
  v388 = v373;
  if (v387 <= v372)
  {
    if ((SWORD4(v674) + v385) > v372 || v380 == 254)
    {
      v389 = 1;
    }

    else
    {
      v389 = 2;
    }
  }

  else
  {
    v389 = -1;
  }

  v394 = (v380 + v389);
  v395 = v380;
  if (v394 <= v354)
  {
    v396 = v354;
  }

  else
  {
    v396 = v394;
  }

  v397.i32[0] = __exp10f((v347 + v396) / 28.0);
  LODWORD(v627) = v396;
  v391 = v606;
  if (v395 == v396)
  {
    v392 = v608;
    v373 = v388;
    v390 = v605;
  }

  else
  {
    v390 = v605;
    v392 = v608;
    v398 = v621;
    if (v626.i32[0] >= 4u)
    {
      v399 = vdupq_lane_s32(*v397.f32, 0);
      v400 = v626.i64[0] >> 2;
      v401.i64[0] = 0x8000000080000000;
      v401.i64[1] = 0x8000000080000000;
      __asm { FMOV            V2.4S, #1.0 }

      v403 = v629.i64[0];
      __asm { FMOV            V3.4S, #0.375 }

      v405 = v621;
      do
      {
        v406 = *v403++;
        v407 = vdivq_f32(v406, v399);
        *v405++ = vcvtq_s32_f32(vrndq_f32(vmlaq_f32(v407, _Q3, vandq_s8(vorrq_s8(vandq_s8(v407, v401), _Q2), vorrq_s8(vcltzq_f32(v407), vcgtzq_f32(v407))))));
        --v400;
      }

      while (v400);
    }

    v628 = v397;
    v370 = sqnt::SpectrumQuantizer::EstimateBits(v612 + 420, &v674, v615, v398, v650);
    v408 = v370;
    v373 = *v650;
    v409 = v674 - *v650;
    _VF = __OFSUB__(v409, 1);
    v410 = v409 - 1;
    if (v410 < 0 == _VF)
    {
      bzero((v398 + 4 * *v650), 4 * v410 + 4);
    }

    v377 = SWORD4(v674);
    v371 = SWORD4(v674) < SWORD1(v674) && v408;
    WORD3(v674) = v371;
  }

LABEL_439:
  v411 = v373;
  LOWORD(v674) = v373;
  v412 = v377 - SWORD2(v674);
  MEMORY[0x1EEE9AC00](v370);
  v416 = &v604 - v414;
  if (v413)
  {
    v628 = v415;
    memset(&v604 - v414, 170, 2 * v413);
    v415.i32[0] = v628.i32[0];
  }

  v417 = v621;
  v418 = 0;
  if (!v371 && v328 && v412 + 4 >= 1)
  {
    v470 = 0;
    v471 = 0;
    do
    {
      v472 = *(v417 + 4 * v470);
      if (v472)
      {
        *&v416[2 * v471++] = *(v629.i64[0] + 4 * v470) >= (v415.f32[0] * v472);
      }

      ++v470;
      v418 = v471;
    }

    while (v470 < v328 && v412 + 4 > v471);
  }

  v617 = v418;
  v419 = 0;
  v420 = *(v612 + 1);
  v672 = 0xAAAAAAAAAAAAAAAALL;
  v421 = 16;
  if (v420 == 1000)
  {
    v421 = 21;
  }

  v422 = 20;
  if (v420 == 1000)
  {
    v422 = 27;
  }

  *&v423 = 0xAAAAAAAAAAAAAAAALL;
  *(&v423 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v671 = v423;
  v670 = v423;
  v669 = v423;
  v668 = v423;
  v667 = v423;
  v666 = v423;
  v665 = v423;
  v664 = v423;
  v663 = v423;
  v662 = v423;
  v661 = v423;
  v660 = v423;
  v659 = v423;
  v658 = v423;
  v657 = v423;
  v656 = v423;
  v655 = v423;
  v654 = v423;
  v653 = v423;
  v652 = v423;
  v651 = v423;
  *&v650[48] = v423;
  *&v650[32] = v423;
  *&v650[16] = v423;
  *v650 = v423;
  do
  {
    if (*(v417 + 4 * v421))
    {
      v419 = 0;
    }

    else
    {
      ++v419;
    }

    ++v421;
  }

  while (v421 < v422);
  if (v420 == 1000)
  {
    v424 = 20;
  }

  else
  {
    v424 = 15;
  }

  v425 = (v424 * (v609 / 1000));
  if (v420 == 1000)
  {
    v426 = 24;
  }

  else
  {
    v426 = 18;
  }

  if (v420 == 1000)
  {
    v427 = -3;
  }

  else
  {
    v427 = -2;
  }

  if (v420 == 1000)
  {
    v428 = 3;
  }

  else
  {
    v428 = 2;
  }

  v429 = 2 * v428;
  v430 = v425 - v428;
  if (v426 < v430)
  {
    v431 = v417 + 4 * v428;
    v432 = v426;
    do
    {
      if (*(v431 + 4 * v432))
      {
        v419 = 0;
      }

      else
      {
        ++v419;
      }

      v650[v432++ + 8] = v419 > v429;
    }

    while (v432 < v430);
  }

  v433 = 0;
  v434 = v427 + v425;
  v435 = v425;
  if (v434 + 1 > v425)
  {
    v435 = v434 + 1;
  }

  v436 = v435 - v434;
  v437 = vdupq_n_s32(v419);
  v438 = vaddq_s32(v437, xmmword_19B0B3300);
  v439 = vaddq_s32(v437, xmmword_19B0B3310);
  v440 = vaddq_s32(v437, xmmword_19B0B20C0);
  v441 = vaddq_s32(v437, xmmword_19B0A5860);
  v442 = vdupq_n_s64(v436 - 1);
  v443 = &v650[v434 + 11];
  v444.i64[0] = 0x100000001;
  v444.i64[1] = 0x100000001;
  v445.i64[0] = 0x1000000010;
  v445.i64[1] = 0x1000000010;
  do
  {
    v446 = vdupq_n_s64(v433);
    v447 = vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0A5850)));
    v448 = vaddq_s32(v441, v444);
    if (vuzp1_s8(vuzp1_s16(v447, *v438.i8), *v438.i8).u8[0])
    {
      v443[v433 - 3] = v448.i32[0] > v429;
    }

    if (vuzp1_s8(vuzp1_s16(v447, *&v438), *&v438).i8[1])
    {
      v443[v433 - 2] = v448.i32[1] > v429;
    }

    if (vuzp1_s8(vuzp1_s16(*&v438, vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0A5840)))), *&v438).i8[2])
    {
      v443[v433 - 1] = v448.i32[2] > v429;
      v443[v433] = v448.i32[3] > v429;
    }

    v449 = vaddq_s32(v440, v444);
    v450 = vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0B23A0)));
    if (vuzp1_s8(*&v438, vuzp1_s16(v450, *&v438)).i32[1])
    {
      v443[v433 + 1] = v449.i32[0] > v429;
    }

    if (vuzp1_s8(*&v438, vuzp1_s16(v450, *&v438)).i8[5])
    {
      v443[v433 + 2] = v449.i32[1] > v429;
    }

    if (vuzp1_s8(*&v438, vuzp1_s16(*&v438, vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0B2390))))).i8[6])
    {
      v443[v433 + 3] = v449.i32[2] > v429;
      v443[v433 + 4] = v449.i32[3] > v429;
    }

    v451 = vaddq_s32(v439, v444);
    v452 = vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0B2460)));
    if (vuzp1_s8(vuzp1_s16(v452, *v438.i8), *v438.i8).u8[0])
    {
      v443[v433 + 5] = v451.i32[0] > v429;
    }

    if (vuzp1_s8(vuzp1_s16(v452, *&v438), *&v438).i8[1])
    {
      v443[v433 + 6] = v451.i32[1] > v429;
    }

    if (vuzp1_s8(vuzp1_s16(*&v438, vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0B2450)))), *&v438).i8[2])
    {
      v443[v433 + 7] = v451.i32[2] > v429;
      v443[v433 + 8] = v451.i32[3] > v429;
    }

    v453 = vaddq_s32(v438, v444);
    v454 = vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0B2440)));
    if (vuzp1_s8(*&v438, vuzp1_s16(v454, *&v438)).i32[1])
    {
      v443[v433 + 9] = v453.i32[0] > v429;
    }

    if (vuzp1_s8(*&v438, vuzp1_s16(v454, *&v438)).i8[5])
    {
      v443[v433 + 10] = v453.i32[1] > v429;
    }

    if (vuzp1_s8(*&v438, vuzp1_s16(*&v438, vmovn_s64(vcgeq_u64(v442, vorrq_s8(v446, xmmword_19B0B2430))))).i8[6])
    {
      v443[v433 + 11] = v453.i32[2] > v429;
      v443[v433 + 12] = v453.i32[3] > v429;
    }

    v433 += 16;
    v441 = vaddq_s32(v441, v445);
    v440 = vaddq_s32(v440, v445);
    v439 = vaddq_s32(v439, v445);
    v438 = vaddq_s32(v438, v445);
  }

  while (((v436 + 15) & 0xFFFFFFFFFFFFFFF0) != v433);
  if (v426 >= v425)
  {
    v455 = 0;
    v459 = 0.0;
  }

  else
  {
    v455 = 0;
    v456 = (v629.i64[0] + 4 * v426);
    v457 = v425 - v426;
    v458 = &v650[v426 + 8];
    v459 = 0.0;
    do
    {
      v460 = *v458++;
      if (v460 == 1)
      {
        ++v455;
        v459 = v459 + (fabsf(*v456) / v415.f32[0]);
      }

      ++v456;
      --v457;
    }

    while (v457);
  }

  if (v455 <= 1)
  {
    v461 = 1;
  }

  else
  {
    v461 = v455;
  }

  v462 = llroundf(((v459 / v461) * -16.0) + 8.0);
  v463 = v462 & ~(v462 >> 31);
  if (v463 >= 7)
  {
    v464 = 7;
  }

  else
  {
    v464 = v463;
  }

  v465 = v612;
  if (v392)
  {
    bzero(v391, v392);
    v420 = v465[1];
  }

  *&v466 = 0xAAAAAAAAAAAAAAAALL;
  *(&v466 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v650[8] = v466;
  *&v650[40] = 0xAAAAAAAAAAAAAAAALL;
  v467 = *v465;
  *v650 = v391;
  *&v650[8] = v392;
  v650[12] = 1;
  *&v650[16] = 0;
  *&v650[20] = v392 - 1;
  *&v650[24] = xmmword_19B0B3320;
  *&v650[40] = 0;
  *&v650[48] = v467;
  *&v650[52] = v420;
  v618 = v416;
  if (v420 == 1000)
  {
    if (v467 == 44100)
    {
      v468 = 400;
      *&v650[56] = 400;
      bzero(&v650[60], 0x644uLL);
      v469 = v619;
      goto LABEL_538;
    }

    v468 = v467 / 100;
    v469 = v619;
LABEL_526:
    if (v468 == 480)
    {
      v468 = 400;
    }

    else if (v468 == 360)
    {
      goto LABEL_528;
    }
  }

  else
  {
    v469 = v619;
    if (v467 != 44100)
    {
      v468 = 3 * v467 / 400;
      goto LABEL_526;
    }

LABEL_528:
    v468 = 300;
  }

  *&v650[56] = v468;
  bzero(&v650[60], 0x644uLL);
  v473 = 0;
  v474 = 1;
  if (v467 <= 31999)
  {
    if (v467 == 16000)
    {
      v474 = 0;
      v473 = 1;
      goto LABEL_540;
    }

    if (v467 != 24000)
    {
      goto LABEL_540;
    }

LABEL_537:
    v474 = 0;
    v473 = 2;
    goto LABEL_540;
  }

  if (v467 == 32000)
  {
    goto LABEL_537;
  }

  if (v467 == 44100 || v467 == 48000)
  {
LABEL_538:
    v474 = 0;
    v473 = 3;
  }

LABEL_540:
  if (v469 <= 7999)
  {
    if (v469)
    {
      if (v469 != 4000)
      {
        goto LABEL_550;
      }

      v469 = 1;
    }
  }

  else
  {
    switch(v469)
    {
      case 8000:
        v469 = 2;
        break;
      case 12000:
        v469 = 3;
        break;
      case 16000:
        v469 = 4;
        break;
      default:
LABEL_550:
        v469 = -1;
        break;
    }
  }

  v620.i64[0] = &v650[60];
  v475 = 1;
  if ((v474 & 1) == 0)
  {
    do
    {
      if (v469)
      {
        v476 = *(*v650 + *&v650[20]) | v475;
      }

      else
      {
        v476 = *(*v650 + *&v650[20]) & ~v475;
      }

      *(*v650 + *&v650[20]) = v476;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v475 = 1;
      }

      else
      {
        v475 = 2 * v650[12];
      }

      v650[12] = v475;
      v469 = v469 >> 1;
      --v473;
    }

    while (v473);
    v468 = *&v650[56];
  }

  v477 = vcvtps_s32_f32(log2f(vcvts_n_f32_s32(v468, 1uLL)));
  if (v477 >= 1)
  {
    v479 = (v411 >> 1) - 1;
    do
    {
      if (v479)
      {
        v480 = *(*v650 + *&v650[20]) | v475;
      }

      else
      {
        v480 = *(*v650 + *&v650[20]) & ~v475;
      }

      *(*v650 + *&v650[20]) = v480;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v475 = 1;
      }

      else
      {
        v475 = 2 * v650[12];
      }

      v650[12] = v475;
      v479 >>= 1;
      --v477;
    }

    while (v477);
  }

  if (v371)
  {
    v481 = *(*v650 + *&v650[20]) | v475;
  }

  else
  {
    v481 = *(*v650 + *&v650[20]) & ~v475;
  }

  *(*v650 + *&v650[20]) = v481;
  if (v650[12] == 128)
  {
    --*&v650[20];
    v482 = 1;
  }

  else
  {
    v482 = 2 * v650[12];
  }

  v650[12] = v482;
  v483 = v627;
  v484 = 8;
  do
  {
    if (v483)
    {
      v485 = *(*v650 + *&v650[20]) | v482;
    }

    else
    {
      v485 = *(*v650 + *&v650[20]) & ~v482;
    }

    *(*v650 + *&v650[20]) = v485;
    if (v650[12] == 128)
    {
      --*&v650[20];
      v482 = 1;
    }

    else
    {
      v482 = 2 * v650[12];
    }

    v650[12] = v482;
    v483 >>= 1;
    --v484;
  }

  while (v484);
  v486 = *&v645[100];
  if (*&v645[100] >= 1)
  {
    v487 = v645;
    v488 = *&v645[100];
    do
    {
      if (*v487++)
      {
        v490 = *(*v650 + *&v650[20]) | v482;
      }

      else
      {
        v490 = *(*v650 + *&v650[20]) & ~v482;
      }

      *(*v650 + *&v650[20]) = v490;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v482 = 1;
      }

      else
      {
        v482 = 2 * v650[12];
      }

      v650[12] = v482;
      --v488;
    }

    while (v488);
  }

  if (v625.i64[0])
  {
    v491 = *(*v650 + *&v650[20]) | v482;
  }

  else
  {
    v491 = *(*v650 + *&v650[20]) & ~v482;
  }

  *(*v650 + *&v650[20]) = v491;
  if (v650[12] == 128)
  {
    --*&v650[20];
    v492 = 1;
  }

  else
  {
    v492 = 2 * v650[12];
  }

  v650[12] = v492;
  v493 = 5;
  v494 = v630[0];
  do
  {
    if (v494)
    {
      v495 = *(*v650 + *&v650[20]) | v492;
    }

    else
    {
      v495 = *(*v650 + *&v650[20]) & ~v492;
    }

    *(*v650 + *&v650[20]) = v495;
    if (v650[12] == 128)
    {
      --*&v650[20];
      v492 = 1;
    }

    else
    {
      v492 = 2 * v650[12];
    }

    v650[12] = v492;
    v494 >>= 1;
    --v493;
  }

  while (v493);
  v496 = 5;
  v497 = DWORD1(v630[0]);
  do
  {
    if (v497)
    {
      v498 = *(*v650 + *&v650[20]) | v492;
    }

    else
    {
      v498 = *(*v650 + *&v650[20]) & ~v492;
    }

    *(*v650 + *&v650[20]) = v498;
    if (v650[12] == 128)
    {
      --*&v650[20];
      v492 = 1;
    }

    else
    {
      v492 = 2 * v650[12];
    }

    v650[12] = v492;
    v497 >>= 1;
    --v496;
  }

  while (v496);
  v499 = HIDWORD(v630[1]);
  if (HIDWORD(v630[1]) < 2)
  {
    v500 = *(*v650 + *&v650[20]) & ~v492;
  }

  else
  {
    v500 = *(*v650 + *&v650[20]) | v492;
  }

  *(*v650 + *&v650[20]) = v500;
  if (v650[12] == 128)
  {
    --*&v650[20];
    v501 = 1;
  }

  else
  {
    v501 = 2 * v650[12];
  }

  v650[12] = v501;
  v502 = BYTE12(v630[0]);
  v503 = sns::gGainMSBBits[v499];
  if (v503 >= 1)
  {
    v504 = HIDWORD(v630[0]) >> sns::gGainLSBBits[v499];
    do
    {
      if (v504)
      {
        v505 = *(*v650 + *&v650[20]) | v501;
      }

      else
      {
        v505 = *(*v650 + *&v650[20]) & ~v501;
      }

      *(*v650 + *&v650[20]) = v505;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v501 = 1;
      }

      else
      {
        v501 = 2 * v650[12];
      }

      v650[12] = v501;
      v504 >>= 1;
      --v503;
    }

    while (v503);
  }

  if (LODWORD(v630[1]))
  {
    v506 = *(*v650 + *&v650[20]) | v501;
  }

  else
  {
    v506 = *(*v650 + *&v650[20]) & ~v501;
  }

  *(*v650 + *&v650[20]) = v506;
  if (v650[12] == 128)
  {
    --*&v650[20];
    v507 = 1;
  }

  else
  {
    v507 = 2 * v650[12];
  }

  v650[12] = v507;
  if (v499 <= 1)
  {
    if (v502)
    {
      v509 = 2390004;
    }

    else
    {
      v509 = 0;
    }

    if (v499)
    {
      v510 = v509;
    }

    else
    {
      v510 = 2390004 * DWORD2(v630[1]) + 4780008;
    }

    v511 = v510 + DWORD1(v630[1]);
    v512 = 13;
    v513 = v511;
    do
    {
      if (v513)
      {
        v514 = *(*v650 + *&v650[20]) | v507;
      }

      else
      {
        v514 = *(*v650 + *&v650[20]) & ~v507;
      }

      *(*v650 + *&v650[20]) = v514;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v507 = 1;
      }

      else
      {
        v507 = 2 * v650[12];
      }

      v650[12] = v507;
      v513 >>= 1;
      --v512;
    }

    while (v512);
    v515 = v511 >> 13;
  }

  else
  {
    if (v499)
    {
      v508 = (v502 & 1 | (2 * DWORD1(v630[1]))) + 15158272;
    }

    else
    {
      v508 = DWORD1(v630[1]);
    }

    v516 = 12;
    v517 = v508;
    do
    {
      if (v517)
      {
        v518 = *(*v650 + *&v650[20]) | v507;
      }

      else
      {
        v518 = *(*v650 + *&v650[20]) & ~v507;
      }

      *(*v650 + *&v650[20]) = v518;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v507 = 1;
      }

      else
      {
        v507 = 2 * v650[12];
      }

      v650[12] = v507;
      v517 >>= 1;
      --v516;
    }

    while (v516);
    v515 = v508 >> 12;
  }

  v519 = 12;
  do
  {
    if (v515)
    {
      v520 = *(*v650 + *&v650[20]) | v507;
    }

    else
    {
      v520 = *(*v650 + *&v650[20]) & ~v507;
    }

    *(*v650 + *&v650[20]) = v520;
    if (v650[12] == 128)
    {
      --*&v650[20];
      v507 = 1;
    }

    else
    {
      v507 = 2 * v650[12];
    }

    v650[12] = v507;
    v515 >>= 1;
    --v519;
  }

  while (v519);
  if (v390)
  {
    if ((v390 & 0x100000000) != 0)
    {
      v521 = *(*v650 + *&v650[20]) | v507;
    }

    else
    {
      v521 = *(*v650 + *&v650[20]) & ~v507;
    }

    *(*v650 + *&v650[20]) = v521;
    if (v650[12] == 128)
    {
      --*&v650[20];
      v507 = 1;
    }

    else
    {
      v507 = 2 * v650[12];
    }

    v650[12] = v507;
    v522 = v390 >> 16;
    v523 = 9;
    do
    {
      if (v522)
      {
        v524 = *(*v650 + *&v650[20]) | v507;
      }

      else
      {
        v524 = *(*v650 + *&v650[20]) & ~v507;
      }

      *(*v650 + *&v650[20]) = v524;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v507 = 1;
      }

      else
      {
        v507 = 2 * v650[12];
      }

      v650[12] = v507;
      v522 >>= 1;
      --v523;
    }

    while (v523);
  }

  v525 = v464;
  v526 = 3;
  do
  {
    if (v525)
    {
      v527 = *(*v650 + *&v650[20]) | v507;
    }

    else
    {
      v527 = *(*v650 + *&v650[20]) & ~v507;
    }

    *(*v650 + *&v650[20]) = v527;
    if (v650[12] == 128)
    {
      --*&v650[20];
      v507 = 1;
    }

    else
    {
      v507 = 2 * v650[12];
    }

    v650[12] = v507;
    v525 >>= 1;
    --v526;
  }

  while (v526);
  if (v486 >= 1)
  {
    for (mm = 0; mm != v486; ++mm)
    {
      v529 = *&v645[2 * mm];
      if (v529 >= 1)
      {
        if (*&v650[52] == 1000)
        {
          v530 = 480;
        }

        else
        {
          v530 = 360;
        }

        BitWriter::ArithEncode(v650, tns::gACOrderCumFreq[8 * (v530 > 8 * *&v650[8]) - 1 + v529], tns::gACOrderFreq[8 * (v530 > 8 * *&v650[8]) - 1 + v529]);
        v531 = &tns::gACCoefCumFreq;
        v532 = v623;
        v533 = &tns::gACCoefFreq;
        do
        {
          v534 = *v532++;
          BitWriter::ArithEncode(v650, v531[v534], v533[v534]);
          v533 += 17;
          v531 += 17;
          --v529;
        }

        while (v529);
      }

      v623 += 8;
    }
  }

  v535 = 160;
  if (*&v650[48] <= 31999)
  {
    v536 = v621;
    v537 = v620.i64[0];
    if (*&v650[48] == 16000)
    {
      v535 = 320;
    }

    else if (*&v650[48] == 24000)
    {
      v535 = 480;
    }
  }

  else
  {
    v536 = v621;
    v537 = v620.i64[0];
    if (*&v650[48] == 32000)
    {
      v535 = 640;
    }

    else if (*&v650[48] == 44100 || *&v650[48] == 48000)
    {
      v535 = 800;
    }
  }

  v538 = WORD3(v674);
  v619 = v674;
  if (v674 >= 1)
  {
    v539 = 0;
    v540 = 0;
    v624.i64[0] = &sqnt::gACLookup + 512 * (v535 < 8 * *&v650[8]);
    do
    {
      v478.i64[0] = *(v536 + 4 * v539);
      v628 = v478;
      *v478.f32 = vabs_s32(*v478.f32);
      v541 = v478.i32[0];
      v542 = v478.i32[1];
      if (v478.i32[0] <= v478.i32[1])
      {
        v543 = v478.u32[1];
      }

      else
      {
        v543 = v478.i32[0];
      }

      v626 = v478;
      *&v627 = v540;
      LODWORD(v623) = v478.i32[1];
      LODWORD(v622) = v478.i32[0];
      v625.i64[0] = v539 > *&v650[56] >> 1;
      if (v543 <= 3)
      {
        v546 = 0;
        v545 = 0;
        v544 = 0;
        v540 = v540;
      }

      else
      {
        v544 = 0;
        v545 = 0;
        v546 = 0;
        v540 = v540;
        v547 = v624.i64[0] + ((v539 > *&v650[56] >> 1) << 8) + v540;
        do
        {
          v629 = v478;
          v548 = v540;
          if (v546 >= 3)
          {
            v549 = 3;
          }

          else
          {
            v549 = v546;
          }

          v550 = 17 * *(v547 + (v549 << 10));
          BitWriter::ArithEncode(v650, sqnt::gACCumFreq[v550 + 16], sqnt::gACFreq[v550 + 16]);
          v478 = v629;
          if (!v538 || v546)
          {
            if (v629.i8[0])
            {
              v551 = *(*v650 + *&v650[20]) | v650[12];
            }

            else
            {
              v551 = *(*v650 + *&v650[20]) & ~v650[12];
            }

            *(*v650 + *&v650[20]) = v551;
            if (v650[12] == 128)
            {
              --*&v650[20];
              v552 = 1;
            }

            else
            {
              v552 = 2 * v650[12];
            }

            v650[12] = v552;
            if (v478.i8[4])
            {
              v553 = *(*v650 + *&v650[20]) | v552;
            }

            else
            {
              v553 = *(*v650 + *&v650[20]) & ~v552;
            }

            *(*v650 + *&v650[20]) = v553;
            v540 = v548;
            if (v650[12] == 128)
            {
              --*&v650[20];
              v554 = 1;
            }

            else
            {
              v554 = 2 * v650[12];
            }

            v650[12] = v554;
          }

          else
          {
            v544 = v629.i8[0] & 1;
            v545 = v629.i8[4] & 1;
            v540 = v548;
          }

          *v478.f32 = vshr_n_u32(*v478.f32, 1uLL);
          ++v546;
          v541 = v478.i32[0];
          v542 = v478.i32[1];
          if (v478.i32[0] <= v478.i32[1])
          {
            v555 = v478.u32[1];
          }

          else
          {
            v555 = v478.i32[0];
          }
        }

        while (v555 > 3);
      }

      v556 = v628.i32[0];
      if (v546 >= 3)
      {
        v557 = 3;
      }

      else
      {
        v557 = v546;
      }

      v558 = 17 * *(v624.i64[0] + (v557 << 10) + (v625.i64[0] << 8) + v540);
      BitWriter::ArithEncode(v650, sqnt::gACCumFreq[v558 + (v541 + 4 * v542)], sqnt::gACFreq[v558 + (v541 + 4 * v542)]);
      if (v538)
      {
        v478 = v626;
        if (v546)
        {
          v559 = v544 & 1;
          v560 = v673;
          v561 = v673 + 1;
          v537 = v620.i64[0];
          *(v620.i64[0] + 2 * v673) = v559;
          if (v622 <= 1 && v556)
          {
            v537[v561] = v556 < 1;
            v561 = v560 + 2;
          }

          *v478.f32 = vshr_n_u32(*v478.f32, 1uLL);
          v673 = v561 + 1;
          v537[v561] = v545 & 1;
          if (v623 <= 1)
          {
            v478.i32[1] = 0;
            if (v628.i32[1])
            {
              v673 = v561 + 2;
              v537[v561 + 1] = v628.i32[1] < 1;
            }
          }
        }

        else
        {
          v537 = v620.i64[0];
        }
      }

      else
      {
        v537 = v620.i64[0];
        v478 = v626;
      }

      if (v478.i32[0])
      {
        if (v556 <= 0)
        {
          v562 = *(*v650 + *&v650[20]) | v650[12];
        }

        else
        {
          v562 = *(*v650 + *&v650[20]) & ~v650[12];
        }

        *(*v650 + *&v650[20]) = v562;
        if (v650[12] == 128)
        {
          --*&v650[20];
          v563 = 1;
        }

        else
        {
          v563 = 2 * v650[12];
        }

        v650[12] = v563;
      }

      v536 = v621;
      if (v478.i32[1])
      {
        if (v621->i32[v539 | 1] <= 0)
        {
          v564 = *(*v650 + *&v650[20]) | v650[12];
        }

        else
        {
          v564 = *(*v650 + *&v650[20]) & ~v650[12];
        }

        *(*v650 + *&v650[20]) = v564;
        if (v650[12] == 128)
        {
          --*&v650[20];
          v565 = 1;
        }

        else
        {
          v565 = 2 * v650[12];
        }

        v650[12] = v565;
      }

      if (v546 >= 3)
      {
        v566 = 3;
      }

      else
      {
        v566 = v546;
      }

      if (v546 > 1)
      {
        v567 = v566 | 0xC;
      }

      else
      {
        v567 = v541 + v542 + (v541 + v542) * v566 + 1;
      }

      v540 = (v567 + 16 * v627);
      v539 += 2;
    }

    while (v539 < v619);
  }

  v568 = __clz(v650[12]);
  v569 = __clz(*&v650[28]);
  if (*&v650[32] >= 0)
  {
    v570 = -2;
  }

  else
  {
    v570 = 6;
  }

  if (*&v650[40] > 0)
  {
    v571 = -8 * *&v650[40];
  }

  else
  {
    v571 = 0;
  }

  v572 = v568 - v569 + 8 * (*&v650[20] - *&v650[16]) + v570 + v571 - 23;
  if (v572 < 0)
  {
    fwrite("invalid residual bits!\n", 0x17uLL, 1uLL, *MEMORY[0x1E69E9848]);
    if (v538)
    {
      goto LABEL_789;
    }
  }

  else if (v538)
  {
LABEL_789:
    if (v673 >= v572)
    {
      v573 = v572;
    }

    else
    {
      v573 = v673;
    }

    if (v573 >= 1)
    {
      v574 = v650[12];
      do
      {
        if (*v537++)
        {
          v576 = *(*v650 + *&v650[20]) | v574;
        }

        else
        {
          v576 = *(*v650 + *&v650[20]) & ~v574;
        }

        *(*v650 + *&v650[20]) = v576;
        if (v650[12] == 128)
        {
          --*&v650[20];
          v574 = 1;
        }

        else
        {
          v574 = 2 * v650[12];
        }

        v650[12] = v574;
        --v573;
      }

      while (v573);
    }

    goto LABEL_815;
  }

  if (v572 >= v617)
  {
    v577 = v617;
  }

  else
  {
    v577 = v572;
  }

  v578 = v618;
  if (v577 >= 1)
  {
    v579 = v650[12];
    do
    {
      if (*v578++)
      {
        v581 = *(*v650 + *&v650[20]) | v579;
      }

      else
      {
        v581 = *(*v650 + *&v650[20]) & ~v579;
      }

      *(*v650 + *&v650[20]) = v581;
      if (v650[12] == 128)
      {
        --*&v650[20];
        v579 = 1;
      }

      else
      {
        v579 = 2 * v650[12];
      }

      v650[12] = v579;
      --v577;
    }

    while (v577);
  }

LABEL_815:
  v582 = 0;
  v583 = 23;
  do
  {
    v584 = v582;
    v585 = *&v650[28] >> v583;
    ++v582;
    --v583;
  }

  while (!v585);
  v586 = 0xFFFFFFu >> v582;
  v587 = (-16777216 >> v582) & (*&v650[24] + (0xFFFFFFu >> v582)) & 0xFFFFFF;
  if (!(((*&v650[24] + (0xFFFFFFu >> v582)) ^ (*&v650[24] + *&v650[28])) >> 24))
  {
    v588 = (-8388608 >> v582) & (*&v650[24] + (0x7FFFFFu >> v582)) & 0xFFFFFF;
    if (v587 + v586 < ((*&v650[24] + *&v650[28]) & 0xFFFFFFu))
    {
      v582 = v584 + 1;
    }

    else
    {
      v587 = v588;
      v582 = v584 + 2;
    }

    if (v587 < *&v650[24])
    {
      *&v650[36] = 1;
    }
  }

  *&v650[24] = v587;
  v589 = v582 + 8;
  do
  {
    result = BitWriter::ArithEncShift(v650);
    v589 -= 8;
  }

  while (v589 > 8);
  v591 = *&v650[32];
  if (*&v650[40] < 1)
  {
    if (v589 >= 1)
    {
      v600 = 128;
      do
      {
        v601 = *(*v650 + *&v650[16]);
        v602 = v601 & ~v600;
        v603 = v601 | v600;
        if ((v600 & v591) == 0)
        {
          v603 = v602;
        }

        *(*v650 + *&v650[16]) = v603;
        v600 >>= 1;
        --v589;
      }

      while (v589);
    }
  }

  else
  {
    v592 = *&v650[16];
    ++*&v650[16];
    *(*v650 + v592) = v650[32];
    if (*&v650[40] > 1)
    {
      do
      {
        v593 = *&v650[16];
        ++*&v650[16];
        *(*v650 + v593) = -1;
        v594 = (*&v650[40])--;
      }

      while (v594 > 2);
    }

    if (v589 >= 1)
    {
      v595 = 0xFFu >> (8 - v589);
      v596 = 128;
      do
      {
        v597 = *(*v650 + *&v650[16]);
        v598 = v597 & ~v596;
        v599 = v597 | v596;
        if ((v596 & v595) == 0)
        {
          v599 = v598;
        }

        *(*v650 + *&v650[16]) = v599;
        v596 >>= 1;
        --v589;
      }

      while (v589);
    }
  }

  return result;
}

void mdct::AnalysisFilterbank::TimeToFrequency(mdct::AnalysisFilterbank *this, DSPSplitComplex *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = *this;
  v5 = *(this + 6);
  MEMORY[0x1EEE9AC00](this);
  v7 = (v28 - v6);
  v9 = (v8 - v5);
  if (v9)
  {
    memset(v28 - v6, 255, 4 * v9);
  }

  MEMORY[0x19EAE5FA0](*(this + 2), 1, *(this + 4), 1, v7, 1, (v4 - v5));
  MEMORY[0x19EAE5FA0](*(this + 2) + 4 * *this - 4 * *(this + 6), 1, a2, 1, v7 + 4 * *this + -4 * *(this + 6), 1);
  v10 = *(this + 6);
  v11 = v10;
  if (*this != v10)
  {
    memmove(*(this + 4), a2 + 4 * v10, 4 * (*this - v10));
    v11 = *this;
    v10 = *(this + 6);
  }

  v12 = v11 >> 1;
  v13 = v7 + 4 * v11 + 4 * v12;
  MEMORY[0x19EAE5DC0](v13 - 4, -1, v13, 1, a2, 1, v12 - v10);
  v14 = v7 + 4 * *this;
  v15 = *(this + 6);
  if (v15)
  {
    v16 = 4 * v15;
    v17 = a2 + v12 - v15;
    do
    {
      *v17++ = *&v14[v16 - 4];
      v16 -= 4;
    }

    while (v16);
  }

  MEMORY[0x19EAE6100](v14 - 4, -1, v7, 1, a2 + 4 * v12, 1, v11 >> 1);
  MEMORY[0x19EAE5FB0](a2, 1, v7, 1, v11 >> 1);
  if (v11 >= 2)
  {
    memcpy(v7 + 4 * v12, a2 + 4 * v12, 4 * v12);
  }

  MEMORY[0x19EAE6090](v7, 1, this + 8, v7, 1, *this);
  if (*(this + 14))
  {
    DCT_IV::OutOfPlaceTransform((this + 56), v7, a2, 1.0);
    LODWORD(v18) = *(this + 1);
  }

  else
  {
    v19 = *this;
    v18 = *(this + 1);
    if (__PAIR64__(v18, v19) == 0x3C0000003CLL)
    {
      v20 = 0;
      v21 = &mdct::gDCT_60_60;
      v22 = a2;
      do
      {
        vDSP_dotpr(v7, 1, v21, 1, v22, *this);
        ++v20;
        ++v22;
        v21 += 60;
      }

      while (v20 < *(this + 1));
      LODWORD(v18) = *(this + 1);
    }

    else if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        *(&a2->realp + i) = 0;
        if (v19)
        {
          v25 = 0;
          v26 = 0.0;
          do
          {
            v27 = *(&v7->realp + v25);
            v24 = 3.14159265 / v19;
            v26 = v26 + (v27 * cosf((i + 0.5) * ((v25++ + 0.5) * v24)));
          }

          while (v19 != v25);
          *(&a2->realp + i) = v26;
        }
      }
    }
  }

  if (v18 < *this)
  {
    bzero(a2 + 4 * v18, 4 * (*this + ~v18) + 4);
  }
}

uint64_t lc3::Encoder::Encode(lc3::Encoder *this, unsigned __int8 *a2, unsigned int a3, const float **a4, int a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (*(this + 12) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *this;
  if (*(this + 1) == 1000)
  {
    v10 = v9 == 44100 ? 480 : v9 / 100;
  }

  else
  {
    v10 = v9 == 44100 ? 360 : 3 * v9 / 400;
  }

  if (v10 != a5)
  {
    return 0xFFFFFFFFLL;
  }

  MEMORY[0x1EEE9AC00](this);
  v12 = (v20 - ((v11 + 15) & 0x7FFFFFFF0));
  if (v13)
  {
    memset(v20 - ((v11 + 15) & 0x7FFFFFFF0), 170, v11);
  }

  LODWORD(v14) = *(this + 2);
  if (!v14)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    if (v15 >= a3 % v14)
    {
      v17 = a3 / v14;
    }

    else
    {
      v17 = a3 / v14 + 1;
    }

    lc3::Channel_Encoder::Encode(*(*(this + 2) + 8 * v15), a4[v15], v17, &a2[v16]);
    v12[v15] = 0;
    v16 += v17;
    ++v15;
    v14 = *(this + 2);
  }

  while (v15 < v14);
  if (v14 < 1)
  {
    return 0;
  }

  while (1)
  {
    v19 = *v12++;
    result = v19;
    if (v19)
    {
      break;
    }

    if (!--v14)
    {
      return 0;
    }
  }

  return result;
}

char *tns::GetStartFreqs(int a1, int a2)
{
  if (a1 != 1000)
  {
    if (a2 <= 11999)
    {
      if (a2 == 4000)
      {
        v2 = 0;
        goto LABEL_27;
      }

      if (a2 == 8000)
      {
        v2 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      switch(a2)
      {
        case 12000:
          v2 = 2;
          goto LABEL_27;
        case 16000:
          v2 = 3;
          goto LABEL_27;
        case 20000:
          v2 = 4;
LABEL_27:
          v3 = &tns::GetStartFreqs(lc3::Frame_Length,lc3::Bandwidth)::kStartFreqs_7p5;
          return &v3[8 * v2];
      }
    }

    v2 = -1;
    goto LABEL_27;
  }

  if (a2 <= 11999)
  {
    if (a2 == 4000)
    {
      v2 = 0;
      goto LABEL_25;
    }

    if (a2 == 8000)
    {
      v2 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v2 = -1;
    goto LABEL_25;
  }

  if (a2 == 12000)
  {
    v2 = 2;
    goto LABEL_25;
  }

  if (a2 == 16000)
  {
    v2 = 3;
    goto LABEL_25;
  }

  if (a2 != 20000)
  {
    goto LABEL_24;
  }

  v2 = 4;
LABEL_25:
  v3 = &tns::GetStartFreqs(lc3::Frame_Length,lc3::Bandwidth)::kStartFreqs;
  return &v3[8 * v2];
}

char *tns::GetStopFreqs(int a1, int a2)
{
  if (a1 != 1000)
  {
    if (a2 <= 11999)
    {
      if (a2 == 4000)
      {
        v2 = 0;
        goto LABEL_27;
      }

      if (a2 == 8000)
      {
        v2 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      switch(a2)
      {
        case 12000:
          v2 = 2;
          goto LABEL_27;
        case 16000:
          v2 = 3;
          goto LABEL_27;
        case 20000:
          v2 = 4;
LABEL_27:
          v3 = &tns::GetStopFreqs(lc3::Frame_Length,lc3::Bandwidth)::kStopFreqs_7p5;
          return &v3[8 * v2];
      }
    }

    v2 = -1;
    goto LABEL_27;
  }

  if (a2 <= 11999)
  {
    if (a2 == 4000)
    {
      v2 = 0;
      goto LABEL_25;
    }

    if (a2 == 8000)
    {
      v2 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v2 = -1;
    goto LABEL_25;
  }

  if (a2 == 12000)
  {
    v2 = 2;
    goto LABEL_25;
  }

  if (a2 == 16000)
  {
    v2 = 3;
    goto LABEL_25;
  }

  if (a2 != 20000)
  {
    goto LABEL_24;
  }

  v2 = 4;
LABEL_25:
  v3 = &tns::GetStopFreqs(lc3::Frame_Length,lc3::Bandwidth)::kStopFreqs;
  return &v3[8 * v2];
}

void *ltpf::Decoder::Apply(ltpf::Decoder *this, __int16 a2, int a3, unsigned int a4, float *a5)
{
  v97 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](this);
  v11 = &v89[-2 * v10];
  if (v10)
  {
    v12 = &v89[-2 * v10];
    do
    {
      *v12 = -1;
      v12[1] = -1;
      v12 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  v13 = MEMORY[0x1EEE9AC00](v8);
  v21 = &v89[-2 * v17];
  if (v17)
  {
    v22 = &v89[-2 * v17];
    do
    {
      *v22 = -1;
      v22[1] = -1;
      v22 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  v23 = 0;
  v24 = v19 * v20;
  v25 = vcvtas_u32_f32(v14 * 1.3333);
  if (*(this + 1) != 750)
  {
    v25 = v14;
  }

  if (v18 <= 31999)
  {
    if (v18 == 16000)
    {
      v23 = 80;
    }

    else if (v18 == 24000)
    {
      v23 = 160;
    }
  }

  else if (v18 == 32000)
  {
    v23 = 240;
  }

  else if (v18 == 44100 || v18 == 48000)
  {
    v23 = 320;
  }

  v26 = llroundf(v24);
  if (v25 >= v23 + 320)
  {
    if (v25 >= v23 + 400)
    {
      if (v25 >= v23 + 480)
      {
        if (v25 >= v23 + 560)
        {
          v27 = 0;
          v28 = 0.0;
        }

        else
        {
          v28 = 0.25;
          v27 = 3;
        }
      }

      else
      {
        v28 = 0.3;
        v27 = 2;
      }
    }

    else
    {
      v28 = 0.35;
      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0.4;
  }

  v29 = v26 & 3;
  if (v18 > 31999)
  {
    if (v18 == 32000)
    {
      v30 = &gNum_32000[2 * v27];
      v32 = &gDen_32000;
      goto LABEL_47;
    }

    v30 = 44100;
    if (v18 == 44100 || v18 == 48000)
    {
      v30 = &gNum_48000 + 48 * v27;
    }
  }

  else if (v18 == 8000 || (v30 = 16000, v18 == 16000))
  {
    v30 = &gNum_16000[v27];
  }

  else if (v18 == 24000)
  {
    v30 = &gNum_24000[2 * v27];
    v32 = &gDen_24000;
LABEL_47:
    v31 = v32 + 32 * v29;
    goto LABEL_48;
  }

  if (v18 > 31999)
  {
    if (v18 == 44100 || (v31 = 48000, v18 == 48000))
    {
      v31 = &gDen_48000 + 48 * (v26 & 3);
    }
  }

  else if (v18 == 8000 || (v31 = 16000, v18 == 16000))
  {
    v31 = &gDen_16000 + 16 * (v26 & 3);
  }

LABEL_48:
  if (v16 >= 1)
  {
    v33 = v11;
    do
    {
      v34 = *v30;
      v30 += 16;
      *v33++ = vmulq_n_f32(v34, v28 * 0.85);
      --v16;
    }

    while (v16);
  }

  v35 = v26 >> 2;
  if (v17 >= 1)
  {
    v36 = &v89[-2 * v17];
    do
    {
      v37 = *v31;
      v31 += 16;
      *v36++ = vmulq_n_f32(v37, v28);
      --v17;
    }

    while (v17);
  }

  if (!a3 && (*(this + 128) & 1) == 0)
  {
    v38 = *(this + 9);
    v39 = *(this + 10);
    if (v39 != v38)
    {
      memmove(v38, &a5[*(this + 2) - ((v39 - v38) >> 2)], v39 - v38);
    }

    goto LABEL_99;
  }

  v91 = v29;
  v93 = v21;
  v89[1] = v89;
  v40 = MEMORY[0x1EEE9AC00](v13);
  v43 = v89 - v42;
  if (v44)
  {
    v40 = memset(v89 - v42, 255, v41);
  }

  v46 = *(this + 9);
  v45 = *(this + 10);
  v47 = v45 - v46;
  if (v45 != v46)
  {
    v40 = memcpy(v43, *(this + 9), v45 - v46);
  }

  v48 = *(this + 2);
  if (v48)
  {
    v40 = memcpy(&v43[v47], a5, 4 * v48);
  }

  v94 = v11;
  if (v45 == v46)
  {
    v92 = v46;
  }

  else
  {
    v40 = memmove(v46, &a5[v48 - (v47 >> 2)], v45 - v46);
    v46 = *(this + 9);
    v92 = *(this + 10);
    LODWORD(v48) = *(this + 2);
  }

  v95 = a3;
  v96 = a5;
  v50 = *(this + 12);
  v49 = *(this + 13);
  v51 = v49 - v50;
  MEMORY[0x1EEE9AC00](v40);
  v54 = v89 - v53;
  if (v55)
  {
    memset(v89 - v53, 255, v52);
  }

  v56 = v92 - v46;
  if (v49 != v50)
  {
    memcpy(v54, v50, v49 - v50);
  }

  v57 = &v43[v56];
  v58 = &v54[v51];
  if (*(this + 1) == 1000)
  {
    v59 = v48 >> 2;
  }

  else
  {
    v59 = v48 / 3;
  }

  a5 = v96;
  a3 = v95;
  v60 = *(this + 128);
  v90 = v58;
  if (v60)
  {
    if (!v95)
    {
      ltpf::Decoder::Process<(ltpf::Decoder::Flavor)2>(this, *(this + 3), *(this + 6), v57, v58, *(this + 30), v59);
      goto LABEL_94;
    }

    v61 = *(this + 30);
    if (v35 != v61 || v91 != *(this + 31))
    {
      v48 = v58;
      ltpf::Decoder::Process<(ltpf::Decoder::Flavor)2>(this, *(this + 3), *(this + 6), v57, v58, v61, v59);
      v89[0] = v89;
      v69 = v92 - v46;
      MEMORY[0x1EEE9AC00](v70);
      v74 = v89 - v73;
      if (v75)
      {
        memcpy(v89 - v73, &v48[-v72], v71);
      }

      ltpf::Decoder::Process<(ltpf::Decoder::Flavor)0>(this, v94, v93, &v74[v69], v48, v35, v59);
      LODWORD(v48) = *(this + 2);
      goto LABEL_88;
    }

    if (!v59)
    {
      goto LABEL_88;
    }

    v62 = v59;
    v63 = v57;
    v64 = v58;
    v65 = v57;
    v67 = v93;
    v66 = v94;
    do
    {
      v68 = *v65++;
      *v64 = v68 - ltpf::Decoder::DirectFormLoop(this, v66, v67, v63, v64, v35);
      ++v64;
      v63 = v65;
      --v62;
    }

    while (v62);
  }

  else
  {
    ltpf::Decoder::Process<(ltpf::Decoder::Flavor)0>(this, v94, v93, v57, v58, v35, v59);
  }

  a5 = v96;
  a3 = v95;
  if (!v95)
  {
LABEL_94:
    if (v48 != v59)
    {
      memcpy(&v90[v59], (v57 + 4 * v59), 4 * (v48 - v59));
    }

    goto LABEL_96;
  }

LABEL_88:
  v76 = v48 - v59;
  if (v48 == v59)
  {
    LODWORD(v48) = v59;
LABEL_96:
    v21 = v93;
    v11 = v94;
    goto LABEL_97;
  }

  v77 = v59;
  v78 = v90;
  v80 = v93;
  v79 = v94;
  do
  {
    v81 = *(v57 + v77 * 4);
    v78[v77] = v81 - ltpf::Decoder::DirectFormLoop(this, v79, v80, v57 + v77 * 4, &v78[v77], v35);
    ++v78;
    v57 += 4;
    --v76;
  }

  while (v76);
  v11 = v79;
  a3 = v95;
  v21 = v80;
  a5 = v96;
LABEL_97:
  LODWORD(v29) = v91;
  if (v48)
  {
    memcpy(a5, v90, 4 * v48);
  }

LABEL_99:
  *(this + 30) = v35;
  *(this + 31) = v29;
  v82 = *(this + 4);
  if (v82)
  {
    memmove(*(this + 3), v11, 16 * v82);
  }

  v83 = *(this + 3);
  if (v83)
  {
    memmove(*(this + 6), v21, 16 * v83);
  }

  *(this + 128) = a3 != 0;
  result = *(this + 12);
  v85 = *(this + 13);
  v86 = (v85 - result) >> 2;
  v87 = *(this + 2);
  v88 = v86 - v87;
  if (v86 != v87)
  {
    result = memmove(result, (v85 - 4 * v88), 4 * v88);
    LODWORD(v87) = *(this + 2);
  }

  if (v87)
  {
    return memmove((*(this + 12) + 4 * v88), a5, 4 * v87);
  }

  return result;
}

void ltpf::Decoder::Process<(ltpf::Decoder::Flavor)0>(unsigned int *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float *a5, int a6, unsigned int a7)
{
  if (a7)
  {
    v12 = 1.0 / a7;
    v13 = a7;
    v14 = 0.0;
    v15 = a4;
    do
    {
      v16 = *v15++;
      *a5 = v16 - (v14 * ltpf::Decoder::DirectFormLoop(a1, a2, a3, a4, a5, a6));
      ++a5;
      v14 = v12 + v14;
      a4 = v15;
      --v13;
    }

    while (v13);
  }
}

void ltpf::Decoder::Process<(ltpf::Decoder::Flavor)2>(unsigned int *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float *a5, int a6, unsigned int a7)
{
  if (a7)
  {
    v12 = 1.0;
    v13 = 1.0 / a7;
    v14 = a7;
    v15 = a4;
    do
    {
      v16 = *v15++;
      *a5 = v16 - (v12 * ltpf::Decoder::DirectFormLoop(a1, a2, a3, a4, a5, a6));
      ++a5;
      v12 = v12 - v13;
      a4 = v15;
      --v14;
    }

    while (v14);
  }
}

float ltpf::Decoder::DirectFormLoop(unsigned int *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a1[4];
  v7 = vmulq_f32(*a2, *(a4 + 4 * (1 - 4 * v6)));
  if (v6 > 1)
  {
    v8 = -4 * v6;
    v9 = v6 - 1;
    v10 = (a4 + 4 * v8 + 20);
    v11 = a2 + 1;
    do
    {
      v12 = *v11++;
      v13 = v12;
      v14 = *v10++;
      v7 = vmlaq_f32(v7, v14, v13);
      --v9;
    }

    while (v9);
  }

  v15 = a1[3];
  if (v15 >= 1)
  {
    v16 = (a5 + 4 * (a1[5] - (a6 + 4 * v15)));
    do
    {
      v17 = *a3++;
      v18 = v17;
      v19 = *v16++;
      v7 = vmlsq_f32(v7, v19, v18);
      --v15;
    }

    while (v15);
  }

  return vaddv_f32(vadd_f32(*v7.f32, *&vextq_s8(v7, v7, 8uLL)));
}

uint64_t GetGlobalGain(const float *a1, int a2, int a3, float a4)
{
  v6 = a1;
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = (a2 >> 2);
  MEMORY[0x1EEE9AC00](a1);
  v9 = (v27 - v8);
  if (v10 >= 4)
  {
    memset(v27 - v8, 255, 4 * v7);
  }

  if (v7 >= 1)
  {
    v11 = v9;
    v12 = v7;
    do
    {
      v13 = *v6;
      v6 += 4;
      v14 = vmulq_f32(v13, v13);
      *v11++ = log10f((((v14.f32[0] + 4.6566e-10) + v14.f32[1]) + v14.f32[2]) + v14.f32[3]) * 10.0;
      --v12;
    }

    while (v12);
  }

  v15 = 0;
  v16 = 255;
  v17 = 256;
  do
  {
    v18 = v16 - (v17 >> 1);
    if (v7 < 1)
    {
      v21 = 1;
      v20 = 0.0;
    }

    else
    {
      v19 = (a3 + v18) / 1.4;
      v20 = 0.0;
      v21 = 1;
      v22 = &v9[v7 - 1];
      v23 = v7 + 1;
      do
      {
        if (*v22 >= v19)
        {
          v21 = 0;
          v24 = *v22 - v19;
          v25 = v20 + ((v24 + -18.0) * 2.0);
          v20 = v20 + (v24 + 7.0);
          if (v24 > 43.0)
          {
            v20 = v25;
          }
        }

        else if ((v21 & 1) == 0)
        {
          v20 = v20 + 2.7;
        }

        --v23;
        --v22;
      }

      while (v23 > 1);
    }

    v17 >>= 1;
    if ((v20 <= a4) | v21 & 1)
    {
      v16 = v18;
    }

    ++v15;
  }

  while (v15 != 8);
  return v16;
}

BOOL sqnt::SpectrumQuantizer::EstimateBits(int *a1, _WORD *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v6 = *a1;
  if (*a1 == 44100 || v6 == 48000)
  {
    v8 = 640;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 32000)
  {
    v9 = 480;
  }

  else
  {
    v9 = v8;
  }

  if (v6 == 24000)
  {
    v10 = 320;
  }

  else
  {
    v10 = 0;
  }

  if (v6 == 16000)
  {
    v11 = 160;
  }

  else
  {
    v11 = v10;
  }

  if (v6 <= 31999)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 + 160;
  v14 = v12 + 480;
  v15 = a1[3];
  while (1)
  {
    v16 = v15;
    v17 = v15;
    if (v17 < 3)
    {
      break;
    }

    if (!*(a4 - 4 + 4 * v17))
    {
      LOWORD(v15) = v15 - 2;
      if (!*(a4 + 4 * (v17 - 2)))
      {
        continue;
      }
    }

    *a2 = v16;
    *a5 = 2;
    goto LABEL_25;
  }

  *a2 = v15;
  *a5 = 2;
  if (v17 < 1)
  {
    v44 = 0.0;
    v45 = 0.0;
    v43 = 0.0;
    goto LABEL_64;
  }

LABEL_25:
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = &sqnt::gACLookup + 512 * (v13 < a3);
  v24 = a2[4] << 11;
  do
  {
    v25 = v18 > a1[3] >> 1;
    v26 = *(a4 + 4 * v18);
    v27 = vabs_s32(v26);
    v28 = v27.i32[0];
    v29 = v27.u32[1];
    if (v27.i32[0] <= v27.i32[1])
    {
      v30 = v27.u32[1];
    }

    else
    {
      v30 = v27.i32[0];
    }

    if (v30 <= 3)
    {
      v31 = 0;
      v32 = v22;
      v34 = v27.i32[1];
      v33 = v27.i32[0];
    }

    else
    {
      v31 = 0;
      v32 = v22;
      do
      {
        v19 += gACBits[17 * v23[1024 * v31 + 256 * v25 + v22] + 16];
        if (v31 == 0 && v14 <= a3)
        {
          v21 += 2;
        }

        else
        {
          v19 += 4096;
        }

        v27 = vshr_n_u32(v27, 1uLL);
        if (v31 >= 2)
        {
          v31 = 2;
        }

        ++v31;
        v33 = v27.i32[0];
        v34 = v27.i32[1];
        if (v27.i32[0] <= v27.i32[1])
        {
          v35 = v27.u32[1];
        }

        else
        {
          v35 = v27.i32[0];
        }
      }

      while (v35 > 3);
    }

    if (v26.i32[0])
    {
      v36 = (v26.i32[1] != 0) + 1;
    }

    else
    {
      v36 = v26.i32[1] != 0;
    }

    if (v31 >= 1 && v14 <= a3)
    {
      if (v26.i32[0])
      {
        v37 = v28 >= 2;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        ++v21;
      }

      v38 = v29 < 2 && v26.i32[1] != 0;
      v21 += v38;
    }

    v19 += (v36 << 11) + gACBits[17 * v23[1024 * v31 + 256 * v25 + v32] + v33 + 4 * v34];
    if (*&v26 && v19 <= v24)
    {
      *a5 = v18 + 2;
      v20 = v19;
    }

    v39 = v31 <= 1;
    v40 = v31 | 0xC;
    v41 = v33 + v34 + (v33 + v34) * v31;
    if (v39)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = v40;
    }

    v22 = v42 + 16 * v22;
    v18 += 2;
  }

  while (v18 < v17);
  v43 = v19;
  v44 = v21;
  v45 = v20;
LABEL_64:
  v46 = v14 <= a3;
  a2[1] = (ceilf(ldexpf(v43, -11)) + v44);
  a2[2] = vcvtps_s32_f32(ldexpf(v45, -11));
  return v46;
}

uint64_t lc3::Decoder::Decode(lc3::Decoder *this, const unsigned __int8 *a2, unsigned int a3, float **a4, int a5)
{
  v319 = a2;
  v368 = *MEMORY[0x1E69E9840];
  if (*(this + 12) != 1)
  {
    return 2;
  }

  v7 = this;
  v8 = *this;
  if (*(this + 1) == 1000)
  {
    v9 = v8 == 44100 ? 480 : v8 / 100;
  }

  else
  {
    v9 = v8 == 44100 ? 360 : 3 * v8 / 400;
  }

  if (v9 != a5)
  {
    return 2;
  }

  MEMORY[0x1EEE9AC00](this);
  v11 = &v287 - ((v10 + 15) & 0x7FFFFFFF0);
  if (v12)
  {
    memset(&v287 - ((v10 + 15) & 0x7FFFFFFF0), 170, v10);
  }

  LODWORD(v13) = *(v7 + 2);
  if (v13 < 1)
  {
    return 0;
  }

  v304 = &v287;
  v14 = 0;
  v15 = 0;
  v321 = v11;
  v322 = v342 + 2;
  v318 = (&v342[1] + 2);
  v317 = &v342[10];
  v314 = v333 + 2;
  v297 = &v343 + 8;
  v292 = &v342[11];
  v298 = &v336.i8[4];
  v299 = &v342[413];
  v296 = xmmword_19B0B3300;
  v295 = xmmword_19B0B3310;
  v294 = xmmword_19B0B20C0;
  v293 = xmmword_19B0A5860;
  v303 = xmmword_19B0B2430;
  v302 = xmmword_19B0B2440;
  v316 = a3;
  v320 = v7;
  v305 = a4;
  do
  {
    v16 = a3 / v13;
    v17 = *(*(v7 + 2) + 8 * v14);
    v18 = a4[v14];
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v333[2] = v19;
    *(v333 + 12) = 0xAAAAAAAAAAAAAAAALL;
    *(&v333[1] + 4) = v19;
    v331 = -21846;
    v330 = 0;
    *&v333[0] = 0;
    v332 = 0;
    *(v333 + 6) = 0;
    if (v14 < a3 % v13)
    {
      ++v16;
    }

    memset(&v333[1], 0, 30);
    v324 = v16;
    v325 = 8 * v16;
    v323 = v15;
    if (v16 - 401 < 0xFFFFFE83)
    {
      goto LABEL_63;
    }

    v20 = &v319[v15];
    memset(v342, 170, 0x670uLL);
    LOBYTE(v342[0]) = 0;
    *(v342 + 2) = 0;
    v21 = v317;
    v22 = v318;
    *v318 = xmmword_19B3A8230;
    v22[1] = unk_19B3A8240;
    bzero(v21, 0x645uLL);
    v23 = 0;
    v24 = 0;
    memset(&v342[412], 0, 404);
    v329 = 0xAAAAAAAAAAAAAAAALL;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v328 = v25;
    v327 = v25;
    v26 = *v17;
    v27 = v17[1];
    v326 = v20;
    LODWORD(v327) = v324;
    BYTE4(v327) = 1;
    HIDWORD(v327) = v324 - 1;
    DWORD1(v328) = 0xFFFFFF;
    do
    {
      v24 = v20[v23++] | (v24 << 8);
    }

    while (v23 != 3);
    LODWORD(v328) = v24;
    DWORD2(v327) = 3;
    *(&v328 + 1) = __PAIR64__(v27, v26);
    if (v27 == 1000)
    {
      if (v26 == 44100)
      {
        LODWORD(v329) = 400;
LABEL_33:
        v33 = 5;
        goto LABEL_34;
      }

      v31 = 1374389535 * v26;
      v29 = v31 >> 63;
      v30 = v31 >> 37;
    }

    else
    {
      if (v26 == 44100)
      {
        goto LABEL_27;
      }

      v28 = 4123168605 * v26;
      v29 = v28 >> 63;
      v30 = v28 >> 39;
    }

    v32 = v30 + v29;
    if (v32 != 480)
    {
      if (v32 != 360)
      {
        goto LABEL_29;
      }

LABEL_27:
      v32 = 300;
      goto LABEL_29;
    }

    v32 = 400;
LABEL_29:
    LODWORD(v329) = v32;
    v33 = 1;
    if (v26 <= 31999)
    {
      if (v26 == 16000)
      {
        v43 = (1717986919 * v325) >> 35;
        if (v43 >= 0x73)
        {
          LODWORD(v43) = 115;
        }

        v36 = -115 - v43;
        v40 = 1;
        goto LABEL_55;
      }

      if (v26 != 24000)
      {
        goto LABEL_34;
      }

      v39 = 3;
LABEL_48:
      v41 = 5 * v39;
      v42 = v325 / (2 * v41);
      if (v42 >= 0x73)
      {
        v42 = 115;
      }

      v36 = -105 - v41 - v42;
LABEL_51:
      v40 = 2;
      goto LABEL_55;
    }

    if (v26 == 32000)
    {
      v39 = 4;
      goto LABEL_48;
    }

    if (v26 == 44100 || v26 == 48000)
    {
      goto LABEL_33;
    }

LABEL_34:
    v34 = 5 * v33;
    v35 = v325 / (2 * v34);
    if (v35 >= 0x73)
    {
      v35 = 115;
    }

    v36 = -105 - v34 - v35;
    v37 = 4000;
    if (v26 <= 31999)
    {
      v38 = 24000;
LABEL_44:
      if (v26 != v38)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

    if (v26 != 48000 && v26 != 44100)
    {
      v38 = 32000;
      goto LABEL_44;
    }

    v40 = 3;
LABEL_55:
    UInt = BitReader::ReadUInt(&v326, v40);
    if (UInt >= 5)
    {
      LODWORD(v332) = 0;
      goto LABEL_62;
    }

    v37 = 4000 * UInt + 4000;
    v26 = DWORD2(v328);
LABEL_57:
    LODWORD(v315) = v36;
    LODWORD(v332) = v37;
    if (v37 > v26 >> 1)
    {
      goto LABEL_62;
    }

    v45 = log2f((v329 >> 1));
    v46 = BitReader::ReadUInt(&v326, vcvtps_s32_f32(v45));
    v330 = 2 * v46 + 2;
    if (v329 < v330)
    {
      goto LABEL_62;
    }

    v306 = 2 * v46;
    v47 = v326[SHIDWORD(v327)];
    v48 = BYTE4(v327);
    if (BYTE4(v327) == 128)
    {
      --HIDWORD(v327);
      v49 = 1;
    }

    else
    {
      v49 = 2 * BYTE4(v327);
    }

    v310 = (2 * v46 + 2);
    BYTE4(v327) = v49;
    v311 = v48 & v47;
    WORD2(v332) = (v48 & v47) != 0;
    v53 = BitReader::ReadUInt(&v326, 8);
    HIWORD(v332) = v53;
    if (v37 < 16000)
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    LOWORD(v333[0]) = v54;
    v55 = v326;
    if (v37 < 16000)
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    v57 = HIDWORD(v327);
    v58 = BYTE4(v327);
    v59 = v314;
    *&v313 = v56;
    do
    {
      v60 = v55[v57];
      if (v58 == 128)
      {
        HIDWORD(v327) = --v57;
        v61 = 1;
      }

      else
      {
        v61 = 2 * v58;
      }

      BYTE4(v327) = v61;
      *v59++ = (v58 & v60) != 0;
      v58 = v61;
      --v56;
    }

    while (v56);
    v62 = v55[v57];
    if (v61 == 128)
    {
      HIDWORD(v327) = v57 - 1;
      v63 = 1;
    }

    else
    {
      v63 = 2 * v61;
    }

    BYTE4(v327) = v63;
    v312 = v61 & v62;
    WORD4(v333[0]) = (v61 & v62) != 0;
    LODWORD(v333[1]) = BitReader::ReadUInt(&v326, 5);
    DWORD1(v333[1]) = BitReader::ReadUInt(&v326, 5);
    v64 = v326[SHIDWORD(v327)];
    v65 = BYTE4(v327);
    v309 = v37;
    if (BYTE4(v327) == 128)
    {
      --HIDWORD(v327);
      v66 = 1;
    }

    else
    {
      v66 = 2 * BYTE4(v327);
    }

    BYTE4(v327) = v66;
    v67 = v65 & v64;
    DWORD2(v333[1]) = (v65 & v64) != 0;
    if ((v65 & v64) != 0)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    v69 = BitReader::ReadUInt(&v326, v68);
    HIDWORD(v333[1]) = v69;
    v70 = v326[SHIDWORD(v327)];
    v71 = BYTE4(v327);
    if (BYTE4(v327) == 128)
    {
      --HIDWORD(v327);
      v72 = 1;
    }

    else
    {
      v72 = 2 * BYTE4(v327);
    }

    BYTE4(v327) = v72;
    v307 = (v71 & v70) != 0;
    v308 = v53;
    LODWORD(v333[2]) = v307;
    if (v67)
    {
      v73 = BitReader::ReadUInt(&v326, 12);
      v74 = v73 | (BitReader::ReadUInt(&v326, 12) << 12);
      *(&v333[2] + 4) = v74 | 0xFFFFFFFF00000000;
      if (v74 > 0xFEF1FF)
      {
        goto LABEL_62;
      }

      if (v74 < 0xE74C00)
      {
        v301 = v74;
        v75 = 0;
      }

      else
      {
        HIDWORD(v333[1]) = v73 & 1 | (2 * v69);
        v301 = (v74 - 15158272) >> 1;
        DWORD1(v333[2]) = v301;
        v75 = 1;
      }

      v79 = 2;
    }

    else
    {
      v76 = BitReader::ReadUInt(&v326, 13);
      v77 = v76 | (BitReader::ReadUInt(&v326, 12) << 13);
      if (v77 > 0x1FE8F57)
      {
        DWORD1(v333[2]) = 0;
        goto LABEL_62;
      }

      v78 = v77 / 0x2477F4;
      v301 = v77 % 0x2477F4;
      DWORD1(v333[2]) = v77 % 0x2477F4;
      v79 = 0;
      if (v77 > 0x48EFE7)
      {
        v75 = 0;
        DWORD2(v333[2]) = v78 - 2;
      }

      else
      {
        HIDWORD(v333[1]) = v78 + 2 * v69;
        v75 = 1;
      }
    }

    v80 = v312;
    v312 = v79 | v75;
    WORD6(v333[2]) = v79 | v75;
    WORD3(v333[0]) = 0;
    WORD5(v333[0]) = 0;
    if (v80)
    {
      v81 = v326[SHIDWORD(v327)];
      v82 = BYTE4(v327);
      if (BYTE4(v327) == 128)
      {
        --HIDWORD(v327);
        v83 = 1;
      }

      else
      {
        v83 = 2 * BYTE4(v327);
      }

      BYTE4(v327) = v83;
      WORD5(v333[0]) = (v82 & v81) != 0;
      WORD3(v333[0]) = BitReader::ReadUInt(&v326, 9);
    }

    v84 = 0;
    v300 = BitReader::ReadUInt(&v326, 3);
    WORD6(v333[0]) = v300;
    LOBYTE(v343) = 0;
    v85 = v342[0];
    v86 = v318;
    while (*&v314[2 * v84] < 1)
    {
LABEL_117:
      ++v84;
      ++v86;
      if (v84 == v313)
      {
        LOBYTE(v342[0]) = v85;
        v367 = 0u;
        v366 = 0u;
        v365 = 0u;
        v364 = 0u;
        v363 = 0u;
        v362 = 0u;
        v361 = 0u;
        v360 = 0u;
        v359 = 0u;
        v358 = 0u;
        v357 = 0u;
        v356 = 0u;
        v355 = 0u;
        v354 = 0u;
        v353 = 0u;
        v352 = 0u;
        v351 = 0u;
        v350 = 0u;
        v349 = 0u;
        v348 = 0u;
        v347 = 0u;
        v346 = 0u;
        v345 = 0u;
        v344 = 0u;
        v343 = 0u;
        v92 = 160;
        if (SDWORD2(v328) <= 31999)
        {
          a4 = v305;
          v93 = v310;
          if (DWORD2(v328) == 16000)
          {
            v92 = 320;
          }

          else if (DWORD2(v328) == 24000)
          {
            v92 = 480;
          }
        }

        else
        {
          a4 = v305;
          v93 = v310;
          if (DWORD2(v328) == 32000)
          {
            v92 = 640;
          }

          else if (DWORD2(v328) == 44100 || DWORD2(v328) == 48000)
          {
            v92 = 800;
          }
        }

        if (v93 >= 1)
        {
          v94 = 0;
          v95 = 0;
          v96 = &sqnt::gACLookup + 512 * (8 * v327 > v92);
          v287 = v93;
LABEL_131:
          v291 = 0;
          v97 = 0;
          v98 = &v317[v94];
          *v98 = 0;
          v289 = v98;
          v290 = v94 | 1;
          v288 = v94;
          *&v313 = &v96[256 * (v94 > v329 >> 1) + v95];
          while (1)
          {
            v99 = v95;
            v100 = v97;
            if (v97 >= 3u)
            {
              v100 = 3;
            }

            v101 = *(v313 + (v100 << 10));
            v336.i8[0] = 0;
            v102 = BitReader::ArithDecode(&v326, &sqnt::gACCumFreqBST[6 * v101], &v336);
            if (v336.u8[0] == 1)
            {
              goto LABEL_62;
            }

            if (v102 < 0x10)
            {
              if (v311)
              {
                *(&v343 + v288) = v97;
              }

              v111 = v291 + ((v102 & 3) << v97);
              v112 = v290;
              *v289 = v111;
              v113 = v317[v112] + (v102 >> 2 << v97);
              v317[v112] = v113;
              if (v111 >= 1)
              {
                v114 = v326[SHIDWORD(v327)];
                v115 = BYTE4(v327);
                if (BYTE4(v327) == 128)
                {
                  --HIDWORD(v327);
                  v116 = 1;
                }

                else
                {
                  v116 = 2 * BYTE4(v327);
                }

                BYTE4(v327) = v116;
                if ((v115 & v114) != 0)
                {
                  *v289 = -v111;
                }
              }

              if (v113 >= 1)
              {
                v117 = v326[SHIDWORD(v327)];
                v118 = BYTE4(v327);
                if (BYTE4(v327) == 128)
                {
                  --HIDWORD(v327);
                  v119 = 1;
                }

                else
                {
                  v119 = 2 * BYTE4(v327);
                }

                BYTE4(v327) = v119;
                if ((v118 & v117) != 0)
                {
                  v317[v290] = -v113;
                }
              }

              v120 = v97;
              if (v97 >= 3u)
              {
                v120 = 3;
              }

              if (v97 > 1)
              {
                v121 = v120 | 0xC;
              }

              else
              {
                v121 = (v102 >> 2) + (v102 & 3) + ((v102 >> 2) + (v102 & 3)) * v120 + 1;
              }

              if (DWORD2(v327) - HIDWORD(v327) > 3)
              {
                goto LABEL_62;
              }

              v95 = (v121 + 16 * v99);
              v94 = v288 + 2;
              v93 = v310;
              if (v288 + 2 < v287)
              {
                goto LABEL_131;
              }

              break;
            }

            if (v97 || !v311)
            {
              v103 = v326;
              v104 = HIDWORD(v327);
              v105 = SHIDWORD(v327);
              v106 = v326[SHIDWORD(v327)];
              v107 = BYTE4(v327);
              if (BYTE4(v327) == 128)
              {
                v105 = SHIDWORD(v327) - 1;
                --HIDWORD(v327);
                v108 = 1;
                --v104;
              }

              else
              {
                v108 = 2 * BYTE4(v327);
              }

              BYTE4(v327) = v108;
              v291 += ((v107 & v106) != 0) << v97;
              *v289 = v291;
              v109 = v103[v105];
              if (v108 == 128)
              {
                HIDWORD(v327) = v104 - 1;
                v110 = 1;
              }

              else
              {
                v110 = 2 * v108;
              }

              v95 = v99;
              BYTE4(v327) = v110;
              v317[v290] += ((v108 & v109) != 0) << v97;
            }

            else
            {
              v95 = v99;
            }

            if (++v97 == 14)
            {
              goto LABEL_62;
            }
          }
        }

        v122 = v329;
        if (v329 - v93 >= 1)
        {
          bzero(&v317[v93], 4 * (v329 - v93 - 1) + 4);
        }

        v123 = BYTE4(v327);
        v124 = HIDWORD(v327);
        v125 = __clz(BYTE4(v327)) + 8 * HIDWORD(v327) - (__clz(DWORD1(v328)) + 8 * DWORD2(v327)) + 7;
        v342[412] = v125;
        if (v125 < 0)
        {
          goto LABEL_62;
        }

        if (v311)
        {
          v126 = v308;
          v127 = v309;
          if (v310 >= 1)
          {
            v128 = 0;
            v129 = v326;
            v130 = v310;
            v131 = v292;
            while (1)
            {
              if (*(&v343 + v128))
              {
                v132 = v342[412];
                if (!v342[412])
                {
                  goto LABEL_221;
                }

                v133 = v129[v124];
                if (v123 == 128)
                {
                  HIDWORD(v327) = --v124;
                  v134 = 1;
                }

                else
                {
                  v134 = 2 * v123;
                }

                BYTE4(v327) = v134;
                v135 = --v342[412];
                if ((v123 & v133) != 0)
                {
                  v136 = *(v131 - 1);
                  v137 = v136 - 1;
                  if (v136 < 1)
                  {
                    if ((v136 & 0x80000000) == 0)
                    {
                      if (!v135)
                      {
                        goto LABEL_221;
                      }

                      v138 = v129[v124];
                      if (v134 == 128)
                      {
                        HIDWORD(v327) = --v124;
                        v139 = 1;
                      }

                      else
                      {
                        v139 = 2 * v134;
                      }

                      BYTE4(v327) = v139;
                      v342[412] = v132 - 2;
                      if ((v134 & v138) != 0)
                      {
                        v137 = -1;
                      }

                      else
                      {
                        v137 = 1;
                      }

                      v134 = v139;
                    }
                  }

                  else
                  {
                    v137 = v136 + 1;
                  }

                  *(v131 - 1) = v137;
                  v135 = v342[412];
                }

                if (!v135)
                {
                  goto LABEL_221;
                }

                v140 = v129[v124];
                if (v134 == 128)
                {
                  HIDWORD(v327) = --v124;
                  v123 = 1;
                }

                else
                {
                  v123 = 2 * v134;
                }

                BYTE4(v327) = v123;
                v342[412] = v135 - 1;
                if ((v134 & v140) != 0)
                {
                  v141 = *v131;
                  v142 = *v131 - 1;
                  if (*v131 < 1)
                  {
                    if ((v141 & 0x80000000) == 0)
                    {
                      if (v135 == 1)
                      {
                        goto LABEL_221;
                      }

                      v143 = v129[v124];
                      if (v123 == 128)
                      {
                        HIDWORD(v327) = --v124;
                        v144 = 1;
                      }

                      else
                      {
                        v144 = 2 * v123;
                      }

                      BYTE4(v327) = v144;
                      v342[412] = v135 - 2;
                      if ((v123 & v143) != 0)
                      {
                        v142 = -1;
                      }

                      else
                      {
                        v142 = 1;
                      }

                      v123 = v144;
                    }
                  }

                  else
                  {
                    v142 = v141 + 1;
                  }

                  *v131 = v142;
                }
              }

              v128 += 2;
              v131 += 2;
              if (v128 >= v130)
              {
                goto LABEL_221;
              }
            }
          }

          goto LABEL_221;
        }

        v126 = v308;
        v127 = v309;
        if (v122 < 1)
        {
          goto LABEL_227;
        }

        v145 = 0;
        v146 = 0;
        v147 = v326;
        do
        {
          if (v317[v145])
          {
            if (v146 == v125)
            {
              break;
            }

            v148 = v147[v124];
            if (v123 == 128)
            {
              HIDWORD(v327) = --v124;
              v149 = 1;
            }

            else
            {
              v149 = 2 * v123;
            }

            BYTE4(v327) = v149;
            *(v299 + v146++) = (v123 & v148) != 0;
            v123 = v149;
          }

          ++v145;
        }

        while (v145 < v122);
LABEL_221:
        if (v122 < 1)
        {
LABEL_227:
          v153 = 0;
        }

        else
        {
          v150 = 0;
          v151 = 0;
          do
          {
            v152 = v317[v150];
            if (v152 < 0)
            {
              v152 = -v152;
            }

            v151 += v152 * v150++;
          }

          while (v122 != v150);
          v153 = v151;
        }

        v342[410] = v153;
        v154 = v317;
        v155 = !v306 && !v342[10] && !v342[11] && !v126 && v300 == 7;
        LOBYTE(v342[411]) = v155;
        v156 = v17[3];
        v157 = v18;
        v158 = v156;
        if (v156)
        {
          do
          {
            v159 = *v154++;
            *v157++ = v159;
            --v158;
          }

          while (v158);
        }

        if (!v311)
        {
          if (v156)
          {
            v175 = v342[412];
            if (v342[412])
            {
              v176 = 0;
              v177 = 0;
              do
              {
                if (v317[v176])
                {
                  v178 = *(v299 + v177++);
                  v179 = *(&v18->realp + v176);
                  if (v179 <= 0.0)
                  {
                    v180 = 0.1875;
                  }

                  else
                  {
                    v180 = 0.3125;
                  }

                  if (v179 <= 0.0)
                  {
                    v181 = -0.3125;
                  }

                  else
                  {
                    v181 = -0.1875;
                  }

                  if (!v178)
                  {
                    v180 = v181;
                  }

                  *(&v18->realp + v176) = v179 + v180;
                }

                ++v176;
              }

              while (v176 < v156 && v177 < v175);
            }
          }
        }

        if (!v155)
        {
          v160 = 0;
          v161 = v17[1];
          v162 = v297;
          *&v163 = 0xAAAAAAAAAAAAAAAALL;
          *(&v163 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *(v297 + 23) = v163;
          v162[24] = v163;
          v162[21] = v163;
          v162[22] = v163;
          v162[19] = v163;
          v162[20] = v163;
          v162[17] = v163;
          v162[18] = v163;
          v162[15] = v163;
          v162[16] = v163;
          v162[13] = v163;
          v162[14] = v163;
          v162[11] = v163;
          v162[12] = v163;
          v162[9] = v163;
          v162[10] = v163;
          v162[7] = v163;
          v162[8] = v163;
          v162[5] = v163;
          v162[6] = v163;
          v162[3] = v163;
          v162[4] = v163;
          if (v161 == 1000)
          {
            v164 = 20;
          }

          else
          {
            v164 = 15;
          }

          v162[1] = v163;
          v162[2] = v163;
          v165 = (v127 / 1000 * v164);
          v166 = 16;
          if (v161 == 1000)
          {
            v166 = 21;
          }

          v167 = 27;
          if (v161 != 1000)
          {
            v167 = 20;
          }

          *v162 = v163;
          do
          {
            if (*(&v18->realp + v166) == 0.0)
            {
              ++v160;
            }

            else
            {
              v160 = 0;
            }

            ++v166;
          }

          while (v166 < v167);
          if (v161 == 1000)
          {
            v168 = 24;
          }

          else
          {
            v168 = 18;
          }

          if (v161 == 1000)
          {
            v169 = -3;
          }

          else
          {
            v169 = -2;
          }

          if (v161 == 1000)
          {
            v170 = 3;
          }

          else
          {
            v170 = 2;
          }

          v171 = 2 * v170;
          v172 = v165 - v170;
          if (v168 >= v172)
          {
            v174 = v168;
          }

          else
          {
            v173 = v18 + 4 * v170;
            v174 = v168;
            do
            {
              if (*&v173[4 * v168] == 0.0)
              {
                ++v160;
              }

              else
              {
                v160 = 0;
              }

              *(v162 + v168++) = v160 > v171;
            }

            while (v168 < v172);
          }

          v182 = 0;
          v183 = v169 + v165;
          v184 = v165;
          if (v183 + 1 > v165)
          {
            v184 = v183 + 1;
          }

          v185 = vdupq_n_s32(v160);
          v186 = v184 - v183;
          v187 = vaddq_s32(v185, v296);
          v188 = vaddq_s32(v185, v295);
          v189 = vaddq_s32(v185, v294);
          v190 = vaddq_s32(v185, v293);
          v191 = vdupq_n_s64(v186 - 1);
          v192 = &v343 + v183 + 11;
          do
          {
            v193 = vdupq_n_s64(v182);
            v194 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_19B0A5850)));
            v195.i64[0] = 0x100000001;
            v195.i64[1] = 0x100000001;
            v196 = vaddq_s32(v190, v195);
            if (vuzp1_s8(vuzp1_s16(v194, *v187.i8), *v187.i8).u8[0])
            {
              v192[v182 - 3] = v196.i32[0] > v171;
            }

            if (vuzp1_s8(vuzp1_s16(v194, *&v187), *&v187).i8[1])
            {
              v192[v182 - 2] = v196.i32[1] > v171;
            }

            if (vuzp1_s8(vuzp1_s16(*&v187, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_19B0A5840)))), *&v187).i8[2])
            {
              v192[v182 - 1] = v196.i32[2] > v171;
              v192[v182] = v196.i32[3] > v171;
            }

            v197.i64[0] = 0x100000001;
            v197.i64[1] = 0x100000001;
            v198 = vaddq_s32(v189, v197);
            v199 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_19B0B23A0)));
            if (vuzp1_s8(*&v187, vuzp1_s16(v199, *&v187)).i32[1])
            {
              v192[v182 + 1] = v198.i32[0] > v171;
            }

            if (vuzp1_s8(*&v187, vuzp1_s16(v199, *&v187)).i8[5])
            {
              v192[v182 + 2] = v198.i32[1] > v171;
            }

            if (vuzp1_s8(*&v187, vuzp1_s16(*&v187, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_19B0B2390))))).i8[6])
            {
              v192[v182 + 3] = v198.i32[2] > v171;
              v192[v182 + 4] = v198.i32[3] > v171;
            }

            v200.i64[0] = 0x100000001;
            v200.i64[1] = 0x100000001;
            v201 = vaddq_s32(v188, v200);
            v202 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_19B0B2460)));
            if (vuzp1_s8(vuzp1_s16(v202, *v187.i8), *v187.i8).u8[0])
            {
              v192[v182 + 5] = v201.i32[0] > v171;
            }

            if (vuzp1_s8(vuzp1_s16(v202, *&v187), *&v187).i8[1])
            {
              v192[v182 + 6] = v201.i32[1] > v171;
            }

            if (vuzp1_s8(vuzp1_s16(*&v187, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_19B0B2450)))), *&v187).i8[2])
            {
              v192[v182 + 7] = v201.i32[2] > v171;
              v192[v182 + 8] = v201.i32[3] > v171;
            }

            v203.i64[0] = 0x100000001;
            v203.i64[1] = 0x100000001;
            v204 = vaddq_s32(v187, v203);
            v205 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, v302)));
            if (vuzp1_s8(*&v187, vuzp1_s16(v205, *&v187)).i32[1])
            {
              v192[v182 + 9] = v204.i32[0] > v171;
            }

            if (vuzp1_s8(*&v187, vuzp1_s16(v205, *&v187)).i8[5])
            {
              v192[v182 + 10] = v204.i32[1] > v171;
            }

            if (vuzp1_s8(*&v187, vuzp1_s16(*&v187, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, v303))))).i8[6])
            {
              v192[v182 + 11] = v204.i32[2] > v171;
              v192[v182 + 12] = v204.i32[3] > v171;
            }

            v182 += 16;
            v206.i64[0] = 0x1000000010;
            v206.i64[1] = 0x1000000010;
            v190 = vaddq_s32(v190, v206);
            v189 = vaddq_s32(v189, v206);
            v188 = vaddq_s32(v188, v206);
            v187 = vaddq_s32(v187, v206);
          }

          while (((v186 + 15) & 0xFFFFFFFFFFFFFFF0) != v182);
          v207 = ldexpf(8.0 - v300, -4);
          v126 = v308;
          if (v174 < v165)
          {
            v208 = v342[410];
            v209 = v18 + v174;
            v210 = v165 - v174;
            v211 = v162 + v174;
            do
            {
              v212 = *v211++;
              if (v212 == 1)
              {
                v208 = (31821 * v153 + 13849);
                if (((31821 * v153 + 13849) & 0x8000) != 0)
                {
                  v213 = -v207;
                }

                else
                {
                  v213 = v207;
                }

                *v209 = v213;
                LOWORD(v153) = 31821 * v153 + 13849;
              }

              ++v209;
              --v210;
            }

            while (v210);
            v342[410] = v208;
          }

          v127 = v309;
        }

        v214 = v127 < 16000;
        LODWORD(v343) = __exp10f((v315 + v126) / 28.0);
        MEMORY[0x19EAE6090](v18, 1, &v343, v18, 1, v156);
        v215 = 0;
        v311 = v17[1];
        v216 = 1;
        if (!v214)
        {
          v216 = 2;
        }

        *&v315 = v216;
        *&v217 = -1;
        *(&v217 + 1) = -1;
        v346 = v217;
        v345 = v217;
        v218 = v318;
        v344 = v217;
        v343 = v217;
        do
        {
          v219 = *&v322[2 * v215];
          v336 = 0u;
          v337 = 0u;
          if (v219)
          {
            v220 = v219;
            v221 = &v336;
            v222 = v218;
            do
            {
              v223 = *v222++;
              *v221++ = sinf((v223 + -8.0) * 0.1848);
              --v220;
            }

            while (v220);
          }

          v224 = (&v343 + 2 * v215);
          v225 = v337;
          *v224 = v336;
          v224[1] = v225;
          ++v215;
          v218 += 8;
        }

        while (v215 != v315);
        if (v309 <= 15999)
        {
          v345 = 0u;
          v346 = 0u;
        }

        v226 = v311;
        v227 = v309;
        StartFreqs = tns::GetStartFreqs(v311, v309);
        StopFreqs = tns::GetStopFreqs(v226, v227);
        v230 = StartFreqs;
        v231 = 0;
        v336 = 0u;
        v337 = 0u;
        v232 = &v343;
        a4 = v305;
        a3 = v316;
        v233 = v322;
        v234 = v298;
        v235 = v312;
        do
        {
          v236 = *&v233[2 * v231];
          LODWORD(v237) = *&v230[4 * v231];
          v238 = *&StopFreqs[4 * v231];
          v239 = (v236 - 1);
          if (v236 >= 1 && v237 < v238)
          {
            v237 = v237;
            v241 = -*(&v343 + 8 * v231 + v239);
            do
            {
              v242 = *(&v18->realp + v237) + (v241 * v336.f32[v239]);
              v243 = v232 + (v236 - 2);
              v244 = &v234[4 * (v236 - 2)];
              v245 = v236 - 1;
              if (v236 >= 2)
              {
                do
                {
                  v246 = *v243--;
                  v247 = *(v244 - 1);
                  v242 = v242 - (v246 * v247);
                  *v244-- = v247 + (v246 * v242);
                  v248 = __OFSUB__(v245--, 1);
                }

                while (!((v245 < 0) ^ v248 | (v245 == 0)));
              }

              *(&v18->realp + v237) = v242;
              v336.f32[0] = v242;
              ++v237;
            }

            while (v238 > v237);
          }

          ++v231;
          v232 += 2;
        }

        while (v231 != v315);
        LODWORD(v310) = *v17;
        v340 = 0u;
        v341 = 0u;
        if (v235 > 1)
        {
          v249 = v301;
          v251 = &v340;
          v252 = 16;
          if (v235 == 2)
          {
            v253 = 8;
          }

          else
          {
            v253 = 6;
          }

          v250 = v307;
LABEL_350:
          MPVQdeenum(v252, v253, v250, v249, v251->i16);
        }

        else
        {
          if (!v235)
          {
            MPVQdeenum(10, 10, v307, v301, v340.i16);
            v249 = SDWORD2(v333[2]) >> 1;
            v250 = BYTE8(v333[2]) & 1;
            v251 = (v341.i64 + 4);
            v252 = 6;
            v253 = 1;
            goto LABEL_350;
          }

          MPVQdeenum(10, 10, v307, v301, v340.i16);
          v341.i32[3] = 0;
          *(v341.i64 + 4) = 0;
        }

        v254 = 1.0 / sqrtf(vaddvq_s32(vaddq_s32(vmlal_s16(vmull_s16(*v341.i8, *v341.i8), *v340.i8, *v340.i8), vmlal_high_s16(vmull_high_s16(v341, v341), v340, v340))));
        v336 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v340.i8)), v254);
        v337 = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v340)), v254);
        v338 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v341.i8)), v254);
        v339 = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v341)), v254);
        v255 = (&sns::gLFCB + 32 * LODWORD(v333[1]));
        v257 = *v255;
        v256 = v255[1];
        v258 = &sns::gHFCB[2 * DWORD1(v333[1])];
        v259 = v258[1];
        v345 = *v258;
        v346 = v259;
        v335[0] = v257;
        v335[1] = v256;
        v335[2] = v345;
        v335[3] = v259;
        if (v235 > 1)
        {
          if (v235 == 2)
          {
            v260 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gNearAdjGains;
          }

          else
          {
            v260 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gFarAdjGains;
          }
        }

        else if (v235)
        {
          v260 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gRegLFAdjGains;
        }

        else
        {
          v260 = &sns::GetAdjustmentGain(unsigned int,unsigned int)::gRegAdjGains;
        }

        v261 = 0;
        v262 = *&v260[HIDWORD(v333[1])];
        *&v263 = -1;
        *(&v263 + 1) = -1;
        v334[2] = v263;
        v334[3] = v263;
        v264 = &sns::gDCTMatrix;
        v334[0] = v263;
        v334[1] = v263;
        do
        {
          v265 = 0;
          v266 = 0uLL;
          do
          {
            v266 = vmlaq_f32(v266, *(&v336 + v265), *&v264[v265]);
            v265 += 16;
          }

          while (v265 != 64);
          *&v263 = *(v335 + v261) + (v262 * vaddv_f32(vadd_f32(*v266.f32, *&vextq_s8(v266, v266, 8uLL))));
          *(v334 + v261++) = v263;
          v264 += 64;
        }

        while (v261 != 16);
        v267 = v311 == 750;
        *&v268 = -1;
        *(&v268 + 1) = -1;
        v358 = v268;
        v357 = v268;
        v269 = v310 == 8000;
        v270 = v269 && v267;
        if (v269 && v267)
        {
          v271 = 60;
        }

        else
        {
          v271 = 64;
        }

        v356 = v268;
        v355 = v268;
        v354 = v268;
        v353 = v268;
        v352 = v268;
        v351 = v268;
        v350 = v268;
        v349 = v268;
        v348 = v268;
        v347 = v268;
        v346 = v268;
        v345 = v268;
        v344 = v268;
        v343 = v268;
        sns::InterpolateScaleFactors(&v343, v334, v271, *&v268, *&v263);
        for (i = 0; i != 256; i += 8)
        {
          *&v272 = *(&v343 + i);
          v313 = v272;
          *&v274 = exp2f(*(&v272 + 1));
          v315 = v274;
          *&v272 = exp2f(*&v313);
          DWORD1(v272) = v315;
          *(&v343 + i) = v272;
        }

        Indices = band::GetIndices(v310, v311);
        v276 = 0;
        v277 = 64;
        if (v270)
        {
          v277 = 60;
        }

        while (v276 != v277)
        {
          v278 = v276;
          v279 = Indices[v276++];
          v280 = Indices[v276];
          if (v279 < v280)
          {
            v281 = *(&v343 + v278);
            v282 = v280 - v279;
            v283 = v18 + v279;
            do
            {
              *v283 = v281 * *v283;
              ++v283;
              --v282;
            }

            while (v282);
          }
        }

        v52 = 0;
        v51 = WORD5(v333[0]);
        goto LABEL_66;
      }
    }

    if (HIDWORD(v328) == 1000)
    {
      v87 = 480;
    }

    else
    {
      v87 = 360;
    }

    v85 = v87 > 8 * v327;
    v88 = BitReader::ArithDecode(&v326, &tns::gACOrderCumFreqBST[6 * v85], &v343);
    v89 = v322;
    *&v322[2 * v84] = v88;
    if ((v343 & 1) == 0)
    {
      v90 = 0;
      *&v89[2 * v84] = v88 + 1;
      v91 = &tns::gACCoefCumFreqBST;
      while (1)
      {
        *(v86 + v90) = BitReader::ArithDecode(&v326, v91, &v343);
        if (v343)
        {
          break;
        }

        ++v90;
        v91 += 6;
        if (v90 >= *&v322[2 * v84])
        {
          goto LABEL_117;
        }
      }
    }

    LOBYTE(v342[0]) = v85;
    a4 = v305;
LABEL_62:
    a3 = v316;
LABEL_63:
    v50 = v17[58];
    if (v50)
    {
      bzero(v18, 4 * v50);
    }

    v51 = 0;
    v52 = 1;
LABEL_66:
    mdct::SynthesisFilterbank::FrequencyToTime((v17 + 4), v18);
    ltpf::Decoder::Apply((v17 + 24), SWORD3(v333[0]), v51, v325, v18);
    vDSP_vclip(v18, 1, ClipAndScale(unsigned int,float *)::kClipThreshold, &ClipAndScale(unsigned int,float *)::kClipThreshold[1], v18, 1, v17[2]);
    v342[0] = 939524096;
    MEMORY[0x19EAE6090](v18, 1, v342, v18, 1, v17[2]);
    v321[v14] = v52;
    v15 = v324 + v323;
    ++v14;
    v7 = v320;
    v13 = v320[2];
  }

  while (v14 < v13);
  if (v13 < 1)
  {
    return 0;
  }

  v285 = v321;
  while (1)
  {
    v286 = *v285++;
    result = v286;
    if (v286)
    {
      break;
    }

    if (!--v13)
    {
      return 0;
    }
  }

  return result;
}

float sns::InterpolateScaleFactors(uint64_t a1, uint64_t a2, unsigned int a3, double a4, double a5)
{
  v5 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v6.i32[1] = 1052770304;
  LODWORD(a5) = *a2;
  *a1 = *a2;
  *(a1 + 4) = LODWORD(a5);
  do
  {
    v7 = *(a2 + 4 + 4 * v5);
    *(a1 + 8 + 16 * v5) = vmlaq_n_f32(vdupq_lane_s32(*&a5, 0), xmmword_19B0B3330, v7 - *&a5);
    *&a5 = v7;
    ++v5;
  }

  while (v5 != 15);
  v6.i32[0] = *(a2 + 60);
  v8 = vdup_lane_s32(v6, 0);
  *v6.i32 = *v6.i32 - *(a2 + 56);
  *(a1 + 248) = vmla_n_f32(v8, 0x3EC000003E000000, *v6.i32);
  if (a3 <= 0x3F)
  {
    v9 = 64 - a3;
    v10 = (a1 + 4);
    v11 = a1;
    v12 = 64 - a3;
    do
    {
      *v11++ = (*(v10 - 1) + *v10) * 0.5;
      v10 += 2;
      --v12;
    }

    while (v12);
    LODWORD(v13) = a3 - v9;
    v14 = 2 * v9;
    if (a3 - v9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v13;
    }

    do
    {
      v6.i32[0] = *(a1 + 4 * v14);
      *(a1 + 4 * v9++) = v6.i32[0];
      ++v14;
      --v13;
    }

    while (v13);
  }

  return *v6.i32;
}

void *ltpf::Encoder::PreProcessor::PreProcess(vDSP_biquadm_Setup *this, const float *a2, float *a3)
{
  __Y[1] = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  MEMORY[0x1EEE9AC00](this);
  v9 = __Y - v8;
  if (v7)
  {
    memset(__Y - v8, 255, 4 * v7);
  }

  if (v6)
  {
    v10 = this[6];
    memmove(v9, v10, 4 * v6);
    memcpy(&v9[4 * v6], a2, 4 * v6);
    memmove(v10, a2, 4 * v6);
    v11 = *(this + 2);
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 3))
  {
    v12 = 0;
    v13 = 0;
    v14 = &v9[4 * v11 + 4];
    v15 = a3;
    do
    {
      vDSP_dotpr(this[3] + 2 * *(this + 5) * (v12 % *(this + 4)), 1, (v14 + 4 * (v12 / *(this + 4) - 2 * *(this + 5))), 1, v15, 2 * *(this + 5));
      ++v13;
      v16 = *(this + 3);
      ++v15;
      v12 += 15;
    }

    while (v13 < v16);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 4);
  if (*this == 8000)
  {
    v17 = v17 * 0.5;
  }

  *__Y = v17;
  MEMORY[0x19EAE6090](a3, 1, __Y, a3, 1, v16);
  __Y[0] = a3;
  vDSP_biquadm(this[4], __Y, 1, __Y, 1, *(this + 10));
  if (*(this + 1) == 1000)
  {
    v19 = 24;
  }

  else
  {
    v19 = 44;
  }

  MEMORY[0x1EEE9AC00](v18);
  v20 = this[9];
  memcpy(&__Y[v19 / 0xFFFFFFFFFFFFFFFELL], v20, 4 * v19);
  memmove(v20, &a3[(*(this + 3) - v19)], 4 * v19);
  if (*(this + 3) - v19 != -2)
  {
    memmove(&a3[v19], a3, 4 * (*(this + 3) - v19 + 2));
  }

  return memcpy(a3, &__Y[v19 / 0xFFFFFFFFFFFFFFFELL], 4 * v19);
}

void *ltpf::Encoder::PitchAnalyzer::Downsampler::Process(ltpf::Encoder::PitchAnalyzer::Downsampler *this, const float *a2, float *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = *this;
  MEMORY[0x1EEE9AC00](this);
  v9 = v23 - v8;
  if (!v7)
  {
    *v9 = *(this + 4);
    *(v9 + 2) = *(this + 3);
    result = memcpy(v9 + 12, a2, 0x3FFFFFFF4uLL);
    v16 = &a2[(v6 - 3)];
    v17 = *(v16 + 2);
    *(this + 4) = *v16;
    *(this + 3) = v17;
LABEL_9:
    v18 = v6 >> 1;
    v19 = (v9 + 16);
    do
    {
      v20 = vmulq_f32(*(v19 - 4), xmmword_19B0B3340);
      v21 = *v19;
      v19 += 2;
      *a3++ = vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))) + (v21 * 0.12368);
      --v18;
    }

    while (v18);
    return result;
  }

  if (v7 >= 4)
  {
    v10 = 4 * v7 - 12;
  }

  else
  {
    v10 = 0;
  }

  result = memset(v9 + 12, 255, v10);
  v13 = *(this + 4);
  v12 = this + 4;
  *v9 = v13;
  *(v9 + 2) = *(v12 + 2);
  if (!v6)
  {
    v22 = *(a2 + 4294967293);
    *(v12 + 2) = a2[0xFFFFFFFFLL];
    *v12 = v22;
    return result;
  }

  result = memcpy(v9 + 12, a2, 4 * v6);
  v14 = &a2[(v6 - 3)];
  v15 = *(v14 + 2);
  *v12 = *v14;
  *(v12 + 2) = v15;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  return result;
}

void ltpf::Encoder::PitchAnalyzer::Analyze(ltpf::Encoder::PitchAnalyzer *this, const float *a2, const float *a3)
{
  __I[1] = *MEMORY[0x1E69E9840];
  v6 = (a2 + 1);
  v7 = *a2 >> 1;
  MEMORY[0x1EEE9AC00](this);
  v9 = (v29 - ((v8 + 471) & 0x3FFFFFFF0));
  v10 = v9 + 114;
  if (v11 >= 2)
  {
    v12 = 4 * (v7 + 113) - 452;
  }

  else
  {
    v12 = 0;
  }

  memset(v9 + 114, 255, v12);
  memcpy(v9, a2 + 5, 0x1C8uLL);
  ltpf::Encoder::PitchAnalyzer::Downsampler::Process(v6, a3, v9 + 114);
  memcpy((a2 + 5), &v9[v7], 0x1C8uLL);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *&v31[12] = v13;
  v30[26] = v13;
  *v31 = v13;
  v30[24] = v13;
  v30[25] = v13;
  v30[22] = v13;
  v30[23] = v13;
  v30[20] = v13;
  v30[21] = v13;
  v30[18] = v13;
  v30[19] = v13;
  v30[16] = v13;
  v30[17] = v13;
  v30[14] = v13;
  v30[15] = v13;
  v30[12] = v13;
  v30[13] = v13;
  v30[10] = v13;
  v30[11] = v13;
  v30[8] = v13;
  v30[9] = v13;
  v30[6] = v13;
  v30[7] = v13;
  v30[4] = v13;
  v30[5] = v13;
  v30[2] = v13;
  v30[3] = v13;
  v30[0] = v13;
  v30[1] = v13;
  vDSP_conv(v9, 1, v9 + 114, 1, v30, 1, 0x73uLL, v7);
  v14 = &v31[24];
  v15 = v30 + 4;
  do
  {
    v16 = *(v15 - 1);
    *(v15 - 1) = *v14;
    *v14 = v16;
    v14 -= 4;
    v17 = v15 >= v14;
    v15 += 4;
  }

  while (!v17);
  v18 = 1.0;
  memset(v29, 0, 460);
  for (i = 17; i != 115; ++i)
  {
    v29[i] = v18 * *(v30 + i * 4);
    v18 = v18 + -0.0051546;
  }

  *(this + 1) = -21846;
  __I[0] = 0xAAAAAAAAAAAAAAAALL;
  __C = NAN;
  vDSP_maxvi(&v29[17], 1, &__C, __I, 0x62uLL);
  v20 = LOWORD(__I[0]) + 17;
  *(this + 4) = LOWORD(__I[0]) + 17;
  v21 = normcorr(v9 + 114, &v10[-v20], v7);
  *(this + 3) = v21;
  v22 = *(a2 + 119);
  if (v22 <= 21)
  {
    v23 = 21;
  }

  else
  {
    v23 = *(a2 + 119);
  }

  v24 = v23 - 4;
  if (v22 >= 110)
  {
    v22 = 110;
  }

  __I[0] = 0xAAAAAAAAAAAAAAAALL;
  __C = NAN;
  vDSP_maxvi(v30 + v24, 1, &__C, __I, v22 - v23 + 9);
  v25 = v24 + LOWORD(__I[0]);
  *(this + 5) = v24 + LOWORD(__I[0]);
  v26 = normcorr(v10, &v10[-v25], v7);
  *(this + 4) = v26;
  v27 = 8;
  if (v26 <= (v21 * 0.85))
  {
    v26 = v21;
  }

  else
  {
    v27 = 10;
  }

  v28 = *(this + v27);
  *this = v28;
  *(this + 1) = v26;
  *(a2 + 119) = v28;
}