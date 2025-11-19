uint64_t xf_release(uint64_t a1)
{
  _apfs_free(*(a1 + 8), 4 * *(a1 + 2));
  _apfs_free(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

pthread_cond_t *free_cv(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t cv_wait(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
{
  if (a5)
  {
    v14.tv_sec = 0;
    v14.tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, &v14);
    v8 = __OFADD__(a5->tv_sec, v14.tv_sec);
    v9 = a5->tv_sec + v14.tv_sec;
    a5->tv_sec = v9;
    if (v8)
    {
      return 35;
    }

    else
    {
      tv_nsec = a5->tv_nsec;
      v8 = __OFADD__(tv_nsec, v14.tv_nsec);
      v12 = tv_nsec + v14.tv_nsec;
      if (v8)
      {
        v12 = 999999999;
      }

      a5->tv_nsec = v12;
      if (v12 > 0x3B9ACA00)
      {
        v13 = v12 - 1000000000;
        a5->tv_sec = v9 + (v13 - 1) / 0x3B9ACA00 + 1;
        a5->tv_nsec = v13 - 1000000000 * ((v13 - 1) / 0x3B9ACA00);
      }

      LODWORD(result) = pthread_cond_timedwait(a1, a2, a5);
      if (result == 60)
      {
        return 35;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    return pthread_cond_wait(a1, a2);
  }
}

uint64_t btree_node_space_stats(void *a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a1[7];
  *a2 = (a1[50] >> 27) & 0x1F000;
  LODWORD(v5) = v5[25] + v5[23] + v5[27];
  *a3 = v5;
  v6 = *a2 >= v5;
  v7 = *a2 - v5;
  if (v6)
  {
    result = 0;
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v11 + 4040);
    }

    else
    {
      v12 = (*(*(*a1 + 392) + 384) + 212);
    }

    v14 = obj_oid(a1);
    log_err("%s:%d: %s oid 0x%llx (level %d): freespace %u larger than nodespace %u\n", "btree_node_space_stats", 52, v12, v14, *(a1[7] + 34), *a3, *a2);
    v7 = 0;
    result = 22;
  }

  *a4 = v7;
  return result;
}

uint64_t btree_node_debug_stats(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2[7];
  if ((*(v7 + 32) & 2) != 0)
  {
    ++*(a4 + 4);
    *(a4 + 16) += *(v7 + 36);
  }

  else
  {
    ++*a4;
    *(a4 + 12) += *(v7 + 36);
  }

  if (*(a4 + 8) < a3)
  {
    *(a4 + 8) = a3;
  }

  v8 = *(v7 + 34);
  if (v8 <= 0xF)
  {
    ++*(a4 + 4 * v8 + 216);
  }

  v9 = btree_node_sanity_check(a2, 0);
  if (!v9)
  {
    v32 = 0;
    v31 = 0;
    v9 = btree_node_space_stats(a2, &v32 + 1, &v32, &v31);
    v10 = v31;
    v11 = HIDWORD(v32);
    v12 = 5 * v31 / HIDWORD(v32);
    ++*(a4 + 4 * v12 + 20);
    v13 = *(a4 + 56) + v10;
    *(a4 + 48) += v11;
    *(a4 + 56) = v13;
    if ((*(a2[7] + 32) & 2) != 0)
    {
      ++*(a4 + 4 * v12 + 104);
      v15 = *(a4 + 136);
      *(a4 + 128) += v11;
      *(a4 + 136) = v15 + v10;
      if (*(v7 + 36))
      {
        v16 = 0;
        do
        {
          v17 = btree_node_key_len(a2, v16);
          v18 = btree_node_val_len(a2, v16);
          v19 = *(a1 + 392);
          if (*(v19 + 16) < v17)
          {
            if (v9)
            {
              v9 = v9;
            }

            else
            {
              v9 = 22;
            }

            v20 = a2[1];
            if (v20)
            {
              v21 = (v20 + 4040);
            }

            else
            {
              v21 = (*(*(*a2 + 392) + 384) + 212);
            }

            v22 = obj_oid(a2);
            log_err("%s:%d: %s oid 0x%llx (level %d): index %d key length %d longer than tree longest %d\n", "btree_node_debug_stats", 110, v21, v22, *(a2[7] + 34), v16, v17, *(*(a1 + 392) + 16));
            v19 = *(a1 + 392);
            v17 = *(v19 + 16);
          }

          if (v18 == 65534 || *(v19 + 20) < v18 && (v9 ? (v9 = v9) : (v9 = 22), (v23 = a2[1]) == 0 ? (v24 = (*(*(*a2 + 392) + 384) + 212)) : (v24 = (v23 + 4040)), v25 = obj_oid(a2), log_err("%s:%d: %s oid 0x%llx (level %d): index %d val length %d longer than tree longest %d\n", "btree_node_debug_stats", 115, v24, v25, *(a2[7] + 34), v16, v18, *(*(a1 + 392) + 20)), v19 = *(a1 + 392), v18 = *(v19 + 20), v18 == 65534))
          {
            v18 = 0;
          }

          if (*(a4 + 208) < v17)
          {
            *(a4 + 208) = v17;
          }

          if (*(a4 + 212) < v18)
          {
            *(a4 + 212) = v18;
          }

          *(a4 + 144) += v17;
          v26 = *(v19 + 16);
          v27 = (a4 + 180);
          if (v26)
          {
            v27 = (a4 + 160 + 4 * (5 * v17 / v26));
          }

          ++*v27;
          *(a4 + 152) += v18;
          v28 = *(v19 + 20);
          v29 = (a4 + 204);
          if (v28)
          {
            v29 = (a4 + 184 + 4 * (5 * v18 / v28));
          }

          ++*v29;
          ++v16;
        }

        while (v16 < *(v7 + 36));
      }
    }

    else
    {
      ++*(a4 + 4 * v12 + 64);
      v14 = *(a4 + 96) + v10;
      *(a4 + 88) += v11;
      *(a4 + 96) = v14;
    }
  }

  return v9;
}

uint64_t btree_node_check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  v360[1] = *MEMORY[0x277D85DE8];
  if (!a5 || (v12 = a5[7]) == 0)
  {
    v19 = a5[1];
    if (v19)
    {
      v20 = (v19 + 4040);
    }

    else
    {
      v20 = (*(*(*a5 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s btree_node is null\n", "btree_node_check", 152, v20);
    goto LABEL_14;
  }

  v15 = a6;
  v16 = a1;
  v350 = a2;
  v351 = a4;
  v353 = a3;
  v17 = a5[1];
  if (!v17)
  {
    v17 = *(*a5 + 392);
  }

  v352 = v17;
  if (!a9 || (a1 = btree_node_debug_stats(a1, a5, a6, a9), v18 = a1, !a1))
  {
    if (!v16 && (a5[4] & 1) == 0)
    {
      goto LABEL_9;
    }

    v348 = a9;
    v347 = a11;
    v349 = v15;
    if ((a11 & 1) == 0)
    {
      v18 = 0;
      if (v353 && (*(v12 + 32) & 1) != 0)
      {
        v27 = a5[1];
        if (v27)
        {
          v28 = (v27 + 4040);
        }

        else
        {
          v28 = (*(*(*a5 + 392) + 384) + 212);
        }

        v29 = obj_oid(a5);
        v30 = *(a5[7] + 34);
        v31 = obj_oid(v353);
        log_err("%s:%d: %s oid 0x%llx (level %d): root node has a parent 0x%llx (level %d)\n", "btree_node_check", 183, v28, v29, v30, v31, *(*(v353 + 7) + 34));
        v18 = 22;
        v15 = v349;
      }

      if ((*(v12 + 32) & 2) != 0 && *(v12 + 34))
      {
        v32 = a5[1];
        if (v32)
        {
          v33 = (v32 + 4040);
        }

        else
        {
          v33 = (*(*(*a5 + 392) + 384) + 212);
        }

        v35 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): leaf node has non-zero level\n", "btree_node_check", 186, v33, v35, *(v12 + 34));
        v18 = 22;
      }

      if (v16)
      {
        if (*(a5[7] + 34) > *(v16[7] + 34))
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          v36 = a5[1];
          if (v36)
          {
            v37 = (v36 + 4040);
          }

          else
          {
            v37 = (*(*(*a5 + 392) + 384) + 212);
          }

          v38 = obj_oid(a5);
          log_err("%s:%d: %s oid 0x%llx (level %d): node level greater than root level %d\n", "btree_node_check", 189, v37, v38, *(v12 + 34), *(v16[7] + 34));
        }

        v39 = v15 - 1;
        if (*(v16[7] + 34) - (v15 - 1) != *(a5[7] + 34))
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          v40 = a5[1];
          if (v40)
          {
            v41 = (v40 + 4040);
          }

          else
          {
            v41 = (*(*(*a5 + 392) + 384) + 212);
          }

          v42 = obj_oid(a5);
          log_err("%s:%d: %s oid 0x%llx (level %d): node level should be %d\n", "btree_node_check", 192, v41, v42, *(v12 + 34), *(v16[7] + 34) - v39);
        }
      }

      if (*(v12 + 32))
      {
        v43 = -96;
      }

      else
      {
        v43 = -56;
      }

      v44 = v43 + ((a5[50] >> 27) & 0xF000);
      if (*(v12 + 40))
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v45 = a5[1];
        if (v45)
        {
          v46 = (v45 + 4040);
        }

        else
        {
          v46 = (*(*(*a5 + 392) + 384) + 212);
        }

        v47 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid table space offset\n", "btree_node_check", 203, v46, v47, *(a5[7] + 34));
      }

      if (*(v12 + 42) > v44)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v48 = a5[1];
        if (v48)
        {
          v49 = (v48 + 4040);
        }

        else
        {
          v49 = (*(*(*a5 + 392) + 384) + 212);
        }

        v50 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): table space length larger than available data space\n", "btree_node_check", 206, v49, v50, *(a5[7] + 34));
      }

      if ((*(v12 + 32) & 4) == 0)
      {
        v51 = *(v12 + 42);
        if (v51 < 8 * btree_node_toc_entry_size(a5))
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          if (!a5[1])
          {
            v55 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v309 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): table space length smaller than minimum\n");
          goto LABEL_15;
        }
      }

      if (v18)
      {
        goto LABEL_15;
      }

      v52 = (v44 - *(v12 + 42));
      if (*(v12 + 44) <= (v44 - *(v12 + 42)))
      {
        v18 = 0;
      }

      else
      {
        v53 = a5[1];
        if (v53)
        {
          v54 = (v53 + 4040);
        }

        else
        {
          v54 = (*(*(*a5 + 392) + 384) + 212);
        }

        v57 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): free space offset too large\n", "btree_node_check", 218, v54, v57, *(a5[7] + 34));
        v18 = 22;
      }

      if (*(v12 + 46) + *(v12 + 44) > v52)
      {
        v58 = a5[1];
        if (v58)
        {
          v59 = (v58 + 4040);
        }

        else
        {
          v59 = (*(*(*a5 + 392) + 384) + 212);
        }

        v60 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): free space extends beyond end of node\n", "btree_node_check", 221, v59, v60, *(a5[7] + 34));
        v18 = 22;
      }

      v344 = *(v12 + 44);
      v61 = *(v12 + 46);
      if (*(v12 + 36) > v52)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v62 = a5[1];
        if (v62)
        {
          v63 = (v62 + 4040);
        }

        else
        {
          v63 = (*(*(*a5 + 392) + 384) + 212);
        }

        v64 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than possible\n", "btree_node_check", 228, v63, v64, *(a5[7] + 34));
      }

      v65 = *(v12 + 36);
      v343 = v52;
      if (v65 > v344 && (*(v12 + 32) & 0x80000000) == 0)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v66 = a5[1];
        if (v66)
        {
          v67 = (v66 + 4040);
        }

        else
        {
          v67 = (*(*(*a5 + 392) + 384) + 212);
        }

        v69 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than gross key space\n", "btree_node_check", 231, v67, v69, *(a5[7] + 34));
      }

      v70 = *(v12 + 36);
      v71 = *(v12 + 42);
      if (v70 > v71 / btree_node_toc_entry_size(a5))
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        if (!a5[1])
        {
          v74 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(a5);
        v310 = *(a5[7] + 34);
        log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than TOC space\n");
        goto LABEL_15;
      }

      if (v18)
      {
        goto LABEL_15;
      }

      if (a5[47] == v12 + 56)
      {
        v18 = 0;
      }

      else
      {
        v72 = a5[1];
        if (v72)
        {
          v73 = (v72 + 4040);
        }

        else
        {
          v73 = (*(*(*a5 + 392) + 384) + 212);
        }

        v76 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid TOC[] pointer\n", "btree_node_check", 242, v73, v76, *(a5[7] + 34));
        v18 = 22;
      }

      if (a5[48] != v12 + 56 + *(v12 + 42))
      {
        v77 = a5[1];
        if (v77)
        {
          v78 = (v77 + 4040);
        }

        else
        {
          v78 = (*(*(*a5 + 392) + 384) + 212);
        }

        v79 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid keys[] pointer\n", "btree_node_check", 245, v78, v79, *(a5[7] + 34));
        v18 = 22;
      }

      if ((*(v12 + 32) & 1) != 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000) - 40)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v80 = a5[1];
        if (v80)
        {
          v81 = (v80 + 4040);
        }

        else
        {
          v81 = (*(*(*a5 + 392) + 384) + 212);
        }

        v82 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n", "btree_node_check", 248, v81, v82, *(a5[7] + 34));
      }

      if ((*(v12 + 32) & 1) == 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000))
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        if (!a5[1])
        {
          v87 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(a5);
        v312 = *(a5[7] + 34);
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n");
        goto LABEL_15;
      }

      if (v18)
      {
        goto LABEL_15;
      }

      v83 = v344 + v61;
      if (*(v12 + 50) <= v344)
      {
        v18 = 0;
        v86 = v343;
      }

      else
      {
        v84 = a5[1];
        if (v84)
        {
          v85 = (v84 + 4040);
        }

        else
        {
          v85 = (*(*(*a5 + 392) + 384) + 212);
        }

        v86 = v343;
        v143 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key free list space larger than key space available\n", "btree_node_check", 259, v85, v143, *(a5[7] + 34));
        v18 = 22;
      }

      v144 = v86 - v83;
      v145 = *(v12 + 48);
      if (v145 != 0xFFFF && v344 - 4 < v145)
      {
        v146 = a5[1];
        if (v146)
        {
          v147 = (v146 + 4040);
        }

        else
        {
          v147 = (*(*(*a5 + 392) + 384) + 212);
        }

        v148 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key free list head beyond key space available\n", "btree_node_check", 263, v147, v148, *(a5[7] + 34));
        v18 = 22;
      }

      if (*(v12 + 54) > v144)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v149 = a5[1];
        if (v149)
        {
          v150 = (v149 + 4040);
        }

        else
        {
          v150 = (*(*(*a5 + 392) + 384) + 212);
        }

        v151 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): val free list space larger than val space available\n", "btree_node_check", 266, v150, v151, *(a5[7] + 34));
      }

      v152 = *(v12 + 52);
      if (v152 != 0xFFFF)
      {
        if (v152 > v144)
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          v153 = a5[1];
          if (v153)
          {
            v154 = (v153 + 4040);
          }

          else
          {
            v154 = (*(*(*a5 + 392) + 384) + 212);
          }

          v159 = obj_oid(a5);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list head beyond val space available\n", "btree_node_check", 270, v154, v159, *(a5[7] + 34));
          v152 = *(v12 + 52);
        }

        if (v152 <= 3)
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          if (!a5[1])
          {
            v177 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v318 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list head beyond end of node\n");
          goto LABEL_15;
        }
      }

      if (v18)
      {
        goto LABEL_15;
      }

      v342 = v344 - 4;
      v160 = _apfs_calloc_typed((v343 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
      v161 = _apfs_calloc_typed((v343 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
      v340 = (v343 + 63) >> 6;
      v341 = v161;
      if (!v160 || !v161)
      {
        v175 = a5[1];
        if (v175)
        {
          v176 = (v175 + 4040);
        }

        else
        {
          v176 = (*(*(*a5 + 392) + 384) + 212);
        }

        v178 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): couldn't allocate bitmap to check btree node space usage\n", "btree_node_check", 286, v176, v178, *(a5[7] + 34));
        v18 = 12;
        goto LABEL_401;
      }

      v339 = v144;
      v345 = a7;
      v346 = a8;
      bitmap_set_range(v160, *(v12 + 44), *(v12 + 46), v162);
      v163 = 0;
      LOWORD(v164) = *(v12 + 48);
      v165 = v160;
      while (1)
      {
        v166 = v164;
        if (v164 == 0xFFFF)
        {
          break;
        }

        if (v164 >= v344 || v342 < v164)
        {
          if (!a5[1])
          {
            v195 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v319 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry starts beyond key space available\n");
          goto LABEL_399;
        }

        v167 = (a5[48] + v164);
        v168 = v167[1];
        if (v168 <= 3)
        {
          if (!a5[1])
          {
            v196 = *(*(*a5 + 392) + 384) + 212;
          }

LABEL_392:
          obj_oid(a5);
          v320 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry len value too small\n");
          goto LABEL_399;
        }

        v169 = v168 + v164;
        if (v169 > v344)
        {
          if (!a5[1])
          {
            v197 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v321 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry extends beyond key space available\n");
          goto LABEL_399;
        }

        if (!bitmap_range_is_clear(v160, v166, v168, v169))
        {
          if (!a5[1])
          {
            v198 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v322 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry overlaps with other free space\n");
          goto LABEL_399;
        }

        bitmap_set_range(v160, v166, v167[1], v170);
        v163 += v167[1];
        v171 = *(v12 + 50);
        if (v163 <= v171)
        {
          v18 = 0;
        }

        else
        {
          v172 = a5[1];
          if (v172)
          {
            v173 = (v172 + 4040);
          }

          else
          {
            v173 = (*(*(*a5 + 392) + 384) + 212);
          }

          v174 = obj_oid(a5);
          log_err("%s:%d: %s oid 0x%llx (level %d): key free list entries total space exceeds free list space\n", "btree_node_check", 326, v173, v174, *(a5[7] + 34));
          v18 = 22;
        }

        v164 = *v167;
        if (v166 == v164)
        {
          if (!a5[1])
          {
            v199 = *(*(*a5 + 392) + 384) + 212;
          }

LABEL_398:
          obj_oid(a5);
          v323 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry points to itself\n");
          goto LABEL_399;
        }

        v160 = v165;
        if (v163 > v171)
        {
          goto LABEL_401;
        }
      }

      v180 = 0;
      LOWORD(v181) = *(v12 + 52);
      while (1)
      {
        v182 = v181;
        if (v181 == 0xFFFF)
        {
          break;
        }

        if (v181 <= 3u)
        {
          v183 = a5[1];
          if (v183)
          {
            v184 = (v183 + 4040);
          }

          else
          {
            v184 = (*(*(*a5 + 392) + 384) + 212);
          }

          v185 = obj_oid(a5);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry beyond end of node\n", "btree_node_check", 342, v184, v185, *(a5[7] + 34));
          v18 = 22;
        }

        else
        {
          v18 = 0;
        }

        if (v182 > v339)
        {
          if (!a5[1])
          {
            v202 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v324 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry starts beyond val space available\n");
          goto LABEL_399;
        }

        v160 = v165;
        if (v182 < 4)
        {
          goto LABEL_401;
        }

        v186 = (a5[49] - v182);
        v187 = v186[1];
        if (v187 <= 3)
        {
          if (!a5[1])
          {
            v203 = *(*(*a5 + 392) + 384) + 212;
          }

          goto LABEL_392;
        }

        if (v182 < v187)
        {
          if (!a5[1])
          {
            v204 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v325 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry extends beyond val space available\n");
          goto LABEL_399;
        }

        v188 = v343 - v182;
        v189 = v188;
        if (!bitmap_range_is_clear(v165, v188, v187, v188))
        {
          if (!a5[1])
          {
            v205 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v326 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry overlaps with other free space\n");
          goto LABEL_399;
        }

        bitmap_set_range(v165, v189, v186[1], v190);
        v180 += v186[1];
        v191 = *(v12 + 54);
        if (v180 <= v191)
        {
          v18 = 0;
        }

        else
        {
          v192 = a5[1];
          if (v192)
          {
            v193 = (v192 + 4040);
          }

          else
          {
            v193 = (*(*(*a5 + 392) + 384) + 212);
          }

          v194 = obj_oid(a5);
          log_err("%s:%d: %s oid 0x%llx (level %d): val free list entries total space exceeds free list space\n", "btree_node_check", 372, v193, v194, *(a5[7] + 34));
          v18 = 22;
        }

        v181 = *v186;
        if (v182 == v181)
        {
          if (!a5[1])
          {
            v206 = *(*(*a5 + 392) + 384) + 212;
          }

          goto LABEL_398;
        }

        v160 = v165;
        if (v180 > v191)
        {
          goto LABEL_401;
        }
      }

      if ((*(v12 + 32) & 4) != 0 && (*(a5 + 401) & 0x7FFE) == 0)
      {
        v207 = a5[1];
        if (v207)
        {
          v208 = (v207 + 4040);
        }

        else
        {
          v208 = (*(*(*a5 + 392) + 384) + 212);
        }

        v209 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says key size is variable\n", "btree_node_check", 387, v208, v209, *(a5[7] + 34));
        v18 = 22;
      }

      else
      {
        v18 = 0;
      }

      if ((*(a5[7] + 32) & 2) == 0 && (*(a5 + 401) & 0x7FFE) != 0 && (*(v12 + 32) & 4) == 0)
      {
        v200 = a5[1];
        if (v200)
        {
          v201 = (v200 + 4040);
        }

        else
        {
          v201 = (*(*(*a5 + 392) + 384) + 212);
        }

        v210 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): tree says key size is fixed, but node says kv size is variable\n", "btree_node_check", 390, v201, v210, *(a5[7] + 34));
        v18 = 22;
      }

      if ((*(v12 + 32) & 4) != 0 && (*(a5[7] + 32) & 2) != 0 && (*(a5 + 401) & 0x7FFF8000) == 0)
      {
        if (v18)
        {
          v18 = v18;
        }

        else
        {
          v18 = 22;
        }

        v211 = a5[1];
        if (v211)
        {
          v212 = (v211 + 4040);
        }

        else
        {
          v212 = (*(*(*a5 + 392) + 384) + 212);
        }

        v213 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says val size is variable\n", "btree_node_check", 393, v212, v213, *(a5[7] + 34));
      }

      v214 = a5[7];
      v215 = *(v214 + 32);
      if ((v215 & 2) != 0)
      {
        v259 = a5[50];
        if ((v259 & 0x7FFF800000) != 0 && (v259 & 4) == 0 && (v259 & 0x7FFE00) != 0 && (*(v12 + 32) & 4) == 0)
        {
          if (v18)
          {
            v18 = v18;
          }

          else
          {
            v18 = 22;
          }

          if (!a5[1])
          {
            v298 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v327 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): tree says kv sizes are fixed, but leaf says kv size is variable\n");
          goto LABEL_400;
        }
      }

      v160 = v165;
      if (v18)
      {
LABEL_401:
        if (v160)
        {
          _apfs_free(v160, (8 * v340));
        }

        if (v341)
        {
          _apfs_free(v341, (8 * v340));
        }

        goto LABEL_15;
      }

      v216 = a5[47];
      if ((*(v12 + 32) & 4) != 0)
      {
        v260 = a5[50];
        if ((v215 & 2) != 0)
        {
          v261 = v260 >> 23;
        }

        else
        {
          v261 = 8;
        }

        if (*(v214 + 36))
        {
          v262 = 0;
          v338 = (v260 >> 9) & 0x3FFF;
          v335 = (v338 + 7) & 0x7FF8;
          v337 = v261;
          v336 = (v261 + 7) & 0x1FFF8;
          v263 = (v216 + 2);
          do
          {
            v264 = *(v263 - 1);
            v342 = *v263;
            if (v264 == 0xFFFF)
            {
              if ((*(v12 + 32) & 0x80000000) == 0)
              {
                if (!a5[1])
                {
                  v301 = *(*(*a5 + 392) + 384) + 212;
                }

                obj_oid(a5);
                v330 = *(a5[7] + 34);
LABEL_665:
                log_err("%s:%d: %s oid 0x%llx (level %d): invalid key offset\n");
LABEL_399:
                v18 = 22;
LABEL_400:
                v160 = v165;
                goto LABEL_401;
              }

              v18 = 0;
            }

            else
            {
              v265 = *(v214 + 32);
              if ((v265 & 2) != 0 && (v16 && *(v16[49] + 16) < v338 || (v265 & 1) != 0 && *(a5[49] + 16) < v338))
              {
                v266 = a5[1];
                if (v266)
                {
                  v267 = (v266 + 4040);
                }

                else
                {
                  v267 = (*(*(*a5 + 392) + 384) + 212);
                }

                v268 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 452, v267, v268, *(a5[7] + 34));
                v18 = 22;
              }

              else
              {
                v18 = 0;
              }

              if (v264 >= v344)
              {
                v269 = a5[1];
                if (v269)
                {
                  v270 = (v269 + 4040);
                }

                else
                {
                  v270 = (*(*(*a5 + 392) + 384) + 212);
                }

                v271 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 452, v270, v271, *(a5[7] + 34));
                v18 = 22;
              }

              if (v338 + v264 <= v344)
              {
                if (!v18)
                {
                  if (bitmap_range_is_clear(v165, v264, v338, &v361))
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v275 = a5[1];
                    if (v275)
                    {
                      v276 = (v275 + 4040);
                    }

                    else
                    {
                      v276 = (*(*(*a5 + 392) + 384) + 212);
                    }

                    v277 = obj_oid(a5);
                    log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 452, v276, v277, *(a5[7] + 34));
                    v18 = 22;
                  }

                  if (!bitmap_range_is_clear(v341, v264, v338, &v361))
                  {
                    v278 = a5[1];
                    if (v278)
                    {
                      v279 = (v278 + 4040);
                    }

                    else
                    {
                      v279 = (*(*(*a5 + 392) + 384) + 212);
                    }

                    v280 = obj_oid(a5);
                    log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 452, v279, v280, *(a5[7] + 34));
                    v18 = 22;
                  }

                  if ((a5[50] & 0x40) != 0)
                  {
                    v281 = v338;
                  }

                  else
                  {
                    v281 = v335;
                  }

                  bitmap_set_range(v341, v264, v281, v335);
                }
              }

              else
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                v272 = a5[1];
                if (v272)
                {
                  v273 = (v272 + 4040);
                }

                else
                {
                  v273 = (*(*(*a5 + 392) + 384) + 212);
                }

                v274 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 452, v273, v274, *(a5[7] + 34));
              }
            }

            if (v342 <= 0xFFFD)
            {
              v282 = *(a5[7] + 32);
              if ((v282 & 2) != 0 && (v16 && *(v16[49] + 20) < v337 || (v282 & 1) != 0 && *(a5[49] + 20) < v337))
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                v283 = a5[1];
                if (v283)
                {
                  v284 = (v283 + 4040);
                }

                else
                {
                  v284 = (*(*(*a5 + 392) + 384) + 212);
                }

                v285 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 455, v284, v285, *(a5[7] + 34));
              }

              if (v342 > v339)
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                v286 = a5[1];
                if (v286)
                {
                  v287 = (v286 + 4040);
                }

                else
                {
                  v287 = (*(*(*a5 + 392) + 384) + 212);
                }

                v288 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 455, v287, v288, *(a5[7] + 34));
              }

              if (v342 < v261)
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                if (!a5[1])
                {
                  v299 = *(*(*a5 + 392) + 384) + 212;
                }

                obj_oid(a5);
                v328 = *(a5[7] + 34);
LABEL_660:
                log_err("%s:%d: %s oid 0x%llx (level %d): val location extends beyond val space\n");
                goto LABEL_400;
              }

              v160 = v165;
              if (v18)
              {
                goto LABEL_401;
              }

              v289 = v343 - v342;
              if (bitmap_range_is_clear(v165, v343 - v342, v261, v343))
              {
                v18 = 0;
              }

              else
              {
                v291 = a5[1];
                if (v291)
                {
                  v292 = (v291 + 4040);
                }

                else
                {
                  v292 = (*(*(*a5 + 392) + 384) + 212);
                }

                v293 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 455, v292, v293, *(a5[7] + 34));
                v18 = 22;
              }

              if (!bitmap_range_is_clear(v341, v289, v261, v290))
              {
                v294 = a5[1];
                if (v294)
                {
                  v295 = (v294 + 4040);
                }

                else
                {
                  v295 = (*(*(*a5 + 392) + 384) + 212);
                }

                v296 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 455, v295, v296, *(a5[7] + 34));
                v18 = 22;
              }

              if ((a5[50] & 0x40) != 0)
              {
                v297 = v337;
              }

              else
              {
                v297 = v336;
              }

              bitmap_set_range(v341, v289, v297, v337);
            }

            v160 = v165;
            if (v18)
            {
              goto LABEL_401;
            }

            v263 += 2;
            ++v262;
            v214 = a5[7];
          }

          while (v262 < *(v214 + 36));
        }
      }

      else if (*(v214 + 36))
      {
        v217 = 0;
        v218 = (v216 + 4);
        do
        {
          v219 = *(v218 - 2);
          v342 = *v218;
          v220 = v218[1];
          if (v219 == 0xFFFF)
          {
            if ((*(v12 + 32) & 0x80000000) == 0)
            {
              if (!a5[1])
              {
                v302 = *(*(*a5 + 392) + 384) + 212;
              }

              obj_oid(a5);
              v331 = *(a5[7] + 34);
              goto LABEL_665;
            }

            v18 = 0;
          }

          else
          {
            v221 = *(v218 - 1);
            v222 = *(v214 + 32);
            if ((v222 & 2) != 0 && (v16 && *(v16[49] + 16) < v221 || (v222 & 1) != 0 && *(a5[49] + 16) < v221))
            {
              v223 = a5[1];
              if (v223)
              {
                v224 = (v223 + 4040);
              }

              else
              {
                v224 = (*(*(*a5 + 392) + 384) + 212);
              }

              v225 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 475, v224, v225, *(a5[7] + 34));
              v18 = 22;
            }

            else
            {
              v18 = 0;
            }

            if (v219 >= v344)
            {
              v226 = a5[1];
              if (v226)
              {
                v227 = (v226 + 4040);
              }

              else
              {
                v227 = (*(*(*a5 + 392) + 384) + 212);
              }

              v228 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 475, v227, v228, *(a5[7] + 34));
              v18 = 22;
            }

            v229 = (v221 + v219);
            if (v229 <= v344)
            {
              if (!v18)
              {
                if (bitmap_range_is_clear(v165, v219, v221, v229))
                {
                  v18 = 0;
                }

                else
                {
                  v234 = a5[1];
                  if (v234)
                  {
                    v235 = (v234 + 4040);
                  }

                  else
                  {
                    v235 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v236 = obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 475, v235, v236, *(a5[7] + 34));
                  v18 = 22;
                }

                if (!bitmap_range_is_clear(v341, v219, v221, v232))
                {
                  v237 = a5[1];
                  if (v237)
                  {
                    v238 = (v237 + 4040);
                  }

                  else
                  {
                    v238 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v239 = obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 475, v238, v239, *(a5[7] + 34));
                  v18 = 22;
                }

                v240 = a5[50];
                if ((v240 & 0x40) != 0)
                {
                  v241 = v221;
                }

                else
                {
                  v241 = (v221 + 7) & 0x1FFF8;
                }

                bitmap_set_range(v341, v219, v241, v240);
              }
            }

            else
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v230 = a5[1];
              if (v230)
              {
                v231 = (v230 + 4040);
              }

              else
              {
                v231 = (*(*(*a5 + 392) + 384) + 212);
              }

              v233 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 475, v231, v233, *(a5[7] + 34));
            }
          }

          if (v342 > 0xFFFD)
          {
            if (v220 && v220 != 65534)
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              if (!a5[1])
              {
                v303 = *(*(*a5 + 392) + 384) + 212;
              }

              obj_oid(a5);
              v332 = *(a5[7] + 34);
              log_err("%s:%d: %s oid 0x%llx (level %d): invalid val offset has non-zero length\n");
              goto LABEL_400;
            }
          }

          else
          {
            v242 = *(a5[7] + 32);
            if ((v242 & 2) != 0 && (v16 && *(v16[49] + 20) < v220 || (v242 & 1) != 0 && *(a5[49] + 20) < v220))
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v243 = a5[1];
              if (v243)
              {
                v244 = (v243 + 4040);
              }

              else
              {
                v244 = (*(*(*a5 + 392) + 384) + 212);
              }

              v245 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 478, v244, v245, *(a5[7] + 34));
            }

            if (v342 > v339)
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v246 = a5[1];
              if (v246)
              {
                v247 = (v246 + 4040);
              }

              else
              {
                v247 = (*(*(*a5 + 392) + 384) + 212);
              }

              v248 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 478, v247, v248, *(a5[7] + 34));
            }

            if (v342 < v220)
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              if (!a5[1])
              {
                v300 = *(*(*a5 + 392) + 384) + 212;
              }

              obj_oid(a5);
              v329 = *(a5[7] + 34);
              goto LABEL_660;
            }

            v160 = v165;
            if (v18)
            {
              goto LABEL_401;
            }

            v249 = v343 - v342;
            if (bitmap_range_is_clear(v165, v343 - v342, v220, v343))
            {
              v18 = 0;
            }

            else
            {
              v251 = a5[1];
              if (v251)
              {
                v252 = (v251 + 4040);
              }

              else
              {
                v252 = (*(*(*a5 + 392) + 384) + 212);
              }

              v253 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 478, v252, v253, *(a5[7] + 34));
              v18 = 22;
            }

            if (!bitmap_range_is_clear(v341, v249, v220, v250))
            {
              v254 = a5[1];
              if (v254)
              {
                v255 = (v254 + 4040);
              }

              else
              {
                v255 = (*(*(*a5 + 392) + 384) + 212);
              }

              v256 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 478, v255, v256, *(a5[7] + 34));
              v18 = 22;
            }

            v257 = a5[50];
            if ((v257 & 0x40) != 0)
            {
              v258 = v220;
            }

            else
            {
              v258 = (v220 + 7) & 0x1FFF8;
            }

            bitmap_set_range(v341, v249, v258, v257);
          }

          v160 = v165;
          if (v18)
          {
            goto LABEL_401;
          }

          v218 += 4;
          ++v217;
          v214 = a5[7];
        }

        while (v217 < *(v214 + 36));
      }

      _apfs_free(v165, 8 * v340);
      _apfs_free(v341, 8 * v340);
      a8 = v346;
      a7 = v345;
      v15 = v349;
    }

    v359 = 0;
    v360[0] = 0;
    v357 = 0;
    v358 = 0;
    v23 = a5[7];
    v24 = v353;
    v25 = v351;
    if (v353 && *(v23 + 36))
    {
      v26 = btree_node_key_ptr(v353, v351, v360, &v358 + 1);
      if (v26)
      {
        v18 = v26;
        if (!a5[1])
        {
          v56 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(v353);
        v304 = *(*(v353 + 7) + 34);
LABEL_285:
        log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n");
        goto LABEL_15;
      }

      v34 = btree_node_key_ptr(a5, 0, &v359, &v358);
      if (v34)
      {
        v18 = v34;
        if (!a5[1])
        {
          v68 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(a5);
        v305 = *(a5[7] + 34);
        goto LABEL_285;
      }

      a1 = (a5[52])(v352, v360[0], HIWORD(v358), v359, v358, &v357);
      if (a1)
      {
        v18 = a1;
        if (!a5[1])
        {
          v75 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(a5);
        v311 = *(a5[7] + 34);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey compare error: %d\n");
        goto LABEL_15;
      }

      if (v357 >= 1)
      {
        if (!a5[1])
        {
          v88 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(a5);
        v313 = *(a5[7] + 34);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey not correct\n");
        goto LABEL_14;
      }

      if (v357)
      {
        if (!a5[1])
        {
          v155 = *(*(*a5 + 392) + 384) + 212;
        }

        obj_oid(a5);
        v317 = *(a5[7] + 34);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey not in sync\n");
        goto LABEL_14;
      }

      v23 = a5[7];
      v24 = v353;
      v25 = v351;
    }

    v89 = *(v23 + 36);
    if (v89 >= 2)
    {
      v345 = a7;
      v346 = a8;
      v18 = 0;
      for (i = 1; i < v89; ++i)
      {
        a1 = btree_node_key_off(a5, (i - 1));
        if (a1 != 0xFFFF)
        {
          a1 = btree_node_key_off(a5, i);
          if (a1 != 0xFFFF)
          {
            v91 = btree_node_key_ptr(a5, (i - 1), v360, &v358 + 1);
            if (v91)
            {
              v92 = v91;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = v91;
              }

              v93 = a5[1];
              if (v93)
              {
                v94 = (v93 + 4040);
              }

              else
              {
                v94 = (*(*(*a5 + 392) + 384) + 212);
              }

              v95 = obj_oid(a5);
              a1 = log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 536, v94, v95, *(a5[7] + 34), i - 1, v92);
            }

            else
            {
              a1 = btree_node_key_ptr(a5, i, &v359, &v358);
              if (a1)
              {
                v96 = a1;
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = a1;
                }

                v97 = a5[1];
                if (v97)
                {
                  v98 = (v97 + 4040);
                }

                else
                {
                  v98 = (*(*(*a5 + 392) + 384) + 212);
                }

                v99 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 543, v98, v99, *(a5[7] + 34), i, v96);
              }
            }

            if (!v18)
            {
              a1 = (a5[52])(v352, v360[0], HIWORD(v358), v359, v358, &v357);
              if (a1)
              {
                v18 = a1;
                v100 = a5[1];
                if (v100)
                {
                  v101 = (v100 + 4040);
                }

                else
                {
                  v101 = (*(*(*a5 + 392) + 384) + 212);
                }

                v102 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n", "btree_node_check", 547, v101, v102, *(a5[7] + 34), i, v18);
              }

              else if (v357 < 0)
              {
                v18 = 0;
              }

              else
              {
                v103 = a5[1];
                if (v103)
                {
                  v104 = (v103 + 4040);
                }

                else
                {
                  v104 = (*(*(*a5 + 392) + 384) + 212);
                }

                v105 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): keys out of order: %d\n", "btree_node_check", 550, v104, v105, *(a5[7] + 34), i);
                v18 = 22;
              }
            }
          }
        }

        v89 = *(a5[7] + 36);
      }

      a8 = v346;
      a7 = v345;
      v15 = v349;
      if (v18)
      {
        goto LABEL_15;
      }

      v24 = v353;
      v25 = v351;
    }

    if (v24)
    {
      a1 = btree_node_key_ptr(a5, (v89 - 1), v360, &v358 + 1);
      if (a1)
      {
        v106 = a1;
        v107 = a5[1];
        if (v107)
        {
          v108 = (v107 + 4040);
        }

        else
        {
          v108 = (*(*(*a5 + 392) + 384) + 212);
        }

        v109 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 559, v108, v109, *(a5[7] + 34), *(a5[7] + 36) - 1, v106);
LABEL_14:
        v18 = 22;
        goto LABEL_15;
      }

      if (*(*(v24 + 56) + 36) - 1 <= v25)
      {
        v359 = a7;
        LOWORD(v358) = a8;
        v110 = a8;
        v111 = a7;
      }

      else
      {
        a1 = btree_node_key_ptr(v24, (v25 + 1), &v359, &v358);
        if (a1)
        {
          v18 = a1;
          if (!a5[1])
          {
            v138 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(v353);
          v306 = *(*(v353 + 7) + 34);
          goto LABEL_285;
        }

        v111 = v359;
        v110 = v358;
      }

      if (v111 && v110 && HIWORD(v358))
      {
        a1 = (a5[52])(v352, v360[0]);
        if (a1)
        {
          v18 = a1;
          if (!a5[1])
          {
            v140 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v141 = a5[7];
          v308 = (*(v141 + 36) - 1);
          v307 = *(v141 + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n");
          goto LABEL_15;
        }

        if ((v357 & 0x80000000) == 0)
        {
          if (!a5[1])
          {
            v142 = *(*(*a5 + 392) + 384) + 212;
          }

          obj_oid(a5);
          v316 = *(a5[7] + 34);
          log_err("%s:%d: %s oid 0x%llx (level %d): node's max key is not less than next sibling's entry in parent\n");
          goto LABEL_14;
        }
      }
    }

    if (!v16)
    {
LABEL_9:
      v18 = 0;
      goto LABEL_15;
    }

    v112 = a5[7];
    if ((*(v112 + 32) & 2) != 0 || *(v112 + 36))
    {
      v18 = 0;
    }

    else
    {
      v136 = a5[1];
      if (v136)
      {
        v137 = (v136 + 4040);
      }

      else
      {
        v137 = (*(*(*a5 + 392) + 384) + 212);
      }

      v139 = obj_oid(a5);
      a1 = log_err("%s:%d: %s oid 0x%llx (level %d): non-leaf node has no children?\n", "btree_node_check", 595, v137, v139, *(a5[7] + 34));
      v18 = 22;
    }

    if ((*(a5[7] + 32) & 2) == 0 && (a10 & 1) == 0)
    {
      v353 = v334;
      v113 = a5[50];
      v114 = v113 & 0x7F00000000000000;
      v115 = (HIBYTE(v113) & 0x7F) + 8;
      v116 = v114 <= 0x4000000000000000 ? v115 : 72;
      MEMORY[0x28223BE20](a1, v116);
      v118 = &v334[-v117];
      bzero(&v334[-v117], v119);
      if (*(a5[7] + 36))
      {
        v346 = a8;
        v120 = v15;
        v121 = 0;
        LODWORD(v352) = v120 + 1;
        do
        {
          if (btree_node_key_off(a5, v121) != 0xFFFF && btree_node_val_off(a5, v121) != 0xFFFF)
          {
            v122 = btree_node_child_val(a5, v121, v118);
            if (v122)
            {
              v123 = v122;
              v124 = a7;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              v125 = a5[1];
              if (v125)
              {
                v126 = (v125 + 4040);
              }

              else
              {
                v126 = (*(*(*a5 + 392) + 384) + 212);
              }

              v127 = obj_oid(a5);
              log_err("%s:%d: %s oid 0x%llx (level %d): can't get child %d oid: %d\n", "btree_node_check", 606, v126, v127, *(a5[7] + 34), v121, v123);
              a7 = v124;
            }

            else if (*v118)
            {
              v355 = a7;
              v356 = 0;
              v354 = v346;
              v128 = a5[7];
              if (v121 < *(v128 + 36) - 1)
              {
                v129 = btree_node_key_ptr(a5, (v121 + 1), &v355, &v354);
                if (v129)
                {
                  v156 = v129;
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  v157 = a5[1];
                  if (v157)
                  {
                    v158 = (v157 + 4040);
                  }

                  else
                  {
                    v158 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v179 = obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 625, v158, v179, *(a5[7] + 34), v121 + 1, v156);
                  break;
                }

                v128 = a5[7];
              }

              v130 = v350;
              if (btree_node_get(v16, v118, v350, 0x202u, *(v128 + 34) - 1, 0, &v356))
              {
                v131 = 1;
              }

              else
              {
                v131 = v356 == 0;
              }

              if (v131)
              {
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = 22;
                }

                if (!a5[1])
                {
                  v135 = *(*(*a5 + 392) + 384) + 212;
                }

                obj_oid(a5);
                v315 = *(a5[7] + 34);
                v333 = *v118;
                log_err("%s:%d: %s oid 0x%llx (level %d): can't get child: 0x%llx\n");
              }

              else
              {
                BYTE1(v333) = v347;
                LOBYTE(v333) = 0;
                v132 = btree_node_check(v16, v130, a5, v121);
                if (v18)
                {
                  v133 = 1;
                }

                else
                {
                  v133 = v132 == 0;
                }

                if (v133)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = v132;
                }

                obj_unlock(v356, 1);
                obj_release(v356);
              }
            }

            else
            {
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = 22;
              }

              if (!a5[1])
              {
                v134 = *(*(*a5 + 392) + 384) + 212;
              }

              obj_oid(a5);
              v314 = *(a5[7] + 34);
              v333 = *v118;
              log_err("%s:%d: %s oid 0x%llx (level %d): invalid child oid: 0x%llx\n");
            }
          }

          ++v121;
        }

        while (v121 < *(a5[7] + 36));
      }
    }
  }

LABEL_15:
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t btree_check_ext(FILE *a1, void *a2, uint64_t a3, int a4, int a5)
{
  if (obj_type(a2) == 2)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v10 = btree_node_check(a2, a3, 0, 0, a2, 1u, 0, 0, &v20, 0, 0);
    v11 = v10;
    if (*(a2[49] + 24) != v21)
    {
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 22;
      }

      v12 = a2[1];
      if (v12)
      {
        v13 = (v12 + 4040);
      }

      else
      {
        v13 = (*(*(*a2 + 392) + 384) + 212);
      }

      v14 = obj_oid(a2);
      log_err("%s:%d: %s oid 0x%llx: btree key count (%llu) doesn't match # leaf entries (%u)\n", "btree_check_ext", 681, v13, v14, *(a2[49] + 24), v21);
    }

    if (*(a2[49] + 32) == DWORD1(v20) + v20)
    {
      if (a5 && a4 && !v11)
      {
        v15 = *MEMORY[0x277D85E08];
        if (a1)
        {
          v16 = a1;
        }

        else
        {
          v16 = *MEMORY[0x277D85E08];
        }

        btree_debug_stats_print(v16, a2, &v20, a5);
      }
    }

    else
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 22;
      }

      if (!a2[1])
      {
        v17 = *(*(*a2 + 392) + 384) + 212;
      }

      obj_oid(a2);
      v19 = *(a2[49] + 32);
      log_err("%s:%d: %s oid 0x%llx: btree node count (%llu) doesn't match # nodes traversed (%u)\n");
    }
  }

  else
  {
    v11 = 22;
    if (a2[1])
    {
      log_err("%s:%d: %s btree check called with non-root btree node: %d\n");
    }

    else
    {
      log_err("%s:%d: %s btree check called with non-root btree node: %d\n", "btree_check_ext", 672, (*(*(*a2 + 392) + 384) + 212), 22);
    }
  }

  return v11;
}

uint64_t btree_debug_stats_print(FILE *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v76 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a4 = 5;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = *MEMORY[0x277D85E08];
  }

  if (a4 >= 2)
  {
    v8 = *(a2 + 392);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v10 + 8;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v12 = 16;
      v13 = 8;
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 8;
    }

    v15 = v14 + v13;
    v16 = *a3;
    if (*a3 <= 1u)
    {
      v16 = 1;
    }

    fprintf(v7, "nodesize: %d  dataspace: %d  key size: %d  val size: %d  max keys: node %d leaf %d  avg keys: node %d leaf %d\n", v9, v9 - 56, v10, v11, (v9 - 56) / v12, (v9 - 56) / v15, a3[3] / v16, a3[4] / a3[1]);
  }

  v18 = *(a3 + 11);
  v19 = v18;
  if (!v18)
  {
    v19 = 1.0;
  }

  v20 = *(a3 + 12) * 100.0 / v19;
  v21 = *(a3 + 16);
  v22 = v21;
  if (!v21)
  {
    v22 = 1.0;
  }

  v17 = a3[1];
  result = fprintf(v7, "levels: %d  keys: %lld  nodes: total %d  internal: %d (%.2f%%)  leaves: %d (%.2f%%)  usage: %.2f%% (%.2f%% %.2f%%)\n", a3[2], *(*(a2 + 392) + 24), v17 + *a3, *a3, *a3 * 100.0 / (v17 + *a3), v17, v17 * 100.0 / (v17 + *a3), *(a3 + 7) * 100.0 / *(a3 + 6), v20, *(a3 + 17) * 100.0 / v22);
  if (a4 > 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = a3 + 54;
    do
    {
      if (v26[v24])
      {
        if (v24)
        {
          result = fprintf(v7, "level %d: %d nodes %.2f average descendents\n");
        }

        else
        {
          result = fprintf(v7, "level %d: %d nodes\n");
        }

        v25 += v26[v24];
      }

      ++v24;
    }

    while (v24 != 16);
  }

  if (a4 >= 2)
  {
    LODWORD(v27) = a3[4];
    v27 = v27 <= 1 ? 1 : v27;
    result = fprintf(v7, "key/val sizes:  tree max k:%d v:%d  max k:%d v:%d  avg k:%llu v:%llu\n", *(*(a2 + 392) + 16), *(*(a2 + 392) + 20), a3[52], a3[53], *(a3 + 18) / v27, *(a3 + 19) / v27);
    if (a4 >= 4)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      *__str = 0u;
      v71 = 0u;
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 16) / 5u);
      snprintf(&v71, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v72, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v73, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 16) / 5u);
      snprintf(&v74, 0x10uLL, "<%d", *(*(a2 + 392) + 16));
      snprintf(&v75, 0x10uLL, "=%d", *(*(a2 + 392) + 16));
      fprintf(v7, "    keys: %9s %9s %9s %9s %9s %9s\n", __str, &v71, &v72, &v73, &v74, &v75);
      fprintf(v7, "    keys: %9d %9d %9d %9d %9d %9d\n", a3[40], a3[41], a3[42], a3[43], a3[44], a3[45]);
      LODWORD(v33) = a3[40];
      v34 = a3[4];
      v35 = v34;
      v36 = v33 * 100.0;
      if (!v34)
      {
        v35 = 1.0;
      }

      LODWORD(v28) = a3[41];
      LODWORD(v29) = a3[42];
      LODWORD(v30) = a3[43];
      LODWORD(v31) = a3[44];
      LODWORD(v32) = a3[45];
      fprintf(v7, "    keys: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v36 / v35, v28 * 100.0 / v35, v29 * 100.0 / v35, v30 * 100.0 / v35, v31 * 100.0 / v35, v32 * 100.0 / v35);
      snprintf(__str, 0x10uLL, "<%d", *(*(a2 + 392) + 20) / 5u);
      snprintf(&v71, 0x10uLL, "<%d", 2 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v72, 0x10uLL, "<%d", 3 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v73, 0x10uLL, "<%d", 4 * *(*(a2 + 392) + 20) / 5u);
      snprintf(&v74, 0x10uLL, "<%d", *(*(a2 + 392) + 20));
      snprintf(&v75, 0x10uLL, "=%d", *(*(a2 + 392) + 20));
      fprintf(v7, "  values: %9s %9s %9s %9s %9s %9s\n", __str, &v71, &v72, &v73, &v74, &v75);
      fprintf(v7, "  values: %9d %9d %9d %9d %9d %9d\n", a3[46], a3[47], a3[48], a3[49], a3[50], a3[51]);
      LODWORD(v42) = a3[46];
      v43 = v42 * 100.0;
      v44 = a3[4];
      v45 = v44;
      if (!v44)
      {
        v45 = 1.0;
      }

      LODWORD(v37) = a3[47];
      LODWORD(v38) = a3[48];
      LODWORD(v39) = a3[49];
      LODWORD(v40) = a3[50];
      LODWORD(v41) = a3[51];
      fprintf(v7, "  values: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v43 / v45, v37 * 100.0 / v45, v38 * 100.0 / v45, v39 * 100.0 / v45, v40 * 100.0 / v45, v41 * 100.0 / v45);
      fprintf(v7, "capacity: all    %llu / %llu => %.2f %% used\n", *(a3 + 7), *(a3 + 6), *(a3 + 7) * 100.0 / *(a3 + 6));
      if (a4 == 4)
      {
        v68 = *(a3 + 12);
        v69 = *(a3 + 11);
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n");
      }

      else
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
        LODWORD(v46) = a3[5];
        LODWORD(v47) = a3[6];
        v48 = a3[1] + *a3;
        LODWORD(v49) = a3[7];
        LODWORD(v50) = a3[8];
        LODWORD(v51) = a3[9];
        LODWORD(v52) = a3[10];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v46 * 100.0 / v48, v47 * 100.0 / v48, v49 * 100.0 / v48, v50 * 100.0 / v48, v51 * 100.0 / v48, v52 * 100.0 / v48);
        fprintf(v7, "capacity: nodes  %llu / %llu => %.2f %% used\n", *(a3 + 12), *(a3 + 11), *(a3 + 12) * 100.0 / *(a3 + 11));
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[16], a3[17], a3[18], a3[19], a3[20], a3[21]);
        v53 = a3[16];
        *a3;
        v54 = a3[17];
        v55 = a3[18];
        v56 = a3[19];
        v57 = a3[20];
        v58 = a3[21];
        fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n");
      }

      result = fprintf(v7, "capacity: leaves %llu / %llu => %.2f %% used\n", *(a3 + 17), *(a3 + 16), *(a3 + 17) * 100.0 / *(a3 + 16));
      if (a4 != 4)
      {
        fprintf(v7, "capacity: %9s %9s %9s %9s %9s %9s\n", "<20", "<40", "<60", "<80", "<100", "FULL");
        fprintf(v7, "capacity: %9d %9d %9d %9d %9d %9d\n", a3[26], a3[27], a3[28], a3[29], a3[30], a3[31]);
        LODWORD(v59) = a3[26];
        LODWORD(v60) = a3[27];
        LODWORD(v61) = a3[1];
        v62 = v61;
        LODWORD(v63) = a3[28];
        LODWORD(v64) = a3[29];
        LODWORD(v65) = a3[30];
        LODWORD(v66) = a3[31];
        result = fprintf(v7, "capacity: %9.2f %9.2f %9.2f %9.2f %9.2f %9.2f\n", v59 * 100.0 / v62, v60 * 100.0 / v62, v63 * 100.0 / v62, v64 * 100.0 / v62, v65 * 100.0 / v62, v66 * 100.0 / v62);
      }
    }
  }

  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t btree_check_recent_sanity(atomic_ullong *a1, unint64_t a2, uint64_t (*a3)(atomic_ullong, uint64_t, unint64_t, void, void, uint64_t, void), uint64_t a4)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  if (!v8)
  {
    v8 = *(*a1 + 392);
  }

  v9 = a1[50];
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
  v14 = (&v53 - v13);
  bzero(&v53 - v13, v15);
  v57 = 0;
  v58[0] = 0;
  v55 = 0;
  v56 = 0;
  obj_lock(a1, 1);
  v16 = btree_level_count(a1, &v56);
  if (v16)
  {
    v17 = v16;
    obj_unlock(a1, 1);
    goto LABEL_45;
  }

  v18 = _apfs_calloc_typed(v56, 0x10uLL, 0x1020040FFEA222EuLL);
  if (!v18)
  {
    obj_unlock(a1, 1);
    v17 = 12;
    goto LABEL_45;
  }

  v19 = v18;
  *v18 = a1;
  *(v18 + 4) = 0;
  obj_retain(a1);
  v20 = 0;
  v54 = v19;
  while (1)
  {
    while (1)
    {
      v21 = &v19[16 * v20];
      if (obj_xid(*v21) <= a2)
      {
        v23 = *v21;
LABEL_19:
        btree_node_release(v23, 1);
        goto LABEL_20;
      }

      v22 = *(v21 + 4);
      v23 = *v21;
      v24 = *(*v21 + 56);
      if (*(v24 + 36) <= v22)
      {
        goto LABEL_19;
      }

      if ((*(v24 + 32) & 2) == 0)
      {
        break;
      }

      if (a3)
      {
        v28 = 0;
        while (1)
        {
          v29 = btree_node_key_ptr(v23, v28, v58, &v55 + 1);
          if (v29)
          {
            break;
          }

          v29 = btree_node_val_ptr(*v21, v28, &v57, &v55);
          if (v29)
          {
            break;
          }

          v30 = a3(v8, a4, a2, v58[0], HIWORD(v55), v57, v55);
          if (v30)
          {
            v17 = v30;
            goto LABEL_36;
          }

          ++v28;
          v23 = *v21;
          if (v28 >= *(*(*v21 + 56) + 36))
          {
            goto LABEL_28;
          }
        }

        v17 = v29;
        if (!a1[1])
        {
          v32 = *(*(*a1 + 392) + 384) + 212;
        }

        obj_oid(*v21);
        v31 = *(*(*v21 + 56) + 34);
        log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d key/val: %d\n");
        goto LABEL_36;
      }

LABEL_28:
      btree_node_release(v23, 1);
      v19 = v54;
LABEL_20:
      *v21 = 0;
      if ((--v20 & 0x8000) != 0)
      {
LABEL_32:
        v17 = 0;
        goto LABEL_37;
      }
    }

    v25 = btree_node_child_val(v23, v22, v14);
    if (v25)
    {
      v17 = v25;
      if (!a1[1])
      {
        v45 = *(*(*a1 + 392) + 384) + 212;
      }

      obj_oid(*v21);
      v41 = *(*(*v21 + 56) + 34);
      v42 = *(v21 + 4);
      log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d child oid: %d\n");
      goto LABEL_36;
    }

    ++*(v21 + 4);
    if (v56 <= ++v20)
    {
      break;
    }

    v26 = &v19[16 * v20];
    *(v26 + 4) = 0;
    v27 = btree_node_get(a1, v14, 0, 2u, *(*(*(v26 - 2) + 56) + 34) - 1, 0, v26);
    if (v27)
    {
      v17 = v27;
      if (!a1[1])
      {
        v49 = *(*(*a1 + 392) + 384) + 212;
      }

      obj_oid(*(v26 - 2));
      v52 = *(v26 - 4);
      v51 = *(*(*(v26 - 2) + 56) + 34);
      log_err("%s:%d: %s node 0x%llx (level %d): error getting index %d child: %d\n");
LABEL_36:
      v19 = v54;
      goto LABEL_37;
    }

    if ((v20 & 0x8000) != 0)
    {
      goto LABEL_32;
    }
  }

  v43 = a1[1];
  if (v43)
  {
    v44 = v43 + 4040;
  }

  else
  {
    v44 = *(*(*a1 + 392) + 384) + 212;
  }

  v46 = v54;
  v47 = &v54[16 * v20];
  v48 = obj_oid(*(v47 - 2));
  v50 = v44;
  v19 = v46;
  log_err("%s:%d: %s node 0x%llx (level %d) index %d: more levels than expected\n", "btree_check_recent_sanity", 769, v50, v48, *(*(*(v47 - 2) + 56) + 34), *(v47 - 4));
  v17 = 22;
LABEL_37:
  v33 = v56;
  v34 = v56 - 1;
  if (((v56 - 1) & 0x8000) == 0)
  {
    v35 = v19;
    v36 = v34 + 1;
    v37 = &v35[16 * v34];
    do
    {
      if (*v37)
      {
        btree_node_release(*v37, 1);
      }

      v37 -= 2;
    }

    while (v36-- > 1);
    v33 = v56;
    v19 = v54;
  }

  _apfs_free(v19, 16 * v33);
LABEL_45:
  v39 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t nx_check(void *a1, char a2)
{
  v278 = 0;
  v279 = 0;
  v277 = 0;
  v275 = 0;
  v276 = 0;
  v273 = 0;
  v274 = 0;
  v271 = 0uLL;
  v272 = 0;
  v269 = 0;
  v270 = 0;
  v267 = 0;
  v268 = 0;
  v4 = a1[47];
  v5 = spaceman_get(a1, &v279);
  if (v5)
  {
    v6 = v5;
    log_err("%s:%d: %s unable to get spaceman: %d\n", "nx_check", 70, (a1[48] + 212), v5);
    return v6;
  }

  v7 = v279[47];
  v255 = obj_xid(v279);
  v8 = *(v7 + 32);
  v258 = v4;
  v9 = *(v4 + 36);
  if (v8 != v9)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman block size %d doesn't match nx superblock block size %d\n", "nx_check", 78, (a1[48] + 212), v8, v9);
    v8 = *(v7 + 32);
  }

  v245 = a2;
  v10 = *(v7 + 36);
  LODWORD(v11) = v8;
  if (v10 != 8 * v8)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman blocks per chunk is bad: %d\n", "nx_check", 82, (a1[48] + 212), v10);
    LODWORD(v11) = *(v7 + 32);
  }

  v12 = v11 + 0x1FFFFFFFD8;
  v13 = v12 >> 5;
  v14 = *(v7 + 40);
  if (v14 == (v12 >> 5))
  {
    v11 = v11;
  }

  else
  {
    ++v277;
    log_warn("%s:%d: %s spaceman chunks per cib is bad: %d\n", "nx_check", 86, (a1[48] + 212), v14);
    v11 = *(v7 + 32);
  }

  v261 = v11 + 0x7FFFFFFD8;
  v15 = (v11 + 0x7FFFFFFD8) >> 3;
  v16 = *(v7 + 44);
  if (v16 != v15)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman cibs per cab is bad: %d\n", "nx_check", 90, (a1[48] + 212), v16);
  }

  v17 = (8 * v8);
  v18 = *(v7 + 48);
  v249 = (v7 + 48);
  v19 = *(v7 + 96) + v18;
  v20 = *(v258 + 40);
  if (v19 != v20)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman block count %lld doesn't match nx superblock block count %lld\n", "nx_check", 94, (a1[48] + 212), v19, v20);
    v18 = *v249;
  }

  v21 = *(v7 + 56);
  if (v18 % v17)
  {
    v22 = v18 / v17 + 1;
  }

  else
  {
    v22 = v18 / v17;
  }

  v23 = v255;
  if (v21 != v22)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman chunk count is bad: %lld\n", "nx_check", 97, (a1[48] + 212), v21);
    v21 = *(v7 + 56);
  }

  v24 = *(v7 + 64);
  v25 = (v12 >> 5);
  v253 = v25;
  if (v21 % v25)
  {
    v26 = v21 / v25 + 1;
  }

  else
  {
    v26 = v21 / v25;
  }

  if (v26 != v24)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman cib count is bad: %d\n", "nx_check", 100, (a1[48] + 212), v24);
    LODWORD(v24) = *(v7 + 64);
  }

  v27 = v24 / v15;
  if (v24 % v15)
  {
    ++v27;
  }

  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v7 + 68);
  if (v29 != v28)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman cab count is bad: %d\n", "nx_check", 109, (a1[48] + 212), v29);
  }

  v30 = *(v7 + 72);
  v31 = *(v7 + 48);
  if (v30 > v31)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman free count is too large: %lld > %lld\n", "nx_check", 112, (a1[48] + 212), v30, v31);
  }

  v33 = *(v7 + 96);
  v32 = *(v7 + 104);
  if (v33 % v17)
  {
    v34 = v33 / v17 + 1;
  }

  else
  {
    v34 = v33 / v17;
  }

  if (v32 != v34)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman tier2 chunk count is bad: %lld\n", "nx_check", 116, (a1[48] + 212), v32);
    v32 = *(v7 + 104);
  }

  v35 = *(v7 + 112);
  if (v32 % v253)
  {
    v36 = v32 / v253 + 1;
  }

  else
  {
    v36 = v32 / v253;
  }

  if (v36 != v35)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman tier2 cib count is bad: %d\n", "nx_check", 119, (a1[48] + 212), v35);
    LODWORD(v35) = *(v7 + 112);
  }

  v37 = v35 / v15;
  if (v35 % v15)
  {
    ++v37;
  }

  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  v39 = *(v7 + 116);
  if (v39 != v38)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman tier2 cab count is bad: %d\n", "nx_check", 128, (a1[48] + 212), v39);
  }

  v40 = *(v7 + 120);
  v41 = *(v7 + 96);
  if (v40 > v41)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman tier2 free count is too large: %lld > %lld\n", "nx_check", 131, (a1[48] + 212), v40, v41);
  }

  v42.i64[0] = *(v7 + 64);
  v42.i64[1] = *(v7 + 112);
  v43 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  v263 = vaddlvq_u32(v42) + *(v7 + 56) + *(v7 + 104);
  if (v43 != 3 * v263)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP block count is bad: %lld\n", "nx_check", 137, (a1[48] + 212), v43);
    v43 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v44 = *(v7 + 160);
  if ((*(v7 + 32) + 8 * ((v43 + 63) >> 6) - 1) / *(v7 + 32) != v44)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bm block count is bad: %d\n", "nx_check", 140, (a1[48] + 212), v44);
  }

  v45 = *(v7 + 164) & 0x7FFFFFFF;
  if (v45 >= 0xFFFF)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bitmap block count is too large: %d\n", "nx_check", 143, (a1[48] + 212), v45);
  }

  v46 = *(v7 + 148);
  if (v46 <= 3)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bitmap tx multiplier is too small: %d\n", "nx_check", 146, (a1[48] + 212), v46);
  }

  v47 = *(v7 + 160);
  v48 = *(v7 + 164) & 0x7FFFFFFF;
  if (v48 / v47 <= 3)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bitmap block count per tx is too small: %d\n", "nx_check", 149, (a1[48] + 212), v48 / v47);
    v47 = *(v7 + 160);
    v48 = *(v7 + 164) & 0x7FFFFFFF;
  }

  v49 = *(v7 + 148);
  if (v48 != v49 * v47)
  {
    v50 = 65534;
    if (v48 != 65534)
    {
      ++v277;
      log_warn("%s:%d: %s spaceman IP bitmap block count is bad: %d\n", "nx_check", 156, (a1[48] + 212), v48);
      v47 = *(v7 + 160);
      v49 = *(v7 + 148);
      v50 = *(v7 + 164) & 0x7FFFFFFF;
    }

    if (v50 / v47 < v49 >> 1)
    {
      ++v277;
      log_warn("%s:%d: %s spaceman IP bitmap block count is too low: %d\n", "nx_check", 159, (a1[48] + 212), v50);
    }
  }

  v51 = *(v7 + 48);
  v52 = *(v7 + 168);
  if (!v52 || v52 >= v51)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bm base address is bad: %lld\n", "nx_check", 166, (a1[48] + 212), v52);
  }

  v53 = *(v7 + 176);
  if (!v53 || v53 >= v51)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP base address is bad: %lld\n", "nx_check", 169, (a1[48] + 212), v53);
  }

  v254 = v15;
  v265 = a1;
  v252 = v7;
  if (*(v7 + 160))
  {
    v54 = 0;
    v247 = 0;
    do
    {
      v55 = v279;
      v56 = *(v279[109] + 8 * v54);
      if (v56 > v23)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman IP bitmap block %d xid %lld > spaceman xid %lld\n", "nx_check", 176, (a1[48] + 212), v54, v56, v23);
        v55 = v279;
      }

      v57 = *(v55[110] + 2 * v54);
      if ((*(v7 + 164) & 0x7FFFFFFFu) <= v57)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman IP bitmap block %d index %d out of range\n", "nx_check", 179, (a1[48] + 212), v54, v57);
        v57 = *(v279[110] + 2 * v54);
      }

      v58 = spaceman_ip_bm_block_address(a1, v7, v57, &v269);
      if (v58 || (v58 = obj_get(a1[49], 0x40000000, v269, &sm_bm_desc, 0, 0, 0, 0, &v274)) != 0)
      {
        v23 = v255;
        ++v277;
        log_warn("%s:%d: %s spaceman IP bitmap unable to get bitmap block %d @ %lld: %d\n", "nx_check", 187, (a1[48] + 212), v54, v269, v58);
      }

      else
      {
        v23 = v255;
        if (v54 == *(v7 + 160) - 1)
        {
          v59 = (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v7 + 32));
        }

        else
        {
          v59 = (8 * *(v7 + 32));
        }

        v247 += bitmap_count_bits(v274[7], 0, 0, v59);
        obj_release(v274);
      }

      ++v54;
    }

    while (v54 < *(v7 + 160));
  }

  else
  {
    v247 = 0;
  }

  v60 = v7;
  v61 = a1;
  v62 = *(v7 + 56) + 2 * v263 + *(v7 + 104) - 1;
  if (v247 > v62)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bitmap has too many free blocks %lld > %lld\n", "nx_check", 196, (a1[48] + 212), v247, v62);
  }

  v63 = *(v7 + 320);
  v64 = *(v7 + 164);
  LODWORD(v65) = v64 & 0x7FFFFFFF;
  if ((v64 & 0x7FFFFFFFu) <= v63)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 201, (a1[48] + 212), v63);
    v64 = *(v7 + 164);
    LODWORD(v65) = v64 & 0x7FFFFFFF;
  }

  v66 = *(v7 + 322);
  if (v65 > v66 || (++v277, log_warn("%s:%d: %s spaceman IP bitmap free head %d out of range\n", "nx_check", 204, (a1[48] + 212), v66), v64 = *(v7 + 164), LODWORD(v65) = v64 & 0x7FFFFFFF, (v64 & 0x7FFFFFFF) != 0))
  {
    v67 = 0;
    v68 = 0;
    v69 = v279[111];
    do
    {
      v70 = *(v69 + 2 * v67);
      v71 = v70 == 0xFFFF || v65 > v70;
      if (!v71)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman IP bitmap free next %d, value %d invalid\n", "nx_check", 209, (a1[48] + 212), v67, v70);
        v64 = *(v7 + 164);
        v69 = v279[111];
        v70 = *(v69 + 2 * v67);
      }

      v65 = v64 & 0x7FFFFFFF;
      if (v65 > v70)
      {
        ++v68;
      }

      ++v67;
    }

    while (v67 < v65);
  }

  else
  {
    v68 = 0;
  }

  v72 = *(v7 + 320);
  if (v72 != 0xFFFF)
  {
    ++v68;
  }

  v73 = (v65 - *(v7 + 160));
  if (v68 != v73)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP bitmap next array free count is wrong, %lld != %d\n", "nx_check", 224, (a1[48] + 212), v68, v73);
    v64 = *(v7 + 164);
    v72 = *(v7 + 320);
  }

  v74 = v64 & 0x7FFFFFFF;
  if (v74 && v74 > v72)
  {
    v75 = 1;
    do
    {
      --v68;
      if (v75 >= v74)
      {
        break;
      }

      v72 = *(v279[111] + 2 * v72);
      ++v75;
    }

    while (v74 > v72);
  }

  if (v68 < 0)
  {
    ++v277;
    v226 = a1[48] + 212;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too long, count %lld\n");
  }

  else if (v68)
  {
    ++v277;
    v225 = a1[48] + 212;
    log_warn("%s:%d: %s spaceman IP bitmap free list corrupted, too short, count %lld\n");
  }

  v76 = *(v7 + 200);
  v77 = *(v7 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v76 > v77)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP free queue count is too large: %lld > %lld\n", "nx_check", 244, (a1[48] + 212), v76, v77);
  }

  if (*(v7 + 208))
  {
    v78 = spaceman_fq_tree_get(a1, v279, 0, 0, 0, &v273);
    if (v78)
    {
      ++v277;
      log_warn("%s:%d: %s unable to get spaceman IP free queue tree: %d\n", "nx_check", 252, (a1[48] + 212), v78);
    }

    else if (v273)
    {
      v141 = btree_check(v273, 0, 0, 0);
      if (v141)
      {
        v142 = v141;
        ++v277;
        log_warn("%s:%d: %s spaceman IP free queue tree sanity check failed: %d\n", "nx_check", 256, (a1[48] + 212), v141);
        v268 = 0x1000000008;
      }

      else
      {
        v268 = 0x1000000008;
        v142 = bt_lookup_first(v273, 0, &v271, &v268 + 1, &v272, &v268);
      }

      v79 = 0;
      v168 = 0;
      for (i = 0; !v142; v142 = bt_lookup_variant(v273, 0, &v271, &v268 + 1, HIDWORD(v268), &v272, &v268, 4u, 0, 0))
      {
        if (v268)
        {
          v170 = v272;
        }

        else
        {
          v272 = 1;
          v170 = 1;
        }

        v171 = v271;
        if (v271 > v255)
        {
          ++v277;
          log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 269, (*(v265 + 384) + 212), v271, *(&v271 + 1), v255);
          v171 = v271;
        }

        if (v171 >= i)
        {
          v173 = *(&v271 + 1);
          if (v171 == i)
          {
            if (*(&v271 + 1) < v168)
            {
              ++v277;
              log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 277, (*(v265 + 384) + 212), *(&v271 + 1), v168);
              v173 = *(&v271 + 1);
            }

            v168 = v272 + v173;
          }

          else
          {
            v168 = 0;
            i = v171;
          }

          v172 = v265;
        }

        else
        {
          ++v277;
          v172 = v265;
          log_warn("%s:%d: %s spaceman IP free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 272, (*(v265 + 384) + 212), v171, i);
          v168 = 0;
          v173 = *(&v271 + 1);
          i = v271;
        }

        v174 = spaceman_ip_block_index(v172, v279, v173, &v267);
        v60 = v252;
        if (v174)
        {
          ++v277;
          v235 = *(v265 + 384) + 212;
          if (v174 == 2)
          {
            log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld addr is bad\n");
          }

          else
          {
            log_warn("%s:%d: %s error getting IP block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
          }
        }

        if (v272 >= 2)
        {
          v175 = spaceman_ip_block_index(v265, v279, v272 + *(&v271 + 1) - 1, &v267);
          if (v175)
          {
            ++v277;
            v236 = *(v265 + 384) + 212;
            if (v175 == 2)
            {
              log_warn("%s:%d: %s spaceman IP free queue tree entry %lld:%lld %lld end addr is bad\n");
            }

            else
            {
              log_warn("%s:%d: %s error getting end block index for spaceman IP free queue tree entry %lld:%lld %lld\n");
            }
          }
        }

        v79 += v170;
        LODWORD(v268) = 8;
      }

      if (v142 != 2)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman IP free queue tree iteration aborted with error %d\n", "nx_check", 304, (*(v265 + 384) + 212), v142);
      }

      obj_release(v273);
      v61 = v265;
      LODWORD(v15) = v254;
      goto LABEL_123;
    }
  }

  v79 = 0;
LABEL_123:
  v80 = v60[25];
  if (v79 != v80)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 310, (v61[48] + 212), v80, v79);
  }

  v81 = 0;
  v82 = 0;
  v259 = 0;
  v246 = 2 * v263;
  v250 = (v261 >> 3);
  v83 = 1;
  v248 = v79;
  do
  {
    v251 = v83;
    v84 = &v249[6 * v81];
    if (*(v84 + 4))
    {
      v85 = 0;
      v262 = 0;
      v264 = 0;
      v86 = 0xFFFFFFFFLL;
      v256 = v81;
      while (1)
      {
        if (!*(v84 + 5))
        {
          v89 = v279;
          v90 = (v279[v81 + 112] + 8 * v85);
          v260 = v86;
          goto LABEL_140;
        }

        if (v85 / v15 == v86 && v82 != 0)
        {
          v91 = v86;
          goto LABEL_139;
        }

        v260 = v85 / v15;
        v88 = *(v279[v81 + 112] + 8 * v260);
        if (v276)
        {
          obj_release(v276);
          v276 = 0;
        }

        if (!obj_get(v61[49], 0x40000000, v88, &sm_cab_desc, 0, 0, 0, 0, &v276))
        {
          break;
        }

        ++v277;
        v227 = v61[48] + 212;
        log_warn("%s:%d: %s unable to read cab %d @ %lld: %d\n");
LABEL_202:
        ++v85;
        v86 = v260;
        if (v85 >= *(v84 + 4))
        {
          goto LABEL_217;
        }
      }

      v119 = v276[7];
      v120 = *(v119 + 36);
      if (v120 > (obj_size_phys(v276) - 40) >> 3)
      {
        ++v277;
        log_warn("%s:%d: %s cab %d @ %lld cab_cib_count %d invalid\n", "nx_check", 337, (v61[48] + 212), v260, v88, *(v119 + 36));
        v85 = v85 + v250 - 1 + ~((v85 + v250 - 1) % v250);
        v82 = v119;
        goto LABEL_201;
      }

      if (obj_xid(v276) > v255)
      {
        ++v277;
        v121 = (v61[48] + 212);
        v122 = obj_xid(v276);
        log_warn("%s:%d: %s cab %d xid %lld > spaceman xid %lld\n", "nx_check", 344, v121, v260, v122, v255);
      }

      v82 = v119;
      v123 = *(v119 + 32);
      v91 = v85 / v15;
      if (v123 != v260)
      {
        ++v277;
        log_warn("%s:%d: %s cab %d index %d should be %d\n", "nx_check", 347, (v61[48] + 212), v260, v123, v260);
        v91 = v85 / v15;
      }

      v124 = *(v119 + 36);
      v81 = v256;
      if (v124 != v15 && (*(v84 + 5) - 1 != v91 || v124 != *(v84 + 4) % v15))
      {
        ++v277;
        v125 = v15;
        if (*(v84 + 5) - 1 == v91)
        {
          v125 = *(v84 + 4) % v15;
        }

        log_warn("%s:%d: %s cab %d cib count %d should be %d\n", "nx_check", 352, (v61[48] + 212), v91, v124, v125);
        v91 = v85 / v15;
      }

LABEL_139:
      v260 = v91;
      v90 = (v82 + 8 * (v85 - (v91 * v15)) + 40);
      v89 = v279;
LABEL_140:
      v92 = *v90;
      v93 = spaceman_ip_block_index(v61, v89, *v90, &v267);
      if (v93)
      {
        ++v277;
        v228 = v61[48] + 212;
        if (v93 == 2)
        {
          log_warn("%s:%d: %s spaceman chunk info block %lld addr %lld not within IP block range\n");
        }

        else
        {
          log_warn("%s:%d: %s error getting IP block index for spaceman chunk info block %lld addr %lld\n");
        }
      }

      if (obj_get(v61[49], 0x40000000, v92, &sm_cib_desc, 0, 0, 0, 0, &v275))
      {
        ++v277;
        v229 = v61[48] + 212;
        log_warn("%s:%d: %s unable to read cib %lld @ %lld: %d\n");
        goto LABEL_202;
      }

      v257 = v82;
      if (obj_xid(v275) > v255)
      {
        ++v277;
        v94 = (v61[48] + 212);
        v95 = obj_xid(v275);
        log_warn("%s:%d: %s cib %lld xid %lld > spaceman xid %lld\n", "nx_check", 374, v94, v85, v95, v255);
      }

      v96 = v275[7];
      v97 = *(v96 + 32);
      if (v85 != v97)
      {
        ++v277;
        log_warn("%s:%d: %s cib %lld index %d should be %lld\n", "nx_check", 378, (v61[48] + 212), v85, v97, v85);
      }

      v98 = *(v96 + 36);
      v99 = v13;
      if (v98 != v13)
      {
        if (v85 != *(v84 + 4) - 1 || (v99 = *(v96 + 36), v84[1] % v253 != v98))
        {
          ++v277;
          v100 = v253;
          if (v85 == *(v84 + 4) - 1)
          {
            v100 = v84[1] % v253;
          }

          log_warn("%s:%d: %s cib %lld chunk info count %d should be %lld\n", "nx_check", 383, (v61[48] + 212), v85, v98, v100);
          v99 = *(v96 + 36);
        }

        if (v99 > v13)
        {
          ++v277;
          log_warn("%s:%d: %s cib %lld cib_chunk_info_count %d invalid\n", "nx_check", 387, (v61[48] + 212), v92, v99);
          v99 = *(v96 + 36);
        }
      }

      if (v99 >= v13)
      {
        v101 = v13;
      }

      else
      {
        v101 = v99;
      }

      if (!v101)
      {
LABEL_200:
        obj_release(v275);
        v61 = v265;
        LODWORD(v15) = v254;
        v82 = v257;
LABEL_201:
        v81 = v256;
        goto LABEL_202;
      }

      v102 = 0;
      v103 = v17 * v253 * v85;
      v104 = (v96 + 64);
      while (1)
      {
        v105 = *(v104 - 3);
        if (v105 > obj_xid(v275))
        {
          ++v277;
          v106 = (*(v265 + 384) + 212);
          v107 = *(v104 - 3);
          v108 = obj_xid(v275);
          log_warn("%s:%d: %s cib %lld chunk info %d xid %lld > cib xid %lld\n", "nx_check", 392, v106, v85, v102, v107, v108);
        }

        v109 = *(v104 - 2);
        if (v103 != v109)
        {
          ++v277;
          log_warn("%s:%d: %s cib %lld chunk info %d addr %lld should be %lld\n", "nx_check", 396, (*(v265 + 384) + 212), v85, v102, v109, v103);
        }

        v110 = *(v104 - 1) & 0xFFFFF;
        if (v110 == v17 || v85 == *(v84 + 4) - 1 && v102 == *(v96 + 36) - 1 && *v84 % v17 == v110)
        {
          if ((*(v104 - 1) & 0xFFFFFu) > v110)
          {
            ++v277;
            log_warn("%s:%d: %s cib %lld chunk info %d free count %d > chunk block count %d\n", "nx_check", 407, (*(v265 + 384) + 212), v85, v102, *(v104 - 1) & 0xFFFFF, *(v104 - 1) & 0xFFFFF);
          }

          if (!*v104)
          {
            ++v259;
            v113 = *(v104 - 1) & 0xFFFFFLL;
LABEL_182:
            v114 = *(v104 - 1) & 0xFFFFF;
            if (v113 != v114)
            {
              ++v277;
              log_warn("%s:%d: %s cib %lld ci %d free count %d doesn't match free bits in bitmap block %lld\n", "nx_check", 429, (*(v265 + 384) + 212), v85, v102, *(v104 - 1) & 0xFFFFF, v113);
              v114 = *(v104 - 1) & 0xFFFFF;
            }

            v264 += v113;
            v262 += v114;
            v115 = *(v258 + 1248);
            if (v115)
            {
              v116 = *(v258 + 1240);
              v280[0] = 0;
              v117 = calc_overlap_range(*(v104 - 2), *(v104 - 1) & 0xFFFFF, v116, v115, v280);
              if (v117)
              {
                if (*v104)
                {
                  v117 = bitmap_count_bits(v274[7], 0, v280[0] - *(v104 - 2), v280[0] + v117 - *(v104 - 2));
                }

                v264 -= v117;
                v262 -= v117;
              }
            }

            if (*v104)
            {
              obj_release(v274);
            }

            goto LABEL_194;
          }

          v111 = spaceman_ip_block_index(v265, v279, *v104, &v267);
          if (v111)
          {
            ++v277;
            v242 = *v104;
            v230 = *(v265 + 384) + 212;
            if (v111 == 2)
            {
              log_warn("%s:%d: %s cib %lld ci %d bm addr %lld not within IP block range\n");
            }

            else
            {
              log_warn("%s:%d: %s error getting IP block index for cib %lld ci %d bm addr %lld\n");
            }
          }

          else
          {
            if (!obj_get(*(v265 + 392), 0x40000000, *v104, &sm_bm_desc, 0, 0, 0, 0, &v274))
            {
              v113 = bitmap_count_bits(v274[7], 0, 0, *(v104 - 1) & 0xFFFFF);
              goto LABEL_182;
            }

            ++v277;
            v244 = *v104;
            v232 = *(v265 + 384) + 212;
            log_warn("%s:%d: %s cib %lld chunk %d unable to get bitmap block @ %lld: %d\n");
          }
        }

        else
        {
          ++v277;
          if (v85 == *(v84 + 4) - 1 && v102 == *(v96 + 36) - 1)
          {
            v112 = (*v84 % v17);
          }

          v243 = *(v104 - 1) & 0xFFFFF;
          v231 = *(v265 + 384) + 212;
          log_warn("%s:%d: %s cib %lld chunk info %d block count %d should be %d\n");
        }

LABEL_194:
        ++v102;
        LODWORD(v118) = *(v96 + 36);
        if (v118 >= v13)
        {
          v118 = v13;
        }

        else
        {
          v118 = v118;
        }

        v103 += v17;
        v104 += 4;
        if (v102 >= v118)
        {
          goto LABEL_200;
        }
      }
    }

    v262 = 0;
    v264 = 0;
LABEL_217:
    if (v276)
    {
      obj_release(v276);
      v276 = 0;
    }

    v126 = v84[3];
    if (v262 == v126)
    {
      v127 = v262;
    }

    else
    {
      ++v277;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in chunks %lld\n", "nx_check", 469, (v61[48] + 212), v126, v262);
      v127 = v84[3];
    }

    if (v264 != v127)
    {
      ++v277;
      log_warn("%s:%d: %s spaceman free count %lld doesn't match free count in bitmap %lld\n", "nx_check", 472, (v61[48] + 212), v127, v264);
    }

    v83 = 0;
    v81 = 1;
  }

  while ((v251 & 1) != 0);
  if (v248 + v247 != v259 + v246)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman IP free block count is wrong %lld != %lld\n", "nx_check", 477, (v61[48] + 212), v248 + v247, v259 + v246);
  }

  v128 = v252;
  v129 = v252[30];
  v130 = v252[6];
  v131 = v255;
  if (v129 > v130)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 482, (v61[48] + 212), v129, v130);
  }

  if (!v252[31])
  {
    goto LABEL_232;
  }

  v132 = spaceman_fq_tree_get(v61, v279, 1u, 0, 0, &v273);
  if (v132)
  {
    ++v277;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 490, (v61[48] + 212), v132);
    goto LABEL_232;
  }

  if (v273)
  {
    v143 = btree_check(v273, 0, 0, 0);
    if (v143)
    {
      v144 = v143;
      ++v277;
      log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 494, (v61[48] + 212), v143);
      v268 = 0x1000000008;
    }

    else
    {
      v268 = 0x1000000008;
      v144 = bt_lookup_first(v273, 0, &v271, &v268 + 1, &v272, &v268);
    }

    v133 = 0;
    v176 = 0;
    for (j = 0; !v144; v144 = bt_lookup_variant(v273, 0, &v271, &v268 + 1, HIDWORD(v268), &v272, &v268, 4u, 0, 0))
    {
      if (v268)
      {
        v178 = v272;
      }

      else
      {
        v272 = 1;
        v178 = 1;
      }

      v179 = v271;
      if (v271 > v255)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 507, (*(v265 + 384) + 212), v271, *(&v271 + 1), v255);
        v179 = v271;
      }

      if (v179 >= j)
      {
        v180 = *(&v271 + 1);
        if (v179 == j)
        {
          if (*(&v271 + 1) < v176)
          {
            ++v277;
            log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 515, (*(v265 + 384) + 212), *(&v271 + 1), v176);
            v180 = *(&v271 + 1);
          }

          v176 = v272 + v180;
        }

        else
        {
          v176 = 0;
          j = v179;
        }
      }

      else
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 510, (*(v265 + 384) + 212), v179, j);
        v176 = 0;
        v180 = *(&v271 + 1);
        j = v271;
      }

      if (v180 < 1 || (v181 = *v249, v180 >= *v249))
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 524, (*(v265 + 384) + 212), v271, v180, v272);
        v181 = *v249;
        v180 = *(&v271 + 1);
      }

      v71 = v181 > v272;
      v182 = v181 - v272;
      if (!v71 || v180 > v182)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 527, (*(v265 + 384) + 212), v271, v180, v272);
      }

      v133 += v178;
      LODWORD(v268) = 8;
    }

    v61 = v265;
    if (v144 != 2)
    {
      ++v277;
      log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 534, (*(v265 + 384) + 212), v144);
    }

    obj_release(v273);
    v131 = v255;
    v128 = v252;
  }

  else
  {
LABEL_232:
    v133 = 0;
  }

  v134 = v128[30];
  if (v133 != v134)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 540, (v61[48] + 212), v134, v133);
  }

  v135 = v128[35];
  v136 = v128[12];
  if (v135 > v136)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman free queue count is too large: %lld > %lld\n", "nx_check", 544, (v61[48] + 212), v135, v136);
  }

  if (!v128[36])
  {
    goto LABEL_240;
  }

  v137 = spaceman_fq_tree_get(v61, v279, 2u, 0, 0, &v273);
  if (v137)
  {
    ++v277;
    log_warn("%s:%d: %s unable to get spaceman free queue tree: %d\n", "nx_check", 552, (v61[48] + 212), v137);
    goto LABEL_240;
  }

  if (v273)
  {
    v145 = btree_check(v273, 0, 0, 0);
    if (v145)
    {
      v146 = v145;
      ++v277;
      log_warn("%s:%d: %s spaceman free queue tree sanity check failed: %d\n", "nx_check", 556, (v61[48] + 212), v145);
      v268 = 0x1000000008;
    }

    else
    {
      v268 = 0x1000000008;
      v146 = bt_lookup_first(v273, 0, &v271, &v268 + 1, &v272, &v268);
    }

    v138 = 0;
    v183 = 0;
    for (k = 0; !v146; v146 = bt_lookup_variant(v273, 0, &v271, &v268 + 1, HIDWORD(v268), &v272, &v268, 4u, 0, 0))
    {
      if (v268)
      {
        v185 = v272;
      }

      else
      {
        v272 = 1;
        v185 = 1;
      }

      v186 = v271;
      if (v271 > v255)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld xid larger than spaceman xid %lld\n", "nx_check", 569, (*(v265 + 384) + 212), v271, *(&v271 + 1), v255);
        v186 = v271;
      }

      if (v186 >= k)
      {
        v187 = *(&v271 + 1);
        if (v186 == k)
        {
          if (*(&v271 + 1) < v183)
          {
            ++v277;
            log_warn("%s:%d: %s spaceman free queue tree entries out of order: addr %lld < %lld\n", "nx_check", 577, (*(v265 + 384) + 212), *(&v271 + 1), v183);
            v187 = *(&v271 + 1);
          }

          v183 = v272 + v187;
        }

        else
        {
          v183 = 0;
          k = v186;
        }
      }

      else
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entries out of order: xid %lld < %lld\n", "nx_check", 572, (*(v265 + 384) + 212), v186, k);
        v183 = 0;
        v187 = *(&v271 + 1);
        k = v271;
      }

      if (v187 < 1 || (v188 = v252[12], v187 >= v188))
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld addr is bad\n", "nx_check", 587, (*(v265 + 384) + 212), v271, v187, v272);
        v188 = v252[12];
      }

      v71 = v188 > v272;
      v189 = v188 - v272;
      if (!v71 || v187 > v189)
      {
        ++v277;
        log_warn("%s:%d: %s spaceman free queue tree entry %lld:%lld %lld range is bad\n", "nx_check", 590, (*(v265 + 384) + 212), v271, *(&v271 + 1), v272);
      }

      v138 += v185;
      LODWORD(v268) = 8;
    }

    v61 = v265;
    if (v146 != 2)
    {
      ++v277;
      log_warn("%s:%d: %s spaceman free queue tree iteration aborted with error %d\n", "nx_check", 597, (*(v265 + 384) + 212), v146);
    }

    obj_release(v273);
    v131 = v255;
    v128 = v252;
  }

  else
  {
LABEL_240:
    v138 = 0;
  }

  v139 = v128[35];
  if (v138 != v139)
  {
    ++v277;
    log_warn("%s:%d: %s spaceman free queue count %lld doesn't match count in the free queue: %lld\n", "nx_check", 603, (v61[48] + 212), v139, v138);
  }

  if (*(v258 + 168))
  {
    v140 = nx_reaper_get(v61, &v278);
    if (v140)
    {
      v6 = v140;
      v233 = v61[48] + 212;
      log_err("%s:%d: %s unable to get reaper: %d\n");
      goto LABEL_384;
    }

    v147 = v278[47];
    v148 = *(v147 + 32);
    if (*(v147 + 40) >= v148)
    {
      log_warn("%s:%d: %s reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", "nx_check_reaper", 940, (v61[48] + 212), *(v147 + 40), v148);
      v149 = 1;
    }

    else
    {
      v149 = 0;
    }

    v150 = *(v147 + 64);
    if ((v150 & 1) == 0)
    {
      ++v149;
      log_warn("%s:%d: %s reaper needs more cowbell, flags 0x%x\n", "nx_check_reaper", 943, (v61[48] + 212), v150);
    }

    v151 = *(v147 + 48);
    if (!v151)
    {
      if (!*(v147 + 56) || (++v149, log_warn("%s:%d: %s reaper has tail with no head\n", "nx_check_reaper", 947, (v61[48] + 212)), (v151 = *(v147 + 48)) == 0))
      {
LABEL_376:
        v277 += v149;
        obj_release(v278);
        v61 = v265;
        v131 = v255;
        goto LABEL_377;
      }
    }

    v280[0] = 0;
    v152 = *(v147 + 68);
    while (2)
    {
      v153 = obj_get(*(v265 + 392), 0x80000000, v151, &nx_reap_list_desc, 0, 0, 0, 0, v280);
      if (v153)
      {
        v6 = v153;
        log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_check_reaper", 956, (*(v265 + 384) + 212), v153);
        obj_release(v278);
        v234 = *(v265 + 384) + 212;
        log_err("%s:%d: %s reaper check failed with error: %d\n");
        goto LABEL_384;
      }

      v154 = v280[0][47];
      v155 = *(v154 + 44);
      if (v155 != ((obj_size_phys(v280[0]) - 64) / 0x28))
      {
        ++v149;
        v156 = (*(v265 + 384) + 212);
        v157 = *(v154 + 44);
        v158 = obj_size_phys(v280[0]);
        log_warn("%s:%d: %s reap list object 0x%llx max record count %u not expected value %u\n", "nx_check_reaper", 963, v156, v151, v157, (v158 - 64) / 0x28);
      }

      v159 = *(v154 + 44);
      if (*(v154 + 48) > v159)
      {
        ++v149;
        log_warn("%s:%d: %s reap list object 0x%llx record count %d larger than max %d\n", "nx_check_reaper", 966, (*(v265 + 384) + 212), v151, *(v154 + 48), v159);
      }

      v160 = *(v154 + 52);
      if (v160 != -1)
      {
        v161 = *(v154 + 44);
        if (v160 > v161)
        {
          ++v149;
          log_warn("%s:%d: %s reap list object 0x%llx first index %u larger than max %u\n", "nx_check_reaper", 969, (*(v265 + 384) + 212), v151, *(v154 + 52), v161);
        }
      }

      v162 = *(v154 + 56);
      if (v162 != -1)
      {
        v163 = *(v154 + 44);
        if (v162 > v163)
        {
          ++v149;
          log_warn("%s:%d: %s reap list object 0x%llx last index %u larger than max %u\n", "nx_check_reaper", 972, (*(v265 + 384) + 212), v151, *(v154 + 52), v163);
        }
      }

      v164 = *(v154 + 60);
      if (v164 != -1)
      {
        v165 = *(v154 + 44);
        if (v164 > v165)
        {
          ++v149;
          log_warn("%s:%d: %s reap list object 0x%llx free index %u larger than max %u\n", "nx_check_reaper", 975, (*(v265 + 384) + 212), v151, *(v154 + 60), v165);
        }
      }

      v166 = *(v154 + 32);
      v167 = *(v147 + 56);
      if (v166)
      {
LABEL_280:
        if (v167 == v151)
        {
          if (!v166)
          {
            goto LABEL_284;
          }

          ++v149;
          log_warn("%s:%d: %s reap list tail 0x%llx is not last reap list object, next 0x%llx\n", "nx_check_reaper", 987, (*(v265 + 384) + 212), v151, v166);
          v151 = *(v154 + 32);
        }

        else
        {
          v151 = v166;
        }
      }

      else
      {
        if (v167 != v151)
        {
          ++v149;
          log_warn("%s:%d: %s last reap list object 0x%llx doesn't match tail 0x%llx\n", "nx_check_reaper", 984, (*(v265 + 384) + 212), v151, v167);
          v167 = *(v147 + 56);
          v166 = *(v154 + 32);
          goto LABEL_280;
        }

LABEL_284:
        v151 = 0;
      }

      obj_release(v280[0]);
      if (*(v147 + 68))
      {
        --v152;
        if (v151 && !v152)
        {
          ++v149;
          v237 = *(v265 + 384) + 212;
          log_warn("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n");
          goto LABEL_376;
        }

        if (!v151 && v152)
        {
          ++v149;
          v241 = *(v147 + 68);
          v238 = *(v265 + 384) + 212;
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n");
          goto LABEL_376;
        }
      }

      if (!v151)
      {
        goto LABEL_376;
      }

      continue;
    }
  }

LABEL_377:
  v190 = v258;
  v191 = *(v258 + 160);
  if (!v191)
  {
    goto LABEL_385;
  }

  v192 = obj_get(v61[49], 0x40000000, v191, &om_desc, 0, 0, 0, 0, &v270);
  if (v192)
  {
    v6 = v192;
    v239 = v61[48] + 212;
    log_err("%s:%d: %s unable to get omap: %d\n");
    goto LABEL_384;
  }

  if (obj_xid(v270) > v131)
  {
    ++v277;
    v193 = (v61[48] + 212);
    v194 = obj_xid(v270);
    log_warn("%s:%d: %s omap xid %lld > spaceman xid %lld\n", "nx_check", 633, v193, v194, v131);
  }

  v6 = nx_check_omap(v61, v270, v131, &v277);
  obj_release(v270);
  v190 = v258;
  if (!v6)
  {
LABEL_385:
    v280[0] = 0;
    v266 = 0;
    if (!*(v190 + 180))
    {
LABEL_446:
      obj_release(v279);
      if (v277)
      {
        return 22;
      }

      else
      {
        return 0;
      }
    }

    v195 = 0;
    while (1)
    {
      v196 = *(v258 + 184 + 8 * v195);
      if (v196)
      {
        v197 = obj_get(*(v265 + 392), 0, v196, &apfs_desc, 0, 0, 0, 0, v280);
        if (v197)
        {
          log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check", 654, (*(v265 + 384) + 212), v195, v196, v197);
        }

        else
        {
          v198 = v280[0];
          v199 = v280[0][47];
          v200 = *(v199 + 128);
          if (!v200)
          {
            goto LABEL_396;
          }

          v201 = obj_get(*(v265 + 392), 0x40000000, v200, &om_desc, 0, v280[0], 0, 0, &v270);
          if (v201)
          {
            log_err("%s:%d: %s unable to get omap %lld: %d\n", "nx_check", 661, v280[0] + 4040, *(v280[0][47] + 128), v201);
            goto LABEL_444;
          }

          v202 = nx_check_omap(v280[0], v270, v255, &v277);
          obj_release(v270);
          v198 = v280[0];
          if (!v202)
          {
            v199 = v280[0][47];
LABEL_396:
            if (*(v199 + 136))
            {
              if (*(v199 + 264) & 1) != 0 || (v245)
              {
                v266 = 0;
                fsroot_tree = apfs_get_fsroot_tree(v198, 0, 0, &v266);
                if (fsroot_tree)
                {
                  log_err("%s:%d: %s unable to get fs root tree: %d\n", "nx_check", 680, v280[0] + 4040, fsroot_tree);
                }

                else
                {
                  if (obj_xid(v266) > v255)
                  {
                    ++v277;
                    v204 = (v280[0] + 505);
                    v205 = obj_xid(v266);
                    log_warn("%s:%d: %s fs root tree xid %lld > spaceman xid %lld\n", "nx_check", 683, v204, v205, v255);
                  }

                  v206 = btree_check(v266, 0, 0, 0);
                  if (v206)
                  {
                    ++v277;
                    log_warn("%s:%d: %s fs root tree sanity check failed: %d\n", "nx_check", 688, v280[0] + 4040, v206);
                  }
                }

                if (v266)
                {
                  obj_release(v266);
                }
              }

              else
              {
                log_err("%s:%d: %s skipping check of fs[%d] oid %lld fs root tree because it's encrypted\n", "nx_check", 675, v198 + 4040, v195, v196);
              }
            }

            v207 = *(v280[0][47] + 144);
            if (v207)
            {
              v266 = 0;
              extentref_tree = apfs_get_extentref_tree(v280[0], v207, 0, &v266);
              if (extentref_tree)
              {
                log_err("%s:%d: %s unable to get fs extentref tree: %d\n", "nx_check", 700, v280[0] + 4040, extentref_tree);
              }

              else
              {
                if (obj_xid(v266) > v255)
                {
                  ++v277;
                  v209 = (v280[0] + 505);
                  v210 = obj_xid(v266);
                  log_warn("%s:%d: %s fs extentref tree xid %lld > spaceman xid %lld\n", "nx_check", 703, v209, v210, v255);
                }

                v211 = btree_check(v266, 0, 0, 0);
                if (v211)
                {
                  ++v277;
                  log_warn("%s:%d: %s fs extentref tree sanity check failed: %d\n", "nx_check", 708, v280[0] + 4040, v211);
                }
              }

              if (v266)
              {
                obj_release(v266);
              }
            }

            if (*(v280[0][47] + 152))
            {
              v266 = 0;
              snap_meta_tree = apfs_get_snap_meta_tree(v280[0], 0, &v266);
              if (snap_meta_tree)
              {
                log_err("%s:%d: %s unable to get fs snap meta tree: %d\n", "nx_check", 719, v280[0] + 4040, snap_meta_tree);
              }

              else
              {
                if (obj_xid(v266) > v255)
                {
                  ++v277;
                  v213 = (v280[0] + 505);
                  v214 = obj_xid(v266);
                  log_warn("%s:%d: %s fs snap meta tree xid %lld > spaceman xid %lld\n", "nx_check", 722, v213, v214, v255);
                }

                v215 = btree_check(v266, 0, 0, 0);
                if (v215)
                {
                  ++v277;
                  log_warn("%s:%d: %s fs snap meta tree sanity check failed: %d\n", "nx_check", 727, v280[0] + 4040, v215);
                }
              }

              if (v266)
              {
                obj_release(v266);
              }
            }

            if (*(v280[0][47] + 1072))
            {
              v266 = 0;
              doc_id_tree = apfs_get_doc_id_tree(v280[0], 0, 0, 0, &v266);
              if (doc_id_tree)
              {
                log_err("%s:%d: %s unable to get doc-id tree: %d\n", "nx_check", 738, v280[0] + 4040, doc_id_tree);
              }

              else
              {
                if (obj_xid(v266) > v255)
                {
                  ++v277;
                  v217 = (v280[0] + 505);
                  v218 = obj_xid(v266);
                  log_warn("%s:%d: %s doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 741, v217, v218, v255);
                }

                v219 = btree_check(v266, 0, 0, 0);
                if (v219)
                {
                  ++v277;
                  log_warn("%s:%d: %s doc-id tree sanity check failed: %d\n", "nx_check", 746, v280[0] + 4040, v219);
                }
              }

              if (v266)
              {
                obj_release(v266);
              }
            }

            if (*(v280[0][47] + 1080))
            {
              v266 = 0;
              v220 = apfs_get_doc_id_tree(v280[0], 1, 0, 0, &v266);
              if (v220)
              {
                log_err("%s:%d: %s unable to get prev doc-id tree: %d\n", "nx_check", 757, v280[0] + 4040, v220);
              }

              else
              {
                if (obj_xid(v266) > v255)
                {
                  ++v277;
                  v221 = (v280[0] + 505);
                  v222 = obj_xid(v266);
                  log_warn("%s:%d: %s prev doc-id tree xid %lld > spaceman xid %lld\n", "nx_check", 760, v221, v222, v255);
                }

                v223 = btree_check(v266, 0, 0, 0);
                if (v223)
                {
                  ++v277;
                  log_warn("%s:%d: %s prev doc-id tree sanity check failed: %d\n", "nx_check", 765, v280[0] + 4040, v223);
                }
              }

              if (v266)
              {
                obj_release(v266);
              }
            }

LABEL_444:
            obj_release(v280[0]);
            goto LABEL_445;
          }

          log_err("%s:%d: %s omap check failed for omap %lld: %d\n", "nx_check", 668, v280[0] + 4040, *(v280[0][47] + 128), v202);
          obj_release(v280[0]);
        }
      }

LABEL_445:
      if (++v195 >= *(v258 + 180))
      {
        goto LABEL_446;
      }
    }
  }

  v240 = v61[48] + 212;
  log_err("%s:%d: %s omap check failed with error: %d\n");
LABEL_384:
  obj_release(v279);
  return v6;
}

uint64_t nx_check_omap(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (obj_type(a1) == 13)
  {
    v8 = *(a1 + 392);
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v9 = *(*(v8 + 376) + 36);
  if (*(*(a2 + 376) + 36) >= 0x400u)
  {
    if (obj_type(a1) == 13)
    {
      v10 = (a1 + 4040);
    }

    else
    {
      v10 = (*(a1 + 384) + 212);
    }

    log_warn("%s:%d: %s omap snapshot count %d seems excessive\n", "nx_check_omap", 802, v10, *(*(a2 + 376) + 36));
  }

  v48 = 0;
  v11 = *(a2 + 376);
  v12 = *(v11 + 40);
  if (v12 == 1073741826 || v12 == -2147483646)
  {
    v14 = *(v11 + 48);
    v50 = 0u;
    v55 = 0;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v49 = omap_key_cmp;
    DWORD2(v50) = 11;
    if (v12 == 2)
    {
      extended = btree_get_extended(a1, v12 & 0xFFFF0000, v14, 0, 0, &v49, 0, &v48);
      if (!extended)
      {
        if (obj_xid(v48) <= a3)
        {
          v21 = 0;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v16 = (a1 + 4040);
          }

          else
          {
            v16 = (*(a1 + 384) + 212);
          }

          v22 = obj_xid(v48);
          log_warn("%s:%d: %s omap tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 817, v16, v22, a3);
          v21 = 1;
        }

        v23 = btree_check(v48, 0, 0, 0);
        if (v23)
        {
          v24 = v23;
          ++v21;
          if (obj_type(a1) == 13)
          {
            v25 = (a1 + 4040);
          }

          else
          {
            v25 = (*(a1 + 384) + 212);
          }

          log_warn("%s:%d: %s omap tree sanity check failed: %d\n", "nx_check_omap", 822, v25, v24);
          goto LABEL_83;
        }

        v44 = 0;
        v45 = 0;
        v49 = 0;
        *&v50 = 0;
        bt_iterator_init_with_hint(v46, v48, 0, 0, &v49, 16, 0x10u, &v44, 0x10u, 0);
        if (bt_iterator_ended(v46))
        {
LABEL_83:
          obj_release(v48);
          goto LABEL_84;
        }

        v26 = 0;
        *&v42[8] = 0;
        v43 = (a1 + 4040);
        *v42 = v9 - 1;
        v27 = -1;
        while (v49 >= v26)
        {
          v28 = v50;
          if (v49 == v26)
          {
            if (v50 <= *&v42[4])
            {
              ++v21;
              if (obj_type(a1) == 13)
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, v43, v49, v50, *&v42[4]);
              }

              else
              {
                log_warn("%s:%d: %s omap tree entries out of order: oid %lld xid %lld <= lastxid %lld\n", "nx_check_omap", 841, (*(a1 + 384) + 212), v49, v50, *&v42[4]);
              }
            }

            goto LABEL_44;
          }

          *&v42[4] = 0;
          v27 = -1;
          v26 = v49;
LABEL_46:
          if (v28 > a3)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, v43, v49, v50, a3);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld xid > spaceman xid %lld\n", "nx_check_omap", 850, (*(a1 + 384) + 212), v49, v50, a3);
            }
          }

          if (v44 >= 0x800)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, v43, v49, v50, v44 & 0xFFFFFFFE);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld unknown flags are set: 0x%x\n", "nx_check_omap", 853, (*(a1 + 384) + 212), v49, v50, v44 & 0xFFFFFFFE);
            }
          }

          if ((v44 & 1) != 0 && v27 == -1)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, v43, v49, v50);
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld marks deletion of object with no earlier mappings\n", "nx_check_omap", 856, (*(a1 + 384) + 212), v49, v50);
            }
          }

          else if (v27 != -1)
          {
            if (v27)
            {
              ++v21;
              if (obj_type(a1) == 13)
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, v43, v49, v50, v27);
              }

              else
              {
                log_warn("%s:%d: %s omap entry %lld:%lld beyond deletion entry @ xid %lld\n", "nx_check_omap", 861, (*(a1 + 384) + 212), v49, v50, v27);
              }
            }

            else if (v44)
            {
              v27 = v50;
            }

            else
            {
              v27 = 0;
            }

            goto LABEL_70;
          }

          if (v44)
          {
            v27 = v50;
          }

          else
          {
            v27 = 0;
          }

LABEL_70:
          if (HIDWORD(v44) >= 0x100000)
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, v43, v49, v50, HIDWORD(v44));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld size %d seems excessive\n", "nx_check_omap", 866, (*(a1 + 384) + 212), v49, v50, HIDWORD(v44));
            }
          }

          if (nx_superblock_sanity_check_extent(*(v8 + 376), 0, v45, (*v42 + HIDWORD(v44)) / v9, 0))
          {
            ++v21;
            if (obj_type(a1) == 13)
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, v43, v49, v50, v45, HIDWORD(v44));
            }

            else
            {
              log_warn("%s:%d: %s omap entry %lld:%lld addr %lld size %d is bad\n", "nx_check_omap", 871, (*(a1 + 384) + 212), v49, v50, v45, HIDWORD(v44));
            }
          }

          bt_iterator_next(v46);
          if (bt_iterator_ended(v46))
          {
            goto LABEL_83;
          }
        }

        if (obj_type(a1) == 13)
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, v43, v49, v26);
        }

        else
        {
          log_warn("%s:%d: %s omap tree entries out of order: oid %lld < %lld\n", "nx_check_omap", 835, (*(a1 + 384) + 212), v49, v26);
        }

        ++v21;
        v27 = -1;
        v26 = v49;
LABEL_44:
        v28 = v50;
        *&v42[4] = v50;
        goto LABEL_46;
      }
    }

    else
    {
      extended = 22;
    }

    if (obj_type(a1) == 13)
    {
      v17 = (a1 + 4040);
    }

    else
    {
      v17 = (*(a1 + 384) + 212);
    }

    log_warn("%s:%d: %s unable to get omap tree: %d\n", "nx_check_omap", 812, v17, extended);
    v20 = *a4 + 1;
    goto LABEL_116;
  }

  v18 = obj_type(a1);
  if (v18 == 13)
  {
    v19 = (a1 + 4040);
  }

  else
  {
    v19 = (*(a1 + 384) + 212);
  }

  log_warn("%s:%d: %s omap tree type 0x%x is bad\n", "nx_check_omap", 881, v19, *(*(a2 + 376) + 40));
  v21 = 1;
LABEL_84:
  v29 = *(a2 + 376);
  v30 = *(v29 + 56);
  if (!v30)
  {
LABEL_115:
    extended = 0;
    v20 = *a4 + v21;
    goto LABEL_116;
  }

  v31 = *(v29 + 44);
  if (v31 != 1073741826 && v31 != -2147483646)
  {
    ++v21;
    if (obj_type(a1) == 13)
    {
      v34 = (a1 + 4040);
    }

    else
    {
      v34 = (*(a1 + 384) + 212);
    }

    log_warn("%s:%d: %s omap snapshot tree type 0x%x is bad\n", "nx_check_omap", 920, v34, *(*(a2 + 376) + 40));
    goto LABEL_115;
  }

  v50 = 0u;
  v55 = 0;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v49 = omap_snapshot_key_cmp;
  DWORD2(v50) = 19;
  extended = btree_get_extended(a1, v31 & 0xFFFF0000, v30, 0, 0, &v49, 0, &v48);
  if (!extended)
  {
    if (obj_xid(v48) > a3)
    {
      ++v21;
      if (obj_type(a1) == 13)
      {
        v32 = (a1 + 4040);
      }

      else
      {
        v32 = (*(a1 + 384) + 212);
      }

      v35 = obj_xid(v48);
      log_warn("%s:%d: %s omap snapshot tree xid %lld > spaceman xid %lld\n", "nx_check_omap", 896, v32, v35, a3);
    }

    if (btree_check(v48, 0, 0, 0))
    {
      ++v21;
      if (obj_type(a1) != 13)
      {
        v37 = *(a1 + 384) + 212;
      }

      log_warn("%s:%d: %s omap snapshot tree sanity check failed: %d\n");
    }

    else
    {
      v49 = 0;
      *&v50 = 0;
      v44 = 0;
      bt_iterator_init_with_hint(v46, v48, 0, 0, &v44, 8, 8u, &v49, 0x10u, 0);
      v36 = 0;
      if (!bt_iterator_ended(v46))
      {
        v36 = 0;
        do
        {
          ++v36;
          bt_iterator_next(v46);
        }

        while (!bt_iterator_ended(v46));
      }

      if (v36 != *(*(a2 + 376) + 36))
      {
        ++v21;
        if (obj_type(a1) != 13)
        {
          v38 = *(a1 + 384) + 212;
        }

        v41 = *(*(a2 + 376) + 36);
        log_warn("%s:%d: %s omap snapshot count %d doesn't match snapshot tree record count %lld\n");
      }
    }

    obj_release(v48);
    goto LABEL_115;
  }

  if (obj_type(a1) == 13)
  {
    v33 = (a1 + 4040);
  }

  else
  {
    v33 = (*(a1 + 384) + 212);
  }

  log_warn("%s:%d: %s unable to get omap snapshot tree: %d\n", "nx_check_omap", 891, v33, extended);
  v20 = v21 + 1 + *a4;
LABEL_116:
  *a4 = v20;
  v39 = *MEMORY[0x277D85DE8];
  return extended;
}

uint64_t omap_recent_sanity_callback(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, int a5, _DWORD *a6, int a7)
{
  v21 = 0;
  v22 = 0;
  v13 = obj_type(a1);
  v14 = 0;
  v15 = a1;
  if (v13 == 13)
  {
    v15 = *(a1 + 392);
    v14 = a1;
  }

  v16 = 22;
  if (a5 == 16 && a7 == 16)
  {
    v17 = a4[1];
    if (v17 <= a3)
    {
      return 0;
    }

    v18 = *a6;
    if ((*a6 & 5) != 0)
    {
      return 0;
    }

    else
    {
      v23 = 0;
      if ((v18 & 8) != 0)
      {
        v20 = 536870936;
      }

      else
      {
        v20 = 24;
      }

      LODWORD(v22) = a6[1];
      v16 = obj_get(*(v15 + 392), v20, *a4, &v21, 0, v14, v17, 0, &v23);
      if (v16)
      {
        if (obj_type(a1) == 13)
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (a1 + 4040), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }

        else
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (*(a1 + 384) + 212), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }
      }

      else
      {
        obj_release(v23);
      }
    }
  }

  return v16;
}

uint64_t nx_check_recent_sanity(void *a1)
{
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v2 = spaceman_get(a1, &v58);
  if (v2)
  {
    v3 = v2;
    v43 = a1[48] + 212;
    log_err("%s:%d: %s unable to get spaceman: %d\n");
    return v3;
  }

  v4 = v58[47];
  v5 = obj_xid(v58);
  v6 = 0;
  v7 = 0;
  v8 = v5 - 3;
  if (v5 < 3)
  {
    v8 = 0;
  }

  v48 = v8;
  v49 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  do
  {
    v9 = v4 + 48 + 48 * v6;
    if (!*(v9 + 16))
    {
LABEL_27:
      v3 = 0;
      goto LABEL_30;
    }

    v10 = 0;
    v11 = -1;
    while (!*(v9 + 20))
    {
      v17 = (v58[v6 + 112] + 8 * v10);
LABEL_22:
      v18 = *v17;
      v49 = v4;
      v50 = __PAIR64__(v10, v6);
      v19 = obj_get(a1[49], 0x40000000, v18, &sm_cib_desc, &v49, 0, 0, 0, &v53);
      if (v19)
      {
        v21 = v19;
        log_err("%s:%d: %s unable to read cib %lld @ %lld: %d\n", "nx_check_recent_sanity", 1152, (a1[48] + 212), v10, v18, v19);
        v3 = v21;
        goto LABEL_30;
      }

      obj_release(v53);
      v20 = 1;
LABEL_24:
      v10 += v20;
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_27;
      }
    }

    v12 = *(v4 + 44);
    v13 = v10 / v12;
    if (v10 / v12 == v11 && v7 != 0)
    {
      v13 = v11;
LABEL_21:
      v17 = (v7 + 8 * (v10 - v12 * v13) + 40);
      goto LABEL_22;
    }

    v15 = *(v58[v6 + 112] + 8 * v13);
    if (v54)
    {
      obj_release(v54);
      v54 = 0;
    }

    v51 = v4;
    v52 = __PAIR64__(v13, v6);
    v16 = obj_get(a1[49], 0x40000000, v15, &sm_cab_desc, &v51, 0, 0, 0, &v54);
    if (!v16)
    {
      v7 = v54[7];
      if (obj_xid(v54) <= v48)
      {
        v20 = *(v7 + 36);
        v11 = v13;
        goto LABEL_24;
      }

      v12 = *(v4 + 44);
      v11 = v13;
      goto LABEL_21;
    }

    v3 = v16;
    log_err("%s:%d: %s unable to read cab %d @ %lld: %d\n", "nx_check_recent_sanity", 1125, (a1[48] + 212), v13, v15, v16);
LABEL_30:
    if (v54)
    {
      obj_release(v54);
      v54 = 0;
    }
  }

  while (!(v3 | v6++));
  obj_release(v58);
  if (v3)
  {
    return v3;
  }

  v24 = *(a1[47] + 160);
  if (v24)
  {
    v25 = obj_get(a1[49], 0x40000000, v24, &om_desc, 0, 0, 0, 0, &v57);
    if (v25)
    {
      v3 = v25;
      v44 = a1[48] + 212;
      log_err("%s:%d: %s unable to get omap: %d\n");
      return v3;
    }

    if (obj_xid(v57) <= v48)
    {
      obj_release(v57);
    }

    else
    {
      v3 = nx_check_recent_sanity_omap(a1, v57, v48);
      obj_release(v57);
      if (v3)
      {
        v45 = a1[48] + 212;
        log_err("%s:%d: %s omap check failed with error: %d\n");
        return v3;
      }
    }
  }

  v26 = a1[47];
  if (!*(v26 + 180))
  {
    return 0;
  }

  v27 = 0;
  while (2)
  {
    v28 = *(v26 + 8 * v27 + 184);
    if (!v28)
    {
      goto LABEL_75;
    }

    v29 = obj_get(a1[49], 0, v28, &apfs_desc, 0, 0, 0, 0, &v56);
    if (v29)
    {
      v41 = v29;
      log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check_recent_sanity", 1194, (a1[48] + 212), v27, v28, v29);
      return v41;
    }

    v30 = obj_xid(v56);
    v31 = v56;
    if (v30 <= v48)
    {
      goto LABEL_74;
    }

    v32 = *(*(v56 + 376) + 128);
    if (!v32)
    {
      goto LABEL_53;
    }

    v33 = obj_get(a1[49], 0x40000000, v32, &om_desc, 0, v56, 0, 0, &v57);
    if (!v33)
    {
      if (obj_xid(v57) <= v48)
      {
        obj_release(v57);
        v31 = v56;
      }

      else
      {
        v34 = nx_check_recent_sanity_omap(v56, v57, v48);
        obj_release(v57);
        v31 = v56;
        if (v34)
        {
          v47 = *(*(v56 + 376) + 128);
          log_err("%s:%d: %s omap check failed for omap %lld: %d\n");
          goto LABEL_80;
        }
      }

LABEL_53:
      v35 = v31[47];
      v36 = *(v35 + 144);
      if (v36)
      {
        v55 = 0;
        extentref_tree = apfs_get_extentref_tree(v31, v36, 0, &v55);
        if (extentref_tree)
        {
          v34 = extentref_tree;
          log_err("%s:%d: %s unable to get extentref tree %lld: %d\n", "nx_check_recent_sanity", 1228, (v56 + 4040), *(*(v56 + 376) + 144), extentref_tree);
        }

        else if (obj_xid(v55) <= v48)
        {
          v34 = 0;
        }

        else
        {
          v38 = btree_check_recent_sanity(v55, v48, 0, 0);
          v34 = v38;
          if (v38)
          {
            log_err("%s:%d: %s extentref tree %lld: %d\n", "nx_check_recent_sanity", 1233, (v56 + 4040), *(*(v56 + 376) + 144), v38);
          }
        }

        if (v55)
        {
          obj_release(v55);
        }

        v31 = v56;
        if (v34)
        {
LABEL_78:
          v42 = v31;
          goto LABEL_81;
        }

        v35 = *(v56 + 376);
      }

      if (*(v35 + 152))
      {
        v55 = 0;
        snap_meta_tree = apfs_get_snap_meta_tree(v31, 0, &v55);
        if (snap_meta_tree)
        {
          v34 = snap_meta_tree;
          log_err("%s:%d: %s unable to get snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1250, (v56 + 4040), *(*(v56 + 376) + 152), snap_meta_tree);
        }

        else if (obj_xid(v55) <= v48)
        {
          v34 = 0;
        }

        else
        {
          v40 = btree_check_recent_sanity(v55, v48, 0, 0);
          v34 = v40;
          if (v40)
          {
            log_err("%s:%d: %s snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1255, (v56 + 4040), *(*(v56 + 376) + 144), v40);
          }
        }

        if (v55)
        {
          obj_release(v55);
        }

        v31 = v56;
        if (v34)
        {
          goto LABEL_78;
        }
      }

LABEL_74:
      obj_release(v31);
LABEL_75:
      ++v27;
      v26 = a1[47];
      if (v27 >= *(v26 + 180))
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v34 = v33;
  v46 = *(*(v56 + 376) + 128);
  log_err("%s:%d: %s unable to get omap %lld: %d\n");
LABEL_80:
  v42 = v56;
LABEL_81:
  obj_release(v42);
  return v34;
}

uint64_t nx_check_recent_sanity_omap(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v6 + 40);
    v19 = 0u;
    v20 = 0u;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v18 = omap_key_cmp;
    DWORD2(v19) = 11;
    if (v8 == 2)
    {
      extended = btree_get_extended(a1, v8 & 0xFFFF0000, v7, 0, 0, &v18, 0, &v17);
      if (!extended)
      {
        if (obj_xid(v17) <= a3)
        {
          obj_release(v17);
        }

        else
        {
          extended = btree_check_recent_sanity(v17, a3, omap_recent_sanity_callback, 0);
          obj_release(v17);
          if (extended)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
      extended = 22;
    }

    if (obj_type(a1) != 13)
    {
      v10 = *(a1 + 384) + 212;
    }

    log_err("%s:%d: %s unable to get omap tree: %d\n");
    goto LABEL_22;
  }

LABEL_12:
  v11 = *(a2 + 376);
  v12 = *(v11 + 56);
  if (!v12)
  {
    extended = 0;
    goto LABEL_22;
  }

  v13 = *(v11 + 44);
  v19 = 0u;
  v20 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v18 = omap_snapshot_key_cmp;
  DWORD2(v19) = 19;
  if (v13 == 2)
  {
    extended = btree_get_extended(a1, v13 & 0xFFFF0000, v12, 0, 0, &v18, 0, &v17);
    if (!extended)
    {
      if (obj_xid(v17) <= a3)
      {
        extended = 0;
      }

      else
      {
        extended = btree_check_recent_sanity(v17, a3, 0, 0);
      }

      obj_release(v17);
      goto LABEL_22;
    }
  }

  else
  {
    extended = 22;
  }

  if (obj_type(a1) != 13)
  {
    v14 = *(a1 + 384) + 212;
  }

  log_err("%s:%d: %s unable to get omap snapshot tree: %d\n");
LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return extended;
}

uint64_t MetricsCompactor::Import(uint64_t *a1, char *a2, uint64_t a3, void *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  bzero(a1 + 2, 0x210uLL);
  *a1 = xmmword_23D298FC0;
  *(a1 + 544) = 0;
  set_metric_default_values(a3);
  v8 = strlen(a2);
  *(a3 + 344) = v8;
  v9 = (a1 + 4);
  *(a1 + 544) = Base85::Decode(a2, v8, (a1 + 4), 0x200, a1 + 3, v10) ^ 1;
  v11 = MetricsCompactor::Read(a1);
  *(a3 + 68) = v11;
  if (v11 > 11)
  {
    goto LABEL_143;
  }

  if (v11)
  {
    v12 = MetricsCompactor::Read(a1);
    v13 = v12 >> 1;
    if (v12)
    {
      v13 = -v13;
    }

    v14 = v13 + a1[1];
    a1[1] = v14;
    *(a3 + 176) = MetricsCompactor::Read(a1);
    *(a3 + 152) = v14;
    if (*(a3 + 68) >= 2)
    {
      v15 = 0;
      v16 = (a3 + 72);
      do
      {
        MetricsCompactor::Read(a1, v16, 0);
        ++v15;
        v16 += 2;
      }

      while (v15 < *(a3 + 68) - 1);
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  *a1 = MetricsCompactor::Read(a1);
  do
  {
    switch(v17)
    {
      case 0:
        if ((*a1 >> v17))
        {
          *(a3 + 408) = MetricsCompactor::Read(a1);
        }

        break;
      case 1:
        if ((*a1 >> v17))
        {
          *(a3 + 384) = MetricsCompactor::Read(a1);
        }

        break;
      case 2:
        if ((*a1 >> v17))
        {
          *(a3 + 400) = MetricsCompactor::Read(a1);
        }

        break;
      case 3:
        if ((*a1 >> v17))
        {
          *(a3 + 352) = MetricsCompactor::Read(a1);
        }

        break;
      case 4:
        if ((*a1 >> v17))
        {
          *(a3 + 368) = MetricsCompactor::Read(a1);
        }

        break;
      case 5:
        if ((*a1 >> v17))
        {
          *(a3 + 392) = MetricsCompactor::Read(a1);
        }

        break;
      case 6:
        if ((*a1 >> v17))
        {
          *(a3 + 360) = MetricsCompactor::Read(a1);
        }

        break;
      case 7:
        if ((*a1 >> v17))
        {
          *(a3 + 376) = MetricsCompactor::Read(a1);
        }

        break;
      case 8:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 272) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 264) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 9:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 288) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 280) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 10:
        if ((*a1 >> v17))
        {
          *(a3 + 328) = MetricsCompactor::Read(a1);
        }

        break;
      case 11:
        if ((*a1 >> v17))
        {
          *(a3 + 320) = MetricsCompactor::Read(a1);
        }

        break;
      case 12:
        if ((*a1 >> v17))
        {
          *(a3 + 296) = MetricsCompactor::Read(a1);
        }

        break;
      case 13:
        if ((*a1 >> v17))
        {
          v24 = MetricsCompactor::Read(a1);
          v25 = v24 >> 1;
          if (v24)
          {
            v25 = -v25;
          }

          *(a3 + 416) = v25;
        }

        break;
      case 14:
        if ((*a1 >> v17))
        {
          *(a3 + 424) = MetricsCompactor::Read(a1);
        }

        break;
      case 15:
        if ((*a1 >> v17))
        {
          v26 = MetricsCompactor::Read(a1);
          v27 = v26 >> 1;
          if (v26)
          {
            v27 = -v27;
          }

          *(a3 + 432) = v27;
        }

        break;
      case 16:
        if ((*a1 >> v17))
        {
          v28 = MetricsCompactor::Read(a1);
          v29 = v28 >> 1;
          if (v28)
          {
            v29 = -v29;
          }

          *(a3 + 440) = v29;
        }

        break;
      case 17:
        if ((*a1 >> v17))
        {
          *(a3 + 448) = MetricsCompactor::Read(a1);
        }

        break;
      case 18:
        if ((*a1 >> v17))
        {
          *(a3 + 456) = MetricsCompactor::Read(a1);
        }

        break;
      case 19:
        if ((*a1 >> v17))
        {
          *(a3 + 336) = MetricsCompactor::Read(a1);
        }

        break;
      case 20:
        if ((*a1 & (1 << v17)) != 0)
        {
          v18 = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            v19 = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 21:
        if ((*a1 >> v17))
        {
          *(a3 + 464) = MetricsCompactor::Read(a1);
        }

        break;
      case 22:
        if ((*a1 >> v17))
        {
          *(a3 + 472) = MetricsCompactor::Read(a1);
        }

        break;
      case 23:
        if ((*a1 >> v17))
        {
          *(a3 + 480) = MetricsCompactor::Read(a1);
        }

        break;
      case 24:
        if ((*a1 >> v17))
        {
          *(a3 + 496) = MetricsCompactor::Read(a1);
        }

        break;
      case 25:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 544) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 568) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 26:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 552) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 576) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 27:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 560) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 584) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 28:
        if ((*a1 >> v17))
        {
          *(a3 + 512) = MetricsCompactor::Read(a1);
        }

        break;
      case 29:
        if ((*a1 >> v17))
        {
          *(a3 + 520) = MetricsCompactor::Read(a1);
        }

        break;
      case 30:
        if ((*a1 >> v17))
        {
          *(a3 + 528) = MetricsCompactor::Read(a1);
        }

        break;
      case 31:
        if ((*a1 >> v17))
        {
          *(a3 + 536) = MetricsCompactor::Read(a1);
        }

        break;
      case 32:
        v21 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 592) = MetricsCompactor::Read(a1);
          if ((*a1 & v21) != 0)
          {
            *(a3 + 608) = MetricsCompactor::Read(a1);
            if ((*a1 & v21) != 0)
            {
              *(a3 + 624) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      case 33:
        v23 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 600) = MetricsCompactor::Read(a1);
          if ((*a1 & v23) != 0)
          {
            *(a3 + 616) = MetricsCompactor::Read(a1);
            if ((*a1 & v23) != 0)
            {
              *(a3 + 632) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      case 34:
        if ((*a1 >> v17))
        {
          *(a3 + 504) = MetricsCompactor::Read(a1);
        }

        break;
      case 35:
        if ((*a1 >> v17))
        {
          *(a3 + 688) = MetricsCompactor::Read(a1);
        }

        break;
      case 36:
        v22 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 696) = MetricsCompactor::Read(a1);
          if ((*a1 & v22) != 0)
          {
            *(a3 + 712) = MetricsCompactor::Read(a1);
            if ((*a1 & v22) != 0)
            {
              *(a3 + 720) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      case 37:
        if ((*a1 >> v17))
        {
          *(a3 + 704) = MetricsCompactor::Read(a1);
        }

        break;
      case 38:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 640) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 648) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 39:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 656) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 664) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 40:
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 672) = MetricsCompactor::Read(a1);
          if ((*a1 & (1 << v17)) != 0)
          {
            *(a3 + 680) = MetricsCompactor::Read(a1);
          }
        }

        break;
      case 41:
        if ((*a1 >> v17))
        {
          *(a3 + 312) = MetricsCompactor::Read(a1);
        }

        break;
      case 42:
        if ((*a1 >> v17))
        {
          *(a3 + 304) = MetricsCompactor::Read(a1);
        }

        break;
      case 44:
        v20 = 1 << v17;
        if ((*a1 & (1 << v17)) != 0)
        {
          *(a3 + 728) = MetricsCompactor::Read(a1);
          if ((*a1 & v20) != 0)
          {
            *(a3 + 736) = MetricsCompactor::Read(a1);
            if ((*a1 & v20) != 0)
            {
              *(a3 + 744) = MetricsCompactor::Read(a1);
            }
          }
        }

        break;
      default:
        break;
    }

    ++v17;
  }

  while (v17 != 51);
  if ((*(a1 + 5) & 0x20) != 0)
  {
    if (!a4)
    {
LABEL_143:
      v37 = 0;
      goto LABEL_144;
    }

    MetricsCompactor::Read(a1, a4);
  }

  v30 = MetricsCompactor::Read(a1);
  *(a3 + 24) = v30;
  if (v30 > 5)
  {
    goto LABEL_143;
  }

  if (v30 >= 1)
  {
    v31 = 0;
    v32 = (a3 + 28);
    do
    {
      MetricsCompactor::Read(a1, v32, 1);
      ++v31;
      v32 += 2;
    }

    while (v31 < *(a3 + 24));
  }

  if ((*(a1 + 2) & 0x10) != 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    *__str = 0u;
    snprintf(__str, 0x34uLL, "/dev/rdisk%llus%llu", v18, v19);
    goto LABEL_135;
  }

  memset(__str, 0, sizeof(__str));
  *&v48 = 0;
  v33 = MetricsCompactor::Read(a1, __str);
  v34 = SBYTE7(v48);
  if (!v33)
  {
LABEL_141:
    if (v34 < 0)
    {
      operator delete(*__str);
    }

    goto LABEL_143;
  }

  if ((SBYTE7(v48) & 0x80000000) == 0)
  {
    if (!BYTE7(v48))
    {
      goto LABEL_136;
    }

LABEL_135:
    *(a3 + 160) = strdup(__str);
    goto LABEL_136;
  }

  if (*&__str[8])
  {
    *(a3 + 160) = strdup(*__str);
  }

  operator delete(*__str);
LABEL_136:
  v35 = *a1;
  if ((*a1 & 0x4000000000000) != 0)
  {
    memset(__str, 0, sizeof(__str));
    *&v48 = 0;
    v36 = MetricsCompactor::Read(a1, __str);
    v34 = SBYTE7(v48);
    if (v36)
    {
      if (SBYTE7(v48) < 0)
      {
        if (*&__str[8])
        {
          *(a3 + 168) = strdup(*__str);
        }

        operator delete(*__str);
      }

      else if (BYTE7(v48))
      {
        *(a3 + 168) = strdup(__str);
      }

      v35 = *a1;
      goto LABEL_152;
    }

    goto LABEL_141;
  }

LABEL_152:
  if ((v35 & 0x80000000000) == 0)
  {
    goto LABEL_164;
  }

  v40 = a1[2];
  if (v40)
  {
    v41 = 0;
    do
    {
      v41 ^= *v9;
      v42 = 8;
      do
      {
        v43 = v41;
        v44 = 2 * v41;
        v41 = (2 * v41) ^ 0x12;
        if (v43 >= 0)
        {
          v41 = v44;
        }

        --v42;
      }

      while (v42);
      ++v9;
      --v40;
    }

    while (v40);
    v45 = v41 >> 1;
  }

  else
  {
    v45 = 0;
  }

  v46 = MetricsCompactor::Read(a1);
  v37 = 0;
  if (v46 <= 0x7F && v46 == v45)
  {
LABEL_164:
    v37 = *(a1 + 544) ^ 1;
  }

LABEL_144:
  v38 = *MEMORY[0x277D85DE8];
  return v37 & 1;
}

void sub_23D2777E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MetricsCompactor::Read(MetricsCompactor *this)
{
  v2 = 0;
  result = 0;
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = this + v5 + 32;
  for (i = v5 + 1; ; ++i)
  {
    if (!v7)
    {
      *(this + 544) = 1;
      return result;
    }

    *(this + 2) = i;
    v10 = *v8;
    if (v2 == 56)
    {
      break;
    }

    result |= (v10 & 0x7F) << v2;
    v2 += 7;
    --v7;
    ++v8;
    if ((v10 & 0x80) == 0)
    {
      return result;
    }
  }

  return result | (v10 << 56);
}

unint64_t MetricsCompactor::Read(MetricsCompactor *a1, _DWORD *a2, int a3)
{
  v6 = MetricsCompactor::Read(a1);
  v7 = v6 >> 1;
  if (v6)
  {
    v7 = -v7;
  }

  v8 = v7 + *(a1 + 1);
  *(a1 + 1) = v8;
  *a2 = v8;
  result = MetricsCompactor::Read(a1);
  v10 = result >> 1;
  if (result)
  {
    v10 = -v10;
  }

  if (!a3)
  {
    LODWORD(v10) = result;
  }

  a2[1] = v10;
  return result;
}

uint64_t MetricsCompactor::Read(MetricsCompactor *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MetricsCompactor::Read(a1);
  v5 = 0;
  v17 = 0;
  v16 = 0;
  do
  {
    *(&v16 + v5++) = v4 % 0x54;
    v4 /= 0x54uLL;
  }

  while (v5 != 10);
  v6 = 0;
  v7 = 0;
  for (i = 0; i != 10; ++i)
  {
    v9 = *(&v16 + i);
    if (*(&v16 + i))
    {
      v10 = MetricsCompactor::Read(a1);
      v11 = v10 >> 1;
      if (v10)
      {
        v11 = -v11;
      }

      v7 += v11;
      v6 += MetricsCompactor::Read(a1);
      if (v9 <= 0x53)
      {
        v12 = &a2[3 * v9 - 3];
        *v12 = v7;
        v12[1] = v6;
      }
    }
  }

  v13 = MetricsCompactor::Read(a1);
  a2[255] = v13;
  if (v13)
  {
    a2[256] = MetricsCompactor::Read(a1) << 20;
    a2[257] = 1000000000 * MetricsCompactor::Read(a1);
  }

  result = MetricsCompactor::Read(a1);
  a2[258] = result;
  if (result)
  {
    a2[259] = MetricsCompactor::Read(a1) << 20;
    result = MetricsCompactor::Read(a1);
    a2[260] = 1000000000 * result;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL MetricsCompactor::Read(MetricsCompactor *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = MetricsCompactor::Read(this);
  if (v4 <= *(this + 3) - *(this + 2))
  {
    v7 = v4;
    v8 = 0;
    v14 = 0;
    v13 = 0;
    v9 = 12;
    while (1)
    {
      v12 = v8;
      if (!v8)
      {
        std::string::append(a2, &v13 + v9, 12 - v9);
        result = v7 == 0;
        if (!v7)
        {
          goto LABEL_7;
        }

        if (v7 >= 8)
        {
          v10 = 8;
        }

        else
        {
          v10 = v7;
        }

        v11 = *(this + 2);
        if (v10 > *(this + 3) - v11)
        {
          goto LABEL_6;
        }

        memcpy(&v12, this + v11 + 32, v10);
        *(this + 2) = v11 + v10;
        v7 -= v10;
        v9 = 12;
        v8 = v12;
      }

      *(&v13 + --v9) = s_strUnpackTable[v8 % 0x38];
      v8 /= 0x38uLL;
    }
  }

  result = 0;
LABEL_6:
  *(this + 544) = 1;
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MetricsCompactor_Import(char *a1, uint64_t a2)
{
  v6[69] = *MEMORY[0x277D85DE8];
  bzero(v6, 0x228uLL);
  result = MetricsCompactor::Import(v6, a1, a2, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t io_get_device_block_size(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(&v6, 0, sizeof(v6));
  bzero(&v8, 0x878uLL);
  if (ioctl(a1, 0x40046418uLL, &v7))
  {
    if (fstatfs(a1, &v8))
    {
      if (fstat(a1, &v6))
      {
        v2 = __error();
        v3 = strerror(*v2);
        log_err("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v3);
        result = 512;
      }

      else
      {
        result = v6.st_blksize;
      }
    }

    else
    {
      result = v8.f_bsize;
    }
  }

  else
  {
    result = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dev_read_async(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}

uint64_t dev_read_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return dev_read_async(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t dev_read_poll(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 45;
  }
}

uint64_t dev_write_extended(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t fd_dev_read_poll(uint64_t a1, uint64_t a2)
{
  result = aio_error((a2 + 8));
  if (result == -1)
  {
    return *__error();
  }

  return result;
}

uint64_t fd_dev_features(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t fd_dev_read_extended(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    log_err("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return fd_dev_read_async_helper(a1, a2, a3, a4, a5, a7);
  }

  else
  {

    return fd_dev_read_helper(a1, a2, a3, a4, a5);
  }
}

uint64_t fd_dev_read_finish(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  aiocblist = (a2 + 8);
  if (aio_suspend(&aiocblist, 1, 0) || (v5 = aio_return(v3), v5 == -1))
  {
    v4 = *__error();
  }

  else if (v5 >= *(a2 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v4;
    v6(a2);
  }

  return v4;
}

uint64_t fd_dev_write_extended(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    log_err("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return fd_dev_write_helper(a1, a2, a3, a4, a5, a7);
  }
}

uint64_t fd_dev_barrier(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = _fd_dev_write(a1, *(a1 + 40), v5, v4, *(a1 + 48));
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v10 = xmmword_23D298FD0;
    v11 = 2;
    v9 = ioctl(*a1, 0x80186416uLL, &v10);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t fd_dev_hint(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5 || v6 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v13 = *(a1 + 200);
  if (v13 >= *(a1 + 204) || *(a1 + 208) != 1)
  {
    result = fd_dev_hint_flush(a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 200);
    v10 = *(a1 + 192);
  }

  result = 0;
  *(a1 + 200) = v13 + 1;
  v14 = *(a1 + 84);
  v15 = (v10 + 16 * v13);
  *v15 = v14 * a2;
  v15[1] = v14 * a3;
  *(a1 + 208) = 1;
  return result;
}

uint64_t fd_dev_hint_flush(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      log_err("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t fd_dev_close(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    _apfs_free(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = _fd_dev_write(a1, *(a1 + 40), v5, v4, *(a1 + 48));
  v7 = v6;
  if (v6)
  {
    log_err("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = fd_dev_hint_flush(a1);
    v7 = v8;
    if (v8)
    {
      log_err("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    _apfs_free(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  if (close(*a1))
  {
    v7 = *__error();
  }

  v9 = *(a1 + 4);
  if ((v9 & 0x80000000) == 0 && close(v9))
  {
    v7 = *__error();
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    v7 = *__error();
  }

  _apfs_free(a1, v3 + 216);
  return v7;
}

uint64_t fd_dev_set_block_size(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t dev_init_common(uint64_t a1)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  memset(&v14, 0, sizeof(v14));
  if (fstat(*a1, &v14))
  {
    v2 = __error();
    v3 = *v2;
    log_err("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v2, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = apfs_userspace_io;
    device_block_size = io_get_device_block_size(*a1);
    *(a1 + 80) = device_block_size;
    *(a1 + 84) = device_block_size;
    v5 = *a1;
    v19 = 0;
    memset(&v18, 0, sizeof(v18));
    if (ioctl(v5, 0x40086419uLL, &v19))
    {
      if (fstat(v5, &v18))
      {
        v6 = __error();
        v7 = strerror(*v6);
        log_err("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v7);
        v8 = 0;
      }

      else
      {
        st_size = v18.st_size;
        v8 = st_size / io_get_device_block_size(v5);
      }
    }

    else
    {
      v8 = v19;
    }

    *(a1 + 112) = v8;
    io_get_device_features(*a1, &v17, &v16, &v15 + 1, &v15);
    v10 = v16;
    *(a1 + 88) = v17;
    *(a1 + 92) = v10;
    v11 = v15;
    *(a1 + 96) = HIDWORD(v15);
    *(a1 + 100) = v11;
    *(a1 + 64) = v14.st_mode;
    *(a1 + 104) = 0;
    v12 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v3 = 0;
    *(a1 + 192) = _apfs_calloc_typed(v12, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v3;
}

uint64_t dev_init(char *a1, int a2, int **a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = _apfs_calloc_typed(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    memset(&v34, 0, sizeof(v34));
    v9[17] = 0;
    if (stat(a1, &v34) || (v34.st_mode & 0xF000) != 0x4000)
    {
      v13 = device_container_path(a1, 0);
      if (v13)
      {
        v14 = v13;
        v10[2] = -1;
        v15 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v15;
        if (v15 < 0)
        {
          v23 = __error();
          v12 = *v23;
          v24 = strerror(*v23);
          log_err("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v24);
        }

        else
        {
          v16 = open(v14, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v16;
          if ((v16 & 0x80000000) == 0)
          {
LABEL_30:
            inited = dev_init_common(v10);
            if (inited)
            {
              v12 = inited;
              free(v14);
LABEL_38:
              _apfs_free(v10, v8 + 216);
              goto LABEL_40;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v14);
LABEL_39:
            v12 = 0;
            *a3 = v10;
            goto LABEL_40;
          }

          v17 = __error();
          v12 = *v17;
          v18 = strerror(*v17);
          log_err("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v14, v18);
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v19 = open(a1, a2);
        *v10 = v19;
        if ((v19 & 0x80000000) == 0)
        {
LABEL_29:
          v14 = 0;
          goto LABEL_30;
        }

        v20 = 30;
        while (*__error() == 16 && v20 != 0)
        {
          log_err("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v20, v7);
          sleep(1u);
          v22 = open(a1, a2);
          *v10 = v22;
          --v20;
          if ((v22 & 0x80000000) == 0)
          {
            v14 = 0;
            goto LABEL_30;
          }
        }

        v14 = 0;
        v12 = *__error();
      }
    }

    else
    {
      bzero(__str, 0x400uLL);
      bzero(v36, 0x400uLL);
      bzero(v35, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s/apfs", a1);
      snprintf(v35, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v36, 0x400uLL, "%s/nx", a1);
      v11 = open(__str, a2);
      v10[1] = v11;
      if (v11 < 0)
      {
        v12 = *__error();
      }

      else
      {
        v12 = 0;
      }

      v25 = open(v35, a2);
      v10[2] = v25;
      if (v25 < 0)
      {
        v12 = *__error();
      }

      v26 = open(v36, a2);
      v27 = v26;
      *v10 = v26;
      v28 = v10[1];
      if ((v28 & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v26 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v12)
      {
        v12 = *__error();
        v27 = *v10;
        v28 = v10[1];
      }

      v30 = v10[2];
      v31 = strerror(v12);
      log_err("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __str, v28, v35, v30, v36, v27, v12, v31, v7);
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v14 = 0;
    }

    free(v14);
    if (v12)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v12 = 12;
LABEL_40:
  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t fd_dev_read_helper(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  common = fd_dev_read_common(a1, a2, a3);
  if (!common)
  {
    v11 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && (v12 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v11)) && ((a2 * v11) & 0x8000000000000000) == 0 && (v13 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v11)))
    {
      v15 = a3 * v11;
      if (!a5 || (v16 = *(a1 + 4), v16 < 0))
      {
        v16 = *a1;
      }

      v17 = pread(v16, a4, a3 * v11, a2 * v11);
      if (v17 < 0)
      {
        v18 = __error();
        common = *v18;
        log_err("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v18, (a1 + 212));
      }

      else if (v17 == v15)
      {
        return 0;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return common;
}

uint64_t fd_dev_read_common(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      if (a3 + a2 > v8 && v8 + v7 > a2)
      {
        result = _fd_dev_write(a1, v8, v7, v6, *(a1 + 48));
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  if (v10 - a2 >= a3 && v10 > a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t _fd_dev_write(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5)
{
  v5 = *(a1 + 112);
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6 || v7 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && (v11 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v10)) && (v12 = a2 * v10, ((a2 * v10) & 0x8000000000000000) == 0) && (v13 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v10)))
  {
    v14 = a3 * v10;
    if (!a5 || (v15 = *(a1 + 4), v15 < 0))
    {
      v15 = *a1;
    }

    v16 = pwrite(v15, __buf, v14, v12);
    if (v16 < 0)
    {
      return *__error();
    }

    else if (v16 == v14)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    log_err("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t fd_dev_read_async_helper(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  common = fd_dev_read_common(a1, a2, a3);
  if (!common)
  {
    *(a6 + 8) = 0u;
    v14 = (a6 + 8);
    *(a6 + 88) = a5;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    v15 = a1[21];
    *(a6 + 16) = v15 * a2;
    *(a6 + 24) = a4;
    *(a6 + 32) = v15 * a3;
    if (!a5 || (v16 = a1[1], v16 < 0))
    {
      v16 = *a1;
    }

    v14->aio_fildes = v16;
    if (!aio_read(v14))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      common = 16;
    }

    else
    {
      common = *__error();
      if (!common)
      {
        return common;
      }
    }
  }

  v13 = *a6;
  if (*a6)
  {
    *(a6 + 96) = common;
    v13(a6);
  }

  return common;
}

uint64_t fd_dev_write_helper(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6)
{
  v8 = __buf;
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 24);
  if (*(a1 + 60))
  {
    if (!v12)
    {
      v13 = *(a1 + 84);
      v14 = v13 <= 0x100000 ? 0x100000 / v13 : 1;
      *(a1 + 32) = v14;
      v16 = _apfs_malloc_typed(v14 * v13, 0x835B50A5uLL);
      *(a1 + 24) = v16;
      *(a1 + 36) = 0;
      if (!v16)
      {
        return 12;
      }
    }
  }

  else if (!v12)
  {

    return _fd_dev_write(a1, a2, a3, __buf, a5);
  }

  if (!v9)
  {
    return 0;
  }

  v17 = *(a1 + 36);
  while (1)
  {
    while (1)
    {
      v18 = v9 <= *(a1 + 32) - v17 ? v9 : *(a1 + 32) - v17;
      if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || v10 != *(a1 + 40) + v17)
      {
        break;
      }

      if (*(a1 + 48) != a5 || v18 == 0)
      {
        break;
      }

      memcpy((*(a1 + 24) + *(a1 + 84) * v17), v8, *(a1 + 84) * v18);
      v17 = *(a1 + 36) + v18;
      *(a1 + 36) = v17;
      v10 += v18;
      v9 -= v18;
      v8 += *(a1 + 84) * v18;
      if (!v9)
      {
        return 0;
      }
    }

    if (v17)
    {
      result = _fd_dev_write(a1, *(a1 + 40), v17, *(a1 + 24), *(a1 + 48));
      if (result)
      {
        break;
      }
    }

    v17 = 0;
    *(a1 + 36) = 0;
    *(a1 + 40) = v10;
    *(a1 + 48) = a5;
    *(a1 + 56) = a6;
  }

  return result;
}

uint64_t fext_tree_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t graft_blockmap_lut_tree_key_compare(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int *a6)
{
  v6 = *a2 & 0x7FFFFFFF;
  v7 = *a4 & 0x7FFFFFFF;
  v8 = v6 >= v7;
  v9 = v6 > v7;
  if (!v8)
  {
    v9 = -1;
  }

  *a6 = v9;
  return 0;
}

atomic_ullong *fs_obj_zfree_oc(void *a1, unint64_t a2, int a3, uint64_t a4)
{
  _apfs_obj_zfree(a1, a2, *(a4 + 952));
  obj_cache_stats_update_zfree((a4 + 976), a3, a2);
  v7 = (omm + 136);

  return obj_cache_stats_update_zfree(v7, a3, a2);
}

atomic_ullong *obj_cache_stats_update_zfree(atomic_ullong *result, int a2, unint64_t a3)
{
  v4 = a2 & 0xC8000000;
  if (a2 < 0 != v3)
  {
    if (v4 == 0x80000000)
    {
      atomic_fetch_add_explicit(result + 29, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 31, a3, memory_order_relaxed);
      v5 = result + 33;
    }

    else
    {
      if (v4 != -2013265920)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(result + 35, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 37, a3, memory_order_relaxed);
      v5 = result + 39;
    }
  }

  else
  {
    if (v4 != 0x40000000 && v4 != 0)
    {
LABEL_12:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    atomic_fetch_add_explicit(result + 23, -a3, memory_order_relaxed);
    atomic_fetch_add_explicit(result + 25, a3, memory_order_relaxed);
    v5 = result + 27;
  }

  atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t obj_cache_create(unsigned int a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = obj_mem_mgr_init();
  if (!v8)
  {
    v9 = _apfs_calloc_typed(1uLL, 0x570uLL, 0x10A004059D813F0uLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, 0x570uLL);
      v11 = new_lock(v10);
      if (v11)
      {
        v8 = v11;
LABEL_13:
        _apfs_free(v10, 1392);
        return v8;
      }

      v12 = new_rwlock((v10 + 128));
      if (v12)
      {
        v8 = v12;
LABEL_12:
        free_lock(v10);
        goto LABEL_13;
      }

      v13 = new_lock((v10 + 328));
      if (v13)
      {
        v8 = v13;
LABEL_11:
        free_rwlock((v10 + 128));
        goto LABEL_12;
      }

      v14 = new_cv((v10 + 1328));
      if (v14)
      {
        v8 = v14;
        free_lock((v10 + 328));
        goto LABEL_11;
      }

      if (!a1)
      {
        a1 = 4096;
      }

      v15 = _apfs_malloc_typed(8 * a1, 0x2004093837F09uLL);
      *(v10 + 89) = v15;
      if (v15)
      {
        bzero(v15, 8 * a1);
        *(v10 + 175) = a1;
        *(v10 + 176) = a1 - 1;
        if (!a2)
        {
          a2 = 4096;
        }

        *(v10 + 169) = 128;
        *(v10 + 170) = a2;
        v16 = a2 / 0x64u;
        if (v16 <= 0x10)
        {
          v16 = 16;
        }

        if (a2 > 0xC863)
        {
          v16 = 512;
        }

        *(v10 + 174) = v16;
        *(v10 + 171) = 0;
        *(v10 + 86) = 0;
        *(v10 + 168) = a3;
        v21.tv_sec = 0;
        v21.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
        tv_sec = v21.tv_sec;
        *(v10 + 1288) = 0u;
        *(v10 + 1304) = 0u;
        *(v10 + 1256) = 0u;
        *(v10 + 1272) = 0u;
        *(v10 + 1224) = 0u;
        *(v10 + 1240) = 0u;
        *(v10 + 1192) = 0u;
        *(v10 + 1208) = 0u;
        *(v10 + 1160) = 0u;
        *(v10 + 1176) = 0u;
        *(v10 + 1128) = 0u;
        *(v10 + 1144) = 0u;
        *(v10 + 1096) = 0u;
        *(v10 + 1112) = 0u;
        *(v10 + 1064) = 0u;
        *(v10 + 1080) = 0u;
        *(v10 + 1032) = 0u;
        *(v10 + 1048) = 0u;
        *(v10 + 1000) = 0u;
        *(v10 + 1016) = 0u;
        *(v10 + 123) = a3 << 7;
        v18 = a2 * a3;
        *(v10 + 124) = v18;
        *(v10 + 122) = v18;
        *(v10 + 163) = tv_sec;
        v19 = _apfs_calloc_typed(0x100uLL, 8uLL, 0x2004093837F09uLL);
        *(v10 + 112) = v19;
        if (v19)
        {
          v8 = 0;
          *(v10 + 94) = v10 + 744;
          *(v10 + 96) = v10 + 760;
          *(v10 + 98) = v10 + 776;
          *(v10 + 100) = v10 + 792;
          *(v10 + 102) = v10 + 808;
          *(v10 + 104) = v10 + 824;
          *(v10 + 106) = v10 + 840;
          *(v10 + 173) = v10 + 1376;
          *(v10 + 110) = v10 + 872;
          *(v10 + 108) = v10 + 856;
          *(v10 + 45) = 0u;
          *(v10 + 93) = 0;
          *(v10 + 95) = 0;
          *(v10 + 97) = 0;
          *(v10 + 99) = 0;
          *(v10 + 101) = 0;
          *(v10 + 103) = 0;
          *(v10 + 105) = 0;
          *(v10 + 172) = 0;
          *(v10 + 109) = 0;
          *(v10 + 107) = 0;
          *(v10 + 92) = 0;
          *(v10 + 25) = vdupq_n_s64(0x400uLL);
          *a4 = v10;
          return v8;
        }

        _apfs_free(*(v10 + 89), 8 * a1);
      }

      free_cv((v10 + 1328));
      free_lock((v10 + 328));
      free_rwlock((v10 + 128));
      free_lock(v10);
      _apfs_free(v10, 1392);
    }

    return 12;
  }

  return v8;
}

uint64_t obj_mem_mgr_init()
{
  if (!atomic_load_explicit(&omm, memory_order_acquire))
  {
    v2 = _apfs_calloc_typed(1uLL, 0x1E0uLL, 0x10200403418AD1FuLL);
    if (!v2)
    {
      return 12;
    }

    v3 = v2;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v4 = new_lock((v2 + 8));
    if (v4)
    {
      v0 = v4;
      log_err("%s:%d: object memory manager failed to create lock, error: %d\n", "obj_mem_mgr_init", 7393, v4);
      _apfs_free(v3, 480);
      return v0;
    }

    *(v3 + 72) = 0;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v5 = 0;
    *(v3 + 136) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 264) = 0u;
    tv_sec = __tp.tv_sec;
    *(v3 + 248) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 464) = tv_sec;
    *(v3 + 472) = 0;
    atomic_compare_exchange_strong_explicit(&omm, &v5, v3, memory_order_release, memory_order_relaxed);
    if (v5)
    {
      atomic_load_explicit(&omm, memory_order_acquire);
      free_lock((v3 + 8));
      _apfs_free(v3, 480);
    }

    else if ((*omm & 4) != 0)
    {
      log_debug("%s:%d: object memory manager initialized with feature flags: 0x%x, apfs_mem_max: %lld\n", "obj_mem_mgr_init", 7414, *omm, *(omm + 96));
    }
  }

  return 0;
}

uint64_t obj_cache_ephemeral_adjust(uint64_t result, int a2, int a3, int a4)
{
  if ((a2 & 0x8000000) != 0)
  {
    *(result + 692) += a4;
  }

  else
  {
    *(result + 688) += a4;
    v4 = *(result + 392);
    if (v4)
    {
      v5 = (a3 + *(*(v4 + 376) + 36) - 1) / *(*(v4 + 376) + 36);
      v6 = *(result + 928);
      if (a4 < 0)
      {
        v7 = v6 - v5;
      }

      else
      {
        v7 = v6 + v5;
      }
    }

    else
    {
      v7 = *(result + 928) + a4;
    }

    *(result + 928) = v7;
  }

  return result;
}

void obj_cache_unlock_write(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (v1)
  {
    *(a1 + 728) = 0;
    *(a1 + 736) = 0;
    pthread_mutex_unlock(a1);
    do
    {
      v2 = *(v1 + 72);
      obj_destroy_complete(v1, 0);
      v1 = v2;
    }

    while (v2);
  }

  else
  {

    pthread_mutex_unlock(a1);
  }
}

uint64_t obj_cache_lock_by_state(pthread_mutex_t *a1, int a2)
{
  if (a2 != 2 && a2 != 1)
  {
    panic("obj_cache_lock_by_state, invalid oc_lock_state %d\n", a2);
  }

  return pthread_mutex_lock(a1);
}

void obj_cache_unlock_by_state(pthread_mutex_t *a1, int a2)
{
  if (a2 == 2)
  {

    obj_cache_unlock_write(a1);
  }

  else
  {
    if (a2 != 1)
    {
      panic("obj_cache_unlock_by_state, invalid oc_lock_state %d\n", a2);
    }

    pthread_mutex_unlock(a1);
  }
}

void obj_cache_reset(pthread_mutex_t *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 1u, memory_order_relaxed);
  }

  while (atomic_fetch_add_explicit(&a1[14].__opaque[40], 0, memory_order_relaxed))
  {
    v16 = 1;
    v4 = *&a1[21].__opaque[24];
    if (v4)
    {
      if ((*(*(v4 + 136) + 20) & 0x80) == 0)
      {
        obj_async_finish(v4, &v16);
        if ((v16 & 1) == 0)
        {
          pthread_mutex_lock(a1);
        }
      }
    }
  }

  if (*a1[11].__opaque)
  {
    v5 = *&a1[10].__opaque[52];
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*a1[11].__opaque + 8 * i);
        if (v7)
        {
          do
          {
            v8 = *(v7 + 72);
            if (v7 != *a1[6].__opaque)
            {
              v9 = *(v7 + 16);
              if ((v9 & 0x80000000) != 0)
              {
                obj_cache_ephemeral_adjust(a1, v9, *(v7 + 48), -1);
              }

              else
              {
                --*&a1[10].__opaque[36];
              }

              obj_destroy_internal(v7, 0);
            }

            v7 = v8;
          }

          while (v8);
          v5 = *&a1[10].__opaque[52];
        }
      }
    }
  }

  v10 = *&a1[11].__opaque[8];
  if (v10)
  {
    do
    {
      v11 = *(v10 + 72);
      --*&a1[10].__opaque[36];
      obj_destroy_internal(v10, 0);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *&a1[11].__opaque[32];
  if (v12)
  {
    do
    {
      v13 = *(v12 + 88);
      if (v12 != *a1[6].__opaque)
      {
        obj_destroy_internal(v12, 0);
      }

      v12 = v13;
    }

    while (v13);
  }

  v14 = *&a1[11].__opaque[48];
  if (v14)
  {
    do
    {
      v15 = *(v14 + 88);
      obj_destroy_internal(v14, 0);
      v14 = v15;
    }

    while (v15);
  }

  if (!a2)
  {
    obj_cache_unlock_write(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 0xFFFFFFFF, memory_order_relaxed);
  }
}

void obj_cache_destroy(uint64_t a1)
{
  pthread_mutex_lock((omm + 8));
  v2 = *(a1 + 1320);
  if (v2)
  {
    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(a1 + 960);
    v4 = *(a1 + 968);
    if (v3)
    {
      *(v3 + 968) = v4;
    }

    *v4 = v3;
    if ((v2 & 2) == 0)
    {
      v5 = omm;
      --*(omm + 104);
      *(v5 + 136) = vsubq_s64(*(v5 + 136), *(a1 + 976));
      *(v5 + 152) -= *(a1 + 992);
      goto LABEL_8;
    }

    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  v5 = omm;
LABEL_8:
  pthread_mutex_unlock((v5 + 8));
  pthread_mutex_lock(a1);
  atomic_fetch_add_explicit((a1 + 940), 1u, memory_order_relaxed);
  obj_cache_reset(a1, 1);
  v6 = *(a1 + 392);
  if (v6)
  {
    obj_cache_ephemeral_adjust(a1, *(v6 + 16), *(v6 + 48), -1);
    obj_destroy_internal(*(a1 + 392), 0);
  }

  v7 = *(a1 + 712);
  if (v7)
  {
    _apfs_free(v7, 8 * *(a1 + 700));
  }

  obj_cache_unlock_write(a1);
  v8 = *(a1 + 896);
  if (v8)
  {
    _apfs_free(v8, 2048);
  }

  free_cv((a1 + 1328));
  free_lock((a1 + 328));
  free_rwlock((a1 + 128));
  free_lock(a1);

  _apfs_free(a1, 1392);
}

uint64_t obj_cache_flush_prepare(uint64_t a1, unsigned int a2, char a3, unint64_t a4)
{
  v103 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    return 22;
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936))
  {
    if (a2)
    {
      obj_cache_unlock_write(a1);
      return 0;
    }

    do
    {
      *(a1 + 936) = 2;
      cv_wait_rw((a1 + 1328), a1, 2, 0);
    }

    while (*(a1 + 936));
  }

  *(a1 + 936) = 1;
  v8 = pthread_rwlock_wrlock((a1 + 128));
  if (v8)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1153, v8);
  }

  if (a2)
  {
    if (a3)
    {
      v11 = 0;
      v9 = a2;
      goto LABEL_91;
    }

    if (*(a1 + 908) >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(a1 + 908);
    }

    v98 = a2 - v9;
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      v11 = 0;
      goto LABEL_91;
    }

    v98 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v100 = v13;
  while (1)
  {
    v14 = *(a1 + 824);
    if (!v14)
    {
      goto LABEL_68;
    }

    while (!a2 || v9 >= 1)
    {
      if (*(v14 + 36) >> 30)
      {
        panic("non-virtual object on virtual object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v14 + 112), *(v14 + 16), *(v14 + 32));
      }

      v15 = *(v14 + 32);
      if ((v15 & 1) == 0)
      {
        panic("virtual object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v14 + 112), *(v14 + 16), v15);
      }

      if (v12)
      {
        if (v12 > 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v16 = *(v14 + 8);
        if (!v16)
        {
          goto LABEL_51;
        }

        if (*(v16 + 504))
        {
          v16 = *(v16 + 504);
        }

        if (*(*(v16 + 376) + 264))
        {
          goto LABEL_51;
        }
      }

      if (*(v14 + 36) == 13)
      {
LABEL_51:
        v14 = *(v14 + 88);
        *(a1 + 888) = v14;
        if (!v14)
        {
          goto LABEL_68;
        }
      }

      else
      {
LABEL_36:
        if (a2)
        {
          add_explicit = atomic_fetch_add_explicit((v14 + 24), 0, memory_order_relaxed);
          if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF))
          {
            goto LABEL_51;
          }
        }

        v19 = (v14 + 104);
        v18 = *(v14 + 104);
        v20 = *(v14 + 16);
        if ((v18 != 3735928559) == ((v20 & 0x20000000000) == 0))
        {
          panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v14 + 112), v20, *(v14 + 32), v18);
        }

        if ((v20 & 0x20000000000) != 0 && *v19 != 3735928559)
        {
          goto LABEL_53;
        }

        if (v14 != v10)
        {
          v103 = 16000;
        }

        *(a1 + 888) = v14;
        v10 = v14;
        if (obj_reference_release_wait(v14, &v103, 1, 2))
        {
          if (v103 > 0x773593FF)
          {
            v21 = *(v14 + 8);
            if (!v21)
            {
              v21 = *(*v14 + 392);
            }

            if (nx_ratelimit_log_allowed(*(*v21 + 392)))
            {
              if (*(v21 + 36) == 13)
              {
                v22 = (v21 + 4040);
              }

              else
              {
                v22 = (*(v21 + 384) + 212);
              }

              log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1243, v22, *(v14 + 112), *(v14 + 16), *(v14 + 32), *(v14 + 24));
            }
          }

          v10 = v14;
        }

        else
        {
LABEL_53:
          v23 = *(v14 + 88);
          *(a1 + 888) = v23;
          if (!*(a1 + 908))
          {
            panic("virtual object dirty count underflow\n");
          }

          v24 = *(v14 + 96);
          v25 = (v23 + 96);
          if (!v23)
          {
            v25 = (a1 + 832);
          }

          *v25 = v24;
          *v24 = v23;
          --*(a1 + 908);
          *(v14 + 88) = 3735928559;
          atomic_fetch_and_explicit((v14 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v14 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v14 + 64) = *(v14 + 56);
          }

          if (*v19 == 3735928559)
          {
            *(v14 + 104) = 0;
            **(a1 + 864) = v14;
            *(a1 + 864) = v19;
            ++*(a1 + 932);
          }

          v9 += v100;
        }

        v14 = *(a1 + 888);
        if (!v14)
        {
          goto LABEL_68;
        }
      }
    }

    v12 = 3;
LABEL_68:
    v26 = pthread_rwlock_unlock((a1 + 128));
    if (v26)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1273, v26);
    }

    obj_cache_unlock_write(a1);
    v29 = (v11 + 13);
    if (!v11)
    {
      v29 = (a1 + 856);
    }

    v30 = *v29;
    if (v30)
    {
      break;
    }

LABEL_79:
    pthread_mutex_lock(a1);
    v33 = pthread_rwlock_wrlock((a1 + 128));
    if (v33)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1300, v33);
    }

    v38 = v12++ < 2;
    if (!v38)
    {
      v9 = v98;
LABEL_91:
      v37 = *(a1 + 840);
      if (a2)
      {
        v38 = v9 < 1;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      if (v37 && (v39 & 1) == 0)
      {
        v101 = a4;
        if (a2)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v99 = v40;
        do
        {
          if (*(v37 + 36) >> 30 != 1)
          {
            panic("non-physical object on physical object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v37 + 112), *(v37 + 16), *(v37 + 32));
          }

          v41 = *(v37 + 32);
          if ((v41 & 1) == 0)
          {
            panic("physical object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v37 + 112), *(v37 + 16), v41);
          }

          v43 = (v37 + 104);
          v42 = *(v37 + 104);
          v44 = *(v37 + 16);
          if ((v42 != 3735928559) == ((v44 & 0x20000000000) == 0))
          {
            panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v37 + 112), v44, *(v37 + 32), v42);
          }

          if ((v44 & 0x20000000000) == 0 || *v43 == 3735928559)
          {
            v103 = 16000;
            if (obj_reference_release_wait(v37, &v103, 1, 2))
            {
              do
              {
                if (v103 > 0x773593FF)
                {
                  v45 = *(v37 + 8);
                  if (!v45)
                  {
                    v45 = *(*v37 + 392);
                  }

                  if (nx_ratelimit_log_allowed(*(*v45 + 392)))
                  {
                    if (*(v45 + 36) == 13)
                    {
                      v46 = (v45 + 4040);
                    }

                    else
                    {
                      v46 = (*(v45 + 384) + 212);
                    }

                    log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1332, v46, *(v37 + 112), *(v37 + 16), *(v37 + 32), *(v37 + 24));
                  }
                }
              }

              while ((obj_reference_release_wait(v37, &v103, 1, 2) & 1) != 0);
            }
          }

          if (!*(a1 + 912))
          {
            panic("physical object dirty count underflow\n");
          }

          v47 = *(v37 + 88);
          v48 = *(v37 + 96);
          v49 = (v47 + 96);
          a4 = v101;
          if (!v47)
          {
            v49 = (a1 + 848);
          }

          *v49 = v48;
          *v48 = v47;
          --*(a1 + 912);
          *(v37 + 88) = 3735928559;
          atomic_fetch_and_explicit((v37 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v37 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v37 + 64) = *(v37 + 56);
          }

          if (*v43 == 3735928559)
          {
            *(v37 + 104) = 0;
            **(a1 + 864) = v37;
            *(a1 + 864) = v43;
            ++*(a1 + 932);
          }

          v9 += v99;
          v37 = *(a1 + 840);
          if (a2)
          {
            v50 = v9 < 1;
          }

          else
          {
            v50 = 0;
          }

          v51 = v50;
        }

        while (v37 && !v51);
      }

      v52 = pthread_rwlock_unlock((a1 + 128));
      if (v52)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1361, v52);
      }

      obj_cache_unlock_write(a1);
      v55 = v11 + 13;
      if (!v11)
      {
        v55 = (a1 + 856);
      }

      v56 = *v55;
      if (*v55)
      {
        while (1)
        {
          v57 = obj_write_prepare(v56, 0, a4, v53, v54);
          if (v57)
          {
            break;
          }

          if ((a3 & 2) != 0)
          {
            v58 = *(v56 + 152);
            if (!v58)
            {
              v58 = *(v56 + 128);
            }

            *(v56 + 136) = v58;
          }

          v56 = *(v56 + 104);
          if (!v56)
          {
            goto LABEL_148;
          }
        }

        v7 = v57;
        if (!*(*(*(a1 + 392) + 400) + 76))
        {
          v87 = *(v56 + 8);
          if (!v87)
          {
            v87 = *(*v56 + 392);
          }

          if (nx_ratelimit_log_allowed(*(*v87 + 392)))
          {
            if (*(v87 + 36) != 13)
            {
              v89 = *(v87 + 384) + 212;
            }

            v97 = *(v56 + 40);
            v93 = *(v56 + 32);
            v95 = *(v56 + 36);
            v90 = *(v56 + 112);
            v91 = *(v56 + 16);
            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", "obj_cache_flush_prepare");
          }
        }

        return v7;
      }

LABEL_148:
      v59 = *(a1 + 932);
      if (v59 >= 2)
      {
        v60 = 0;
        v61 = *(a1 + 856);
        for (i = 1; i < v59; i *= 2)
        {
          if (v61)
          {
            v63 = 0;
            v64 = 1;
            v65 = v61;
            while (1)
            {
              v66 = i;
              v67 = v65;
              if (i >= 2)
              {
                break;
              }

              v68 = v65[13];
              v67 = v65;
              v70 = v68;
              if (!v68)
              {
                goto LABEL_200;
              }

LABEL_160:
              v72 = v65[19];
              if (!v72)
              {
                v72 = v65[16];
              }

              v73 = v68[19];
              if (!v73)
              {
                v73 = v68[16];
              }

              v74 = v70[13];
              v75 = v72 <= v73;
              if (v72 > v73)
              {
                v76 = v68;
              }

              else
              {
                v76 = v70[13];
              }

              if (v72 > v73)
              {
                v77 = v67;
              }

              else
              {
                v77 = v70;
              }

              if (v75)
              {
                v78 = v68;
              }

              else
              {
                v78 = v65;
              }

              if (v75)
              {
                v60 = v67;
              }

              else
              {
                v60 = v70;
              }

              if (!v75)
              {
                v65 = v68;
              }

              if (v65 == v60 || v78 == v76)
              {
                v80 = v65;
              }

              else
              {
                v79 = v65;
                do
                {
                  v80 = v79[13];
                  v81 = v80[19];
                  if (!v81)
                  {
                    v81 = v80[16];
                  }

                  v82 = v78[19];
                  if (!v82)
                  {
                    v82 = v78[16];
                  }

                  if (v81 > v82)
                  {
                    v83 = v78[13];
                    v78[13] = v80;
                    v79[13] = v78;
                    v80 = v78;
                    v78 = v83;
                  }

                  v84 = v80 == v60 || v78 == v76;
                  v79 = v80;
                }

                while (!v84);
              }

              if (v80 == v60)
              {
                v80[13] = v78;
                v60 = v77;
              }

              v85 = v63 + 13;
              if (v64)
              {
                v85 = (a1 + 856);
                v61 = v65;
              }

              *v85 = v65;
              v63 = v60;
              v65 = v74;
              v64 = 0;
              if (!v74)
              {
                v63 = v60;
                goto LABEL_200;
              }
            }

            while (1)
            {
              v67 = v67[13];
              if (!v67)
              {
                break;
              }

              if (--v66 < 2)
              {
                v68 = v67[13];
                v69 = i;
                v70 = v68;
                if (!v68)
                {
                  break;
                }

                while (1)
                {
                  v71 = v70[13];
                  if (!v71)
                  {
                    goto LABEL_160;
                  }

                  --v69;
                  v70 = v70[13];
                  if (v69 < 2)
                  {
                    v70 = v71;
                    goto LABEL_160;
                  }
                }
              }
            }

LABEL_200:
            if (v63)
            {
              v63[13] = v65;
            }
          }
        }

        if (v60)
        {
          v7 = 0;
          *(a1 + 864) = v60 + 13;
          return v7;
        }
      }

      return 0;
    }
  }

  while (1)
  {
    v11 = v30;
    v31 = obj_write_prepare(v30, 0, a4, v27, v28);
    if (v31)
    {
      break;
    }

    if ((a3 & 2) != 0)
    {
      v32 = v11[19];
      if (!v32)
      {
        v32 = v11[16];
      }

      v11[17] = v32;
    }

    v30 = v11[13];
    if (!v30)
    {
      goto LABEL_79;
    }
  }

  v7 = v31;
  if (!*(*(*(a1 + 392) + 400) + 76))
  {
    v34 = v11[1];
    if (!v34)
    {
      v34 = *(*v11 + 392);
    }

    if (nx_ratelimit_log_allowed(*(*v34 + 392)))
    {
      if (*(v34 + 36) != 13)
      {
        v88 = *(v34 + 384) + 212;
      }

      v35 = v11[14];
      v36 = v11[2];
      v96 = *(v11 + 10);
      v92 = *(v11 + 8);
      v94 = *(v11 + 9);
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", "obj_cache_flush_prepare");
    }
  }

  return v7;
}

uint64_t obj_reference_release_wait(void *a1, int *a2, int a3, int a4)
{
  v8 = *a1;
  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0x1000001uLL, memory_order_relaxed);
  if ((add_explicit & 0xFFFFFF) == 0xFFFFFF)
  {
    panic("Reference count overflowed for object %p!\n", a1);
  }

  v10 = (add_explicit >> 24) & 0xFFFFF;
  if (v10 == 0xFFFFF)
  {
    panic("Get count overflowed for object %p!\n", a1);
  }

  v11 = (-(add_explicit >> 44) & 0xFFFFF) != 0 && (add_explicit & 0xFFFFFF) == v10;
  if (v11 && (-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFF) != 0)
  {
    atomic_fetch_or_explicit(a1 + 8, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFEFFFFFFLL, memory_order_relaxed);
    if (a3)
    {
      v12 = pthread_rwlock_unlock((v8 + 128));
      if (v12)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 4153, v12);
      }
    }

    v13 = *a2 % 0x3B9ACA00u;
    v18.tv_sec = *a2 / 0x3B9ACA00uLL;
    v18.tv_nsec = v13;
    if (a4 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (cv_wait_rw((v8 + 1328), v8, v14, &v18) == 35 && *a2 != 2000000000)
    {
      if ((4 * *a2) >= 0x77359400)
      {
        v15 = 2000000000;
      }

      else
      {
        v15 = 4 * *a2;
      }

      *a2 = v15;
    }

    if (a3)
    {
      v16 = pthread_rwlock_wrlock((v8 + 128));
      if (v16)
      {
        panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 4170, v16);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    atomic_fetch_add_explicit(a1 + 3, 0xFFFFFFFFFF000000, memory_order_relaxed);
  }

  return result;
}

uint64_t obj_write_prepare(uint64_t *a1, int a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(*a1 + 392);
  if (a1[1])
  {
    v6 = a1[1];
  }

  else
  {
    v6 = *(*a1 + 392);
  }

  if (*(v5 + 627))
  {
    return 30;
  }

  v11 = (*(*(v5 + 376) + 36) + *(a1 + 12) - 1) / *(*(v5 + 376) + 36);
  v13 = a1 + 18;
  v12 = a1[18];
  v14 = a1[2];
  v15 = a1[15];
  v66 = v15;
  if (a1[19])
  {
    v67 = a1[19];
    goto LABEL_9;
  }

  v67 = a1[16];
  if (v67)
  {
LABEL_9:
    if ((v14 & 0xC0000000) != 0)
    {
      v65 = v11;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_11;
    }

LABEL_51:
    v65 = v11;
    if (v12 == v15)
    {
      v18 = v67;
    }

    else
    {
      v18 = v67;
      if (a2 || v12)
      {
        goto LABEL_60;
      }
    }

    v32 = v18;
    v18 = 0;
    if (v32)
    {
      v16 = 0;
      goto LABEL_57;
    }

LABEL_60:
    v34 = a1[2];
    v35 = v34 & 0xC00000000;
    if ((v34 & 0x800000000) != 0)
    {
      v36 = 49;
    }

    else
    {
      v36 = 41;
    }

    if ((v34 & 0x100000000000) != 0)
    {
      v37 = 65600;
    }

    else
    {
      v37 = 131136;
    }

    v38 = v37 | v36;
    v39 = v35 == 0;
    v40 = v35 != 0;
    if (v39)
    {
      v38 = 72;
    }

    if (a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v40;
    }

    if (a2)
    {
      v41 = 72;
    }

    else
    {
      v41 = v38;
    }

    if ((v34 & 0x10000000) != 0)
    {
      v67 = 0;
    }

    else
    {
      if (*(a1 + 18) == 11 || *(a1 + 20) == 11)
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      v67 = v42;
    }

    v44 = spaceman_alloc(v6, v41, v11, a3, &v67, 0);
    if (v44)
    {
      v7 = v44;
      if (nx_ratelimit_log_allowed(*(*v6 + 392)))
      {
        if (*(v6 + 36) == 13)
        {
          v45 = (v6 + 4040);
        }

        else
        {
          v45 = (*(v6 + 384) + 212);
        }

        log_err("%s:%d: %s oid %lld flags 0x%llx 0x%x type 0x%x/0x%x xid %lld (cur xid %lld) error allocating space to write %d; blkcount %d (o_size_phys %d) paddr %lld\n", "obj_write_prepare", 6703, v45, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), a1[18], a3, v7, v65, *(a1 + 12), v67);
      }

      v16 = 0;
      v17 = 0;
      goto LABEL_109;
    }

    v15 = v66;
    v17 = v67;
    v33 = v67;
    if (v67)
    {
LABEL_89:
      v67 = v33;
      v46 = a1[2];
      v47 = (v46 >> 2) & 0x700 | (v46 >> 8) & 0xE0 | 4;
      if ((v46 & 0x10000000) == 0)
      {
        v47 = 0;
      }

      v48 = (v46 >> 26) & 8;
      if (v12)
      {
        v49 = v12;
      }

      else
      {
        v49 = v15;
      }

      v50 = omap_set(v6, a1[14], v49, v33, *(a1 + 12), v47 | v48, a3);
      if (!v50)
      {
        v15 = v66;
        goto LABEL_11;
      }

      v7 = v50;
      if (nx_ratelimit_log_allowed(*(*v6 + 392)))
      {
        if (*(v6 + 36) == 13)
        {
          v51 = (v6 + 4040);
        }

        else
        {
          v51 = (*(v6 + 384) + 212);
        }

        log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error setting mapping for write %d\n", "obj_write_prepare", 6730, v51, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10), v7);
      }

      if (!a2)
      {
LABEL_17:
        pthread_mutex_lock(*a1);
        if (v17)
        {
          a1[19] = v17;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

LABEL_20:
        a1[2] &= 0xFFFFEFF3FFFFFFFFLL;
LABEL_21:
        if (!v7)
        {
          v22 = a1[2];
          if ((v22 & 0x40) != 0)
          {
            a1[2] = v22 & 0xFFFFFFFFFFFFFFBFLL;
          }

          if (v12)
          {
            a1[15] = v12;
          }

          v23 = a1[19];
          if (v23)
          {
            a1[16] = v23;
          }

          if ((atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
          {
            *v13 = 0;
            v13[1] = 0;
          }
        }

        obj_cache_unlock_write(*a1);
        if (v18)
        {
          if (v12)
          {
            if (omap_delete(v6, a1[14], v66, v18, *(a1 + 12), 0, a3) && nx_ratelimit_log_allowed(*(*v6 + 392)))
            {
              if (*(v6 + 36) != 13)
              {
                v29 = *(v6 + 384) + 212;
              }

              v24 = a1[14];
              v25 = a1[2];
              v62 = *(a1 + 10);
              v56 = *(a1 + 8);
              v59 = *(a1 + 9);
              log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error deleting old mapping %d\n", "obj_write_prepare");
            }
          }

          else if (spaceman_free(v6, 64, v18, v65, a3) && nx_ratelimit_log_allowed(*(*v6 + 392)))
          {
            if (*(v6 + 36) != 13)
            {
              v43 = *(v6 + 384) + 212;
            }

            v26 = a1[14];
            v27 = a1[2];
            v63 = *(a1 + 10);
            v57 = *(a1 + 8);
            v60 = *(a1 + 9);
            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error freeing old location %d\n", "obj_write_prepare");
          }
        }

        return v7;
      }

LABEL_109:
      pthread_mutex_lock(*a1);
      v18 = v17;
      if (!v16)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_57:
    v33 = a1[19];
    if (!v33)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v17 = 0;
    if (v33 == a1[16])
    {
LABEL_11:
      if ((*(a1 + 18) & 0x8002000) == 0)
      {
        v19 = a1[7];
        a4.i64[0] = *(a1 + 36);
        *(v19 + 8) = a1[14];
        *(v19 + 24) = a4.i64[0];
        if (v12)
        {
          v20 = v12;
        }

        else
        {
          v20 = v15;
        }

        *(v19 + 16) = v20;
        v21 = *(a1 + 12);
        atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
        fletcher64_set_cksum(v19, (v19 + 8), (v21 - 8), 0, a4, a5);
      }

      v7 = 0;
      goto LABEL_17;
    }

    goto LABEL_89;
  }

  if ((v14 & 0xC0000000) != 0)
  {
    if (nx_ratelimit_log_allowed(*(*v6 + 392)))
    {
      if (*(v6 + 36) == 13)
      {
        v28 = (v6 + 4040);
      }

      else
      {
        v28 = (*(v6 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x non-virtual object missing paddr!\n", "obj_write_prepare", 6655, v28, a1[14], a1[2], *(a1 + 8), *(a1 + 9), *(a1 + 10));
    }

    return 22;
  }

  else
  {
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_51;
    }

    v30 = v11;
    v31 = omap_get(v6, a1[14], v15, &v67, 0, 0, 0);
    v15 = v66;
    v11 = v30;
    if ((v31 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_51;
    }

    v7 = v31;
    if (nx_ratelimit_log_allowed(*(*v6 + 392)))
    {
      if (*(v6 + 36) != 13)
      {
        v53 = *(v6 + 384) + 212;
      }

      v64 = *(a1 + 10);
      v58 = *(a1 + 8);
      v61 = *(a1 + 9);
      v54 = a1[14];
      v55 = a1[2];
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error getting mapping to write %d\n", "obj_write_prepare");
    }
  }

  return v7;
}

void obj_cache_flush_unprepare(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = pthread_rwlock_wrlock((a1 + 128));
  if (v2)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1410, v2);
  }

  for (i = *(a1 + 856); i; i = *(i + 104))
  {
    if ((atomic_fetch_or_explicit((i + 32), 1u, memory_order_relaxed) & 1) == 0)
    {
      v4 = *(i + 36) >> 30;
      if (v4)
      {
        if (v4 != 1)
        {
          panic("bad object type in flush list: oid %lld flags 0x%llx 0x%x\n", *(i + 112), *(i + 16), *(i + 32));
        }

        *(i + 88) = 0;
        v6 = *(a1 + 848);
        *(i + 96) = v6;
        *v6 = i;
        *(a1 + 848) = i + 88;
        ++*(a1 + 912);
      }

      else
      {
        *(i + 88) = 0;
        v5 = *(a1 + 832);
        *(i + 96) = v5;
        *v5 = i;
        *(a1 + 832) = i + 88;
        ++*(a1 + 908);
      }
    }

    v7 = *(i + 16);
    *(i + 16) = v7 & 0xFFFFFDFFFFFFFFFFLL;
    if ((v7 & 0x80) != 0)
    {
      *(i + 16) = v7 & 0xFFFFFDFFFFFFFF7FLL;
      cv_wakeup((a1 + 1328));
    }
  }

  v8 = pthread_rwlock_unlock((a1 + 128));
  if (v8)
  {
    panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 1430, v8);
  }

  obj_cache_unlock_write(a1);
  v9 = *(a1 + 856);
  if (v9)
  {
    v10 = (a1 + 856);
    do
    {
      v11 = *(v9 + 104);
      *v10 = v11;
      if (!v11)
      {
        *(a1 + 864) = v10;
      }

      *(v9 + 104) = 3735928559;
      --*(a1 + 932);
      v12 = *(v9 + 64);
      if (v12)
      {
        if (v12 != *(v9 + 56))
        {
          fs_obj_zfree_oc(v12, *(v9 + 48), *(v9 + 16), a1);
        }

        *(v9 + 64) = 0;
        *(v9 + 136) = 0;
      }

      obj_release(v9);
      v9 = *v10;
    }

    while (*v10);
  }

  pthread_mutex_lock(a1);
  if (*(a1 + 936) >= 2u)
  {
    cv_wakeup((a1 + 1328));
  }

  *(a1 + 936) = 0;

  obj_cache_unlock_write(a1);
}

void obj_release(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (!v2)
  {
    v2 = *(v3 + 392);
  }

  add_explicit = atomic_fetch_add_explicit(a1 + 3, 0xFFFFEFFFFFFFFFFFLL, memory_order_relaxed);
  v5 = add_explicit & 0xFFFFFF;
  if ((add_explicit & 0xFFFFFF) == 0)
  {
    panic("Reference count underflowed for object %p!\n", a1);
  }

  v6 = -(add_explicit >> 44) & 0xFFFFF;
  if (v6 == 0x80000)
  {
    panic("Release count overflowed for object %p!\n", a1);
  }

  if (v5 >= 2)
  {
    v7 = atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed);
    if ((v7 & 0xFFFFFF) == 0 && (-(v7 >> 44) & 0xFFFFF) == 1)
    {

      cv_wakeup((v3 + 1328));
    }

    return;
  }

  v8 = a1[2];
  if ((v8 & 0xC) != 0 || (v8 & 0xC00000000) != 0 && (atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed) & 1) == 0)
  {
    pthread_mutex_lock(v3);
    v8 = a1[2];
    if (v6)
    {
      v9 = (a1[2] & 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || (-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) == 0)
    {
      v10 = 0;
    }

    else
    {
      do
      {
        v29 = xmmword_23D298FF0;
        cv_wait_rw((v3 + 1328), v3, 2, &v29);
      }

      while ((-(atomic_fetch_add_explicit(a1 + 3, 0, memory_order_relaxed) >> 44) & 0xFFFFE) != 0);
      v10 = 0;
      v8 = a1[2];
    }
  }

  else
  {
    v10 = 1;
  }

  if ((v8 & 0x80000008) == 0 && *(a1 + 18) != 13 && (a1[4] & 1) == 0)
  {
    v11 = pthread_rwlock_rdlock((v3 + 128));
    if (v11)
    {
      panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 5319, v11);
    }

    obj_cache_enqueue_deferred_update(v3, a1);
    v12 = pthread_rwlock_unlock((v3 + 128));
    if (v12)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_framework/nx/obj.c", 5321, v12);
    }
  }

  v13 = a1[14];
  v15 = *(a1 + 9);
  v14 = *(a1 + 10);
  v16 = a1[2];
  v28 = v16;
  if (v10)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_42;
  }

  if ((v16 & 4) != 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFFFFBLL;
    a1[2] = v16 & 0xFFFFFFFFFFFFFFFBLL;
    v19 = a1;
  }

  else
  {
    v19 = 0;
    v20 = a1[2];
  }

  if ((v20 & 0xC00000000) != 0 && ((v21 = atomic_fetch_or_explicit(a1 + 8, 0, memory_order_relaxed), (v20 & 8) != 0) || (v21 & 1) == 0))
  {
    v22 = *(*(*(v3 + 392) + 376) + 36);
    v17 = (v22 + *(a1 + 12) - 1) / v22;
    if ((v20 & 0x800000000) != 0)
    {
      v23 = 80;
    }

    else
    {
      v23 = 72;
    }

    if ((v20 & 0x100000000000) != 0)
    {
      v24 = 0x10000;
    }

    else
    {
      v24 = 0x20000;
    }

    v18 = v23 | v24;
    v20 &= 0xFFFFEFF3FFFFFFFFLL;
    a1[2] = v20;
    if ((v20 & 8) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if ((v20 & 8) == 0)
    {
LABEL_41:
      obj_cache_unlock_write(v3);
LABEL_42:
      if ((atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed) & 2) != 0)
      {
        v19 = a1;
      }

      if ((atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed) & 0xFFFFFF) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  if ((v20 & 0x80000000) != 0)
  {
    obj_cache_ephemeral_adjust(v3, v20, *(a1 + 12), -1);
  }

  else
  {
    --*(v3 + 684);
  }

  atomic_fetch_add_explicit(a1 + 3, 0x100000000000uLL, memory_order_relaxed);
  v25 = atomic_fetch_and_explicit(a1 + 8, 0xFFFFFFFD, memory_order_relaxed);
  obj_destroy_internal(a1, 0);
  obj_cache_unlock_write(v3);
  if ((v25 & 2) != 0)
  {
    goto LABEL_58;
  }

LABEL_57:
  if (v19)
  {
LABEL_58:
    cv_wakeup((v3 + 1328));
  }

  if (v17)
  {
    v26 = spaceman_unreserve(v2, v18, v17);
    if (v26)
    {
      if (*(v2 + 36) == 13)
      {
        v27 = (v2 + 4040);
      }

      else
      {
        v27 = (*(v2 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error unreserving space on non-dirty release: %d\n", "obj_release", 5417, v27, v13, v28, v15, v14, v26);
    }
  }
}

void obj_was_being_written_wakeup(uint64_t a1)
{
  v2 = *a1;
  pthread_mutex_lock(*a1);
  v3 = *(a1 + 16);
  *(a1 + 16) = v3 & 0xFFFFFDFFFFFFFF7FLL;
  obj_cache_unlock_write(v2);
  if ((v3 & 0x80) != 0)
  {

    cv_wakeup(&v2[20].__opaque[40]);
  }
}

uint64_t obj_cache_flush_write(pthread_mutex_t *a1, unsigned int a2)
{
  v3 = *&a1[13].__opaque[16];
  if (!v3)
  {
LABEL_30:
    pthread_mutex_lock(a1);
    if (*&a1[14].__opaque[32] >= 2u)
    {
      cv_wakeup(&a1[20].__opaque[40]);
    }

    *&a1[14].__opaque[32] = 0;
    obj_cache_unlock_write(a1);
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = &a1[13].__opaque[16];
  v7 = (a2 >> 1) & 1;
  do
  {
    v8 = *(v3 + 104);
    while (1)
    {
      pthread_mutex_lock((a1 + 328));
      if ((atomic_fetch_or_explicit((v3 + 32), 8u, memory_order_acquire) & 8) == 0)
      {
        break;
      }

      pthread_mutex_unlock((a1 + 328));
    }

    v9 = obj_write_internal(v3, v7);
    if (!v9)
    {
      v14 = *(v3 + 56);
      v13 = *(v3 + 64);
      *(v3 + 64) = 0;
      *(v3 + 136) = 0;
      atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
      pthread_mutex_unlock((a1 + 328));
      if (v13 && v13 != v14)
      {
        fs_obj_zfree_oc(v13, *(v3 + 48), *(v3 + 16), a1);
      }

      if (v4)
      {
        v15 = (v4 + 104);
        v16 = *(*(v4 + 104) + 104);
        *(v4 + 104) = v16;
        if (v16)
        {
LABEL_18:
          *(v3 + 104) = 3735928559;
          --*&a1[14].__opaque[28];
          obj_was_being_written_wakeup(v3);
          obj_release(v3);
          goto LABEL_25;
        }
      }

      else
      {
        v17 = *(*v6 + 104);
        *v6 = v17;
        v15 = &a1[13].__opaque[16];
        if (v17)
        {
          goto LABEL_18;
        }
      }

      *&a1[13].__opaque[24] = v15;
      goto LABEL_18;
    }

    v10 = v9;
    atomic_fetch_and_explicit((v3 + 32), 0xFFFFFFF7, memory_order_release);
    pthread_mutex_unlock((a1 + 328));
    v11 = *(v3 + 8);
    if (!v11)
    {
      v11 = *(*v3 + 392);
    }

    if (nx_ratelimit_log_allowed(*(*v11 + 392)))
    {
      if (*(v11 + 36) == 13)
      {
        v12 = (v11 + 4040);
      }

      else
      {
        v12 = (*(v11 + 384) + 212);
      }

      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error writing: %d\n", "obj_cache_flush_write", 1528, v12, *(v3 + 112), *(v3 + 16), *(v3 + 32), *(v3 + 36), *(v3 + 40), v10);
    }

    if (v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v10;
    }

    v4 = v3;
LABEL_25:
    v3 = v8;
  }

  while (v8);
  if (!v5)
  {
    goto LABEL_30;
  }

  return v5;
}

uint64_t obj_write_internal(uint64_t a1, int a2)
{
  v2 = *(*a1 + 392);
  v3 = *(a1 + 48);
  if (!a2)
  {
    v4 = *(a1 + 56);
LABEL_7:
    v5 = *(a1 + 152);
    if (!v5)
    {
      v5 = *(a1 + 128);
      if (!v5)
      {
        panic("Object has no address: o %p oid %llu flags 0x%llx 0x%x paddr %llu naddr %llu\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), 0, 0);
      }
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = *(a1 + 56);
  }

  v5 = *(a1 + 136);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (*(v2 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x10000000) != 0 && (v7 & 0x80000000000) == 0 && (v12 = *(a1 + 8)) != 0)
  {
    if (v7 >> 13)
    {
      if (v7 >> 13 != 1)
      {
        panic("invalid crypto index %d\n");
      }

      v13 = 632;
    }

    else
    {
      v13 = 536;
    }

    v10 = (v7 >> 10) & 7;
    if (v10)
    {
      if (v10 != 1)
      {
        panic("invalid tweak type %d\n");
      }

      v8 = *(a1 + 112) ^ HIDWORD(*(a1 + 120)) | *(a1 + 112) & 0xFFFFFFFF00000000 ^ (*(a1 + 120) << 32);
      LODWORD(v10) = 4;
    }

    else
    {
      v8 = (v7 >> 10) & 7;
    }

    v9 = v12 + v13;
    v14 = *(v12 + 1144);
    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = *(v2 + 384);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = *(v2 + 384);
  }

  v15 = (*(*(v2 + 376) + 36) + v3 - 1) / *(*(v2 + 376) + 36);

  return dev_write_extended(v11, v5, v15, v4, v9, v8, v10);
}