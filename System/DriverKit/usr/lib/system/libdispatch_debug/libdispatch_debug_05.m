BOOL voucher_activity_should_send_strings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v9 = 1;
  if (_firehose_task_buffer)
  {
    v9 = *(_firehose_task_buffer + 1680) == -1;
  }

  return !v9 && firehose_buffer_should_send_strings(_firehose_task_buffer, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t voucher_activity_get_metadata_buffer(void *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v2 = 1;
  if (_firehose_task_buffer)
  {
    v2 = *(_firehose_task_buffer + 1680) == -1;
  }

  if (v2)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    v3 = _firehose_task_buffer;
    *a1 = 2048;
    return v3 + 4096 - *a1;
  }
}

void *voucher_activity_create_with_data_2(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v65 = a1;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  v61 = a5;
  v60 = a6;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v56 = *a1;
  v55 = 0;
  v53 = _dispatch_thread_getspecific(28);
  v51 = (v60 & 1) == 0;
  v13 = v61 + 8;
  v14 = v61 >= 0xFFFFFFFFFFFFFFF8;
  if (((v61 + 8) & 0xFFFFFFFFFFFF0000) != 0)
  {
    v14 = 1;
  }

  v54 = v61 + 8;
  v100 = v14;
  if (v14 || v13 >= 0x81u)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Absurd publen";
    qword_E42C0 = v13;
    __break(1u);
    JUMPOUT(0x93320);
  }

  if (v64 == -3)
  {
    v64 = v53;
  }

  WORD1(v56) &= ~0x10u;
  if (v53)
  {
    v58 = *(v53 + 48);
    if (v58)
    {
      WORD1(v56) |= 1u;
      v54 = v61 + 16;
      v55 = *(v53 + 56);
      if (v55)
      {
        WORD1(v56) |= 0x10u;
        v54 = v61 + 24;
      }
    }
  }

  if (v64)
  {
    v57 = *(v64 + 48);
  }

  if (v57)
  {
    WORD1(v56) |= 0x200u;
    v54 += 8;
    v63 |= HIBYTE(v57);
  }

  if ((MEMORY[0xFFFFFC104] & 0x80) == 0)
  {
    v63 |= 0x80uLL;
  }

  v71 = v64;
  v70 = 2;
  v69 = 0;
  v68 = 0;
  if (v64)
  {
    v69 = 0;
  }

  v68 = _voucher_alloc(v69, v6, v7, v8, v9, v10, v11, v12);
  if (v71)
  {
    v67 = ~v70;
    if (*(v71 + 32))
    {
      if (*(v71 + 40))
      {
        v46 = *(v71 + 40);
      }

      else
      {
        v46 = v71;
      }

      v66 = v46;
      object = v46;
      os_retain(v46);
      v68[5] = v46;
      *(v68 + 8) = v66[8];
      *(v68 + 72) = v68[9] & 0xFE | v66[18] & 1;
    }

    if ((v67 & 2) != 0)
    {
      v68[6] = *(v71 + 48);
      v68[7] = *(v71 + 56);
      v68[8] = *(v71 + 64);
    }
  }

  v52 = v68;
  v95 = v63;
  v93 = 0;
  v92 = 0;
  v91 = &_voucher_aid_next;
  slow = _voucher_aid_next;
  while (1)
  {
    v93 = slow + 1;
    if (!slow || (v93 & 0xF) == 0)
    {
      break;
    }

    v90 = v93;
    v15 = slow;
    v16 = slow;
    atomic_compare_exchange_strong_explicit(v91, &v16, v93, memory_order_relaxed, memory_order_relaxed);
    if (v16 != v15)
    {
      slow = v16;
    }

    v89 = v16 == v15;
    v92 = v16 == v15;
    if (v16 == v15)
    {
      goto LABEL_36;
    }
  }

  slow = _voucher_activity_id_allocate_slow(slow);
LABEL_36:
  v88 = v92;
  v59 = slow & 0xFFFFFFFFFFFFFFLL | (v95 << 56);
  v68[6] = v59;
  v52[7] = _voucher_unique_pid;
  v52[8] = v57;
  predicate = &_firehose_task_buffer_pred;
  context = 0;
  function = _firehose_task_buffer_init;
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(predicate, context, function);
  }

  v96 = _firehose_task_buffer;
  v45 = 1;
  if (_firehose_task_buffer)
  {
    v45 = *(v96 + 1680) == -1;
  }

  if (!v45)
  {
    v101 = v63;
    if ((MEMORY[0xFFFFFC104] & 0x80) != 0 && (v101 & 0x80) == 0)
    {
      v102 = mach_continuous_approximate_time();
    }

    else
    {
      v102 = mach_continuous_time();
    }

    v49 = v102;
    for (i = 0; i < 2; ++i)
    {
      if (voucher_activity_create_with_data_2_streams[i] == 3)
      {
        v17 = voucher_activity_create_with_data_2_streams[i];
        v194 = _firehose_task_buffer;
        v193 = v49;
        v192 = v17;
        v191 = v54;
        v190 = 0;
        v189 = 0;
        v188 = 1;
        v187 = (_firehose_task_buffer + (v17 << 7) + 640);
        v186 = 0;
        v185 = 0;
        v184 = 0;
        v183 = 0;
        v182 = 0;
        v181 = 0;
        v180 = 0;
        v178 = *v187;
        v179 = v178;
        v177 = v178;
        v186 = v178;
        do
        {
          while (1)
          {
            while (1)
            {
              v185 = v186;
              v180 = BYTE4(v186);
              v44 = 0;
              if (BYTE4(v186))
              {
                v44 = v180 != 255;
              }

              if (v44)
              {
                v205 = v194;
                v204 = v180;
                v184 = v194 + (v180 << 12);
                v225 = v184;
                v224 = v193;
                v223 = v192;
                v222 = 0;
                v221 = v191;
                v220 = v190;
                v219 = v189;
                v218 = 24;
                v217 = 0;
                v216 = 0;
                v215 = 0;
                v214 = 0;
                v214 = (v193 - *(v184 + 8)) >> 48 == 0;
                v213 = 0;
                v212 = v184;
                v217 = *v184;
                do
                {
                  if (!v217)
                  {
                    v226 = 0;
                    goto LABEL_78;
                  }

                  if ((HIWORD(v217) & 0x1FF) != v223)
                  {
                    v226 = 0;
                    goto LABEL_78;
                  }

                  v216 = v217;
                  v307 = &v217;
                  v306 = v221 + v220 + 24;
                  if (v217 + v306 <= WORD1(v217) && v214)
                  {
                    if (v222 > BYTE5(v216))
                    {
                      BYTE5(v216) = v222;
                    }

                    if (((v221 + 24) & 7) != 0)
                    {
                      v43 = ((v221 + 24) & 0x1FFF8) + 8;
                    }

                    else
                    {
                      v43 = v221 + 24;
                    }

                    v216 += v43;
                    v216 -= v220 << 16;
                    v216 += 0x100000000;
                    v211 = 16;
                    v305 = &v216;
                    v304 = 40;
                    if (v216 + 40 > WORD1(v216))
                    {
                      HIBYTE(v216) |= 1u;
                    }

                    v215 = 0;
                  }

                  else
                  {
                    HIBYTE(v216) |= 1u;
                    v215 = 1;
                  }

                  v210 = v216;
                  v18 = v217;
                  v19 = v217;
                  atomic_compare_exchange_strong_explicit(v212, &v19, v216, memory_order_relaxed, memory_order_relaxed);
                  if (v19 != v18)
                  {
                    v217 = v19;
                  }

                  v209 = v19 == v18;
                  v213 = v19 == v18;
                }

                while (v19 != v18);
                v208 = v213;
                if (v215)
                {
                  if (BYTE4(v216))
                  {
                    v226 = 0;
                  }

                  else
                  {
                    v226 = -1;
                  }
                }

                else
                {
                  if (v219)
                  {
                    *v219 = v225 + WORD1(v216);
                  }

                  v226 = v217;
                }

LABEL_78:
                v181 = v226;
                if (v226 >= 1)
                {
                  v176 = 0;
                  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v176 = *(StatusReg - 8);
                  v254 = v184;
                  v253 = v193;
                  v252 = v191;
                  v251 = v176;
                  v250 = v181;
                  v249 = v184 + v181;
                  v253 = (v193 - *(v184 + 8)) | (v191 << 48);
                  v248 = v253;
                  *(v184 + v181 + 16) = v253;
                  *(v249 + 8) = v251;
                  v195 = v249;
                  goto LABEL_117;
                }

                if (v181 < 0)
                {
                  firehose_buffer_ring_enqueue(v194, BYTE4(v186));
                }

                BYTE4(v185) = 0;
              }

              if ((v188 & 1) != 0 || ((v183 & 1) == 0 || (v186 & 0x400000000000) == 0) && !(BYTE5(v186) >> 7))
              {
                break;
              }

              if ((BYTE5(v186) & 0x3Fu) + 1 > 0x3E)
              {
                v42 = 63;
              }

              else
              {
                v42 = (BYTE5(v186) & 0x3F) + 1;
              }

              BYTE5(v185) = BYTE5(v185) & 0xC0 | v42 & 0x3F;
              v175 = v186;
              v174 = 0;
              v172 = v185;
              v171 = v185;
              v173 = v185;
              v20 = v186;
              v21 = v186;
              atomic_compare_exchange_strong_explicit(v187, &v21, v185, memory_order_relaxed, memory_order_relaxed);
              if (v21 != v20)
              {
                v175 = v21;
              }

              v170 = v21 == v20;
              v174 = v21 == v20;
              v186 = v175;
              v169 = v174;
              v182 = v21 == v20;
              if (v21 == v20)
              {
                v268 = v192;
                v267 = v180;
                v266 = v183 & 1;
                v265 = v186;
                v264 = v185;
                v263 = v192 | (v180 << 8);
                v262 = v183 & 1;
                v337 = 772145156;
                v336 = v263;
                v335 = v262;
                v334 = v186;
                v333 = v185;
                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v195 = 0;
                goto LABEL_117;
              }
            }

            if (!v186)
            {
              break;
            }

            if (v188)
            {
              LODWORD(v185) = v185 | 1;
            }

            else
            {
              LODWORD(v185) = v185 | 2;
            }

            v168 = v185 == v186;
            v41 = 1;
            if (v185 != v186)
            {
              v167 = v186;
              v166 = 0;
              v164 = v185;
              v163 = v185;
              v165 = v185;
              v22 = v186;
              v23 = v186;
              atomic_compare_exchange_strong_explicit(v187, &v23, v185, memory_order_relaxed, memory_order_relaxed);
              if (v23 != v22)
              {
                v167 = v23;
              }

              v162 = v23 == v22;
              v166 = v23 == v22;
              v186 = v167;
              v161 = v166;
              v41 = v23 == v22;
            }

            v182 = v41;
            if (v41)
            {
              v283 = v192;
              v282 = v180;
              v281 = v183 & 1;
              v280 = v186;
              v279 = v185;
              v278 = v188 & 1;
              v277 = v192 | (v180 << 8);
              v276 = v183 & 1 | (2 * (v188 & 1));
              v327 = 772145160;
              v326 = v277;
              v325 = v276;
              v324 = v186;
              v323 = v185;
              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
              }

              _dispatch_firehose_gate_wait(v187, v185);
              v183 = 1;
              v159 = *v187;
              v160 = v159;
              v158 = v159;
              v186 = v159;
            }
          }

          v203 = _dispatch_thread_getspecific(3);
          LODWORD(v185) = v203 & 0xFFFFFFFC;
          v157 = v186;
          v156 = 0;
          v154 = v185;
          v153 = v185;
          v155 = v185;
          v24 = v186;
          v25 = v186;
          atomic_compare_exchange_strong_explicit(v187, &v25, v185, memory_order_relaxed, memory_order_relaxed);
          if (v25 != v24)
          {
            v157 = v25;
          }

          v152 = v25 == v24;
          v156 = v25 == v24;
          v186 = v157;
          v151 = v156;
          v182 = v25 == v24;
        }

        while (v25 != v24);
        v149 = v193;
        LOWORD(v150) = v191;
        WORD1(v150) = v190;
        WORD2(v150) = v192;
        HIWORD(v150) = ((1 << v192) & 0x93) != 0;
        BYTE6(v150) = (((1 << v192) & 0x93) != 0) | (2 * (*(v194 + 1697) & 1));
        BYTE6(v150) = BYTE6(v150) & 0xFB | (4 * (v188 & 1));
        v295 = v193;
        v294 = v150;
        v293 = v186;
        v292 = v185;
        v317 = 772145164;
        v316 = v193;
        v315 = v150;
        v314 = v186;
        v313 = v185;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v195 = firehose_buffer_tracepoint_reserve_slow(v194, &v149, v189);
LABEL_117:
        v50 = v195;
      }

      else
      {
        v26 = voucher_activity_create_with_data_2_streams[i];
        v147 = _firehose_task_buffer;
        v146 = v49;
        v145 = v26;
        v144 = v54;
        v143 = 0;
        v142[8] = 0;
        *v142 = v51;
        v141 = (_firehose_task_buffer + (v26 << 7) + 640);
        v140 = *&v142[1];
        v139 = *&v142[1];
        v138 = *&v142[1];
        v137 = 0;
        v136 = 0;
        v135 = *&v142[1];
        v134 = 0;
        v132 = *v141;
        v133 = v132;
        v131 = v132;
        v140 = v132;
        do
        {
          while (1)
          {
            while (1)
            {
              v139 = v140;
              v134 = BYTE4(v140);
              v40 = 0;
              if (BYTE4(v140))
              {
                v40 = v134 != 255;
              }

              if (v40)
              {
                v207 = v147;
                v206 = v134;
                v138 = v147 + (v134 << 12);
                v244 = v138;
                v243 = v146;
                v242 = v145;
                v241 = 0;
                v240 = v144;
                v239 = v143;
                v238 = *&v142[1];
                v237 = 24;
                v236 = 0;
                v235 = 0;
                v234 = 0;
                v233 = 0;
                v233 = (v146 - *(v138 + 8)) >> 48 == 0;
                v232 = 0;
                v231 = v138;
                v236 = *v138;
                do
                {
                  if (!v236)
                  {
                    v245 = 0;
                    goto LABEL_148;
                  }

                  if ((HIWORD(v236) & 0x1FF) != v242)
                  {
                    v245 = 0;
                    goto LABEL_148;
                  }

                  v235 = v236;
                  v303 = &v236;
                  v302 = v240 + v239 + 24;
                  if (v236 + v302 <= WORD1(v236) && v233)
                  {
                    if (v241 > BYTE5(v235))
                    {
                      BYTE5(v235) = v241;
                    }

                    if (((v240 + 24) & 7) != 0)
                    {
                      v39 = ((v240 + 24) & 0x1FFF8) + 8;
                    }

                    else
                    {
                      v39 = v240 + 24;
                    }

                    v235 += v39;
                    v235 -= v239 << 16;
                    v235 += 0x100000000;
                    v230 = 16;
                    v301 = &v235;
                    v300 = 40;
                    if (v235 + 40 > WORD1(v235))
                    {
                      HIBYTE(v235) |= 1u;
                    }

                    v234 = 0;
                  }

                  else
                  {
                    HIBYTE(v235) |= 1u;
                    v234 = 1;
                  }

                  v229 = v235;
                  v27 = v236;
                  v28 = v236;
                  atomic_compare_exchange_strong_explicit(v231, &v28, v235, memory_order_relaxed, memory_order_relaxed);
                  if (v28 != v27)
                  {
                    v236 = v28;
                  }

                  v228 = v28 == v27;
                  v232 = v28 == v27;
                }

                while (v28 != v27);
                v227 = v232;
                if (v234)
                {
                  if (BYTE4(v235))
                  {
                    v245 = 0;
                  }

                  else
                  {
                    v245 = -1;
                  }
                }

                else
                {
                  if (v238)
                  {
                    *v238 = v244 + WORD1(v235);
                  }

                  v245 = v236;
                }

LABEL_148:
                v135 = v245;
                if (v245 >= 1)
                {
                  v130 = 0;
                  v247 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v130 = *(v247 - 8);
                  v261 = v138;
                  v260 = v146;
                  v259 = v144;
                  v258 = v130;
                  v257 = v135;
                  v256 = v138 + v135;
                  v260 = (v146 - *(v138 + 8)) | (v144 << 48);
                  v255 = v260;
                  *(v138 + v135 + 16) = v260;
                  *(v256 + 8) = v258;
                  v148 = v256;
                  goto LABEL_187;
                }

                if (v135 < 0)
                {
                  firehose_buffer_ring_enqueue(v147, BYTE4(v140));
                }

                BYTE4(v139) = 0;
              }

              if ((v142[0] & 1) != 0 || ((v137 & 1) == 0 || (v140 & 0x400000000000) == 0) && !(BYTE5(v140) >> 7))
              {
                break;
              }

              if ((BYTE5(v140) & 0x3Fu) + 1 > 0x3E)
              {
                v38 = 63;
              }

              else
              {
                v38 = (BYTE5(v140) & 0x3F) + 1;
              }

              BYTE5(v139) = BYTE5(v139) & 0xC0 | v38 & 0x3F;
              v129 = v140;
              v128 = 0;
              v126 = v139;
              v125 = v139;
              v127 = v139;
              v29 = v140;
              v30 = v140;
              atomic_compare_exchange_strong_explicit(v141, &v30, v139, memory_order_relaxed, memory_order_relaxed);
              if (v30 != v29)
              {
                v129 = v30;
              }

              v124 = v30 == v29;
              v128 = v30 == v29;
              v140 = v129;
              v123 = v128;
              v136 = v30 == v29;
              if (v30 == v29)
              {
                v275 = v145;
                v274 = v134;
                v273 = v137 & 1;
                v272 = v140;
                v271 = v139;
                v270 = v145 | (v134 << 8);
                v269 = v137 & 1;
                v332 = 772145156;
                v331 = v270;
                v330 = v269;
                v329 = v140;
                v328 = v139;
                if (MEMORY[0xFFFFFC100])
                {
                  kdebug_trace();
                }

                v148 = 0;
                goto LABEL_187;
              }
            }

            if (!v140)
            {
              break;
            }

            if (v142[0])
            {
              LODWORD(v139) = v139 | 1;
            }

            else
            {
              LODWORD(v139) = v139 | 2;
            }

            v122 = v139 == v140;
            v37 = 1;
            if (v139 != v140)
            {
              v121 = v140;
              v120 = 0;
              v118 = v139;
              v117 = v139;
              v119 = v139;
              v31 = v140;
              v32 = v140;
              atomic_compare_exchange_strong_explicit(v141, &v32, v139, memory_order_relaxed, memory_order_relaxed);
              if (v32 != v31)
              {
                v121 = v32;
              }

              v116 = v32 == v31;
              v120 = v32 == v31;
              v140 = v121;
              v115 = v120;
              v37 = v32 == v31;
            }

            v136 = v37;
            if (v37)
            {
              v291 = v145;
              v290 = v134;
              v289 = v137 & 1;
              v288 = v140;
              v287 = v139;
              v286 = v142[0] & 1;
              v285 = v145 | (v134 << 8);
              v284 = v137 & 1 | (2 * (v142[0] & 1));
              v322 = 772145160;
              v321 = v285;
              v320 = v284;
              v319 = v140;
              v318 = v139;
              if (MEMORY[0xFFFFFC100])
              {
                kdebug_trace();
              }

              _dispatch_firehose_gate_wait(v141, v139);
              v137 = 1;
              v113 = *v141;
              v114 = v113;
              v112 = v113;
              v140 = v113;
            }
          }

          v202 = _dispatch_thread_getspecific(3);
          LODWORD(v139) = v202 & 0xFFFFFFFC;
          v111 = v140;
          v110 = 0;
          v108 = v139;
          v107 = v139;
          v109 = v139;
          v33 = v140;
          v34 = v140;
          atomic_compare_exchange_strong_explicit(v141, &v34, v139, memory_order_relaxed, memory_order_relaxed);
          if (v34 != v33)
          {
            v111 = v34;
          }

          v106 = v34 == v33;
          v110 = v34 == v33;
          v140 = v111;
          v105 = v110;
          v136 = v34 == v33;
        }

        while (v34 != v33);
        v103 = v146;
        LOWORD(v104) = v144;
        WORD1(v104) = v143;
        WORD2(v104) = v145;
        HIWORD(v104) = ((1 << v145) & 0x93) != 0;
        BYTE6(v104) = (((1 << v145) & 0x93) != 0) | (2 * (*(v147 + 1697) & 1));
        BYTE6(v104) = BYTE6(v104) & 0xFB | (4 * (v142[0] & 1));
        v299 = v146;
        v298 = v104;
        v297 = v140;
        v296 = v139;
        v312 = 772145164;
        v311 = v146;
        v310 = v104;
        v309 = v140;
        v308 = v139;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        v148 = firehose_buffer_tracepoint_reserve_slow(v147, &v103, *&v142[1]);
LABEL_187:
        v50 = v148;
      }

      if (v50)
      {
        v47 = v50 + 3;
        if (v58)
        {
          v87 = v50 + 3;
          v86 = &v58;
          v85 = 8;
          __memcpy_chk();
          v47 = &v87[v85 / 8];
        }

        if (v55)
        {
          v84 = v47;
          v83 = &v55;
          v82 = 8;
          __memcpy_chk();
          v47 = &v84[v82 / 8];
        }

        if (v57)
        {
          v81 = v47;
          v80 = &v57;
          v79 = 8;
          __memcpy_chk();
          v47 = &v81[v79 / 8];
        }

        v78 = v47;
        v77 = &v59;
        v76 = 8;
        __memcpy_chk();
        v75 = &v78[v76 / 8];
        v74 = v62;
        v73 = v61;
        __memcpy_chk();
        v199 = v56;
        v198 = _firehose_task_buffer;
        v197 = v50;
        v201 = v50;
        v200 = v50 & 0xFFFFFFFFFFFFF000;
        v196 = v50 & 0xFFFFFFFFFFFFF000;
        v344 = v56;
        v343 = (v50 & 0xFFFFFFFFFFFFF000);
        v342 = v50;
        v341 = 0;
        v340 = v56;
        atomic_store(v56, v50);
        v339 = 0x100000000;
        add_explicit = atomic_fetch_add_explicit(v343, 0xFFFFFFFF00000000, memory_order_relaxed);
        v341 = add_explicit;
        v36 = 0;
        if (BYTE4(add_explicit) == 1)
        {
          v36 = HIBYTE(v341) & 1;
        }

        if (v36)
        {
          v346 = v198;
          v345 = v196;
          firehose_buffer_ring_enqueue(v198, (v196 - v198) >> 12);
        }
      }
    }
  }

  *v65 = v56;
  return v52;
}

void *voucher_activity_create_with_location(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a1;
  v5[2] = a2;
  v5[1] = a3;
  v5[0] = a4;
  return voucher_activity_create_with_data(a1, a2, a3, v5, 8uLL);
}

uint64_t voucher_get_activity_id_and_creator(void *a1, void *a2, void *a3)
{
  v6 = a1;
  if (a1 == -3)
  {
    v6 = _dispatch_thread_getspecific(28);
  }

  if (v6)
  {
    if (a2)
    {
      *a2 = v6[7];
    }

    if (a3)
    {
      *a3 = v6[8];
    }

    return v6[6];
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }
}

void voucher_activity_flush(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v12 = 1;
  if (_firehose_task_buffer)
  {
    v12 = *(_firehose_task_buffer + 1680) == -1;
  }

  if (!v12)
  {
    v18 = _firehose_task_buffer;
    v17 = (_firehose_task_buffer + (a1 << 7) + 640);
    v16 = *v17;
    if (BYTE4(*v17) && BYTE4(v16) != 255)
    {
      v31 = (_firehose_task_buffer + (BYTE4(v16) << 12));
      v30 = -1;
      v29 = a1;
      v28 = 0;
      v27 = 1;
      v26 = 0;
      v25 = 0;
      v24 = 24;
      i = 0;
      v22 = 0;
      v20 = (-1 - *(v31 + 1)) >> 48 == 0;
      v19 = v31;
      for (i = *v31; ; i = v9)
      {
        if (!i)
        {
          v32 = 0;
          goto LABEL_34;
        }

        if ((HIWORD(i) & 0x1FF) != v29)
        {
          v32 = 0;
          goto LABEL_34;
        }

        v22 = i;
        p_i = &i;
        v35 = v27 + v26 + 24;
        if (i + v35 <= WORD1(i) && v20)
        {
          if (v28 > BYTE5(v22))
          {
            BYTE5(v22) = v28;
          }

          if (((v27 + 24) & 7) != 0)
          {
            v11 = ((v27 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v11 = v27 + 24;
          }

          v22 += v11;
          v22 -= v26 << 16;
          v22 += 0x100000000;
          v34 = &v22;
          v33 = 40;
          if (v22 + 40 > WORD1(v22))
          {
            HIBYTE(v22) |= 1u;
          }

          v21 = 0;
        }

        else
        {
          HIBYTE(v22) |= 1u;
          v21 = 1;
        }

        v8 = i;
        v9 = i;
        atomic_compare_exchange_strong_explicit(v19, &v9, v22, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          break;
        }
      }

      if (v21)
      {
        if (BYTE4(v22))
        {
          v32 = 0;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
        if (v25)
        {
          *v25 = v31 + WORD1(v22);
        }

        v32 = i;
      }

LABEL_34:
      v14 = v32;
      if (v32 < 0)
      {
        firehose_buffer_ring_enqueue(v18, BYTE4(v16));
      }

      if (v14 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v14;
        __break(1u);
        JUMPOUT(0x957A8);
      }

      v15 = v16;
      BYTE4(v15) = 0;
      v10 = v16;
      atomic_compare_exchange_strong_explicit(v17, &v10, v15, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(_firehose_task_buffer, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

unint64_t voucher_activity_trace_v_2(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, unint64_t a6, int a7)
{
  v55 = a1;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  v49 = a7;
  v48 = a2;
  v47 = 24;
  v46 = 4080;
  v45 = (a7 & 1) == 0;
  v75 = &_firehose_task_buffer_pred;
  v74 = 0;
  v73 = _firehose_task_buffer_init;
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(v75, v74, v73);
  }

  v72 = _firehose_task_buffer;
  v34 = 1;
  if (_firehose_task_buffer)
  {
    v34 = *(v72 + 1680) == -1;
  }

  if (v34)
  {
    return 0;
  }

  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = v51;
  v38 = _dispatch_thread_getspecific(28);
  v37 = 0;
  v130 = v38;
  v129 = &v37;
  if (&v37)
  {
    if (v130)
    {
      v33 = *(v130 + 56);
    }

    else
    {
      v33 = 0;
    }

    *v129 = v33;
  }

  if (v130)
  {
    v32 = *(v130 + 48);
  }

  else
  {
    v32 = 0;
  }

  v43 = v32;
  if (v32)
  {
    WORD1(v48) |= 1u;
    v39 += 8;
  }

  if ((v48 & 0x100000) != 0)
  {
    if (v37)
    {
      v39 += 8;
    }

    else
    {
      WORD1(v48) &= ~0x10u;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v50)
  {
    WORD1(v48) |= 0x100u;
    v39 += 4;
  }

  if (v39 + v50 + 24 >= 0xFF1)
  {
    v36 = v39 + v50 + 24;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Log is too large";
    qword_E42C0 = v36;
    __break(1u);
    JUMPOUT(0x95B3CLL);
  }

  v123 = _firehose_task_buffer;
  v122 = v53;
  v121 = v55;
  v120 = v39;
  v119 = v50;
  v118 = &v41;
  v117 = v45;
  v116 = (_firehose_task_buffer + (v55 << 7) + 640);
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v107 = *v116;
  v108 = v107;
  v106 = v107;
  v115 = v107;
  do
  {
    while (1)
    {
      while (1)
      {
        v114 = v115;
        v109 = BYTE4(v115);
        v31 = 0;
        if (BYTE4(v115))
        {
          v31 = v109 != 255;
        }

        if (v31)
        {
          v137 = v123;
          v136 = v109;
          v113 = v123 + (v109 << 12);
          v155 = v113;
          v154 = v122;
          v153 = v121;
          v152 = 0;
          v151 = v120;
          v150 = v119;
          v149 = v118;
          v148 = 24;
          v147 = 0;
          v146 = 0;
          v145 = 0;
          v144 = 0;
          v144 = (v122 - *(v113 + 8)) >> 48 == 0;
          v143 = 0;
          v142 = v113;
          v147 = *v113;
          do
          {
            if (!v147)
            {
              v156 = 0;
              goto LABEL_56;
            }

            if ((HIWORD(v147) & 0x1FF) != v153)
            {
              v156 = 0;
              goto LABEL_56;
            }

            v146 = v147;
            v187 = &v147;
            v186 = v151 + v150 + 24;
            if (v147 + v186 <= WORD1(v147) && v144)
            {
              if (v152 > BYTE5(v146))
              {
                BYTE5(v146) = v152;
              }

              if (((v151 + 24) & 7) != 0)
              {
                v30 = ((v151 + 24) & 0x1FFF8) + 8;
              }

              else
              {
                v30 = v151 + 24;
              }

              v146 += v30;
              v146 -= v150 << 16;
              v146 += 0x100000000;
              v141 = 16;
              v185 = &v146;
              v184 = 40;
              if (v146 + 40 > WORD1(v146))
              {
                HIBYTE(v146) |= 1u;
              }

              v145 = 0;
            }

            else
            {
              HIBYTE(v146) |= 1u;
              v145 = 1;
            }

            v140 = v146;
            v7 = v147;
            v8 = v147;
            atomic_compare_exchange_strong_explicit(v142, &v8, v146, memory_order_relaxed, memory_order_relaxed);
            if (v8 != v7)
            {
              v147 = v8;
            }

            v139 = v8 == v7;
            v143 = v8 == v7;
          }

          while (v8 != v7);
          v138 = v143;
          if (v145)
          {
            if (BYTE4(v146))
            {
              v156 = 0;
            }

            else
            {
              v156 = -1;
            }
          }

          else
          {
            if (v149)
            {
              *v149 = v155 + WORD1(v146);
            }

            v156 = v147;
          }

LABEL_56:
          v110 = v156;
          if (v156 >= 1)
          {
            v105 = 0;
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v105 = *(StatusReg - 8);
            v164 = v113;
            v163 = v122;
            v162 = v120;
            v161 = v105;
            v160 = v110;
            v159 = (v113 + v110);
            v163 = v122 - *(v113 + 8);
            v163 |= v120 << 48;
            v158 = v163;
            *(v113 + v110 + 16) = v163;
            v159[1] = v161;
            v124 = v159;
            goto LABEL_95;
          }

          if (v110 < 0)
          {
            firehose_buffer_ring_enqueue(v123, BYTE4(v115));
          }

          BYTE4(v114) = 0;
        }

        if (v117 || ((v112 & 1) == 0 || (v115 & 0x400000000000) == 0) && !(BYTE5(v115) >> 7))
        {
          break;
        }

        if ((BYTE5(v115) & 0x3Fu) + 1 > 0x3E)
        {
          v29 = 63;
        }

        else
        {
          v29 = (BYTE5(v115) & 0x3F) + 1;
        }

        BYTE5(v114) = BYTE5(v114) & 0xC0 | v29 & 0x3F;
        v104 = v115;
        v103 = 0;
        v101 = v114;
        v100 = v114;
        v102 = v114;
        v9 = v115;
        v10 = v115;
        atomic_compare_exchange_strong_explicit(v116, &v10, v114, memory_order_relaxed, memory_order_relaxed);
        if (v10 != v9)
        {
          v104 = v10;
        }

        v99 = v10 == v9;
        v103 = v10 == v9;
        v115 = v104;
        v98 = v103;
        v111 = v10 == v9;
        if (v10 == v9)
        {
          v171 = v121;
          v170 = v109;
          v169 = v112 & 1;
          v168 = v115;
          v167 = v114;
          v166 = v121 | (v109 << 8);
          v165 = v112 & 1;
          v202 = 772145156;
          v201 = v166;
          v200 = v165;
          v199 = v115;
          v198 = v114;
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v124 = 0;
          goto LABEL_95;
        }
      }

      if (!v115)
      {
        break;
      }

      if (v117)
      {
        LODWORD(v114) = v114 | 1;
      }

      else
      {
        LODWORD(v114) = v114 | 2;
      }

      v97 = v114 == v115;
      v28 = 1;
      if (v114 != v115)
      {
        v96 = v115;
        v95 = 0;
        v93 = v114;
        v92 = v114;
        v94 = v114;
        v11 = v115;
        v12 = v115;
        atomic_compare_exchange_strong_explicit(v116, &v12, v114, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v11)
        {
          v96 = v12;
        }

        v91 = v12 == v11;
        v95 = v12 == v11;
        v115 = v96;
        v90 = v95;
        v28 = v12 == v11;
      }

      v111 = v28;
      if (v28)
      {
        v179 = v121;
        v178 = v109;
        v177 = v112 & 1;
        v176 = v115;
        v175 = v114;
        v174 = v117;
        v173 = v121 | (v109 << 8);
        v172 = v112 & 1 | (2 * v117);
        v197 = 772145160;
        v196 = v173;
        v195 = v172;
        v194 = v115;
        v193 = v114;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        _dispatch_firehose_gate_wait(v116, v114);
        v112 = 1;
        v88 = *v116;
        v89 = v88;
        v87 = v88;
        v115 = v88;
      }
    }

    v135 = _dispatch_thread_getspecific(3);
    LODWORD(v114) = v135 & 0xFFFFFFFC;
    v86 = v115;
    v85 = 0;
    v83 = v114;
    v82 = v114;
    v84 = v114;
    v13 = v115;
    v14 = v115;
    atomic_compare_exchange_strong_explicit(v116, &v14, v114, memory_order_relaxed, memory_order_relaxed);
    if (v14 != v13)
    {
      v86 = v14;
    }

    v81 = v14 == v13;
    v85 = v14 == v13;
    v115 = v86;
    v80 = v85;
    v111 = v14 == v13;
  }

  while (v14 != v13);
  HIBYTE(v79) = 0;
  v78 = v122;
  LOWORD(v79) = v120;
  WORD1(v79) = v119;
  WORD2(v79) = v121;
  BYTE6(v79) = ((1 << v121) & 0x93) != 0;
  BYTE6(v79) |= 2 * (*(v123 + 1697) & 1);
  BYTE6(v79) = BYTE6(v79) & 0xFB | (4 * v117);
  v183 = v122;
  v182 = v79;
  v181 = v115;
  v180 = v114;
  v192 = 772145164;
  v191 = v122;
  v190 = v79;
  v189 = v115;
  v188 = v114;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v124 = firehose_buffer_tracepoint_reserve_slow(v123, &v78, v118);
LABEL_95:
  v44 = v124;
  if (!v124)
  {
    return 0;
  }

  v40 = v44 + 3;
  if (v43)
  {
    v71 = v40;
    v70 = &v43;
    v69 = 8;
    __memcpy_chk();
    v40 = &v71[v69 / 8];
  }

  if (v37)
  {
    v68 = v40;
    v67 = &v37;
    v66 = 8;
    __memcpy_chk();
    v40 = &v68[v66 / 8];
  }

  if (v50)
  {
    v134 = v44;
    v133 = v44 & 0xFFFFFFFFFFFFF000;
    v42 = v44 & 0xFFFFFFFFFFFFF000;
    v35[0] = v41 - (v44 & 0xF000);
    v35[1] = v50;
    v65 = v40;
    v64 = v35;
    v63 = 4;
    __memcpy_chk();
    v40 = (v65 + v63);
  }

  while (v51)
  {
    v15 = *v52;
    v16 = v52[1];
    v62 = v40;
    v61 = v15;
    v60 = v16;
    __memcpy_chk();
    v40 = (v62 + v60);
    v17 = v52[1];
    v18 = v51 >= v17;
    v19 = v51 - v17;
    v20 = !v18;
    v51 = v19;
    v77 = v20;
    if (v20)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      JUMPOUT(0x968FCLL);
    }

    v52 += 2;
  }

  while (v50)
  {
    v21 = *v52;
    v22 = v52[1];
    v59 = v41;
    v58 = v21;
    v57 = v22;
    __memcpy_chk();
    v41 = v59 + v57;
    v23 = v52[1];
    v18 = v50 >= v23;
    v24 = v50 - v23;
    v25 = !v18;
    v50 = v24;
    v76 = v25;
    if (v25)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      JUMPOUT(0x969BCLL);
    }

    v52 += 2;
  }

  v128 = v48;
  v127 = _firehose_task_buffer;
  v126 = v44;
  v132 = v44;
  v131 = v44 & 0xFFFFFFFFFFFFF000;
  v125 = v44 & 0xFFFFFFFFFFFFF000;
  v209 = v48;
  v208 = (v44 & 0xFFFFFFFFFFFFF000);
  v207 = v44;
  v206 = 0;
  v205 = v48;
  atomic_store(v48, v44);
  v204 = 0x100000000;
  add_explicit = atomic_fetch_add_explicit(v208, 0xFFFFFFFF00000000, memory_order_relaxed);
  v206 = add_explicit;
  v27 = 0;
  if (BYTE4(add_explicit) == 1)
  {
    v27 = HIBYTE(v206) & 1;
  }

  if (v27)
  {
    v211 = v127;
    v210 = v125;
    firehose_buffer_ring_enqueue(v211, (v125 - v211) >> 12);
  }

  return v48;
}

unint64_t voucher_activity_trace(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a1;
  v6[5] = a2;
  v6[4] = a3;
  v6[3] = a4;
  v6[2] = a5;
  v6[0] = a4;
  v6[1] = a5;
  return voucher_activity_trace_v(a1, a2, a3, v6, a5, 0);
}

unint64_t format_recipe_detail(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const char *a5, unint64_t a6)
{
  v51 = a4;
  if (a5)
  {
    if (a3 > a4)
    {
      v38 = a3 - a4;
    }

    else
    {
      v38 = 0;
    }

    v48 = __snprintf_chk((a2 + a4), v38, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", a5);
    if (v48 < 0)
    {
      v37 = 0;
    }

    else
    {
      if (v48 > v38)
      {
        v36 = v38;
      }

      else
      {
        v36 = v48;
      }

      v37 = v36;
    }

    v51 += v37;
  }

  if (a3 > v51)
  {
    v35 = a3 - v51;
  }

  else
  {
    v35 = 0;
  }

  v47 = __snprintf_chk((a2 + v51), v35, 0, 0xFFFFFFFFFFFFFFFFLL, "Key: %u, ", *a1);
  if (v47 < 0)
  {
    v34 = 0;
  }

  else
  {
    if (v47 > v35)
    {
      v33 = v35;
    }

    else
    {
      v33 = v47;
    }

    v34 = v33;
  }

  v52 = v51 + v34;
  if (a3 > v52)
  {
    v32 = a3 - v52;
  }

  else
  {
    v32 = 0;
  }

  v46 = __snprintf_chk((a2 + v52), v32, 0, 0xFFFFFFFFFFFFFFFFLL, "Command: %u, ", *(a1 + 4));
  if (v46 < 0)
  {
    v31 = 0;
  }

  else
  {
    if (v46 > v32)
    {
      v30 = v32;
    }

    else
    {
      v30 = v46;
    }

    v31 = v30;
  }

  v53 = v52 + v31;
  if (a3 > v53)
  {
    v29 = a3 - v53;
  }

  else
  {
    v29 = 0;
  }

  v45 = __snprintf_chk((a2 + v53), v29, 0, 0xFFFFFFFFFFFFFFFFLL, "Previous voucher: 0x%x, ", *(a1 + 8));
  if (v45 < 0)
  {
    v28 = 0;
  }

  else
  {
    if (v45 > v29)
    {
      v27 = v29;
    }

    else
    {
      v27 = v45;
    }

    v28 = v27;
  }

  v54 = v53 + v28;
  if (a3 > v54)
  {
    v26 = a3 - v54;
  }

  else
  {
    v26 = 0;
  }

  v44 = __snprintf_chk((a2 + v54), v26, 0, 0xFFFFFFFFFFFFFFFFLL, "Content size: %u\n", *(a1 + 12));
  if (v44 < 0)
  {
    v25 = 0;
  }

  else
  {
    if (v44 > v26)
    {
      v24 = v26;
    }

    else
    {
      v24 = v44;
    }

    v25 = v24;
  }

  v55 = v54 + v25;
  if (*a1 == 2)
  {
    if (a5)
    {
      if (a3 > v55)
      {
        v23 = a3 - v55;
      }

      else
      {
        v23 = 0;
      }

      v43 = __snprintf_chk((a2 + v55), v23, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", a5);
      if (v43 < 0)
      {
        v22 = 0;
      }

      else
      {
        if (v43 > v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v43;
        }

        v22 = v21;
      }

      v55 += v22;
    }

    if (a3 > v55)
    {
      v20 = a3 - v55;
    }

    else
    {
      v20 = 0;
    }

    v42 = __snprintf_chk((a2 + v55), v20, 0, 0xFFFFFFFFFFFFFFFFLL, "IMPORTANCE INFO: %s", (a1 + 16));
    if (v42 < 0)
    {
      v19 = 0;
    }

    else
    {
      if (v42 > v20)
      {
        v18 = v20;
      }

      else
      {
        v18 = v42;
      }

      v19 = v18;
    }

    v56 = v55 + v19;
  }

  else if (*a1 == 3)
  {
    if (a5)
    {
      if (a3 > v55)
      {
        v17 = a3 - v55;
      }

      else
      {
        v17 = 0;
      }

      v41 = __snprintf_chk((a2 + v55), v17, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", a5);
      if (v41 < 0)
      {
        v16 = 0;
      }

      else
      {
        if (v41 > v17)
        {
          v15 = v17;
        }

        else
        {
          v15 = v41;
        }

        v16 = v15;
      }

      v55 += v16;
    }

    if (a3 > v55)
    {
      v14 = a3 - v55;
    }

    else
    {
      v14 = 0;
    }

    v40 = __snprintf_chk((a2 + v55), v14, 0, 0xFFFFFFFFFFFFFFFFLL, "RESOURCE ACCOUNTING INFO: %s", (a1 + 16));
    if (v40 < 0)
    {
      v13 = 0;
    }

    else
    {
      if (v40 <= v14)
      {
        v12 = v40;
      }

      else
      {
        v12 = v14;
      }

      v13 = v12;
    }

    v56 = v55 + v13;
  }

  else
  {
    v11 = a1 + 16;
    if (*(a1 + 12) >= a6)
    {
      v6 = format_hex_data(a5, "Recipe Contents", v11, a6, a2, a3, v55);
    }

    else
    {
      v6 = format_hex_data(a5, "Recipe Contents", v11, *(a1 + 12), a2, a3, v55);
    }

    v56 = v6;
  }

  if (*(a2 + v56 - 1) != 10)
  {
    if (a3 > v56)
    {
      v10 = a3 - v56;
    }

    else
    {
      v10 = 0;
    }

    v39 = __snprintf_chk((a2 + v56), v10, 0, 0xFFFFFFFFFFFFFFFFLL, "\n");
    if (v39 < 0)
    {
      v9 = 0;
    }

    else
    {
      if (v39 <= v10)
      {
        v8 = v39;
      }

      else
      {
        v8 = v10;
      }

      v9 = v8;
    }

    v56 += v9;
  }

  return v56;
}

uint64_t voucher_mach_msg_fill_aux(uint64_t a1, unsigned int a2)
{
  v5 = _dispatch_thread_getspecific(28);
  if (v5 && *(v5 + 48))
  {
    if (a2 >= 0x28uLL)
    {
      *a1 = 40;
      *(a1 + 4) = 0;
      *&v3 = 59821818;
      *(&v3 + 1) = *(v5 + 48);
      v4 = *(v5 + 56);
      *(a1 + 8) = v3;
      *(a1 + 24) = v4;
      return 40;
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

uint64_t _voucher_activity_id_allocate_slow(uint64_t a1)
{
  v5 = a1;
  v4 = 0;
  activity_id = 0;
  v4 = mach_generate_activity_id(mach_task_self_, 1, &activity_id);
  if (v4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not generate an activity ID";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x976BCLL);
  }

  activity_id *= 16;
  activity_id &= 0xFFFFFFFFFFFFFFuLL;
  if (!activity_id)
  {
    activity_id = 1;
  }

  if (v5)
  {
    return __swp(activity_id, &_voucher_aid_next);
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v1, activity_id + 1, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    return __swp(activity_id, &_voucher_aid_next);
  }

  else
  {
    return activity_id;
  }
}

uint64_t _firehose_task_buffer_init()
{
  v6 = 0;
  v5 = 0u;
  v4 = 0u;
  buffer = 0u;
  v0 = getpid();
  result = proc_pidinfo(v0, 17, 1uLL, &buffer, 56);
  if (result != 56)
  {
    if (!result)
    {
      v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      qword_E4290 = "BUG IN LIBDISPATCH: Unable to get the unique pid (error)";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x978E8);
    }

    qword_E4290 = "BUG IN LIBDISPATCH: Unable to get the unique pid (size)";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0x97924);
  }

  _voucher_unique_pid = v4;
  if (_voucher_libtrace_hooks)
  {
    result = (*(_voucher_libtrace_hooks + 8))();
    if (result)
    {
      result = firehose_buffer_create(result, _voucher_unique_pid, (_dispatch_memory_warn & 1) != 0);
      _firehose_task_buffer = result;
      if (*_voucher_libtrace_hooks >= 4)
      {
        if (*(_voucher_libtrace_hooks + 32))
        {
          return (*(_voucher_libtrace_hooks + 32))(_firehose_task_buffer + 2048, 2048);
        }
      }
    }
  }

  return result;
}

unint64_t format_hex_data(const char *a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v36 = a7;
  if (a2)
  {
    if (a6 > a7)
    {
      v26 = a6 - a7;
    }

    else
    {
      v26 = 0;
    }

    v33 = __snprintf_chk((a5 + a7), v26, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s:\n", a1, a2);
    if (v33 < 0)
    {
      v25 = 0;
    }

    else
    {
      if (v33 > v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = v33;
      }

      v25 = v24;
    }

    v36 += v25;
  }

  v32 = -1;
  for (i = 0; i < a4; ++i)
  {
    v32 = i % 0x10;
    if (!(i % 0x10))
    {
      if (i)
      {
        if (a6 > v36)
        {
          v23 = a6 - v36;
        }

        else
        {
          v23 = 0;
        }

        v31 = __snprintf_chk((a5 + v36), v23, 0, 0xFFFFFFFFFFFFFFFFLL, "  %s\n", v41);
        if (v31 < 0)
        {
          v22 = 0;
        }

        else
        {
          if (v31 > v23)
          {
            v21 = v23;
          }

          else
          {
            v21 = v31;
          }

          v22 = v21;
        }

        v36 += v22;
      }

      if (a6 > v36)
      {
        v20 = a6 - v36;
      }

      else
      {
        v20 = 0;
      }

      v30 = __snprintf_chk((a5 + v36), v20, 0, 0xFFFFFFFFFFFFFFFFLL, "%s  %04lx ", a1, i);
      if (v30 < 0)
      {
        v19 = 0;
      }

      else
      {
        if (v30 > v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v30;
        }

        v19 = v18;
      }

      v36 += v19;
    }

    if (a6 > v36)
    {
      v17 = a6 - v36;
    }

    else
    {
      v17 = 0;
    }

    v29 = __snprintf_chk((a5 + v36), v17, 0, 0xFFFFFFFFFFFFFFFFLL, " %02x", *(a3 + i));
    if (v29 < 0)
    {
      v16 = 0;
    }

    else
    {
      if (v29 > v17)
      {
        v15 = v17;
      }

      else
      {
        v15 = v29;
      }

      v16 = v15;
    }

    v36 += v16;
    if (*(a3 + i) >= 0x20u && *(a3 + i) <= 0x7Eu)
    {
      v14 = *(a3 + i);
    }

    else
    {
      v14 = 46;
    }

    v41[v32] = v14;
  }

  v41[v32 + 1] = 0;
  if (i % 0x10)
  {
    while (i % 0x10)
    {
      if (a6 > v36)
      {
        v13 = a6 - v36;
      }

      else
      {
        v13 = 0;
      }

      v28 = __snprintf_chk((a5 + v36), v13, 0, 0xFFFFFFFFFFFFFFFFLL, "   ");
      if (v28 < 0)
      {
        v12 = 0;
      }

      else
      {
        if (v28 <= v13)
        {
          v11 = v28;
        }

        else
        {
          v11 = v13;
        }

        v12 = v11;
      }

      v36 += v12;
      ++i;
    }

    if (a6 > v36)
    {
      v10 = a6 - v36;
    }

    else
    {
      v10 = 0;
    }

    v27 = __snprintf_chk((a5 + v36), v10, 0, 0xFFFFFFFFFFFFFFFFLL, "  %s\n", v41);
    if (v27 < 0)
    {
      v9 = 0;
    }

    else
    {
      if (v27 <= v10)
      {
        v8 = v27;
      }

      else
      {
        v8 = v10;
      }

      v9 = v8;
    }

    v36 += v9;
  }

  return v36;
}

mach_vm_address_t firehose_buffer_create(mach_port_name_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = 0;
  address = vm_page_size;
  if (0x4000 % vm_page_size)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid values for MADVISE_CHUNK_COUNT / CHUNK_SIZE";
    qword_E42C0 = 0x4000;
    __break(1u);
    JUMPOUT(0x9820CLL);
  }

  v18 = mach_vm_map(mach_task_self_, &address, 0x40000uLL, 0, 1308622851, 0, 0, 0, 3, 7, 2u);
  if (v18)
  {
    if (v18 != 3)
    {
      v27 = v18;
      v26 = 346;
      _dispatch_bug(v26, v27, v3, v4, v5, v6, v7, v8);
    }

    v32 = v24;
    v31 = mach_port_deallocate(mach_task_self_, v24);
    if (v31 == -301)
    {
      v30 = -301;
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x98324);
    }

    v29 = v31;
    v34 = v31;
    v33 = 91;
    if (v31)
    {
      _dispatch_bug(v33, v34, v9, v10, v11, v12, v13, v14);
    }

    v28 = v29;
    return 0;
  }

  else
  {
    v20 = address;
    v21 = address;
    *(address + 1676) = v24;
    *(v21 + 1672) = getpid();
    *(v21 + 1664) = v23;
    v42 = 49;
    v41 = 5;
    v40 = v20;
    name = 0;
    options.flags = 51;
    options.mpl.mpl_qlimit = 5;
    options.reserved[1] = 0;
    options.reserved[0] = 0;
    v37 = mach_port_construct(mach_task_self_, &options, v20, &name);
    if (v37)
    {
      if (v37 == -301)
      {
        v36 = -301;
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x98464);
      }

      v35 = v37;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
      qword_E42C0 = v37;
      __break(1u);
      JUMPOUT(0x98498);
    }

    *(v21 + 1688) = name;
    *(v21 + 264) = 20180226;
    *(v21 + 512) = v22;
    for (i = 0; i < 8; ++i)
    {
      if (i != 3)
      {
        *(v21 + (i << 7) + 644) = -1;
      }
    }

    firehose_buffer_update_limits_unlocked(v20);
    *(v21 + 520) = 31;
    for (j = 0; j <= 3u; ++j)
    {
      *(v21 + 2 * j) = j + 1;
    }

    *(v21 + 464) = 4;
    *(v21 + 320) = 4;
    *(v21 + 256) = 0x40000;
    return v20;
  }
}

uint64_t firehose_buffer_update_limits_unlocked(uint64_t result)
{
  v16 = *(result + 512);
  v15 = 0;
  v14 = 0;
  for (i = 0; i < 8; ++i)
  {
    if (*(result + 640 + (i << 7) + 4) != 255)
    {
      if (((1 << i) & 0x93) != 0)
      {
        ++v15;
      }

      else
      {
        ++v14;
      }
    }
  }

  v1 = *(result + 512);
  if (v16)
  {
    v2 = *(result + 512);
    if ((v16 & 2) != 0)
    {
      v12 = 4 * v14 + 1 + v15;
    }

    else
    {
      v12 = v14 + 3 + v15;
    }
  }

  else
  {
    v3 = *(result + 512);
    if ((v16 & 2) != 0)
    {
      v12 = 6 * v14 + 1 + 3 * v15;
    }

    else
    {
      v12 = 2 * (v14 + v15) + 1;
    }
  }

  v10 = vm_page_size / 0x1000;
  if (v10 > 1u)
  {
    if (v12 % v10)
    {
      v8 = v12 + v10 - v12 % v10;
    }

    else
    {
      LOWORD(v8) = v12;
    }

    v12 = v8;
  }

  if (v12 <= 4u)
  {
    v7 = 4;
  }

  else
  {
    v7 = v12;
  }

  v13 = v7;
  v4 = *(result + 512);
  if ((v16 & 1) == 0)
  {
    if (v7 <= 8u)
    {
      v6 = 8;
    }

    else
    {
      v6 = v7;
    }

    v13 = v6;
  }

  LOWORD(v9) = v13 - 1;
  if (3 * v13 / 8 <= 2 * v15)
  {
    LOWORD(v5) = 2 * v15;
  }

  else
  {
    v5 = 3 * v13 / 8;
  }

  WORD1(v9) = v5;
  HIDWORD(v9) = (v13 + 1);
  v17 = *(result + 528);
  *(result + 528) = v9;
  if (v17 != v9)
  {
    atomic_fetch_add_explicit((result + 448), v9 - v17, memory_order_relaxed);
  }

  return result;
}

mach_vm_address_t firehose_buffer_get_logging_prefs(int a1, mach_vm_size_t *a2)
{
  v29 = a1;
  v28 = a2;
  v27 = 0;
  size = 0;
  address = 0;
  v21 = 0;
  if (a1)
  {
    v21 = v29 != -1;
  }

  if (v21)
  {
    logging_prefs = firehose_send_get_logging_prefs(v29, &v27, &size);
    if (logging_prefs)
    {
      if (logging_prefs != 268435459)
      {
        if (logging_prefs == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x98A8CLL);
        }

        v36 = logging_prefs;
        v35 = 600;
        _dispatch_bug(v35, v36, v2, v3, v4, v5, v6, v7);
      }

      *v28 = 0;
      return 0;
    }

    else
    {
      v23 = mach_vm_map(mach_task_self_, &address, size, 0, 1, v27, 0, 0, 1, 1, 2u);
      if (v23 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x98B70);
      }

      v34 = v23;
      v33 = 611;
      if (v23)
      {
        _dispatch_bug(v33, v34, v8, v9, v10, v11, v12, v13);
        address = 0;
        size = 0;
      }

      v24 = mach_port_deallocate(mach_task_self_, v27);
      if (v24 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x98C2CLL);
      }

      v32 = v24;
      v31 = 617;
      if (v24)
      {
        _dispatch_bug(v31, v32, v14, v15, v16, v17, v18, v19);
      }

      *v28 = size;
      return address;
    }
  }

  else
  {
    *v28 = 0;
    return 0;
  }
}

BOOL firehose_buffer_should_send_strings(mach_port_context_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = *(a1 + 1680);
  should_send_strings = 0;
  v17 = 0;
  if (v19 != -1)
  {
    if (v19)
    {
      should_send_strings = firehose_send_should_send_strings(v19, &v17);
      if (!should_send_strings)
      {
        return v17 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x98D78);
        }

        v25 = should_send_strings;
        v24 = 641;
        _dispatch_bug(v24, v25, v8, a4, a5, a6, a7, a8);
      }
    }

    v19 = firehose_client_reconnect(v20, v19, 0, a4, a5, a6, a7, a8);
    v16 = 0;
    if (v19)
    {
      v16 = v19 != -1;
    }

    if (v16)
    {
      should_send_strings = firehose_send_should_send_strings(v19, &v17);
      if (!should_send_strings)
      {
        return v17 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x98E9CLL);
        }

        v23 = should_send_strings;
        v22 = 653;
        _dispatch_bug(v22, v23, v9, v10, v11, v12, v13, v14);
      }
    }

    return 0;
  }

  return 0;
}

uint64_t firehose_client_reconnect(mach_port_context_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a1;
  v55 = a2;
  v54 = a3;
  v53 = 0;
  object_handle = 0;
  v51 = 0;
  v50 = 0;
  v49[4] = 0;
  *v49 = a2 != 0;
  v112 = *(a1 + 1676);
  v111 = 157;
  if (!v112)
  {
    _dispatch_abort(v111, 0, a3, a4, a5, a6, a7, a8);
  }

  v110 = *(v56 + 1688);
  v109 = 158;
  if (!v110)
  {
    _dispatch_abort(v109, 0, a3, a4, a5, a6, a7, a8);
  }

  v8 = *(v56 + 1664) != 0;
  v108 = *(v56 + 1664) != 0;
  v107 = 159;
  if (!v8)
  {
    _dispatch_abort(v107, v108, a3, a4, a5, a6, a7, a8);
  }

  v103 = (v56 + 1692);
  v120 = _dispatch_thread_getspecific(3);
  v102 = v120 & 0xFFFFFFFC;
  v101 = 0;
  v100 = 0;
  v98 = v120 & 0xFFFFFFFC;
  v97 = v120 & 0xFFFFFFFC;
  v99 = v120 & 0xFFFFFFFC;
  v15 = 0;
  atomic_compare_exchange_strong_explicit((v56 + 1692), &v15, v120 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    v101 = v15;
  }

  v96 = v15 == 0;
  v100 = v15 == 0;
  v95 = v100;
  if (v15)
  {
    _dispatch_unfair_lock_lock_slow(v103);
  }

  v53 = *(v56 + 4 * v54 + 1680);
  if (v53 == v55 && v53 != -1)
  {
    if (v49[0])
    {
      for (i = 0; i <= 1; ++i)
      {
        v47 = *(v56 + 4 * i + 1680);
        v106 = v47;
        v105 = 171;
        if (!v47)
        {
          _dispatch_abort(v105, v106, v9, v10, v11, v12, v13, v14);
        }

        v119 = v47;
        v118 = v56;
        v117 = mach_port_destruct(mach_task_self_, v47, 0, v56);
        if (v117 == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x991D0);
        }

        name = v47;
        v83 = mach_port_deallocate(mach_task_self_, v47);
        if (v83 == -301)
        {
          v82 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x99234);
        }

        v81 = v83;
        v86 = v83;
        v85 = 91;
        if (v83)
        {
          _dispatch_bug(v85, v86, v9, v10, v11, v12, v13, v14);
        }

        v80 = v81;
        *(v56 + 4 * i + 1680) = 0;
      }
    }

    permission = 4194305;
    size = 0x40000;
    offset = v56;
    *&v49[1] = mach_make_memory_entry_64(mach_task_self_, &size, v56, 4194305, &object_handle, 0);
    if (!(size >> 18))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid size for the firehose buffer";
      qword_E42C0 = size;
      __break(1u);
      JUMPOUT(0x99328);
    }

    if (*&v49[1])
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
      qword_E42C0 = *&v49[1];
      __break(1u);
      JUMPOUT(0x99370);
    }

    if (v49[0])
    {
      if (*(_voucher_libtrace_hooks + 24))
      {
        *&v49[1] = (*(_voucher_libtrace_hooks + 24))(&offset, &size);
        if (!*&v49[1] && offset && size)
        {
          v50 = size;
          *&v49[1] = mach_make_memory_entry_64(mach_task_self_, &size, offset, permission, &v51, 0);
          if (*&v49[1])
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
            qword_E42C0 = *&v49[1];
            __break(1u);
            JUMPOUT(0x99454);
          }

          *&v49[1] = mach_vm_deallocate(mach_task_self_, offset, size);
          v58 = *&v49[1];
          v57 = 209;
          if (*&v49[1])
          {
            _dispatch_bug(v57, v58, v16, v17, v18, v19, v20, v21);
          }
        }
      }
    }

    for (j = 0; j <= 1; ++j)
    {
      v94 = 21;
      v93 = 1;
      context = v56;
      v91 = 0;
      options.flags = 23;
      options.mpl.mpl_qlimit = 1;
      options.reserved[1] = 0;
      options.reserved[0] = 0;
      v89 = mach_port_construct(mach_task_self_, &options, v56, &v91);
      if (v89)
      {
        if (v89 == -301)
        {
          v88 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x99598);
        }

        v87 = v89;
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
        qword_E42C0 = v89;
        __break(1u);
        JUMPOUT(0x995CCLL);
      }

      v133[j] = v91;
    }

    v53 = v133[v54];
    *&v49[1] = firehose_send_register(*(v56 + 1676), object_handle, 0x40000, v133[0], v133[1], *(v56 + 1688), v51, v50);
    if (*&v49[1])
    {
      if (*&v49[1] != 268435459)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to register with logd";
        qword_E42C0 = *&v49[1];
        __break(1u);
        JUMPOUT(0x999A8);
      }

      for (k = 0; k <= 1; ++k)
      {
        v116 = v133[k];
        v115 = v56;
        v114 = 0;
        v114 = mach_port_destruct(mach_task_self_, v116, 0, v56);
        if (v114 == -301)
        {
          v113 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x99744);
        }

        v77 = v133[k];
        v76 = mach_port_deallocate(mach_task_self_, v77);
        if (v76 == -301)
        {
          v75 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x997B0);
        }

        v74 = v76;
        v79 = v76;
        v78 = 91;
        if (v76)
        {
          _dispatch_bug(v78, v79, v22, v23, v24, v25, v26, v27);
        }

        v73 = v74;
        *(v56 + 4 * k + 1680) = -1;
      }

      v53 = -1;
      v70 = object_handle;
      v69 = mach_port_deallocate(mach_task_self_, object_handle);
      if (v69 == -301)
      {
        v68 = -301;
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x99880);
      }

      v67 = v69;
      v72 = v69;
      v71 = 91;
      if (v69)
      {
        _dispatch_bug(v71, v72, v28, v29, v30, v31, v32, v33);
      }

      v66 = v67;
      if (v51)
      {
        v63 = v51;
        v62 = mach_port_deallocate(mach_task_self_, v51);
        if (v62 == -301)
        {
          v61 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x9992CLL);
        }

        v60 = v62;
        v65 = v62;
        v64 = 91;
        if (v62)
        {
          _dispatch_bug(v64, v65, v34, v35, v36, v37, v38, v39);
        }

        v59 = v60;
      }
    }

    else
    {
      for (m = 0; m <= 1; ++m)
      {
        *(v56 + 4 * m + 1680) = v133[m];
      }
    }
  }

  v104 = v56 + 1692;
  v129 = (v56 + 1692);
  v128 = 0;
  v131 = _dispatch_thread_getspecific(3);
  v127 = v131 & 0xFFFFFFFC;
  v124 = 0;
  v123 = 0;
  v125 = 0;
  v122 = atomic_exchange_explicit(v129, 0, memory_order_release);
  v126 = v122;
  v121 = v122;
  v128 = v122;
  if (v122 == v127)
  {
    v130 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(v129, v128);
    v132 = v128;
    v130 = (v128 & 2) != 0;
  }

  return v53;
}

void firehose_client_push_reply(uint64_t a1, int a2)
{
  qword_E4290 = "BUG IN LIBDISPATCH: firehose_push_reply should never be sent to the buffer receive port";
  qword_E42C0 = a2;
  __break(1u);
}

uint64_t firehose_client_push_notify_async(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "firehose")
    {
      v9 = i;
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  firehose_client_merge_updates(v9[2], 1, a2, a3, a4 != 0, 0);
  return 0;
}

void firehose_client_merge_updates(uint64_t a1, char a2, unint64_t a3, unint64_t a4, char a5, unint64_t *a6)
{
  v23 = 0;
  v22 = 0;
  if ((a5 & 1) != 0 && !*(a1 + 1696))
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 1696), &v6, 1u, memory_order_relaxed, memory_order_relaxed);
  }

  v21 = 0;
  v24 = *(a1 + 464);
  do
  {
    if (v24 >= a3)
    {
      break;
    }

    v7 = v24;
    v8 = v24;
    atomic_compare_exchange_strong_explicit((a1 + 464), &v8, a3, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v24)
    {
      v24 = v8;
    }

    v21 = v8 == v7;
  }

  while (v8 != v7);
  if (v21)
  {
    v22 = a3 - v24;
  }

  v20 = 0;
  v25 = *(a1 + 488);
  do
  {
    if (v25 >= a4)
    {
      break;
    }

    v9 = v25;
    v10 = v25;
    atomic_compare_exchange_strong_explicit((a1 + 488), &v10, a4, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v25)
    {
      v25 = v10;
    }

    v20 = v10 == v9;
  }

  while (v10 != v9);
  if (v20)
  {
    v23 = a4 - v25;
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tclient side: mem: +%d->%llx, io: +%d->%llx", v11, v12, v13, v14, v15, v16, v17, 544);
  if (v22 || v23)
  {
    v27 = *(a1 + 256);
    do
    {
      v26 = v27;
      HIWORD(v26) = HIWORD(v27) + v23;
      WORD1(v26) = WORD1(v27) + v22;
      v18 = v27;
      v19 = v27;
      atomic_compare_exchange_strong_explicit((a1 + 256), &v19, v26, memory_order_relaxed, memory_order_relaxed);
      if (v19 != v18)
      {
        v27 = v19;
      }
    }

    while (v19 != v18);
    v28 = atomic_fetch_add_explicit((a1 + 448), (v23 << 16) | v22, memory_order_release) + ((v23 << 16) | v22);
    if (a6)
    {
      *a6 = v28;
    }

    if (a2)
    {
      if (v23)
      {
        atomic_fetch_add_explicit((a1 + 496), 1uLL, memory_order_relaxed);
      }

      if (v22)
      {
        atomic_fetch_add_explicit((a1 + 472), 1uLL, memory_order_relaxed);
      }
    }
  }

  else if (a6)
  {
    *a6 = *(a1 + 448);
  }
}

uint64_t firehose_buffer_update_limits(uint64_t a1)
{
  v3 = (a1 + 536);
  v6 = (a1 + 536);
  v5 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v6, &v1, v5, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(v6);
  }

  firehose_buffer_update_limits_unlocked(a1);
  result = _dispatch_thread_getspecific(3);
  v7 = atomic_exchange_explicit(v3, 0, memory_order_release);
  if (v7 != (result & 0xFFFFFFFC))
  {
    return _dispatch_unfair_lock_unlock_slow(v3, v7);
  }

  return result;
}

void firehose_buffer_ring_enqueue(mach_port_context_t a1, unsigned __int8 a2)
{
  v15 = ((HIBYTE(*(a1 + (a2 << 12))) >> 1) & 1) != 0;
  if ((HIBYTE(*(a1 + (a2 << 12))) >> 1))
  {
    v20 = a1 + 128;
    v19 = (a1 + 384);
  }

  else
  {
    v20 = a1;
    v19 = (a1 + 320);
  }

  v18 = *v19;
  while (1)
  {
    while (1)
    {
      v17 = v18 & 0xFFC0;
      v16 = v18 & 0x3F;
      _dispatch_thread_setspecific(122, v19);
      v2 = v18 & 0xFFC0;
      atomic_compare_exchange_strong_explicit((v20 + 2 * (v18 & 0x3F)), &v2, v18 & 0xFFC0 | a2, memory_order_relaxed, memory_order_relaxed);
      if ((v18 & 0xFFC0) == v2)
      {
        break;
      }

      _dispatch_thread_setspecific(122, 0);
      for (i = -1024; ; ++i)
      {
        v12 = v18;
        v18 = *v19;
        v11 = 1;
        if (*v19 == v12)
        {
          v11 = *(v20 + 2 * v16) == v17;
        }

        if (v11)
        {
          break;
        }

        v5 = i;
        if (v5 < 0)
        {
          __yield();
        }

        else
        {
          _pthread_yield_to_enqueuer_4dispatch();
        }
      }
    }

    v14 = v18;
    v3 = v18;
    v4 = v18;
    atomic_compare_exchange_strong_explicit(v19, &v4, v18 + 1, memory_order_release, memory_order_relaxed);
    if (v3 != v4)
    {
      v14 = v4;
    }

    v18 = v14;
    if (v3 == v4)
    {
      break;
    }

    *(v20 + 2 * v16) = v17;
    _dispatch_thread_setspecific(122, 0);
  }

  _dispatch_thread_setspecific(122, 0);
  firehose_client_send_push_async(a1, 0, v15, v6, v7, v8, v9, v10);
}

void firehose_client_send_push_async(mach_port_context_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a3 & 1;
  v20 = *(a1 + 4 * (a3 & 1) + 1680);
  if (v20 == -1)
  {
    return;
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  v18 = firehose_send_push_async(v20, a2, 0);
  v17 = 1;
  if (v18)
  {
    v17 = v18 == 268435460;
  }

  if (!v17)
  {
    if (v18 != 268435459)
    {
      if (v18 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x9A808);
      }

      if (v18)
      {
        _dispatch_bug(476, v18, v8, a4, a5, a6, a7, a8);
      }
    }

LABEL_11:
    v21 = firehose_client_reconnect(a1, v20, v22, a4, a5, a6, a7, a8);
    v16 = 0;
    if (v21)
    {
      v16 = v21 != -1;
    }

    if (v16)
    {
      v19 = firehose_send_push_async(v21, a2, 0);
      v15 = 1;
      if (v19)
      {
        v15 = v19 == 268435460;
      }

      if (!v15 && v19 != 268435459)
      {
        if (v19 == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x9A94CLL);
        }

        if (v19)
        {
          _dispatch_bug(488, v19, v9, v10, v11, v12, v13, v14);
        }
      }
    }
  }
}

mach_port_context_t firehose_buffer_force_connect(mach_port_context_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(result + 1680))
  {
    return firehose_client_reconnect(result, 0, 0, a4, a5, a6, a7, a8);
  }

  return result;
}

char *firehose_buffer_tracepoint_reserve_slow(uint64_t a1, _BYTE *a2, void *a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a2[14] & 1;
  v27 = a1 + 448;
  v26 = 0;
  v24 = 0;
  firehose_drain_notifications_once(a1);
  v26 = *v27;
  v46 = v31;
  v45 = v28 != 0;
  v44 = &v26;
  v43 = 0;
  v42 = (v31 + 448);
  v41 = v26;
  v40 = 0;
  do
  {
    if (!*(&v41 + v45))
    {
      v47 = 0;
      goto LABEL_8;
    }

    v40 = v41;
    --*(&v40 + v45);
    v39 = v41;
    v38 = 0;
    v36 = v40;
    v35 = v40;
    v37 = v40;
    v8 = v41;
    v9 = v41;
    atomic_compare_exchange_strong_explicit(v42, &v9, v40, memory_order_acquire, memory_order_acquire);
    if (v9 != v8)
    {
      v39 = v9;
    }

    v34 = v9 == v8;
    v38 = v9 == v8;
    v41 = v39;
    v33 = v38;
    v43 = v9 == v8;
  }

  while (v9 != v8);
  *v44 = v40;
  v47 = 1;
LABEL_8:
  v25 = v47;
  if (v47)
  {
    while (!v24)
    {
      v81 = v31;
      v80 = 0;
      v79 = 0;
      v78 = 0;
      v77 = 0;
      v76 = 0;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      v72 = 0;
      v71 = 0;
      v70 = (v31 + 256);
      v79 = *(v31 + 256);
      do
      {
        v80 = v79;
        if (v79 == WORD1(v79))
        {
          if (WORD2(v79) == HIWORD(v79))
          {
            v82 = 0;
            goto LABEL_32;
          }

          ++WORD2(v80);
        }

        else
        {
          LOWORD(v80) = v80 + 1;
        }

        v69 = v80;
        v10 = v79;
        v11 = v79;
        atomic_compare_exchange_strong_explicit(v70, &v11, v80, memory_order_relaxed, memory_order_relaxed);
        if (v11 != v10)
        {
          v79 = v11;
        }

        v68 = v11 == v10;
        v71 = v11 == v10;
      }

      while (v11 != v10);
      v67 = v71;
      v72 = WORD2(v80) != WORD2(v79);
      if (WORD2(v80) == WORD2(v79))
      {
        v78 = v81;
        v75 = v79 & 0x3F;
      }

      else
      {
        v78 = v81 + 128;
        v75 = BYTE4(v79) & 0x3F;
      }

      v66 = 0;
      option_time = -1024;
      while (1)
      {
        v76 = *(v78 + 2 * v75);
        v66 = v76 & 0x3F;
        if ((v76 & 0x3F) != 0)
        {
          break;
        }

        v12 = option_time++;
        if ((v12 & 0x80000000) != 0)
        {
          __yield();
        }

        else
        {
          thread_switch(0, 4, option_time);
        }
      }

      v64 = v66;
      v77 = (v76 & 0xFFC0) + 64;
      v74 = v76 & 0x3F;
      v84 = v81;
      v83 = v76 & 0x3F;
      v73 = v81 + ((v76 & 0x3F) << 12);
      if (!v72 && *(v73 + 6) == 3)
      {
        v62 = ~(1 << v74);
        v61 = v62;
        v63 = v62;
        v57 = v62;
        v56 = v62;
        v58 = v62;
        v55 = atomic_fetch_and_explicit((v81 + 456), v62, memory_order_relaxed);
        v59 = v55;
        v54 = v55;
        v60 = v55 & v63;
      }

      v53 = 0x100000000000000;
      v52 = 0x100000000000000;
      *v73 = 0x100000000000000;
      v51 = v53;
      v50 = v77;
      v49 = v77;
      *(v78 + 2 * v75) = v77;
      v48 = v50;
      v82 = v74;
LABEL_32:
      v24 = v82;
      if (!v82)
      {
        break;
      }

      if (v82 >= BYTE4(v26))
      {
        v90 = v31;
        v89 = v82;
        v88 = 0x4000;
        v87 = 15;
        v86 = (v31 + 536);
        v85 = 0;
        v99 = (v31 + 536);
        v150 = _dispatch_thread_getspecific(3);
        v98 = v150 & 0xFFFFFFFC;
        v97 = 0;
        v96 = 0;
        v94 = v150 & 0xFFFFFFFC;
        v93 = v150 & 0xFFFFFFFC;
        v95 = v150 & 0xFFFFFFFC;
        v13 = 0;
        atomic_compare_exchange_strong_explicit(v99, &v13, v150 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v13)
        {
          v97 = v13;
        }

        v92 = v13 == 0;
        v96 = v13 == 0;
        v91 = v96;
        if (v13)
        {
          _dispatch_unfair_lock_lock_slow(v99);
        }

        if (v89 >= *(v90 + 532))
        {
          v14 = *(v90 + 520) & ~(1 << v89);
          *(v90 + 520) = v14;
          v85 = v14;
          v89 &= 0xFCu;
          if ((v14 & (15 << v89)) == 0)
          {
            v102 = v90;
            v101 = v89;
            madvise((v90 + (v89 << 12)), 0x4000uLL, 5);
          }

          v89 = 0;
        }

        v100 = v86;
        v171 = v86;
        v170 = 0;
        v173 = _dispatch_thread_getspecific(3);
        v169 = v173 & 0xFFFFFFFC;
        v166 = 0;
        v165 = 0;
        v167 = 0;
        v164 = atomic_exchange_explicit(v171, 0, memory_order_release);
        v168 = v164;
        v163 = v164;
        v170 = v164;
        if (v164 == v169)
        {
          v172 = 0;
        }

        else
        {
          _dispatch_unfair_lock_unlock_slow(v171, v170);
          v174 = v170;
          v172 = (v170 & 2) != 0;
        }

        v24 = v89;
      }
    }

    if (!v24)
    {
      v106 = v27;
      v105 = BYTE4(v26);
      v104 = 0;
      v103 = 0;
      v115 = (v27 + 88);
      v151 = _dispatch_thread_getspecific(3);
      v114 = v151 & 0xFFFFFFFC;
      v113 = 0;
      v112 = 0;
      v110 = v151 & 0xFFFFFFFC;
      v109 = v151 & 0xFFFFFFFC;
      v111 = v151 & 0xFFFFFFFC;
      v15 = 0;
      atomic_compare_exchange_strong_explicit(v115, &v15, v151 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
      if (v15)
      {
        v113 = v15;
      }

      v108 = v15 == 0;
      v112 = v15 == 0;
      v107 = v112;
      if (v15)
      {
        _dispatch_unfair_lock_lock_slow(v115);
      }

      v103 = ~(*(v106 + 72) | (-1 << v105));
      if (v103)
      {
        v176 = v103;
        v178 = v103 != 0;
        v177 = 45;
        v104 = __clz(__rbit64(v103));
        *(v106 + 72) |= (1 << v104);
      }

      v116 = v106 + 88;
      v160 = (v106 + 88);
      v159 = 0;
      v162 = _dispatch_thread_getspecific(3);
      v158 = v162 & 0xFFFFFFFC;
      v155 = 0;
      v154 = 0;
      v156 = 0;
      v153 = atomic_exchange_explicit(v160, 0, memory_order_release);
      v157 = v153;
      v152 = v153;
      v159 = v153;
      if (v153 == v158)
      {
        v161 = 0;
      }

      else
      {
        _dispatch_unfair_lock_unlock_slow(v160, v159);
        v175 = v159;
        v161 = (v159 & 2) != 0;
      }

      v24 = v104;
    }
  }

  v23 = 1;
  if (!v24)
  {
    v23 = (v30[14] & 4) == 0;
  }

  if (v23)
  {
    if (!v24 && (v25 & 1) != 0)
    {
      v129 = v31;
      v128 = v28 != 0;
      v127 = v31 + 448;
      v125 = 1 << (16 * (v28 != 0));
      v124 = v125;
      v126 = v125;
      v120 = v125;
      v119 = v125;
      v121 = v125;
      add_explicit = atomic_fetch_add_explicit((v31 + 448), v125, memory_order_relaxed);
      v122 = add_explicit;
      v117 = add_explicit;
      v123 = add_explicit + v126;
    }

    return firehose_buffer_stream_chunk_install(v31, v30, v29, v24);
  }

  else
  {
    v16 = v30[12];
    v149 = v31;
    v148 = v16;
    v147 = 0;
    v146 = 0;
    v145 = (v31 + 640 + (v16 << 7));
    v143 = *v145;
    v144 = v143;
    v142 = v143;
    v147 = v143;
    if ((v143 & 0x400000000000) != 0)
    {
      v135 = 0;
      v134 = v145;
      v147 = *v145;
      do
      {
        LODWORD(v133) = v147 & 0xFFFFFFFD;
        BYTE4(v133) = BYTE4(v147);
        BYTE5(v133) = BYTE5(v133) & 0xC0 | BYTE5(v147) & 0x3F;
        BYTE5(v133) = BYTE5(v133) & 0xBF | 0x40;
        BYTE5(v133) = BYTE5(v133) & 0x7F | 0x80;
        HIWORD(v133) = HIWORD(v147);
        v146 = v133;
        v132 = v133;
        v19 = v147;
        v20 = v147;
        atomic_compare_exchange_strong_explicit(v134, &v20, v133, memory_order_relaxed, memory_order_relaxed);
        if (v20 != v19)
        {
          v147 = v20;
        }

        v131 = v20 == v19;
        v135 = v20 == v19;
      }

      while (v20 != v19);
      v130 = v135;
    }

    else
    {
      *(v145 + 1) = mach_continuous_time();
      v141 = 0;
      v140 = v145;
      v147 = *v145;
      do
      {
        LODWORD(v139) = v147 & 0xFFFFFFFD;
        BYTE4(v139) = BYTE4(v147);
        BYTE5(v139) = BYTE5(v139) & 0xC0 | BYTE5(v147) & 0x3F;
        BYTE5(v139) = BYTE5(v139) & 0xBF | 0x40;
        BYTE5(v139) = BYTE5(v139) & 0x7F | 0x80;
        HIWORD(v139) = HIWORD(v147);
        v146 = v139;
        v138 = v139;
        v17 = v147;
        v18 = v147;
        atomic_compare_exchange_strong_explicit(v140, &v18, v139, memory_order_release, memory_order_relaxed);
        if (v18 != v17)
        {
          v147 = v18;
        }

        v137 = v18 == v17;
        v141 = v18 == v17;
      }

      while (v18 != v17);
      v136 = v141;
    }

    v21 = *(v145 + 1);
    v182 = v148;
    v181 = v21;
    v180 = v147;
    v179 = v146;
    v187 = 772145168;
    v186 = v148;
    v185 = v21;
    v184 = v147;
    v183 = v146;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    if ((v147 & 2) != 0)
    {
      _dispatch_gate_broadcast_slow(v145, v147);
    }

    v30[13] = v25 & 1;
    return firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(v31, v30, v29, v3, v4, v5, v6, v7);
  }
}

BOOL firehose_drain_notifications_once(uint64_t a1)
{
  v30 = a1;
  v29 = 67109126;
  v28 = 56;
  v27 = 36;
  v26 = 124;
  v21 = v15;
  bzero(v15, 0x7CuLL);
  v25 = v21;
  v24 = 0;
  v24 = mach_msg(v21, v29, 0, v26, *(v30 + 1688), 0, 0);
  if (v24)
  {
    if (v24 != 268451843)
    {
      v22 = v24;
      v14[4] = v1;
      v14[5] = v2;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: firehose_drain_notifications_once() failed";
      qword_E42C0 = v24;
      __break(1u);
      JUMPOUT(0x9BBCCLL);
    }
  }

  else
  {
    v23[0] = 0;
    v23[1] = "firehose";
    v23[2] = v30;
    v31 = v23;
    v18 = 23;
    v3 = _dispatch_thread_getspecific(23);
    v4 = v18;
    *v31 = v3;
    _dispatch_thread_setspecific(v4, v31);
    v19 = v15;
    v40 = firehoseReply_server;
    v39 = 36;
    v38 = v25;
    v20 = v14;
    bzero(v14, 0x24uLL);
    v37 = v20;
    v36 = 0;
    v35 = (v38->msgh_bits & 0x1F) == 18;
    v5 = v20;
    v34 = 0;
    v33 = 0uLL;
    v20[2] = 0;
    *v5 = 0uLL;
    if (v40(v38, v37))
    {
      if ((*(v37 + 3) & 0x80) != 0)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(v37 + 8);
      }
    }

    else
    {
      v36 = -303;
    }

    v17 = 0;
    if (!v36)
    {
      v17 = v35;
    }

    if (v17)
    {
      v32 = *(v37 + 5);
      qword_E4290 = "BUG IN LIBDISPATCH: firehose_mig_server doesn't handle replies";
      qword_E42C0 = v32;
      __break(1u);
      JUMPOUT(0x9BAC8);
    }

    v16 = 0;
    if (v36)
    {
      v16 = v36 != -305;
    }

    if (v16)
    {
      v38->msgh_remote_port = 0;
      mach_msg_destroy(v38);
    }

    v41 = v23;
    v12 = _dispatch_thread_getspecific(23) == v23;
    v43 = v12;
    v42 = 449;
    if (!v12)
    {
      _dispatch_abort(v42, v43, v6, v7, v8, v9, v10, v11);
    }

    _dispatch_thread_setspecific(23, *v41);
  }

  return v24 == 0;
}

char *firehose_buffer_stream_chunk_install(mach_port_context_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v114 = a1;
  v113 = a2;
  v112 = a3;
  v111 = a4;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = a1;
  v105 = (a1 + 640 + (*(a2 + 12) << 7));
  if (a4)
  {
    v104 = 0;
    v103 = 0;
    v116 = v114;
    v115 = v111;
    v102 = (v114 + (v111 << 12));
    v100 = *v102;
    v101 = v100;
    v99 = v100;
    if (v100)
    {
      __memset_chk();
    }

    if (*(v113 + 12) == 3)
    {
      v97 = 1 << v111;
      v96 = 1 << v111;
      v98 = 1 << v111;
      v92 = 1 << v111;
      v91 = 1 << v111;
      v93 = 1 << v111;
      v90 = atomic_fetch_or_explicit((v106 + 456), 1 << v111, memory_order_relaxed);
      v94 = v90;
      v89 = v90;
      v95 = v90 | (1 << v111);
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v104 = *(StatusReg - 8);
    v87 = *v105;
    v88 = v87;
    v86 = v87;
    v110 = v87;
    if ((v87 & 0x3F0000000000) == 0)
    {
      v154 = v102;
      v153 = v113;
      v152 = v112;
      v151 = v104;
      v150 = 0;
      v149 = 0;
      v148 = 0;
      v147 = 0;
      v146 = 24;
      v145 = 16;
      v144 = 4096;
      v159 = *v113;
      if (v159 > 0x1000000000)
      {
        v36 = v159 - 0x1000000000;
      }

      else
      {
        v36 = 0;
      }

      *(v154 + 1) = v36;
      v148 = v154 + 16;
      if ((*(v153 + 8) + 24) % 8)
      {
        v35 = *(v153 + 8) + 24 + 8 - (*(v153 + 8) + 24) % 8;
      }

      else
      {
        v35 = *(v153 + 8) + 24;
      }

      v145 += v35;
      v144 -= *(v153 + 10);
      v147 = *v153 - *(v154 + 1);
      v147 |= *(v153 + 8) << 48;
      v143 = v147;
      v142 = v147;
      *(v148 + 2) = v147;
      v141 = v143;
      *(v148 + 1) = v151;
      __src[0] = v145;
      __src[1] = v144;
      __src[2] = 1;
      LOBYTE(__src[3]) = *(v153 + 12);
      HIBYTE(__src[3]) &= ~1u;
      HIBYTE(__src[3]) = HIBYTE(__src[3]) & 0xFD | (2 * (*(v153 + 14) & 1));
      HIBYTE(__src[3]) = HIBYTE(__src[3]) & 0xFB | (4 * ((*(v153 + 14) & 2) != 0));
      HIBYTE(__src[3]) &= 7u;
      memcpy(v154, __src, 8uLL);
      if (v152)
      {
        *v152 = &v154[v144];
      }

      v108 = v148;
      v85 = 0;
      v84 = v105;
      v110 = *v105;
      do
      {
        if ((v110 & 0x3F0000000000) != 0)
        {
          break;
        }

        LODWORD(v83) = 0;
        WORD2(v83) = __PAIR16__(BYTE5(v83), v111) & 0xC0FF;
        BYTE5(v83) &= 0x3Fu;
        HIWORD(v83) = HIWORD(v110) + 1;
        v109 = v83;
        v82 = v83;
        v4 = v110;
        v5 = v110;
        atomic_compare_exchange_strong_explicit(v84, &v5, v83, memory_order_release, memory_order_relaxed);
        v33 = v5;
        v34 = v5 == v4;
        if (v5 != v4)
        {
          v110 = v33;
        }

        v81 = v34;
        v85 = v34;
      }

      while (!v34);
      v80 = v85;
      v103 = v85 != 0;
    }

    if (!v103)
    {
      v79 = 0;
      v78 = 0;
      explicit = atomic_load_explicit(v105, memory_order_acquire);
      v77 = explicit;
      v75 = explicit;
      v79 = *(v105 + 1);
      *(v105 + 1) = 0;
      v78 = mach_continuous_time();
      __dst = v102;
      v138 = v113;
      v137 = v112;
      v136 = v104;
      v135 = &v107;
      v134 = v79;
      v133 = 0;
      v132 = 0;
      v131 = 24;
      v130 = 16;
      v129 = 4096;
      if (&v17 == -608)
      {
        v161 = *v138;
        if (v161 > 0x1000000000)
        {
          v29 = v161 - 0x1000000000;
        }

        else
        {
          v29 = 0;
        }

        *(__dst + 1) = v29;
        v133 = __dst + 16;
      }

      else
      {
        v128 = 24;
        v127 = 0;
        v126 = 0;
        v125 = 0;
        if (*v138 >= v134)
        {
          v32 = v134;
        }

        else
        {
          v32 = *v138;
        }

        v126 = v32;
        v160 = v32;
        if (v32 > 0x1000000000)
        {
          v31 = v160 - 0x1000000000;
        }

        else
        {
          v31 = 0;
        }

        *(__dst + 1) = v31;
        v6 = *v138;
        v165 = __dst;
        v164 = v6;
        if ((v6 - *(__dst + 1)) >> 48)
        {
          *(__dst + 1) = *v138 - 0x1000000000;
        }

        *v135 = (__dst + 16);
        v163 = __dst;
        v162 = v134;
        if ((v134 - *(__dst + 1)) >> 48)
        {
          v30 = *v138;
        }

        else
        {
          v30 = v134;
        }

        v127 = v30;
        v132 = (v30 - *(__dst + 1)) | 0x18000000000000;
        v124 = v132;
        v7 = *v135;
        v123 = v132;
        v7[2] = v132;
        v122 = v124;
        (*v135)[1] = v136;
        v125 = 48;
        v130 += 48;
        v133 = __dst + 64;
      }

      if ((*(v138 + 8) + 24) % 8)
      {
        v28 = *(v138 + 8) + 24 + 8 - (*(v138 + 8) + 24) % 8;
      }

      else
      {
        v28 = *(v138 + 8) + 24;
      }

      v130 += v28;
      v129 -= *(v138 + 10);
      v132 = *v138 - *(__dst + 1);
      v132 |= *(v138 + 8) << 48;
      v121 = v132;
      v120 = v132;
      *(v133 + 2) = v132;
      v119 = v121;
      *(v133 + 1) = v136;
      v118[0] = v130;
      v118[1] = v129;
      v118[2] = 1;
      LOBYTE(v118[3]) = *(v138 + 12);
      HIBYTE(v118[3]) &= ~1u;
      HIBYTE(v118[3]) = HIBYTE(v118[3]) & 0xFD | (2 * (*(v138 + 14) & 1));
      HIBYTE(v118[3]) = HIBYTE(v118[3]) & 0xFB | (4 * ((*(v138 + 14) & 2) != 0));
      HIBYTE(v118[3]) &= 7u;
      memcpy(__dst, v118, 8uLL);
      if (v137)
      {
        *v137 = __dst + v129;
      }

      v108 = v133;
      v74 = 0;
      v73 = v105;
      v110 = *v105;
      do
      {
        LODWORD(v72) = 0;
        WORD2(v72) = __PAIR16__(BYTE5(v72), v111) & 0xC0FF;
        BYTE5(v72) &= ~0x40u;
        BYTE5(v72) &= ~0x80u;
        HIWORD(v72) = HIWORD(v110) + 1;
        v109 = v72;
        v71 = v72;
        v8 = v110;
        v9 = v110;
        atomic_compare_exchange_strong_explicit(v73, &v9, v72, memory_order_release, memory_order_relaxed);
        v26 = v9;
        v27 = v9 == v8;
        if (v9 != v8)
        {
          v110 = v26;
        }

        v70 = v27;
        v74 = v27;
      }

      while (!v27);
      v69 = v74;
      v66 = v79;
      v67 = v78;
      v68 = BYTE5(v110) & 0x3F;
      __memcpy_chk();
      v65 = 7;
      HIDWORD(v65) = *(v113 + 12);
      v64 = v65;
      v63 = v65;
      atomic_store(v65, v107);
      v62 = v64;
    }
  }

  else
  {
    v60 = *v105;
    v61 = v60;
    v59 = v60;
    v110 = v60;
    if ((v60 & 0x400000000000) != 0)
    {
      v52 = 0;
      v51 = v105;
      v110 = *v105;
      do
      {
        LODWORD(v50) = 0;
        BYTE4(v50) = 0;
        if ((BYTE5(v110) & 0x3Fu) + 1 >= 0x3F)
        {
          v22 = 63;
        }

        else
        {
          v22 = (BYTE5(v110) & 0x3F) + 1;
        }

        BYTE5(v50) = v22 & 0x3F | 0x40;
        HIWORD(v50) = HIWORD(v110);
        v109 = v50;
        v49 = v50;
        v12 = v110;
        v13 = v110;
        atomic_compare_exchange_strong_explicit(v51, &v13, v50, memory_order_relaxed, memory_order_relaxed);
        v20 = v13;
        v21 = v13 == v12;
        if (v13 != v12)
        {
          v110 = v20;
        }

        v48 = v21;
        v52 = v21;
      }

      while (!v21);
      v47 = v52;
    }

    else
    {
      *(v105 + 1) = mach_continuous_time();
      v58 = 0;
      v57 = v105;
      v110 = *v105;
      do
      {
        LODWORD(v56) = 0;
        BYTE4(v56) = 0;
        if ((BYTE5(v110) & 0x3Fu) + 1 >= 0x3F)
        {
          v25 = 63;
        }

        else
        {
          v25 = (BYTE5(v110) & 0x3F) + 1;
        }

        BYTE5(v56) = v25 & 0x3F | 0x40;
        HIWORD(v56) = HIWORD(v110);
        v109 = v56;
        v55 = v56;
        v10 = v110;
        v11 = v110;
        atomic_compare_exchange_strong_explicit(v57, &v11, v56, memory_order_release, memory_order_relaxed);
        v23 = v11;
        v24 = v11 == v10;
        if (v11 != v10)
        {
          v110 = v23;
        }

        v54 = v24;
        v58 = v24;
      }

      while (!v24);
      v53 = v58;
    }
  }

  v14 = *(v113 + 8);
  v158 = *v113;
  v157 = v14;
  v156 = v110;
  v155 = v109;
  v170 = 772145172;
  v169 = v158;
  v168 = v14;
  v167 = v110;
  v166 = v109;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if ((v110 & 3) != 0)
  {
    _dispatch_gate_broadcast_slow(v105, v110);
  }

  if (BYTE4(v110) == 255)
  {
    firehose_buffer_update_limits(v114);
  }

  v45 = *(v106 + 1696);
  v46 = v45;
  v44 = v45;
  if (v45 == 1)
  {
    v43 = 1;
    v42 = 0;
    v40 = 2;
    v39 = 2;
    v41 = 2;
    v15 = 1;
    atomic_compare_exchange_strong_explicit((v106 + 1696), &v15, 2u, memory_order_relaxed, memory_order_relaxed);
    v18 = v15;
    v19 = v15 == 1;
    if (1 != v15)
    {
      v43 = v18;
    }

    v38 = v19;
    v42 = v19;
    v37 = v42;
    if (v19)
    {
      firehose_client_start_quarantine(v114);
    }
  }

  return v108;
}

char *firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(mach_port_context_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = *(a2 + 14) & 1;
  v29 = v30 & 1;
  v28 = a1 + 448;
  v27 = 0;
  v24 = 5;
  do
  {
    v8 = v24--;
    v23 = 0;
    if (v8)
    {
      v23 = firehose_drain_notifications_once(v33);
    }
  }

  while (v23);
  if (*(v32 + 13))
  {
    v25 = *(v28 + 4);
    goto LABEL_23;
  }

  v27 = *v28;
  while (1)
  {
    v48 = v33;
    v47 = v30 & 1;
    v46 = &v27;
    v45 = 0;
    v44 = (v33 + 448);
    v43 = v27;
    v42 = 0;
    do
    {
      if (!*(&v43 + (v47 & 1)))
      {
        v49 = 0;
        goto LABEL_14;
      }

      v42 = v43;
      --*(&v42 + (v47 & 1));
      v41 = v43;
      v40 = 0;
      v38 = v42;
      v37 = v42;
      v39 = v42;
      v9 = v43;
      v10 = v43;
      atomic_compare_exchange_strong_explicit(v44, &v10, v42, memory_order_acquire, memory_order_acquire);
      if (v10 != v9)
      {
        v41 = v10;
      }

      v36 = v10 == v9;
      v40 = v10 == v9;
      v43 = v41;
      v35 = v40;
      v45 = v10 == v9;
    }

    while (v10 != v9);
    *v46 = v42;
    v49 = 1;
LABEL_14:
    if (v49)
    {
      break;
    }

    if ((*(v32 + 14) & 2) != 0)
    {
      __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(v33, v30 & 1, &v27, a4, a5, a6, a7, a8);
    }

    else
    {
      firehose_client_send_push_and_wait(v33, v30 & 1, &v27, a4, a5, a6, a7, a8);
    }

    if (*(v33 + 1680 + 4 * v29) == -1)
    {
      return 0;
    }
  }

  v25 = BYTE4(v27);
  do
  {
LABEL_23:
    while (1)
    {
      v83 = v33;
      v82 = 0;
      v81 = 0;
      v80 = 0;
      v79 = 0;
      v78 = 0;
      v77 = 0;
      v76 = 0;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      v72 = (v33 + 256);
      v81 = *(v33 + 256);
      do
      {
        v82 = v81;
        if (v81 == WORD1(v81))
        {
          if (WORD2(v81) == HIWORD(v81))
          {
            v84 = 0;
            goto LABEL_45;
          }

          ++WORD2(v82);
        }

        else
        {
          LOWORD(v82) = v82 + 1;
        }

        v71 = v82;
        v11 = v81;
        v12 = v81;
        atomic_compare_exchange_strong_explicit(v72, &v12, v82, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v11)
        {
          v81 = v12;
        }

        v70 = v12 == v11;
        v73 = v12 == v11;
      }

      while (v12 != v11);
      v69 = v73;
      v74 = WORD2(v82) != WORD2(v81);
      if (WORD2(v82) == WORD2(v81))
      {
        v80 = v83;
        v77 = v81 & 0x3F;
      }

      else
      {
        v80 = v83 + 128;
        v77 = BYTE4(v81) & 0x3F;
      }

      v68 = 0;
      option_time = -1024;
      while (1)
      {
        v78 = *(v80 + 2 * v77);
        v68 = v78 & 0x3F;
        if ((v78 & 0x3F) != 0)
        {
          break;
        }

        v13 = option_time++;
        if ((v13 & 0x80000000) != 0)
        {
          __yield();
        }

        else
        {
          thread_switch(0, 4, option_time);
        }
      }

      v66 = v68;
      v79 = (v78 & 0xFFC0) + 64;
      v76 = v78 & 0x3F;
      v86 = v83;
      v85 = v78 & 0x3F;
      v75 = v83 + ((v78 & 0x3F) << 12);
      if (!v74 && *(v75 + 6) == 3)
      {
        v64 = ~(1 << v76);
        v63 = v64;
        v65 = v64;
        v59 = v64;
        v58 = v64;
        v60 = v64;
        v57 = atomic_fetch_and_explicit((v83 + 456), v64, memory_order_relaxed);
        v61 = v57;
        v56 = v57;
        v62 = v57 & v65;
      }

      v55 = 0x100000000000000;
      v54 = 0x100000000000000;
      *v75 = 0x100000000000000;
      v53 = v55;
      v52 = v79;
      v51 = v79;
      *(v80 + 2 * v77) = v79;
      v50 = v52;
      v84 = v76;
LABEL_45:
      v26 = v84;
      if (!v84)
      {
        break;
      }

      if (v84 >= v25)
      {
        v92 = v33;
        v91 = v84;
        v90 = 0x4000;
        v89 = 15;
        v88 = (v33 + 536);
        v87 = 0;
        v101 = (v33 + 536);
        v119 = _dispatch_thread_getspecific(3);
        v100 = v119 & 0xFFFFFFFC;
        v99 = 0;
        v98 = 0;
        v96 = v119 & 0xFFFFFFFC;
        v95 = v119 & 0xFFFFFFFC;
        v97 = v119 & 0xFFFFFFFC;
        v14 = 0;
        atomic_compare_exchange_strong_explicit(v101, &v14, v119 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v14)
        {
          v99 = v14;
        }

        v94 = v14 == 0;
        v98 = v14 == 0;
        v93 = v98;
        if (v14)
        {
          _dispatch_unfair_lock_lock_slow(v101);
        }

        if (v91 >= *(v92 + 532))
        {
          v15 = *(v92 + 520) & ~(1 << v91);
          *(v92 + 520) = v15;
          v87 = v15;
          v91 &= 0xFCu;
          if ((v15 & (15 << v91)) == 0)
          {
            v104 = v92;
            v103 = v91;
            madvise((v92 + (v91 << 12)), 0x4000uLL, 5);
          }

          v91 = 0;
        }

        v102 = v88;
        v140 = v88;
        v139 = 0;
        v142 = _dispatch_thread_getspecific(3);
        v138 = v142 & 0xFFFFFFFC;
        v135 = 0;
        v134 = 0;
        v136 = 0;
        v133 = atomic_exchange_explicit(v140, 0, memory_order_release);
        v137 = v133;
        v132 = v133;
        v139 = v133;
        if (v133 == v138)
        {
          v141 = 0;
        }

        else
        {
          _dispatch_unfair_lock_unlock_slow(v140, v139);
          v143 = v139;
          v141 = (v139 & 2) != 0;
        }

        v26 = v91;
        if (!v91)
        {
          continue;
        }
      }

      return firehose_buffer_stream_chunk_install(v33, v32, v31, v26);
    }

    v108 = v28;
    v107 = v25;
    v106 = 0;
    v105 = 0;
    v117 = (v28 + 88);
    v120 = _dispatch_thread_getspecific(3);
    v116 = v120 & 0xFFFFFFFC;
    v115 = 0;
    v114 = 0;
    v112 = v120 & 0xFFFFFFFC;
    v111 = v120 & 0xFFFFFFFC;
    v113 = v120 & 0xFFFFFFFC;
    v16 = 0;
    atomic_compare_exchange_strong_explicit(v117, &v16, v120 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v16)
    {
      v115 = v16;
    }

    v110 = v16 == 0;
    v114 = v16 == 0;
    v109 = v114;
    if (v16)
    {
      _dispatch_unfair_lock_lock_slow(v117);
    }

    v105 = ~(*(v108 + 72) | (-1 << v107));
    if (v105)
    {
      v145 = v105;
      v147 = v105 != 0;
      v146 = 45;
      v106 = __clz(__rbit64(v105));
      *(v108 + 72) |= (1 << v106);
    }

    v118 = v108 + 88;
    v129 = (v108 + 88);
    v128 = 0;
    v131 = _dispatch_thread_getspecific(3);
    v127 = v131 & 0xFFFFFFFC;
    v124 = 0;
    v123 = 0;
    v125 = 0;
    v122 = atomic_exchange_explicit(v129, 0, memory_order_release);
    v126 = v122;
    v121 = v122;
    v128 = v122;
    if (v122 == v127)
    {
      v130 = 0;
    }

    else
    {
      _dispatch_unfair_lock_unlock_slow(v129, v128);
      v144 = v128;
      v130 = (v128 & 2) != 0;
    }

    v26 = v106;
    if (v106)
    {
      break;
    }

    if ((*(v32 + 14) & 2) != 0)
    {
      __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(v33, v30 & 1, 0, v17, v18, v19, v20, v21);
    }

    else
    {
      firehose_client_send_push_and_wait(v33, v30 & 1, 0, v17, v18, v19, v20, v21);
    }
  }

  while (*(v33 + 1680 + 4 * v29) != -1);
  return firehose_buffer_stream_chunk_install(v33, v32, v31, v26);
}

void firehose_client_start_quarantine(mach_port_context_t a1)
{
  if (*_voucher_libtrace_hooks > 4 && *(_voucher_libtrace_hooks + 40))
  {
    (*(_voucher_libtrace_hooks + 40))();
    *(a1 + 1697) = 1;
    v29 = *(a1 + 768);
    if (BYTE4(v29) && BYTE4(*(a1 + 768)) != 255)
    {
      v41 = (a1 + (BYTE4(v29) << 12));
      v40 = -1;
      v39 = 1;
      v38 = 0;
      v37 = 1;
      v36 = 0;
      v35 = 0;
      v34 = 24;
      i = 0;
      v32 = 0;
      v30 = (-1 - v41[1]) >> 48 == 0;
      for (i = *v41; ; i = v9)
      {
        if (!i)
        {
          v42 = 0;
          goto LABEL_31;
        }

        if ((HIWORD(i) & 0x1FF) != v39)
        {
          v42 = 0;
          goto LABEL_31;
        }

        v32 = i;
        p_i = &i;
        v91 = v37 + v36 + 24;
        if (i + v91 <= WORD1(i) && v30)
        {
          if (v38 > BYTE5(v32))
          {
            BYTE5(v32) = v38;
          }

          if (((v37 + 24) & 7) != 0)
          {
            v19 = ((v37 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v19 = v37 + 24;
          }

          v32 += v19;
          v32 -= v36 << 16;
          v32 += 0x100000000;
          v90 = &v32;
          v89 = 40;
          if (v32 + 40 > WORD1(v32))
          {
            HIBYTE(v32) |= 1u;
          }

          v31 = 0;
        }

        else
        {
          HIBYTE(v32) |= 1u;
          v31 = 1;
        }

        v8 = i;
        v9 = i;
        atomic_compare_exchange_strong_explicit((a1 + (BYTE4(v29) << 12)), &v9, v32, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          break;
        }
      }

      if (v31)
      {
        if (BYTE4(v32))
        {
          v42 = 0;
        }

        else
        {
          v42 = -1;
        }
      }

      else
      {
        if (v35)
        {
          *v35 = v41 + WORD1(v32);
        }

        v42 = i;
      }

LABEL_31:
      v27 = v42;
      if (v42 < 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v29));
      }

      if (v27 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v27;
        __break(1u);
        JUMPOUT(0x9DD74);
      }

      v28 = v29;
      BYTE4(v28) = 0;
      v10 = v29;
      atomic_compare_exchange_strong_explicit((a1 + 768), &v10, v28, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(a1, v1, v2, v3, v4, v5, v6, v7);
    }

    v26 = *(a1 + 640);
    if (BYTE4(v26) && BYTE4(*(a1 + 640)) != 255)
    {
      v60 = a1 + (BYTE4(v26) << 12);
      v59 = -1;
      v58 = 0;
      v57 = 0;
      v56 = 1;
      v55 = 0;
      v54 = 0;
      v53 = 24;
      v52 = 0;
      v51 = 0;
      v50 = 0;
      v49 = 0;
      v49 = (-1 - *(v60 + 8)) >> 48 == 0;
      v48 = 0;
      v47 = v60;
      v52 = *v60;
      do
      {
        if (!v52)
        {
          v61 = 0;
          goto LABEL_65;
        }

        if ((HIWORD(v52) & 0x1FF) != v58)
        {
          v61 = 0;
          goto LABEL_65;
        }

        v51 = v52;
        v88 = &v52;
        v87 = v56 + v55 + 24;
        if (v52 + v87 <= WORD1(v52) && v49)
        {
          if (v57 > BYTE5(v51))
          {
            BYTE5(v51) = v57;
          }

          if (((v56 + 24) & 7) != 0)
          {
            v18 = ((v56 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v18 = v56 + 24;
          }

          v51 += v18;
          v51 -= v55 << 16;
          v51 += 0x100000000;
          v46 = 16;
          v86 = &v51;
          v85 = 40;
          if (v51 + 40 > WORD1(v51))
          {
            HIBYTE(v51) |= 1u;
          }

          v50 = 0;
        }

        else
        {
          HIBYTE(v51) |= 1u;
          v50 = 1;
        }

        v45 = v51;
        v11 = v52;
        v12 = v52;
        atomic_compare_exchange_strong_explicit(v47, &v12, v51, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v11)
        {
          v52 = v12;
        }

        v44 = v12 == v11;
        v48 = v12 == v11;
      }

      while (v12 != v11);
      v43 = v48;
      if (v50)
      {
        if (BYTE4(v51))
        {
          v61 = 0;
        }

        else
        {
          v61 = -1;
        }
      }

      else
      {
        if (v54)
        {
          *v54 = v60 + WORD1(v51);
        }

        v61 = v52;
      }

LABEL_65:
      v24 = v61;
      if (v61 < 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v26));
      }

      if (v24 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v24;
        __break(1u);
        JUMPOUT(0x9E208);
      }

      v25 = v26;
      BYTE4(v25) = 0;
      v13 = v26;
      atomic_compare_exchange_strong_explicit((a1 + 640), &v13, v25, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(a1, v1, v2, v3, v4, v5, v6, v7);
    }

    v23 = *(a1 + 896);
    if (BYTE4(v23) && BYTE4(*(a1 + 896)) != 255)
    {
      v79 = a1 + (BYTE4(v23) << 12);
      v78 = -1;
      v77 = 2;
      v76 = 0;
      v75 = 1;
      v74 = 0;
      v73 = 0;
      v72 = 24;
      v71 = 0;
      v70 = 0;
      v69 = 0;
      v68 = 0;
      v68 = (-1 - *(v79 + 8)) >> 48 == 0;
      v67 = 0;
      v66 = v79;
      v71 = *v79;
      do
      {
        if (!v71)
        {
          v80 = 0;
          goto LABEL_99;
        }

        if ((HIWORD(v71) & 0x1FF) != v77)
        {
          v80 = 0;
          goto LABEL_99;
        }

        v70 = v71;
        v84 = &v71;
        v83 = v75 + v74 + 24;
        if (v71 + v83 <= WORD1(v71) && v68)
        {
          if (v76 > BYTE5(v70))
          {
            BYTE5(v70) = v76;
          }

          if (((v75 + 24) & 7) != 0)
          {
            v17 = ((v75 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v17 = v75 + 24;
          }

          v70 += v17;
          v70 -= v74 << 16;
          v70 += 0x100000000;
          v65 = 16;
          v82 = &v70;
          v81 = 40;
          if (v70 + 40 > WORD1(v70))
          {
            HIBYTE(v70) |= 1u;
          }

          v69 = 0;
        }

        else
        {
          HIBYTE(v70) |= 1u;
          v69 = 1;
        }

        v64 = v70;
        v14 = v71;
        v15 = v71;
        atomic_compare_exchange_strong_explicit(v66, &v15, v70, memory_order_relaxed, memory_order_relaxed);
        if (v15 != v14)
        {
          v71 = v15;
        }

        v63 = v15 == v14;
        v67 = v15 == v14;
      }

      while (v15 != v14);
      v62 = v67;
      if (v69)
      {
        if (BYTE4(v70))
        {
          v80 = 0;
        }

        else
        {
          v80 = -1;
        }
      }

      else
      {
        if (v73)
        {
          *v73 = v79 + WORD1(v70);
        }

        v80 = v71;
      }

LABEL_99:
      v21 = v80;
      if (v80 < 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v23));
      }

      if (v21 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v21;
        __break(1u);
        JUMPOUT(0x9E6A0);
      }

      v22 = v23;
      BYTE4(v22) = 0;
      v16 = v23;
      atomic_compare_exchange_strong_explicit((a1 + 896), &v16, v22, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(a1, v1, v2, v3, v4, v5, v6, v7);
    }
  }
}

void firehose_client_send_push_and_wait(mach_port_context_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a2 & 1;
  v24 = *(a1 + 4 * (a2 & 1) + 1680);
  __s1 = 0uLL;
  v22 = 0;
  v21 = 0;
  if (v24 == -1)
  {
    return;
  }

  if (v24)
  {
    v21 = firehose_send_push_and_wait(v24, &__s1, &v22);
    if (!v21)
    {
      goto LABEL_23;
    }

    if (v21 != 268435459)
    {
      if (v21 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x9E880);
      }

      v20 = v21;
      v32 = v21;
      v31 = 680;
      _dispatch_bug(v31, v32, v8, a4, a5, a6, a7, a8);
      v19 = v20;
    }
  }

  v24 = firehose_client_reconnect(v28, v24, v25, a4, a5, a6, a7, a8);
  v15 = 0;
  if (v24)
  {
    v15 = v24 != -1;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

  v21 = firehose_send_push_and_wait(v24, &__s1, &v22);
  if (v21)
  {
    if (v21 != 268435459)
    {
      if (v21 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x9E994);
      }

      v18 = v21;
      v30 = v21;
      v29 = 692;
      _dispatch_bug(v29, v30, v9, v10, v11, v12, v13, v14);
      v17 = v18;
    }

LABEL_20:
    if (v26)
    {
      *v26 = *(v28 + 448);
    }

    return;
  }

LABEL_23:
  __s2[0] = -1;
  __s2[1] = -1;
  if (!memcmp(&__s1, __s2, 0x10uLL))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Memory corruption in the logging buffers";
    __break(1u);
    JUMPOUT(0x9EA68);
  }

  if (v27)
  {
    atomic_fetch_add_explicit((v28 + 504), 1uLL, memory_order_relaxed);
  }

  else
  {
    atomic_fetch_add_explicit((v28 + 480), 1uLL, memory_order_relaxed);
  }

  firehose_client_merge_updates(v28, 0, __s1, *(&__s1 + 1), v22 != 0, v26);
}

uint64_t _dispatch_iocntl(uint64_t result, uint64_t a2)
{
  switch(result)
  {
    case 1:
      dispatch_io_defaults = a2 * vm_page_size;
      break;
    case 2:
      qword_E4270 = a2;
      break;
    case 3:
      byte_E4280 = a2 != 0;
      break;
    case 4:
      qword_E4278 = a2;
      break;
  }

  return result;
}

void _dispatch_io_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_io_dispose");
  if (*(a1 + 112) && (*(a1 + 120) & 3) == 0)
  {
    if (*(*(a1 + 112) + 8))
    {
      **(*(a1 + 112) + 8) = 0;
    }

    _dispatch_fd_entry_release(*(a1 + 112));
  }

  if (*(a1 + 48))
  {
    dispatch_release(*(a1 + 48));
  }

  if (*(a1 + 56))
  {
    dispatch_release(*(a1 + 56));
  }

  if (*(a1 + 64))
  {
    dispatch_release(*(a1 + 64));
  }
}

void *_dispatch_io_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _dispatch_object_alloc(_OS_dispatch_io_vtable, 0x98uLL, a3, a4, a5, a6, a7, a8);
  v9[2] = -1985229329;
  v9[3] = &off_E0680;
  v9[9] = a1;
  v9[11] = -1;
  v9[10] = qword_E4270 * dispatch_io_defaults;
  v9[6] = dispatch_queue_create("com.apple.libdispatch-io.channelq", 0);
  return v9;
}

void _dispatch_fd_entry_init_async(int a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v13 = &_dispatch_io_init_pred;
  v12 = 0;
  v11 = _dispatch_io_queues_init;
  if (_dispatch_io_init_pred != -1)
  {
    dispatch_once_f(v13, v12, v11);
  }

  block = _NSConcreteStackBlock;
  v3 = 1107296256;
  v4 = 0;
  v5 = ___dispatch_fd_entry_init_async_block_invoke;
  v6 = &__block_descriptor_tmp_175;
  v8 = v10;
  v7 = v9;
  dispatch_channel_async(_dispatch_io_fds_lockq, &block);
}

void __dispatch_io_create_block_invoke(uint64_t *a1, uint64_t a2)
{
  v17 = *(a2 + 24);
  if (!v17)
  {
    v17 = _dispatch_io_validate_type(a1[5], *(a2 + 36));
  }

  if (!v17 && a1[6] == 1)
  {
    do
    {
      v16 = lseek(*a2, 0, 1);
      if (v16 == -1)
      {
        v14 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v14 = 0;
      }

      v17 = v14;
      if (!v14)
      {
        *(a1[5] + 136) = v16;
        goto LABEL_13;
      }
    }

    while (v14 == 4);
    _dispatch_bug(389, v14, v2, v3, v4, v5, v6, v7);
  }

LABEL_13:
  *(a1[5] + 144) = v17;
  _dispatch_fd_entry_retain(a2);
  _dispatch_io_init(a1[5], a2, a1[7], v17, a1[4]);
  dispatch_resume(*(a1[5] + 48));
  _dispatch_object_debug(a1[5], "%s", v8, v9, v10, v11, v12, v13, "dispatch_io_create_block_invoke");
  _dispatch_release(a1[5]);
  _dispatch_release(a1[7]);
}

uint64_t _dispatch_io_validate_type(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if ((a2 & 0xF000) == 0x4000)
  {
    return 21;
  }

  else if (*(a1 + 72) == 1 && ((a2 & 0xF000) == 0x1000 || (a2 & 0xF000) == 0xC000))
  {
    return 29;
  }

  return v3;
}

void _dispatch_io_init(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  if (a5)
  {
    v16 = v19;
    _dispatch_retain(v19);
    if (v18)
    {
      queue = v21[6];
    }

    else
    {
      queue = *(v20 + 64);
    }

    block = _NSConcreteStackBlock;
    v8 = 1107296256;
    v9 = 0;
    v10 = ___dispatch_io_init_block_invoke;
    v11 = &__block_descriptor_tmp_105;
    v13 = v19;
    v14 = v21;
    v15 = v18;
    v12 = v17;
    dispatch_channel_async(queue, &block);
  }

  if (v20)
  {
    v21[14] = v20;
    dispatch_retain(*(v20 + 72));
    dispatch_retain(*(v20 + 80));
    v21[7] = *(v20 + 72);
    v21[8] = *(v20 + 80);
  }

  else
  {
    v5 = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
    v21[7] = v5;
    v21[8] = dispatch_group_create();
  }
}

dispatch_io_t dispatch_io_create_f(dispatch_io_type_t a1, dispatch_fd_t a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (!a5)
  {
    return dispatch_io_create(a1, a2, a3, 0);
  }

  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_create_f_block_invoke;
  v10 = &__block_descriptor_tmp_4;
  v11 = v13;
  v12 = v14;
  return dispatch_io_create(a1, a2, a3, &v6);
}

dispatch_io_t dispatch_io_create_with_path(dispatch_io_type_t type, const char *path, int oflag, mode_t mode, dispatch_queue_t queue, void *cleanup_handler)
{
  v47 = type;
  v46 = path;
  v45 = oflag;
  v44 = mode;
  v43 = queue;
  v42 = cleanup_handler;
  if (type && v47 != 1)
  {
    return 0;
  }

  if (*v46 != 47)
  {
    return 0;
  }

  v41 = strlen(v46);
  v40 = malloc_type_malloc();
  if (!v40)
  {
    return 0;
  }

  v39 = _dispatch_io_create(v47, v6, v7, v8, v9, v10, v11, v12);
  *(v39 + 31) = -1;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: create with path %s", v13, v14, v15, v16, v17, v18, v19, 444);
  *(v39 + 32) = -1;
  *v40 = v39;
  *(v40 + 8) = v45;
  *(v40 + 12) = v44;
  *(v40 + 16) = v41;
  __memcpy_chk();
  v38 = v43;
  _dispatch_retain(v43);
  v37 = v39;
  _dispatch_retain(v39);
  v20 = v39[6];
  block = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = 0;
  v31 = __dispatch_io_create_with_path_block_invoke;
  v32 = &__block_descriptor_tmp_12;
  v34 = v40;
  v35 = v39;
  v36 = v43;
  v33 = v42;
  dispatch_channel_async(v20, &block);
  _dispatch_object_debug(v39, "%s", v21, v22, v23, v24, v25, v26, "dispatch_io_create_with_path");
  return v39;
}

void __dispatch_io_create_with_path_block_invoke(uint64_t a1)
{
  v29 = a1;
  v28 = a1;
  v27 = 0;
  memset(&__b, 0, sizeof(__b));
  do
  {
    if ((*(*(a1 + 40) + 8) & 0x100) == 0x100 || (*(*(a1 + 40) + 8) & 0x200000) == 0x200000)
    {
      v9 = lstat((*(a1 + 40) + 24), &__b);
    }

    else
    {
      v9 = stat((*(a1 + 40) + 24), &__b);
    }

    if (v9 == -1)
    {
      v35 = 1;
      v38 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = **(StatusReg + 8);
    }

    else
    {
      v8 = 0;
    }

    v27 = v8;
    if (!v8)
    {
      v27 = _dispatch_io_validate_type(*(a1 + 48), __b.st_mode);
      goto LABEL_31;
    }
  }

  while (v8 == 4);
  if ((*(*(a1 + 40) + 8) & 0x200) != 0 && *(*(a1 + 40) + 24 + *(*(a1 + 40) + 16) - 1) != 47)
  {
    v25 = 0;
    for (i = *(*(a1 + 40) + 16) - 1; (i & 0x8000000000000000) == 0; --i)
    {
      if (*(*(a1 + 40) + 24 + i) == 47)
      {
        v25 = (*(a1 + 40) + 24 + i);
        break;
      }
    }

    v31 = v25;
    v30 = 480;
    if (!v25)
    {
      _dispatch_abort(v30, 0, v1, v2, v3, v4, v5, v6);
    }

    *v25 = 0;
    v23 = 0;
    while (1)
    {
      if (stat((*(a1 + 40) + 24), &__b) == -1)
      {
        v36 = 1;
        v37 = 1;
        v40 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = **(v40 + 8);
      }

      else
      {
        v7 = 0;
      }

      v23 = v7;
      if (!v7)
      {
        break;
      }

      if (v7 != 4)
      {
        goto LABEL_30;
      }
    }

    __b.st_mode = 0x8000;
    v27 = 0;
LABEL_30:
    *v25 = 47;
  }

LABEL_31:
  *(*(a1 + 48) + 144) = v27;
  if (v27)
  {
    free(*(a1 + 40));
    _dispatch_io_init(*(a1 + 48), 0, *(a1 + 56), v27, *(a1 + 32));
    v22 = *(a1 + 48);
    _dispatch_release(v22);
    _dispatch_release(*(a1 + 56));
  }

  else
  {
    object = *(*(a1 + 48) + 48);
    dispatch_suspend(object);
    v34 = &_dispatch_io_init_pred;
    v33 = 0;
    v32 = _dispatch_io_queues_init;
    if (_dispatch_io_init_pred != -1)
    {
      dispatch_once_f(v34, v33, v32);
    }

    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = 0;
    v14 = __dispatch_io_create_with_path_block_invoke_2;
    v15 = &__block_descriptor_tmp_9_0;
    v17 = *(a1 + 40);
    memcpy(v18, &__b, sizeof(v18));
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v16 = *(a1 + 32);
    dispatch_channel_async(_dispatch_io_devs_lockq, &v11);
  }
}

dispatch_queue_t _dispatch_io_queues_init()
{
  _dispatch_io_fds_lockq = dispatch_queue_create("com.apple.libdispatch-io.fd_lockq", 0);
  result = dispatch_queue_create("com.apple.libdispatch-io.dev_lockq", 0);
  _dispatch_io_devs_lockq = result;
  return result;
}

void __dispatch_io_create_with_path_block_invoke_2(uint64_t a1)
{
  v8 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 48), *(a1 + 52));
  _dispatch_io_init(*(a1 + 192), v8, *(a1 + 200), 0, *(a1 + 32));
  dispatch_resume(*(*(a1 + 192) + 48));
  _dispatch_object_debug(*(a1 + 192), "%s", v1, v2, v3, v4, v5, v6, "dispatch_io_create_with_path_block_invoke_2");
  _dispatch_release(*(a1 + 192));
  _dispatch_release(*(a1 + 200));
}

void *_dispatch_fd_entry_create_with_path(uint64_t a1, int a2, __int16 a3)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = _dispatch_fd_entry_create(*(*a1 + 48));
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: create: path %s", v3, v4, v5, v6, v7, v8, v9, 1588);
  if ((v32 & 0xF000) == 0x8000)
  {
    _dispatch_disk_init(v31, HIBYTE(v33), v10, v11, v12, v13, v14, v15);
  }

  else
  {
    _dispatch_stream_init(v31, &off_E0600);
  }

  *v31 = -1;
  *(v31 + 4) = -1;
  v31[1] = v34;
  *(v31 + 8) = v33;
  *(v31 + 18) = v32;
  v31[9] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
  v31[10] = dispatch_group_create();
  v16 = v31[8];
  block = _NSConcreteStackBlock;
  v26 = 0x40000000;
  v27 = 0;
  v28 = ___dispatch_fd_entry_create_with_path_block_invoke;
  v29 = &__block_descriptor_tmp_191;
  v30 = v31;
  dispatch_channel_async(v16, &block);
  v17 = v31[8];
  v19 = _NSConcreteStackBlock;
  v20 = 0x40000000;
  v21 = 0;
  v22 = ___dispatch_fd_entry_create_with_path_block_invoke_2;
  v23 = &__block_descriptor_tmp_192;
  v24 = v31;
  dispatch_channel_async(v17, &v19);
  return v31;
}

dispatch_io_t dispatch_io_create_with_path_f(dispatch_io_type_t a1, const char *a2, int a3, mode_t a4, dispatch_queue_s *a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  if (!a7)
  {
    return dispatch_io_create_with_path(a1, a2, a3, a4, a5, 0);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 0x40000000;
  v10 = 0;
  v11 = __dispatch_io_create_with_path_f_block_invoke;
  v12 = &__block_descriptor_tmp_13;
  v13 = v15;
  v14 = v16;
  return dispatch_io_create_with_path(a1, a2, a3, a4, a5, &v8);
}

dispatch_io_t dispatch_io_create_with_io(dispatch_io_type_t type, dispatch_io_t io, dispatch_queue_t queue, void *cleanup_handler)
{
  v41 = type;
  v40 = io;
  v39 = queue;
  v38 = cleanup_handler;
  if (type && v41 != 1)
  {
    return 0;
  }

  v37 = _dispatch_io_create(v41, io, queue, cleanup_handler, v4, v5, v6, v7);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: create with channel %p", v8, v9, v10, v11, v12, v13, v14, 544);
  v36 = v37[6];
  dispatch_suspend(v36);
  v35 = v39;
  _dispatch_retain(v39);
  v34 = v37;
  _dispatch_retain(v37);
  v33 = v40;
  _dispatch_retain(v40);
  v15 = *(v40 + 6);
  block = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = 0;
  v26 = __dispatch_io_create_with_io_block_invoke;
  v27 = &__block_descriptor_tmp_23;
  v29 = v40;
  v30 = v37;
  v31 = v39;
  v28 = v38;
  v32 = v41;
  dispatch_channel_async(v15, &block);
  _dispatch_object_debug(v37, "%s", v16, v17, v18, v19, v20, v21, "dispatch_io_create_with_io");
  return v37;
}

void __dispatch_io_create_with_io_block_invoke(uint64_t *a1)
{
  v18 = a1;
  v17 = a1;
  error = _dispatch_io_get_error(0, a1[5], 0);
  if (error)
  {
    *(a1[6] + 144) = error;
    _dispatch_io_init(a1[6], 0, a1[7], error, a1[4]);
    v15 = *(a1[6] + 48);
    dispatch_resume(v15);
    v14 = a1[6];
    _dispatch_release(v14);
    v13 = a1[5];
    _dispatch_release(v13);
    _dispatch_release(a1[7]);
  }

  else
  {
    v1 = *(a1[5] + 56);
    block = _NSConcreteStackBlock;
    v4 = 1107296256;
    v5 = 0;
    v6 = __dispatch_io_create_with_io_block_invoke_2;
    v7 = &__block_descriptor_tmp_20;
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[8];
    v12 = a1[7];
    v8 = a1[4];
    dispatch_channel_async(v1, &block);
  }
}

uint64_t _dispatch_io_get_error(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    a2 = *(a1 + 136);
  }

  if ((*(a2 + 120) & 3) != 0)
  {
    if ((a3 & 1) != 0 && (*(a2 + 120) & 2) == 0)
    {
      return 0;
    }

    else
    {
      return 89;
    }
  }

  else if (a1)
  {
    return *(*(a1 + 144) + 24);
  }

  else
  {
    return *(a2 + 144);
  }
}

void __dispatch_io_create_with_io_block_invoke_2(uint64_t *a1)
{
  v40 = a1;
  v39 = a1;
  error = _dispatch_io_get_error(0, a1[5], 0);
  if (!error)
  {
    error = *(a1[5] + 144);
    if (!error)
    {
      error = *(*(a1[5] + 112) + 24);
    }
  }

  if (!error)
  {
    error = _dispatch_io_validate_type(a1[6], *(*(a1[5] + 112) + 36));
  }

  if (!error && a1[7] == 1 && *(a1[5] + 124) != -1)
  {
    v37 = 0;
    do
    {
      v37 = lseek(**(a1[5] + 112), 0, 1);
      if (v37 == -1)
      {
        v43 = 1;
        v44 = 1;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v14 = **(StatusReg + 8);
      }

      else
      {
        v14 = 0;
      }

      error = v14;
      if (!v14)
      {
        *(a1[6] + 136) = v37;
        goto LABEL_20;
      }
    }

    while (v14 == 4);
    v36 = error;
    v42 = error;
    v41 = 590;
    if (error)
    {
      _dispatch_bug(v41, v42, v1, v2, v3, v4, v5, v6);
    }

    v35 = v36;
  }

LABEL_20:
  *(a1[6] + 144) = error;
  if (error)
  {
    _dispatch_io_init(a1[6], 0, a1[8], error, a1[4]);
    v34 = *(a1[6] + 48);
    dispatch_resume(v34);
    v33 = a1[6];
    _dispatch_release(v33);
    v32 = a1[5];
    _dispatch_release(v32);
    _dispatch_release(a1[8]);
  }

  else
  {
    if (*(a1[5] + 124) == -1)
    {
      *(a1[6] + 124) = -1;
      *(a1[6] + 128) = -1;
      v31 = *(*(a1[5] + 112) + 36);
      v30 = *(*(a1[5] + 112) + 32);
      v29 = *(*(*(a1[5] + 112) + 8) + 16) + 25;
      v28 = malloc_type_malloc();
      v7 = *(*(a1[5] + 112) + 8);
      __memcpy_chk();
      *v28 = a1[6];
      block = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = 0;
      v20 = __dispatch_io_create_with_io_block_invoke_3;
      v21 = &__block_descriptor_tmp_17;
      v23 = v28;
      v26 = v30;
      v27 = v31;
      v24 = a1[6];
      v25 = a1[8];
      v22 = a1[4];
      dispatch_channel_async(_dispatch_io_devs_lockq, &block);
    }

    else
    {
      v16 = *(a1[5] + 112);
      *(a1[6] + 124) = *(a1[5] + 124);
      *(a1[6] + 128) = *(a1[5] + 128);
      _dispatch_fd_entry_retain(v16);
      _dispatch_io_init(a1[6], v16, a1[8], 0, a1[4]);
      dispatch_resume(*(a1[6] + 48));
      _dispatch_release(a1[6]);
      _dispatch_release(a1[8]);
    }

    _dispatch_release(a1[5]);
    _dispatch_object_debug(a1[6], "%s", v8, v9, v10, v11, v12, v13, "dispatch_io_create_with_io_block_invoke");
  }
}

void __dispatch_io_create_with_io_block_invoke_3(uint64_t a1)
{
  v2 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 64), *(a1 + 68));
  _dispatch_io_init(*(a1 + 48), v2, *(a1 + 56), 0, *(a1 + 32));
  dispatch_resume(*(*(a1 + 48) + 48));
  _dispatch_release(*(a1 + 48));
  _dispatch_release(*(a1 + 56));
}

dispatch_io_t dispatch_io_create_with_io_f(dispatch_io_type_t a1, dispatch_io_s *a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (!a5)
  {
    return dispatch_io_create_with_io(a1, a2, a3, 0);
  }

  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_create_with_io_f_block_invoke;
  v10 = &__block_descriptor_tmp_24;
  v11 = v13;
  v12 = v14;
  return dispatch_io_create_with_io(a1, a2, a3, &v6);
}

void dispatch_io_set_high_water(dispatch_io_t channel, size_t high_water)
{
  v12 = channel;
  v11 = high_water;
  v10 = channel;
  _dispatch_retain(channel);
  v2 = *(v12 + 6);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_set_high_water_block_invoke;
  v7 = &__block_descriptor_tmp_26;
  v8 = v12;
  v9 = v11;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_set_high_water_block_invoke(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  _dispatch_log("%u\t%p\tchannel[%p]: set high water: %zu", v1, v2, v3, v4, v5, v6, v7, 662);
  if (*(*(a1 + 32) + 80) > *(a1 + 40))
  {
    *(*(a1 + 32) + 80) = *(a1 + 40);
  }

  if (*(a1 + 40))
  {
    v10 = *(a1 + 40);
  }

  else
  {
    v10 = 1;
  }

  *(*(a1 + 32) + 88) = v10;
  _dispatch_release(*(a1 + 32));
}

void dispatch_io_set_low_water(dispatch_io_t channel, size_t low_water)
{
  v12 = channel;
  v11 = low_water;
  v10 = channel;
  _dispatch_retain(channel);
  v2 = *(v12 + 6);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_set_low_water_block_invoke;
  v7 = &__block_descriptor_tmp_28;
  v8 = v12;
  v9 = v11;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_set_low_water_block_invoke(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  _dispatch_log("%u\t%p\tchannel[%p]: set low water: %zu", v1, v2, v3, v4, v5, v6, v7, 676);
  if (*(*(a1 + 32) + 88) < *(a1 + 40))
  {
    if (*(a1 + 40))
    {
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = 1;
    }

    *(*(a1 + 32) + 88) = v10;
  }

  *(*(a1 + 32) + 80) = *(a1 + 40);
  _dispatch_release(*(a1 + 32));
}

void dispatch_io_set_interval(dispatch_io_t channel, uint64_t interval, dispatch_io_interval_flags_t flags)
{
  v15 = channel;
  v14 = interval;
  v13 = flags;
  v12 = channel;
  _dispatch_retain(channel);
  v3 = *(v15 + 6);
  block = _NSConcreteStackBlock;
  v5 = 0x40000000;
  v6 = 0;
  v7 = __dispatch_io_set_interval_block_invoke;
  v8 = &__block_descriptor_tmp_30;
  v9 = v15;
  v10 = v14;
  v11 = v13;
  dispatch_channel_async(v3, &block);
}

void __dispatch_io_set_interval_block_invoke(uint64_t *a1)
{
  _dispatch_thread_getspecific(0);
  v8 = a1[4];
  v9 = a1[5];
  _dispatch_log("%u\t%p\tchannel[%p]: set interval: %llu", v1, v2, v3, v4, v5, v6, v7, 692);
  if (a1[5] >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = a1[5];
  }

  *(a1[4] + 96) = v10;
  *(a1[4] + 104) = a1[6];
  _dispatch_release(a1[4]);
}

void _dispatch_io_set_target_queue(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = a2;
  _dispatch_retain(a2);
  v10 = v13;
  _dispatch_retain(v13);
  v2 = *(v13 + 48);
  v3 = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = ___dispatch_io_set_target_queue_block_invoke;
  v7 = &__block_descriptor_tmp_31;
  v8 = v13;
  v9 = v12;
  dispatch_channel_async(v2, &v3);
}

void ___dispatch_io_set_target_queue_block_invoke(uint64_t a1)
{
  v8 = *(*(a1 + 32) + 24);
  *(*(a1 + 32) + 24) = *(a1 + 40);
  _dispatch_release(v8);
  _dispatch_object_debug(*(a1 + 32), "%s", v1, v2, v3, v4, v5, v6, "_dispatch_io_set_target_queue_block_invoke");
  _dispatch_release(*(a1 + 32));
}

dispatch_fd_t dispatch_io_get_descriptor(dispatch_io_t channel)
{
  if ((*(channel + 30) & 3) != 0)
  {
    return -1;
  }

  if (*(channel + 32) == -1 && !_dispatch_io_get_error(0, channel, 0))
  {
    for (i = _dispatch_thread_getspecific(23); i; i = *i)
    {
      if (i[1] == "io")
      {
        v5 = i;
        goto LABEL_11;
      }
    }

    v5 = 0;
LABEL_11:
    if (v5 && v5[2] == channel)
    {
      _dispatch_fd_entry_open(*(channel + 14), channel);
    }
  }

  return *(channel + 32);
}

uint64_t _dispatch_fd_entry_open(uint64_t a1, uint64_t a2)
{
  if (*a1 == -1 && *(a1 + 8))
  {
    if (*(a1 + 24))
    {
      return *(a1 + 24);
    }

    else
    {
      if (*(a1 + 56))
      {
        v13 = *(*(a1 + 8) + 8) & 0xFFFFFFFB;
      }

      else
      {
        v14 = *(*(a1 + 8) + 8) | 4;
      }

      while (1)
      {
        v2 = *(a1 + 8) + 24;
        v3 = *(*(a1 + 8) + 12);
        v16 = _dispatch_fd_entry_guarded_open(a1);
        if (v16 != -1)
        {
          break;
        }

        v15 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (v15 != 4)
        {
          v10 = 0;
          atomic_compare_exchange_strong_explicit((a1 + 24), &v10, v15, memory_order_relaxed, memory_order_relaxed);
          return v15;
        }
      }

      v11 = -1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v16, memory_order_relaxed, memory_order_relaxed);
      if (v11 == -1)
      {
        *(a2 + 128) = v16;
      }

      else
      {
        _dispatch_fd_entry_guarded_close(a1);
      }

      _dispatch_object_debug(a2, "%s", v4, v5, v6, v7, v8, v9, "_dispatch_fd_entry_open");
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void dispatch_io_close(dispatch_io_t channel, dispatch_io_close_flags_t flags)
{
  v11 = channel;
  v10 = flags;
  if (flags)
  {
    if ((*(v11 + 30) & 2) == 0)
    {
      _dispatch_io_stop(v11);
    }
  }

  else if ((*(v11 + 30) & 3) == 0)
  {
    v9 = v11;
    _dispatch_retain(v11);
    v2 = *(v11 + 6);
    v3 = _NSConcreteStackBlock;
    v4 = 0x40000000;
    v5 = 0;
    v6 = __dispatch_io_close_block_invoke;
    v7 = &__block_descriptor_tmp_35;
    v8 = v11;
    dispatch_channel_async(v2, &v3);
  }
}

void _dispatch_io_stop(uint64_t a1)
{
  v26 = a1;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: stop", v1, v2, v3, v4, v5, v6, v7, 736);
  v24 = 2;
  v23 = 2;
  v25 = 2;
  v19 = 2;
  v18 = 2;
  v20 = 2;
  v17 = atomic_fetch_or_explicit((v26 + 120), 2u, memory_order_relaxed);
  v21 = v17;
  v16 = v17;
  v22 = v17 | 2;
  v15 = v26;
  _dispatch_retain(v26);
  v8 = *(v26 + 48);
  block = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = 0;
  v12 = ___dispatch_io_stop_block_invoke;
  v13 = &__block_descriptor_tmp_116;
  v14 = v26;
  dispatch_channel_async(v8, &block);
}

void __dispatch_io_close_block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 56);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_close_block_invoke_2;
  v7 = &__block_descriptor_tmp_34;
  v8 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_close_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(*(a1 + 32), "%s", a3, a4, a5, a6, a7, a8, "dispatch_io_close_block_invoke_2");
  _dispatch_thread_getspecific(0);
  v15 = *(a1 + 32);
  _dispatch_log("%u\t%p\tchannel[%p]: close", v8, v9, v10, v11, v12, v13, v14, 794);
  if ((*(*(a1 + 32) + 120) & 3) == 0)
  {
    v18 = atomic_fetch_or_explicit((*(a1 + 32) + 120), 1u, memory_order_relaxed) | 1;
    v17 = *(*(a1 + 32) + 112);
    if (v17)
    {
      if (*(v17 + 8))
      {
        **(v17 + 8) = 0;
      }

      *(*(a1 + 32) + 112) = 0;
      _dispatch_fd_entry_release(v17);
    }
  }

  _dispatch_release(*(a1 + 32));
}

void dispatch_io_barrier(dispatch_io_t channel, dispatch_block_t barrier)
{
  v12 = channel;
  v11 = barrier;
  v10 = channel;
  _dispatch_retain(channel);
  v2 = *(v12 + 6);
  block = _NSConcreteStackBlock;
  v4 = 1107296256;
  v5 = 0;
  v6 = __dispatch_io_barrier_block_invoke;
  v7 = &__block_descriptor_tmp_44;
  v9 = v12;
  v8 = v11;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_barrier_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = *(*(a1 + 40) + 24);
  v12 = *(*(a1 + 40) + 56);
  v11 = *(*(a1 + 40) + 64);
  v1 = _NSConcreteStackBlock;
  v2 = 1107296256;
  v3 = 0;
  v4 = __dispatch_io_barrier_block_invoke_2;
  v5 = &__block_descriptor_tmp_41;
  v7 = v12;
  v8 = v11;
  v9 = v13;
  v10 = *(a1 + 40);
  v6 = *(a1 + 32);
  dispatch_channel_async(v12, &v1);
}

void __dispatch_io_barrier_block_invoke_2(void *a1)
{
  v14 = a1;
  v13 = a1;
  v12 = a1[5];
  dispatch_suspend(v12);
  v1 = a1[6];
  v2 = a1[7];
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_io_barrier_block_invoke_3;
  v8 = &__block_descriptor_tmp_38;
  v10 = a1[8];
  v9 = a1[4];
  v11 = a1[5];
  dispatch_group_notify(v1, v2, &block);
}

void __dispatch_io_barrier_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = a1;
  v17 = 0;
  v16[0] = 0;
  v16[1] = "io";
  v17 = *(a1 + 40);
  _dispatch_object_debug(*(a1 + 40), "%s", a3, a4, a5, a6, a7, a8, "dispatch_io_barrier_block_invoke_3");
  v20 = v16;
  v16[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v20);
  (*(*(a1 + 32) + 16))();
  v21 = v16;
  v14 = _dispatch_thread_getspecific(23) == v16;
  v23 = v14;
  v22 = 449;
  if (!v14)
  {
    _dispatch_abort(v22, v23, v8, v9, v10, v11, v12, v13);
  }

  _dispatch_thread_setspecific(23, *v21);
  dispatch_resume(*(a1 + 48));
  _dispatch_release(*(a1 + 40));
}

void dispatch_io_barrier_f(dispatch_io_s *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  barrier = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_barrier_f_block_invoke;
  v7 = &__block_descriptor_tmp_45;
  v8 = a3;
  v9 = a2;
  dispatch_io_barrier(a1, &barrier);
}

void dispatch_io_read(dispatch_io_t channel, off_t offset, size_t length, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  v22 = channel;
  v21 = offset;
  v20 = length;
  v19 = queue;
  v18 = io_handler;
  v17 = channel;
  _dispatch_retain(channel);
  v16 = v19;
  _dispatch_retain(v19);
  v5 = *(v22 + 6);
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = 0;
  v9 = __dispatch_io_read_block_invoke;
  v10 = &__block_descriptor_tmp_49;
  v12 = v22;
  v13 = v21;
  v14 = v20;
  v15 = v19;
  v11 = v18;
  dispatch_channel_async(v5, &v6);
}

void __dispatch_io_read_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a1;
  v16 = 0;
  v16 = _dispatch_operation_create(0, *(a1 + 40), *(a1 + 48), *(a1 + 56), &_dispatch_data_empty, *(a1 + 64), *(a1 + 32), a8);
  if (v16)
  {
    v15 = *(*(a1 + 40) + 56);
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = 0;
    v12 = __dispatch_io_read_block_invoke_2;
    v13 = &__block_descriptor_tmp_46;
    v14 = v16;
    dispatch_channel_async(v15, &block);
  }

  _dispatch_release(*(a1 + 40));
  _dispatch_release(*(a1 + 64));
}

void *_dispatch_operation_create(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, dispatch_object_s *a5, dispatch_queue_s *a6, const void *a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  v50 = a3;
  v49 = a4;
  v48 = a5;
  v47 = a6;
  v46 = a7;
  v55 = a1 < 2;
  v54 = 1064;
  if (a1 >= 2)
  {
    _dispatch_abort(v54, v55, a3, a4, a5, a6, a7, a8);
  }

  error = _dispatch_io_get_error(0, v51, 0);
  if (!error && v49)
  {
    v30 = _dispatch_object_alloc(_OS_dispatch_operation_vtable, 0x110uLL, v8, v9, v10, v11, v12, v13);
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tchannel[%p]: operation create: %p", v15, v16, v17, v18, v19, v20, v21, 1092);
    v30[2] = -1985229329;
    *(v30 + 3) = 0;
    v30[6] = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.opq", 0, v47);
    *(v30 + 160) = 0;
    *(v30 + 14) = v52;
    v30[13] = v50 + v51[17];
    v30[14] = v49;
    v30[16] = _dispatch_Block_copy(v46);
    _dispatch_retain(v51);
    v30[17] = v51;
    memcpy(v30 + 8, v51 + 9, 0x28uLL);
      ;
    }

    v30[3] = i;
    _dispatch_object_debug(v30, "%s", v22, v23, v24, v25, v26, v27, "_dispatch_operation_create");
    return v30;
  }

  else
  {
    v44 = v48;
    dispatch_retain(v48);
    v43 = v47;
    _dispatch_retain(v47);
    v42 = v51;
    _dispatch_retain(v51);
    v14 = v51[7];
    block = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = 0;
    v34 = ___dispatch_operation_create_block_invoke;
    v35 = &__block_descriptor_tmp_130;
    v37 = v47;
    v38 = v48;
    v40 = v52;
    v41 = error;
    v39 = v51;
    v36 = v46;
    dispatch_channel_async(v14, &block);
    return 0;
  }
}

void _dispatch_operation_enqueue(uint64_t a1, unsigned int a2, dispatch_object_s *a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a3;
  dispatch_retain(a3);
  error = _dispatch_io_get_error(0, *(v47 + 136), 0);
  if (error)
  {
    v42 = *(v47 + 128);
    v3 = *(v47 + 48);
    block = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = 0;
    v36 = ___dispatch_operation_enqueue_block_invoke;
    v37 = &__block_descriptor_tmp_135;
    v39 = v45;
    v40 = v46;
    v41 = error;
    v38 = v42;
    dispatch_channel_async(v3, &block);
    _dispatch_thread_getspecific(0);
    v13 = *(v47 + 8);
    _dispatch_log("%u\t%p\top[%p]: release -> %d, err %d", v4, v5, v6, v7, v8, v9, v10, 1175);
    v32 = v47;
    _dispatch_release(v47);
  }

  else
  {
    *(v47 + 144) = *(*(v47 + 136) + 112);
    _dispatch_fd_entry_retain(*(v47 + 144));
    dispatch_group_enter(*(*(v47 + 144) + 80));
    v31 = *(*(v47 + 144) + 56);
    if (v31)
    {
      v12 = *(v31 + 72);
      v14 = _NSConcreteStackBlock;
      v15 = 0x40000000;
      v16 = 0;
      v17 = ___dispatch_operation_enqueue_block_invoke_2;
      v18 = &__block_descriptor_tmp_139;
      v19 = v31;
      v20 = v47;
      v21 = v45;
      dispatch_channel_async(v12, &v14);
    }

    else
    {
      v30 = *(*(v47 + 144) + 40 + 8 * v46);
      v11 = *v30;
      v22 = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = 0;
      v25 = ___dispatch_operation_enqueue_block_invoke_137;
      v26 = &__block_descriptor_tmp_138;
      v27 = v30;
      v28 = v47;
      v29 = v45;
      dispatch_channel_async(v11, &v22);
    }
  }
}

void dispatch_io_read_f(dispatch_io_s *a1, off_t a2, size_t a3, dispatch_queue_s *a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_read_f_block_invoke;
  v10 = &__block_descriptor_tmp_51;
  v11 = a6;
  v12 = a5;
  dispatch_io_read(a1, a2, a3, a4, &v6);
}

void dispatch_io_write(dispatch_io_t channel, off_t offset, dispatch_data_t data, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  v23 = channel;
  v22 = offset;
  v21 = data;
  v20 = queue;
  v19 = io_handler;
  v18 = data;
  dispatch_retain(data);
  v17 = v23;
  _dispatch_retain(v23);
  v16 = v20;
  _dispatch_retain(v20);
  v5 = *(v23 + 6);
  block = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = 0;
  v9 = __dispatch_io_write_block_invoke;
  v10 = &__block_descriptor_tmp_55;
  v12 = v23;
  v13 = v22;
  v14 = v21;
  v15 = v20;
  v11 = v19;
  dispatch_channel_async(v5, &block);
}

void __dispatch_io_write_block_invoke(uint64_t a1)
{
  v16 = a1;
  v15 = a1;
  v14 = 0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  size = dispatch_data_get_size(*(a1 + 56));
  v14 = _dispatch_operation_create(1u, v3, v4, size, *(a1 + 56), *(a1 + 64), *(a1 + 32), v2);
  if (v14)
  {
    v13 = *(*(a1 + 40) + 56);
    block = _NSConcreteStackBlock;
    v7 = 0x40000000;
    v8 = 0;
    v9 = __dispatch_io_write_block_invoke_2;
    v10 = &__block_descriptor_tmp_52;
    v11 = v14;
    v12 = *(a1 + 56);
    dispatch_channel_async(v13, &block);
  }

  else
  {
    dispatch_release(*(a1 + 56));
  }

  _dispatch_release(*(a1 + 40));
  _dispatch_release(*(a1 + 64));
}

void dispatch_io_write_f(dispatch_io_s *a1, off_t a2, dispatch_data_s *a3, dispatch_queue_s *a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_write_f_block_invoke;
  v10 = &__block_descriptor_tmp_56;
  v11 = a6;
  v12 = a5;
  dispatch_io_write(a1, a2, a3, a4, &v6);
}

void dispatch_read(dispatch_fd_t fd, size_t length, dispatch_queue_t queue, void *handler)
{
  v17 = fd;
  v16 = length;
  v15 = queue;
  v14 = handler;
  v13 = queue;
  _dispatch_retain(queue);
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_read_block_invoke;
  v8 = &__block_descriptor_tmp_71;
  v10 = v15;
  v12 = v17;
  v9 = v14;
  v11 = v16;
  _dispatch_fd_entry_init_async(v17, &v4);
}

void __dispatch_read_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a1;
  v52 = a2;
  v51 = a1;
  if (*(a2 + 24))
  {
    v50 = *(v52 + 24);
    v8 = *(a1 + 40);
    block = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = 0;
    v45 = __dispatch_read_block_invoke_2;
    v46 = &__block_descriptor_tmp_60;
    v48 = *(a1 + 56);
    v47 = *(a1 + 32);
    v49 = v50;
    dispatch_channel_async(v8, &block);
    _dispatch_release(*(a1 + 40));
  }

  else
  {
    v41 = *(v52 + 88);
    if (!v41)
    {
      v41 = _dispatch_io_create(0, a2, a3, a4, a5, a6, a7, a8);
      *(v41 + 31) = *(a1 + 56);
      *(v41 + 32) = *(a1 + 56);
      v41[14] = v52;
      v40 = *(v52 + 72);
      dispatch_retain(v40);
      v39 = *(v52 + 80);
      dispatch_retain(v39);
      v41[7] = *(v52 + 72);
      v41[8] = *(v52 + 80);
      *(v52 + 88) = v41;
    }

    v35[0] = 0;
    v35[1] = v35;
    v36 = 0;
    v37 = 32;
    v38 = &_dispatch_data_empty;
    v31[0] = 0;
    v31[1] = v31;
    v32 = 0;
    v33 = 32;
    v34 = 0;
    v9 = *(v52 + 64);
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = 0;
    v24 = __dispatch_read_block_invoke_61;
    v25 = &__block_descriptor_tmp_66;
    v29 = *(a1 + 40);
    v30 = *(a1 + 56);
    v26 = *(a1 + 32);
    v27 = v35;
    v28 = v31;
    dispatch_channel_async(v9, &v21);
    v10 = *(a1 + 48);
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = 0;
    v16 = __dispatch_read_block_invoke_67;
    v17 = &__block_descriptor_tmp_68;
    v18 = v35;
    v19 = v31;
    v20 = _dispatch_operation_create(0, v41, 0, v10, &_dispatch_data_empty, &off_E0600, &v13, v11);
    if (v20)
    {
      _dispatch_operation_enqueue(v20, 0, &_dispatch_data_empty);
    }

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v35, 8);
  }
}

uint64_t __dispatch_read_block_invoke_2(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v10 = *(a1 + 40);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", v1, v2, v3, v4, v5, v6, v7, 925);
  v8 = *(a1 + 44);
  return (*(*(a1 + 32) + 16))();
}

void __dispatch_read_block_invoke_61(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v2 = *(a1 + 56);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_read_block_invoke_2_62;
  v8 = &__block_descriptor_tmp_63;
  v12 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 56));
}

void __dispatch_read_block_invoke_2_62(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v10 = *(a1 + 56);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", v1, v2, v3, v4, v5, v6, v7, 948);
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = *(*(*(a1 + 48) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  dispatch_release(*(*(*(a1 + 40) + 8) + 24));
}

void __copy_helper_block_8_32b40r48r(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 7);
  _Block_object_assign((a1 + 40), a2[5], 8);
  _Block_object_assign((a1 + 48), a2[6], 8);
}

void __destroy_helper_block_8_32b40r48r(const void **a1)
{
  _Block_object_dispose(a1[6], 8);
  _Block_object_dispose(a1[5], 8);
  _Block_object_dispose(a1[4], 7);
}

void __dispatch_read_block_invoke_67(uint64_t a1, char a2, dispatch_data_s *a3, int a4)
{
  if (a3)
  {
    concat = dispatch_data_create_concat(*(*(*(a1 + 32) + 8) + 24), a3);
    dispatch_release(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = concat;
  }

  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void dispatch_read_f(dispatch_fd_t a1, size_t a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  handler = _NSConcreteStackBlock;
  v6 = 0x40000000;
  v7 = 0;
  v8 = __dispatch_read_f_block_invoke;
  v9 = &__block_descriptor_tmp_73;
  v10 = a5;
  v11 = a4;
  dispatch_read(a1, a2, a3, &handler);
}

void dispatch_write(dispatch_fd_t fd, dispatch_data_t data, dispatch_queue_t queue, void *handler)
{
  v18 = fd;
  v17 = data;
  v16 = queue;
  v15 = handler;
  v14 = data;
  dispatch_retain(data);
  v13 = v16;
  _dispatch_retain(v16);
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_write_block_invoke;
  v8 = &__block_descriptor_tmp_91;
  v10 = v16;
  v12 = v18;
  v9 = v15;
  v11 = v17;
  _dispatch_fd_entry_init_async(v18, &v4);
}

void __dispatch_write_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a1;
  v54 = a2;
  v53 = a1;
  if (*(a2 + 24))
  {
    v52 = *(v54 + 24);
    v8 = *(a1 + 40);
    block = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = 0;
    v47 = __dispatch_write_block_invoke_2;
    v48 = &__block_descriptor_tmp_76;
    v50 = *(a1 + 56);
    v49 = *(a1 + 32);
    v51 = v52;
    dispatch_channel_async(v8, &block);
    _dispatch_release(*(a1 + 40));
  }

  else
  {
    v43 = *(v54 + 88);
    if (!v43)
    {
      v43 = _dispatch_io_create(0, a2, a3, a4, a5, a6, a7, a8);
      *(v43 + 31) = *(a1 + 56);
      *(v43 + 32) = *(a1 + 56);
      v43[14] = v54;
      v42 = *(v54 + 72);
      dispatch_retain(v42);
      v41 = *(v54 + 80);
      dispatch_retain(v41);
      v43[7] = *(v54 + 72);
      v43[8] = *(v54 + 80);
      *(v54 + 88) = v43;
    }

    v37[0] = 0;
    v37[1] = v37;
    v38 = 0;
    v39 = 32;
    v40 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v34 = 0;
    v35 = 32;
    v36 = 0;
    v9 = *(v54 + 64);
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = 0;
    v26 = __dispatch_write_block_invoke_77;
    v27 = &__block_descriptor_tmp_84;
    v31 = *(a1 + 40);
    v32 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = v37;
    v30 = v33;
    dispatch_channel_async(v9, &v23);
    v13 = v43;
    size = dispatch_data_get_size(*(a1 + 48));
    v11 = *(a1 + 48);
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = 0;
    v18 = __dispatch_write_block_invoke_85;
    v19 = &__block_descriptor_tmp_88;
    v20 = v37;
    v21 = v33;
    v22 = _dispatch_operation_create(1u, v13, 0, size, v11, &off_E0600, &v15, v12);
    if (v22)
    {
      _dispatch_operation_enqueue(v22, 1u, *(a1 + 48));
    }

    dispatch_release(*(a1 + 48));
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v37, 8);
  }
}

uint64_t __dispatch_write_block_invoke_2(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v10 = *(a1 + 40);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", v1, v2, v3, v4, v5, v6, v7, 994);
  v8 = *(a1 + 44);
  return (*(*(a1 + 32) + 16))();
}

void __dispatch_write_block_invoke_77(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v2 = *(a1 + 56);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_write_block_invoke_2_78;
  v8 = &__block_descriptor_tmp_81;
  v12 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 56));
}

void __dispatch_write_block_invoke_2_78(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v10 = *(a1 + 56);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", v1, v2, v3, v4, v5, v6, v7, 1017);
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = *(*(*(a1 + 48) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    dispatch_release(*(*(*(a1 + 40) + 8) + 24));
  }
}

void __dispatch_write_block_invoke_85(uint64_t a1, char a2, dispatch_object_s *a3, int a4)
{
  if (a2)
  {
    if (a3)
    {
      dispatch_retain(a3);
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }

    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void dispatch_write_f(dispatch_fd_t a1, dispatch_data_s *a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  handler = _NSConcreteStackBlock;
  v6 = 0x40000000;
  v7 = 0;
  v8 = __dispatch_write_f_block_invoke;
  v9 = &__block_descriptor_tmp_92;
  v10 = a5;
  v11 = a4;
  dispatch_write(a1, a2, a3, &handler);
}

void _dispatch_operation_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_operation_dispose");
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: dispose", v8, v9, v10, v11, v12, v13, v14, 1121);
  if (*(a1 + 144))
  {
    _dispatch_operation_deliver_data(a1, 2, v15, v16, v17, v18, v19, v20);
    dispatch_group_leave(*(*(a1 + 144) + 80));
    _dispatch_fd_entry_release(*(a1 + 144));
  }

  if (*(a1 + 136))
  {
    _dispatch_release(*(a1 + 136));
  }

  if (*(a1 + 152))
  {
    dispatch_release(*(a1 + 152));
  }

  if (*(a1 + 176) && !*(a1 + 56))
  {
    free(*(a1 + 176));
  }

  if (*(a1 + 224))
  {
    dispatch_release(*(a1 + 224));
  }

  if (*(a1 + 232))
  {
    dispatch_release(*(a1 + 232));
  }

  if (*(a1 + 48))
  {
    dispatch_release(*(a1 + 48));
  }

  _Block_release(*(a1 + 128));
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: disposed", v21, v22, v23, v24, v25, v26, v27, 1152);
}

void _dispatch_operation_deliver_data(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a1;
  v64 = a2;
  subrange = 0;
  v62 = 0;
  v61 = v65[26] + v65[25];
  v32 = 1;
  if ((a2 & 3) == 0)
  {
    v32 = (v65[23] & 1) != 0;
  }

  v60 = v32;
  *(v65 + 46) = 0;
  if (v60)
  {
    v62 = *(v65 + 30);
    if (!v62 && (*(v65[17] + 120) & 2) != 0)
    {
      v62 = 89;
      *(v65 + 30) = 89;
    }
  }

  else if (v61 < v65[9])
  {
    if (v65[25] < v65[24])
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: buffer data: undelivered %zu", v8, v9, v10, v11, v12, v13, v14, 2622);
      return;
    }
  }

  else
  {
    v60 = 1;
  }

  if (!*(v65 + 14))
  {
    if (v65[25])
    {
      v59 = v65[22];
      subrange = dispatch_data_create(v59, v65[25], 0, &__block_literal_global);
      v65[22] = 0;
      v65[25] = 0;
      concat = dispatch_data_create_concat(v65[29], subrange);
      v57 = v65[29];
      dispatch_release(v57);
      v56 = subrange;
      dispatch_release(subrange);
      subrange = concat;
    }

    else
    {
      subrange = v65[29];
    }

    if (v60)
    {
      v31 = &_dispatch_data_empty;
    }

    else
    {
      v31 = subrange;
    }

    v65[29] = v31;
LABEL_33:
    if ((v60 & 1) != 0 && ((v64 & 8) == 0 || dispatch_data_get_size(subrange)))
    {
      v65[26] = 0;
      v51 = v65;
      _dispatch_object_debug(v65, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_operation_deliver_data");
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: deliver data", v23, v24, v25, v26, v27, v28, v29, 2687);
      v50 = *(v65 + 14);
      v49 = v65[16];
      v48 = v65[18];
      _dispatch_fd_entry_retain(v48);
      v47 = v65[17];
      v46 = v47;
      _dispatch_retain(v47);
      v30 = v65[6];
      block = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = 0;
      v36 = ___dispatch_operation_deliver_data_block_invoke;
      v37 = &__block_descriptor_tmp_199;
      v43 = v64;
      v39 = subrange;
      v44 = v50;
      v45 = v62;
      v40 = v65;
      v38 = v49;
      v41 = v47;
      v42 = v48;
      dispatch_channel_async(v30, &block);
    }

    else
    {
      v65[26] = v61;
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: buffer data: undelivered %zu", v16, v17, v18, v19, v20, v21, v22, 2682);
    }

    return;
  }

  if (*(v65 + 14) == 1)
  {
    if (v60)
    {
      subrange = dispatch_data_create_subrange(v65[29], v65[25], v65[14]);
    }

    if (v65[28] && v65[25] == v65[24])
    {
      v55 = v65[28];
      dispatch_release(v55);
      v65[28] = 0;
      v65[22] = 0;
      v65[25] = 0;
      v54 = 0;
      if (v60)
      {
        v53 = subrange;
        dispatch_retain(subrange);
        v54 = subrange;
      }

      else
      {
        v54 = dispatch_data_create_subrange(v65[29], v65[24], v65[14]);
      }

      v52 = v65[29];
      dispatch_release(v52);
      v65[29] = v54;
    }

    goto LABEL_33;
  }

  v15 = *(v65 + 14) < 2u;
  v67 = v15;
  v66 = 2677;
  if (!v15)
  {
    _dispatch_abort(v66, v67, a3, a4, a5, a6, a7, a8);
  }
}

void _dispatch_disk_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 112))
  {
    *(*(a1 + 112) + 120) = *(a1 + 120);
  }

  **(a1 + 120) = *(a1 + 112);
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  if (*(a1 + 48))
  {
    _dispatch_abort(1792, *(a1 + 48) == 0, a3, a4, a5, a6, a7, a8);
  }

  for (i = 0; i < *(a1 + 128); ++i)
  {
    if (*(a1 + 136 + 8 * i))
    {
      _dispatch_abort(1795, *(a1 + 136 + 8 * i) == 0, a3, a4, a5, a6, a7, a8);
    }
  }

  dispatch_release(*(a1 + 72));
}

void ___dispatch_io_init_block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v2 = *(a1 + 40);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_io_init_block_invoke_2;
  v8 = &__block_descriptor_tmp_102;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v9 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 40));
}

uint64_t ___dispatch_io_init_block_invoke_2(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  _dispatch_log("%u\t%p\tchannel[%p]: cleanup handler invoke: err %d", v1, v2, v3, v4, v5, v6, v7, 270);
  v8 = *(a1 + 48);
  return (*(*(a1 + 32) + 16))();
}

void ___dispatch_io_stop_block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 56);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = ___dispatch_io_stop_block_invoke_2;
  v7 = &__block_descriptor_tmp_115;
  v8 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
}

void ___dispatch_io_stop_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a1;
  v26 = a1;
  v25 = *(a1 + 32);
  _dispatch_object_debug(v25, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_io_stop_block_invoke_2");
  v24 = *(*(a1 + 32) + 112);
  if (v24)
  {
    _dispatch_thread_getspecific(0);
    v15 = *(a1 + 32);
    _dispatch_log("%u\t%p\tchannel[%p]: stop cleanup", v8, v9, v10, v11, v12, v13, v14, 744);
    _dispatch_fd_entry_cleanup_operations(v24, *(a1 + 32));
    if ((*(*(a1 + 32) + 120) & 1) == 0)
    {
      if (*(v24 + 8))
      {
        **(v24 + 8) = 0;
      }

      *(*(a1 + 32) + 112) = 0;
      _dispatch_fd_entry_release(v24);
    }
  }

  else if (*(*(a1 + 32) + 124) != -1)
  {
    v23 = *(a1 + 32);
    _dispatch_retain(v23);
    block = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = 0;
    v20 = ___dispatch_io_stop_block_invoke_3;
    v21 = &__block_descriptor_tmp_114;
    v22 = *(a1 + 32);
    dispatch_channel_async(_dispatch_io_fds_lockq, &block);
  }

  _dispatch_release(*(a1 + 32));
}

void _dispatch_fd_entry_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  if (*(a1 + 56))
  {
    if (v23)
    {
      v22 = v23;
      _dispatch_retain(v23);
    }

    _dispatch_fd_entry_retain(v24);
    v2 = *(*(v24 + 56) + 72);
    block = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = 0;
    v18 = ___dispatch_fd_entry_cleanup_operations_block_invoke;
    v19 = &__block_descriptor_tmp_117;
    v20 = v24;
    v21 = v23;
    dispatch_channel_async(v2, &block);
  }

  else
  {
    for (i = 0; i < 2; ++i)
    {
      v13 = *(v24 + 40 + 8 * i);
      if (v13)
      {
        if (v23)
        {
          v12 = v23;
          _dispatch_retain(v23);
        }

        _dispatch_fd_entry_retain(v24);
        v3 = *v13;
        v4 = _NSConcreteStackBlock;
        v5 = 0x40000000;
        v6 = 0;
        v7 = ___dispatch_fd_entry_cleanup_operations_block_invoke_2;
        v8 = &__block_descriptor_tmp_118;
        v9 = v13;
        v10 = v23;
        v11 = v24;
        dispatch_channel_async(v3, &v4);
      }
    }
  }
}

void ___dispatch_io_stop_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(*(a1 + 32), "%s", a3, a4, a5, a6, a7, a8, "_dispatch_io_stop_block_invoke_3");
  _dispatch_thread_getspecific(0);
  v15 = *(a1 + 32);
  _dispatch_log("%u\t%p\tchannel[%p]: stop cleanup after close", v8, v9, v10, v11, v12, v13, v14, 759);
  for (i = _dispatch_io_fds[*(*(a1 + 32) + 124) & 0x3FLL]; i; i = *(i + 112))
  {
    if (*i == *(*(a1 + 32) + 124))
    {
      _dispatch_fd_entry_cleanup_operations(i, *(a1 + 32));
      break;
    }
  }

  _dispatch_release(*(a1 + 32));
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke(uint64_t a1)
{
  _dispatch_disk_cleanup_inactive_operations(*(*(a1 + 32) + 56), *(a1 + 40));
  _dispatch_fd_entry_release(*(a1 + 32));
  if (*(a1 + 40))
  {
    _dispatch_release(*(a1 + 40));
  }
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke_2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_stream_cleanup_operations(a1[4], a1[5], a3, a4, a5, a6, a7, a8);
  _dispatch_fd_entry_release(a1[6]);
  if (a1[5])
  {
    _dispatch_release(a1[5]);
  }
}

void _dispatch_stream_cleanup_operations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  for (i = *(a1 + 48); ; i = v10)
  {
    v9 = 0;
    if (i)
    {
      v10 = *(i + 240);
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    if (!a2 || *(i + 136) == a2)
    {
      _dispatch_stream_complete_operation(a1, i, a3, a4, a5, a6, a7, a8);
    }
  }

  for (j = *(a1 + 32); ; j = v10)
  {
    v8 = 0;
    if (j)
    {
      v10 = *(j + 240);
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      break;
    }

    if (!a2 || *(j + 136) == a2)
    {
      _dispatch_stream_complete_operation(a1, j, a3, a4, a5, a6, a7, a8);
    }
  }

  if ((*(a1 + 24) & 1) != 0 && !_dispatch_stream_operation_avail(a1))
  {
    dispatch_suspend(*(a1 + 8));
    *(a1 + 24) = 0;
  }
}

void _dispatch_disk_cleanup_specified_operations(uint64_t a1, uint64_t a2, char a3)
{
  v17 = 0;
  for (i = *(a1 + 48); ; i = v17)
  {
    v16 = 0;
    if (i)
    {
      v17 = *(i + 240);
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      break;
    }

    if (((a3 & 1) == 0 || (*(i + 160) & 1) == 0) && (!a2 || *(i + 136) == a2))
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: cleanup: disk %p", v3, v4, v5, v6, v7, v8, v9, 1985);
      _dispatch_disk_complete_operation(a1, i, v10, v11, v12, v13, v14, v15);
    }
  }
}

void _dispatch_disk_complete_operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a2, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_disk_complete_operation");
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: complete: disk %p", v8, v9, v10, v11, v12, v13, v14, 1869);
  if (*(a1 + 64) == a2)
  {
    *(a1 + 64) = **(*(a2 + 248) + 8);
  }

  if (!*(a2 + 64))
  {
    v23 = *(a2 + 256);
    if (v23)
    {
      *(*(a2 + 256) + 264) = *(a2 + 264);
    }

    else
    {
      *(*(a2 + 144) + 104) = *(a2 + 264);
    }

    **(a2 + 264) = *(a2 + 256);
    *(a2 + 256) = -1;
    *(a2 + 264) = -1;
    if (v23)
    {
      *(v23 + 240) = 0;
      *(v23 + 248) = *(a1 + 56);
      **(a1 + 56) = v23;
      *(a1 + 56) = v23 + 240;
    }
  }

  if (*(a2 + 240))
  {
    *(*(a2 + 240) + 248) = *(a2 + 248);
  }

  else
  {
    *(a1 + 56) = *(a2 + 248);
  }

  **(a2 + 248) = *(a2 + 240);
  *(a2 + 240) = -1;
  *(a2 + 248) = -1;
  if (*(a2 + 152))
  {
    dispatch_source_cancel(*(a2 + 152));
  }

  _dispatch_thread_getspecific(0);
  v22 = *(a2 + 8);
  _dispatch_log("%u\t%p\top[%p]: release -> %d (disk complete)", v15, v16, v17, v18, v19, v20, v21, 1888);
  _dispatch_release(a2);
}

void _dispatch_stream_complete_operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a2, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_stream_complete_operation");
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: complete: stream %p", v8, v9, v10, v11, v12, v13, v14, 1851);
  if (*(a2 + 240))
  {
    *(*(a2 + 240) + 248) = *(a2 + 248);
  }

  else
  {
    *(a1 + 32 + 16 * *(a2 + 64) + 8) = *(a2 + 248);
  }

  **(a2 + 248) = *(a2 + 240);
  *(a2 + 240) = -1;
  *(a2 + 248) = -1;
  if (a2 == *(a1 + 16))
  {
    *(a1 + 16) = 0;
  }

  if (*(a2 + 152))
  {
    dispatch_source_cancel(*(a2 + 152));
  }

  _dispatch_thread_getspecific(0);
  v22 = *(a2 + 8);
  _dispatch_log("%u\t%p\top[%p]: release -> %d (stream complete)", v15, v16, v17, v18, v19, v20, v21, 1860);
  _dispatch_release(a2);
}

BOOL _dispatch_stream_operation_avail(uint64_t a1)
{
  v2 = 1;
  if (!*(a1 + 48))
  {
    return *(a1 + 32) != 0;
  }

  return v2;
}

void ___dispatch_operation_create_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v2 = *(a1 + 40);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_operation_create_block_invoke_2;
  v8 = &__block_descriptor_tmp_127;
  v10 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a1 + 68);
  v11 = *(a1 + 56);
  v9 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 40));
}

void ___dispatch_operation_create_block_invoke_2(uint64_t a1)
{
  v12 = *(a1 + 40);
  if ((*(a1 + 56) || !*(a1 + 60)) && *(a1 + 56) == 1)
  {
    *(a1 + 60);
  }

  _dispatch_thread_getspecific(0);
  v9 = *(a1 + 48);
  v10 = *(a1 + 60);
  _dispatch_log("%u\t%p\tchannel[%p]: IO handler invoke: err %d", v1, v2, v3, v4, v5, v6, v7, 1081);
  v8 = *(a1 + 60);
  (*(*(a1 + 32) + 16))();
  _dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 40));
}

void ___dispatch_operation_enqueue_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if ((*(a1 + 48) || !*(a1 + 52)) && *(a1 + 48) == 1)
  {
    *(a1 + 52);
  }

  v1 = *(a1 + 52);
  (*(*(a1 + 32) + 16))();
  dispatch_release(*(a1 + 40));
}

void _dispatch_stream_enqueue_operation(dispatch_queue_t *a1, uint64_t *a2, dispatch_object_s *a3)
{
  if (_dispatch_operation_should_enqueue(a2, *a1, a3))
  {
    _dispatch_object_debug(a2, "%s", v3, v4, v5, v6, v7, v8, "_dispatch_stream_enqueue_operation");
    v9 = !_dispatch_stream_operation_avail(a1);
    a2[30] = 0;
    a2[31] = a1[2 * a2[8] + 5];
    *a1[2 * a2[8] + 5] = a2;
    a1[2 * a2[8] + 5] = (a2 + 30);
    if (v9)
    {
      dispatch_channel_async_f(*a1, *a1, _dispatch_stream_queue_handler);
    }
  }
}

void _dispatch_disk_enqueue_operation(uint64_t a1, uint64_t *a2, dispatch_object_s *a3)
{
  if (_dispatch_operation_should_enqueue(a2, *(a1 + 72), a3))
  {
    _dispatch_object_debug(a2, "%s", v3, v4, v5, v6, v7, v8, "_dispatch_disk_enqueue_operation");
    if (a2[8])
    {
      a2[30] = 0;
      a2[31] = *(a1 + 56);
      **(a1 + 56) = a2;
      *(a1 + 56) = a2 + 30;
    }

    else
    {
      if (!*(a2[18] + 96))
      {
        a2[30] = 0;
        a2[31] = *(a1 + 56);
        **(a1 + 56) = a2;
        *(a1 + 56) = a2 + 30;
      }

      a2[32] = 0;
      a2[33] = *(a2[18] + 104);
      **(a2[18] + 104) = a2;
      *(a2[18] + 104) = a2 + 32;
    }

    _dispatch_disk_handler(a1);
  }
}

uint64_t _dispatch_operation_should_enqueue(uint64_t a1, dispatch_queue_s *a2, dispatch_object_s *a3)
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: enqueue", v3, v4, v5, v6, v7, v8, v9, 1203);
  dispatch_retain(a3);
  *(a1 + 232) = a3;
  error = _dispatch_io_get_error(a1, 0, 1);
  if (error)
  {
    *(a1 + 120) = error;
    _dispatch_thread_getspecific(0);
    v18 = *(a1 + 8);
    _dispatch_log("%u\t%p\top[%p]: release -> %d, err %d", v10, v11, v12, v13, v14, v15, v16, 1210);
    _dispatch_release(a1);
    v24 = 0;
  }

  else
  {
    if (*(a1 + 88))
    {
      object = _dispatch_operation_timer(a2, a1);
      dispatch_resume(object);
    }

    v24 = 1;
  }

  return v24 & 1;
}

void _dispatch_stream_queue_handler(dispatch_object_s *a1)
{
  context = dispatch_get_context(a1);
  if (context)
  {
    _dispatch_stream_handler(context);
  }
}

uint64_t _dispatch_operation_timer(dispatch_queue_s *a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  if (!*(a2 + 152))
  {
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
    v2 = dispatch_time(0, *(v12 + 88));
    dispatch_source_set_timer(v11, v2, *(v12 + 88), 0);
    handler = _NSConcreteStackBlock;
    v5 = 0x40000000;
    v6 = 0;
    v7 = ___dispatch_operation_timer_block_invoke;
    v8 = &__block_descriptor_tmp_141;
    v9 = v11;
    v10 = v12;
    dispatch_source_set_event_handler(v11, &handler);
    *(v12 + 152) = v11;
  }

  return *(v12 + 152);
}

void ___dispatch_operation_timer_block_invoke(uint64_t a1)
{
  if (!dispatch_source_testcancel(*(a1 + 32)))
  {
    v8 = (*(*(a1 + 40) + 96) & 1) != 0;
    if (*(*(a1 + 40) + 160) & 1) != 0 && (*(*(a1 + 40) + 96))
    {
      *(*(a1 + 40) + 184) = v8;
    }

    else
    {
      _dispatch_operation_deliver_data(*(a1 + 40), v8, v1, v2, v3, v4, v5, v6);
    }
  }
}

void _dispatch_stream_handler(dispatch_queue_t *a1)
{
  v55 = a1;
  v54 = a1;
  for (i = 0; ; _dispatch_stream_complete_operation(v54, i, v8, v9, v10, v11, v12, v13))
  {
    i = _dispatch_stream_pick_next_operation(v54, v54[2]);
    if (!i)
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tno operation found: stream %p", v1, v2, v3, v4, v5, v6, v7, 2072);
      return;
    }

    error = _dispatch_io_get_error(i, 0, 1);
    if (!error)
    {
      break;
    }

    *(i + 30) = error;
  }

  v54[2] = i;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: stream handler", v14, v15, v16, v17, v18, v19, v20, 2082);
  v51 = i[18];
  _dispatch_fd_entry_retain(v51);
  if (!i[27] && (byte_E4280 & 1) != 0)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: initial delivery", v21, v22, v23, v24, v25, v26, v27, 2088);
    _dispatch_operation_deliver_data(i, 1, v28, v29, v30, v31, v32, v33);
  }

  v50 = _dispatch_operation_perform(i);
  v49 = -1;
  switch(v50)
  {
    case 1:
      goto LABEL_22;
    case 2:
      v49 = 0;
      goto LABEL_18;
    case 3:
LABEL_18:
      if (v49)
      {
        v40 = 9;
      }

      else
      {
        v40 = 0;
      }

      v49 = v40;
      _dispatch_operation_deliver_data(i, v40, v34, v35, v36, v37, v38, v39);
LABEL_22:
      if (v49)
      {
        _dispatch_stream_complete_operation(v54, i, v34, v35, v36, v37, v38, v39);
      }

      if (_dispatch_stream_operation_avail(v54))
      {
        dispatch_channel_async_f(*v54, *v54, _dispatch_stream_queue_handler);
      }

      break;
    case 4:
      _dispatch_stream_complete_operation(v54, i, v34, v35, v36, v37, v38, v39);
LABEL_28:
      if (_dispatch_stream_operation_avail(v54))
      {
        *(v54 + 24) = 1;
        v48 = _dispatch_stream_source(v54, i);
        dispatch_resume(v48);
      }

      break;
    case 5:
      goto LABEL_28;
    case 6:
      _dispatch_stream_cleanup_operations(v54, i[17], v34, v35, v36, v37, v38, v39);
      break;
    case 7:
      _dispatch_fd_entry_retain(v51);
      v41 = *(v51 + 72);
      block = _NSConcreteStackBlock;
      v43 = 0x40000000;
      v44 = 0;
      v45 = ___dispatch_stream_handler_block_invoke;
      v46 = &__block_descriptor_tmp_145;
      v47 = v51;
      dispatch_channel_async(v41, &block);
      break;
  }

  _dispatch_fd_entry_release(v51);
}

uint64_t _dispatch_stream_pick_next_operation(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    if (*(a2 + 64))
    {
      if (*(a2 + 64) == 1)
      {
        v4 = *(a2 + 240);
        if (!v4)
        {
          return *(a1 + 48);
        }

        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return a2;
    }
  }

  else if (_dispatch_stream_operation_avail(a1))
  {
    if (*(a1 + 32))
    {
      return *(a1 + 32);
    }

    if (*(a1 + 48))
    {
      return *(a1 + 48);
    }

    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_operation_perform(uint64_t *a1)
{
  v80 = a1;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: perform", v1, v2, v3, v4, v5, v6, v7, 2328);
  error = _dispatch_io_get_error(v80, 0, 1);
  if (error)
  {
    goto LABEL_44;
  }

  v78 = v80;
  _dispatch_object_debug(v80, "%s", v8, v9, v10, v11, v12, v13, "_dispatch_operation_perform");
  if (!v80[22])
  {
    v77 = v80[10];
    v76 = dispatch_io_defaults;
    if (*(v80 + 14))
    {
      if (*(v80 + 14) == 1)
      {
        if (v76 > v77)
        {
          v76 = v77;
        }

        v80[24] = 0;
        v28 = v80[29];
        applier = _NSConcreteStackBlock;
        v69 = 0x40000000;
        v70 = 0;
        v71 = ___dispatch_operation_perform_block_invoke;
        v72 = &__block_descriptor_tmp_149;
        v73 = v80;
        v74 = v76;
        dispatch_data_apply(v28, &applier);
        if (v80[24] > v77)
        {
          v80[24] = v77;
        }

        data = dispatch_data_create_subrange(v80[29], 0, v80[24]);
        v80[28] = dispatch_data_create_map(data, v80 + 22, 0);
        dispatch_release(data);
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: buffer mapped", v29, v30, v31, v32, v33, v34, v35, 2396);
      }
    }

    else
    {
      size = dispatch_data_get_size(v80[29]);
      if (size)
      {
        v85 = size < v77;
        v84 = 2342;
        if (size >= v77)
        {
          _dispatch_abort(v84, 0, v14, v15, v16, v17, v18, v19);
        }

        v77 -= size;
      }

      if (v77 > v76)
      {
        v77 = v76;
      }

      if (v80[14] == -1)
      {
        v80[24] = v77;
      }

      else
      {
        v80[24] = v80[14] - v80[27];
        if (v80[24] > v77)
        {
          v80[24] = v77;
        }
      }

      v20 = v80[24];
      error = malloc_type_posix_memalign();
      if (error)
      {
        goto LABEL_44;
      }

      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: buffer allocated", v21, v22, v23, v24, v25, v26, v27, 2370);
    }
  }

  if (*v80[18] == -1)
  {
    error = _dispatch_fd_entry_open(v80[18], v80[17]);
    if (error)
    {
LABEL_44:
      if (error == 35)
      {
        v83 = *(v80[18] + 56) == 0;
        v82 = 2583;
        if (!v83)
        {
          _dispatch_abort(v82, 0, v8, v9, v10, v11, v12, v13);
        }

        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: performed: EAGAIN/EWOULDBLOCK", v47, v48, v49, v50, v51, v52, v53, 2584);
        if (!*(v80 + 14) && v80[27] && v80[17] == *(v80[18] + 88))
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }

      else
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: performed: err %d", v54, v55, v56, v57, v58, v59, v60, 2592);
        *(v80 + 30) = error;
        if (error == 9)
        {
          v61 = 0;
          atomic_compare_exchange_strong_explicit((v80[18] + 24), &v61, 9u, memory_order_relaxed, memory_order_relaxed);
          return 7;
        }

        else if (error == 89)
        {
          return 6;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  v66 = v80[22] + v80[25];
  v65 = v80[24] - v80[25];
  v64 = v80[13] + v80[27];
  NOCANCEL = -1;
  while (1)
  {
    if (*(v80 + 14))
    {
      if (*(v80 + 14) == 1)
      {
        if (v80[8])
        {
          if (v80[8] == 1)
          {
            v39 = *v80[18];
            NOCANCEL = pwrite_NOCANCEL();
          }
        }

        else
        {
          v38 = *v80[18];
          NOCANCEL = write_NOCANCEL();
        }
      }
    }

    else if (v80[8])
    {
      if (v80[8] == 1)
      {
        v37 = *v80[18];
        NOCANCEL = pread_NOCANCEL();
      }
    }

    else
    {
      v36 = *v80[18];
      NOCANCEL = read_NOCANCEL();
    }

    if (NOCANCEL != -1)
    {
      break;
    }

    v86 = 1;
    v87 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    error = **(StatusReg + 8);
    if (error != 4)
    {
      goto LABEL_44;
    }
  }

  if (NOCANCEL)
  {
    v80[25] += NOCANCEL;
    v80[27] += NOCANCEL;
    if (v80[27] == v80[14])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: performed: EOF", v40, v41, v42, v43, v44, v45, v46, 2568);
    return 3;
  }
}

dispatch_queue_t _dispatch_stream_source(dispatch_queue_t *a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  if (a1[1])
  {
    return v29[1];
  }

  v27 = **(v28 + 144);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: stream source create", v2, v3, v4, v5, v6, v7, v8, 2015);
  v26 = 0;
  if (!*(v28 + 56))
  {
    v26 = dispatch_source_create(&_dispatch_source_type_read, v27, 0, *v29);
LABEL_10:
    v25 = v26;
    dispatch_set_context(v26, v29);
    dispatch_source_set_event_handler_f(v26, _dispatch_stream_source_handler);
    v24 = *(*(v28 + 144) + 64);
    v17 = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = 0;
    v20 = ___dispatch_stream_source_block_invoke;
    v21 = &__block_descriptor_tmp_156;
    v22 = v28;
    v23 = v24;
    dispatch_source_set_mandatory_cancel_handler(v26, &v17);
    v29[1] = v26;
    return v29[1];
  }

  if (*(v28 + 56) == 1)
  {
    v26 = dispatch_source_create(&_dispatch_source_type_write, v27, 0, *v29);
    goto LABEL_10;
  }

  v15 = *(v28 + 56) < 2u;
  v32 = v15;
  v31 = 2024;
  if (!v15)
  {
    _dispatch_abort(v31, v32, v9, v10, v11, v12, v13, v14);
  }

  return 0;
}

BOOL ___dispatch_operation_perform_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1 + 32) + 192) + a5;
  if (!*(*(a1 + 32) + 192) || v7 <= *(a1 + 40))
  {
    v5 = *(*(a1 + 32) + 192) + a5;
    *(*(a1 + 32) + 192) = v7;
  }

  return v7 < *(a1 + 40);
}

uint64_t _dispatch_stream_source_handler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 8));
  *(a1 + 24) = 0;
  return _dispatch_stream_handler(a1);
}

void ___dispatch_stream_source_block_invoke(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v8 = *(a1 + 32);
  _dispatch_log("%u\t%p\top[%p]: stream source cancel", v1, v2, v3, v4, v5, v6, v7, 2034);
  dispatch_resume(*(a1 + 40));
}

void _dispatch_disk_handler(uint64_t a1)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tdisk[%p]: disk handler", v1, v2, v3, v4, v5, v6, v7, 2146);
    v44 = *(a1 + 80);
    v43 = *(a1 + 88);
    if (v43 <= v44)
    {
      v43 += *(a1 + 128);
    }

    while (v44 <= v43)
    {
      if (*(a1 + 136 + 8 * (v44 % *(a1 + 128))))
      {
        break;
      }

      operation = _dispatch_disk_pick_next_operation(a1);
      if (!operation)
      {
        break;
      }

      error = _dispatch_io_get_error(operation, 0, 1);
      if (error)
      {
        *(operation + 120) = error;
        _dispatch_disk_complete_operation(a1, operation, v8, v9, v10, v11, v12, v13);
      }

      else
      {
        _dispatch_retain(operation);
        _dispatch_thread_getspecific(0);
        v41 = *(operation + 8);
        _dispatch_log("%u\t%p\top[%p]: retain -> %d", v14, v15, v16, v17, v18, v19, v20, 2162);
        *(a1 + 136 + 8 * (v44 % *(a1 + 128))) = operation;
        *(operation + 160) = 1;
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: activate: disk %p", v21, v22, v23, v24, v25, v26, v27, 2165);
        _dispatch_object_debug(operation, "%s", v28, v29, v30, v31, v32, v33, "_dispatch_disk_handler");
        ++v44;
      }
    }

    *(a1 + 80) = v44 % *(a1 + 128);
    v46 = *(a1 + 136 + 8 * *(a1 + 88));
    if (v46)
    {
      *(a1 + 108) = 1;
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: async perform: disk %p", v34, v35, v36, v37, v38, v39, v40, 2177);
      dispatch_channel_async_f(*(v46 + 24), a1, _dispatch_disk_perform);
    }
  }
}

uint64_t _dispatch_disk_pick_next_operation(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    v3 = *(a1 + 64);
    do
    {
      v3 = *(v3 + 240);
      if (!v3)
      {
        v3 = *(a1 + 48);
      }

      v2 = 0;
      if (*(v3 + 160))
      {
        v2 = v3 != *(a1 + 64);
      }
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (*(v3 + 160))
  {
    return 0;
  }

  *(a1 + 64) = v3;
  return v3;
}

void _dispatch_disk_perform(void *a1)
{
  v50 = a1;
  v49 = a1;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tdisk[%p]: disk perform", v1, v2, v3, v4, v5, v6, v7, 2186);
  v48 = dispatch_io_defaults;
  v47 = 0;
  v46 = v49[12];
  v45 = v49[10];
  if (v45 <= v46)
  {
    v45 += v49[16];
  }

  while (1)
  {
    v47 = v49[v46 % v49[16] + 17];
    if (!v47)
    {
      break;
    }

    if (*(v47 + 14) != 1 && (*v47[18] != -1 || !_dispatch_fd_entry_open(v47[18], v47[17])))
    {
      if (!v47[27] && (byte_E4280 & 1) != 0)
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: initial delivery", v15, v16, v17, v18, v19, v20, v21, 2211);
        _dispatch_operation_deliver_data(v47, 1, v22, v23, v24, v25, v26, v27);
      }

      if (v45 - v46 == 1 && !v49[v49[10] + 17] && !v47[21])
      {
        v48 *= 2;
      }

      _dispatch_operation_advise(v47, v48);
    }

    if (++v46 >= v45)
    {
      goto LABEL_19;
    }
  }

  v14 = v46 % v49[16] == v49[10];
  v52 = v14;
  v51 = 2197;
  if (!v14)
  {
    _dispatch_abort(v51, v52, v8, v9, v10, v11, v12, v13);
  }

LABEL_19:
  v49[12] = v46 % v49[16];
  v47 = v49[v49[11] + 17];
  v44 = _dispatch_operation_perform(v47);
  v49[v49[11] + 17] = 0;
  v49[11] = (v49[11] + 1) % v49[16];
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: async perform completion: disk %p", v28, v29, v30, v31, v32, v33, v34, 2227);
  v35 = v49[9];
  block = _NSConcreteStackBlock;
  v37 = 0x40000000;
  v38 = 0;
  v39 = ___dispatch_disk_perform_block_invoke;
  v40 = &__block_descriptor_tmp_166;
  v41 = v47;
  v43 = v44;
  v42 = v49;
  dispatch_channel_async(v35, &block);
}

void _dispatch_operation_advise(uint64_t a1, uint64_t a2)
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: advise", v2, v3, v4, v5, v6, v7, v8, 2270);
  if (!_dispatch_io_get_error(a1, 0, 1) && *(a1 + 168) <= (*(a1 + 104) + *(a1 + 216) + a2 + vm_page_size))
  {
    _dispatch_object_debug(a1, "%s", v9, v10, v11, v12, v13, v14, "_dispatch_operation_advise");
    v26 = a2;
    if (!*(a1 + 168))
    {
      *(a1 + 168) = *(a1 + 104);
      v24 = (*(a1 + 104) + a2) % vm_page_size;
      if (v24)
      {
        v23 = vm_page_size - v24;
      }

      else
      {
        v23 = 0;
      }

      v26 = a2 + v23;
    }

    v25 = *(a1 + 168);
    *(a1 + 168) = v25 + v26;
    while (1)
    {
      v15 = **(a1 + 144);
      v22 = fcntl_NOCANCEL() == -1 ? **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) : 0;
      if (!v22)
      {
        break;
      }

      if (v22 != 4)
      {
        if (v22 != 27 && v22 != 45)
        {
          _dispatch_bug(2308, v22, v16, v17, v18, v19, v20, v21);
        }

        return;
      }
    }
  }
}

void ___dispatch_disk_perform_block_invoke(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v34 = *(a1 + 32);
  _dispatch_log("%u\t%p\top[%p]: perform completion", v1, v2, v3, v4, v5, v6, v7, 2229);
  v38 = *(a1 + 48);
  switch(v38)
  {
    case 1:
      _dispatch_disk_complete_operation(*(a1 + 40), *(a1 + 32), v8, v9, v10, v11, v12, v13);
      break;
    case 2:
      _dispatch_operation_deliver_data(*(a1 + 32), 0, v8, v9, v10, v11, v12, v13);
      break;
    case 3:
      _dispatch_operation_deliver_data(*(a1 + 32), 9, v8, v9, v10, v11, v12, v13);
      _dispatch_disk_complete_operation(*(a1 + 40), *(a1 + 32), v14, v15, v16, v17, v18, v19);
      break;
    case 6:
      _dispatch_disk_cleanup_operations(*(a1 + 40), *(*(a1 + 32) + 136));
      break;
    case 7:
      _dispatch_disk_cleanup_operations(*(a1 + 40), 0);
      break;
    default:
      if (!*(a1 + 48))
      {
        _dispatch_abort(2248, *(a1 + 48), v8, v9, v10, v11, v12, v13);
      }

      break;
  }

  _dispatch_thread_getspecific(0);
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  _dispatch_log("%u\t%p\top[%p]: deactivate: disk %p", v20, v21, v22, v23, v24, v25, v26, 2251);
  *(*(a1 + 32) + 160) = 0;
  *(*(a1 + 40) + 108) = 0;
  _dispatch_disk_handler(*(a1 + 40));
  _dispatch_thread_getspecific(0);
  v37 = *(*(a1 + 32) + 8);
  _dispatch_log("%u\t%p\top[%p]: release -> %d (disk perform complete)", v27, v28, v29, v30, v31, v32, v33, 2259);
  _dispatch_release(*(a1 + 32));
}

void ___dispatch_fd_entry_init_async_block_invoke(uint64_t a1)
{
  v20 = a1;
  v19 = a1;
  i = 0;
  v17 = *(a1 + 40) & 0x3FLL;
  for (i = _dispatch_io_fds[v17]; i; i = *(i + 112))
  {
    if (*i == *(a1 + 40))
    {
      _dispatch_fd_entry_retain(i);
      break;
    }
  }

  if (!i)
  {
    i = _dispatch_fd_entry_create_with_fd(*(a1 + 40), v17);
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: init", v1, v2, v3, v4, v5, v6, v7, 1400);
  v8 = *(i + 72);
  block = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = 0;
  v13 = ___dispatch_fd_entry_init_async_block_invoke_2;
  v14 = &__block_descriptor_tmp_172;
  v16 = i;
  v15 = *(a1 + 32);
  dispatch_channel_async(v8, &block);
}

uint64_t _dispatch_fd_entry_create_with_fd(int a1, uint64_t a2)
{
  v36 = a1;
  v35 = a2;
  v34 = _dispatch_fd_entry_create(_dispatch_io_fds_lockq);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: create: fd %d", v2, v3, v4, v5, v6, v7, v8, 1431);
  *v34 = v36;
  v9 = _dispatch_io_fds[v35];
  *(v34 + 112) = v9;
  if (v9)
  {
    *(_dispatch_io_fds[v35] + 120) = v34 + 112;
  }

  _dispatch_io_fds[v35] = v34;
  *(v34 + 120) = &_dispatch_io_fds[v35];
  *(v34 + 72) = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
  *(v34 + 80) = dispatch_group_create();
  v10 = *(v34 + 72);
  block = _NSConcreteStackBlock;
  v28 = 0x40000000;
  v29 = 0;
  v30 = ___dispatch_fd_entry_create_with_fd_block_invoke;
  v31 = &__block_descriptor_tmp_179;
  v32 = v34;
  v33 = v36;
  dispatch_channel_async(v10, &block);
  v11 = *(v34 + 64);
  v21 = _NSConcreteStackBlock;
  v22 = 0x40000000;
  v23 = 0;
  v24 = ___dispatch_fd_entry_create_with_fd_block_invoke_3;
  v25 = &__block_descriptor_tmp_182;
  v26 = v34;
  dispatch_channel_async(v11, &v21);
  v12 = *(v34 + 64);
  v14 = _NSConcreteStackBlock;
  v15 = 0x40000000;
  v16 = 0;
  v17 = ___dispatch_fd_entry_create_with_fd_block_invoke_5;
  v18 = &__block_descriptor_tmp_186;
  v19 = v34;
  v20 = v36;
  dispatch_channel_async(v12, &v14);
  return v34;
}

void ___dispatch_fd_entry_init_async_block_invoke_2(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v9 = *(a1 + 40);
  _dispatch_log("%u\t%p\tfd_entry[%p]: init completion", v1, v2, v3, v4, v5, v6, v7, 1402);
  v8 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  _dispatch_fd_entry_release(*(a1 + 40));
}

uint64_t _dispatch_fd_entry_create(dispatch_queue_s *a1)
{
  v2 = _dispatch_calloc_typed();
  *(v2 + 64) = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.closeq", 0, a1);
  _dispatch_fd_entry_retain(v2);
  return v2;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke(uint64_t a1)
{
  v74 = a1;
  v73 = a1;
  _dispatch_thread_getspecific(0);
  v44 = *(a1 + 32);
  _dispatch_log("%u\t%p\tfd_entry[%p]: stat", v1, v2, v3, v4, v5, v6, v7, 1459);
  v72 = 0;
  v71 = 0;
  v70 = -1;
  memset(&__b, 0, sizeof(__b));
  while (1)
  {
    if (fstat(*(a1 + 40), &__b) == -1)
    {
      v88 = 1;
      v99 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v50 = **(StatusReg + 8);
    }

    else
    {
      v50 = 0;
    }

    v72 = v50;
    if (!v50)
    {
      break;
    }

    if (v50 != 4)
    {
      *(*(a1 + 32) + 24) = v72;
      return;
    }
  }

  *(*(a1 + 32) + 32) = __b.st_dev;
  *(*(a1 + 32) + 36) = __b.st_mode;
  v8 = *(a1 + 32);
  _dispatch_object_finalize();
  while (1)
  {
    v9 = *(a1 + 40);
    v71 = fcntl_NOCANCEL();
    if (v71 == -1)
    {
      v89 = 1;
      v98 = 1;
      v101 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v49 = **(v101 + 8);
    }

    else
    {
      v49 = 0;
    }

    v72 = v49;
    if (!v49)
    {
      break;
    }

    if (v49 != 4)
    {
      v68 = v72;
      v84 = v72;
      v83 = 1471;
      if (v72)
      {
        _dispatch_bug(v83, v84, v10, v11, v12, v13, v14, v15);
      }

      v67 = v68;
      break;
    }
  }

  if ((__b.st_mode & 0xF000) == 0x1000)
  {
    while (1)
    {
      v16 = *(a1 + 40);
      v70 = fcntl_NOCANCEL();
      if (v70 == -1)
      {
        v90 = 1;
        v97 = 1;
        v102 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v48 = **(v102 + 8);
      }

      else
      {
        v48 = 0;
      }

      v72 = v48;
      if (!v48)
      {
        break;
      }

      if (v48 != 4)
      {
        v66 = v72;
        v82 = v72;
        v81 = 1477;
        if (v72)
        {
          _dispatch_bug(v81, v82, v17, v18, v19, v20, v21, v22);
        }

        v65 = v66;
        break;
      }
    }

    if (v70 != -1)
    {
      while (1)
      {
        v23 = *(a1 + 40);
        v70 = fcntl_NOCANCEL();
        if (v70 == -1)
        {
          v91 = 1;
          v96 = 1;
          v103 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v47 = **(v103 + 8);
        }

        else
        {
          v47 = 0;
        }

        v72 = v47;
        if (!v47)
        {
          break;
        }

        if (v47 != 4)
        {
          v70 = -1;
          v64 = v72;
          v80 = v72;
          v79 = 1484;
          if (v72)
          {
            _dispatch_bug(v79, v80, v24, v25, v26, v27, v28, v29);
          }

          v63 = v64;
          break;
        }
      }
    }
  }

  if ((__b.st_mode & 0xF000) == 0x8000)
  {
    if (v71 != -1)
    {
      while (1)
      {
        v30 = *(a1 + 40);
        if (fcntl_NOCANCEL() == -1)
        {
          v92 = 1;
          v95 = 1;
          v104 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v46 = **(v104 + 8);
        }

        else
        {
          v46 = 0;
        }

        v72 = v46;
        if (!v46)
        {
          break;
        }

        if (v46 != 4)
        {
          v71 = -1;
          v62 = v72;
          v78 = v72;
          v77 = 1496;
          if (v72)
          {
            _dispatch_bug(v77, v78, v31, v32, v33, v34, v35, v36);
          }

          v61 = v62;
          break;
        }
      }
    }

    st_dev_high = HIBYTE(__b.st_dev);
    object = *(*(a1 + 32) + 72);
    dispatch_suspend(object);
    v87 = &_dispatch_io_init_pred;
    v86 = 0;
    v85 = _dispatch_io_queues_init;
    if (_dispatch_io_init_pred != -1)
    {
      dispatch_once_f(v87, v86, v85);
    }

    block = _NSConcreteStackBlock;
    v53 = 0x40000000;
    v54 = 0;
    v55 = ___dispatch_fd_entry_create_with_fd_block_invoke_2;
    v56 = &__block_descriptor_tmp_178;
    v57 = *(a1 + 32);
    v58 = st_dev_high;
    dispatch_channel_async(_dispatch_io_devs_lockq, &block);
  }

  else
  {
    if (v71 != -1)
    {
      while (1)
      {
        v37 = *(a1 + 40);
        if (fcntl_NOCANCEL() == -1)
        {
          v93 = 1;
          v94 = 1;
          v105 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v45 = **(v105 + 8);
        }

        else
        {
          v45 = 0;
        }

        v72 = v45;
        if (!v45)
        {
          break;
        }

        if (v45 != 4)
        {
          v71 = -1;
          v76 = v72;
          v75 = 1516;
          if (v72)
          {
            _dispatch_bug(v75, v76, v38, v39, v40, v41, v42, v43);
          }

          break;
        }
      }
    }

    _dispatch_stream_init(*(a1 + 32), &off_E0600);
  }

  *(*(a1 + 32) + 16) = v71;
  *(*(a1 + 32) + 20) = v70;
}

uint64_t _dispatch_disk_init(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2 & 0x3F;
  for (i = _dispatch_io_devs[v11]; i; i = i[14])
  {
    if (*(i + 26) == a2)
    {
      result = _dispatch_retain(i);
      goto LABEL_9;
    }
  }

  v10 = qword_E4278;
  i = _dispatch_object_alloc(_OS_dispatch_disk_vtable, 8 * qword_E4278 + 136, a3, a4, a5, a6, a7, a8);
  i[2] = -1985229329;
  *(i + 3) = 0;
  i[16] = v10;
  i[3] = &off_E0600;
  *(i + 26) = a2;
  i[6] = 0;
  i[7] = i + 6;
  i[8] = i[6];
  __snprintf_chk(v15, 0x2DuLL, 0, 0x2DuLL, "com.apple.libdispatch-io.deviceq.%d", a2);
  result = dispatch_queue_create(v15, 0);
  i[9] = result;
  v9 = _dispatch_io_devs[v11];
  i[14] = v9;
  if (v9)
  {
    *(_dispatch_io_devs[v11] + 120) = i + 14;
  }

  _dispatch_io_devs[v11] = i;
  i[15] = &_dispatch_io_devs[v11];
LABEL_9:
  a1[7] = i;
  a1[12] = 0;
  a1[13] = a1 + 12;
  return result;
}

void _dispatch_stream_init(uint64_t a1, dispatch_queue_s *a2)
{
  for (i = 0; i < 2; ++i)
  {
    context = _dispatch_calloc_typed();
    *context = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.streamq", 0, a2);
    dispatch_set_context(*context, context);
    context[6] = 0;
    context[7] = (context + 6);
    context[4] = 0;
    context[5] = (context + 4);
    *(a1 + 40 + 8 * i) = context;
  }
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_3(uint64_t a1)
{
  v25 = a1;
  v24 = a1;
  if (*(*(a1 + 32) + 56))
  {
    v22 = *(*(a1 + 32) + 56);
    block = _NSConcreteStackBlock;
    v17 = 0x40000000;
    v18 = 0;
    v19 = ___dispatch_fd_entry_create_with_fd_block_invoke_4;
    v20 = &__block_descriptor_tmp_181;
    v21 = v22;
    dispatch_channel_async(_dispatch_io_devs_lockq, &block);
  }

  else
  {
    _dispatch_thread_getspecific(0);
    v14 = *(a1 + 32);
    _dispatch_log("%u\t%p\tfd_entry[%p]: close queue cleanup", v1, v2, v3, v4, v5, v6, v7, 1533);
    for (i = 0; i < 2; ++i)
    {
      _dispatch_stream_dispose(*(a1 + 32), i, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(*(a1 + 32) + 112))
  {
    *(*(*(a1 + 32) + 112) + 120) = *(*(a1 + 32) + 120);
  }

  **(*(a1 + 32) + 120) = *(*(a1 + 32) + 112);
  *(*(a1 + 32) + 112) = -1;
  *(*(a1 + 32) + 120) = -1;
}

void _dispatch_stream_dispose(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40 + 8 * a2);
  if (v8)
  {
    if (*(v8 + 4))
    {
      _dispatch_abort(1739, *(v8 + 4) == 0, a3, a4, a5, a6, a7, a8);
    }

    if (*(v8 + 6))
    {
      _dispatch_abort(1740, *(v8 + 6) == 0, a3, a4, a5, a6, a7, a8);
    }

    if (*(v8 + 1))
    {
      _dispatch_fd_entry_retain(a1);
      dispatch_source_cancel(*(v8 + 1));
      dispatch_resume(*(v8 + 1));
      dispatch_release(*(v8 + 1));
    }

    dispatch_set_context(*v8, 0);
    dispatch_release(*v8);
    free(v8);
  }
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_5(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v27 = *(a1 + 32);
  _dispatch_log("%u\t%p\tfd_entry[%p]: close queue release", v1, v2, v3, v4, v5, v6, v7, 1551);
  dispatch_release(*(*(a1 + 32) + 64));
  _dispatch_thread_getspecific(0);
  v28 = *(a1 + 32);
  _dispatch_log("%u\t%p\tfd_entry[%p]: barrier queue release", v8, v9, v10, v11, v12, v13, v14, 1553);
  dispatch_release(*(*(a1 + 32) + 72));
  _dispatch_thread_getspecific(0);
  v29 = *(a1 + 32);
  _dispatch_log("%u\t%p\tfd_entry[%p]: barrier group release", v15, v16, v17, v18, v19, v20, v21, 1555);
  dispatch_release(*(*(a1 + 32) + 80));
  if (*(*(a1 + 32) + 16) != -1)
  {
    do
    {
      v22 = *(a1 + 40);
      v25 = *(*(a1 + 32) + 16);
      if (fcntl_NOCANCEL() == -1)
      {
        v31 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v31 = 0;
      }
    }

    while (v31 == 4);
  }

  if (*(*(a1 + 32) + 20) != -1)
  {
    do
    {
      v23 = *(a1 + 40);
      v26 = *(*(a1 + 32) + 20);
      if (fcntl_NOCANCEL() == -1)
      {
        v30 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v30 = 0;
      }
    }

    while (v30 == 4);
  }

  v24 = *(a1 + 32);
  _dispatch_object_finalize();
  if (*(*(a1 + 32) + 88))
  {
    *(*(*(a1 + 32) + 88) + 112) = 0;
    dispatch_release(*(*(a1 + 32) + 88));
  }

  free(*(a1 + 32));
}

void ___dispatch_fd_entry_create_with_path_block_invoke(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v15 = *(a1 + 32);
  _dispatch_log("%u\t%p\tfd_entry[%p]: close queue cleanup", v1, v2, v3, v4, v5, v6, v7, 1611);
  if (!*(*(a1 + 32) + 56))
  {
    for (i = 0; i < 2; ++i)
    {
      _dispatch_stream_dispose(*(a1 + 32), i, v8, v9, v10, v11, v12, v13);
    }
  }

  if (**(a1 + 32) != -1)
  {
    v14 = **(a1 + 32);
    _dispatch_fd_entry_guarded_close(*(a1 + 32));
  }

  if (**(*(a1 + 32) + 8))
  {
    *(**(*(a1 + 32) + 8) + 112) = 0;
  }
}

uint64_t _dispatch_fd_entry_guarded_close(uint64_t a1)
{
  if (*(a1 + 28))
  {
    return guarded_close_np();
  }

  else
  {
    return close_NOCANCEL();
  }
}

void ___dispatch_fd_entry_create_with_path_block_invoke_2(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  v8 = *(a1 + 32);
  _dispatch_log("%u\t%p\tfd_entry[%p]: close queue release", v1, v2, v3, v4, v5, v6, v7, 1630);
  dispatch_release(*(*(a1 + 32) + 64));
  dispatch_release(*(*(a1 + 32) + 72));
  dispatch_release(*(*(a1 + 32) + 80));
  free(*(*(a1 + 32) + 8));
  free(*(a1 + 32));
}

uint64_t _dispatch_fd_entry_guarded_open(uint64_t a1)
{
  v2 = guarded_open_np();
  if (v2 == -1)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 0;
    return open_NOCANCEL();
  }

  else
  {
    *(a1 + 28) = 15;
    return v2;
  }
}

void ___dispatch_operation_deliver_data_block_invoke(uint64_t a1)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    if (*(a1 + 76) || !*(a1 + 80))
    {
      if (*(a1 + 76) == 1)
      {
        *(a1 + 80);
      }
    }

    else if (dispatch_data_get_size(*(a1 + 40)))
    {
      _dispatch_thread_getspecific(0);
      v16 = *(a1 + 48);
      _dispatch_log("%u\t%p\top[%p]: IO handler invoke", v1, v2, v3, v4, v5, v6, v7, 2701);
      (*(*(a1 + 32) + 16))();
    }
  }

  _dispatch_thread_getspecific(0);
  v17 = *(a1 + 48);
  v18 = *(a1 + 80);
  _dispatch_log("%u\t%p\top[%p]: IO handler invoke: err %d", v8, v9, v10, v11, v12, v13, v14, 2709);
  v15 = *(a1 + 80);
  (*(*(a1 + 32) + 16))();
  _dispatch_release(*(a1 + 56));
  _dispatch_fd_entry_release(*(a1 + 64));
  dispatch_release(*(a1 + 40));
}

void _dispatch_data_destroy_buffer(void *a1, mach_vm_size_t a2, dispatch_queue_s *a3, Block_layout *a4)
{
  v4 = a3;
  if (a4 == &__block_literal_global)
  {
    free(a1);
  }

  else if (a4 != &__block_literal_global_4154)
  {
    if (a4 == &__block_literal_global_4158)
    {
      mach_vm_deallocate(mach_task_self_, a1, a2);
    }

    else
    {
      if (!a3)
      {
        v4 = &off_E0600;
      }

      dispatch_channel_async_f(v4, a4, _dispatch_call_block_and_release);
    }
  }
}

dispatch_data_t dispatch_data_create(const void *buffer, size_t size, dispatch_queue_t queue, dispatch_block_t destructor)
{
  v21 = buffer;
  if (buffer && size)
  {
    if (destructor)
    {
      if (destructor == &__block_literal_global_4162)
      {
        if (size < 0xFFFFFFFFFFFFFFB0)
        {
          v26[8] = 0;
          if (is_mul_ok(0, 0x18uLL))
          {
            *v26 = (0 * 0x18uLL) >> 64 != 0;
            v27 = _dispatch_object_alloc(_OS_dispatch_data_vtable, size + 80 + *&v26[1], queue, destructor, v4, v5, v6, v7);
            *(v27 + 9) = 0;
            *(v27 + 3) = &off_E0600;
            *(v27 + 2) = -1985229329;
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        v16 = v28;
        v21 = __memcpy_chk();
        v18 = &__block_literal_global_4154;
      }

      else
      {
        v23[8] = 0;
        if (is_mul_ok(0, 0x18uLL))
        {
          *v23 = (0 * 0x18uLL) >> 64 != 0;
          v24 = _dispatch_object_alloc(_OS_dispatch_data_vtable, *&v23[1] + 80, queue, destructor, v4, v5, v6, v7);
          *(v24 + 9) = 0;
          *(v24 + 3) = &off_E0600;
          *(v24 + 2) = -1985229329;
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v16 = v25;
        v18 = _dispatch_Block_copy(destructor);
      }
    }

    else
    {
      if (!malloc_type_malloc())
      {
        return 0;
      }

      v21 = __memcpy_chk();
      v29[8] = 0;
      if (is_mul_ok(0, 0x18uLL))
      {
        *v29 = (0 * 0x18uLL) >> 64 != 0;
        v30 = _dispatch_object_alloc(_OS_dispatch_data_vtable, *&v29[1] + 80, v9, v10, v11, v12, v13, v14);
        *(v30 + 9) = 0;
        *(v30 + 3) = &off_E0600;
        *(v30 + 2) = -1985229329;
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v16 = v31;
      v18 = &__block_literal_global;
    }

    *(v16 + 6) = v21;
    *(v16 + 8) = size;
    *(v16 + 7) = v18;
    if (queue)
    {
      _dispatch_retain(queue);
      *(v16 + 3) = queue;
    }

    return v16;
  }

  else
  {
    if (destructor)
    {
      v8 = _dispatch_Block_copy(destructor);
      _dispatch_data_destroy_buffer(v21, size, queue, v8);
    }

    return &_dispatch_data_empty;
  }
}

dispatch_data_t dispatch_data_create_f(const void *a1, size_t a2, dispatch_queue_s *a3, Block_layout *a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v5 = 0;
  if (a4)
  {
    v5 = a4;
  }

  v13 = v5;
  if (v5 && v13 != &__block_literal_global && v13 != &__block_literal_global_4154 && v13 != &__block_literal_global_4158 && v13 != &__block_literal_global_4162)
  {
    v6 = _NSConcreteStackBlock;
    v7 = 0x40000000;
    v8 = 0;
    v9 = __dispatch_data_create_f_block_invoke;
    v10 = &__block_descriptor_tmp_0;
    v11 = v14;
    v12 = v17;
    v13 = &v6;
  }

  return dispatch_data_create(v17, v16, v15, v13);
}

dispatch_data_s *dispatch_data_create_alloc(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = &_dispatch_data_empty;
  v9 = 0;
  if (a1)
  {
    if (a1 < 0xFFFFFFFFFFFFFFB0)
    {
      if (is_mul_ok(0, 0x18uLL))
      {
        v13 = _dispatch_object_alloc(_OS_dispatch_data_vtable, a1 + 80, a3, a4, a5, a6, a7, a8);
        *(v13 + 9) = 0;
        *(v13 + 3) = &off_E0600;
        *(v13 + 2) = -1985229329;
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v10 = v14;
    v9 = (v14 + 80);
    *(v14 + 6) = v14 + 80;
    *(v14 + 8) = a1;
    *(v14 + 7) = &__block_literal_global_4154;
  }

  if (a2)
  {
    *a2 = v9;
  }

  return v10;
}

void _dispatch_data_dispose(uint64_t a1)
{
  if (*(a1 + 72))
  {
    for (i = 0; ; ++i)
    {
      v1 = *(a1 + 72) ? *(a1 + 72) : 1;
      if (i >= v1)
      {
        break;
      }

      dispatch_release(*(a1 + 80 + 24 * i));
    }

    free(*(a1 + 48));
  }

  else
  {
    _dispatch_data_destroy_buffer(*(a1 + 48), *(a1 + 64), *(a1 + 24), *(a1 + 56));
  }
}

dispatch_data_t dispatch_data_create_concat(dispatch_data_t data1, dispatch_data_t data2)
{
  if (*(data1 + 8))
  {
    if (*(data2 + 8))
    {
      if (*(data1 + 9))
      {
        v16 = *(data1 + 9);
      }

      else
      {
        v16 = 1;
      }

      if (*(data2 + 9))
      {
        v15 = *(data2 + 9);
      }

      else
      {
        v15 = 1;
      }

      v8 = __CFADD__(v16, v15);
      v18 = v16 + v15;
      if (v8)
      {
        return 0;
      }

      else
      {
        if ((v18 * 0x18uLL) >> 64 != 0 || (24 * v18) >= 0xFFFFFFFFFFFFFFB0)
        {
          v23 = 0;
        }

        else
        {
          v22 = _dispatch_object_alloc(_OS_dispatch_data_vtable, 24 * v18 + 80, v2, v3, v4, v5, v6, v7);
          *(v22 + 9) = v18;
          *(v22 + 3) = &off_E0600;
          *(v22 + 2) = -1985229329;
          v23 = v22;
        }

        *(v23 + 8) = *(data1 + 8) + *(data2 + 8);
        if (*(data1 + 9))
        {
          __memcpy_chk();
        }

        else
        {
          *(v23 + 11) = 0;
          *(v23 + 12) = *(data1 + 8);
          *(v23 + 10) = data1;
        }

        if (*(data2 + 9))
        {
          if (*(data1 + 9))
          {
            v11 = *(data1 + 9);
          }

          *(data2 + 9);
          __memcpy_chk();
        }

        else
        {
          if (*(data1 + 9))
          {
            v14 = *(data1 + 9);
          }

          else
          {
            v14 = 1;
          }

          *(v23 + 3 * v14 + 11) = 0;
          if (*(data1 + 9))
          {
            v13 = *(data1 + 9);
          }

          else
          {
            v13 = 1;
          }

          *(v23 + 3 * v13 + 12) = *(data2 + 8);
          if (*(data1 + 9))
          {
            v12 = *(data1 + 9);
          }

          else
          {
            v12 = 1;
          }

          *(v23 + 3 * v12 + 10) = data2;
        }

        for (i = 0; ; ++i)
        {
          v10 = *(v23 + 9) ? *(v23 + 9) : 1;
          if (i >= v10)
          {
            break;
          }

          dispatch_retain(*(v23 + 3 * i + 10));
        }

        return v23;
      }
    }

    else
    {
      dispatch_retain(data1);
      return data1;
    }
  }

  else
  {
    dispatch_retain(data2);
    return data2;
  }
}

dispatch_data_t dispatch_data_create_subrange(dispatch_data_t data, size_t offset, size_t length)
{
  v20 = offset;
  lengtha = length;
  if (offset >= *(data + 8) || !length)
  {
    return &_dispatch_data_empty;
  }

  if (length <= *(data + 8) - offset)
  {
    if (length == *(data + 8))
    {
      dispatch_retain(data);
      return data;
    }
  }

  else
  {
    lengtha = *(data + 8) - offset;
  }

  if (*(data + 9))
  {
    v12 = *(data + 9);
    v18 = offset + lengtha == *(data + 8);
    for (i = 0; ; ++i)
    {
      v11 = 0;
      if (i < v12)
      {
        v11 = v20 >= *(data + 3 * i + 12);
      }

      if (!v11)
      {
        break;
      }

      v8 = data + 24 * i;
      v20 -= *(v8 + 12);
    }

    if (i >= v12)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
      qword_E42C0 = i;
      __break(1u);
      JUMPOUT(0xAAD5CLL);
    }

    if (v20 + lengtha > *(data + 3 * i + 12))
    {
      v14 = 0;
      if (offset + lengtha == *(data + 8))
      {
        v15 = v12 - i;
      }

      else
      {
        v14 = lengtha + v20 - *(data + 3 * i + 12);
        v15 = 1;
        while (i + v15 < v12)
        {
          v9 = 24 * (i + v15++);
          v13 = *(data + v9 + 96);
          if (v14 <= v13)
          {
            break;
          }

          v14 -= v13;
          if (i + v15 >= v12)
          {
            qword_E4290 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
            qword_E42C0 = i + v15;
            __break(1u);
            JUMPOUT(0xAAEF4);
          }
        }
      }

      if (!is_mul_ok(v15, 0x18uLL) || 24 * v15 >= 0xFFFFFFFFFFFFFFB0)
      {
        v24 = 0;
      }

      else
      {
        v23 = _dispatch_object_alloc(_OS_dispatch_data_vtable, 24 * v15 + 80, length, v3, v4, v5, v6, v7);
        *(v23 + 9) = v15;
        *(v23 + 3) = &off_E0600;
        *(v23 + 2) = -1985229329;
        v24 = v23;
      }

      *(v24 + 8) = lengtha;
      __memcpy_chk();
      if (v20)
      {
        *(v24 + 11) += v20;
        *(v24 + 12) -= v20;
      }

      if (!v18)
      {
        *(v24 + 3 * v15 + 9) = v14;
      }

      for (j = 0; j < v15; ++j)
      {
        dispatch_retain(*(v24 + 3 * j + 10));
      }

      return v24;
    }

    else
    {
      return dispatch_data_create_subrange(*(data + 3 * i + 10), *(data + 3 * i + 11) + v20, lengtha);
    }
  }

  else
  {
    if (is_mul_ok(1uLL, 0x18uLL))
    {
      v25 = _dispatch_object_alloc(_OS_dispatch_data_vtable, 0x68uLL, length, v3, v4, v5, v6, v7);
      *(v25 + 9) = 1;
      *(v25 + 3) = &off_E0600;
      *(v25 + 2) = -1985229329;
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    *(v26 + 8) = lengtha;
    *(v26 + 11) = v20;
    *(v26 + 12) = lengtha;
    *(v26 + 10) = data;
    dispatch_retain(data);
    return v26;
  }
}