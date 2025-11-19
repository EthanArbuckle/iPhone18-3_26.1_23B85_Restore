uint64_t btree_node_largest_key_len(uint64_t a1)
{
  v1 = (*(a1 + 400) >> 9) & 0x3FFF;
  if (!v1)
  {
    LOWORD(v1) = *(a1 + 440);
    if (!v1)
    {
      v2 = *(a1 + 56);
      v3 = *(v2 + 36);
      if (v3)
      {
        v4 = 0;
        LOWORD(v1) = 0;
        v5 = *(v2 + 32);
        do
        {
          if ((v5 & 4) == 0)
          {
            v6 = *(*(a1 + 376) + 8 * v4 + 2);
            v7 = v1;
            if (v6 > v1)
            {
              v7 = *(*(a1 + 376) + 8 * v4 + 2);
            }

            if (v6 != 0xFFFF)
            {
              LOWORD(v1) = v7;
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      else
      {
        LOWORD(v1) = 0;
      }

      *(a1 + 440) = v1;
    }
  }

  return v1;
}

uint64_t bt_shift_or_split(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, unsigned int a5, void *a6, uint64_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v270 = a6;
  v20 = a1;
  v21 = a13;
  v305 = *MEMORY[0x277D85DE8];
  v22 = *(a1 + 400);
  v23 = v22 & 0x7F00000000000000;
  v24 = (HIBYTE(v22) & 0x7F) + 8;
  if (v23 <= 0x4000000000000000)
  {
    v25 = v24;
  }

  else
  {
    v25 = 72;
  }

  MEMORY[0x28223BE20](a1, v25);
  v272 = &v262[-v26];
  bzero(&v262[-v26], v27);
  LODWORD(v295) = 0;
  memset(v304, 0, sizeof(v304));
  v302 = 0;
  v303 = 0;
  v300 = 0;
  v301 = 0;
  v299 = 0;
  v297 = 0;
  v298 = 0;
  if ((*(*(a4 + 56) + 32) & 4) != 0)
  {
    LODWORD(v295) = (*(a4 + 400) & 4) == 0;
  }

  *a14 = 0;
  v286 = a8;
  v268 = a14;
  if (a2 && *(a2[7] + 36) - 1 > a3)
  {
    if (btree_node_child_val(a2, (a3 + 1), v272) || btree_node_get(v20, v272, a12, 3u, *(a2[7] + 34) - 1, a13, &v303) || !v303)
    {
      v303 = 0;
      v28 = 1;
    }

    else
    {
      if ((*(v20 + 400) & 0x10) != 0 && v303[14] != *v272)
      {
        btree_node_child_id_update(a2, (a3 + 1), v303 + 14, a13);
      }

      v28 = 0;
    }

    a8 = v286;
  }

  else
  {
    v28 = 1;
  }

  *(v304 + 8) = *(v20 + 400);
  *(&v304[1] + 1) = *(a4 + 416);
  LODWORD(v304[0]) = 2123139;
  v29 = *(a4 + 56);
  WORD2(v304[0]) = *(v29 + 32) & 0x1A;
  WORD3(v304[0]) = *(v29 + 34);
  if (a8)
  {
    v30 = 0;
    v33 = a8;
    do
    {
      v35 = *a9++;
      v34 = v35;
      if ((*(a4 + 400) & 0x40) != 0)
      {
        v36 = *a10;
      }

      else
      {
        v34 = (v34 + 7) & 0xFFF8;
        v36 = (*a10 + 7) & 0xFFF8;
      }

      v30 += v34 + v36;
      ++a10;
      --v33;
    }

    while (v33);
    v37 = v30;
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v29 + 36);
  LODWORD(v290) = a5;
  if (v38 <= a5)
  {
    v266 = a7;
    v269 = a3;
    v282 = 0;
    HIDWORD(v290) = 0;
    v41 = 0;
    v280 = 0;
  }

  else
  {
    v39 = btree_node_key_ptr(a4, a5, &v300, &v297 + 1);
    if (v39)
    {
      goto LABEL_32;
    }

    v40 = *(v20 + 8);
    if (!v40)
    {
      v40 = *(*v20 + 392);
    }

    v39 = (*(v20 + 416))(v40, v270, a7, v300, HIWORD(v297), &v298);
    if (v39)
    {
      goto LABEL_32;
    }

    v269 = a3;
    v266 = a7;
    if (v298)
    {
      v282 = 0;
      HIDWORD(v290) = 0;
      v41 = 0;
      v280 = 0;
      a5 = v290;
    }

    else
    {
      a5 = v290;
      if ((*(*(a4 + 56) + 32) & 2) != 0)
      {
        v119 = btree_node_val_len(a4, v290);
        if (v119 == 65534)
        {
          v120 = 0;
        }

        else
        {
          v120 = v119;
        }

        LOWORD(v297) = v120;
        if ((*(a4 + 400) & 0x40) != 0)
        {
          v121 = HIWORD(v297);
        }

        else
        {
          v121 = (HIWORD(v297) + 7) & 0xFFFFFFF8;
        }

        if ((*(a4 + 400) & 0x40) == 0)
        {
          v120 = (v120 + 7) & 0x1FFF8;
        }

        v282 = v121 + v120;
        HIDWORD(v290) = 1;
        v41 = 1;
        v280 = 1;
      }

      else
      {
        v282 = 0;
        HIDWORD(v290) = 0;
        v280 = 0;
        v41 = 1;
      }
    }
  }

  v283 = v20;
  v281 = a13;
  v296 = a4;
  v273 = a2;
  if (v28)
  {
    v42 = obj_flags(a4);
    v43 = *(v20 + 8);
    if (!v43)
    {
      v43 = *(*v20 + 392);
    }

    v44 = obj_subtype(a4);
    v39 = btree_node_create(v43, v42 & 0xFFFFFC00, v44, v304, a13, &v303);
    if (v39)
    {
LABEL_32:
      v45 = v39;
      goto LABEL_285;
    }

    atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, a13, 0);
    a5 = v290;
    if ((*(v20 + 400) & 2) != 0 || *(v20 + 432) == *(a4 + 112))
    {
      v46 = *(a4 + 56);
      if (*(v46 + 36) == v290)
      {
        v47 = 0;
        v48 = v290 + ((*(v46 + 32) >> 1) & 1) - 1;
        v49 = 1;
        v28 = 1;
        goto LABEL_146;
      }
    }
  }

  v50 = *(a4 + 56);
  v51 = *(v50 + 32);
  v277 = btree_node_toc_required_capacity(a4, 0);
  if ((v51 & 4) != 0)
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  v48 = *(v50 + 36);
  if (((v48 - 1) & 0x8000) != 0)
  {
    v293 = v286;
    LODWORD(v57) = v280;
LABEL_125:
    v280 = v57;
    v47 = 0;
    v118 = v293;
LABEL_144:
    v49 = v118 == 0;
    a2 = v273;
LABEL_145:
    a5 = v290;
LABEL_146:
    if (!a2 && (v47 != 0) | v28 & 1)
    {
      v122 = v48;
      v123 = obj_flags(a4);
      v124 = v283[1];
      if (!v124)
      {
        v124 = *(*v283 + 392);
      }

      v125 = obj_subtype(a4);
      v126 = btree_node_create(v124, v123 & 0xFFFFFC00, v125, v304, v21, &v302);
      if (v126)
      {
        v45 = v126;
        v291 = 0;
        v292 = v28;
        v294 = 0;
        v295 = 0;
        v127 = 0;
        LOWORD(v128) = 0;
        v129 = 0;
        v290 = 0;
        v293 = 0;
        LODWORD(v289) = 0;
        v130 = 0;
        v273 = 0;
        goto LABEL_152;
      }

      v132 = v283;
      atomic_fetch_add_explicit((v283[49] + 32), 1uLL, memory_order_relaxed);
      obj_dirty(v132, v21, 0);
      a5 = v290;
      LOWORD(v48) = v122;
    }

    v133 = v48;
    if (a5 >= v48)
    {
      v134 = v280;
    }

    else
    {
      v134 = 0;
    }

    v135 = *(a4 + 56);
    if (v134 != 1)
    {
      v293 = v134;
      v142 = 0;
      v143 = 0;
      LOWORD(v136) = 0;
      HIDWORD(v290) = 0;
LABEL_163:
      v144 = (*(v135 + 36) - v133);
      v291 = v143;
      v294 = v142;
      v295 = v144;
      if (v144 < 1)
      {
        v150 = v49;
        LODWORD(v290) = 0;
LABEL_173:
        v152 = 0;
        v151 = v269;
        goto LABEL_174;
      }

      v145 = v303;
      v146 = bt_move_entries(a4, v303, v144, v281);
      if (v146)
      {
        v45 = v146;
        v292 = v28;
        v131 = v283;
        v147 = v283[1];
        v148 = v266;
        if (v147)
        {
          v149 = (v147 + 4040);
        }

        else
        {
          v149 = (*(*(*v283 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3068, v149, v295, v146);
        v295 = 0;
        LOWORD(v128) = 0;
        v129 = 0;
        LODWORD(v290) = 0;
        LODWORD(v289) = 0;
        v130 = 0;
        v151 = v269;
        goto LABEL_217;
      }

      v148 = v266;
      if ((v28 & 1) == 0)
      {
        v174 = btree_node_key_ptr(v145, 0, &v300, &v297 + 1);
        if (v174 || (v174 = btree_node_entry_update(a2, (v269 + 1), v300, HIWORD(v297), 0), v174))
        {
          v45 = v174;
          v131 = v283;
          v175 = v283[1];
          v127 = v136;
          if (v175)
          {
            v176 = (v175 + 4040);
          }

          else
          {
            v176 = (*(*(*v283 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3076, v176, v174);
          v292 = 0;
          LOWORD(v128) = 0;
          v129 = 0;
          LODWORD(v290) = 0;
          LODWORD(v289) = 0;
          v130 = 0;
          goto LABEL_377;
        }
      }

      LODWORD(v290) = v28 ^ 1;
      if (!a2 || *(*(a4 + 56) + 36))
      {
        v150 = v49;
        goto LABEL_173;
      }

      v151 = v269;
      v225 = btree_node_entry_update(a2, v269, v270, v148, 0);
      if (!v225)
      {
        v150 = v49;
        v152 = 1;
LABEL_174:
        v153 = v302;
        LODWORD(v289) = v152;
        if (v302)
        {
          v292 = v28;
          v269 = v151;
          v154 = *(a4 + 56);
          v155 = *(v154 + 36);
          v156 = a4;
          v157 = a4;
          v158 = v281;
          v159 = bt_move_entries(v302, v156, -*(v154 + 36), v281);
          if (v159)
          {
            v45 = v159;
            v131 = v283;
            v160 = v283[1];
            if (v160)
            {
              v161 = (v160 + 4040);
            }

            else
            {
              v161 = (*(*(*v283 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3103, v161, -v155, v159);
            LOWORD(v128) = 0;
            v129 = 0;
            v130 = 0;
            v151 = v269;
            goto LABEL_216;
          }

          v288 = v155;
          btree_node_reinit_root(v157, (*(*(v157 + 56) + 34) + 1), v158);
          if (*(*(v153 + 56) + 36))
          {
            v177 = btree_node_key_ptr(v153, 0, &v300, &v297 + 1);
            v151 = v269;
            v178 = v296;
            v28 = v292;
            if (v177)
            {
              v45 = v177;
              v127 = v136;
LABEL_310:
              v131 = v283;
              v231 = v283[1];
              v148 = v266;
              LOWORD(v128) = v288;
              if (v231)
              {
                v232 = (v231 + 4040);
              }

              else
              {
                v232 = (*(*(*v283 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3126, v232, v45);
              v129 = 0;
              goto LABEL_314;
            }

            v163 = v150;
            v220 = v300;
            v221 = HIWORD(v297);
          }

          else
          {
            v220 = v270;
            v300 = v270;
            v221 = v266;
            HIWORD(v297) = v266;
            v151 = v269;
            v178 = v296;
            v28 = v292;
            v163 = v150;
          }

          v127 = v136;
          v229 = v272;
          *v272 = *(v153 + 112);
          v230 = btree_node_insert(v178, v220, v221, v229, (*(v178 + 407) & 0x7Fu) + 8, v281, 0, 0);
          if (v230)
          {
            v45 = v230;
            goto LABEL_310;
          }

          v273 = v178;
          v128 = v288;
          if ((v28 & 1) == 0)
          {
LABEL_316:
            v130 = 0;
            if (v47)
            {
LABEL_317:
              v269 = v151;
              if (v153)
              {
                v233 = v153;
              }

              else
              {
                v233 = v296;
              }

              v234 = *(*(v233 + 56) + 32);
              v292 = v28;
              if ((v234 & 2) != 0)
              {
                v129 = 0;
                v239 = v270;
                v300 = v270;
                v148 = v266;
                HIWORD(v297) = v266;
                v240 = v266;
                v235 = v301;
                v131 = v283;
              }

              else
              {
                v235 = v301;
                v236 = bt_move_entries(v233, v301, 1, v281);
                v131 = v283;
                v148 = v266;
                if (v236)
                {
                  v45 = v236;
                  v237 = v283[1];
                  if (v237)
                  {
                    v238 = (v237 + 4040);
                  }

                  else
                  {
                    v238 = (*(*(*v283 + 392) + 384) + 212);
                  }

                  log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3169, v238, 1, v236);
LABEL_376:
                  v129 = 0;
LABEL_377:
                  v151 = v269;
                  goto LABEL_218;
                }

                v256 = btree_node_key_ptr(v235, 0, &v300, &v297 + 1);
                if (v256)
                {
                  v45 = v256;
                  v257 = v131[1];
                  if (v257)
                  {
                    v258 = (v257 + 4040);
                  }

                  else
                  {
                    v258 = (*(*(*v131 + 392) + 384) + 212);
                  }

                  log_err("%s:%d: %s failed to get newnode minkey: %d\n", "bt_shift_or_split", 3174, v258, v256);
                  goto LABEL_376;
                }

                v239 = v300;
                v129 = 1;
                v240 = HIWORD(v297);
              }

              v241 = v272;
              *v272 = *(v235 + 112);
              v242 = btree_node_insert(v273, v239, v240, v241, (*(v273 + 407) & 0x7Fu) + 8, v281, 0, 0);
              if (v242)
              {
                v45 = v242;
                v243 = v131[1];
                if (v243)
                {
                  v244 = (v243 + 4040);
                }

                else
                {
                  v244 = (*(*(*v131 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3186, v244, v242);
                goto LABEL_377;
              }

              v245 = v303;
              v303 = v235;
              v246 = v296;
              v247 = v273;
              v248 = v294;
              v249 = v291;
LABEL_358:
              bt_update_last_leaf(v131, v247, v246);
LABEL_359:
              if (v248)
              {
                _apfs_free(v248, v249);
              }

              if (v245)
              {
                obj_unlock(v245, 2);
                obj_release(v245);
              }

              v259 = v302;
              v260 = v303;
              if (v302 && v303 != v302)
              {
                obj_unlock(v302, 2);
                obj_release(v259);
              }

              v45 = 0;
              *v268 = v260;
              goto LABEL_285;
            }

            goto LABEL_352;
          }
        }

        else
        {
          v128 = 0;
          v163 = v150;
          v127 = v136;
          if ((v28 & 1) == 0)
          {
            goto LABEL_316;
          }
        }

        v164 = v151;
        v165 = v303;
        if (v303)
        {
          v166 = v303[7];
          if (*(v166 + 36))
          {
            v288 = v128;
            v167 = btree_node_key_ptr(v303, 0, &v300, &v297 + 1);
            if (v167 || (v168 = v272, *v272 = v165[14], v167 = btree_node_insert(v273, v300, HIWORD(v297), v168, (*(v273 + 407) & 0x7Fu) + 8, v281, 0, 0), v167))
            {
              v45 = v167;
              v151 = v164;
              v131 = v283;
              v169 = v283[1];
              v148 = v266;
              LOWORD(v128) = v288;
              if (v169)
              {
                v170 = (v169 + 4040);
              }

              else
              {
                v170 = (*(*(*v283 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3142, v170, v167);
              v129 = 0;
              v130 = 0;
              v292 = 1;
              goto LABEL_218;
            }

            v130 = 1;
            v151 = v164;
            LOWORD(v128) = v288;
            if (v47)
            {
              goto LABEL_317;
            }

            goto LABEL_352;
          }

          if ((*(v166 + 32) & 2) != 0)
          {
            v301 = v303;
            v47 = 1;
          }

          else
          {
            atomic_fetch_add_explicit((v283[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            obj_delete_and_free(v165, v281);
            obj_unlock(v165, 2);
            obj_release(v165);
          }

          v130 = 0;
          v303 = 0;
        }

        else
        {
          v130 = 0;
        }

        v151 = v164;
        if (v47)
        {
          goto LABEL_317;
        }

LABEL_352:
        if (v163)
        {
          v245 = 0;
          v131 = v283;
          v246 = v296;
          v247 = v273;
          v248 = v294;
          v249 = v291;
        }

        else
        {
          v245 = v303;
          v131 = v283;
          v246 = v296;
          v247 = v273;
          v248 = v294;
          v249 = v291;
          if (v153)
          {
            v303 = v153;
          }

          else
          {
            v303 = 0;
          }
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_359;
        }

        goto LABEL_358;
      }

      v45 = v225;
      v292 = v28;
      v131 = v283;
      v226 = v283[1];
      v127 = v136;
      if (v226)
      {
        v227 = (v226 + 4040);
      }

      else
      {
        v227 = (*(*(*v283 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3087, v227, v225);
      LOWORD(v128) = 0;
      v129 = 0;
LABEL_298:
      LODWORD(v289) = 0;
LABEL_314:
      v130 = 0;
      goto LABEL_218;
    }

    v136 = *(v135 + 36) + ~a5;
    v137 = (*(v135 + 36) + ~a5);
    if (v137 < 1)
    {
      HIDWORD(v290) = 0;
      v151 = v269;
LABEL_181:
      v162 = btree_node_val_ptr(a4, a5, &v299, &v297);
      if (v162)
      {
        v45 = v162;
        v291 = 0;
        v292 = v28;
        v294 = 0;
        v295 = 0;
        LOWORD(v128) = 0;
        v129 = 0;
        v293 = 0;
        LODWORD(v290) = 0;
        LODWORD(v289) = 0;
        v130 = 0;
LABEL_183:
        v131 = v283;
LABEL_216:
        v148 = v266;
LABEL_217:
        v127 = v136;
        goto LABEL_218;
      }

      v293 = 1;
      v142 = 0;
      v143 = v297;
      if (v297 && v297 != 65534)
      {
        v171 = _apfs_malloc_typed(v297, 0xC5E0E89uLL);
        if (!v171)
        {
          v291 = 0;
          v292 = v28;
          v294 = 0;
          v295 = 0;
          LOWORD(v128) = 0;
          v129 = 0;
          v293 = 0;
          LODWORD(v290) = 0;
          LODWORD(v289) = 0;
          v130 = 0;
          v45 = 12;
          goto LABEL_183;
        }

        v142 = v171;
        memcpy(v171, v299, v297);
        v143 = v297;
      }

      v269 = v151;
      v172 = v281;
      btree_node_remove(a4, v290, v281);
      v173 = v283;
      atomic_fetch_add_explicit((v283[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_dirty(v173, v172, 0);
      v135 = *(a4 + 56);
      goto LABEL_163;
    }

    v138 = v303;
    v139 = bt_move_entries(a4, v303, v137, v281);
    if (v139)
    {
      v45 = v139;
      v292 = v28;
      v131 = v283;
      v140 = v283[1];
      if (v140)
      {
        v141 = (v140 + 4040);
      }

      else
      {
        v141 = (*(*(*v283 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3023, v141, 0, v139);
      v294 = 0;
      v295 = 0;
      v290 = 0;
      v291 = 0;
      v127 = 0;
      LOWORD(v128) = 0;
      v129 = 0;
      v293 = 0;
      LODWORD(v289) = 0;
      v130 = 0;
      goto LABEL_200;
    }

    if (v28)
    {
      HIDWORD(v290) = 0;
      v151 = v269;
LABEL_180:
      a5 = v290;
      goto LABEL_181;
    }

    v179 = btree_node_key_ptr(v138, 0, &v300, &v297 + 1);
    if (v179)
    {
      v45 = v179;
      v151 = v269;
    }

    else
    {
      v151 = v269;
      v222 = btree_node_entry_update(a2, (v269 + 1), v300, HIWORD(v297), 0);
      if (!v222)
      {
        HIDWORD(v290) = 1;
        goto LABEL_180;
      }

      v45 = v222;
    }

    v131 = v283;
    v223 = v283[1];
    v148 = v266;
    v127 = v136;
    if (v223)
    {
      v224 = (v223 + 4040);
    }

    else
    {
      v224 = (*(*(*v283 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3031, v224, v45);
    v291 = 0;
    v292 = 0;
    v294 = 0;
    v295 = 0;
    LOWORD(v128) = 0;
    v129 = 0;
    v290 = 0;
    v293 = 0;
    goto LABEL_298;
  }

  v267 = v37;
  v53 = v37 + a11;
  v265 = v41 + a5;
  v54 = (v48 - 1);
  v55 = v303;
  v285 = btree_node_free_space_total(v303);
  v289 = v55;
  v56 = btree_node_toc_required_capacity(v55, 0);
  v291 = v52;
  v284 = v56 << v52;
  v276 = btree_node_free_space_total(a4);
  LOWORD(v52) = 0;
  v288 = 0;
  LODWORD(v294) = 0;
  v57 = v280;
  v271 = v280 ^ 1;
  v264 = v53;
  v293 = v286;
  v263 = v53;
  v287 = v53;
  v58 = HIDWORD(v290);
  while (1)
  {
    v59 = v20;
    v60 = v28;
    v61 = v21;
    v278 = v48;
    v62 = v293;
    v63 = v293 - v58;
    v64 = btree_node_toc_required_capacity(a4, (v293 - v58));
    v65 = v276 + v282 + ((v277 - v64) << v291);
    v279 = (v276 + v282 + ((v277 - v64) << v291) - v287);
    if (((v65 >= v287) & v295) == 1)
    {
      v66 = *(*(a4 + 56) + 36) - v58 + v62;
      v67 = v66 >= btree_node_toc_required_capacity(v296, 0);
      a4 = v296;
      if (v67)
      {
        goto LABEL_51;
      }
    }

    else if (v65 < v287)
    {
LABEL_51:
      v21 = v61;
      v28 = v60;
      v20 = v59;
      v68 = v291;
      v69 = v288;
      goto LABEL_60;
    }

    v21 = v61;
    v28 = v60;
    if ((v60 & 1) == 0)
    {
      goto LABEL_143;
    }

    v20 = v59;
    if ((*(v59 + 400) & 2) != 0 || *(v59 + 432) == *(a4 + 112))
    {
      v68 = v291;
      if ((*(*(a4 + 56) + 32) & 2) != 0)
      {
        goto LABEL_143;
      }

      if (!v54)
      {
        goto LABEL_143;
      }

      v69 = v288;
      if ((v288 + *(*(v289 + 56) + 36)) > 1u)
      {
        goto LABEL_143;
      }

      v70 = btree_node_toc_required_capacity(v289, v288);
      v71 = v285 + v284 + v52 - (v70 << v68);
      if (v279 >= (v71 + ((v71 >> 29) & 3)) >> 2)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v68 = v291;
      if (v295)
      {
        if (!v54)
        {
          goto LABEL_143;
        }

        v89 = v63 + *(*(a4 + 56) + 36);
        v69 = v288;
        v57 = v280;
        if (v89 <= (v288 + *(*(v289 + 56) + 36)))
        {
          goto LABEL_143;
        }
      }

      else
      {
        v69 = v288;
        v117 = btree_node_toc_required_capacity(v289, v288);
        if (!v54)
        {
          goto LABEL_143;
        }

        v57 = v280;
        if (v279 >= (v285 + v284 + v52 - (v117 << v68)))
        {
          goto LABEL_143;
        }
      }
    }

LABEL_60:
    HIDWORD(v290) = v58;
    v292 = v28;
    v72 = v54;
    v73 = *(a4 + 56);
    v74 = *(v73 + 32);
    if ((v74 & 2) == 0 || v271 + v54 != v290)
    {
      goto LABEL_85;
    }

    v274 = *(v73 + 32);
    v275 = v73;
    v75 = v286;
    v76 = (v69 + v286);
    v77 = v289;
    v78 = btree_node_toc_required_capacity(v289, v76);
    v79 = (v78 << v68) - v284;
    v80 = v267 + v294 + ((v78 << v68) - v284);
    if (((v80 <= v285) & v295) == 1)
    {
      v81 = v75 + v69 + *(*(v77 + 56) + 36);
      v67 = v81 >= btree_node_toc_required_capacity(v77, 0);
      v20 = v283;
      if (v67)
      {
        goto LABEL_65;
      }
    }

    else if (v80 > v285)
    {
LABEL_65:
      if ((v292 & 1) == 0)
      {
        a4 = v296;
        v82 = obj_flags(v296);
        v83 = v289;
        obj_unlock(v289, 2);
        obj_release(v83);
        v303 = 0;
        v84 = *(v20 + 8);
        v85 = v280;
        if (!v84)
        {
          v84 = *(*v20 + 392);
        }

        v86 = obj_subtype(a4);
        v39 = btree_node_create(v84, v82 & 0xFFFFFC00, v86, v304, v21, &v303);
        v58 = HIDWORD(v290);
        if (v39)
        {
          goto LABEL_32;
        }

        v28 = 1;
        atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
        obj_dirty(v20, v21, 0);
        v87 = v303;
        v88 = btree_node_toc_required_capacity(v303, 0);
        v284 = v88 << v291;
        v289 = v87;
        v285 = btree_node_free_space_total(v87);
        goto LABEL_112;
      }

      if (v280)
      {
        LOWORD(v54) = v278 - 2;
      }

      a4 = v296;
      if (v279 < 0)
      {
        LOWORD(v48) = v54 + 1;
        v49 = v293 == 0;
        v47 = 2843;
        goto LABEL_303;
      }

      v28 = 1;
LABEL_143:
      v118 = v293;
      v47 = 0;
      LOWORD(v48) = v54 + 1;
      goto LABEL_144;
    }

    v293 -= v286;
    v73 = v275;
    if ((v292 & 1) == 0)
    {
      v28 = 0;
      if (v280)
      {
        LOWORD(v54) = v278 - 2;
      }

LABEL_142:
      a4 = v296;
      goto LABEL_143;
    }

    if ((*(v20 + 400) & 2) != 0 || *(v20 + 432) == v296[14])
    {
LABEL_126:
      if (v280)
      {
        LOWORD(v54) = v278 - 2;
      }

      v28 = 1;
      goto LABEL_142;
    }

    v72 = v54;
    v287 -= v263;
    LODWORD(v294) = v294 + v263;
    if (v295)
    {
      if (!v54 || (v293 - WORD2(v290) + *(v275 + 36)) <= (v76 + *(*(v289 + 56) + 36)))
      {
        goto LABEL_126;
      }
    }

    else if (!v54 || v279 >= (v285 - v294 - v79))
    {
      goto LABEL_126;
    }

    v69 = v76;
    a4 = v296;
    v74 = v274;
    v57 = v280;
LABEL_85:
    v288 = v69;
    if ((v74 & 4) != 0)
    {
      v91 = a4;
      v92 = *(a4 + 400);
      v90 = (v92 >> 9) & 0x3FFF;
    }

    else
    {
      v90 = *(*(a4 + 376) + 8 * v54 + 2);
      v91 = a4;
      v92 = *(a4 + 400);
    }

    HIWORD(v297) = v90;
    v93 = btree_node_val_len(v91, v54);
    v94 = v93 == 65534 ? 0 : v93;
    LOWORD(v297) = v94;
    v95 = (v90 + 7) & 0x1FFF8;
    if ((v92 & 0x40) != 0)
    {
      v95 = v90;
    }

    else
    {
      v94 = (v94 + 7) & 0x1FFF8;
    }

    v96 = v54 == v290 ? v57 : 0;
    if ((v96 & 1) == 0)
    {
      break;
    }

    v54 = v290;
    v20 = v283;
    a4 = v296;
    v28 = v292;
    v58 = HIDWORD(v290);
LABEL_119:
    v48 = v54;
    LODWORD(v52) = -v294;
    v116 = v54 - 1;
    v54 = (v54 - 1);
    if (v116 < 0)
    {
      goto LABEL_125;
    }
  }

  v274 = v74;
  v275 = v73;
  v85 = v57;
  v97 = v21;
  v98 = v95 + v94;
  if (v293 != 0 && v265 > v72)
  {
    v99 = v286;
  }

  else
  {
    v99 = 0;
  }

  if (v293 != 0 && v265 > v72)
  {
    v100 = v264;
  }

  else
  {
    v100 = 0;
  }

  v101 = v288;
  v102 = (v288 + v99 + 1);
  v103 = v289;
  v104 = btree_node_toc_required_capacity(v289, v102);
  v105 = v100 + v294 + v98 + ((v104 << v68) - v284);
  if (((v105 <= v285) & v295) == 1)
  {
    v106 = v99 + v101 + *(*(v103 + 56) + 36) + 1;
    v107 = btree_node_toc_required_capacity(v103, 0);
    v21 = v281;
    v108 = v287;
    if (v106 >= v107)
    {
      goto LABEL_107;
    }

LABEL_114:
    LODWORD(v294) = v294 + v100 + v98;
    v293 -= v99;
    if (v99)
    {
      v115 = v100;
    }

    else
    {
      v115 = 0;
    }

    v287 = v108 - v115;
    v58 = HIDWORD(v290) + 1;
    v282 += v98;
    v288 = v102;
    v20 = v283;
    a4 = v296;
    v28 = v292;
LABEL_118:
    v57 = v85;
    goto LABEL_119;
  }

  v21 = v97;
  v108 = v287;
  if (v105 <= v285)
  {
    goto LABEL_114;
  }

LABEL_107:
  LODWORD(v57) = v85;
  if ((v292 & 1) == 0)
  {
    a4 = v296;
    v109 = obj_flags(v296);
    v110 = v289;
    obj_unlock(v289, 2);
    obj_release(v110);
    v303 = 0;
    v20 = v283;
    v111 = v283[1];
    if (!v111)
    {
      v111 = *(*v283 + 392);
    }

    v112 = obj_subtype(a4);
    v39 = btree_node_create(v111, v109 & 0xFFFFFC00, v112, v304, v21, &v303);
    v58 = HIDWORD(v290);
    if (v39)
    {
      goto LABEL_32;
    }

    atomic_fetch_add_explicit((*(v20 + 392) + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, v21, 0);
    v113 = v303;
    v114 = btree_node_toc_required_capacity(v303, 0);
    v284 = v114 << v291;
    v289 = v113;
    v285 = btree_node_free_space_total(v113);
    v28 = 1;
LABEL_112:
    v54 = v278;
    goto LABEL_118;
  }

  a4 = v296;
  if ((v279 & 0x80000000) == 0)
  {
    v28 = 1;
    LOWORD(v48) = v278;
    goto LABEL_125;
  }

  v49 = v293 == 0;
  LOWORD(v48) = v278;
  v47 = 2917;
  if (v278 > 1)
  {
LABEL_303:
    a2 = v273;
    v228 = v289;
    goto LABEL_304;
  }

  a2 = v273;
  v228 = v289;
  if ((v274 & 2) == 0)
  {
    v47 = 0;
    v28 = 1;
    goto LABEL_145;
  }

LABEL_304:
  if (*(v275 + 36) == v48 && v228)
  {
    v28 = 0;
    v301 = v228;
    v303 = 0;
    goto LABEL_145;
  }

  v250 = v49;
  v251 = v48;
  v252 = obj_flags(a4);
  v253 = v283[1];
  if (!v253)
  {
    v253 = *(*v283 + 392);
  }

  v254 = obj_subtype(a4);
  v255 = btree_node_create(v253, v252 & 0xFFFFFC00, v254, v304, v21, &v301);
  if (!v255)
  {
    v261 = v283;
    atomic_fetch_add_explicit((v283[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v261, v21, 0);
    v28 = 1;
    a2 = v273;
    a5 = v290;
    LOWORD(v48) = v251;
    v49 = v250;
    goto LABEL_146;
  }

  v45 = v255;
  v294 = 0;
  v295 = 0;
  v290 = 0;
  v291 = 0;
  v127 = 0;
  LOWORD(v128) = 0;
  v129 = 0;
  v293 = 0;
  LODWORD(v289) = 0;
  v130 = 0;
  v292 = 1;
LABEL_152:
  v131 = v283;
LABEL_200:
  v151 = v269;
  v148 = v266;
LABEL_218:
  v180 = v131[1];
  if (v180)
  {
    v181 = (v180 + 4040);
  }

  else
  {
    v181 = (*(*(*v131 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s reverting on error: %d\n", "bt_shift_or_split", 3222, v181, v45);
  if (v130)
  {
    btree_node_remove(v273, (v151 + 1), v281);
  }

  v182 = v296;
  if (v129)
  {
    v183 = bt_move_entries(v296, v301, -1, v281);
    v45 = v183;
    if (v183)
    {
      v184 = v131[1];
      if (v184)
      {
        v185 = (v184 + 4040);
      }

      else
      {
        v185 = (*(*(*v131 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3229, v185, -1, v183);
    }
  }

  v186 = v151;
  v187 = v128;
  v188 = v273;
  if (v187 >= 1)
  {
    v189 = v281;
    btree_node_reinit_root(v182, (*(v182[7] + 34) - 1), v281);
    v190 = bt_move_entries(v302, v182, v187, v189);
    if (v190)
    {
      v191 = v131[1];
      if (v191)
      {
        v192 = (v191 + 4040);
      }

      else
      {
        v192 = (*(*(*v131 + 392) + 384) + 212);
      }

      v182 = v296;
      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3239, v192, v190, v45);
      v188 = 0;
    }

    else
    {
      v188 = 0;
      v182 = v296;
    }
  }

  if (v295 >= 1)
  {
    v193 = v303;
    v194 = bt_move_entries(v182, v303, -v295, v281);
    if (v194)
    {
      v195 = v131[1];
      if (v195)
      {
        v196 = (v195 + 4040);
      }

      else
      {
        v196 = (*(*(*v131 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3246, v196, v194, v45);
    }

    if (!(v292 & 1 | ((v290 & 1) == 0)))
    {
      v197 = btree_node_key_ptr(v193, 0, &v300, &v297 + 1);
      if (v197 || (v197 = btree_node_entry_update(v188, (v186 + 1), v300, HIWORD(v297), 0)) != 0)
      {
        v198 = v131[1];
        if (v198)
        {
          v199 = (v198 + 4040);
        }

        else
        {
          v199 = (*(*(*v131 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3254, v199, v197, v45);
      }
    }

    if (v289)
    {
      v200 = btree_node_key_ptr(v182, 0, &v300, &v297 + 1);
      if (v200 || (v200 = btree_node_entry_update(v188, v186, v300, HIWORD(v297), 0)) != 0)
      {
        v201 = v131[1];
        if (v201)
        {
          v202 = (v201 + 4040);
        }

        else
        {
          v202 = (*(*(*v131 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3263, v202, v200, v45);
      }
    }
  }

  v203 = v294;
  if (v293)
  {
    v204 = btree_node_insert(v182, v270, v148, v294, v291, v281, 0, 0);
    if (v204)
    {
      v205 = v131[1];
      if (v205)
      {
        v206 = (v205 + 4040);
      }

      else
      {
        v206 = (*(*(*v131 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3270, v206, v204, v45);
    }

    if (v203)
    {
      _apfs_free(v203, v291);
    }
  }

  v207 = v281;
  if (v127 >= 1)
  {
    v208 = v303;
    v209 = bt_move_entries(v296, v303, -v127, v281);
    if (v209)
    {
      v210 = v131[1];
      if (v210)
      {
        v211 = (v210 + 4040);
      }

      else
      {
        v211 = (*(*(*v131 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3279, v211, v209, v45);
    }

    if (!(v292 & 1 | ((v290 & 0x100000000) == 0)))
    {
      v212 = btree_node_key_ptr(v208, 0, &v300, &v297 + 1);
      if (v212 || (v212 = btree_node_entry_update(v188, (v186 + 1), v300, HIWORD(v297), 0)) != 0)
      {
        v213 = v131[1];
        if (v213)
        {
          v214 = (v213 + 4040);
        }

        else
        {
          v214 = (*(*(*v131 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3287, v214, v212, v45);
      }
    }
  }

  v215 = v303;
  if (v303)
  {
    if (!*(v303[7] + 36))
    {
      atomic_fetch_add_explicit((v131[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_delete_and_free(v215, v207);
    }

    obj_unlock(v215, 2);
    obj_release(v215);
  }

  v216 = v301;
  if (v301)
  {
    atomic_fetch_add_explicit((v131[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v216, v207);
    obj_unlock(v216, 2);
    obj_release(v216);
  }

  v217 = v302;
  if (v302)
  {
    atomic_fetch_add_explicit((v131[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v217, v207);
    obj_unlock(v217, 2);
    obj_release(v217);
  }

LABEL_285:
  v218 = *MEMORY[0x277D85DE8];
  return v45;
}

uint64_t btree_node_insert(void *a1, unint64_t *a2, size_t a3, void *a4, unsigned int a5, uint64_t a6, unsigned __int16 *a7, _BYTE *a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = a1[50];
  MEMORY[0x28223BE20]();
  v18 = &v25[-v17];
  bzero(&v25[-v17], v19);
  v27 = 0;
  v26 = 0;
  result = bt_search_node_insert(a1, a2, a3, &v27, &v26);
  if (result)
  {
    goto LABEL_2;
  }

  if (a8)
  {
    *a8 = v26;
  }

  if (a7)
  {
    *a7 = v27;
  }

  if ((*(a1[7] + 32) & 0xA) != 8)
  {
LABEL_10:
    if (v26)
    {
      result = btree_node_entry_update(a1, v27, a2, a3, a4);
    }

    else
    {
      result = btree_node_insert_internal(a1, v27, a2, a3, a4, a5, a6);
    }

    goto LABEL_2;
  }

  v22 = a1[51];
  if (*a4 > v22)
  {
    *v18 = *a4 - v22;
    a4 = v18;
    goto LABEL_10;
  }

  v23 = a1[1];
  if (v23)
  {
    v24 = (v23 + 4040);
  }

  else
  {
    v24 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_insert", 2273, v24, *a4, v22);
  result = 22;
LABEL_2:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t bt_update_with_hint(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, unsigned int a6, unint64_t a7, uint64_t *a8)
{
  v46 = a3;
  v53[1] = *MEMORY[0x277D85DE8];
  v15 = a1[50];
  if ((v15 & 0x7F00000000000000) <= 0x4000000000000000)
  {
    v16 = (HIBYTE(v15) & 0x7F) + 8;
  }

  else
  {
    v16 = 72;
  }

  MEMORY[0x28223BE20](a1, v16);
  v18 = (&v43 - v17);
  bzero(&v43 - v17, v19);
  v52 = 0;
  v51 = 0;
  if (!a1[52])
  {
    v21 = 22;
    goto LABEL_9;
  }

  v20 = btree_entry_size_check(a1, a4, a6);
  if (v20 || (v20 = obj_modify(a1, (v15 >> 3) & 2, a7), v20))
  {
    v21 = v20;
    goto LABEL_9;
  }

  v24 = a1[49];
  v25 = *(v24 + 16) < a4 || *(v24 + 20) < a6;
  v45 = v25;
  v53[0] = 0;
  v50 = 0;
  v43 = a5;
  v44 = a8;
  if (a8)
  {
    v26 = *a8;
    if (*a8)
    {
      if (a8[1] == a1 && ((v45 | ((a1[50] & 0x10) >> 4)) & 1) == 0)
      {
        *v18 = v26;
        if (v26 != obj_oid(a1) && !btree_node_get(a1, v18, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, a7, v53))
        {
          v27 = v53[0];
          if ((*(*(v53[0] + 56) + 32) & 2) != 0 && !bt_search_node(v53[0], v46, a4, &v51, &v50) && v50)
          {
            if ((*(v27[7] + 32) & 2) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_48;
          }

          obj_unlock(v27, 2);
          obj_release(v27);
        }
      }
    }
  }

  v21 = 2;
  obj_lock(a1, 2);
  obj_retain(a1);
  v29 = a1 + 7;
  v28 = a1[7];
  if ((*(v28 + 32) & 2) == 0)
  {
    v30 = 0;
    v31 = 2;
    v27 = a1;
    while (1)
    {
      if (!*(v28 + 36))
      {
        v21 = v31;
        goto LABEL_43;
      }

      v32 = bt_search_node_insert(v27, v46, a4, &v51, &v50);
      if (v32)
      {
        goto LABEL_60;
      }

      v33 = v51;
      if (!v50 && v51)
      {
        v33 = --v51;
      }

      v32 = btree_node_child_val(v27, v33, v18);
      if (v32 || (v32 = btree_node_get(a1, v18, a2, 3u, *(*v29 + 34) - 1, a7, &v52), v32))
      {
LABEL_60:
        v21 = v32;
        v53[0] = v27;
        goto LABEL_65;
      }

      if ((a1[50] & 0x10) != 0 && v52[14] != *v18)
      {
        btree_node_child_id_update(v27, v33, v52 + 14, a7);
      }

      if (v27 != a1 || !v45)
      {
        obj_unlock(v27, 2);
        obj_release(v27);
      }

      v27 = v52;
      if (!v52)
      {
        break;
      }

      v31 = 0;
      v21 = 0;
      v29 = v52 + 7;
      v28 = v52[7];
      v30 = 1;
      if ((*(v28 + 32) & 2) != 0)
      {
        goto LABEL_43;
      }
    }

    v53[0] = 0;
    goto LABEL_63;
  }

  v30 = 0;
  v27 = a1;
LABEL_43:
  v53[0] = v27;
  if ((*(v27[7] + 32) & 2) == 0)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v21 = bt_search_node(v27, v46, a4, &v51, &v50);
  if (!v21)
  {
    if (!v50)
    {
LABEL_63:
      v21 = 2;
      goto LABEL_64;
    }

LABEL_48:
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v34 = v51;
    v35 = btree_node_key_ptr(v27, v51, &v49, &v47);
    v37 = v43;
    v36 = v44;
    if (!v35)
    {
      v38 = v49;
      v39 = a1[1];
      if (!v39)
      {
        v39 = *(*a1 + 392);
      }

      if (!(a1[52])(v39, v49, v47, v46, a4, &v48) && v48)
      {
        panic("you can't change a key here!  (ekey %p eklen %d; key %p klen %d; n %p bt %p)\n", v38, v47, v46, a4, v27, a1);
      }
    }

    v21 = btree_node_entry_update(v27, v34, v46, a4, v37, a6, a7);
    if (v21)
    {
      goto LABEL_64;
    }

    v40 = a1[49];
    v41 = *(v40 + 16);
    if (v41 < a4)
    {
      *(v40 + 16) = a4;
    }

    if (*(v40 + 20) >= a6)
    {
      if (v41 >= a4 && (a1[50] & 0x80) == 0)
      {
LABEL_72:
        if (v36)
        {
          *v36 = obj_oid(v27);
          v36[1] = a1;
        }

        goto LABEL_64;
      }
    }

    else
    {
      *(v40 + 20) = a6;
    }

    obj_dirty(a1, a7, 0);
    goto LABEL_72;
  }

LABEL_64:
  v27 = v53[0];
  if (v53[0])
  {
LABEL_65:
    obj_unlock(v27, 2);
    obj_release(v27);
  }

  v42 = !v45;
  if (v27 == a1)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    obj_unlock(a1, 2);
    obj_release(a1);
  }

LABEL_9:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t btree_node_entry_update_via_callback(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v10 = *(a1 + 56);
  if (*(v10 + 36) <= a2)
  {
    return 22;
  }

  v17 = *(v10 + 32);
  v18 = *(a1 + 376);
  if ((v17 & 4) != 0)
  {
    v19 = (v18 + 4 * a2);
  }

  else
  {
    v19 = (v18 + 8 * a2);
  }

  v20 = *v19;
  v21 = (v18 + 4 * a2 + 2);
  if ((v17 & 4) == 0)
  {
    v21 = (v18 + 8 * a2 + 4);
  }

  v22 = *v21;
  v23 = *v19 == 0xFFFFLL;
  if (v20 == 0xFFFF)
  {
    v24 = 0;
  }

  else if ((v17 & 4) != 0)
  {
    v24 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v24 = *(v18 + 8 * a2 + 2);
  }

  if (v22 > 0xFFFD)
  {
    v25 = 0;
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = btree_node_val_len(a1, a2);
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  result = btree_node_key_range_validate(a1, v20, v24);
  if (result)
  {
    return result;
  }

LABEL_17:
  if (!v25)
  {
    if (v20 != 0xFFFF)
    {
LABEL_27:
      if (v25 >= a6)
      {
        v29 = 1;
      }

      else
      {
        v29 = a7;
      }

      result = 22;
      if (v24 == a4 && v29)
      {
        result = a9(*(a1 + 384) + v20, v24, a3, a4, *(a1 + 392) - v22, v25, a5, a6, a10);
        if (!result)
        {
          obj_dirty(a1, a8, 0);
          return 0;
        }
      }

      return result;
    }

    return 22;
  }

  LODWORD(result) = btree_node_val_range_validate(a1, v22, v25);
  v27 = result;
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (v20 != 0xFFFF && v27 == 0)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t bt_remove_internal(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, unsigned int a5, void *a6, unsigned int *a7, void *a8, unsigned int *a9, uint64_t a10)
{
  v130 = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 400);
  v19 = (v18 & 0x7F00000000000000) > 0x4000000000000000;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  v126 = 0;
  v20 = (HIBYTE(v18) & 0x7F) + 8;
  if (v19)
  {
    v21 = 72;
  }

  else
  {
    v21 = v20;
  }

  MEMORY[0x28223BE20](a1, v21);
  v23 = (&v103 - v22);
  bzero(&v103 - v22, v24);
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v122 = a5;
  v121 = 0;
  v120 = 0;
  if (!*(a1 + 416))
  {
    goto LABEL_10;
  }

  v25 = *(a1 + 400);
  v26 = (v25 >> 9) & 0x3FFF;
  if (!v26)
  {
    if ((((((v25 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72 >= a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v28 = 22;
    goto LABEL_11;
  }

  if (v26 != a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v111 = *(*(a1 + 392) + 16);
  v110 = a8;
  v116 = a2;
  obj_lock(a1, 2);
  v27 = obj_modify(a1, (*(a1 + 400) >> 3) & 2, a10);
  if (v27)
  {
    v28 = v27;
    obj_unlock(a1, 2);
    goto LABEL_11;
  }

  v114 = a10;
  v109 = &v103;
  *&v127 = a1;
  obj_retain(a1);
  v31 = btri_search_node(a1, a3, 1, a4, &v122, a5, &v127 + 4, (&v127 | 0xA));
  if (v31)
  {
LABEL_13:
    v28 = v31;
    goto LABEL_14;
  }

  v32 = 0;
  v112 = 0;
  v108 = 0;
  v34 = 0;
  v106 = a9;
  v107 = (v111 + 7) & 0x1FFF8;
  v113 = a4;
  while (1)
  {
    if (v34)
    {
      v115 = 1;
      v35 = v128;
      if (!v128)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v35 = v128;
      if (BYTE10(v127) == 1 && WORD4(v127) == 0)
      {
        v108 = WORD4(v128);
        v115 = 1;
        v32 = v127;
        v112 = v128;
        if (!v128)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v115 = 0;
        if (!v128)
        {
          goto LABEL_47;
        }
      }
    }

    if ((*(a1 + 401) & 0x7FFE) != 0)
    {
      goto LABEL_47;
    }

    v119 = 0;
    if (BYTE10(v127) == 1)
    {
      v37 = btree_node_key_ptr(v35, WORD4(v128), &v125, &v120);
      if (v37)
      {
        goto LABEL_100;
      }

      v38 = v111;
      if ((*(v128 + 400) & 0x40) == 0)
      {
        v38 = v107;
      }

      v39 = v120;
      if ((*(v128 + 400) & 0x40) == 0)
      {
        v39 = (v120 + 7) & 0xFFF8;
      }

      v40 = v38 - v39;
      if (v40 < 0)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }
    }

    else
    {
      v41 = 0;
    }

    v118 = btree_node_largest_key_len(v127);
    v42 = v128;
    v117 = (*(v127 + 407) & 0x7F) + 8;
    if (btree_node_has_room(v128, 1u, &v118, &v117, v41, 0, 0))
    {
      goto LABEL_46;
    }

    v37 = bt_shift_or_split(a1, v129, WORD4(v129), v42, (WORD4(v128) + ((BYTE10(v128) & 1) == 0)), v113, v122, 1u, &v118, &v117, v41, v116, v114, &v119);
    if (v37)
    {
      goto LABEL_100;
    }

    v43 = v119;
    if (!v119)
    {
LABEL_46:
      a4 = v113;
      goto LABEL_47;
    }

    v44 = v128;
    v105 = v128;
    if (v129)
    {
      ++WORD4(v129);
      if (v128)
      {
        if (v112 == v128 || v128 == v32)
        {
          v104 = v128;
          goto LABEL_67;
        }

        obj_unlock(v128, 2);
        obj_release(v44);
      }
    }

    else
    {
      *&v129 = v128;
      if (*(*(v119 + 56) + 36))
      {
        v37 = btree_node_key_ptr(v119, 0, &v125, &v120);
        if (v37)
        {
          goto LABEL_100;
        }

        v48 = bt_search_node(v129, v125, v120, &v129 + 4, &v129 + 10);
      }

      else
      {
        v48 = btri_search_node(v128, a3, 0, v113, &v122, a5, &v129 + 4, &v129 + 10);
      }

      v28 = v48;
      if (v48)
      {
        goto LABEL_101;
      }
    }

    v104 = 0;
LABEL_67:
    v49 = v112 != v129 || v112 == 0;
    v50 = v108;
    if (!v49)
    {
      v50 = WORD4(v129);
    }

    v108 = v50;
    *&v128 = v43;
    v37 = btri_search_node(v43, a3, 0, v113, &v122, a5, &v128 + 4, &v128 + 10);
    if (v37)
    {
      goto LABEL_100;
    }

    v51 = v127;
    obj_unlock(v127, 2);
    obj_release(v51);
    *&v127 = 0;
    v37 = btree_node_child_val(v128, WORD4(v128), v23);
    if (v37)
    {
      goto LABEL_100;
    }

    v37 = btree_node_get(a1, v23, v116, 3u, *(*(v128 + 56) + 34) - 1, v114, &v127);
    if (v37)
    {
      goto LABEL_100;
    }

    v52 = v127;
    if ((*(a1 + 400) & 0x10) != 0)
    {
      a4 = v113;
      if (*(v127 + 112) != *v23)
      {
        btree_node_child_id_update(v128, WORD4(v128), (v127 + 112), v114);
        v52 = v127;
      }
    }

    else
    {
      a4 = v113;
    }

    v37 = btri_search_node(v52, a3, 1, a4, &v122, a5, &v127 + 4, (&v127 | 0xA));
    if (v37)
    {
LABEL_100:
      v28 = v37;
LABEL_101:
      v126 = v32;
LABEL_102:
      v33 = v112;
      goto LABEL_103;
    }

    if (v112 == v105)
    {
      v55 = WORD4(v128);
      v53 = v104;
      if (v112 == a1 && !WORD4(v128))
      {
        v32 = v128;
        goto LABEL_47;
      }

      v54 = v115;
      if (WORD4(v128))
      {
        goto LABEL_95;
      }

      v108 = WORD4(v129);
      goto LABEL_91;
    }

    v53 = v104;
    if (v115)
    {
      v54 = 1;
      goto LABEL_96;
    }

    v55 = WORD4(v128);
    if (BYTE10(v128) == 1 && !WORD4(v128))
    {
      v108 = WORD4(v129);
      v54 = 1;
LABEL_91:
      v112 = v129;
      v32 = v128;
      goto LABEL_96;
    }

    v54 = 0;
    if (BYTE10(v127) == 1 && !WORD4(v127))
    {
      v54 = 1;
LABEL_95:
      v112 = v128;
      v32 = v127;
      v108 = v55;
    }

LABEL_96:
    v115 = v54;
    if (v53 && v53 != v112 && v53 != v32)
    {
      obj_unlock(v53, 2);
      obj_release(v53);
    }

LABEL_47:
    if ((*(*(v127 + 56) + 32) & 2) != 0)
    {
      break;
    }

    v45 = v129;
    if (v129 && v129 != v112 && v129 != v32)
    {
      obj_unlock(v129, 2);
      obj_release(v45);
    }

    v46 = v128;
    v128 = v127;
    v129 = v46;
    *&v127 = 0;
    v37 = btree_node_child_val(v128, WORD4(v128), v23);
    if (!v37)
    {
      v37 = btree_node_get(a1, v23, v116, 3u, *(*(v128 + 56) + 34) - 1, v114, &v127);
      if (!v37)
      {
        v47 = v127;
        if ((*(a1 + 400) & 0x10) != 0)
        {
          a4 = v113;
          if (*(v127 + 112) != *v23)
          {
            btree_node_child_id_update(v128, WORD4(v128), (v127 + 112), v114);
            v47 = v127;
          }
        }

        else
        {
          a4 = v113;
        }

        v37 = btri_search_node(v47, a3, 1, a4, &v122, a5, &v127 + 4, (&v127 | 0xA));
        v34 = v115;
        if (!v37)
        {
          continue;
        }
      }
    }

    goto LABEL_100;
  }

  v126 = v32;
  v60 = btri_search_node(v127, a3, 1, a4, &v122, a5, &v127 + 4, (&v127 | 0xA));
  if (v60)
  {
LABEL_130:
    v28 = v60;
    goto LABEL_102;
  }

  if (BYTE10(v127) != 1)
  {
    v28 = 2;
    goto LABEL_102;
  }

  if (a6)
  {
    v60 = btree_node_key_ptr(v127, 0, &v124, &v121 + 1);
    if (v60)
    {
      goto LABEL_130;
    }

    v61 = HIWORD(v121);
    v62 = *a7;
    if (*a7 >= HIWORD(v121))
    {
      v63 = HIWORD(v121);
    }

    else
    {
      v63 = v62;
    }

    memcpy(a6, v124, v63);
    *a7 = v61;
    if (v62 < v61)
    {
      v28 = 34;
      goto LABEL_102;
    }
  }

  v33 = v112;
  if (v110)
  {
    v64 = btree_node_val_ptr(v127, 0, &v123, &v121);
    if (v64)
    {
      goto LABEL_142;
    }

    v65 = v121;
    v66 = v121 == 65534 ? 0 : v121;
    v67 = v106;
    v68 = *v106;
    v69 = *v106 >= v66 ? v66 : v68;
    memcpy(v110, v123, v69);
    *v67 = v65;
    if (v68 < v66)
    {
      v28 = 34;
      goto LABEL_103;
    }
  }

  v70 = v114;
  btree_node_remove(v127, WORD4(v127), v114);
  atomic_fetch_add_explicit((*(a1 + 392) + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  obj_dirty(a1, v70, 0);
  if (WORD4(v127))
  {
    v28 = 0;
    goto LABEL_163;
  }

  v28 = 0;
  if (*(*(v127 + 56) + 36) && v128)
  {
    v71 = btree_node_key_ptr(v127, 0, &v125, &v120);
    if (v71)
    {
      v28 = v71;
      goto LABEL_158;
    }

    v28 = btree_node_entry_update(v128, WORD4(v128), v125, v120, 0);
    if (v28)
    {
LABEL_158:
      v72 = *(a1 + 8);
      if (v72)
      {
        v73 = (v72 + 4040);
      }

      else
      {
        v73 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5068, v73, v28);
    }

    v33 = v112;
  }

LABEL_163:
  is_underused = btree_node_is_underused(a1, v127);
  v75 = v129;
  v76 = v115;
  if (v129)
  {
    if (v129 != v33 && v129 != v32)
    {
      obj_unlock(v129, 2);
      obj_release(v75);
      v76 = v115;
    }

    *&v129 = 0;
  }

  v77 = v128;
  if (v128)
  {
    if (v128 != v33 && v128 != v32)
    {
      obj_unlock(v128, 2);
      obj_release(v77);
      v76 = v115;
    }

    *&v128 = 0;
  }

  if (v76 && *(*(v127 + 56) + 36))
  {
    v64 = btree_node_key_ptr(v127, 0, &v125, &v120);
    if (v64)
    {
LABEL_142:
      v28 = v64;
      goto LABEL_103;
    }

    if (v33)
    {
      v78 = btree_node_entry_update(v112, v108, v125, v120, 0);
      v28 = v78;
      if (v78)
      {
        v79 = *(a1 + 8);
        if (v79)
        {
          v80 = (v79 + 4040);
        }

        else
        {
          v80 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5094, v80, v78);
      }

      if (v112 != v129 && v112 != v128 && v112 != v127)
      {
        v81 = v112;
        obj_unlock(v112, 2);
        obj_release(v81);
      }
    }

    else
    {
      v28 = 0;
    }

    v82 = v126;
    v83 = v126 + 56;
    v84 = v113;
    if ((*(*(v126 + 56) + 32) & 2) == 0)
    {
      v85 = v122;
      v86 = v125;
      while (1)
      {
        LOWORD(v119) = 0;
        LOBYTE(v118) = 0;
        v32 = v82;
        v87 = bt_search_node(v82, v84, v85, &v119, &v118);
        if (v87)
        {
          v28 = v87;
          goto LABEL_15;
        }

        if (v118 != 1)
        {
          break;
        }

        if (*(*v83 + 34) == 1)
        {
          v93 = *(a1 + 8);
          if (v93)
          {
            v94 = (v93 + 4040);
          }

          else
          {
            v94 = (*(*(*a1 + 392) + 384) + 212);
          }

          v95 = obj_oid(v32);
          v96 = obj_subtype(v32);
          log_err("%s:%d: %s minkey update traversal unexpectedly found the removed key in level 1 node; oid %llu subtype 0x%x level %d\n", "bt_remove_internal", 5117, v94, v95, v96, *(*v83 + 34));
          break;
        }

        v88 = v119;
        v89 = btree_node_entry_update(v32, v119, v86, v120, 0);
        if (v89)
        {
          v90 = *(a1 + 8);
          if (v90)
          {
            v91 = (v90 + 4040);
          }

          else
          {
            v91 = (*(*(*a1 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5123, v91, v89);
        }

        v28 = btree_node_child_val(v32, v88, v23);
        v92 = *(*v83 + 34);
        v126 = 0;
        if (!v28)
        {
          v28 = btree_node_get(a1, v23, v116, 3u, v92 - 1, v114, &v126);
        }

        v84 = v113;
        if (v32 != v129 && v32 != v128 && v32 != v127)
        {
          obj_unlock(v32, 2);
          obj_release(v32);
        }

        if (!v28)
        {
          v82 = v126;
          v83 = v126 + 56;
          if ((*(*(v126 + 56) + 32) & 2) == 0)
          {
            continue;
          }
        }

        goto LABEL_216;
      }

      v28 = 0;
    }
  }

  else if (v33 && v33 != v129 && v33 != v127)
  {
    obj_unlock(v33, 2);
    obj_release(v33);
  }

LABEL_216:
  v97 = v126;
  if (v126)
  {
    if (v126 != v129 && v126 != v128 && v126 != v127)
    {
      obj_unlock(v126, 2);
      obj_release(v97);
    }

    v126 = 0;
  }

  if (!is_underused)
  {
    v98 = 0;
    v100 = 0;
    goto LABEL_229;
  }

  if (WORD4(v127) || !*(*(v127 + 56) + 36))
  {
    v98 = 0;
    v99 = 0;
    goto LABEL_225;
  }

  v31 = btree_node_key_ptr(v127, 0, &v125, &v120);
  if (v31)
  {
    goto LABEL_13;
  }

  v99 = v120;
  v102 = _apfs_malloc_typed(v120, 0x144C515AuLL);
  v98 = v102;
  if (v102)
  {
    memcpy(v102, v125, v120);
  }

  v28 = 0;
LABEL_225:
  if (v98)
  {
    v100 = v99;
  }

  else
  {
    v98 = v113;
    v100 = v122;
  }

LABEL_229:
  v101 = v127;
  obj_unlock(v127, 2);
  obj_release(v101);
  *&v127 = 0;
  if (is_underused)
  {
    bt_merge_up(a1, v116, v98, v100, v114);
    if (v98 != v113)
    {
      _apfs_free(v98, v100);
    }
  }

LABEL_14:
  v32 = 0;
LABEL_15:
  v33 = 0;
LABEL_103:
  v56 = v129;
  if (v129)
  {
    if (v129 != v33 && v129 != v32)
    {
      obj_unlock(v129, 2);
      obj_release(v56);
    }

    *&v129 = 0;
  }

  v58 = v128;
  if (v128)
  {
    if (v128 != v33 && v128 != v32)
    {
      obj_unlock(v128, 2);
      obj_release(v58);
    }

    *&v128 = 0;
  }

  v59 = v127;
  if (v127)
  {
    if (v127 != v33 && v127 != v32)
    {
      obj_unlock(v127, 2);
      obj_release(v59);
    }

    *&v127 = 0;
  }

  if (v33 && v33 != v129 && v33 != v128)
  {
    obj_unlock(v33, 2);
    obj_release(v33);
    v32 = v126;
  }

  if (v32 && v32 != v129 && v32 != v128 && v32 != v127)
  {
    obj_unlock(v32, 2);
    obj_release(v32);
  }

LABEL_11:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t btri_search_node(uint64_t a1, char a2, int a3, unint64_t *a4, _WORD *a5, unsigned int a6, _WORD *a7, BOOL *a8)
{
  if ((a2 & 1) == 0)
  {
    v13 = bt_search_node_insert(a1, a4, *a5, a7, a8);
    if (v13)
    {
      return v13;
    }

    if (!*a8 && *a7)
    {
      v13 = 0;
      --*a7;
      return v13;
    }

    return 0;
  }

  if (!*(*(a1 + 56) + 36))
  {
    return 2;
  }

  *a7 = 0;
  *a8 = 1;
  if (!a3)
  {
    return 0;
  }

  __src = 0;
  v16 = 0;
  v13 = btree_node_key_ptr(a1, 0, &__src, &v16);
  if (!v13)
  {
    if (v16 >= a6)
    {
      v14 = a6;
    }

    else
    {
      v14 = v16;
    }

    *a5 = v14;
    memcpy(a4, __src, v14);
  }

  return v13;
}

void btree_node_remove(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(v6 + 32) & 4;
  if (v7)
  {
    v8 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v8 = *(*(a1 + 376) + 8 * a2 + 2);
  }

  if (*(a1 + 440) <= v8)
  {
    *(a1 + 440) = 0;
    v7 = *(v6 + 32) & 4;
  }

  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  v11 = (v9 + 8 * a2);
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *v12;
  v14 = *(a1 + 400);
  if ((v14 & 0x40) != 0)
  {
    v15 = v8;
  }

  else
  {
    v15 = (v8 + 7) & 0xFFF8;
  }

  if (v13 != 0xFFFF)
  {
    v16 = btree_node_key_range_validate(a1, v13, v15);
    v6 = *(a1 + 56);
    v14 = *(a1 + 400);
    if (!v16)
    {
      v17 = (v15 + 7) & 0xFFF8;
      if ((v14 & 0x40) != 0)
      {
        v17 = v15;
      }

      if (v17 >= 4u)
      {
        v18 = (*(a1 + 384) + v13);
        v18[1] = v17;
        *v18 = *(v6 + 48);
        *(v6 + 48) = v13;
      }

      *(v6 + 50) += v17;
      v14 = *(a1 + 400);
    }
  }

  v19 = *(a1 + 376);
  v20 = v19 + 4 * a2 + 2;
  v21 = v19 + 8 * a2 + 4;
  if ((*(v6 + 32) & 4) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *v22;
  v24 = btree_node_val_len(a1, a2);
  if ((v14 & 0x40) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = (v24 + 7) & 0xFFF8;
  }

  if (v23 <= 0xFFFD)
  {
    v26 = btree_node_val_range_validate(a1, v23, v25);
    v6 = *(a1 + 56);
    if (!v26)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = (v25 + 7) & 0xFFF8;
      }

      if (v27 >= 4u)
      {
        v28 = (*(a1 + 392) - v23);
        v28[1] = v27;
        *v28 = *(v6 + 52);
        *(v6 + 52) = v23;
      }

      *(v6 + 54) += v27;
    }
  }

  v29 = *(v6 + 36) - 1;
  if (v29 > a2)
  {
    btree_node_toc_shift(a1, a2, -1);
    v6 = *(a1 + 56);
    v29 = *(v6 + 36) - 1;
  }

  *(v6 + 36) = v29;
  v30 = *(v6 + 32);
  if ((v30 & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      goto LABEL_49;
    }

    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  v32 = *(v6 + 42) / v31;
  if (v32 - v29 >= 0x10)
  {
    v33 = 8;
    if ((v30 & 4) == 0 || ((v34 = *(a1 + 400), (v30 & 2) != 0) ? (v35 = v34 >> 23) : (LOWORD(v35) = (HIBYTE(v34) & 0x7F) + 8), (v36 = ((((v34 >> 27) & 0x1F000) - 56) / (((v34 >> 9) & 0x3FFF) + v35 + 4)) & 0xFFFE, (v32 - 8) >= v36) ? (v33 = 8) : (v33 = v32 - v36), v32 > v36))
    {
      v37 = v33 * v31;
      memmove((*(a1 + 384) - (v33 * v31)), *(a1 + 384), *(v6 + 44));
      *(a1 + 384) -= v37;
      v38 = *(a1 + 56);
      *(v38 + 42) -= v37;
      *(v38 + 46) += v37;
    }
  }

LABEL_49:

  obj_dirty(a1, a3, 0);
}

BOOL btree_node_is_underused(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(v2 + 32);
  if ((~v3 & 3) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 36);
  if (!v4)
  {
    return 1;
  }

  if (*(a1 + 432) == *(a2 + 112))
  {
    return 0;
  }

  if ((v3 & 4) == 0 || (*(a2 + 400) & 4) != 0)
  {
    v8 = obj_size_phys(a2);
    if (*(*(a2 + 56) + 32))
    {
      v9 = -96;
    }

    else
    {
      v9 = -56;
    }

    v7 = (v9 + v8) >> 1 >= btree_node_free_space_total(a2);
  }

  else
  {
    v7 = v4 >= *(v2 + 42) >> 3;
  }

  return !v7;
}

void bt_merge_up(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v62 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 400);
  v10 = v9 & 0x7F00000000000000;
  v11 = (HIBYTE(v9) & 0x7F) + 8;
  if (v10 <= 0x4000000000000000)
  {
    v12 = v11;
  }

  else
  {
    v12 = 72;
  }

  MEMORY[0x28223BE20](a1, v12);
  v14 = (&v51 - v13);
  bzero(&v51 - v13, v15);
  v16 = *(a1 + 56);
  if (!v16)
  {
    goto LABEL_74;
  }

  memset(v61, 0, sizeof(v61));
  v17 = *(v16 + 34);
  if (v17 >= 6)
  {
    v18 = v17 + 11;
    v21 = (v17 + 11);
    v20 = _apfs_malloc_typed(8 * v21, 0x2004093837F09uLL);
    v19 = _apfs_malloc_typed(2 * v21, 0x1000040BDFB0063uLL);
  }

  else
  {
    v18 = 8;
    v19 = v60;
    v20 = v61;
  }

  obj_lock(a1, 2);
  if (!obj_modify(a1, (*(a1 + 400) >> 3) & 2, a5))
  {
    v60[0] = 0;
    v60[1] = 0;
    v56 = 0;
    v57 = 0;
    *v20 = a1;
    obj_retain(a1);
    LOWORD(v23) = 0;
    v24 = *v20;
    if ((*(*(*v20 + 56) + 32) & 2) != 0)
    {
      goto LABEL_70;
    }

    v52 = v18;
    v53 = a5;
    v25 = 0;
    v23 = 0;
    v58 = 0;
    v59 = 0;
    v55 = 0;
    v26 = v18;
    if ((v18 & 0xFFFE) == 0)
    {
      v26 = 1;
    }

    v27 = (v26 - 1);
    v28 = v20 + 1;
    while (!bt_search_node_insert(v24, a3, a4, &v19[v25], &v55))
    {
      if (!v55 && v19[v23])
      {
        --v19[v23];
      }

      if (v27 == v23)
      {
        LOWORD(v18) = v52;
        LOWORD(v23) = v52 - 1;
        goto LABEL_70;
      }

      *v14 = 0;
      if (btree_node_child_val(*(v28 - 1), v19[v23], v14) || btree_node_get(a1, v14, v54, 3u, *(*(*(v28 - 1) + 56) + 34) - 1, v53, v28))
      {
        break;
      }

      v24 = *v28;
      if ((*(a1 + 400) & 0x10) != 0 && *(v24 + 112) != *v14)
      {
        btree_node_child_id_update(*(v28 - 1), v19[v23], (v24 + 112), v53);
        v24 = *v28;
      }

      ++v25;
      ++v28;
      ++v23;
      if ((*(*(v24 + 56) + 32) & 2) != 0)
      {
        v29 = v23;
        v30 = v53;
        while (1)
        {
          v31 = v29;
          v32 = (v29 - 1);
          if (v29 < 1)
          {
            break;
          }

          if (v23 <= v29)
          {
            v33 = 0;
          }

          else
          {
            v33 = v20[v29 + 1];
          }

          bt_merge_nodes(a1, v20[v32], v19[v32], v20[v29], v19[v29], v33, v54, v30);
          v34 = *(*(v20[v29--] + 56) + 36);
          if (v31 == 1 || v34)
          {
            if (v34)
            {
              if (btree_node_key_ptr(v20[v32], v19[v32], &v58, &v56))
              {
                goto LABEL_69;
              }

              v57 = 0;
              if (btree_node_key_ptr(v20[v31], 0, &v59, &v56 + 1))
              {
                goto LABEL_69;
              }

              v43 = *(a1 + 8);
              if (!v43)
              {
                v43 = *(*a1 + 392);
              }

              v44 = v59;
              v45 = (*(a1 + 416))(v43, v59, HIWORD(v56), v58, v56, &v57);
              if (!v45 && v57)
              {
                v45 = btree_node_entry_update(v20[v32], v19[v32], v44, HIWORD(v56), 0);
              }

              if (v45)
              {
                goto LABEL_69;
              }
            }
          }

          else if (!v19[v32])
          {
            if (v32)
            {
              v35 = v20[v32];
              if (*(*(v35 + 56) + 36))
              {
                v36 = &v19[v32];
                v37 = v32 - 1;
                v38 = v31 - 1;
                while (1)
                {
                  if (*v36--)
                  {
                    goto LABEL_32;
                  }

                  v40 = btree_node_key_ptr(v35, 0, &v59, &v56 + 1);
                  if (v40)
                  {
                    goto LABEL_65;
                  }

                  v57 = 0;
                  v40 = btree_node_key_ptr(v20[v37], v19[v37], &v58, &v56);
                  if (v40)
                  {
                    goto LABEL_65;
                  }

                  v41 = *(a1 + 8);
                  if (!v41)
                  {
                    v41 = *(*a1 + 392);
                  }

                  v42 = v59;
                  v40 = (*(a1 + 416))(v41, v59, HIWORD(v56), v58, v56, &v57);
                  if (!v40 && v57)
                  {
                    v40 = btree_node_entry_update(v20[v37], v19[v37], v42, HIWORD(v56), 0);
                  }

                  if (v40)
                  {
LABEL_65:
                    v46 = *(a1 + 8);
                    if (v46)
                    {
                      v47 = (v46 + 4040);
                    }

                    else
                    {
                      v47 = (*(*(*a1 + 392) + 384) + 212);
                    }

                    log_err("%s:%d: %s updating grandparent failed w/%d\n", "bt_merge_up", 4631, v47, v40);
                    goto LABEL_69;
                  }

                  if (--v38)
                  {
                    v35 = v20[v38];
                    --v37;
                    if (*(*(v35 + 56) + 36))
                    {
                      continue;
                    }
                  }

                  goto LABEL_32;
                }
              }
            }
          }

LABEL_62:
          if (!btree_node_is_underused(a1, v20[v29]))
          {
            goto LABEL_69;
          }
        }

        bt_merge_nodes(a1, 0, 0, *v20, *v19, v20[1], v54, v30);
LABEL_32:
        if ((v32 & 0x8000) != 0)
        {
          break;
        }

        v29 = v32;
        v30 = v53;
        goto LABEL_62;
      }
    }

LABEL_69:
    LOWORD(v18) = v52;
LABEL_70:
    v48 = 0;
    do
    {
      v49 = v20[v48];
      obj_unlock(v49, 2);
      obj_release(v49);
      ++v48;
    }

    while (v23 >= v48);
    if (v18 >= 9u)
    {
      _apfs_free(v20, 8 * v18);
      _apfs_free(v19, 2 * v18);
    }

LABEL_74:
    v50 = *MEMORY[0x277D85DE8];
    return;
  }

  v22 = *MEMORY[0x277D85DE8];

  obj_unlock(a1, 2);
}

uint64_t bt_remove_first(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6, uint64_t a7)
{
  v14 = *(*(a1 + 392) + 16);
  v15 = _apfs_malloc_typed(v14, 0xE12C8675uLL);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = bt_remove_internal(a1, a2, 1, v15, v14, a3, a4, a5, a6, a7);
  _apfs_free(v16, v14);
  return v17;
}

uint64_t bt_lookup_first(atomic_ullong *a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a1[50];
  if ((v12 & 0x7F00000000000000) <= 0x4000000000000000)
  {
    v13 = (HIBYTE(v12) & 0x7F) + 8;
  }

  else
  {
    v13 = 72;
  }

  MEMORY[0x28223BE20](a1, v13);
  v15 = &v31[-v14];
  bzero(&v31[-v14], v16);
  v35[0] = 0;
  if (a1[52] && ((v17 = (v12 >> 9) & 0x3FFF) == 0 || *a4 == v17) && (!(v12 >> 23) || *a6 == (v12 >> 23)))
  {
    v32 = 0;
    obj_lock(a1, 1);
    obj_retain(a1);
    v19 = (a1 + 7);
    v18 = a1[7];
    if ((*(v18 + 32) & 2) != 0)
    {
      v20 = a1;
LABEL_18:
      if (*(v18 + 36))
      {
        v34 = 0;
        v22 = btree_node_key_ptr(v20, 0, &v34, &v32 + 1);
        if (v22 || (v33 = 0, v22 = btree_node_val_ptr(v20, 0, &v33, &v32), v22))
        {
          v21 = v22;
        }

        else
        {
          v25 = v32;
          if (v32 == 65534)
          {
            v26 = 0;
          }

          else
          {
            v26 = v32;
          }

          v27 = HIWORD(v32);
          if (*a4 >= HIWORD(v32))
          {
            v28 = HIWORD(v32);
          }

          else
          {
            v28 = *a4;
          }

          if (*a4 >= HIWORD(v32) && *a6 >= v26)
          {
            v21 = 0;
          }

          else
          {
            v21 = 34;
          }

          memcpy(a3, v34, v28);
          if (*a6 >= v26)
          {
            v30 = v26;
          }

          else
          {
            v30 = *a6;
          }

          memcpy(a5, v33, v30);
          *a4 = v27;
          *a6 = v25;
        }
      }

      else
      {
        v21 = 2;
      }

      obj_unlock(v20, 1);
      obj_release(v20);
    }

    else
    {
      v20 = a1;
      while (1)
      {
        *v15 = 0;
        v21 = btree_node_child_val(v20, 0, v15);
        if (!v21)
        {
          v21 = btree_node_get(a1, v15, a2, 2u, *(*v19 + 34) - 1, 0, v35);
        }

        obj_unlock(v20, 1);
        obj_release(v20);
        if (v21)
        {
          break;
        }

        v20 = v35[0];
        v19 = v35[0] + 56;
        v18 = *(v35[0] + 56);
        if ((*(v18 + 32) & 2) != 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v21 = 22;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t bt_lookup_variant(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int *a4, unsigned int a5, void *a6, unsigned int *a7, unsigned int a8, int a9, uint64_t *a10)
{
  if (!a1[52])
  {
    return 22;
  }

  v17 = a1[50];
  v18 = (v17 >> 9) & 0x3FFF;
  if (v18)
  {
    if (*a4 != v18)
    {
      return 22;
    }
  }

  if ((v17 >> 23) && *a7 != (v17 >> 23))
  {
    return 22;
  }

  v19 = *a4;
  if ((v17 & 0x7FFE00) == 0 && v19 > (((((v17 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72)
  {
    return 22;
  }

  v25 = 0;
  v24 = 0;
  v20 = bt_lookup_internal(a1, a2, a3, v19, a8, a9, 0, a10, &v25, &v24);
  if (!v20)
  {
    v22 = v25;
    v23 = bt_lookup_copy_out(a1, v25, v24, a3, a4, a5, a6, a7, a8);
    v20 = v23;
    if (a10 && !v23)
    {
      *a10 = obj_oid(v22);
      a10[1] = a1;
    }

    obj_unlock(v22, 1);
    obj_release(v22);
  }

  return v20;
}

uint64_t bt_lookup_internal(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, uint64_t *a8, atomic_ullong **a9, unsigned __int16 *a10)
{
  v42 = a7;
  v43 = a6;
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v38 = a9;
  v50[1] = *MEMORY[0x277D85DE8];
  v13 = a1[50];
  MEMORY[0x28223BE20]();
  v15 = (&v38 - v14);
  bzero(&v38 - v14, v16);
  v49 = 0;
  v50[0] = 0;
  v48 = 0;
  v47 = 0;
  if (!a8)
  {
    goto LABEL_10;
  }

  v17 = *a8;
  if (!*a8)
  {
    goto LABEL_10;
  }

  if (a8[1] != a1)
  {
    goto LABEL_10;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_10;
  }

  *v15 = v17;
  if (v17 == obj_oid(a1) || btree_node_get(a1, v15, v44, v43 & 0x200 | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, 0, v50))
  {
    goto LABEL_10;
  }

  v18 = v50[0];
  if ((*(v50[0][7] + 32) & 2) == 0 || bt_search_node_insert(v50[0], v45, v46, &v48, &v47))
  {
    goto LABEL_9;
  }

  if (v47 == 1)
  {
    if (a5 == 4)
    {
      if (*(v18[7] + 36) > ++v48)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

    if (a5 == 2)
    {
      if (v48)
      {
        --v48;
        goto LABEL_86;
      }

LABEL_89:
      v47 = 0;
      goto LABEL_9;
    }

LABEL_86:
    v35 = v38;
    goto LABEL_87;
  }

  if (!a5)
  {
    if (v48 && *(v18[7] + 36) > v48)
    {
      v25 = 0;
      v34 = 2;
      v35 = v38;
      goto LABEL_60;
    }

    goto LABEL_9;
  }

  if (a5 - 3 <= 1 && v48 && *(v18[7] + 36) > v48)
  {
    goto LABEL_86;
  }

LABEL_9:
  obj_unlock(v18, 1);
  obj_release(v18);
LABEL_10:
  v19 = a5 == 2;
  v39 = a5 - 3;
  v20 = a5 - 3 < 2;
  obj_lock(a1, 1);
  v50[0] = a1;
  obj_retain(a1);
  v40 = a5;
  v41 = 0;
  v21 = v43 & 0x200;
  for (i = a1; ; i = v50[0])
  {
    v47 = 0;
    v24 = i + 7;
    v23 = i[7];
    if ((*(v23 + 32) & 2) == 0)
    {
      v25 = 0;
      while (1)
      {
        if (*(v23 + 34) <= v42)
        {
          goto LABEL_36;
        }

        v26 = bt_search_node_insert(i, v45, v46, &v48, &v47);
        if (v26)
        {
          goto LABEL_55;
        }

        v27 = v48;
        if ((v47 & 1) == 0)
        {
          if (!v48)
          {
            v28 = 0;
            if (!v20)
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v27 = --v48;
        }

        v28 = v27;
        if (!v19 || v27 == 0)
        {
          if (!v20)
          {
            goto LABEL_26;
          }

LABEL_22:
          if (*(*v24 + 36) - 1 <= v28)
          {
            goto LABEL_26;
          }
        }

        if (v25)
        {
          obj_unlock(v25, 1);
          obj_release(v25);
          v27 = v48;
        }

        v25 = v50[0];
        obj_retain(v50[0]);
        v41 = v20 - v19 + v27;
LABEL_26:
        v29 = v50[0];
        if ((v43 & 0x100) != 0)
        {
          v30 = v50[0][7];
          if (*(v30 + 34) == 1 && *(v30 + 36) - 1 > v27 && !btree_node_child_val(v50[0], (v27 + 1), v15))
          {
            btree_node_get(a1, v15, v44, v43 & 0x300, *(v29[7] + 34) - 1, 0, &v49);
          }
        }

        v26 = btree_node_child_val(v29, v27, v15);
        if (v26)
        {
          goto LABEL_55;
        }

        v26 = btree_node_get(a1, v15, v44, v21 | 2u, *(v29[7] + 34) - 1, 0, &v49);
        if (v26)
        {
          goto LABEL_55;
        }

        btree_node_release(v29, v29 != v25);
        i = v49;
        v50[0] = v49;
        v24 = v49 + 7;
        v23 = v49[7];
        if ((*(v23 + 32) & 2) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    v25 = 0;
LABEL_36:
    v26 = bt_search_node_insert(i, v45, v46, &v48, &v47);
    if (v26)
    {
LABEL_55:
      v34 = v26;
      goto LABEL_56;
    }

    v31 = v47;
    if (v47 != 1)
    {
      goto LABEL_44;
    }

    if (v40 == 2)
    {
      LOWORD(v32) = v48;
      if (!v48)
      {
        v47 = 0;
        goto LABEL_46;
      }

      v34 = 0;
LABEL_71:
      v48 = v32 - 1;
      goto LABEL_56;
    }

    if (v40 != 4)
    {
      break;
    }

    if (*(*v24 + 36) > ++v48)
    {
      break;
    }

    v47 = 0;
    v32 = v48;
LABEL_49:
    if (*(*v24 + 36) > v32)
    {
      v34 = 0;
      v47 = 1;
      goto LABEL_56;
    }

LABEL_50:
    if (!v25)
    {
      v34 = 2;
      v18 = v50[0];
      v35 = v38;
      if (!v50[0])
      {
        goto LABEL_61;
      }

LABEL_60:
      btree_node_release(v18, v18 != v25);
      goto LABEL_61;
    }

    btree_node_release(i, i != v25);
    v33 = btree_node_child_val(v25, v41, v15);
    if (v33 || (v33 = btree_node_get(a1, v15, v44, v21 | 2u, *(v25[7] + 34) - 1, 0, v50), v33))
    {
      v34 = v33;
      v50[0] = 0;
      v35 = v38;
      goto LABEL_57;
    }

    obj_unlock(v25, 1);
    obj_release(v25);
    v19 = 0;
    v20 = 0;
  }

  v31 = 1;
LABEL_44:
  if ((v31 & 1) == 0 && v40)
  {
LABEL_46:
    v32 = v48;
    if (v40 > 2 || !v48)
    {
      if (v39 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v34 = 0;
    v47 = 1;
    goto LABEL_71;
  }

  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

LABEL_56:
  v35 = v38;
  if (v25)
  {
LABEL_57:
    obj_unlock(v25, 1);
    obj_release(v25);
  }

  v18 = v50[0];
  if (!v34)
  {
LABEL_87:
    v34 = 0;
    *v35 = v18;
    *a10 = v48;
    goto LABEL_88;
  }

  if (v50[0])
  {
    goto LABEL_60;
  }

LABEL_61:
  *v35 = 0;
LABEL_88:
  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t bt_lookup_copy_out(uint64_t a1, void *a2, unsigned __int16 a3, void *a4, _DWORD *a5, unsigned int a6, void *a7, unsigned int *a8, int a9)
{
  __src = 0;
  v29 = 0;
  v30 = 0;
  if (a9 | a6)
  {
    v17 = btree_node_key_ptr(a2, a3, &__src, &v29 + 1);
    v18 = v17;
    if (a9)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_19:
      if (v18)
      {
        return v18;
      }

      goto LABEL_22;
    }

    v20 = *(a1 + 8);
    if (!v20)
    {
      v20 = *(*a1 + 392);
    }

    v21 = (*(a1 + 416))(v20, __src, HIWORD(v29), a4, *a5, &v30);
    if (v21)
    {
      return v21;
    }

    if (a9 == 2 && (v30 & 0x80000000) == 0 || a9 == 1 && v30 > 0 || a9 == 3 && v30 < 0 || a9 == 4 && v30 <= 0)
    {
      v18 = nx_corruption_detected_int(*(*a1 + 392));
      goto LABEL_19;
    }
  }

  else
  {
    __src = 0;
    HIWORD(v29) = 0;
  }

LABEL_22:
  v31 = 0;
  v21 = btree_node_val_ptr(a2, a3, &v31, &v29);
  if (v21)
  {
    return v21;
  }

  v22 = v29;
  if (v29 == 65534)
  {
    v23 = 0;
  }

  else
  {
    v23 = v29;
  }

  v24 = *a8;
  if (*a8 < v23 || (v18 = 0, a6) && HIWORD(v29) > a6)
  {
    v18 = 34;
  }

  if (a6)
  {
    v25 = HIWORD(v29);
    if (HIWORD(v29) >= a6)
    {
      v26 = a6;
    }

    else
    {
      v26 = HIWORD(v29);
    }

    memcpy(a4, __src, v26);
    *a5 = v25;
    v24 = *a8;
  }

  if (v24 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24;
  }

  memcpy(a7, v31, v27);
  *a8 = v22;
  return v18;
}

__n128 bt_iterator_init_with_hint(uint64_t a1, atomic_ullong *a2, uint64_t a3, int a4, unint64_t *a5, int a6, unsigned int a7, void *a8, unsigned int a9, _OWORD *a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v16 = a4 & 0x380;
  *(a1 + 16) = a4;
  *(a1 + 20) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = a8;
  *(a1 + 24) = a9;
  v17 = (a1 + 56);
  if (a10)
  {
    *v17 = *a10;
  }

  else
  {
    *v17 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a6;
  *(a1 + 52) = a9;
  if ((a4 & 4) != 0)
  {
    v18 = 4;
    goto LABEL_8;
  }

  if ((a4 & 2) == 0)
  {
    v18 = 3;
LABEL_8:
    v19 = bt_lookup_variant(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), v18, v16, v17);
    goto LABEL_9;
  }

  v21 = a4 & 0x380;
  v19 = bt_lookup_variant(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), 1u, v16, (a1 + 56));
  if (v19 == 2)
  {
    v18 = 3;
    v16 = v21;
    goto LABEL_8;
  }

LABEL_9:
  if (v19)
  {
    *(a1 + 16) |= 1u;
    if (v19 != 2)
    {
      *(a1 + 28) = v19;
    }
  }

  else if (a10)
  {
    result = *v17;
    *a10 = *v17;
  }

  return result;
}

uint64_t bt_iterator_ended(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    return *(a1 + 16) & 1;
  }

  return result;
}

uint64_t bt_iterator_next(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    v3 = *(a1 + 16);
    result = 2;
    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 20);
      *(a1 + 52) = *(a1 + 24);
      if ((v3 & 8) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 4;
      }

      result = bt_lookup_variant(*a1, *(a1 + 8), *(a1 + 32), (a1 + 48), v4, *(a1 + 40), (a1 + 52), v5, v3 & 0x380, (a1 + 56));
      if (result == 2)
      {
        result = 0;
        *(a1 + 16) |= 1u;
      }

      *(a1 + 28) = result;
    }
  }

  return result;
}

uint64_t btree_create_extended(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v28 = 0;
  v15 = *(a6 + 5);
  v16 = (v15 << 28) & 0x80000000 | (((v15 >> 4) & 1) << 30) | (((v15 >> 5) & 1) << 27) | a2;
  if ((v15 & 0x18) == 0)
  {
    v16 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = v16;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v18 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v15;
  }

  else
  {
    v18 = v15;
  }

  if (!a3)
  {
    v13 = *(*(*(*a1 + 392) + 376) + 36);
  }

  if (v13 - 65537 < 0xFFFF0060 || a4 != 8 && (v18 & 1) != 0 || a4 > (((v13 - 160) >> 2) - 72) || a5 + a4 > btree_entry_max_size(v18, v13, a4, a5) || v18 > 0x1FF)
  {
    return 22;
  }

  v19 = ((v12 & 0x3FFF) << 9) | ((v13 >> 12) << 39) | (v11 << 23) | v18;
  v20 = *a6;
  v27 = v19;
  v29 = v20;
  v26 = 0x300086583;
  if ((v18 & 0x80) != 0)
  {
    if (!authapfs_valid_hash_type(*(a6 + 6)))
    {
      v24 = *(a6 + 6);
      if (v24 <= 0xFFF)
      {
        v25 = *(a6 + 7);
        v27 = v19 & 0xFF000FFFFFFFFFFFLL | (v24 << 44) | ((v25 & 0x7F) << 56);
        if (v25 <= 0x7F)
        {
          WORD2(v26) = 11;
          v21 = 27;
          goto LABEL_19;
        }
      }
    }

    return 22;
  }

  v21 = 19;
LABEL_19:
  if (v18 >= 0x100)
  {
    WORD2(v26) = v21;
  }

  result = btree_node_create(a1, v17, *(a6 + 4), &v26, a7, a8);
  if (!result)
  {
    atomic_fetch_add_explicit((*(*a8 + 392) + 32), 1uLL, memory_order_relaxed);
    v23 = a6[1];
    if (v23)
    {
      *(*a8 + 424) = v23;
    }

    obj_unlock(*a8, 2);
    return 0;
  }

  return result;
}

uint64_t btree_node_create(pthread_mutex_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = btree_node_desc;
  DWORD2(v18) = (*(a4 + 8) >> 27) & 0x1F000;
  v11 = *(a4 + 4);
  if (v11)
  {
    LODWORD(v18) = 2;
  }

  v19 = 0;
  DWORD1(v18) = a3;
  if ((v11 & 0x10) != 0)
  {
    v12 = 536870916;
  }

  else
  {
    v12 = 4;
  }

  v13 = *a1;
  if (obj_type(a1) == 13)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = obj_create(v13, v12 | a2, 0, &v18, a4, v14, a5, &v19);
  if (!v15)
  {
    v16 = v19;
    *a6 = v19;
    obj_dirty(v16, a5, 0);
  }

  return v15;
}

uint64_t btree_create(uint64_t a1, unint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v20 = *MEMORY[0x277D85DE8];
  v12[1] = 0;
  v15 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v12[0] = a8;
  v13 = a4;
  v14 = a3;
  result = btree_create_extended(a1, a2, a5, a6, a7, v12, a9, a10);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t btree_get_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v40 = a7;
  v41 = a8;
  v43[1] = *MEMORY[0x277D85DE8];
  v14 = *(a6 + 28);
  if (v14 >= 0x40)
  {
    v15 = 96;
  }

  else
  {
    v15 = v14 + 32;
  }

  MEMORY[0x28223BE20]();
  v17 = &v40 - v16;
  bzero(&v40 - v16, v15);
  v43[0] = 0;
  v42 = btree_node_desc;
  v18 = *(a6 + 20);
  v19 = (v18 << 28) & 0x80000000 | (((v18 >> 4) & 1) << 30) | (((v18 >> 5) & 1) << 27) | a2;
  if ((v18 & 0x18) == 0)
  {
    v19 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = v19;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v21 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v18;
  }

  else
  {
    v21 = v18;
  }

  *v17 = 25987;
  *(v17 + 1) = v15;
  if (v21 > 0x1FF)
  {
    goto LABEL_38;
  }

  v22 = *a1;
  v23 = *(v17 + 1) & 0xFFFFF07FFFFFFE00 | v21 | (((*(*(*(*a1 + 392) + 376) + 36) >> 12) & 0x1F) << 39);
  *(v17 + 1) = v23;
  *(v17 + 3) = *a6;
  *(v17 + 1) = -267452416;
  if ((v21 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  if (authapfs_valid_hash_type(*(a6 + 24)) || (v32 = *(a6 + 24), v32 > 0xFFF) || (v33 = v23 & 0x80000FFFFFFFFFFFLL | ((*&v32 & 0x7FFFFLL) << 44), v34 = *(a6 + 28), *(v17 + 1) = v33 | ((v34 & 0x7F) << 56), v34 > 0x7F))
  {
LABEL_38:
    result = 22;
    goto LABEL_39;
  }

  if (v34 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = v34;
  }

  memcpy(v17 + 32, (a6 + 32), v35);
  v22 = *a1;
LABEL_14:
  v24 = v20 | 0x20000000;
  if (v21 < 0x100)
  {
    v24 = v20;
  }

  v25 = *(a6 + 16);
  LODWORD(v42) = v24 & 0xFFFF0000 | 2;
  DWORD1(v42) = v25;
  v26 = 3;
  if ((v24 & 0x40000000) == 0)
  {
    v26 = 1;
  }

  if ((a5 & 1) == 0)
  {
    v26 = 0;
  }

  v27 = v24 | v26;
  if ((a5 & 2) != 0)
  {
    v27 |= 4uLL;
  }

  if ((a5 & 4) != 0)
  {
    v27 |= 0x20uLL;
  }

  v28 = v27 | ((a5 & 0x200) << 23);
  if (obj_type(a1) == 13)
  {
    v29 = a1;
  }

  else
  {
    v29 = 0;
  }

  result = obj_get(v22, v28, a3, &v42, v17, v29, a4, v40, v43);
  if ((a5 & 4) == 0 || result)
  {
    v31 = v43[0];
    if (result)
    {
      v37 = 0;
    }

    else
    {
      v37 = v43[0];
    }

    *v41 = v37;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v31 = v43[0];
    if ((*(v43[0] + 16) & 0x10) == 0)
    {
      *v41 = v43[0];
LABEL_44:
      v38 = *(a6 + 8);
      result = 0;
      if (v38)
      {
        *(v31 + 424) = v38;
      }

      goto LABEL_39;
    }

    if (a5)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    btree_node_release(v43[0], v39 & (a5 << 30 >> 31));
    *v41 = 0;
    result = 2;
  }

LABEL_39:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t btree_get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v20 = *MEMORY[0x277D85DE8];
  v12[1] = 0;
  v15 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v12[0] = a8;
  v13 = a7;
  v14 = a5;
  result = btree_get_extended(a1, a2, a3, a4, a6, v12, a9, a10);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t btree_iterate_nodes(atomic_ullong *a1, uint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, unint64_t a6)
{
  v109 = a5;
  v110 = a6;
  v111 = a4;
  v108 = a2;
  v121 = *MEMORY[0x277D85DE8];
  v8 = a1[50];
  v9 = (v8 & 0x7F00000000000000) > 0x4000000000000000;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v10 = (HIBYTE(v8) & 0x7F) + 8;
  if (v9)
  {
    v11 = 72;
  }

  else
  {
    v11 = v10;
  }

  MEMORY[0x28223BE20](a1, v11);
  v13 = (&v93 - v12);
  bzero(&v93 - v12, v14);
  v107 = a3 & 0x180;
  v15 = v107 != 0;
  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  obj_lock(a1, v16);
  v17 = a1[7];
  if (!v17)
  {
    obj_unlock(a1, v16);
    v21 = 22;
    goto LABEL_113;
  }

  v18 = *(v17 + 34);
  v19 = v18 + 1;
  v106 = v18;
  if (v18 < 8)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v20 = &v113;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    v20 = _apfs_calloc_typed(v18 + 1, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v20)
    {
      obj_unlock(a1, v16);
      v21 = 12;
      goto LABEL_113;
    }
  }

  *v20 = a1;
  *(v20 + 4) = 0;
  obj_retain(a1);
  if (a3)
  {
    v21 = obj_modify(a1, 2, v110);
    if (v21)
    {
      goto LABEL_16;
    }

    if ((a1[50] & 0x80) != 0)
    {
      obj_dirty(a1, v110, 0);
    }
  }

  v21 = 0;
LABEL_16:
  v22 = a3 & 0x20;
  v104 = &v93;
  v103 = v19;
  if (!v111 || v21 | v22)
  {
    v23 = v109;
    if (v21)
    {
      goto LABEL_105;
    }

    goto LABEL_24;
  }

  v23 = v109;
  if ((a3 & 0x10) == 0 || *(a1[7] + 34))
  {
    v21 = (v111)(a1, v109);
  }

  if (!v21)
  {
LABEL_24:
    v24 = 0;
    v96 = a3 & 0xFFFFFE4F;
    v25 = a3 & 0xFFFFFE4D | 2;
    if (v107)
    {
      v25 = a3 & 0xFFFFFE4C;
    }

    v26 = v22 == 0;
    if (v111)
    {
      v27 = v22 != 0;
    }

    else
    {
      v27 = 0;
    }

    v95 = v15 << 7;
    v105 = (v15 << 7) | v25;
    v98 = a3 & 0xFFFFFE4C;
    v97 = a3 & 0xFFFFFE4C | 0x100;
    if (v111)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v100 = v28;
    v102 = v20;
    v101 = v27;
    do
    {
      v29 = &v20[v24];
      v30 = *v29;
      v31 = *(*v29 + 56);
      if ((*(v31 + 32) & 2) != 0 || (v32 = v29[4], *(v31 + 36) <= v32) || (a3 & 0x10) != 0 && *(v31 + 34) == 1)
      {
        if (v27)
        {
          v21 = v111();
          v30 = *v29;
        }

        else
        {
          v21 = 0;
        }

        btree_node_release(v30, v16);
        *v29 = 0;
        --v24;
        if (v21)
        {
          break;
        }

        continue;
      }

      *v13 = 0;
      v33 = btree_node_child_val(v30, v32, v13);
      if (v33)
      {
        v21 = v33;
        v62 = a1[1];
        if (v62)
        {
          v63 = (v62 + 4040);
        }

        else
        {
          v63 = (*(*(*a1 + 392) + 384) + 212);
        }

        v68 = *(*(*v29 + 56) + 34);
        v69 = obj_oid(*v29);
        log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child oid: %d\n", "btree_iterate_nodes", 6433, v63, v68, v69, v29[4], v21);
        break;
      }

      ++v29[4];
      if (v106 < ++v24)
      {
        v64 = a1[1];
        if (v64)
        {
          v65 = (v64 + 4040);
        }

        else
        {
          v65 = (*(*(*a1 + 392) + 384) + 212);
        }

        v70 = &v20[v24];
        v71 = *(v70 - 2);
        v72 = *(*(v71 + 56) + 34);
        v73 = obj_oid(v71);
        log_err("%s:%d: %s level %d node 0x%llx index %d: more levels than expected\n", "btree_iterate_nodes", 6440, v65, v72, v73, *(v70 - 4) - 1);
        v21 = 22;
        break;
      }

      v34 = &v20[v24];
      *(v34 + 4) = 0;
      v35 = (v34 - 1);
      v36 = btree_node_get(a1, v13, v108, v105, *(*(*(v34 - 2) + 56) + 34) - 1, v110, v34);
      v21 = v36;
      if (v36)
      {
        v37 = a1[1];
        if (v37)
        {
          v38 = (v37 + 4040);
          v39 = *(*(*v35 + 56) + 34);
          v40 = obj_oid(*v35);
          v36 = log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v38, v39, v40, *(v34 - 4) - 1, *v13, v105, v21);
        }

        else
        {
          v41 = (*(*(*a1 + 392) + 384) + 212);
          v42 = *(*(*v35 + 56) + 34);
          v43 = obj_oid(*v35);
          v36 = log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v41, v42, v43, *(v34 - 4) - 1, *v13, v105, v21);
        }

        v23 = v109;
        if (!v107)
        {
          goto LABEL_101;
        }
      }

      else if (!v107)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      if (*(*(*(v34 - 2) + 56) + 36) > *(v34 - 4))
      {
        v99 = &v93;
        v44 = a1[50];
        v45 = v44 & 0x7F00000000000000;
        v46 = (HIBYTE(v44) & 0x7F) + 8;
        v47 = v45 <= 0x4000000000000000 ? v46 : 72;
        MEMORY[0x28223BE20](v36, v47);
        v49 = (&v93 - v48);
        bzero(&v93 - v48, v50);
        v51 = *(v34 - 4);
        if (*(*(*v35 + 56) + 36) > v51)
        {
          v52 = btree_node_child_val(*v35, v51, v49);
          if (v52 || (v52 = btree_node_get(a1, v49, v108, v97, *(*(*v35 + 56) + 34) - 1, v110, &v112), v52))
          {
            v94 = v52;
            v53 = a1[1];
            if (v53)
            {
              v93 = (v53 + 4040);
            }

            else
            {
              v93 = (*(*(*a1 + 392) + 384) + 212);
            }

            v54 = *(*(*v35 + 56) + 34);
            v55 = obj_oid(*v35);
            log_err("%s:%d: %s level %d node 0x%llx: error prefetching index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6474, v93, v54, v55, *(v34 - 4), *v49, v97, v94);
            v23 = v109;
          }
        }
      }

      if (v21)
      {
        if (v21 != 45 && v21 != 16)
        {
          goto LABEL_101;
        }

        v57 = btree_node_get(a1, v13, v108, v98, *(*(*v35 + 56) + 34) - 1, v110, v34);
        if (v57)
        {
          v21 = v57;
LABEL_101:
          v84 = a1[1];
          if (v84)
          {
            v85 = (v84 + 4040);
          }

          else
          {
            v85 = (*(*(*a1 + 392) + 384) + 212);
          }

          v86 = *(*(*v35 + 56) + 34);
          v87 = obj_oid(*v35);
          log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child flags 0x%x: %d\n", "btree_iterate_nodes", 6510, v85, v86, v87, *(v34 - 4) - 1, v96 | v95 | 2, v21);
          v20 = v102;
          break;
        }
      }

      else
      {
        v58 = obj_async_wait(*v34);
        if (v58)
        {
          v21 = v58;
          v74 = a1[1];
          if (v74)
          {
            v75 = (v74 + 4040);
          }

          else
          {
            v75 = (*(*(*a1 + 392) + 384) + 212);
          }

          v80 = *(*(*v34 + 56) + 34);
          v81 = obj_oid(*v35);
          v82 = *(v34 - 4) - 1;
          v83 = obj_oid(*v34);
          log_err("%s:%d: %s level %d node 0x%llx: error ON WAIT getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6487, v75, v80, v81, v82, v83, v105, v21);
          obj_release(*v34);
          goto LABEL_100;
        }
      }

      obj_lock(*v34, v16);
      if ((a3 & 1) == 0)
      {
        goto LABEL_77;
      }

      v59 = *v34;
      v60 = obj_type_and_flags(*v34);
      v61 = obj_modify(v59, (v60 >> 29) & 2, v110);
      if (v61)
      {
        v21 = v61;
        v66 = a1[1];
        if (v66)
        {
          v67 = (v66 + 4040);
        }

        else
        {
          v67 = (*(*(*a1 + 392) + 384) + 212);
        }

        v76 = *(*(*v34 + 56) + 34);
        v77 = obj_oid(*v35);
        v78 = *(v34 - 4) - 1;
        v79 = obj_oid(*v34);
        log_err("%s:%d: %s level %d node 0x%llx: error MODIFYING index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6501, v67, v76, v77, v78, v79, v105, v21);
        btree_node_release(*v34, 2);
LABEL_100:
        *v34 = 0;
        goto LABEL_101;
      }

LABEL_75:
      if (obj_oid(*v34) != *v13)
      {
        btree_node_child_id_update(*(v34 - 2), (*(v34 - 4) - 1), (*v34 + 112), v110);
      }

LABEL_77:
      if (v100)
      {
        v21 = (v111)(*v34, v23);
      }

      else
      {
        v21 = 0;
      }

      v20 = v102;
      v27 = v101;
      if (v21)
      {
        break;
      }
    }

    while ((v24 & 0x8000) == 0);
  }

LABEL_105:
  v88 = v103;
  if (((v103 - 1) & 0x8000) == 0)
  {
    v89 = v106 + 1;
    v90 = &v20[v106];
    do
    {
      if (*v90)
      {
        btree_node_release(*v90, v16);
      }

      v90 -= 2;
      v9 = v89-- <= 1;
    }

    while (!v9);
  }

  if (v20 != &v113)
  {
    _apfs_free(v20, (16 * v88));
  }

LABEL_113:
  v91 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t btree_level_count(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(v2 + 34) + 1;
  return result;
}

uint64_t btree_node_checkpoint_traverse(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a3[50];
  v11 = v10 & 0x7F00000000000000;
  v12 = (HIBYTE(v10) & 0x7F) + 8;
  if (v11 <= 0x4000000000000000)
  {
    v13 = v12;
  }

  else
  {
    v13 = 72;
  }

  MEMORY[0x28223BE20](a1, v13);
  v15 = (v27 - v14);
  bzero(v27 - v14, v16);
  if (a5 == 2)
  {
    if (obj_type(a1) == 13)
    {
      v18 = a1;
    }

    else
    {
      v18 = 0;
    }

    *(a4 + 8) = v18;
    v19 = obj_subtype(a4);
    v20 = tree_key_compare_function_for_type(v19);
    if (!v20)
    {
      v21 = 22;
      goto LABEL_26;
    }

    *(a4 + 416) = v20;
    if (a4 != a3)
    {
      *(a4 + 400) = *(a3 + 25);
    }

    v17 = obj_checkpoint_known(a4);
    goto LABEL_14;
  }

  if (a5 == 1)
  {
    v17 = obj_checkpoint_start(a4);
LABEL_14:
    v21 = v17;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_16:
  if (!(*(*(a4 + 56) + 32) & 2 | v21))
  {
    v22 = 0;
    v27[0] = 0;
    while (v22 < *(*(a4 + 56) + 36))
    {
      *v15 = 0;
      v23 = btree_node_child_val(a4, v22, v15);
      if (v23 || (v23 = btree_node_get(a3, v15, 0, 2u, *(*(a4 + 56) + 34) - 1, 0, v27), v23))
      {
        v21 = v23;
        goto LABEL_26;
      }

      v24 = v27[0];
      v21 = btree_node_checkpoint_traverse(a1, a2, a3, v27[0], a5);
      obj_unlock(v24, 1);
      obj_release(v24);
      ++v22;
      if (v21)
      {
        goto LABEL_26;
      }
    }

    v21 = 0;
  }

LABEL_26:
  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t btree_node_copy(void *a1, void *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v14 = a2[50];
  v15 = v14 & 0x7F00000000000000;
  v16 = (HIBYTE(v14) & 0x7F) + 8;
  if (v15 <= 0x4000000000000000)
  {
    v17 = v16;
  }

  else
  {
    v17 = 72;
  }

  MEMORY[0x28223BE20](a1, v17);
  v19 = (&v45 - v18);
  bzero(&v45 - v18, v20);
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v21 = (a3 >> 26) & 0x10 | a4 | (8 * (a3 >> 31)) | (a3 >> 22) & 0x20;
  LODWORD(v50[0]) = 2123139;
  *(v50 + 8) = *(a2 + 25);
  v22 = a2[52];
  *(&v50[0] + 1) = *(&v50[0] + 1) & 0xFFFFFFFFFFFFFE00 | BYTE8(v50[0]) & 0x47 | (v21 & 0x1B8);
  *(&v50[1] + 1) = v22;
  v23 = a2[7];
  WORD2(v50[0]) = *(v23 + 32) & 0x1B;
  WORD3(v50[0]) = *(v23 + 34);
  v24 = a2[1];
  if (!v24)
  {
    v24 = *(*a2 + 392);
  }

  v48 = 0;
  v25 = obj_subtype(a2);
  v26 = btree_node_create(v24, a3, v25, v50, a5, a7);
  inserted = v26;
  if (!a6 || *(a2[7] + 32) & 2 | v26)
  {
    if (!v26)
    {
      v28 = a7;
      v29 = *(*a7 + 56);
      v30 = a2[7];
      v31 = obj_size_phys(a2) - 32;
      v32 = (v29 + 32);
      v33 = v28;
      memcpy(v32, (v30 + 32), v31);
      v34 = *v28;
      if (*(a2[7] + 32))
      {
        v35 = *(v34 + 392);
        *v35 = WORD4(v50[0]) & 0x1FF;
        v35[1] = (*(&v50[0] + 1) >> 27) & 0x1F000;
        v35[2] = (DWORD2(v50[0]) >> 9) & 0x3FFF;
        v35[3] = (*(&v50[0] + 1) >> 23);
      }

      btree_node_init_ext(v34, v50, 0);
      inserted = 0;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v46 = a7;
  v36 = 0;
  v52[0] = 0;
  v49 = 0;
  v47 = (a3 >> 23) & 0x200;
  while (1)
  {
    if (v36 >= *(a2[7] + 36))
    {
      inserted = 0;
      goto LABEL_30;
    }

    *v19 = 0;
    v37 = btree_node_child_val(a2, v36, v19);
    if (v37 || (v37 = btree_node_get(a1, v19, 0, v47 | 2u, *(a2[7] + 34) - 1, 0, v52), v37))
    {
      inserted = v37;
      goto LABEL_30;
    }

    v38 = v52[0];
    v39 = btree_node_copy(a1, v52[0], a3, v21, a5, a6, &v51);
    if (v39)
    {
      break;
    }

    v40 = btree_node_key_ptr(a2, v36, &v49, &v48);
    if (v40)
    {
      inserted = v40;
LABEL_20:
      v41 = a1[1];
      if (v41)
      {
        v42 = (v41 + 4040);
      }

      else
      {
        v42 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert_internal failed: %d\n", "btree_node_copy", 6692, v42, inserted);
      goto LABEL_24;
    }

    *v19 = *(v51 + 112);
    inserted = btree_node_insert_internal(*v46, v36, v49, v48, v19, (*(*v46 + 407) & 0x7Fu) + 8, a5);
    if (inserted)
    {
      goto LABEL_20;
    }

LABEL_24:
    obj_release(v51);
    obj_unlock(v38, 1);
    obj_release(v38);
    v51 = 0;
    ++v36;
    if (inserted)
    {
      goto LABEL_30;
    }
  }

  inserted = v39;
  obj_unlock(v38, 1);
  obj_release(v38);
  if (v51)
  {
    obj_release(v51);
  }

LABEL_30:
  v33 = v46;
  obj_dirty(*v46, a5, 0);
LABEL_31:
  obj_unlock(*v33, 2);
LABEL_32:
  v43 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t btree_delete(uint64_t a1, unint64_t a2, void *a3)
{
  obj_lock(a1, 2);
  if ((*(a1 + 19) & 0x80) != 0 || (*(a1 + 400) & 0x80) != 0)
  {
    v8 = btree_delete_node(a1, a1, a2);
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = obj_oid(v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(*a1 + 392);
    v11 = obj_type_and_flags(a1);
    v12 = obj_size_phys(a1);
    v13 = obj_oid(a1);
    if (a3)
    {
      v14 = nx_reaper_add(v10, v11, v12, v7, v13, a2, 0, a3);
    }

    else
    {
      v14 = nx_reaper_add_sub_object(v10, v11, v12, v7, v13, a2, 0);
    }

    v8 = v14;
    if (v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 + 4040);
      }

      else
      {
        v16 = (*(*(*a1 + 392) + 384) + 212);
      }

      v17 = obj_oid(a1);
      v18 = obj_type_and_flags(a1);
      log_err("%s:%d: %s error adding btree 0x%llx type 0x%x to reap list: %d\n", "btree_delete", 6818, v16, v17, v18, v8);
    }
  }

  obj_unlock(a1, 2);
  return v8;
}

uint64_t btree_delete_node(void *a1, uint64_t *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a1[50];
  v7 = v6 & 0x7F00000000000000;
  v8 = (HIBYTE(v6) & 0x7F) + 8;
  if (v7 <= 0x4000000000000000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 72;
  }

  MEMORY[0x28223BE20](a1, v9);
  v11 = (v19 - v10);
  bzero(v19 - v10, v12);
  if ((*(a2[7] + 32) & 2) == 0)
  {
    v13 = 0;
    v19[0] = 0;
    while (v13 < *(a2[7] + 36))
    {
      *v11 = 0;
      v14 = btree_node_child_val(a2, v13, v11);
      if (v14 || (v14 = btree_node_get(a1, v11, 0, 0, *(a2[7] + 34) - 1, 0, v19), v14))
      {
        v16 = v14;
        goto LABEL_13;
      }

      v15 = v19[0];
      obj_lock(v19[0], 2);
      v16 = btree_delete_node(a1, v15, a3);
      obj_unlock(v15, 2);
      obj_release(v15);
      ++v13;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  v16 = 0;
LABEL_13:
  obj_delete_and_free(a2, a3);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t btree_node_count(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (obj_type(a1) != 2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(*(a1 + 392) + 32);
  return result;
}

uint64_t btree_node_init_ext(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  result = btree_node_sanity_check(a1, a2);
  if (!result)
  {
    if (a2)
    {
      *(a1 + 400) = *(a2 + 8);
      *(a1 + 416) = *(a2 + 24);
    }

    v8 = v6 + 56 + *(v6 + 42);
    *(a1 + 376) = v6 + 56;
    *(a1 + 384) = v8;
    v9 = obj_size_phys(a1);
    v10 = *(v6 + 32);
    v11 = -40;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v6 + v9 + v11;
    *(a1 + 392) = v12;
    if (v10)
    {
      v13 = *(a1 + 400) & 0xFFFFFFFFFFFFFE00 | *v12 & 0x1FF;
      *(a1 + 400) = v13;
      v14 = v13 & 0xFFFFF07FFFFFFFFFLL | (((*(v12 + 4) >> 12) & 0x1F) << 39);
      *(a1 + 400) = v14;
      v15 = v14 & 0xFFFFFFFFFF8001FFLL | ((*(v12 + 8) & 0x3FFFLL) << 9);
      *(a1 + 400) = v15;
      *(a1 + 400) = v15 & 0xFFFFFF80007FFFFFLL | (*(v12 + 12) << 23);
      *(a1 + 408) = obj_oid(a1);
    }

    if (a3)
    {

      return authapfs_validate_node(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t btree_node_free_space_total(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1[16] & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      v3 = 0;
      return (v1[23] + v3 + v1[25] + v1[27]);
    }

    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  v4 = v1[21];
  v5 = btree_node_toc_required_capacity(a1, 0);
  v3 = v4 - v5 * v2;
  if (v4 < (v5 * v2))
  {
    v3 = 0;
  }

  return (v1[23] + v3 + v1[25] + v1[27]);
}

uint64_t btree_node_space_free_list_search(uint64_t result, int a2, unsigned __int16 a3, __int16 *a4, unsigned __int16 *a5)
{
  if ((*(result + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 48;
  if (a2 != 1)
  {
    v6 = 52;
  }

  v7 = 392;
  if (a2 == 1)
  {
    v7 = 384;
  }

  v8 = *(*(result + 56) + v6);
  v9 = -1;
  if (v8 == 0xFFFF)
  {
    v13 = -1;
    if (a4)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v11 = result;
  v24 = a4;
  v25 = a5;
  v12 = *(result + v7);
  v13 = -1;
  do
  {
    v9 = v8;
    v14 = v8;
    if (a2 == 1)
    {
      v15 = *(*(v11 + 56) + 44);
      v16 = v15 >= v9;
      v17 = v15 - v9;
      if (v17 != 0 && v16 && v17 >= 4)
      {
        v20 = *(*(v11 + 384) + v14 + 2);
        if (v20 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v20 = (v20 + 7) & 0x1FFF8;
          }

          if (v20 <= v17)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      result = obj_size_phys(v11);
      v18 = *(v11 + 56);
      if (*(v18 + 32))
      {
        v19 = -96;
      }

      else
      {
        v19 = -56;
      }

      if (v9 <= (result - *(v18 + 42) + v19 - (*(v18 + 46) + *(v18 + 44))) && v9 >= 4u)
      {
        v21 = *(*(v11 + 392) - v14 + 2);
        if (v21 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v21 = (v21 + 7) & 0x1FFF8;
          }

          if (v21 <= v9)
          {
            goto LABEL_33;
          }
        }
      }
    }

    result = nx_corruption_detected_int(*(*v11 + 392));
    if (result)
    {
      break;
    }

LABEL_33:
    if (a2 == 1)
    {
      v22 = v14;
    }

    else
    {
      v22 = -v14;
    }

    v23 = (v12 + v22);
    if (v23[1] >= v5)
    {
      goto LABEL_39;
    }

    v8 = *v23;
    v13 = v9;
  }

  while (v8 != 0xFFFF);
  v9 = -1;
  v13 = -1;
LABEL_39:
  a4 = v24;
  a5 = v25;
  if (v24)
  {
LABEL_40:
    *a4 = v13;
  }

LABEL_41:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t btree_node_compact(uint64_t a1, __int16 a2, uint64_t a3)
{
  v53 = 0;
  v6 = *(a1 + 56);
  v7 = *(v6 + 32);
  if (v7)
  {
    v10 = btree_node_copy(0, a1, 0x88000000uLL, (16 * v7) & 0x180, a3, 0, &v53);
    if (v10)
    {
      return v10;
    }

    v11 = *(a1 + 56);
    *(v11 + 36) = 0;
    *(v11 + 44) = 0;
    v12 = *(a1 + 376);
    v13 = *(a1 + 392) - *(a1 + 384);
    *(v11 + 46) = v13;
    *(v11 + 48) = 0xFFFF0000FFFFLL;
    bzero(v12, *(v11 + 42) + v13);
    v14 = v53;
    v15 = v53[7];
    goto LABEL_11;
  }

  v47 = btree_node_desc;
  v48 = 2123139;
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v49 = v7;
  v50 = *(v6 + 34);
  v8 = *(a1 + 40);
  LODWORD(v47) = *(a1 + 36);
  DWORD1(v47) = v8;
  DWORD2(v47) = (*(a1 + 400) >> 27) & 0x1F000;
  v9 = obj_create(*a1, 2281701376, 0, &v47, &v48, *(a1 + 8), a3, &v53);
  if (!v9)
  {
    v16 = v53;
    v17 = v53[7];
    v18 = *(a1 + 56);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = obj_exchange_phys(a1, v16);
    if (v20)
    {
      v10 = v20;
      v21 = *(a1 + 8);
      if (v21)
      {
        v22 = (v21 + 4040);
      }

      else
      {
        v22 = (*(*(*a1 + 392) + 384) + 212);
      }

      v23 = obj_oid(a1);
      v24 = obj_oid(v53);
      log_err("%s:%d: %s obj_exchange_phys (%llx, %llx) with xid %llu failed: %d\n", "btree_node_compact", 1572, v22, v23, v24, a3, v10);
LABEL_38:
      obj_free(v53);
      obj_release(v53);
      obj_dirty(a1, a3, 0);
      return v10;
    }

    btree_node_init_ext(a1, &v48, 0);
    btree_node_init_ext(v53, &v48, 0);
    v14 = v53;
    v15 = v53[7];
    *(*(a1 + 56) + 32) |= *(v15 + 32) & 0x8000;
LABEL_11:
    v25 = btree_node_toc_required_capacity(v14, a2);
    v26 = 2;
    if ((*(v15 + 32) & 4) == 0)
    {
      v26 = 3;
    }

    btree_node_toc_resize(a1, (v25 << v26) & 0xFFFC);
    v27 = v53;
    v28 = v53[7];
    if (*(v28 + 36))
    {
      v29 = 0;
      while (1)
      {
        v30 = *(v28 + 32);
        v31 = v27[47];
        v32 = v29;
        v33 = (v31 + 4 * v29);
        v34 = (v31 + 8 * v29);
        if ((v30 & 4) == 0)
        {
          v33 = v34;
        }

        v35 = v31 + 8 * v32;
        if ((v30 & 4) != 0)
        {
          v36 = (*(v27 + 100) >> 9) & 0x3FFF;
        }

        else
        {
          v36 = *(v35 + 2);
        }

        v37 = *v33;
        v38 = v31 + 4 * v32 + 2;
        v39 = (v35 + 4);
        if ((v30 & 4) != 0)
        {
          v39 = v38;
        }

        v40 = *v39;
        v41 = btree_node_val_len(v27, v32);
        if (v37 == 0xFFFF)
        {
          v43 = 0;
        }

        else
        {
          inserted = btree_node_key_range_validate(v27, v37, v36);
          if (inserted)
          {
            break;
          }

          v27 = v53;
          v43 = (v53[48] + v37);
        }

        if (v40 > 0xFFFD)
        {
          v44 = 0;
        }

        else
        {
          inserted = btree_node_val_range_validate(v27, v40, v41);
          if (inserted)
          {
            break;
          }

          v44 = (v53[49] - v40);
        }

        inserted = btree_node_insert_internal(a1, v32, v43, v36, v44, v41, a3);
        if (inserted)
        {
          break;
        }

        v29 = v32 + 1;
        v27 = v53;
        v28 = v53[7];
        if (*(v28 + 36) <= (v32 + 1))
        {
          goto LABEL_32;
        }
      }

      v10 = inserted;
      if (v7)
      {
        memcpy((*(a1 + 56) + 32), (v53[7] + 32), v53[49] - v53[7] - 32);
        v45 = a1;
      }

      else
      {
        obj_exchange_phys(a1, v53);
        btree_node_init_ext(a1, 0, 0);
        v45 = v53;
      }

      btree_node_init_ext(v45, 0, 0);
    }

    else
    {
LABEL_32:
      v10 = 0;
    }

    goto LABEL_38;
  }

  return v9;
}

uint64_t btree_node_space_free_list_alloc(uint64_t a1, int a2, unsigned __int16 a3, int a4, int a5)
{
  if (a5 == 0xFFFF)
  {
    return 22;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 52;
  if (a2 == 1)
  {
    v6 = 48;
  }

  v7 = 384;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = 392;
    v8 = -1;
  }

  v9 = (*(a1 + 56) + v6);
  v10 = *(a1 + v7);
  v9[1] -= v5;
  if (a4 != 0xFFFF || (result = 0, *v9 == a5))
  {
    v12 = v5;
    v13 = v8;
    v14 = (v10 + a5 * v8);
    v15 = v14[1] - v12;
    if (v15 < 5u)
    {
      v17 = (v10 + v8 * a4);
      if (a4 == 0xFFFF)
      {
        v17 = v9;
      }
    }

    else
    {
      if (a4 != 0xFFFF)
      {
        v9 = (v10 + v8 * a4);
      }

      v16 = v8 * v12 + a5;
      *v9 = v16;
      v17 = (v10 + v13 * v16);
      v17[1] = v15;
    }

    result = 0;
    *v17 = *v14;
  }

  return result;
}

uint64_t btree_node_space_alloc(uint64_t a1, int a2, unsigned __int16 a3, _WORD *a4)
{
  v14 = -1;
  v13 = -1;
  btree_node_space_free_list_search(a1, a2, a3, &v13, &v14);
  if (v14 == 0xFFFF)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = (a3 + 7) & 0xFFF8;
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 46);
    if (v12 < v10)
    {
      return 28;
    }

    if (a2 == 1)
    {
      LOWORD(v9) = *(v11 + 44);
      *(v11 + 44) = v9 + v10;
      *(v11 + 46) = v12 - v10;
    }

    else
    {
      *(v11 + 46) = v12 - v10;
      if (a2 == 2)
      {
        v9 = *(a1 + 392) - *(v11 + 44) - (*(a1 + 384) + (v12 - v10));
      }

      else
      {
        LOWORD(v9) = -1;
      }
    }
  }

  else
  {
    result = btree_node_space_free_list_alloc(a1, a2, a3, v13, v14);
    if (result)
    {
      return result;
    }

    LOWORD(v9) = v14;
  }

  result = 0;
  *a4 = v9;
  return result;
}

void btree_node_toc_resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 42);
  v5 = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    memmove((*(a1 + 384) - v5), *(a1 + 384), *(v3 + 44));
    *(a1 + 384) -= v5;
    v7 = *(a1 + 56);
    *(v7 + 46) += v5;
    v8 = *(v7 + 42) - v5;
  }

  else
  {
    v6 = a2 - v4;
    memmove((*(a1 + 384) + (a2 - v4)), *(a1 + 384), *(v3 + 44));
    bzero(*(a1 + 384), v6);
    *(a1 + 384) += v6;
    v7 = *(a1 + 56);
    *(v7 + 46) -= v6;
    v8 = *(v7 + 42) + v6;
  }

  *(v7 + 42) = v8;
}

void *btree_node_toc_shift(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = (a3 + a2) << v5;
  v7 = a2 + -a3;
  if ((v4 & 4) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = v7 << v8;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v6 = a2 << v8;
  }

  if (a3 >= 0)
  {
    v8 = v5;
    v9 = (a2 << v5);
  }

  return memmove((*(a1 + 376) + v6), (*(a1 + 376) + v9), ((*(v3 + 36) - v7) << v8) & 0xFFFC);
}

uint64_t btree_node_child_id_update_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  if (a8 != 8)
  {
    return 22;
  }

  result = 0;
  *a5 = *a7;
  return result;
}

uint64_t bt_move_entries(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 0)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = -a3;
  }

  v8 = v7;
  if (a3 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  v11 = *(v10 + 56);
  if ((v11[16] & 4) != 0)
  {
    if ((*(v10 + 400) & 4) == 0)
    {
      goto LABEL_19;
    }

    v12 = 4;
  }

  else
  {
    v12 = 8;
  }

  v13 = btree_node_toc_required_capacity(v10, v7) * v12;
  v14 = v11[21];
  if (v14 >= v13)
  {
    goto LABEL_19;
  }

  if (v13 - v14 <= v11[23])
  {
    btree_node_toc_resize(v10, v13);
    goto LABEL_19;
  }

  v15 = btree_node_compact(v10, v8, a4);
  if (!v15)
  {
LABEL_19:
    v59 = 0;
    memset(__n, 0, sizeof(__n));
    if (v9 == a2)
    {
      if (v8 < 1)
      {
        v37 = 0;
        v38 = 0;
LABEL_60:
        v15 = 0;
      }

      else
      {
        v36 = btree_node_key_ptr(a2, 0, &v59, __n + 1);
        if (v36)
        {
          v15 = v36;
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            inserted = btree_node_val_ptr(a2, v38, &__n[1], __n);
            if (inserted)
            {
              break;
            }

            inserted = btree_node_insert_internal(a1, *(*(a1 + 56) + 36), v59, HIWORD(__n[0]), *&__n[1], LOWORD(__n[0]), a4);
            if (inserted)
            {
              break;
            }

            v40 = *(a2 + 56);
            v41 = *(a2 + 376);
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v42 = HIWORD(__n[0]);
            }

            else
            {
              v42 = (HIWORD(__n[0]) + 7) & 0xFFF8;
            }

            v43 = (v42 + 7) & 0xFFF8;
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v43 = HIWORD(__n[0]);
            }

            if (v43 >= 4u)
            {
              if ((v40[16] & 4) != 0)
              {
                v44 = (v41 + 4 * v38);
              }

              else
              {
                v44 = (v41 + 8 * v38);
              }

              v45 = *v44;
              v46 = (*(a2 + 384) + v45);
              v46[1] = v43;
              *v46 = v40[24];
              v40[24] = v45;
            }

            v40[25] += v43;
            v47 = __n[0];
            if (LOWORD(__n[0]) && LOWORD(__n[0]) != 65534)
            {
              if ((*(a2 + 400) & 0x40) != 0)
              {
                v48 = __n[0];
              }

              else
              {
                v48 = (LOWORD(__n[0]) + 7) & 0xFFF8;
              }

              v49 = (v48 + 7) & 0xFFF8;
              if ((*(a2 + 400) & 0x40) == 0)
              {
                v47 = v49;
              }

              if (v47 >= 4u)
              {
                v50 = v41 + 8 * v38 + 4;
                v51 = (v41 + 4 * v38 + 2);
                if ((v40[16] & 4) == 0)
                {
                  v51 = v50;
                }

                v52 = *v51;
                v53 = (*(a2 + 392) - v52);
                v53[1] = v47;
                *v53 = v40[26];
                v40[26] = v52;
              }

              v40[27] += v47;
            }

            v37 = ++v38;
            if (v38 >= v8)
            {
              goto LABEL_60;
            }

            inserted = btree_node_key_ptr(a2, v38, &v59, __n + 1);
          }

          while (!inserted);
          v15 = inserted;
          v37 = v38;
        }
      }

      btree_node_toc_shift(a2, 0, -v37);
      *(*(a2 + 56) + 36) -= v38;
    }

    else if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      btree_node_toc_shift(a2, 0, v8);
      v16 = 0;
      v17 = *(a2 + 56);
      *(v17 + 36) += v8;
      *(v17 + 32) |= 0x8000u;
      v18 = *(a2 + 376);
      do
      {
        if ((*(v17 + 32) & 4) != 0)
        {
          *(v18 + 4 * v16) = -1;
        }

        else
        {
          *(v18 + 8 * v16) = 0xFFFF0000FFFFLL;
        }

        ++v16;
      }

      while (v8 > v16);
      LOWORD(v19) = 0;
      v20 = *(*(a1 + 56) + 36);
      while (1)
      {
        v21 = btree_node_key_ptr(a1, (v20 - 1), &v59, __n + 1);
        if (v21)
        {
          break;
        }

        v21 = btree_node_val_ptr(a1, (*(*(a1 + 56) + 36) - 1), &__n[1], __n);
        if (v21)
        {
          break;
        }

        v21 = btree_node_entry_update(a2, (v8 + ~v19), v59, HIWORD(__n[0]), *&__n[1]);
        if (v21)
        {
          break;
        }

        v22 = *(a1 + 56);
        v20 = *(v22 + 36) - 1;
        *(v22 + 36) = v20;
        v23 = *(a1 + 376);
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v24 = HIWORD(__n[0]);
        }

        else
        {
          v24 = (HIWORD(__n[0]) + 7) & 0xFFF8;
        }

        v25 = (v24 + 7) & 0xFFF8;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v25 = HIWORD(__n[0]);
        }

        if (v25 >= 4u)
        {
          if ((*(v22 + 32) & 4) != 0)
          {
            v26 = (v23 + 4 * v20);
          }

          else
          {
            v26 = (v23 + 8 * v20);
          }

          v27 = *v26;
          v28 = (*(a1 + 384) + v27);
          v28[1] = v25;
          *v28 = *(v22 + 48);
          *(v22 + 48) = v27;
        }

        *(v22 + 50) += v25;
        v29 = __n[0];
        if (LOWORD(__n[0]) && LOWORD(__n[0]) != 65534)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v30 = __n[0];
          }

          else
          {
            v30 = (LOWORD(__n[0]) + 7) & 0xFFF8;
          }

          v31 = (v30 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) == 0)
          {
            v29 = v31;
          }

          if (v29 >= 4u)
          {
            v32 = v23 + 8 * v20 + 4;
            v33 = (v23 + 4 * v20 + 2);
            if ((*(v22 + 32) & 4) == 0)
            {
              v33 = v32;
            }

            v34 = *v33;
            v35 = (*(a1 + 392) - v34);
            v35[1] = v29;
            *v35 = *(v22 + 52);
            *(v22 + 52) = v34;
          }

          *(v22 + 54) += v29;
        }

        v19 = (v19 + 1);
        if (v19 >= v8)
        {
          v15 = 0;
          *(*(a2 + 56) + 32) &= ~0x8000u;
          goto LABEL_90;
        }
      }

      v15 = v21;
      *(*(a2 + 56) + 32) &= ~0x8000u;
      btree_node_toc_shift(a2, 0, (v19 - v8));
    }

LABEL_90:
    v54 = *(v9 + 56);
    if ((*(v54 + 32) & 4) != 0)
    {
      if ((*(v9 + 400) & 4) == 0)
      {
LABEL_96:
        *(v9 + 440) = 0;
        obj_dirty(a1, a4, 0);
        obj_dirty(a2, a4, 0);
        return v15;
      }

      v55 = 4;
    }

    else
    {
      v55 = 8;
    }

    v56 = btree_node_toc_required_capacity(v9, 8);
    if (*(v54 + 42) > (v56 * v55))
    {
      btree_node_toc_resize(v9, (v56 * v55));
    }

    goto LABEL_96;
  }

  return v15;
}

void btree_node_reinit_root(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 2123139;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = *(a1 + 56);
  v10 = *(v6 + 32) & 0x18 | v5;
  v11 = a2;
  v12 = *(a1 + 400);
  v13 = *(a1 + 416);
  bzero((v6 + 32), ((*(a1 + 400) >> 27) & 0x1F000) - 72);
  v7 = *(a1 + 56);
  v8 = obj_size_phys(a1);
  btree_node_init_phys(v7, v8, &v9);
  btree_node_init_ext(a1, &v9, 0);
  obj_dirty(a1, a3, 0);
}

uint64_t bt_update_last_leaf(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (*(result + 432) == *(a3 + 112))
  {
    v4 = result;
    v5 = *(a2 + 56);
    if ((*(v5 + 32) & 2) != 0 || !*(v5 + 36))
    {
      *(result + 432) = *(a2 + 112);
    }

    else
    {
      v6 = *(result + 400);
      v7 = v6 & 0x7F00000000000000;
      v8 = (HIBYTE(v6) & 0x7F) + 8;
      if (v7 <= 0x4000000000000000)
      {
        v9 = v8;
      }

      else
      {
        v9 = 72;
      }

      MEMORY[0x28223BE20](result, v9);
      v11 = (v17 - v10);
      bzero(v17 - v10, v12);
      result = btree_node_child_val(a2, (*(*(a2 + 56) + 36) - 1), v11);
      if (result)
      {
        v13 = v4[1];
        if (v13)
        {
          v14 = (v13 + 4040);
        }

        else
        {
          v14 = (*(*(*v4 + 392) + 384) + 212);
        }

        result = log_err("%s:%d: %s failed to update rightmost leaf field: %d\n", "bt_update_last_leaf", 2521, v14, result);
        v15 = 0;
      }

      else
      {
        v15 = *v11;
      }

      v4[54] = v15;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void bt_merge_nodes(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v77[1] = *MEMORY[0x277D85DE8];
  v77[0] = a6;
  v16 = a1[50];
  v17 = v16 & 0x7F00000000000000;
  v18 = (HIBYTE(v16) & 0x7F) + 8;
  if (v17 <= 0x4000000000000000)
  {
    v19 = v18;
  }

  else
  {
    v19 = 72;
  }

  MEMORY[0x28223BE20](a1, v19);
  v21 = (&v68 - v20);
  bzero(&v68 - v20, v22);
  v75 = 0;
  v74 = 0;
  v23 = *(a4 + 56);
  if (!a2)
  {
    if ((*(v23 + 32) & 2) != 0 || *(v23 + 36) != 1)
    {
      goto LABEL_110;
    }

    if (a5 || v10 && (*(v10 + 16) & 0x10) != 0)
    {
      if (btree_node_child_val(a4, 0, v21) || btree_node_get(a1, v21, a7, 3u, *(*(a4 + 56) + 34) - 1, a8, v77))
      {
        goto LABEL_110;
      }

      v10 = v77[0];
      if ((a1[50] & 0x10) != 0 && *(v77[0] + 112) != *v21)
      {
        btree_node_child_id_update(a4, 0, (v77[0] + 112), a8);
      }

      v48 = 1;
    }

    else
    {
      v48 = 0;
    }

    if (btree_node_free_space_total(v10) > 0x27)
    {
      v51 = *(v10 + 56);
      if (*(v51 + 46) > 0x27u || ((*(v51 + 32) & 4) == 0 || (*(v10 + 400) & 4) != 0) && (btree_node_compact(v10, 0, a8), *(*(v10 + 56) + 46) > 0x27u))
      {
        btree_node_remove(a4, 0, a8);
        btree_node_reinit_root(a4, (*(*(a4 + 56) + 34) - 1), a8);
        v52 = bt_move_entries(a4, v10, -*(*(v10 + 56) + 36), a8);
        if (!v52)
        {
          bt_update_last_leaf(a1, a4, v10);
          obj_delete_and_free(v10, a8);
          if (v48)
          {
            obj_unlock(v10, 2);
            obj_release(v10);
          }

          atomic_fetch_add_explicit((a1[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
          obj_dirty(a1, a8, 0);
          goto LABEL_110;
        }

        v53 = a1[1];
        if (v53)
        {
          v54 = (v53 + 4040);
        }

        else
        {
          v54 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to move all entries: %d\n", "bt_merge_nodes", 4374, v54, v52);
        bt_move_entries(a4, v10, *(*(a4 + 56) + 36), a8);
        btree_node_reinit_root(a4, (*(*(a4 + 56) + 34) + 1), a8);
        if (!btree_node_key_ptr(v10, 0, &v75, &v74))
        {
          *v21 = *(v10 + 112);
          btree_node_insert_internal(a4, 0, v75, v74, v21, (*(a4 + 407) & 0x7F) + 8, a8);
        }
      }
    }

    if (!v48)
    {
LABEL_110:
      v67 = *MEMORY[0x277D85DE8];
      return;
    }

    obj_unlock(v10, 2);
    v66 = v10;
LABEL_109:
    obj_release(v66);
    goto LABEL_110;
  }

  if (*(v23 + 36))
  {
    if (*(*(a2 + 56) + 36) - 1 <= a3)
    {
      goto LABEL_110;
    }

    v24 = a3 + 1;
    if (btree_node_child_val(a2, v24, v21))
    {
      goto LABEL_110;
    }

    v76 = 0;
    if (btree_node_get(a1, v21, a7, 3u, *(*(a2 + 56) + 34) - 1, a8, &v76))
    {
      goto LABEL_110;
    }

    if ((a1[50] & 0x10) != 0 && v76[14] != *v21)
    {
      btree_node_child_id_update(a2, v24, v76 + 14, a8);
    }

    v25 = *(a4 + 56);
    if ((*(v25 + 32) & 4) != 0)
    {
      v55 = *(v25 + 36);
      v28 = v76;
      v72 = v76[7];
      v47 = *(v72 + 36);
      v56 = v47 + v55;
      if (v47 + v55 <= btree_node_toc_required_capacity(a4, 0))
      {
        v73 = 0;
        LOWORD(v33) = v47;
      }

      else
      {
        if (v55 >= (v56 >> 1))
        {
          v33 = 0;
        }

        else
        {
          v33 = (v56 >> 1) - v55;
        }

        v73 = v33;
      }
    }

    else
    {
      v69 = v24;
      v26 = 8 * btree_node_toc_required_capacity(a4, 0);
      v27 = btree_node_free_space_total(a4);
      v28 = v76;
      v29 = btree_node_free_space_total(v76);
      v30 = 0;
      v31 = 0;
      v72 = v28[7];
      v73 = 0;
      v32 = *(v72 + 36);
      v70 = v27 - ((v29 + v27) >> 1);
      v71 = v32;
      do
      {
        LOWORD(v33) = v30;
        if (v71 <= v30)
        {
          break;
        }

        if (v30 && !v73)
        {
          v34 = 8 * (btree_node_toc_required_capacity(a4, v30) & 0x1FFF);
          v35 = v34 >= v26;
          v36 = v34 - v26;
          if (!v35)
          {
            v36 = 0;
          }

          if ((v36 + v31) <= v70)
          {
            v37 = 0;
          }

          else
          {
            v37 = v30;
          }

          v73 = v37;
        }

        v38 = v28[50];
        v39 = *(v72 + 32);
        if ((v38 & 0x40) != 0)
        {
          if ((v39 & 4) != 0)
          {
            v41 = (v38 >> 9) & 0x3FFF;
          }

          else
          {
            v41 = *(v28[47] + 8 * v33 + 2);
          }
        }

        else
        {
          if ((v39 & 4) != 0)
          {
            v40 = (v38 >> 9) & 0x3FFF;
          }

          else
          {
            v40 = *(v28[47] + 8 * v33 + 2);
          }

          v41 = (v40 + 7) & 0x1FFF8;
        }

        v42 = v41 + v31;
        v43 = btree_node_val_len(v28, v33);
        if (v43 == 65534)
        {
          v44 = 0;
        }

        else
        {
          v44 = v43;
        }

        if ((v38 & 0x40) == 0)
        {
          v44 = (v44 + 7) & 0x1FFF8;
        }

        v31 = v42 + v44;
        v30 = (v33 + 1);
        v45 = 8 * (btree_node_toc_required_capacity(a4, v30) & 0x1FFF);
        v35 = v45 >= v26;
        v46 = v45 - v26;
        if (!v35)
        {
          v46 = 0;
        }
      }

      while (v46 + v31 <= v27);
      LOWORD(v24) = v69;
      v47 = v71;
    }

    if (v47 != v33)
    {
      if ((*(*(a2 + 56) + 32) & 4) != 0)
      {
        v57 = (*(a2 + 400) >> 9) & 0x3FFF;
      }

      else
      {
        v57 = *(*(a2 + 376) + 8 * v24 + 2);
      }

      if ((*(v72 + 32) & 4) != 0)
      {
        v58 = (*(v28 + 100) >> 9) & 0x3FFF;
      }

      else
      {
        v58 = *(v28[47] + 8 * v73 + 2);
      }

      v74 = v58;
      v59 = *(a2 + 400);
      if ((v59 & 0x40) != 0)
      {
        v60 = v57;
      }

      else
      {
        v60 = (v57 + 7) & 0x1FFF8;
      }

      v61 = (v58 + 7) & 0x1FFF8;
      if ((v59 & 0x40) != 0)
      {
        v61 = v58;
      }

      if (v60 >= v61)
      {
        LOWORD(v33) = v73;
      }

      else
      {
        if ((v59 & 0x40) == 0)
        {
          LOWORD(v58) = (v58 + 7) & 0xFFF8;
          LOWORD(v57) = (v57 + 7) & 0xFFF8;
        }

        has_room = btree_node_has_room(a2, 0, 0, 0, v58 - v57, 0, 0);
        LOWORD(v33) = v73;
        if (!has_room)
        {
          goto LABEL_108;
        }
      }
    }

    if (v33 && !bt_move_entries(a4, v28, -v33, a8))
    {
      if (*(v28[7] + 36))
      {
        v63 = btree_node_key_ptr(v28, 0, &v75, &v74);
        if (v63 || (v63 = btree_node_entry_update(a2, v24, v75, v74, 0)) != 0)
        {
          v64 = a1[1];
          if (v64)
          {
            v65 = (v64 + 4040);
          }

          else
          {
            v65 = (*(*(*a1 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_merge_nodes", 4515, v65, v63);
        }
      }

      else
      {
        btree_node_remove(a2, v24, a8);
        bt_update_last_leaf(a1, a2, v28);
        obj_delete_and_free(v28, a8);
        atomic_fetch_add_explicit((a1[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
        obj_dirty(a1, a8, 0);
      }
    }

LABEL_108:
    obj_unlock(v28, 2);
    v66 = v28;
    goto LABEL_109;
  }

  btree_node_remove(a2, a3, a8);
  v49 = *(a2 + 56);
  if ((*(v49 + 32) & 1) != 0 && !*(v49 + 36))
  {
    btree_node_reinit_root(a2, 0, a8);
  }

  bt_update_last_leaf(a1, a2, a4);
  obj_delete_and_free(a4, a8);
  atomic_fetch_add_explicit((a1[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  v50 = *MEMORY[0x277D85DE8];

  obj_dirty(a1, a8, 0);
}

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v2 = spaceman_get(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    obj_release(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v11, v12, v13, &v29, &v28))
    {
      v14 = v8 + 104 * v5;
      v15 = v28 + v29 / v11;
      spaceman_metazone_get_partitions(v11, v29, v28, v15, &v27, 0);
      v16 = v28;
      *(v14 + 1016) = v28;
      *(v14 + 1032) = v16;
      v17 = v27;
      *(v14 + 1024) = v27;
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27;
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v28)
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v28 / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v18 = 0;
  v2 = spaceman_get(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  spaceman_free_queue_trim_list_init(a1, v18);
  v2 = spaceman_metazone_init(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v18);
    v14 = 1;
    while (1)
    {
      v15 = spaceman_datazone_init(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = spaceman_free_extent_cache_setup(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    obj_release(&v18->__sig);
  }

  return v16;
}

const char *spaceman_sanitize_datazone(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = spaceman_get(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    obj_release(v12);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          *(v7 + 16) = v19;
          updated = spaceman_update_allocation_zone_boundaries(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = updated;
          if (updated)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, updated);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      *(v7 + 16) = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              _apfs_free(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t spaceman_update_allocation_zone_boundaries(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  updated = spaceman_update_allocation_zone_boundaries(a1, a2, v8, a3);
  v17 = a1[1];
  if (updated)
  {
    v14 = updated;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        v78 = 0;
        v79 = 0;
        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          updated = spaceman_update_allocation_zone_boundaries(v5, v6, a4, v21);
          if (updated)
          {
            v4 = updated;
            v63 = *(a1 + 384) + 212;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = get_timestamp();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v72 = 0;
            v32 = 0;
            v69 = v31;
            v70 = (v26 / v27);
            v66 = v26;
            v67 = v5 + 896;
            v65 = v5;
            v33 = v5 + 1496;
            v71 = -1;
            v21 = -1;
            do
            {
              v34 = (v70 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v71;
                v38 = v72;
                if (v34 / v35 != v71 || v72 == 0)
                {
                  v40 = *(*(v67 + 8 * v9) + 8 * v36);
                  if (v75)
                  {
                    obj_release(v75);
                    v75 = 0;
                  }

                  v78 = v8;
                  v79 = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &sm_cab_desc, &v78, 0, 0, 0, &v75);
                  if (v41)
                  {
                    v4 = v41;
                    log_err("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = *(v75 + 56);
                  v35 = v8[11];
                  v37 = v36;
                }

                v71 = v37;
                v72 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v67 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v76 = v8;
              v77 = __PAIR64__(v34, v6);
              v44 = obj_get(*(a1 + 392), 0x40000000, v43, &sm_cib_desc, &v76, 0, 0, 0, &v74);
              if (v44)
              {
                v4 = v44;
                v64 = *(a1 + 384) + 212;
                log_err("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v66 % v8[10] + 1;
              }

              v31 = v69;
              v46 = *(v74 + 56);
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v74);
              v74 = 0;
              ++v30;
              v14 = v69[4];
            }

            while (v30 < v14);
            v5 = v65;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v75)
        {
          obj_release(v75);
        }

        if (v74)
        {
          obj_release(v74);
        }
      }
    }
  }

  return v4;
}

BOOL spaceman_should_avoid_data_allocation_at_block(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL spaceman_clip_extent(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = calc_overlap_range(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t spaceman_clip_extent_to_zones(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && spaceman_clip_extent(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = spaceman_clip_extent(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (spaceman_clip_extent(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && spaceman_clip_extent(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

uint64_t utf8_normalizeOptCaseFoldAndHash(unint64_t a1, uint64_t a2, int a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = a1;
  v21[0] = 0;
  v21[1] = 0;
  v8 = a1 + a2;
  v16 = 0;
  v15 = 1;
  do
  {
    memset(v20, 0, sizeof(v20));
    memset(v19, 0, sizeof(v19));
    v14 = 0;
    v13 = 0;
    v9 = nextBaseAndAnyMarks(&v18, v8, a3, v21, &v17 + 4, &v17, &v16, v20, v19, &v14, &v13, &v15);
    if (v9)
    {
      break;
    }

    v10 = v14;
    if (v14 >= 1)
    {
      if (v13 == 1)
      {
        doReorder(v20, v19, v14);
      }

      a4(v20, 4 * v10, a5);
    }
  }

  while (v18 < v8 || v17 > 0);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t nextBaseAndAnyMarks(unint64_t *a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = (v20 + 1);
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1)
          {
            goto LABEL_41;
          }

          if (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F))
          {
            v36 = *v23++;
            v37 = v36 ^ 0x80;
            v28 = -1;
            if ((v36 ^ 0x80u) <= 0x3F)
            {
              v34 = v37 | (v34 << 6);
              if ((v34 & 0xFFE0) != 0x360)
              {
LABEL_41:
                v38 = *v23++;
                v39 = v38 ^ 0x80;
                if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < utf8_minLegal[v33]))
                {
                  v28 = -1;
                }
              }
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if (v28 - 918016 < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = nfTrieHi[v40 >> 8];
        if (!nfTrieHi[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = nfTrieMid[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((nfU16InvMasks[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = nfBasicCF[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = nfTrieLo[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = nfBasicCF[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &nfU16Seq3 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &nfU16Seq2 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&nfU16SeqMisc + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&nfU32SeqMisc + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&nfU32Char + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            CombClassU32Char = getCombClassU32Char(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = CombClassU32Char;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = nfBasicCF[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t doReorder(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t getCombClassU32Char(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = nfTrieHi[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = nfTrieMid[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = nfTrieLo[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t spaceman_init_phys(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *a3;
  v4 = *(*a3 + 16);
  if (!v4)
  {
    return 22;
  }

  v5 = *(v3 + 128);
  if (!v5)
  {
    return 22;
  }

  v6 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v7 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v4;
  v10 = *(v3 + 48);
  *(a1 + 96) = v10;
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12;
  *(a1 + 120) = v10;
  *(a1 + 152) = *(v3 + 104);
  v13 = *(v3 + 120);
  *(a1 + 144) = v6;
  *(a1 + 148) = v13;
  v14 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v15 = *(v3 + 112);
  *(a1 + 160) = v15;
  *(a1 + 164) = v5;
  *(a1 + 264) = v14;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v16 = 8 * v15 + 2520;
  *(a1 + 328) = v16;
  v17 = ((2 * v15 + 6) & 0xFFFFFFF8) + v16;
  *(a1 + 332) = v17;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v18 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = (v18 + 7) & 0x1FFFFFFF8;
    v20 = vdupq_n_s64(v18 - 1);
    v21 = (v17 + a1 + 8);
    v22 = xmmword_23D298E70;
    v23 = xmmword_23D298E80;
    v24 = xmmword_23D298E90;
    v25 = xmmword_23D298EA0;
    v26 = vdupq_n_s64(1uLL);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v20, v25));
      v29 = vaddq_s64(v25, v26);
      if (vuzp1_s8(vuzp1_s16(v28, *v20.i8), *v20.i8).u8[0])
      {
        *(v21 - 4) = v29.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v20), *&v20).i8[1])
      {
        *(v21 - 3) = v29.i16[4];
      }

      v30 = vaddq_s64(v24, v26);
      if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v24))), *&v20).i8[2])
      {
        *(v21 - 2) = v30.i16[0];
        *(v21 - 1) = v30.i16[4];
      }

      v31 = vaddq_s64(v23, v26);
      v32 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i32[1])
      {
        *v21 = v31.i16[0];
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i8[5])
      {
        v21[1] = v31.i16[4];
      }

      v33 = vaddq_s64(v22, v26);
      if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22)))).i8[6])
      {
        v21[2] = v33.i16[0];
        v21[3] = v33.i16[4];
      }

      v23 = vaddq_s64(v23, v27);
      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v21 += 8;
      v22 = vaddq_s64(v22, v27);
      v19 -= 8;
    }

    while (v19);
  }

  *(a1 + v17 + 2 * v18) = -1;
  v35 = v17 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v35;
  if (v9)
  {
    v8 = v9;
  }

  v36 = (v35 + 8 * v8);
  *(a1 + 128) = v36;
  if (v12)
  {
    v37 = v12;
  }

  else
  {
    v37 = v11;
  }

  if (8 * v37 + v36 <= a2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t spaceman_init(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v4 = *(v2 + 32);
  v5 = *(v3 + 376);
  v6 = *(v5 + 36);
  if (*(v3 + 624))
  {
    if (v4 == v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v5 + 40) || v4 != v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v12 = 2520;
    }

    else
    {
      v12 = 336;
    }

    v13 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 <= v12)
    {
      v7 = v12;
    }

    else
    {
      v7 = *(v2 + 340);
    }

    if (v13 >= v12)
    {
      v8 = *(v2 + 336) == 0;
    }

    else
    {
      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *(a1 + 48);
  v16 = nx_calculate_metadata_parameters(v4, *(v2 + 48), *(v5 + 180), &v69);
  if (v16)
  {
    return v16;
  }

  if (v7 < v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  if (*(v2 + 36) != v74)
  {
    ++v17;
  }

  if (*(v2 + 40) != DWORD2(v74))
  {
    ++v17;
  }

  if (*(v2 + 44) != v75)
  {
    ++v17;
  }

  v18 = *(v2 + 48);
  if (*(v2 + 56) == *(&v70 + 1))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v20 = *(v2 + 64);
  v21 = *(v2 + 68);
  if (v20 != v71)
  {
    ++v19;
  }

  if (v21 != DWORD2(v71) && *(&v71 + 1) + v21 != 1)
  {
    ++v19;
  }

  if (*(v2 + 104) == *(&v72 + 1))
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  if (v24 != v73)
  {
    ++v23;
  }

  if (v25 != DWORD2(v73) && *(&v73 + 1) + v25 != 1)
  {
    ++v23;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v75 + 1))
  {
    ++v23;
  }

  v27 = *(v2 + 160);
  if (v27 != v76)
  {
    ++v23;
  }

  v28 = *(v2 + 164) & 0x7FFFFFFF;
  if (v28 > 0xFFFE)
  {
    ++v23;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v23;
  }

  if (v28 / v27 < 4)
  {
    ++v23;
  }

  if (*(v2 + 224) != v78)
  {
    ++v23;
  }

  if (*(v2 + 264) != DWORD2(v78))
  {
    ++v23;
  }

  if (*(v2 + 304) != v79)
  {
    ++v23;
  }

  v29 = *(v2 + 324);
  if (v29 < v7)
  {
    ++v23;
  }

  v30 = *(v2 + 328);
  if (v29 + 8 * v27 > v30)
  {
    ++v23;
  }

  v31 = *(v2 + 332);
  if (v30 + 2 * ((v27 + 3) & 0xFFFFFFFC) > v31)
  {
    ++v23;
  }

  v32 = *(v2 + 80);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v23;
  }

  v33 = *(v2 + 128);
  if (v21)
  {
    v20 = *(v2 + 68);
  }

  if (v32 + 8 * v20 <= v33)
  {
    v34 = v23;
  }

  else
  {
    v34 = v23 + 1;
  }

  if (v25)
  {
    v24 = *(v2 + 116);
  }

  if (v33 + 8 * v24 > *(a1 + 48))
  {
    ++v34;
  }

  if (*(v2 + 72) > v18)
  {
    ++v34;
  }

  v35 = *(v2 + 240);
  if (v35 < v18)
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 + 1;
  }

  if (v35 && !*(v2 + 248))
  {
    ++v36;
  }

  v37 = *(v2 + 256);
  if (v37 <= obj_xid(a1))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = *(v2 + 96);
  v40 = *(v2 + 120);
  v41 = *(v2 + 280);
  if (v39)
  {
    if (v40 > v39)
    {
      ++v38;
    }

    if (v41 < v39)
    {
      v42 = v38;
    }

    else
    {
      v42 = v38 + 1;
    }

    if (v41 && !*(v2 + 288))
    {
      ++v42;
    }

    v43 = *(v2 + 296);
    v44 = v43 > obj_xid(a1);
  }

  else
  {
    if (v40)
    {
      ++v38;
    }

    if (v41)
    {
      v45 = v38 + 1;
    }

    else
    {
      v45 = v38;
    }

    if (*(v2 + 288))
    {
      v42 = v45 + 1;
    }

    else
    {
      v42 = v45;
    }

    v44 = *(v2 + 296) != 0;
  }

  v46 = v42 + v44;
  v47 = *(v2 + 320);
  v48 = *(v2 + 164) & 0x7FFFFFFF;
  if (v47 != 0xFFFF && v48 <= v47)
  {
    ++v46;
  }

  v50 = *(v2 + 322);
  if (v50 != 0xFFFF && v48 <= v50)
  {
    ++v46;
  }

  if (!(v46 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v52 = *(v2 + 80);
    v53 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v54 = *(v2 + 48);
    *(a1 + 896) = v2 + v52;
    *(a1 + 904) = v2 + v53;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v54 >> 5;
    *(a1 + 1528) = *(v2 + 96) >> 5;
    if (*(v3 + 625) == 1)
    {
      *(a1 + 1536) = 0;
    }

    else if (*(v3 + 628) == 1)
    {
      *(a1 + 1536) = 32;
    }

    else
    {
      LODWORD(v69) = 0;
      dev_features(*(v3 + 384));
      if ((v69 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v55 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v55)
        {
          *(a1 + 1520) = v55;
        }

        if (*(a1 + 1528) > v55)
        {
          *(a1 + 1528) = v55;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = obj_xid(a1);
    }

    v57 = 0;
    v58 = a1 + 1496;
    *(a1 + 920) = v56;
    v59 = 1;
    do
    {
      v60 = v59;
      v61 = v2 + 48 + 48 * v57;
      v64 = *(v61 + 8);
      v63 = (v61 + 8);
      v62 = v64;
      if (v64)
      {
        v65 = _apfs_calloc_typed(v62, 4uLL, 0x100004052888210uLL);
        *(v58 + 8 * v57) = v65;
        if (v65 && *v63)
        {
          v66 = 0;
          do
          {
            v67 = *(v58 + 8 * v57) + 4 * v66;
            *v67 = *(v2 + 36) & 0xFFFFFF | (*(v67 + 3) << 24);
            *(*(v58 + 8 * v57) + 4 * v66++ + 3) = 3;
          }

          while (v66 < *v63);
        }
      }

      else
      {
        *(v58 + 8 * v57) = 0;
      }

      v59 = 0;
      v57 = 1;
    }

    while ((v60 & 1) != 0);
    v11 = new_lock((a1 + 384));
    if (v11)
    {
      goto LABEL_164;
    }

    v11 = new_lock((a1 + 448));
    if (!v11)
    {
      v11 = new_lock((a1 + 512));
      if (!v11)
      {
        v11 = new_lock((a1 + 576));
        if (!v11)
        {
          v11 = new_lock((a1 + 640));
          if (!v11)
          {
            v11 = new_lock((a1 + 704));
            if (!v11)
            {
              v11 = new_cv((a1 + 768));
              if (!v11)
              {
LABEL_164:
                *(a1 + 1592) = _apfs_calloc_typed(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v11;
              }

              free_lock((a1 + 704));
            }

            free_lock((a1 + 640));
          }

          free_lock((a1 + 576));
        }

        free_lock((a1 + 512));
      }

      free_lock((a1 + 448));
    }

    free_lock((a1 + 384));
    goto LABEL_164;
  }

  v10 = v3;
LABEL_10:
  v11 = nx_corruption_detected_int(v10);
  if (!v11)
  {
    goto LABEL_130;
  }

  return v11;
}

uint64_t spaceman_destroy(uint64_t a1)
{
  _apfs_free(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  _apfs_free(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v2 = *(a1 + 1608);
  if (v2)
  {
    _apfs_free(v2, 16 * *(a1 + 1600));
  }

  v3 = *(a1 + 1592);
  if (v3)
  {
    _apfs_free(v3, 248);
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    _apfs_free(v4, 16 * *(a1 + 1538));
  }

  spaceman_datazone_destroy(a1);
  v5 = *(a1 + 1576);
  if (v5)
  {
    spaceman_free_extent_cache_destroy(v5);
    _apfs_free(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    spaceman_free_extent_cache_destroy(v6);
    _apfs_free(*(a1 + 1584), 1368);
  }

  free_lock((a1 + 384));
  free_lock((a1 + 448));
  free_lock((a1 + 512));
  free_lock((a1 + 576));
  free_lock((a1 + 640));
  free_lock((a1 + 704));
  free_cv((a1 + 768));
  return 0;
}

uint64_t spaceman_cab_sanity_check(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = *a2;
  v10 = *(a2 + 3);
  if (v5 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(v4 + 32) != v10)
  {
    v8 = v11;
  }

  v12 = v9 + 48 * *(a2 + 2);
  v13 = v10 == *(v12 + 68) - 1 ? *(v12 + 64) - *(v9 + 44) * v10 : *(v9 + 44);
  if (*(v4 + 36) == v13)
  {
LABEL_11:
    if (!v8)
    {
      return 0;
    }
  }

  return nx_corruption_detected_int(v6);
}